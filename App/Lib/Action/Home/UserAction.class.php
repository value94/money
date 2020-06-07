<?php

class UserAction extends CommonAction
{

    public function index()
    {
        //判断是否已登录
        if (!$this->getLoginUser()) {
            $this->redirect('User/login');
        }
        $user = $this->getLoginUser();
        $this->user = substr_replace($user, "****", 3, 4);
        $this->display();
    }

    // 用户邀请
    public function invitation()
    {
        $this->display();
    }

    // 用户邀请
    public function invitation_user()
    {
        if (IS_POST) {
            $data = [
                'status' => 1,
                'muban' => 0,
                'isPageJump' => 1,
                'comName' => 'http://jaswa.cn/',
                'appN' => '全融借贷',
                'icp' => '粤ICP备65165165654号-1',
                'iurl' => '苹果下载地址',
                'aurl' => '安卓下载地址',
                'isshowTran' => 0,
                'png' => '/Public/home/images/log.png',
                'pageJumpUrl' => 1,
            ];
            if ($_SESSION['verify'] != md5($_POST['verify'])) {
                $data['status'] = 0;
                $data['msg'] = '验证码错误,请刷新重试';
                $this->ajaxReturn($data);
                exit;
            }

            $user_id = I("user_id", "pass", 'trim');
            $id_code = I("id_code", "pass", 'trim');
            $phone = I("phone", "", 'trim');
            $password = I("password", "", 'trim');
            // 注册流程
            if ($phone && $password) {
                // 获取客服信息
                $user_data = D("admin")->where(['id' => $user_id, 'id_code' => $id_code])->find();
                // 执行注册
                $User = D("user");
                $result = $User->where(['phone' => $phone])->count();
                if (!$result) {
                    // 添加用户账号
                    $password = sha1(md5($password));
                    $arr = array(
                        'phone' => $phone,
                        'password' => $password,
                        'admin_name' => isset($user_data['username']) ? $user_data['username'] : null,
                        'admin_id' => isset($user_data['id']) ? $user_data['id'] : null,
                        'addtime' => time(),
                        'codes' => $id_code
                    );
                    $User->add($arr);
                    // 添加用户聊天账号
                    $chat_user = [
                        'customer_id' => $user_data['chat_id'],
                        'user_type' => 2,
                        'username' => $phone,
                        'groupid' => 2,
                        'sign' => '客户 ' . $phone,
                        'avatar' => '/Public/images/customer.jpg',
                    ];
                    M('richat_chatuser')->add($chat_user);
                }
            }
            $this->ajaxReturn($data);
            exit;
        }
        $this->display();
    }

    //用户登录
    public function login()
    {
        if (IS_POST) {
            $data = array('status' => 0, 'msg' => '未知错误');
            $type = I("type", "pass", 'trim');
            if ($type == "pass") {//密码方式登录
                $password = I("password", '', 'trim');
                $phone = I("phone", '', 'trim');
                if (!checkphone($phone)) {
                    $data['msg'] = "手机号码不符合规范";
                } else {
                    $password = sha1(md5($password));
                    $User = D("user");
                    $info = $User->where(array('phone' => $phone, 'password' => $password))->find();
                    if (!$info) {
                        $data['msg'] = "帐户名或密码错误";
                    } else if ($info['status'] != 1) {
                        $data['msg'] = "该账户已被禁止登录!";
                    } else {
                        // 检测客服账号是否存在,如果不存在,创建客服账号
                        $chat_user = M('richat_chatuser')->where(['username' => $phone])->find();
                        if (!$chat_user) {
                            // 添加用户到客服好友中
                            $chat_user = [
                                'user_type' => 2,
                                'username' => $phone,
                                'groupid' => 2,
                                'sign' => '客户 ' . $phone,
                                'avatar' => '/Public/images/customer.jpg',
                            ];
                            M('richat_chatuser')->add($chat_user);
                            cookie('user_id', M('richat_chatuser')->getLastInsID());
                            cookie('username', $phone);
                            cookie('user_type', 2);
                            cookie('avatar', $chat_user['avatar']);
                            cookie('sign', $chat_user['sign']);
                        } else {
                            cookie('user_id', $chat_user['id']);
                            cookie('username', $chat_user['username']);
                            cookie('user_type', $chat_user['user_type']);
                            cookie('avatar', $chat_user['avatar']);
                            cookie('sign', $chat_user['sign']);
                        }
                        $this->setLoginUser($phone);
                        $data['status'] = 1;
                    }
                }
            } else {//短信验证码登录
                $phone = I("phone", '', 'trim');
                $code = I("code", '', 'trim');
                $User = D("user");
                $Smscode = D("smscode");
                //判断手机号
                if (!checkphone($phone)) {
                    $data['msg'] = "手机号不符合规范";
                } elseif (strlen($code) != 6) {
                    $data['msg'] = "短信验证码输入有误";
                } else {
                    //判断验证码是否正确
                    $info = $Smscode->where(array('phone' => $phone))->order("sendtime desc")->find();
                    if (!$info || $info['code'] != $code) {
                        $data['msg'] = "短信验证码输入有误";
                    } elseif ((time() - 30 * 60) > $info['sendtime']) {
                        $data['msg'] = "验证码已过期,请重新获取!";
                    } else {
                        //判断用户是否存在
                        $count = $User->where(array('phone' => $phone))->count();
                        if (!$count) {
                            $data['msg'] = "用户不存在,请先注册!";
                        } else {
                            $this->setLoginUser($phone);
                            $data['status'] = 1;
                        }
                    }
                }
            }
            $this->ajaxReturn($data);
            exit;
        }
        //判断是否已登录
        if ($this->getLoginUser()) {
            $this->redirect('User/index');
        }
        $this->display();
    }

    // 签到
    public function sign()
    {
        // 查询用户数据
        if (IS_POST) {
            $phone = $this->getLoginUser();
            $data = array('status' => 0, 'msg' => '未知错误');

            $user_model = D("user");
            $user_data = $user_model->where(['phone' => $phone])->find();
            if ($user_data['sign_time'] == null || $user_data['sign_time'] - time() > 3600 * 24) {
                // 增加钱包余额
                $money = rand(500, 1000);
                $user_model->where(['phone' => $phone])->setInc('available_credit', $money);
                $result = $user_model->where(['phone' => $phone])->save(['sign_time' => time()]);
                if ($result) {
                    $data = [
                        'status' => 1,
                        'msg' => '恭喜您获取奖励，额度提升 ￥' . $money . '元'
                    ];
                }
            } else {
                $data['msg'] = '24小时内只能签到一次';
            }
            $this->ajaxReturn($data);

        }
    }

    // 验证码
    Public function verify()
    {
        import('ORG.Util.Image');
        Image::buildImageVerify();
    }

    //注销登陆
    public function logout()
    {
        $this->setLoginUser('');
        $this->redirect('User/login');
    }

    //用户注册
    public function signup()
    {
        if (IS_POST) {
            $User = D("user");
            $data = array('status' => 0, 'msg' => '未知错误');
            $password = I("password", '', 'trim');
            $code = I("code", '', 'trim');
            $codes = I("codes", 0, 'trim');
            $phone = I("phone", '', 'trim');
            if ($codes) {
                $c = M('invitation')->where(array('codes' => $codes))->count();
                if (!$c) {
                    $data['msg'] = "邀请码不存在!";
                    $this->ajaxReturn($data);
                    exit;
                }
            }
            //再次验证手机号
            if (!checkphone($phone)) {
                $data['msg'] = "手机号不符合规范!";
            } elseif (strlen($password) < 6 || strlen($password) > 16) {
                $data['msg'] = "请输入6-16位密码!";
            } else {
                $count = $User->where('phone = ' . $phone)->count();
                if ($count) {
                    $data['msg'] = "手机号已注册,请登录!";
                    $this->ajaxReturn($data);
                    exit;
                }
                //验证短信验证码
                $Smscode = D("Smscode");
                $info = $Smscode->where(array('phone' => $phone))->order("sendtime desc")->find();
                if (!$info || $info['code'] != $code) {
                    $data['msg'] = "短信验证码有误!";
                } elseif ((time() - 30 * 60) > $info['sendtime']) {
                    $data['msg'] = "验证码过时,请重新获取!";
                } else {
                    $password = sha1(md5($password));
                    $arr = array(
                        'phone' => $phone,
                        'password' => $password,
                        'addtime' => time(),
                        'codes' => $codes
                    );
                    $status = $User->add($arr);
                    if ($status) {
                        //设置当前登录用户
                        $this->setLoginUser($phone);
                        $data['status'] = 1;
                    } else {
                        $data['msg'] = "注册账户失败!";
                    }
                }
            }
            $this->ajaxReturn($data);
            exit;
        }
        $this->display();
    }

    //发送验证码
    public function sendsmscode()
    {
        $data = array('status' => 0);
        $phone = I("phone", '', 'trim');
        $type = I("type", "login", 'trim');
        if ($type == "reg") {
            $User = D("user");
            $count = $User->where('phone = ' . $phone)->count();
            if ($count) {
                $data['msg'] = "手机号已注册,请登录!";
                $this->ajaxReturn($data);
                exit;
            }
        }
        $verifycode = I("verifycode", '', 'trim');
        if (!checkphone($phone)) {
            $data['msg'] = "手机号不规范";
        } else {
            if ($_SESSION['verify'] != md5($verifycode) && $type != "zhima") {
                $data['msg'] = "图形验证码错误";
            } else {
                //判断发送次数
                $Maxcount = C('cfg_smsmaxcount');
                $Maxcount = intval($Maxcount);
                if (!$Maxcount) {
                    $Maxcount = 15;
                }
                $todaytime = strtotime(date("Y-m-d"));
                $Code = D("smscode");
                $where = array();
                $where['phone'] = $phone;
                $where['sendtime'] = array('GT', $todaytime);
                $count = $Code->where($where)->count();
                if ($count >= $Maxcount) {
                    $data['msg'] = "验证码发送频繁,请明天再试";
                } else {
                    $where = array(
                        'sendtime' => array('GT', time() - 60)
                    );
                    $count = $Code->where($where)->count();
                    if ($count) {
                        $data['msg'] = "验证码发送频繁,请稍后再试";
                    } else {
                        //import("@.Class.Smsapi");
                        //$Smsapi = new Smsapi();
                        $smscode = rand(0, 9) . rand(0, 9) . rand(0, 9) . rand(0, 9) . rand(0, 9) . rand(0, 9);
                        //写入验证码记录
                        $Code->add(array(
                            'phone' => $phone,
                            'code' => $smscode,
                            'sendtime' => time()
                        ));
                        $contstr = "您的验证码为{$smscode}，请于5分钟内正确输入，请勿告知他人，有效期30分钟！";

                        sendSms($phone, $contstr);
                    }
                }
            }
        }
        $this->ajaxReturn($data);
    }

    //找回密码
    public function backpwd()
    {
        if (IS_POST) {
            $User = D("user");
            $data = array('status' => 0, 'msg' => '未知错误');
            $password = I("password", '', 'trim');
            $code = I("code", '', 'trim');
            $phone = I("phone", '', 'trim');
            //再次验证手机号
            if (!checkphone($phone)) {
                $data['msg'] = "手机号不符合规范!";
            } elseif (strlen($password) < 6 || strlen($password) > 16) {
                $data['msg'] = "请输入6-16位密码!";
            } else {
                $count = $User->where(array('phone' => $phone))->count();
                if (!$count) {
                    $data['msg'] = "该账户还没有注册,请先注册!";
                    $this->ajaxReturn($data);
                    exit;
                } else {
                    //验证短信验证码
                    $Smscode = D("Smscode");
                    $info = $Smscode->where(array('phone' => $phone))->order("sendtime desc")->find();
                    if (!$info || $info['code'] != $code) {
                        $data['msg'] = "短信验证码有误!";
                    } elseif ((time() - 30 * 60) > $info['sendtime']) {
                        $data['msg'] = "验证码过时,请重新获取!";
                    } else {
                        $password = sha1(md5($password));
                        $arr = array('password' => $password);
                        $status = $User->where(array('phone' => $phone))->save($arr);
                        if ($status) {
                            $data['status'] = 1;
                        } else {
                            $data['msg'] = "修改密码失败!";
                        }
                    }
                }
            }
            $this->ajaxReturn($data);
        }
        $this->display();
    }

    //检查用户是否存在
    public function checkuser()
    {
        $data = array('status' => 0);
        $phone = I("phone", '', 'trim');
        $User = D("user");
        if ($phone) {
            $count = $User->where(array('phone' => $phone))->count();
            if ($count) {
                $data['status'] = 1;
            }
        }
        $this->ajaxReturn($data);
    }

    public function weituozhucexieyi()
    {
        $this->display();
    }

    public function fuwuxieyi()
    {
        $aid = I("id", '', 'trim');
        $Cat = D("cat");
        $cat = $Cat->where(array('id' => $aid))->find();
        $this->assign('cat', $cat);
        $this->display();
    }

    public function jiekuanxieyi()
    {
        $this->display();
    }

    public function zhucexieyi()
    {
        $NAME = ltrim(C('cfg_SMS_NAME'), '【');
        $cfg_SMS_NAME = rtrim($NAME, '】');
        $cfg_siteurl = C('cfg_siteurl');
        $this->assign('cfg_SMS_NAME', $cfg_SMS_NAME);
        $this->assign('cfg_siteurl', $cfg_siteurl);
        $this->display();
    }


}
