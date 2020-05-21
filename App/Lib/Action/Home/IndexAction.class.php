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
	public function money()
	{
		//判断是否已登录
		if (!$this->getLoginUser()) {
			$this->redirect('User/login');
		}
		$_var_8 = D('order');
		$_var_9 = D('userinfo');
		$_var_10 = I('get.id');
		if ($_var_10) {
			$_var_11 = $_var_8->where(array('id' => $_var_10))->find();
			$this->assign('ids', $_var_10);
		} else {
			$_var_11 = $_var_8->where(array('user' => $this->getLoginUser()))->order('id desc')->find();
		}
		$_var_12 = '0.00';
		$_var_13 = $_var_9->where(array('user' => $this->getLoginUser()))->find();
		if ($_var_11['money'] && $_var_11['status'] == 12) {
			$_var_12 = $_var_11['money'] + $_var_11['qb'];
		}
		$_var_14 = 1;
		foreach ($_var_13 as $_var_15 => $_var_16) {
			if ($_var_16 == '' && $_var_15 != 'dwphone') {
				$_var_14 = 0;
			}
		}
		$this->assign('moneys', $_var_12);
		$this->assign('status', $_var_14);
		$this->display();
	}
}