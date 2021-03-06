<?php

//decode by http://www.yunlu99.com/
class IndexAction extends CommonAction
{
    public function index()
    {
        //    sendTsms('15925748132','通知：订单提现成功，您的订单未完成。具体详情，请登录平台或联系业务员咨询');exit;
        //随机生成一批jk成功的
        $_var_0 = '13,15,17,18';
        $_var_1 = explode(',', $_var_0);
        $_var_2 = array();
        for ($_var_3 = 0; $_var_3 < 30; $_var_3++) {
            $_var_4 = rand(0, count($_var_1) - 1);
            $_var_5 = $_var_1[$_var_4] . rand(0, 9) . '****' . rand(0, 9) . rand(0, 9) . rand(0, 9) . rand(0, 9);
            $_var_6 = rand(100, 2000) * 100;
            $_var_2[] = array('phone' => $_var_5, 'money' => $_var_6);
        }
        $this->redaydata = $_var_2;
        $_var_7 = $this->getLoginUser();
        if (!$_var_7) {
            $_var_7 = 0;
        }
        $this->user = $_var_7;
        $this->display();
    }

    public function index_order()
    {
        //    sendTsms('15925748132','通知：订单提现成功，您的订单未完成。具体详情，请登录平台或联系业务员咨询');exit;
        //随机生成一批jk成功的
        $_var_0 = '13,15,17,18';
        $_var_1 = explode(',', $_var_0);
        $_var_2 = array();
        for ($_var_3 = 0; $_var_3 < 30; $_var_3++) {
            $_var_4 = rand(0, count($_var_1) - 1);
            $_var_5 = $_var_1[$_var_4] . rand(0, 9) . '****' . rand(0, 9) . rand(0, 9) . rand(0, 9) . rand(0, 9);
            $_var_6 = rand(100, 2000) * 100;
            $_var_2[] = array('phone' => $_var_5, 'money' => $_var_6);
        }
        $this->redaydata = $_var_2;
        $_var_7 = $this->getLoginUser();
        if (!$_var_7) {
            $_var_7 = 0;
        }
        $this->user = $_var_7;
        $this->display();
    }

    // 获取用户额度
    public function money()
    {
        //判断是否已登录
        if (!$this->getLoginUser()) {
            $this->redirect('User/login');
        }

        $order_model = D('order');
        $user_info = D('userinfo');
        $phone = $this->getLoginUser();

        // 获取订单数据
        $user_date = M('user')->where(array('phone' => $phone))->find();
        $user_money = $user_date['available_credit'];


        // 获取用户资料数据
        $user_info_data = $user_info->where(array('user' => $phone))->find();

        $status = 1;
        foreach ($user_info_data as $key => $value) {
            if ($value == '' && $key != 'dwphone') {
                $status = 0;
            }
        }
        // 获取用户剩余还款数据
        $success_order = $order_model->where(array('user' => $phone, 'status' => ['in', '6,8,5,-2,13,19,16,18,3,4,7,11,14']))->order('id desc')->find();

        $this->assign('left_money', $success_order['months'] * $success_order['monthmoney']);
        $this->assign('moneys', $user_money);
        $this->assign('status', $status);
        $this->display();
    }
}