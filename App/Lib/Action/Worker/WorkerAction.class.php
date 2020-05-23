<?php
//namespace Worker\Controller;
use Workerman\Worker;
require_once '/Workerman/Autoloader.class.php';

class WorkerAction extends Action {
    public function Start() {
        $worker = new Worker('text://0.0.0.0:2345'); //实例化Worker，并设置协议、IP和端口
        $worker->count = 4;
        $worker->onMessage = array($this, 'onMessage');
        //worker的其它回调方法可以参考onMessage
        Worker::runAll();
    }

    public function onMessage($connection, $data) {
        $connection->send('something...');
    }
}