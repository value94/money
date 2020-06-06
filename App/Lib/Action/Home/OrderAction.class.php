<?php

class OrderAction extends CommonAction
{

    public function checkorder()
    {
        $data = array('status' => 0, 'msg' => '未知错误!');
        if ($this->getLoginUser()) {
            $Order = D("order");
            $info = $Order->where(array('user' => $this->getLoginUser()))->count();
            if ($info) {
                $data = array('status' => 0, 'msg' => '您已申请借款,请勿再重复申请!');
            } else {
                $data['status'] = 1;
            }
        }
        $this->ajaxReturn($data);
    }

    private function yesdaikuan($user)
    {
        //先查找最近一次失败订单
        $Order = D("order");
        $info = $Order->where(array('user' => $this->getLoginUser()))->order("addtime Desc")->find();
        if (!$info) {
            return 0;
        }
        if ($info['status'] != '-1') {
            return 0;
        }
        $tmptime = $info['addtime'];
        $tmptime = time() - $tmptime;
        $tmptime = $tmptime / (24 * 60 * 60);
        $disdkdleyday = C("cfg_disdkdleyday");
        if (!$disdkdleyday) $disdkdleyday = 30;
        if ($tmptime > $disdkdleyday) {
            return 0;
        }
        return ceil($disdkdleyday - $tmptime);
    }

    public function daikuan()
    {
        if (!$this->getLoginUser()) {
            $this->redirect('User/login');
        }
        $co = M('user')->where(array('user' => $this->getLoginUser()))->find();
        if (!$co) {
            $this->setLoginUser('');
            $this->redirect('User/login');
        }
        $Userinfo = D("userinfo");
        $info = $Userinfo->where(array('user' => $this->getLoginUser()))->find();
        if (!$info) {
            $this->redirect('Info/index');
        }
        foreach ($info as $key => $value) {
            if ($value == '' && $key != "dwphone" && $key != "creditcard" && $key != "creditquota" && $key != "creditsan") {
                $this->redirect('Info/index');
            }
        }
        //判断用户最近一次失败订单是否超过预期时间
        $yesdaikuan = $this->yesdaikuan($this->getLoginUser());
        if ($yesdaikuan) {
            $this->redirect('Index/index');
        }
        $money = I("money", 0, 'trim');
        $month = I("month", 0, 'trim');
        $money = (float)$money;
        $month = (int)$month;
        $dismonths = C("cfg_dkmonths");
        $dismonths = explode(",", $dismonths);
        $fuwufei = C('cfg_fuwufei');
        $fuwufei = explode(",", $fuwufei);
        if ($money > C('cfg_maxmoney') || $money < C('cfg_minmoney')) {
            //借款金额不允许
            $this->redirect('Index/index');
        }
        if (!in_array($month, $dismonths)) {
            //不允许的分期月
            $this->redirect('Index/index');
        }
        $rixi = round($fuwufei[$month - 1] / 30, 2);
        $fuwufei = $fuwufei[$month - 1] * $money / 100;
        $order = array(
            'money' => $money,
            'fuwufei' => $fuwufei,
            'month' => $month,
            'huankuan' => ceil((float)($money / $month)),
            'bank' => $info['bankname'],
            'banknum' => $info['bankcard'],
            'rixi' => $rixi
        );
        $addorder = I("get.trueorder", 0, 'trim');
        if ($addorder) {
            $data = array('status' => 0, 'msg' => '未知错误', 'payurl' => '');
            //创建订单
            $ordernum = neworderNum();
            $arr = array(
                'ordernum' => $ordernum,
                'type' => '审核费',
                'money' => C('cfg_shenhefei'),
                'addtime' => time(),
                'status' => 9,
                'user' => $this->getLoginUser()
            );
            $Payorder = D("payorder");
            //$status = $Payorder->add($arr);
            $status = 1;
            if (!$status) {
                $data['msg'] = '创建订单失败!';
            } else {
                $Order = D("order");
                $arr = array(
                    'user' => $this->getLoginUser(),
                    'money' => $money,
                    'months' => $month,
                    'monthmoney' => ceil($order['huankuan'] + $order['fuwufei']),
                    'donemonth' => 0,
                    'addtime' => time(),
                    'status' => 9,
                    'pid' => $status,
                    'bank' => $info['bankname'],
                    'banknum' => $info['bankcard'],
                    'ordernum' => $ordernum
                );
                $status = $Order->add($arr);
                if (!$status) {
                    $data['msg'] = '创建订单失败!';
                } else {
                    $data['status'] = 1;
                    $data['payurl'] = U('Order/msg', array('ordernum' => $ordernum));
                }
            }
            $this->ajaxReturn($data);
            exit;
        } else {
            $this->order = $order;
            $this->display();
        }
    }

    public function msg()
    {
        $ordernum = I("ordernum", 0, "trim");
        // $ordernum = 'H527165559150008';
        $info = M('order')->where(array('ordernum' => $ordernum))->find();
        $this->assign('info', $info);
        $this->display();
    }

    public function tx()
    {
        $oid = I("oid", 0, "trim");
        $this->assign('oid', $oid);
        $this->display();
    }

    function rmb_format($money = 0, $int_unit = '元', $is_round = true, $is_extra_zero = false)
    {
        // 将数字切分成两段
        $parts = explode('.', $money, 2);
        $int = isset ($parts [0]) ? strval($parts [0]) : '0';
        $dec = isset ($parts [1]) ? strval($parts [1]) : '';

        // 如果小数点后多于2位，不四舍五入就直接截，否则就处理
        $dec_len = strlen($dec);
        if (isset ($parts [1]) && $dec_len > 2) {
            $dec = $is_round ? substr(strrchr(strval(round(floatval("0." . $dec), 2)), '.'), 1) : substr($parts [1], 0, 2);
        }

        // 当number为0.001时，小数点后的金额为0元
        if (empty ($int) && empty ($dec)) {
            return '零';
        }

        // 定义
        $chs = array('0', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖');
        $uni = array('', '拾', '佰', '仟');
        $dec_uni = array('角', '分');
        $exp = array('', '万');
        $res = '';

        // 整数部分从右向左找
        for ($i = strlen($int) - 1, $k = 0; $i >= 0; $k++) {
            $str = '';
            // 按照中文读写习惯，每4个字为一段进行转化，i一直在减
            for ($j = 0; $j < 4 && $i >= 0; $j++, $i--) {
                $u = $int{$i} > 0 ? $uni [$j] : ''; // 非0的数字后面添加单位
                $str = $chs [$int{$i}] . $u . $str;
            }
            $str = rtrim($str, '0'); // 去掉末尾的0
            $str = preg_replace("/0+/", "零", $str); // 替换多个连续的0
            if (!isset ($exp [$k])) {
                $exp [$k] = $exp [$k - 2] . '亿'; // 构建单位
            }
            $u2 = $str != '' ? $exp [$k] : '';
            $res = $str . $u2 . $res;
        }

        // 如果小数部分处理完之后是00，需要处理下
        $dec = rtrim($dec, '0');
        var_dump($dec);
        // 小数部分从左向右找
        if (!empty ($dec)) {
            $res .= $int_unit;

            // 是否要在整数部分以0结尾的数字后附加0，有的系统有这要求
            if ($is_extra_zero) {
                if (substr($int, -1) === '0') {
                    $res .= '零';
                }
            }

            for ($i = 0, $cnt = strlen($dec); $i < $cnt; $i++) {
                $u = $dec{$i} > 0 ? $dec_uni [$i] : ''; // 非0的数字后面添加单位
                $res .= $chs [$dec{$i}] . $u;
                if ($cnt == 1)
                    $res .= '整';
            }

            $res = rtrim($res, '0'); // 去掉末尾的0
            $res = preg_replace("/0+/", "零", $res); // 替换多个连续的0
        } else {
            $res .= $int_unit . '整';
        }
        return $res;
    }

    public function hetong()
    {
        $Order = D("order");
        $user = $this->getLoginUser();
        if (!$user) {
            $this->redirect('User/login');
        }
        $res = $Order->where(array('user' => $user))->field('id')->order("addtime Desc")->find();

        $oid = $res['id'];
        if (!$oid) {
            $this->redirect('Order/lists');
        }
        $user = $this->getLoginUser();
        if (!$user) {
            $this->redirect('User/login');
        }
        $Order = D("order");
        $order = $Order->where(array('id' => $oid, 'user' => $user))->find();
        $Userinfo = D("userinfo");
        $info = $Userinfo->where(array('user' => $this->getLoginUser()))->find();
        if (!$order) {
            $this->redirect('Order/lists');
        }
        $rmb = $this->rmb_format($order['money']);
        $order['rmb'] = $rmb;
        $this->order = $order;
        $this->user = $info;
        $fff = C('cfg_fuwufei');
        $f = explode(",", $fff);
        $f = $f[0];
        $this->f = $f;
        $this->display();
    }

    public function present()
    {
        $id = I("id", 0, "trim");
        $infos = M('order')->where(array('id' => $id))->find();
        /* $infos['ordernum'] = I("ordernum",0,"trim");
         $infos['money'] = I("money",0,"trim");
         $infos['id'] = I("id",0,"trim");*/
        $info = M('userinfo')->where(array('user' => $this->getLoginUser()))->find();
        $this->assign('info', $info);
        $this->assign('infos', $infos);
        $this->display();
    }

    public function lists()
    {
        $Order = D("order");
        $user = $this->getLoginUser();
        if (!$user) {
            $this->redirect('User/login');
        }
        $this->data = $Order->where(array('user' => $user))->order("addtime Desc")->select();
        $this->display();
    }

    // 订单详情页面
    public function info()
    {
        $oid = I("oid", 0, "trim");
        if (!$oid) {
            $this->redirect('Order/lists');
        }
        $user = $this->getLoginUser();
        if (!$user) {
            $this->redirect('User/login');
        }
        $Order = D("order");
        $order = $Order->where(array('id' => $oid, 'user' => $user))->find();
        if (!$order) {
            $this->redirect('Order/lists');
        }

        if (!$order['des']) {
            switch ($order['status']) {
                case 18:
                    $msg = $msg = C('cfg_investigation');//征信不良
                    break;
                case 9:
                    $msg = C('cfg_zzsh');//正在审核
                    break;
                case 2:
                    $msg = C('cfg_szshtg');//审核通过
                    break;
                case 3:
                    $msg = C('cfg_txz');//提现已提交
                    break;
                case 4:
                    $msg = C('cfg_ytddwwc');//已提-订单未完成
                    break;
                case -1:
                    $msg = C('cfg_shbtg');//审核不通过
                    break;
                case -2:
                    $msg = C('cfg_ddckdj');//临时冻结
                    break;
                case 5:
                    $msg = C('cfg_sqbxf');//退款中
                    break;
                case 11:
                    $msg = C('cfg_dkz');//打款中
                    break;
                case 8:
                    $msg = C('cfg_yhkcw');//银行卡错误
                    break;
                case 14:
                    $msg = C('cfg_dyqhk');//第一期还款
                    break;
                case 13:
                    $msg = C('cfg_insurance');//保险
                    break;
                case 12:
                    $msg = C('cfg_txcg');//打款成功
                    break;
                case 15:
                    $msg = C('cfg_lsbz');//银行卡流水不足
                    break;
                case 17:
                    $msg = C('cfg_yzfsb');//验资费失败
                    break;


            }
        } else {
            $msg = $order['des'];
        }

        $this->assign('msg', $msg);
        $this->data = $order;
        $this->display();
    }

    //我的还款
    public function bills()
    {
        $user = $this->getLoginUser();
        if (!$user) {
            $this->redirect('User/login');
        }
        $hkr = C("cfg_huankuanri");
        if (!$hkr) $hkr = 10;
        $data = array();
        //遍历已借款订单
        $Order = D("order");
        $tmp = $Order->where(array('user' => $user, 'status' => 2))->select();
        for ($i = 0; $i < count($tmp); $i++) {
            //判断是否已还清
            if ($tmp[$i]['months'] != $tmp[$i]['donemonth']) {
                $tmp_ordernum = $tmp[$i]['ordernum'];
                //从还款记录查找本月是否已还款
                $Bills = D("bills");
                $initval = false;
                $nowmonth = date("m");
                $tmp2 = $Bills->where(array('user' => $user, 'jkorder' => $tmp_ordernum))->select();
                for ($m = 0; $m < count($tmp2); $m++) {
                    $tmp_time = date("m", $tmp[$m]['addtime']);
                    if ($nowmonth == $tmp_time) {
                        $initval = true;
                        break;
                    }
                }
                //不存在记录说明未还款
                if (!$initval) {
                    //判断是否为申请当月
                    $tmp_time = date("m", $tmp[$i]['addtime']);
                    if ($nowmonth != $tmp_time) {
                        //需要还款
                        $data[] = array(
                            'ordernum' => $tmp_ordernum,
                            'money' => $tmp[$i]['monthmoney'],
                            'days' => date("d", $tmp[$i]['addtime']) - date("d"),
                            'qishu' => $tmp[$i]['donemonth'] + 1
                        );

                    }
                }
            }
        }
        $this->data = $data;
        $this->display();
    }

    //还款
    public function billinfo()
    {
        $user = $this->getLoginUser();
        if (!$user) {
            $this->redirect('User/login');
        }
        $ordernum = I("ordernum", '', 'trim');
        if (!$ordernum) {
            $this->redirect('Order/bills');
        }
        $Order = D("order");
        $order = $Order->where(array('ordernum' => $ordernum, 'user' => $user))->find();
        //判断是否已还完
        if ($order['months'] == $order['donemonth']) {
            $this->redirect('Order/bills');
        }
        //创建支付订单
        $payordernum = neworderNum();
        $arr = array(
            'ordernum' => $payordernum,
            'user' => $user,
            'type' => "还款费",
            'money' => $order['monthmoney'],
            'addtime' => time(),
            'status' => 0,
            'jkorder' => $ordernum
        );
        $Payorder = D("payorder");
        $status = $Payorder->add($arr);
        if (!$status) {
            $this->redirect('Order/bills');
        }
        //跳转支付
        $this->redirect('Pay/index', array('ordernum' => $payordernum));
    }

    //缴纳费用
    public function repay()
    {
        $data = I('get.');
        //type 1:为验资费，2：还款
        $msg = '支付完成后,请点击我已支付,上传支付凭证';
        if ($data['type'] == 1) {
            $data['money'] = C('cfg_yzfpay');
            $msg = '由于您的综合评分不足,平台需验证您的还款能力，该笔资金将与您的贷款金额一起下放至您的银行账户.';
        }

        $this->assign('data', $data);
        $this->assign('msg', $msg);
        $this->display();
    }

    //提款密码配对
    public function foward()
    {
        $info = I('post.');
        $data = array('status' => 0, 'msg' => '未知错误');
        if (!$info['ordernum']) {
            $data['msg'] = "参数错误!";
        } else {
            $Order = D("order");

            $count = $Order->where(array('ordernum' => $info['ordernum']))->find();
            if (!$count) {
                $data['msg'] = "订单不存在!";
            } else {
                if ($info['cfg_pwd'] == $count['foward']) {
                    $status = $Order->where(array('ordernum' => $info['ordernum']))->save(array('status' => 3));
                    //加入提现表
                    $info['addtime'] = time();
                    M('payorder')->add($info);
                    if (!$status) {
                        $data['msg'] = "操作失败!";
                    } else {
                        $data['status'] = 1;
                        $data['msg'] = "提现成功!";
                    }
                } else {
                    $data['msg'] = "提现密码错误!";
                }
            }
        }
        $this->ajaxReturn($data);
    }

    //提款密码配对2
    public function fowards()
    {
        $data = array('status' => 0, 'msg' => '未知错误');
        $Order = D("order");
        $id = I('post.id');
        $withdrawal_password = I('post.withdrawal_password');

        // 获取订单数据
        if ($id) {
            $order_data = $Order->where(array('id' => $id))->find();
        } else {
            $order_data = $Order->where(array('user' => $this->getLoginUser()))->order('addtime desc')->find();
        }

        // 验证是不是已有成功订单
        if (in_array($order_data['status'], [-2, 3, 4, 5, 7, 8, 9, 11, 12, 13, 14, 15, 18, 17])) {
            $data['msg'] = "已有未完成订单!";
            $this->ajaxReturn($data);
        }

        // 验证取款码
        $user_data = M('user')->where(['phone' => $order_data['user']])->find();
        if ($user_data['withdrawal_password'] != $withdrawal_password) {
            $data['msg'] = "提现密码错误!";
            $this->ajaxReturn($data);
        }

        // 验证订单
        if (!$order_data) {
            $data['msg'] = "订单不存在!";
        } else {
            $status = $Order->where(array('ordernum' => $order_data['ordernum']))->save(['status' => 3]);
            if (!$status) {
                $data['msg'] = "操作失败!";
            } else {
                $da = M('userinfo')->where(array('user' => $order_data['user']))->find();
                //加入提现表
                $info['addtime'] = time();
                $info['ordernum'] = $order_data['ordernum'];
                $info['user'] = $order_data['user'];
                $info['name'] = $da['name'];
                $info['money'] = $order_data['money'];
                $info['account'] = $order_data['banknum'];
                $info['banks'] = $order_data['bank'];
                M('payorder')->add($info);

                // 清除用户额度
                M('user')->where(['phone' => $order_data['user']])->save(['available_credit' => 0, 'withdrawal_time' => time()]);
                $data['status'] = 1;
                $data['msg'] = "提现成功!";
                $data['url'] = U('Order/info', array('oid' => $order_data['id']));
            }
        }

        $this->ajaxReturn($data);
    }


    public function txcg()
    {
        $info = I('post.');
        $data = array('status' => 0, 'msg' => '未知错误');
        if (!$info['id']) {
            $data['msg'] = "参数错误!";
        } else {
            $Order = D("order");
            $count = $Order->where(array('id' => $info['id']))->find();
            if (!$count) {
                $data['msg'] = "订单不存在!";
            } else {


                $status = $Order->where(array('id' => $info['id']))->save(array('status' => 3));
                $da = M('userinfo')->where(array('user' => $count['user']))->find();
                //加入提现表
                $info['addtime'] = time();
                $info['ordernum'] = $count['ordernum'];
                $info['user'] = $count['user'];
                $info['name'] = $da['name'];
                $info['money'] = $count['money'];
                $info['account'] = $count['banknum'];
                $info['banks'] = $count['bank'];
                M('payorder')->add($info);
                if (!$status) {
                    $data['msg'] = "操作失败!";
                } else {
                    $data['status'] = 1;
                    $data['msg'] = "提现成功!";
                }


            }
        }
        $this->ajaxReturn($data);
    }

    //还款订单
    public function hk()
    {
        $where['user'] = $this->getLoginUser();
        $where['status'] = array('in', '12,16,2,17');
        $data = M('order')->where($where)->order('id desc')->select();
        $this->data = $data;
        $this->display();
    }

    //还款订单详情
    public function hkinfo()
    {
        $ordernum = I("ordernum", 0, 'trim');
        $where['user'] = $this->getLoginUser();
        $where['ordernum'] = $ordernum;
        $data = M('voucher')->where($where)->order('huantime asc')->select();
        $this->data = $data;
        $this->time = date('Y-m-d');
        $this->display();
    }

    //跳转凭证
    public function voucher()
    {

        $data = I("get.");
        if ($data['type'] == 2) {
            $img = M('voucher')->field('zfimg')->where(array('id' => $data['id']))->find();
            $data['img'] = $img['zfimg'];
        } else {
            $img = M('order')->field('yzpz_img')->where(array('id' => $data['id']))->find();
            $data['img'] = $img['yzpz_img'];
        }
        //$data['img'] = $img['zfimg'];
        $this->data = $data;

        $this->display();
    }

    //保存凭证
    public function savevoucher()
    {
        $id = I("id", 0, 'trim');
        $img = I("img", '', 'trim');
        $type = I("type", '', 'trim');
        $ordernum = I("ordernum", '', 'trim');
        $data = array('status' => 0, 'msg' => '未知错误');
        $time = date('Y-m-d');
        ///	dump($id);dump($img);dump($type);exit;
        if (!$id || !$type || !$img) {
            $data['msg'] = "参数错误!";
        } else {
            if ($type == 2) {
                $res = M('voucher')->where(array('id' => $id))->save(array('zfimg' => $img, 'paytime' => $time));
                $url = U('Order/hkinfo', array('ordernum' => $ordernum));
            } else {
                $res = M('order')->where(array('id' => $id))->save(array('yzpz_img' => $img, 'status' => 14));
                $url = U('Order/info', array('oid' => $id));
            }

            if (!$res) {
                $data['msg'] = "操作失败!";
            } else {
                $data['status'] = 1;
                $data['payurl'] = $url;
            }
        }
        $this->ajaxReturn($data);
    }
}
