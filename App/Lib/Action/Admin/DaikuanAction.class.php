<?php

class DaikuanAction extends CommonAction
{
    //借款列表
    public function index()
    {
        $this->title = "借款列表";
        $keyword = I("keyword", '', 'trim');
        $status = I("status", 99, 'trim');
        $ordernum = I("ordernum", '', 'trim');
        $start_time = I("start_time", '', 'trim');
        $end_time = I("end_time", '', 'trim');

        $this->keyword = $keyword;
        $this->status = $status;
        $this->ordernum = $ordernum;
        $where = array();
        // 用户权限控制
        $use_data = getAdminData();
        if ($use_data['role'] != 1) {
            $where['admin_id'] = $use_data['id'];
        }
        // 搜索
        if ($keyword) {
            $where['user'] = $keyword;
        }
        if ($status != 99) {
            $where['status'] = $status;
        }
        if ($ordernum) {
            $where['ordernum'] = $ordernum;
        }
        if ($start_time) {
            $where['addtime'] = ['gt', strtotime($start_time)];
            $this->start_time = $start_time;

        }
        if ($end_time) {
            $where['addtime'] = ['lt', strtotime($end_time)];
            $this->end_time = $end_time;

        }

        //$where['status'] = array('notin','12,16');
        $Order = D("order");
        import('ORG.Util.Page');
        $count = $Order->where($where)->count();
        $Page = new Page($count, 7);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();
        $list = $Order->where($where)->order('addtime Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $da = M('userinfo')->getField('user,name');
        $this->data = $da;
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }

    //待审核列表
    public function notApproved()
    {
        $this->title = "借款列表";
        $keyword = I("keyword", '', 'trim');
        $status = I("status", 99, 'trim');
        $ordernum = I("ordernum", '', 'trim');
        $start_time = I("start_time", '', 'trim');
        $end_time = I("end_time", '', 'trim');


        $where = array();
        // 用户权限控制
        $use_data = getAdminData();
        if ($use_data['role'] != 1) {
            $where['admin_id'] = $use_data['id'];
        }
        // 搜索
        if ($keyword) {
            $where['user'] = $keyword;
        }
        if ($status != 99) {
            $where['status'] = $status;
        } else {
            $status = 9;
            $where['status'] = $status;
        }

        if ($ordernum) {
            $where['ordernum'] = $ordernum;
        }
        if ($start_time) {
            $where['addtime'] = ['gt', strtotime($start_time)];
            $this->start_time = $start_time;

        }
        if ($end_time) {
            $where['addtime'] = ['lt', strtotime($end_time)];
            $this->end_time = $end_time;

        }

        $this->keyword = $keyword;
        $this->status = $status;
        $this->ordernum = $ordernum;
        //$where['status'] = array('notin','12,16');
        $Order = D("order");
        import('ORG.Util.Page');
        $count = $Order->where($where)->count();
        $Page = new Page($count, 7);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();
        $list = $Order->where($where)->order('addtime Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $da = M('userinfo')->getField('user,name');
        $this->data = $da;
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }

    //已审核列表
    public function adopt()
    {
        $this->title = "借款列表";
        $keyword = I("keyword", '', 'trim');
        $status = I("status", 99, 'trim');
        $ordernum = I("ordernum", '', 'trim');
        $start_time = I("start_time", '', 'trim');
        $end_time = I("end_time", '', 'trim');


        $where = array();
        // 用户权限控制
        $use_data = getAdminData();
        if ($use_data['role'] != 1) {
            $where['admin_id'] = $use_data['id'];
        }
        // 搜索
        if ($keyword) {
            $where['user'] = $keyword;
        }
        if ($status != 99) {
            $where['status'] = $status;
        } else {
            $status = 2;
            $where['status'] = $status;
        }
        if ($ordernum) {
            $where['ordernum'] = $ordernum;
        }
        if ($start_time) {
            $where['addtime'] = ['gt', strtotime($start_time)];
            $this->start_time = $start_time;

        }
        if ($end_time) {
            $where['addtime'] = ['lt', strtotime($end_time)];
            $this->end_time = $end_time;

        }

        $this->keyword = $keyword;
        $this->status = $status;
        $this->ordernum = $ordernum;

        //$where['status'] = array('notin','12,16');
        $Order = D("order");
        import('ORG.Util.Page');
        $count = $Order->where($where)->count();
        $Page = new Page($count, 7);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();
        $list = $Order->where($where)->order('addtime Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $da = M('userinfo')->getField('user,name');
        $this->data = $da;
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }

    //审核失败列表
    public function fail()
    {
        $this->title = "借款列表";
        $keyword = I("keyword", '', 'trim');
        $status = I("status", 99, 'trim');
        $ordernum = I("ordernum", '', 'trim');
        $start_time = I("start_time", '', 'trim');
        $end_time = I("end_time", '', 'trim');


        $where = array();
        // 用户权限控制
        $use_data = getAdminData();
        if ($use_data['role'] != 1) {
            $where['admin_id'] = $use_data['id'];
        }
        // 搜索
        if ($keyword) {
            $where['user'] = $keyword;
        }
        if ($status != 99) {
            $where['status'] = $status;
        } else {
            $status = -1;
            $where['status'] = $status;
        }
        if ($ordernum) {
            $where['ordernum'] = $ordernum;
        }
        if ($start_time) {
            $where['addtime'] = ['gt', strtotime($start_time)];
            $this->start_time = $start_time;

        }
        if ($end_time) {
            $where['addtime'] = ['lt', strtotime($end_time)];
            $this->end_time = $end_time;

        }

        $this->keyword = $keyword;
        $this->status = $status;
        $this->ordernum = $ordernum;
        //$where['status'] = array('notin','12,16');
        $Order = D("order");
        import('ORG.Util.Page');
        $count = $Order->where($where)->count();
        $Page = new Page($count, 7);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();
        $list = $Order->where($where)->order('addtime Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $da = M('userinfo')->getField('user,name');
        $this->data = $da;
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }

    // 转账截图
    public function transferImg()
    {
        $id = I("id", '', 'trim');
        // 查询订单数据
        $Order = D("order");
        import('ORG.Util.Page');
        $order = $Order->where(['id' => $id])->find();
        $da = M('userinfo')->where(['user' => $order['user']])->find();
        $this->data = $da;
        $this->order = $order;
        // 显示到页面上
        $this->role = getAdminData()['role'];
        $this->display();
    }

    // 保单截图
    public function policyImg()
    {
        $id = I("id", '', 'trim');
        // 查询订单数据
        // 显示到页面上
        $this->role = getAdminData()['role'];
        $this->display();
    }

    //订单列表
    public function orders()
    {
        $this->title = "订单列表";
        $keyword = I("keyword", '', 'trim');
        $status = I("status", 99, 'trim');
        $ordernum = I("ordernum", '', 'trim');
        $start_time = I("start_time", '', 'trim');
        $end_time = I("end_time", '', 'trim');

        $this->keyword = $keyword;
        $this->status = $status;
        $this->ordernum = $ordernum;
        $where = array();
        // 用户权限控制
        $use_data = getAdminData();
        if ($use_data['role'] != 1) {
            $where['admin_id'] = $use_data['id'];
        }
        // 搜索
        if ($keyword) {
            $where['user'] = $keyword;
        }
        if ($status != 99) {
            $where['status'] = $status;
        }
        if ($ordernum) {
            $where['ordernum'] = $ordernum;
        }
        if ($start_time) {
            $where['addtime'] = ['gt', strtotime($start_time)];
            $this->start_time = $start_time;

        }
        if ($end_time) {
            $where['addtime'] = ['lt', strtotime($end_time)];
            $this->end_time = $end_time;

        }

        //$where['status'] = array('notin','12,16');
        $Order = D("order");
        import('ORG.Util.Page');
        $count = $Order->where($where)->count();
        $Page = new Page($count, 7);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();
        $list = $Order->where($where)->order('addtime Desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $da = M('userinfo')->getField('user,name');
        $this->data = $da;
        $this->list = $list;
        $this->page = $show;
        $this->role = getAdminData()['role'];
        $this->display();
    }

    //修改钱包
    public function changeqb()
    {
        $data = array('status' => 0, 'msg' => '未知错误');
        $id = I('post.id', 0, 'trim');
        $pass = I("post.pass", '', 'trim');
        if (!$id || !$pass) {
            $data['msg'] = "参数有误!";
        } else {
            $order = D("order");

            $status = $order->where(array('id' => $id))->save(array('qb' => $pass));
            if (!$status) {
                $data['msg'] = "操作失败!";
            } else {
                $data['status'] = 1;
            }
        }
        $this->ajaxReturn($data);
    }

    //修改订单状态
    public function changestatus()
    {
        $id = I("id", 0, 'trim');
        $status = I("status", '', 'trim');
        $money = I("money", '', 'trim');
        $months = I("months", '', 'trim');
        $des = I("des", '', 'trim');

        $data = array('status' => 0, 'msg' => '未知错误');
        if (!$id || $status == '') {
            $data['msg'] = "参数错误!";
        } else {
            $Order = D("order");
            // 验证订单
            $order_data = $Order->where(array('id' => $id))->find();
            if (!$order_data) {
                $data['msg'] = "订单不存在!";
            } else {
                // 修改订单状态
                $res = $Order->where(array('id' => $id))->save(['status' => $status, 'edtime' => time(), 'des' => $des]);

                // 生成分期订单
                if ($status == 12) {
                    $d = M('voucher')->where(array('ordernum' => $order_data['ordernum']))->count();
                    if (!$d) {
                        // 增加额度
                        M('user')->where(['phone' => $order_data['user']])->setInc('available_credit', $order_data['money']);
                        $time = date('Y-m-d H:i:s');
                        $voucher = [
                            'user' => $order_data['user'],
                            'ordernum' => $order_data['ordernum'],
                            'money' => $order_data['money'],
                            'months' => $order_data['months'],
                            //	'ofnumber'=>1,//当前期数
                            'monthmoney' => $order_data['monthmoney'],
                            'addtime' => $time,
                            //'huantime'=>date('Y-m-d H:i:s',strtotime('+1month')),
                        ];
                        for ($i = 1; $i <= $order_data['months']; $i++) {
                            $voucher['ofnumber'] = $i;
                            $voucher['huantime'] = date('Y-m-d', strtotime("$time +$i month"));
                            $dataList[] = $voucher;
                        }
                        M('voucher')->addALL($dataList);
                    }
                }

                if (!$res) {
                    $data['msg'] = "操作失败!";
                } else {
                    // 发送短信
                    $data['status'] = 1;
                    $data['msg'] = "保存成功";
                    $ars = array('2', '-1', '4', '-2', '5', '12', '8', '18');
                    $sms = 0;

                    if (in_array($status, $ars)) {
                        $sms = 1;
                    }
                    //发送短信
                    if ($sms == 1 && C('cfg_auto_send_sms')) {
                        $phone = $order_data['user'];
                        $user_info = M('userinfo')->where(['user' => $phone])->find();
                        /*-2:临时冻结
                        -1:审核不通过
                        2 :审核通过
                        3 :提现已提交,打款处理中
                        4 :首期
                        5 :退款中
                        7 :打款中
                        8 :银行卡异常
                        9 :正在审核
                        11:提现处理
                        12:到帐成功
                        13:保险
                        14:第一期还款
                        15:提现失败
                        16:利息
                        17:核实失败
                        18:征信不良
                        19:押金-->*/
                        switch ($status) {
                            /*case -2:
                                $msg = '尊敬的 ' . $user_info['name'] . ' 先生/女士您好，您的订单已被凍結，请联系在线客服及时处理！';//审核不通过
                                break;*/
                            case -1:
                                $msg = '通知：非常抱歉，您的订单未通过，请联系在线客服处理';//审核不通过
                                break;
                            case 2:
                                $msg = '尊敬的 ' . $user_info['name'] . ' 先生/女士您好，您的申请已经通过了，请您登陆APP查看！';
                                break;
                            case 3:
                                $msg = '通知：您的订单号 ：' . $order_data["ordernum"] . ' 已提交！具体详情，请登录平台查看';
                                break;
                            case 5:
                                $msg = '通知：您的订单正在办理退费手续，请您耐心等待7到15个工作日。';//审核不通过
                                break;
                            case 6:
                                $msg = '通知：您的订单已经打款成功，请注意查收。';//审核不通过
                                break;
                            case 8:
                                $msg = '尊敬的 ' . $user_info['name'] . ' 先生/女士您好，您的申请信息填写有误，请联系在线客服及时处理！';//审核不通过
                                break;
                                /*case 9:
                                    $msg = '通知：您的订单号 ：' . $order_data["ordernum"] . ' 正在审核！具体详情，请登录平台查看';*/
                                break;
                            case 12:
                                $msg = '尊敬的 ' . $user_info['name'] . ' 先生/女士您好，您的订单到账钱包，已经自动转入APP账户，请打开APP进行提取';//打款成功
                                break;
                            case 13:
                                $msg = '通知：您的订单保险已缴纳，具体详情，请登录平台查看';//打款成功
                                break;
                            /*case 16:
                                $msg = '通知：您的订单利息已出，具体详情，请登录平台查看';//打款成功
                                break;*/
                            case 18:
                                $msg = '通知：您的信息没有通过，请及时联系经理办理相关手续';//征信
                                break;
                            case 19:
                                $msg = '通知：非常抱歉，您的订单需要押金，请联系客服处理';//审核不通过
                                break;
                            default:
                                $msg = '非常抱歉，您的订单暂时无法完成！具体原因，请登陆平台查看';//通用无法完成
                        }
                        $result = sendSms($phone, $msg);
                        if ($result === true) {
                            $this->success('发送成功!');
                        } else {
                            $data['status'] = 0;
                            $data['msg'] = $result;
                        }
                    }
                }
            }
        }
        $this->ajaxReturn($data);
    }

    //还款列表
    public function voucher()
    {
        $voucher_model = M('voucher');
        import('ORG.Util.Page');

        // 订单数
        $ordernum = I('post.keyword');

        if ($ordernum) {
            $where['ordernum'] = $ordernum;
        }

        $count = $voucher_model->where($where)->count();
        $Page = new Page($count, 25);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();

        $list = $voucher_model->where($where)->order('huantime asc')->group('ordernum')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $da = M('userinfo')->getField('user,name');

        $this->data = $da;
        $this->ordernum = $ordernum;
        $this->list = $list;
        $this->page = $show;
        $this->time = date('Y-m-d');

        $this->role = getAdminData()['role'];
        $this->display();
    }

    //还款详情列表
    public function vodetail()
    {
        $Order = M('voucher');
        import('ORG.Util.Page');
        $ordernum = I('get.ordernum');
        $type = I('get.type');
        $where['ordernum'] = $ordernum;
        $count = $Order->where($where)->count();
        $Page = new Page($count, 25);
        $Page->setConfig('theme', '共%totalRow%条记录 | 第 %nowPage% / %totalPage% 页 %upPage%  %linkPage%  %downPage%');
        $show = $Page->show();
        $list = $Order->where($where)->order('huantime asc')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        $da = M('userinfo')->getField('user,name');
        $this->data = $da;
        $this->list = $list;
        $this->page = $show;
        $this->type = $type;
        $this->time = date('Y-m-d');
        $this->role = getAdminData()['role'];
        $this->display();


    }

    //修改支付状态
    public function changepaystatus()
    {
        $id = I("id", 0, 'trim');
        $status = I("status", '', 'trim');
        $type = I("type", '', 'trim');
        $ordernum = I("ordernum", '', 'trim');
        $data = array('status' => 0, 'msg' => '未知错误');
        if (!$id || $status == '') {
            $data['msg'] = "参数错误!";
        } else {
            $count = M('voucher')->where(array('id' => $id))->find();
            if (!$count) {
                $data['msg'] = "还款订单不存在!";
            } else {
                if ($type == 2) {
                    $res = M('order')->where(array('ordernum' => $ordernum))->save(array('status' => 16));
                }
                $res = M('voucher')->where(array('id' => $id))->save(array('status' => $status));
                if (!$res) {
                    $data['msg'] = "操作失败!";
                } else {
                    $data['status'] = 1;
                    $data['msg'] = "设置成功!";
                }
            }
        }
        $this->ajaxReturn($data);
    }

    //设置提现密码
    public function savefoward()
    {
        $id = I("id", 0, 'trim');
        $foward = I("foward", '', 'trim');
        $data = array('status' => 0, 'msg' => '未知错误');
        if (!$id || $foward == '') {
            $data['msg'] = "参数错误!";
        } else {
            $Order = D("order");
            $count = $Order->where(array('id' => $id))->count();
            if (!$count) {
                $data['msg'] = "订单不存在!";
            } else {
                $status = $Order->where(array('id' => $id))->save(array('foward' => $foward));
                if (!$status) {
                    $data['msg'] = "操作失败!";
                } else {
                    $data['status'] = 1;
                }
            }
        }
        $this->ajaxReturn($data);
    }

    // 修改钱包金额
    public function savemoney()
    {
        $id = I("id", 0, 'trim');
        $money = I("money", '', 'trim');
        $months = I("months", '', 'trim');

        $money = (float)$money;
        $months = (int)$months;
        $fuwufei = C('cfg_fuwufei');
        $fuwufei = explode(",", $fuwufei);

        $rixi = round($fuwufei[$months - 1] / 30, 2);
        $fuwufei = $fuwufei[$months - 1] * $money / 100;
        $huankuan = ceil((float)($money / $months));
        $monthmoney = ceil($huankuan + $fuwufei);
        $data = array('status' => 0, 'msg' => '未知错误');

        if (!$id || !$months || !$money) {
            $data['msg'] = "参数错误!";
        } elseif ($money > C('cfg_maxmoney') || $money < C('cfg_minmoney')) {
            $data['msg'] = "修改金额不允许!";
        } else {
            $Order = D("order");
            $count = $Order->where(array('id' => $id))->count();
            if (!$count) {
                $data['msg'] = "订单不存在!";
            } else {
                $status = $Order->where(array('id' => $id))->save(array('money' => $money, 'months' => $months, 'monthmoney' => $monthmoney));
                if (!$status) {
                    $data['msg'] = "操作失败!";
                } else {
                    $data['status'] = 1;
                }
            }
        }
        $this->ajaxReturn($data);
    }

    //修该用户卡号
    public function savebanks()
    {
        $user = I("id", 0, 'trim');
        $bank = I("bank", '', 'trim');
        $banknum = I("banknum", '', 'trim');

        $data = array('status' => 0, 'msg' => '未知错误');
        if (!$user || !$bank || !$banknum) {
            $data['msg'] = "参数错误!";
        } else {
            $Order = D("userinfo");
            if (strlen($user) > 8) {
                $count = $Order->where(array('user' => $user))->find();
            } else {
                $count = M('order')->where(array('id' => $user))->find();
                $user = $count['user'];
            }

            if (!$count) {
                $data['msg'] = "订单不存在!";
            } else {

                $status = $Order->where(array('user' => $user))->save(array('bankname' => $bank, 'bankcard' => $banknum));
                $where['user'] = $user;
                // $where['status'] = array('neq',12);
                M('order')->where($where)->save(array('is_bank' => 1, 'bank' => $bank, 'banknum' => $banknum));
                if (!$status) {
                    $data['msg'] = "操作失败!";
                } else {
                    $data['status'] = 1;
                }
            }
        }
        $this->ajaxReturn($data);
    }

    //删除订单
    public function del()
    {
        $this->title = '删除订单';
        $id = I('id', 0, 'trim');
        if (!$id) {
            $this->error("参数有误!");
        }
        $Order = D("order");
        $check_order = $Order->where(array('id' => $id))->find();

        $status = $Order->where(array('id' => $id))->delete();
        if (!$status) {
            $this->error("删除失败!");
        }
        // 添加日志
        $admin_data = getAdminData();
        $log_data = [
            'admin_id' => $admin_data['id'],
            'admin_name' => $admin_data['username'],
            'log_type' => 4,
            'log_data' => $check_order['user'] . '|' . $check_order['user'] . '|4',
            'add_time' => date('Y-m-d H:i:s')
        ];
        $logModel = new LogModel();
        $logModel->createByArray($log_data);

        $this->success("删除订单成功!");
    }

    //修该日期
    public function savedate()
    {
        $id = I("id", 0, 'trim');
        $huantime = I("huantime", '', 'trim');

        $data = array('status' => 0, 'msg' => '未知错误');
        if (!$id || !$huantime) {
            $data['msg'] = "参数错误!";
        } else {
            $voucher = D("voucher");
            $count = $voucher->where(array('id' => $id, 'huantime' => $huantime))->count();
            if ($count) {
                $data['msg'] = "还款日期不能重复!";
            } else {
                $status = $voucher->where(array('id' => $id))->save(array('huantime' => $huantime));
                if (!$status) {
                    $data['msg'] = "操作失败!";
                } else {
                    $data['status'] = 1;
                }
            }
        }
        $this->ajaxReturn($data);
    }


}
