<?php
/**
 * Created by PhpStorm.
 * User: Somnus
 * Date: 2016/11/9
 * Time: 17:57
 */

class AdminAction extends CommonAction
{

    //管理员列表
    public function index()
    {
        $this->title = '管理员列表';
        $this->seach_name = '';
        $Admin = D("admin");
        import('ORG.Util.Page');
        $where = array();
        if (IS_POST) {
            $uname = I('username', '', 'trim');
            if ($uname) {
                $where['username'] = array('like', "%{$uname}%");
                $this->seach_name = $uname;
            }
        }
        $count = $Admin->where($where)->count();
        $Page = new Page($count, 10);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();
        $list = $Admin->order('addtime')
            ->limit($Page->firstRow . ',' . $Page->listRows)
            ->where($where)
            ->select();
        $this->data = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }


    //添加管理员
    public function add()
    {
        $Admin = D("admin");
        $this->title = '添加管理员';
        if (IS_POST) {
            //添加
            $validate = array(
                array('username', 'require', '管理员名称不能为空!'),
                array('username', '', '管理员名称已经存在！', 0, 'unique', 1),
                array('password', 'require', '管理员密码不能为空!'),
                array('password_confirm', 'password', '两次密码输入不一致!', 0, 'confirm'),
            );
            $Admin->setProperty("_validate", $validate);
            if (!$Admin->create()) {
                $this->error($Admin->getError());
            }

            $_POST['addtime'] = time();
            $_POST['lastlogin'] = 0;
            $_POST['gid'] = 1;//管理组预留
            $_POST['password'] = $this->getpass($_POST['password']);
            $_POST['id_code'] = randomKeys(8);

            $status = $Admin->add($_POST);
            $admin_id = $Admin->getLastInsID();
            // 添加到客服表中
            $richat_data = [
                'admin_id' => $admin_id,
                'username' => $_POST['username'],
                'pwd' => $_POST['password'],
                'groupid' => 1,
                'sign' => '客服 ' . $_POST['username'],
                'avatar' => '/Public/images/sj.png'
            ];
            M('richat_chatuser')->add($richat_data);
            $chat_id = M('richat_chatuser')->getLastInsID();
            $Admin->where(['id' => $admin_id])->save(['chat_id' => $chat_id]);
            if (!$status) {
                $this->error('添加失败!');
            }
            $this->success('添加成功!');
            exit;
        }
        $this->role = getAdminData()['role'];
        $this->display();
    }


    //添加管理员
    public function add100()
    {
        $Admin = D("admin");

        $user_name = 123456;
        $status = '';
        $add_time = time();
        for ($i = 1; $i <= 100; $i++) {
            $param = [
                'lastlogin' => 0,
                'addtime' => $add_time,
                'gid' => 1,
                'password' => $this->getpass($user_name),
                'username' => $user_name,
                'id_code' => randomKeys(8)
            ];

            $status = $Admin->add($param);
            if ($status) {
                $admin_id = $Admin->getLastInsID();
                // 添加到客服表中
                $richat_data = [
                    'admin_id' => $admin_id,
                    'username' => $param['username'],
                    'pwd' => $param['password'],
                    'groupid' => 1,
                    'sign' => '客服 ' . $param['username'],
                    'avatar' => '/Public/images/sj.png'
                ];
                M('richat_chatuser')->add($richat_data);
                $chat_id = M('richat_chatuser')->getLastInsID();
                $Admin->where(['id' => $admin_id])->save(['chat_id' => $chat_id]);
            } else {
                echo '添加失败!';
                exit();
            }
            $user_name++;
        }

        if (!$status) {
            echo '添加失败!';
            exit();

        }
        echo '添加成功!';
        exit();
    }

    //修改管理信息
    public function edit()
    {
        $this->title = '修改管理信息';
        $Admin = D("admin");
        if (IS_POST) {
            $editId = I('editId', 0, 'trim');
            $username = I('username', '', 'trim');
            $password = I('password', '', 'trim');
            $password_confirm = I('password_confirm', '', 'trim');
            $data = $Admin->where(array('id' => $editId))->find();
            if (!$data) {
                $this->error('管理员ID不存在!');
            }
            $status = I('status', 1, 'trim');
            //判断是否为唯一未禁用管理且操作将禁用
            $num = $Admin->where(array('status' => 1))->count();
            if ($num == 1 && $data['status'] == 1 && $status == 0) {
                $this->error('禁用所有管理员将无法管理系统!');
            }
            //验证用户名是否存在
            $data = $Admin->where(array('username' => $username))->find();
            if (!$data || $data['id'] == $editId) {
                $arr = array(
                    'username' => $username,
                    'status' => $status
                );
                $Admin->where(array('id' => $editId))->save($arr);
                //验证密码
                if (!empty($password) && $password != $password_confirm) {
                    $this->error('两次密码输入不一致!');
                } else {
                    $Admin->where(array('id' => $editId))->save(array('password' => $this->getpass($password)));
                    // 修改客服管理员
                    M('richat_chatuser')->where(['admin_id' => $editId])->save(['pwd' => $this->getpass($password)]);

                }
                $this->success('修改成功!');
            } else {
                $this->error('管理名称已存在!');
            }
        }
        $editId = I('get.editid', 0, 'trim');
        $data = $Admin->where(array('id' => $editId))->find();
        if (!$data) {
            $this->error('管理员ID不存在!');
        }
        $this->data = $data;
        $this->role = getAdminData()['role'];
        $this->display();
    }


    //删除管理员
    public function del()
    {
        $this->title = '删除管理员';
        $id = I('get.id', 0, 'trim');
        $Admin = D("admin");
        //判断是否为唯一未禁用管理员
        $num = $Admin->where(array('status' => 1))->count();
        if ($num == 1) {
            $this->error('必须保留一个未禁用管理员!');
        }
        $status = $Admin->delete($id);
        if (!$status) {
            $this->error('删除失败!');
        }
        // 解绑用户

        // 删除客服
        $chatUserModel = new ChatUserModel();
        $chatUserModel->deleteByAdminId($id);

        $this->success('删除成功!');
    }


    //修改自己信息
    public function chagemypass()
    {
        $username = $this->getlogin();
        $Admin = D("admin");
        $data = $Admin->where(array('username' => $username))->find();
        if (!$data) {
            $this->setlogin('');
            $this->error('非法操作!', U(GROUP_NAME . '/Index/login'));
        }
        $this->redirect(U(GROUP_NAME . '/Admin/edit', array('editid' => $data['id'])));
    }

    // 查看推广二维码
    public function invitation()
    {
        // 获取id参数
        $admin_data = getAdminData();
        // 生成链接地址
        $url = U('Home/User/reg', ['id_code' => $admin_data['id_code']], true, false, true);

        // 生成二维码
        include_once('phpqrcode.php');

        $value = $url;         //二维码内容
        $errorCorrectionLevel = 'L';  //容错级别
        $matrixPointSize = 2;      //生成图片大小
        //生成二维码图片
        $filename = 'Public/images/' . $admin_data['id'] . '_qrcode.png';//生成二维码保存目录
        QRcode::png($value, $filename, $errorCorrectionLevel, $matrixPointSize, 2);
        $QR = $filename;        //已经生成的原始二维码图片文件

        $QR = imagecreatefromstring(file_get_contents($QR));
        //输出图片
        imagepng($QR, 'qrcode.png');
        imagedestroy($QR);

        /*if (file_exists($filename)) {//判断一下是否生成了二维码
            $poster_url = 'Public/images/' . $admin_data['id'] . '_haibao.png';//保存生成海报的目录
            $path_1 = 'Public/images/qr_code.png';//背景图目录
            $path_2 = $filename;//上面生成二维码的目录
            //创建图片的实例
            $dst = imagecreatefromstring(file_get_contents($path_1));
            $src = imagecreatefromstring(file_get_contents($path_2));
            // 把二维码图片的白色背景设为透明
             imagecolortransparent($src, imagecolorallocate($src, 255, 255, 255));

            //获取水印图片的宽高
            list($src_w, $src_h) = getimagesize($path_2);

            //将水印图片复制到目标图片上
            imagecopymerge($dst, $src, 400, 503, 0, 0, $src_w, $src_h, 100);
            //生成图片
            imagepng($dst, $poster_url);
            imagedestroy($dst);
            imagedestroy($src);

        }*/
        $this->reg_url = $url;
        $this->img_url = $admin_data['id'] . '_qrcode.png';
        $this->role = getAdminData()['role'];
        $this->display();

    }
}