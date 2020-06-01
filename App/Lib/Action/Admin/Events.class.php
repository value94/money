<?php
import('Com.GatewayClient.Gateway');
class Events
{
    public static $user = [];
    public static $uuid = [];
    public static function onWorkerStart($businessWorker)
    {   //服务准备就绪
        echo "Worker_socket_ready\n";
    }

    public static function onConnect($client_id)
    {
        //当客户端链接上时触发，这里可以做 session  域名来源排除 ，安全过滤等

    }

    public static function onMessage($client_id, $message)
    {

        /*监听事件，需要把客户端发来的json转为数组*/
        $data = json_decode($message, true);
        switch ($data['type']) {

            //当有用户上线时
            case 'reg':
                //绑定uid 用于数据分发
                Gateway::bindUid($client_id, $data['content']['uid']);
                self::$user[$data['content']['uid']] = $client_id;
                self::$uuid[$data['content']['uid']] = $data['content']['uid'];

                //给当前客户端 发送当前在线人数，以及当前在线人的资料
                $reg_data['uuser'] = self::$uuid;
                $reg_data['num'] = count(self::$user);
                $reg_data['type'] = "reguser";
                Gateway::sendToClient($client_id, json_encode($reg_data));

                //将当前在线用户数量，和新上线用户的资料发给所有人 但把排除自己，否则会出现重复好友
                $all_data['type'] = "addList";
                $all_data['content'] = $data['content'];
                $all_data['content']['type'] = 'friend';
                $all_data['content']['groupid'] = 2;
                $all_data['num'] = count(self::$user);
                Gateway::sendToAll(json_encode($all_data), '', $client_id);
                break;


            case 'chatMessage':
                //处理聊天事件
                $msg['username'] = $data['content']['mine']['username'];
                $msg['avatar'] = $data['content']['mine']['avatar'];
                $msg['id'] = $data['content']['mine']['id'];
                $msg['content'] = $data['content']['mine']['content'];
                $msg['type'] = $data['content']['to']['type'];
                $chatMessage['type'] = 'getMessage';
                $chatMessage['content'] = $msg;

                //处理单聊
                if ($data['content']['to']['type'] == 'friend') {

                    if (isset(self::$uuid[$data['content']['to']['id']])) {
                        Gateway::sendToUid(self::$uuid[$data['content']['to']['id']], json_encode($chatMessage));
                    } else {
                        //处理离线消息
                        $noonline['type'] = 'noonline';
                        Gateway::sendToClient($client_id, json_encode($noonline));
                    }
                } else {
                    //处理群聊
                    $chatMessage['content']['id'] = $data['content']['to']['id'];
                    Gateway::sendToAll(json_encode($chatMessage), '', $client_id);
                }
                break;
        }


    }

    /**
     * 当用户断开连接时触发
     * @param int $client_id 连接id
     */
    public static function onClose($client_id)
    {

        //有用户离线时触发 并推送给全部用户
        $data['type'] = "out";
        $data['id'] = array_search($client_id, self::$user);
        unset(self::$user[$data['id']]);
        unset(self::$uuid[$data['id']]);
        $data['num'] = count(self::$user);
        Gateway::sendToAll(json_encode($data));

    }
}