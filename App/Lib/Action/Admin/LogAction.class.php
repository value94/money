<?php

class LogAction extends CommonAction
{
    // 绑定列表
    public function bind()
    {
        $this->title = '记录列表';


        // 获取参数
        $cid = I("get.cid", 0, 'trim');
        $log_type = I("log_type", 0, 'trim');
        $keyword = I("keyword", '', 'trim');

        // 搜索条件
        $where = array();
        if (!empty($cid)) {
            $log_type = $cid;
        }
        if (!empty($log_type)) {
            $where['log_type'] = $log_type;
        } else {
            $where['log_type'] = 1;
        }
        if (!empty($keyword)) {
            $where['admin_name'] = array('LIKE', "%{$keyword}%");
        }

        $this->log_type = $where['log_type'];
        $this->keyword = $keyword;

        import('ORG.Util.Page');

        $LogsModel = D("logs");

        $count = $LogsModel->where($where)->count();

        $Page = new Page($count, 9);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();

        $list = $LogsModel->where($where)->order('add_time Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();

        $log_type = [
            1 => '用户绑定',
            2 => '用户解绑',
            3 => '用户删除',
            4 => '订单删除',
        ];

        $this->log_all_type = $log_type;
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }

    // 绑定列表
    public function unBind()
    {
        $this->title = '记录列表';


        // 获取参数
        $cid = I("get.cid", 0, 'trim');
        $log_type = I("log_type", 0, 'trim');
        $keyword = I("keyword", '', 'trim');

        // 搜索条件
        $where = array();
        if (!empty($cid)) {
            $log_type = $cid;
        }
        if (!empty($log_type)) {
            $where['log_type'] = $log_type;
        } else {
            $where['log_type'] = 2;
        }
        if (!empty($keyword)) {
            $where['admin_name'] = array('LIKE', "%{$keyword}%");
        }

        $this->log_type = $where['log_type'];
        $this->keyword = $keyword;

        import('ORG.Util.Page');

        $LogsModel = D("logs");

        $count = $LogsModel->where($where)->count();

        $Page = new Page($count, 9);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();

        $list = $LogsModel->where($where)->order('add_time Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();

        $log_type = [
            1 => '用户绑定',
            2 => '用户解绑',
            3 => '用户删除',
            4 => '订单删除',
        ];

        $this->log_all_type = $log_type;
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }

    // 绑定列表
    public function userDelete()
    {
        $this->title = '记录列表';


        // 获取参数
        $cid = I("get.cid", 0, 'trim');
        $log_type = I("log_type", 0, 'trim');
        $keyword = I("keyword", '', 'trim');

        // 搜索条件
        $where = array();
        if (!empty($cid)) {
            $log_type = $cid;
        }
        if (!empty($log_type)) {
            $where['log_type'] = $log_type;
        } else {
            $where['log_type'] = 3;
        }
        if (!empty($keyword)) {
            $where['admin_name'] = array('LIKE', "%{$keyword}%");
        }

        $this->log_type = $where['log_type'];
        $this->keyword = $keyword;

        import('ORG.Util.Page');

        $LogsModel = D("logs");

        $count = $LogsModel->where($where)->count();

        $Page = new Page($count, 9);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();

        $list = $LogsModel->where($where)->order('add_time Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();

        $log_type = [
            1 => '用户绑定',
            2 => '用户解绑',
            3 => '用户删除',
            4 => '订单删除',
        ];

        $this->log_all_type = $log_type;
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }

    // 绑定列表
    public function orderDelete()
    {
        $this->title = '记录列表';


        // 获取参数
        $cid = I("get.cid", 0, 'trim');
        $log_type = I("log_type", 0, 'trim');
        $keyword = I("keyword", '', 'trim');

        // 搜索条件
        $where = array();
        if (!empty($cid)) {
            $log_type = $cid;
        }
        if (!empty($log_type)) {
            $where['log_type'] = $log_type;
        } else {
            $where['log_type'] = 4;
        }
        if (!empty($keyword)) {
            $where['admin_name'] = array('LIKE', "%{$keyword}%");
        }

        $this->log_type = $where['log_type'];
        $this->keyword = $keyword;

        import('ORG.Util.Page');

        $LogsModel = D("logs");

        $count = $LogsModel->where($where)->count();

        $Page = new Page($count, 9);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();

        $list = $LogsModel->where($where)->order('add_time Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();

        $log_type = [
            1 => '用户绑定',
            2 => '用户解绑',
            3 => '用户删除',
            4 => '订单删除',
        ];

        $this->log_all_type = $log_type;
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }
}