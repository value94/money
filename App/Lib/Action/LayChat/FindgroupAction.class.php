<?php
// +----------------------------------------------------------------------
// | layerIM + Workerman + ThinkPHP5 即时通讯
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2012 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: NickBai <1902822973@qq.com>
// +----------------------------------------------------------------------
Vendor('Workerman.Worker');


class FindgroupAction extends Action
{
    //显示查询 / 添加 分组的页面
    public function index()
    {
        $groupArr = M('richat_chatgroup')->order('id desc')->limit(4)->select();

        $this->group = $groupArr;

        return $this->display();
    }

    //搜索查询群组
    public function search()
    {
        $groupname = I('search_txt');
        $find = M('richat_chatgroup')->where(["groupname like '%" . $groupname . "%'"])->select();

        if (empty($find)) {
            echo json_encode(['code' => -1, 'data' => '', 'msg' => '您搜的群不存在']);
        }

        echo json_encode(['code' => 1, 'data' => $find, 'msg' => 'success']);
    }

    //加入群组
    public function joinGroup()
    {
        $groupid = I('gid');
        $has = M('richat_chatgroup')->where(['id' => $groupid])->find();

        if (empty($has)) {
            echo json_encode(['code' => -1, 'data' => '', 'msg' => '该群组不存在']);
        }

        $uid = cookie('uid');
        //已经加入了
        $allready = M('richat_groupdetail')->field('userid')
            ->where(['groupid' => $groupid, 'userid' => $uid])
            ->find();

        if (!empty($allready)) {
            echo json_encode(['code' => -2, 'data' => '', 'msg' => '你已经加入该群了']);
        }

        $param = [
            'userid' => $uid,
            'username' => cookie('username'),
            'useravatar' => cookie('avatar'),
            'usersign' => cookie('sign'),
            'groupid' => $groupid
        ];

        M('richat_groupdetail')->insert($param);

        //socket data
        $join_data = '{"type":"joinGroup", "data" : {"avatar":"' . $has['avatar'] . '","groupname":"' . $has['groupname'] . '",';
        $join_data .= '"id":"' . $groupid . '", "uid":"' . $uid . '"}}';

        echo json_encode(['code' => 1, 'data' => $join_data, 'msg' => '成功加入']);
    }

    //添加群组
    public function addGroup()
    {
        if (empty(cookie('uid'))) {
            $this->redirect('index/index');
        }

        if ($this->isPost()) {

            $param = I('post.');
            $ids = $param['ids'];

            unset($param['ids']);

            if (empty($param['groupname'])) {
                echo json_encode(['code' => -1, 'data' => '', 'msg' => '群组名不能为空']);
            }

            if (empty($ids)) {
                echo json_encode(['code' => -2, 'data' => '', 'msg' => '请添加成员']);
            }

            $this->_getUpFile($param);

            $param['owner_name'] = cookie('username');
            $param['owner_id'] = cookie('uid');
            $param['owner_avatar'] = cookie('avatar');
            $param['owner_sign'] = cookie('sign');

            $flag = M('richat_chatgroup')->insert($param);
            if (empty($flag)) {
                echo json_encode(['code' => -3, 'data' => '', 'msg' => '添加群组失败']);
            }

            //unset( $param );
            //拼装上自己
            $ids .= "," . cookie('uid');
            $groupid = M('richat_chatgroup')->getLastInsID();

            $users = M('richat_chatuser')->where(["id" => ['in', $ids]])->select();
            if (!empty($users)) {
                foreach ($users as $key => $vo) {

                    $params = [
                        'userid' => $vo['id'],
                        'username' => $vo['username'],
                        'useravatar' => $vo['avatar'],
                        'usersign' => $vo['sign'],
                        'groupid' => $groupid
                    ];

                    M('richat_groupdetail')->insert($params);
                    unset($params);
                }
            }

            //socket data
            $add_data = '{"type":"addGroup", "data" : {"avatar":"' . $param['avatar'] . '","groupname":"' . $param['groupname'] . '",';
            $add_data .= '"id":"' . $groupid . '", "uids":"' . $ids . '"}}';

            echo json_encode(['code' => 1, 'data' => $add_data, 'msg' => '创建群组 成功']);
        }

        return $this->display();
    }

    //管理我的群组
    public function myGroup()
    {

        if ($this->isAjax()) {
            $groupid = I('id');
            $users = M('richat_groupdetail')->field('username,userid,useravatar,groupid')->where(['groupid' => $groupid])->select();

            echo json_encode(['code' => 1, 'data' => $users, 'msg' => 'success']);
        }

        $group = [];
        $users = [];
        $group = M('richat_chatgroup')->field('id,groupname')->where(['owner_id' => cookie('uid')])->select();
        if (!empty($group)) {
            $users = M('richat_groupdetail')->field('username,userid,useravatar,groupid')->where(['groupid' => $group['0']['id']])->select();
        }

        $this->group = $group;
        $this->users = $users;

        return $this->display();
    }

    //追加群组人员
    public function addMembers()
    {
        $groupid = I('gid');
        $ids = I('ids');
        $users = M('richat_chatuser')->where(["id" => ['in', $ids]])->select();
        if (!empty($users)) {
            foreach ($users as $key => $vo) {

                $param = [
                    'userid' => $vo['id'],
                    'username' => $vo['username'],
                    'useravatar' => $vo['avatar'],
                    'usersign' => $vo['sign'],
                    'groupid' => $groupid
                ];

                M('richat_groupdetail')->insert($param);
                unset($param);
            }
        }

        $group = M('richat_chatgroup')->field('avatar,groupname')->where(['id' => $groupid])->find();
        //socket data
        $add_data = '{"type":"addMember", "data" : {"avatar":"' . $group['avatar'] . '","groupname":"' . $group['groupname'] . '",';
        $add_data .= '"id":"' . $groupid . '", "uid":"' . $ids . '"}}';

        echo json_encode(['code' => 1, 'data' => $add_data, 'msg' => '加入群组 成功']);
    }

    //移出成员出组
    public function removeMembers()
    {
        $uid = I('uid');
        $groupid = I('gid');

        $cannot = M('richat_chatgroup')->field('id')->where(['owner_id' => $uid, 'id' => $groupid])->find();
        if (!empty($cannot)) {
            echo json_encode(['code' => -1, 'data' => '', 'msg' => '不可移除群主']);
        }

        M('richat_groupdetail')->where(['userid' => $uid, 'groupid' => $groupid])->delete();

        echo json_encode(['code' => 1, 'data' => '', 'msg' => '移除成功']);
    }

    //解散群组
    public function removeGroup()
    {
        $groupid = I('gid');
        //删除群组
        M('richat_chatgroup')->where(['id' => $groupid])->delete();

        //删除群成员
        M('richat_groupdetail')->where(['groupid' => $groupid])->delete();

        echo json_encode(['code' => 1, 'data' => '', 'msg' => '成功解散该群']);
    }

    //获取所有的用户
    public function getUsers()
    {
        $result = M('richat_chatuser')->field('id,username,groupid')
            ->where(['id' => ['neq', cookie('uid')]])
            ->select();

        if (empty($result)) {
            echo json_encode(['code' => -1, 'data' => '', 'msg' => '暂无其他成员']);
        }

        $str = "";
        $flag = I('flag');
        $flag = empty($flag) ? false : true;
        if ($flag) {
            //查询该分组中的成员id
            $groupid = I('gid');
            $ids = M('richat_groupdetail')->field('userid')->where(['groupid' => $groupid])->select();

            if (!empty($ids)) {
                foreach ($ids as $key => $vo) {
                    $idsArr[] = $vo['userid'];
                }
                unset($ids);
            }

            foreach ($result as $key => $vo) {
                if (in_array($vo['id'], $idsArr)) {
                    unset($result[$key]);
                }
            }
        }

        if (empty($result)) {
            echo json_encode(['code' => -2, 'data' => '', 'msg' => '该群组已经包含了全部成员']);
        }

        $group = C('user_group');
        //先将默认分组拼装好
        foreach ($group as $key => $vo) {
            $str .= '{ "id": "-' . $key . '", "pId":0, "name":"' . $vo . '"},';
        }

        foreach ($result as $key => $vo) {
            $str .= '{ "id": "' . $vo['id'] . '", "pId":"-' . $vo['groupid'] . '", "name":"' . $vo['username'] . '"},';
        }

        $str = "[" . substr($str, 0, -1) . "]";

        echo json_encode(['code' => 1, 'data' => $str, 'msg' => 'success']);
    }

    /**
     * 上传图片方法
     * @param $param
     */
    private function _getUpFile(&$param)
    {

        import('ORG.Net.UploadFile');
        $upload = new UploadFile();// 实例化上传类

        $upload->maxSize = 3145728;// 设置附件上传大小
        $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->savePath = '/Upload/image/';// 设置附件上传目录

        if (!$upload->upload()) {// 上传错误提示错误信息
            echo $upload->getErrorMsg();
        } else {// 上传成功 获取上传文件信息
            $info = $upload->getUploadFileInfo();
            $param['avatar'] = '/Upload' . '/image/' . date('Ymd') . '/' . $info[0]['savename'];
        }

        /*// 保存表单数据 包括附件数据
        $User = M("User"); // 实例化User对象
        $User->create(); // 创建数据对象
        $User->photo = $info[0]['savename']; // 保存上传的照片根据需要自行组装
        $User->add(); // 写入用户数据到数据库
        $this->success('数据保存成功！');*/

        /*// 获取表单上传文件
        $file = request()->file('avatar');

        // 移动到框架应用根目录/public/uploads/ 目录下
        if (!is_null($file)) {

            $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
            if ($info) {
                // 成功上传后 获取上传信息
                $param['avatar'] = '/Upload' . '/image/' . date('Ymd') . '/' . $info->getFilename();
            } else {
                // 上传失败获取错误信息
                echo $file->getError();
            }
        } else {
            unset($param['avatar']);
        }*/

    }
}