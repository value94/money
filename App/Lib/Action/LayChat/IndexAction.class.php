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

class IndexAction extends Action
{
    public function _initialize()
    {
        if (empty(cookie('user_id'))) {
//            $this->redirect('LayChat/Login/index');

            // 根据ip生成一个新账号
            $ip = get_client_ip();
            // 判断游客账号是否存在
            $chat_user = M('richat_chatuser')->where(['sign' => $ip])->find();
            if ($chat_user) {
                cookie('user_id', $chat_user['id']);
            } else {
                // 查询客服账号
                $customer_admin_id = C('cfg_customer_id');
                $richat_chatuser_model = M('richat_chatuser');
                $customer_id = $richat_chatuser_model->where(['admin_id' => $customer_admin_id])->getField('id');
                // 新增游客账号
                $chat_user = [
                    'user_type' => 2,
                    'customer_id' => $customer_id,
                    'username' => '游客 :' . $ip,
                    'groupid' => 2,
                    'sign' => get_client_ip(),
                    'avatar' => '/Public/images/customer.jpg',
                ];
                $richat_chatuser_model->add($chat_user);
                cookie('user_id', $richat_chatuser_model->getLastInsID());
            }
        }
    }

    public function index()
    {
        $mine = M('richat_chatuser')->where(['id' => cookie('user_id')])->find();
        $this->uinfo = $mine;

        return $this->display();
    }

    public function customer()
    {
        $user_id = cookie('user_id');
        $mine = M('richat_chatuser')->where(['id' => $user_id])->find();

        $customer_data = '';
        if ($mine['customer_id']) {
            $customer_data = M('richat_chatuser')->where("id={$mine['customer_id']}")->find();
        }
        //查询自己的信息
        $mine = M('richat_chatuser')->where(['id' => $user_id])->find();

        // 客服只能看到自己绑定的用户
        if ($mine['username'] != 'admin') {
            $other = M('richat_chatuser')->where("customer_id={$mine['id']} or user_type=1")->select();
        }

        // 被绑定客户只能看到自己的客服
        if ($mine['customer_id'] != null) {
            $other = M('richat_chatuser')->where("id={$mine['customer_id']}")->select();
        }

        //查询当前用户的所处的群组
        $groupArr = [];
        $groups = M('richat_groupdetail')->field('groupid')->where(['userid' => cookie('user_id')])->group('groupid')->select();

        if (!empty($groups)) {
            foreach ($groups as $key => $vo) {
                $ret = M('richat_chatgroup')->where(['id' => $vo['groupid']])->find();
                if (!empty($ret)) {
                    $groupArr[] = $ret;
                }
            }
        }
        unset($ret, $groups);

        $online = 0;
        $group = [];  //记录分组信息
        $userGroup = C('user_group');
        $list = [];  //群组成员信息
        $i = 0;
        $j = 0;
        foreach ($userGroup as $key => $vo) {
            $group[$i] = [
                'groupname' => $vo,
                'id' => $key,
                'online' => 0,
                'list' => []
            ];
            $i++;
        }
        unset($userGroup);

        foreach ($group as $key => $vo) {

            foreach ($other as $k => $v) {

                if ($vo['id'] == $v['groupid']) {

                    $list[$j]['username'] = $v['username'];
                    $list[$j]['id'] = $v['id'];
                    $list[$j]['avatar'] = $v['avatar'];
                    $list[$j]['sign'] = $v['sign'];

                    if ('online' == $v['status']) {
                        $online++;
                    }

                    $group[$key]['online'] = $online;
                    $group[$key]['list'] = $list;

                    $j++;
                }
            }
            $j = 0;
            $online = 0;
            unset($list);
        }
        //print_r($group);die;
        unset($other);

        $data = [
            'mine' => [
                'username' => $mine['username'],
                'id' => $mine['id'],
                'status' => 'online',
                'sign' => $mine['sign'],
                'avatar' => $mine['avatar']
            ],
            'friend' => $group,
            'group' => $groupArr

        ];
        $this->group = json_encode($group);
        $this->uinfo = $mine;
        $this->customer_data = $customer_data;
        return $this->display();
    }

    public function mobile()
    {
        $mine = M('richat_chatuser')->where(['id' => cookie('user_id')])->find();
        $this->uinfo = $mine;

        return $this->display();
    }

    //获取列表
    public function getList()
    {
        //查询自己的信息
        $mine = M('richat_chatuser')->where(['id' => cookie('user_id')])->find();

        // 客服只能看到自己绑定的用户
        if ($mine['username'] != 'admin') {
            $other = M('richat_chatuser')->where("customer_id={$mine['id']} or user_type=1")->select();
        }

        // 被绑定客户只能看到自己的客服
        if ($mine['customer_id'] != null) {
            $other = M('richat_chatuser')->where("id={$mine['customer_id']}")->select();
        }

        //查询当前用户的所处的群组
        $groupArr = [];
        $groups = M('richat_groupdetail')->field('groupid')->where(['userid' => cookie('user_id')])->group('groupid')->select();

        if (!empty($groups)) {
            foreach ($groups as $key => $vo) {
                $ret = M('richat_chatgroup')->where(['id' => $vo['groupid']])->find();
                if (!empty($ret)) {
                    $groupArr[] = $ret;
                }
            }
        }
        unset($ret, $groups);

        $online = 0;
        $group = [];  //记录分组信息
        $userGroup = C('user_group');
        $list = [];  //群组成员信息
        $i = 0;
        $j = 0;
        foreach ($userGroup as $key => $vo) {
            $group[$i] = [
                'groupname' => $vo,
                'id' => $key,
                'online' => 0,
                'list' => []
            ];
            $i++;
        }
        unset($userGroup);

        foreach ($group as $key => $vo) {

            foreach ($other as $k => $v) {

                if ($vo['id'] == $v['groupid']) {

                    $list[$j]['username'] = $v['username'];
                    $list[$j]['id'] = $v['id'];
                    $list[$j]['avatar'] = $v['avatar'];
                    $list[$j]['sign'] = $v['sign'];

                    if ('online' == $v['status']) {
                        $online++;
                    }

                    $group[$key]['online'] = $online;
                    $group[$key]['list'] = $list;

                    $j++;
                }
            }
            $j = 0;
            $online = 0;
            unset($list);
        }
        //print_r($group);die;
        unset($other);

        $return = [
            'code' => 0,
            'msg' => '',
            'data' => [
                'mine' => [
                    'username' => $mine['username'],
                    'id' => $mine['id'],
                    'status' => 'online',
                    'sign' => $mine['sign'],
                    'avatar' => $mine['avatar']
                ],
                'friend' => $group,
                'group' => $groupArr
            ],
        ];

        echo json_encode($return);

    }

    //获取组员信息
    public function getMembers()
    {
        $id = I('id');

        //群主信息
        $owner = M('richat_chatgroup')->field('owner_name,owner_id,owner_avatar,owner_sign')->where(['id' => $id])->find();
        //群成员信息
        $list = M('richat_groupdetail')->field('userid id,username,useravatar avatar,usersign sign')
            ->where(['groupid' => $id])->select();

        $return = [
            'code' => 0,
            'msg' => '',
            'data' => [
                'owner' => [
                    'username' => $owner['owner_name'],
                    'id' => $owner['owner_id'],
                    'owner_id' => $owner['owner_avatar'],
                    'sign' => $owner['owner_sign']
                ],
                'list' => $list
            ]
        ];

        echo json_encode($return);
    }


}
