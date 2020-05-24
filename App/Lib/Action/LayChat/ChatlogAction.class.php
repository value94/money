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
//namespace app\index\controller;

//use think\Controller;
Vendor('Workerman.Worker');

class ChatlogAction extends Action
{
    //聊天记录
    public function index()
    {
        $id = I('id');
        $type = I('type');

        $this->id = $id;
        $this->type = $type;

        return $this->display();
    }

    //聊天记录详情
    public function detail()
    {
        $id = I('id');
        $type = I('type');

        $uid = cookie('uid');

        if ('friend' == $type) {
            $result = M('richat_chatlog')->where(['_string' => "((fromid={$uid} and toid={$id}) or (fromid={$id} and toid={$uid})) and type='friend'"])
                ->order('timeline desc')
                ->select();

            if (empty($result)) {
                echo json_encode(['code' => -1, 'data' => '', 'msg' => '没有记录']);
            }

            echo json_encode(['code' => 1, 'data' => $result, 'msg' => 'success']);
        } else if ('group' == $type) {

            $result = M('richat_chatlog')->where(['_string' => "toid={$id} and type='group'"])
                ->order('timeline desc')
                ->select();

            if (empty($result)) {
                echo json_encode(['code' => -1, 'data' => '', 'msg' => '没有记录']);
            }

            echo json_encode(['code' => 1, 'data' => $result, 'msg' => 'success']);
        }


    }
}