<?php

//decode by http://www.yunlu99.com/
error_reporting(E_ALL ^ E_NOTICE);
?>﻿<?php 
class PayorderAction extends CommonAction
{
	//订单列表
	public function index()
	{
		/*$this->title = '提现列表';
		$_var_0 = I('keyword', '', 'trim');
		$this->keyword = $_var_0;
		$_var_1 = array();
		if ($_var_0) {
			$_var_1['ordernum'] = $_var_0;
		}
		$_var_2 = D('payorder');
		import('ORG.Util.Page');
		$_var_3 = $_var_2->where($_var_1)->count();
		$_var_4 = new Page($_var_3, 10);
		$_var_4->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
		$_var_5 = $_var_4->show();
		$_var_6 = $_var_2->where($_var_1)->order('addtime Desc')->limit($_var_4->firstRow . ',' . $_var_4->listRows)->select();
		$this->list = $_var_6;
		$this->page = $_var_5;*/
		$this->role = getAdminData()['role'];
		$this->display();
	}
	//删除订单
	public function del()
	{
		$this->title = '删除订单';
		$_var_7 = I('id', 0, 'trim');
		if (!$_var_7) {
			$this->error('参数有误!');
		}
		$_var_8 = D('payorder');
		$_var_9 = $_var_8->where(array('id' => $_var_7))->delete();
		if (!$_var_9) {
			$this->error('删除失败!');
		}
		$this->success('删除订单成功!');
	}
}
