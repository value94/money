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
        $id = I('get.id');

        // 获取用户数据
        if ($id) {
            $order_data = $order_model->where(array('id' => $id))->find();
            $this->assign('ids', $id);
        } else {
            $order_data = $order_model->where(array('user' => $this->getLoginUser()))->order('id desc')->find();
        }
        $user_money = '0.00';

        // 获取用户资料数据
        $user_info_data = $user_info->where(array('user' => $this->getLoginUser()))->find();
        if ($order_data['money'] && $order_data['status'] == 2) {
            $user_money = $order_data['money'] + $order_data['qb'];
        }

        $status = 1;
        foreach ($user_info_data as $key => $value) {
            if ($value == '' && $key != 'dwphone') {
                $status = 0;
            }
        }
        // 获取用户剩余还款数据
        $success_order = $order_model->where(array('user' => $this->getLoginUser(), 'status' => 12))->order('id desc')->find();

        $this->assign('left_money', $success_order['months'] * $success_order['monthmoney']);
        $this->assign('moneys', $user_money);
        $this->assign('status', $status);
        $this->display();
    }
}