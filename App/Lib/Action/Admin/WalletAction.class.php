<?php

class WalletAction extends CommonAction
{

    //用户列表
    public function index()
    {
        $this->title = "用户钱包管理";
        $keyword = I("keyword", '', 'trim');
        $this->keyword = $keyword;

        $where = array();
        if ($keyword) {
            $where['phone'] = array('like', "%{$keyword}%");
        }

        $User = D("user");
        import('ORG.Util.Page');
        // 权限管理 如果不是超管只展示自己的用户
        $admin_data = getAdminData();
        if ($admin_data['role'] != 1) {
            $where['admin_id'] = $admin_data['id'];
        }

        $count = $User->where($where)->count();
        $Page = new Page($count, 25);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');

        $show = $Page->show();
        $list = $User->where($where)->order('addtime Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $da = M('userinfo')->getField('user,name');

        $this->data = $da;
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }

    //用户列表
    public function users()
    {
        $this->title = "用户池";
        $keyword = I("keyword", '', 'trim');
        $this->keyword = $keyword;
        $where = array();
        if ($keyword) {
            $where['phone'] = array('like', "%{$keyword}%");
        }
        $User = D("user");
        import('ORG.Util.Page');
        $count = $User->where($where)->count();
        $Page = new Page($count, 10);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();
        $list = $User->where($where)->order('id Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $da = M('userinfo')->getField('user,name');
        $this->data = $da;
        $this->role = json_decode(session('admin_user'), true)['role'];
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }

    // 解绑用户
    public function Unbind()
    {
        $id = I('user_id', 0, 'trim');
        if (!$id) {
            $this->error("参数有误!");
        }
        // 验证是否为管理员
        $this->checkRole();
        // 解绑用户
        $user = D("user");
        // 验证用户是否存在
        $check_user = $user->where(['id' => $id])->find();
        if (!$check_user) {
            $data['msg'] = '用户不存在,请刷新重试';
        }

        // 解绑
        $result = $user->where(['id' => $id])->save([
            'admin_id' => null,
            'admin_name' => null
        ]);

        // 返回结果
        if (!$result) {
            $data['msg'] = '解绑失败,请重试';
        } else {
            $data = [
                'status' => 1,
                'msg' => '解绑成功!'
            ];
            // 添加日志
            $admin_data = getAdminData();
            $log_data = [
                'admin_id' => $admin_data['id'],
                'admin_name' => $admin_data['username'],
                'log_type' => 2,
                'log_data' => $check_user['phone'] . '|' . $check_user['phone'] . '|2',
                'add_time' => date('Y-m-d H:i:s')
            ];
            $logModel = new LogModel();
            $logModel->createByArray($log_data);
        }
        return $this->ajaxReturn($data);
    }

    // 绑定用户
    public function bind()
    {
        $user_id = I('user_id', 0, 'trim');
        if (!$user_id) {
            $data['msg'] = "参数有误!";
        }
        // 绑定用户
        $user = D("user");
        // 验证用户是否存在
        $check_user = $user->where(['id' => $user_id])->find();
        if (!$check_user) {
            $data['msg'] = '用户不存在,请刷新重试';
        }

        $admin_data = getAdminData();
        $result = $user->where(['id' => $user_id])->save([
            'admin_id' => $admin_data['id'],
            'admin_name' => $admin_data['username']
        ]);

        // 返回结果
        if (!$result) {
            $data['msg'] = '绑定失败,请重试';
        } else {
            $data = [
                'status' => 1,
                'msg' => '绑定成功!'
            ];
            // 添加日志
            $log_data = [
                'admin_id' => $admin_data['id'],
                'admin_name' => $admin_data['username'],
                'log_type' => 1,
                'log_data' => $check_user['phone'] . '|' . $check_user['phone'] . '|1',
                'add_time' => date('Y-m-d H:i:s')
            ];
            $logModel = new LogModel();
            $logModel->createByArray($log_data);
        }
        return $this->ajaxReturn($data);
    }

    // 验证是否为超管
    protected function checkRole()
    {
        $user = json_decode(session('admin_user'), true);
        if (!isset($user['role']) || $user['role'] != 1) {
            $this->error("没有权限!");
        } else {
            return true;
        }
    }

    // 查看合同
    public function hetong()
    {
        $Order = D("order");
        $user = I('phone', 0, 'trim');
        if (!$user) {
            $this->error('没有相应用户');
        }
        $res = $Order->where(array('user' => $user))->field('id')->order("addtime Desc")->find();

        $oid = $res['id'];
        if (!$oid) {
            $this->redirect('Order/lists');
        }

        $order = $Order->where(array('id' => $oid, 'user' => $user))->find();
        $user_info = D("userinfo");
        $info = $user_info->where(array('user' => $user))->find();

        if (!$order) {
            $this->redirect('Order/lists');
        }
        $rmb = rmb_format($order['money']);
        $order['rmb'] = $rmb;
        $this->order = $order;
        $this->user = $info;
        $fff = C('cfg_fuwufei');
        $f = explode(",", $fff);
        $f = $f[0];
        $this->f = $f;
        $this->title = "查看合同";
        $this->role = getAdminData()['role'];
        $this->display();
    }

    //邀请码结算
    public function codes()
    {
        $this->title = "邀请码结算";
        $keyword = I("keyword", '', 'trim');
        $this->keyword = $keyword;
        //开始时间
        $params['start'] = I("start", '', 'trim');
        $this->assign("start", $params['start']);
        //结束时间
        $params['end'] = I("end", '', 'trim');
        $this->assign("end", $params['end']);
        $where = array();
        if ($keyword) {
            $where['user'] = array('like', "%{$keyword}%");
        }
        $User = D("invitation");
        import('ORG.Util.Page');
        $count = $User->where($where)->count();
        $Page = new Page($count, 25);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();
        $list = $User->where($where)->order('addtime Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();

        $wh = array();
        $start = strtotime($params['start']);
        $end = strtotime($params['end']);

        if ($params['start'] && $params['end']) {
            $wh['addtime'] = array(array('EGT', $start), array('ELT', $end), 'AND');
        } else {
            if ($params['start']) {
                $wh['addtime'] = array('egt', $start);
            }
            if ($params['end']) {
                $wh['addtime'] = array('elt', $end);
            }
        }

        $da = M('user')->where($wh)->field('codes')->select();
        foreach ($da as $key => $value) {
            $das[] = $value['codes'];
        }
        $das = array_count_values($das);

        $this->data = $das;
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();

    }

    //增加业务员
    public function addCodes()
    {
        $User = D("invitation");
        $data = array('status' => 0, 'msg' => '未知错误');

        $phone = I("pass", '', 'trim');
        $codes = getRandomString(4);

        if (!$phone) {
            $data['msg'] = "业务员名称不能为空!";
        } else {
            $count = $User->where(array('user' => $phone))->count();
            if ($count) {
                $data['msg'] = "业务员已存在!";
                $this->ajaxReturn($data);
                exit;
            }
//            $password = sha1(md5($password));
            $arr = array(
                'user' => $phone,
                'codes' => $codes,
                'addtime' => date('Y-m-d H:i:s'),
            );
            $status = $User->add($arr);
            if ($status) {
                //设置当前登录用户
                //  $this->setLoginUser($phone);
                $data['status'] = 1;
                $data['msg'] = '增加成功';
            } else {
                $data['msg'] = "操作失败!";
            }
            $this->ajaxReturn($data);
            exit;
        }
    }


    //允许/禁止用户登录
    public function status()
    {
        $this->title = "更改用户状态";
        $id = I("id", 0, 'trim');
        if (!$id) {
            $this->error("参数错误!");
        }
        $User = D("user");
        $info = $User->where(array('id' => $id))->find();
        if (!$info) {
            $this->error("用户不存在!");
        }
        $newstatus = empty($info['Withdrawal_status']) ? 1 : 0;
        $status = $User->where(array('id' => $id))->save(array('Withdrawal_status' => $newstatus));
        if (!$status) {
            $this->error("操作失败!");
        }
        $this->success("变更用户状态成功!");
    }

    //删除用户
    public function del()
    {
        $this->title = '删除用户';
        $id = I('id', 0, 'trim');
        if (!$id) {
            $this->error("参数有误!");
        }
        $User = D("user");
        // 验证用户是否存在
        $check_user = $User->where(['id' => $id])->find();
        if (!$check_user) {
            $data['msg'] = '用户不存在,请刷新重试';
        }
        $status = $User->where(array('id' => $id))->delete();
        if (!$status) {
            $this->error("删除失败!");
        }

        // 添加日志
        $admin_data = getAdminData();
        $log_data = [
            'admin_id' => $admin_data['id'],
            'admin_name' => $admin_data['username'],
            'log_type' => 3,
            'log_data' => $check_user['phone'] . '|' . $check_user['phone'] . '|3',
            'add_time' => date('Y-m-d H:i:s')
        ];
        $logModel = new LogModel();
        $logModel->createByArray($log_data);

        $this->success("删除用户成功!");
    }


    //修改用户提现密码
    public function changeWithdrawalPass()
    {
        $data = array('status' => 0, 'msg' => '未知错误');
        $id = I('post.id', 0, 'trim');
        $pass = I("post.pass", '', 'trim');
        if (!$id || !$pass) {
            $data['msg'] = "参数有误!";
        } else {
            $User = D("user");
            $status = $User->where(array('id' => $id))->save(['withdrawal_password' => $pass]);
            if (!$status) {
                $data['msg'] = "操作失败!";
            } else {
                $data['status'] = 1;
            }
        }
        $this->ajaxReturn($data);
    }

    // 修改用户额度
    public function updateCredit()
    {
        $data = array('status' => 0, 'msg' => '未知错误');
        $id = I('post.id', 0, 'trim');
        $num = I("post.num", '', 'trim');
        $operation = I("post.operation", '', 'trim');
        if (!$id || !$num || !$operation) {
            $data['msg'] = "参数有误!";
        } else {
            $User = D("user");
            if ($operation == '+') {
                $status = $User->where(array('id' => $id))->setInc('available_credit', $num);
            } else {
                $status = $User->where(array('id' => $id))->setDec('available_credit', $num);
            }

            if (!$status) {
                $data['msg'] = "操作失败!";
            } else {
                $data['status'] = 1;
            }
        }
        $this->ajaxReturn($data);
    }

    // 发送信息
    public function sendSMS()
    {
        $type = I('type', 0, 'trim');
        $phone = I('phone', 0, 'trim');
        if (!$type || !$phone) {
            $this->error('参数有误!');
        } else {
            $User = D("user");
            $check_user = $User->where(['phone' => $phone])->find();
            if ($check_user['withdrawal_password'] == null && $type == 1) {
                $this->error('请先设置用户的提现密码!');
            }
            // 查询用户资料
            $user_info = D('userinfo')->where(['user' => $phone])->find();

            // 发送短信
            $sms_data = [
                1 => "尊敬的 {$user_info['name']} 先生/女士您好，你的订单已通过，密码为 {$check_user['withdrawal_password']} ，请登录平台，进行操作。",
                2 => "尊敬的 {$user_info['name']} 先生/女士您好，您的申请被拒，请您联系平台客服！",
                3 => "尊敬的 {$user_info['name']} 先生/女士您好，您的剩余额提升为：" . $check_user["available_credit"] . "元，请及时登录APP查看！",
            ];
            $result = sendSms($phone, $sms_data[$type]);
            if ($result === true) {
                $this->success('发送成功!');
            } else {
                $this->error($result);
            }
        }
    }

    //查看用户资料
    public function userinfo()
    {
        $this->title = "查看用户资料";
        $user = I("user", '', 'trim');
        if (!$user) {
            $this->error("参数错误!");
        }
        $Userinfo = D("userinfo");
        $info = $Userinfo->where(array('user' => $user))->find();
        $this->baseinfo = $info;
        $Otherinfo = D("Otherinfo");
        $info = $Otherinfo->where(array('user' => $user))->find();
        $info = json_decode($info['infojson']);
        $this->otherinfo = $info;
        $this->role = getAdminData()['role'];
        $this->display();
    }

    //addUser
    public function addUser()
    {
        $User = D("user");
        $data = array('status' => 0, 'msg' => '未知错误');
        $password = '123456';
        $phone = I("pass", '', 'trim');
        //再次验证手机号
        if (!checkphone($phone)) {
            $data['msg'] = "手机号不符合规范!";
        } elseif (strlen($password) < 6 || strlen($password) > 16) {
            $data['msg'] = "请输入6-16位密码!";
        } else {
            $count = $User->where(array('phone' => $phone))->count();
            if ($count) {
                $data['msg'] = "手机号已注册,请登录!";
                $this->ajaxReturn($data);
                exit;
            }
            $password = sha1(md5($password));
            $arr = array(
                'phone' => $phone,
                'password' => $password,
                'addtime' => time()
            );
            $status = $User->add($arr);
            if ($status) {
                //设置当前登录用户
                //  $this->setLoginUser($phone);
                $data['status'] = 1;
                $data['msg'] = '增加成功';
            } else {
                $data['msg'] = "注册账户失败!";
            }
            $this->ajaxReturn($data);
            exit;
        }
    }

    //修改手机号
    public function changeuser()
    {
        $data = array('status' => 0, 'msg' => '未知错误');
        $id = I("id", '', 'trim');
        $phone = I("pass", '', 'trim');
        if (!$id || !$phone) {
            $data['msg'] = "参数有误!";
        } else {
            $r = M('user')->where(array('id' => $id))->save(array('phone' => $phone));
            if ($r) {
                $data['status'] = 1;
            } else {
                $data['msg'] = "修改失败!";
            }
        }
        $this->ajaxReturn($data);
        exit;
    }

    //修改手机号
    public function changecard()
    {
        $data = array('status' => 0, 'msg' => '未知错误');
        $ordernum = I("ordernum", '', 'trim');
        $user = I("user", '', 'trim');
        $phone = I("pass", '', 'trim');
        if (!$user || !$phone || !$ordernum) {
            $data['msg'] = "参数有误!";
        } else {
            $r = M('userinfo')->where(array('user' => $user))->save(array('bankcard' => $phone));
            M('payorder')->where(array('ordernum' => $ordernum))->save(array('account' => $phone));
            if ($r) {
                $data['status'] = 1;
            } else {
                $data['msg'] = "修改失败!";
            }
        }
        $this->ajaxReturn($data);
        exit;
    }

    public function baseinfo()
    {
        $data = array('status' => 0, 'msg' => '未知错误');
        $Userinfo = D("userinfo");
        $status = $Userinfo->where(array('id' => $_POST['id']))->save($_POST);
        if (!$status) {
            $data['msg'] = "操作失败";
        } else {
            $data['status'] = 1;
        }
        $this->ajaxReturn($data);
        exit;

    }

    //删除业务员
    public function delcodes()
    {
        $this->title = '删除业务员';
        $id = I('id', 0, 'trim');
        if (!$id) {
            $this->error("参数有误!");
        }
        $Order = D("invitation");
        $status = $Order->where(array('id' => $id))->delete();
        if (!$status) {
            $this->error("删除失败!");
        }
        $this->success("删除成功!");
    }


}
