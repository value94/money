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


class TestAction extends Action
{
    public function index()
    {
        return $this->display();
    }

    public function upload()
    {
        //$file = request()->file('file');
        //dump($file);
        echo json_encode(['code' => 1, 'data' => '', 'msg' => 'success']);
    }
}