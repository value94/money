<?php

/**
 * Created by PhpStorm.
 * User: voke
 * Date: 2020/5/16
 * Time: 9:36
 */
class SpreadAction extends CommonAction
{
    //用户列表
    public function index(){
        $this->title = "引流通道统计";
        /*$keyword = I("extension",'','trim');
        $this->keyword = $keyword;
        if($keyword){
            $where['phone'] = array('like',"%{$keyword}%");
        }*/
        $where = array();
        $User = D("spread");
        import('ORG.Util.Page');
        $count = $User->where($where)->count();
        $Page  = new Page($count,10);
        $Page->setConfig('theme','共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show  = $Page->show();
        $list = $User->where($where)->order('addtime Desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];$this->display();
    }
}