<?php

class SocketAction extends CommonAction
{
    function index()
    {//向客户端发送信息
        import('Com.GatewayClient.Gateway');
        $gateway = new Gateway();
        $gateway::$registerAddress = '127.0.0.1:1238';
        $uid = 1;
        $msg = array(
            'type' => 'msg',
            'msg' => '你好',
        );
        $msg = json_encode($msg);
        $gateway::sendToUid($uid, $msg);
    }

    function bind()
    {//绑定客户端到对应的用户ID或用户名
        if (!empty($_POST)) {
            $gateway = new \Org\Util\Gateway;
            $gateway::$registerAddress = '127.0.0.1:8282';
            $uid = 1;
            $client_id = I('post.client_id');
            $gateway::bindUid($client_id, $uid);
        }
    }
}
