<?php

class InfoAction extends CommonAction
{
    private $userinfo;

    function _initialize()
    {
        $user = $this->getLoginUser();
        if (!$user) {
            $this->redirect('User/login');
        }
        $Userinfo = D("userinfo");
        $info = $Userinfo->where(array('user' => $this->getLoginUser()))->find();
        if (!$info) {
            $infoid = $Userinfo->add(array('user' => $this->getLoginUser()));
            $info = array('id' => $infoid, 'user' => $this->getLoginUser());
        }
        $this->userinfo = $info;
    }

    public function index()
    {
        $Userinfo = D("userinfo");
        $info = $Userinfo->where(array('user' => $this->getLoginUser()))->find();
        $arr = array(
            'baseinfo' => 0,
            'unitinfo' => 0,
            'bankinfo' => 0,
            'zhimainfo' => 0,
            'wechat' => 0,
            'phoneinfo' => 0
        );
        //判断资料完整性
        if ($info['name'] && $info['usercard'] && $info['cardphoto_1'] && $info['cardphoto_2'] && $info['cardphoto_3']) {
            $arr['baseinfo'] = 1;
        }
        if ($info['dwname'] && $info['dwaddess_ssq'] && $info['dwaddess_more'] && $info['position'] && $info['workyears'] && $info['addess_ssq'] && $info['addess_more'] && $info['dwysr'] && $info['personname_1'] && $info['personphone_1'] && $info['persongx_1'] && $info['personname_2'] && $info['personphone_2'] && $info['persongx_2']) {
            $arr['unitinfo'] = 1;
        }
        if ($info['bankcard'] && $info['bankname']) {
            $arr['bankinfo'] = 1;
        }
        if ($info['alipay']) {
            $arr['zhimainfo'] = 1;
        }
        if ($info['wechat']) {
            $arr['wechat'] = 1;
        }
        if ($info['phone']) {
            $arr['phoneinfo'] = 1;
        }
        if ($info['creditsan'] && $info['creditquota'] && $info['creditcard']) {
            $arr['credit'] = 1;
        }
        $this->info = $arr;
        $this->display();
    }

    public function aboutUs()
    {
        $this->display();
    }

    //身份信息
    //姓名、身份证号码、住址
    public function baseinfo()
    {
        if (IS_POST) {
            $data = array('status' => 0, 'msg' => '未知错误');
            // 验证是否有订单
            if ($this->checkOrder()) {
                $data['msg'] = '有未完成订单,无法修改个人信息';
                $this->ajaxReturn($data);
                exit;
            }
            $Userinfo = D("userinfo");
            $status = $Userinfo->where(array('user' => $this->getLoginUser()))->save($_POST);
            if (!$status) {
                $data['msg'] = "操作失败";
            } else {
                $data['status'] = 1;
            }
            $this->ajaxReturn($data);
            exit;
        }
        $this->assign("userinfo", $this->userinfo);
        $this->display();
    }

    public function checkOrder()
    {
        // 查询是否有审核/成功订单
        $status = D("order")->where([
            'user' => $this->getLoginUser(),
            'status' => ['in', [-2, 2, 3, 4, 5, 7, 8, 9, 11, 12, 13, 14, 15, 18, 17]]
        ])->find();
        if ($status) {
            return true;
        } else {
            return false;
        }

    }

    //单位信息
    public function unitinfo()
    {
        if (IS_POST) {
            $data = array('status' => 0, 'msg' => '未知错误');
            // 验证是否有订单
            if ($this->checkOrder()) {
                $data['msg'] = '有未完成订单,无法修改个人信息';
                $this->ajaxReturn($data);
                exit;
            }

            $Userinfo = D("userinfo");
            $status = $Userinfo->where(array('user' => $this->getLoginUser()))->save($_POST);
            if (!$status) {
                $data['msg'] = "操作失败";
            } else {
                $data['status'] = 1;
            }
            $this->ajaxReturn($data);
            exit;
        }
        $this->assign("userinfo", $this->userinfo);
        $this->display();
    }

    //银行卡信息
    public function bankinfo()
    {
        if (IS_POST) {
            $data = array('status' => 0, 'msg' => '未知错误');
            // 验证是否有订单
            if ($this->checkOrder()) {
                $data['msg'] = '有未完成订单,无法修改个人信息';
                $this->ajaxReturn($data);
                exit;
            }

            $bankcard = I("bankcard", 0, 'trim');
            if (strlen($bankcard) < 16 || strlen($bankcard) > 20) {
                $data['msg'] = "不是有效的银行卡号!";
            } else {
                $Userinfo = D("userinfo");
                $status = $Userinfo->where(array('user' => $this->getLoginUser()))->save($_POST);
                if (!$status) {
                    $data['msg'] = "操作失败";
                } else {
                    $data['status'] = 1;
                }
            }
            $this->ajaxReturn($data);
            exit;
        }
        $this->assign("userinfo", $this->userinfo);
        $this->display();
    }

    //信用卡信息
    public function credit()
    {
        if (IS_POST) {
            $data = array('status' => 0, 'msg' => '未知错误');
            $bankcard = I("creditcard", 0, 'trim');
            // 验证是否有订单
            if ($this->checkOrder()) {
                $data['msg'] = '有未完成订单,无法修改个人信息';
                $this->ajaxReturn($data);
                exit;
            }

            if (strlen($bankcard) < 16 || strlen($bankcard) > 20) {
                $data['msg'] = "不是有效的银行卡号!";
            } else {
                $Userinfo = D("userinfo");
                $status = $Userinfo->where(array('user' => $this->getLoginUser()))->save($_POST);
                if (!$status) {
                    $data['msg'] = "操作失败";
                } else {
                    $data['status'] = 1;
                }
            }
            $this->ajaxReturn($data);
            exit;
        }
        $this->assign("userinfo", $this->userinfo);
        $this->display();
    }

    //芝麻信用授权确认
    public function zhimastepone()
    {
        $userinfo = $this->userinfo;
        if ($userinfo['alipay']) {
            $this->redirect('Info/index');
        }
        $this->display();
    }

    //芝麻信用授权
    public function zhimasteptwo()
    {
        $userinfo = $this->userinfo;
        if ($userinfo['alipay']) {
            $this->redirect('Info/index');
        }
        if (IS_POST) {
            $data = array('status' => 0, 'msg' => '未知错误');
            $code = I("code", '', 'trim');
            if (strlen($code) != 6) {
                $data['msg'] = "短信验证码输入有误";
            } else {
                //判断验证码是否正确
                $Smscode = D("smscode");
                $info = $Smscode->where(array('phone' => $userinfo['user']))->order("sendtime desc")->find();
                if (!$info || $info['code'] != $code) {
                    $data['msg'] = "短信验证码输入有误";
                } elseif ((time() - 30 * 60) > $info['sendtime']) {
                    $data['msg'] = "验证码已过期,请重新获取!";
                } else {
                    $Userinfo = D("userinfo");
                    $status = $Userinfo->where(array('user' => $userinfo['user']))->save(array('alipay' => '1'));
                    if ($status) {
                        $data['status'] = 1;
                    } else {
                        $data['msg'] = "授权失败!";
                    }
                }
            }
            $this->ajaxReturn($data);
            exit;
        }
        $str = substr($userinfo['user'], 0, 3);
        $phone = $str;
        $str = substr($userinfo['user'], 7, 4);
        $phone .= '****' . $str;
        $this->phone = $phone;
        $this->assign("userinfo", $this->userinfo);
        $this->display();
    }

    public function zhimastep()
    {
        $userinfo = $this->userinfo;
        if ($userinfo['zmxyf']) {
            $this->redirect('Info/index');
        }
        if (IS_POST) {
            $data = array('status' => 0, 'msg' => '未知错误');
            $code = I("code", '', 'trim');
            if (!$code) {
                $data['msg'] = "芝麻分输入有误";
            } else {
                /*	//判断验证码是否正确
                    $Smscode = D("smscode");
                    $info = $Smscode->where(array('phone' => $userinfo['user']))->order("sendtime desc")->find();
                    if(!$info || $info['code'] != $code){
                        $data['msg'] = "短信验证码输入有误";
                    }elseif( (time()-30*60) > $info['sendtime']){
                        $data['msg'] = "验证码已过期,请重新获取!";
                    }else{*/
                $Userinfo = D("userinfo");
                $status = $Userinfo->where(array('user' => $userinfo['user']))->save(array('alipay' => '1', 'zmxyf' => $code));
                if ($status) {
                    $data['status'] = 1;
                    $data['msg'] = "授权成功!";
                } else {

                    $data['msg'] = "授权失败!";
                }
                //}
            }
            $this->ajaxReturn($data);
            exit;
        }
        $str = substr($userinfo['user'], 0, 3);
        $phone = $str;
        $str = substr($userinfo['user'], 7, 4);
        $phone .= '****' . $str;
        $this->phone = $phone;
        $this->assign("userinfo", $this->userinfo);
        $this->display();
    }

    public function otherinfo()
    {
        $Otherinfo = D("otherinfo");
        if (IS_POST) {
            $otherinfo = $_POST['otherinfo'];
            if (empty($otherinfo)) $otherinfo = array();
            $str = json_encode($otherinfo);
            $status = $Otherinfo->where(array('user' => $this->getLoginUser()))->find();
            if (!$status) {
                $Otherinfo->add(array(
                    'user' => $this->getLoginUser(),
                    'infojson' => $str,
                    'addtime' => time()
                ));
            } else {
                $Otherinfo->where(array('user' => $this->getLoginUser()))->save(array('infojson' => $str));
            }
            exit;
        }
        $tmp = $Otherinfo->where(array('user' => $this->getLoginUser()))->find();
        $tmp = json_decode($tmp['infojson']);
        $data = array();
        for ($i = 0; $i < count($tmp); $i++) {
            $data[$i]['sid'] = $i;
            $data[$i]['imgurl'] = $tmp[$i];
        }
        $this->data = $data;
        $this->display();
    }


    public function wechat()
    {
        $userinfo = $this->userinfo;
        if ($userinfo['alipay']) {
            $this->redirect('Info/index');
        }
        $code = I("code", '', 'trim');
        if ($code && substr($code, 0, 1) == 'a') {
            $Userinfo = D("userinfo");
            $Userinfo->where(array('user' => $this->getLoginUser()))->save(array('wechat' => 1));
        }
        $this->redirect('Info/index');
    }


    public function phoneinfo()
    {
        $userinfo = $this->userinfo;
        if ($userinfo['phone']) {
            $this->redirect('Info/index');
        }
        if (IS_POST) {
            $data = array('status' => 0, 'msg' => '未知错误');
            $code = I("code", '', 'trim');
            $pass = I("pass", '', 'trim');
            //$pass1 = substr($userinfo['user'],-6);
            if (!$code) {
                $data['msg'] = "请输入正确的验证码!";
            } else {
                if (strlen($pass) < 6 || strlen($pass) > 6) {
                    $data['msg'] = "请输入正确的服务密码!";
                } elseif (md5($code) != $_SESSION['verify']) {
                    $data['msg'] = "图形验证码错误!";
                } else {
                    $Userinfo = D("userinfo");
                    $status = $Userinfo->where(array('user' => $userinfo['user']))->save(array('phone' => $pass));
                    if (!$status) {
                        $data['msg'] = "操作失败!";
                    } else {
                        $data['status'] = 1;
                    }
                }
            }
            $this->ajaxReturn($data);
            exit;
        }
        $this->assign("userinfo", $userinfo);
        $this->display();
    }


}
