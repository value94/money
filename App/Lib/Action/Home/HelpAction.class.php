<?php
class HelpAction extends CommonAction{
	
	public function index(){
		$Article = D("article");
		$Cat = D("cat");
		$where['id'] = array('not in',array('12','13'));
		$catlist = $Cat->where($where)->order("sort Desc")->select();
		//每个分类筛选3条文章
		$arr = array();
		for($i=0;$i<count($catlist);$i++){
			$tmparr = array();
			$tmparr = $Article->where(array('cid' => $catlist[$i]['id']))
							 ->order("sort Desc")
							 ->limit(3)
							 ->select();
			$arr[] = array(
				'catname' => $catlist[$i]['name'],
				'arts'	  => $tmparr,
				'id'	  => $catlist[$i]['id'],
				'img'	  => $catlist[$i]['thumbnail']
			);
		}
		$qq = C('cfg_kefuqq');
		$kefudh = C('cfg_kefudh');
		$this->assign('kefudh',$kefudh);
		$this->assign('qq',$qq);
		$this->article = $arr;
		$this->display();
	}
	
	
}
