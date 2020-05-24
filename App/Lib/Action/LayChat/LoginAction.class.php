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

class LoginAction extends Action
{
    public function index()
    {
        return $this->display();
    }

    public function doLogin()
    {
        $uname = I('username', '', 'trim');
        $userinfo = M('richat_chatuser')->where(['username' => $uname])->find();
        if (empty($userinfo)) {
            $this->error("用户不存在");
        }

        $pwd = I('pwd', '', 'trim');
        if (md5($pwd) != $userinfo['pwd']) {
            $this->error("密码不正确");
        }

        //设置为登录状态
        M('richat_chatuser')->where(['username' => $uname])->setField('status', 'online');
        cookie('uid', $userinfo['id']);
        cookie('username', $userinfo['username']);
        cookie('avatar', $userinfo['avatar']);
        cookie('sign', $userinfo['sign']);

        $this->redirect('LayChat/Index/index');
    }

}
