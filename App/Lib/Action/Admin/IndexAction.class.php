<?php

//decode by http://www.yunlu99.com/
error_reporting(E_ALL ^ E_NOTICE);
?>﻿<?php

class IndexAction extends CommonAction
{
    public function index()
    {
        if (!$this->islogin()) {
            $this->redirect(GROUP_NAME . '/Index/login');
        } else {
            $this->redirect(GROUP_NAME . '/Main/index');
        }
    }

    public function login()
    {
        $this->title = '登录系统';
        if (IS_POST) {
            $_var_0 = array(array('username', 'require', '用户名不能为空!'), array('password', 'require', '密码不能为空!'));
            $_var_1 = D('admin');
            $_var_1->setProperty('_validate', $_var_0);
            if (!$_var_1->create()) {
                exit($_var_1->getError());
            }
            $_var_4 = I('username', '', 'trim');
            $_var_5 = I('password', '', 'trim');
            $_var_5 = $this->getpass($_var_5);
            $admin_user = $_var_1->where(array('username' => $_var_4, 'password' => $_var_5))->find();
            if ($admin_user) {
                if ($admin_user['status']) {
                    //写入登录记录
                    $_var_7 = D('admin_login');
                    $_var_7->add(array('username' => $_var_4, 'logintime' => time(), 'loginip' => get_client_ip()));
                    //更新最近登录时间
                    $login_session = json_encode($admin_user);
                    $this->setlogin($login_session);
                    $_var_1->where(array('username' => $_var_4))->save(array('lastlogin' => time()));

                    // 同时登陆客服系统
                    //设置为登录状态
                    M('richat_chatuser')->where(['id' => $admin_user['chat_id']])->setField('status', 'online');
                    $chat_user_data = M('richat_chatuser')->where(['id' => $admin_user['chat_id']])->find();
                    cookie('uid', $chat_user_data['id']);
                    cookie('username', $chat_user_data['username']);
                    cookie('avatar', $chat_user_data['avatar']);
                    cookie('sign', $chat_user_data['sign']);

                    $this->success('登录成功!', U(GROUP_NAME . '/Main/index'));
                } else {
                    $this->error('该账户已被禁用!');
                }
            } else {
                $this->error('用户名或密码错误!');
            }
            exit;
        }
        $this->role = getAdminData()['role'];
        $this->display();
    }

    public function logout()
    {
        $this->title = '注销登录';
        $this->setlogin('');
        $this->redirect(U(GROUP_NAME . '/Index/login'));
    }
}
