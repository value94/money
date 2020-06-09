/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : money

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-06-09 16:09:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) DEFAULT NULL COMMENT '客服id',
  `username` varchar(12) NOT NULL,
  `password` varchar(35) NOT NULL,
  `marks` varchar(128) DEFAULT NULL COMMENT '备注',
  `gid` int(11) NOT NULL DEFAULT '1',
  `id_code` varchar(32) DEFAULT NULL COMMENT '用户推广码',
  `role` tinyint(2) DEFAULT '2' COMMENT '用户权限',
  `addtime` int(11) NOT NULL,
  `lastlogin` int(11) NOT NULL,
  `work_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '上班状态',
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '28', 'admin', 'f11ec7022bbe2bf69670d1a181646f0e', '1111', '1', 'mtciily6', '1', '1590476422', '1591529800', '1', '1');
INSERT INTO `admin` VALUES ('2', '29', 'kefu2', '22e1bc525432de9878534afd9c0a0dcb', '', '1', 'weezvjzm', '2', '1590477235', '1590557807', '1', '1');
INSERT INTO `admin` VALUES ('3', '22', 'kefu', '57cea37edd561f91185ee4044f528e75', '', '1', 'gehn5xk2', '2', '1590475576', '1591516694', '1', '1');

-- ----------------------------
-- Table structure for admin_login
-- ----------------------------
DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `logintime` int(11) NOT NULL DEFAULT '0',
  `loginip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_login
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `cont` longtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '99',
  `thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('17', '8', '申请人需要具备什么条件？', '0', '', '', '答：\r\n							年满18周岁的年轻人，均可以进行办理。感谢您的关注。', '99', '');
INSERT INTO `article` VALUES ('18', '8', '为什么我有额度，不能借款？', '0', '', '', '答：\r\n								APP显示的额度是您可以使用的最大额度，但是提交申请之后是需要经过审核的，是否通过以审核结果为准。感谢您的关注。', '99', '');
INSERT INTO `article` VALUES ('19', '8', '我能申请多少金额？分多少期？', '0', '', '', '答：\r\n								我们是服务于年轻人的短期信用借款。最少可申请10000元，我们根据大数据为用户个性化匹配最高可申请金额。支持多种分期期数，满足不同借款需求，您可以根据自己的需求调整申请金额和分期期数。感谢您的关注。', '99', '');
INSERT INTO `article` VALUES ('20', '8', '订单提交后可以修改吗？怎么取消订单？', '0', '\r', '', '答：\r\n								申请金额、分期期数等订单信息一经提交无法修改，请您确认订单并核实无误后进行下单。在申请结果出具之前，如需取消订单，请您联系在线客服申请取消。感谢您的关注。', '99', '');
INSERT INTO `article` VALUES ('21', '8', '芝麻信用认证时，提示支付宝账号不存在？', '0', '', '', '答：\r\n								当您填写的姓名、身份证号跟您支付宝绑定的姓名、身份证号不一致时，会出现该提示，请您确保您的姓名身份证号与支付宝保持一致。感谢您的关注。', '99', '');
INSERT INTO `article` VALUES ('22', '9', '为什么没有接到审核电话？', '0', '\r', '', '答：订单审核时间一般为1-12小时，如遇节假日或申请人数过多，审核进度可能会有延迟。请您保持手机畅通，以便审核人员联系您。您也可以登录APP，进入“我的借款”查看审核进度。感谢您的关注。', '99', '');
INSERT INTO `article` VALUES ('23', '9', '为什么订单审核失败？', '0', '', '', '答：若您填写的个人资料不完整不真实、上传的照片模糊、有遮挡、综合评分不足等，均会导致失败。感谢您的关注。', '99', '');
INSERT INTO `article` VALUES ('24', '9', '为什么会审核失败？综合信用评分不足？', '0', '', null, '答：若您填写的个人资料不完整不真实、上传的照片模糊、有遮挡等均会导致审核失败。\r\n', '99', null);
INSERT INTO `article` VALUES ('25', '9', '审核时间有多久？怎么加快审核进度？', '0', '', '', '答：订单审核时间一般为1-12小时，如遇节假日或申请人数过多，审核进度可能会有延迟。请您保持手机畅通，以便审核人员联系您。您也可以登录APP，进入“我的借款”查看审核进度。\r\n', '99', '');
INSERT INTO `article` VALUES ('26', '10', '订单审核通过后，款项什么时候到账？', '0', '', '', '答：\r\n							订单审核通过后，预计工作日内最快2个小时打款到您绑定的银行卡中。届时会以短信形式通知您，请注意查收。感谢您的关注。\r\n', '99', '');
INSERT INTO `article` VALUES ('27', '10', '支持哪几家银行卡服务？	', '0', '\r', '', '答：\r\n								目前支持以下银行的储蓄卡：中国银行、农业银行、工商银行、建设银行、邮储银行、招商银行、民生银行、光大银行、兴业银行、中信银行、平安银行、浦发银行、华夏银行、广发银行。感谢您的关注。', '99', '');
INSERT INTO `article` VALUES ('28', '10', '绑定银行卡为什么会失败？', '0', '\r', '', '答：\r\n								请您确认绑定的银行卡为申请人本人所有，且银行卡的相关信息确认无误。若银行卡信息有误，请您联系相关银行进行核实。感谢您的关注。', '99', '');
INSERT INTO `article` VALUES ('29', '11', '我怎么进行还款？', '0', '', '', '答：我们将会在您的还款日自动从您绑定的银行卡中扣款，请您保证银行卡内余额充足、避免出现银行卡挂失、账户冻结、余额不足的情况。您也可以在每月的还款日前，登录APP，进入“个人中心-我的还款”，主动进行还款。\r\n若出现还款异常的情况，咨询客服解决。感谢您对【优悦贷】的关注。\r\n', '99', '');
INSERT INTO `article` VALUES ('30', '11', '没有及时还款会怎样？', '0', '\r', '', '答：若您发生逾期，从逾期首日起会按照合同收取当期应还款项的1%滞纳金作为处罚。同时，您的逾期记录将进入个人征信机构，影响您日后的个人信用记录。请您及时按期还款，感谢您的关注。', '99', '');
INSERT INTO `article` VALUES ('31', '11', '能提前还款么？', '0', '', '', '答：支持提前还款，请您登录APP，进入“个人中心-我的还款”进行还款。感谢您的关注。', '99', '');

-- ----------------------------
-- Table structure for bills
-- ----------------------------
DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `money` float NOT NULL DEFAULT '0',
  `ordernum` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bills
-- ----------------------------

-- ----------------------------
-- Table structure for block
-- ----------------------------
DROP TABLE IF EXISTS `block`;
CREATE TABLE `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cont` varchar(255) DEFAULT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of block
-- ----------------------------
INSERT INTO `block` VALUES ('4', '补充资料提示', '汽车行驶证， 房产证，工作证明、收入证明、社保、公积金', '1482310254');
INSERT INTO `block` VALUES ('5', '首页底部公司名', '好用的金融平台', '1482310419');
INSERT INTO `block` VALUES ('6', '客服电话', 'QQ联系', '1482310568');
INSERT INTO `block` VALUES ('7', '客服QQ', '66794315', '1482310582');
INSERT INTO `block` VALUES ('8', '客服页咨询说明', 'QQ咨询：9:00 - 18:00', '1482310612');
INSERT INTO `block` VALUES ('9', '必要资料说明', '只需3分钟完成资料验证，即可申请借款哦~', '1482310675');
INSERT INTO `block` VALUES ('10', '补充资料说明', '补充资料可增加审核通过几率', '1482310717');
INSERT INTO `block` VALUES ('11', '审核费用支付协议', '我同意支付审核费用,审核费用不退还.', '1482310952');
INSERT INTO `block` VALUES ('12', '协议1地址', 'http://baidu.com', '1482311345');
INSERT INTO `block` VALUES ('13', '协议2地址-借款协议', 'http://jinridai.am59.cn/xieyi.html', '1482311360');
INSERT INTO `block` VALUES ('14', '协议3地址', 'http://aq.qq.com', '1482311375');
INSERT INTO `block` VALUES ('15', '协议4地址', 'http://www.somnus.in', '1482351545');

-- ----------------------------
-- Table structure for cat
-- ----------------------------
DROP TABLE IF EXISTS `cat`;
CREATE TABLE `cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `addtime` int(11) NOT NULL,
  `pid` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT '0',
  `cont` longtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cat
-- ----------------------------
INSERT INTO `cat` VALUES ('8', '贷款申请', '贷款申请', '1529387793', '0', '1', '', '贷款申请', '贷款申请', '/Upload/image/20200604/20200604195831_70347.png');
INSERT INTO `cat` VALUES ('9', '审核相关', '审核相关', '1529387892', '0', '2', '', '审核相关', '审核相关', 'http://two.jinziyu.club/Upload/image/20191102/20191102232827_82536.png');
INSERT INTO `cat` VALUES ('10', '放款相关', '放款相关', '1529387912', '0', '3', '', '放款相关', '放款相关', 'http://two.jinziyu.club/Upload/image/20191102/20191102232836_54861.png');
INSERT INTO `cat` VALUES ('11', '还款相关', '还款相关', '1529387932', '0', '4', '', '还款相关', '还款相关', 'http://two.jinziyu.club/Upload/image/20191102/20191102232847_46462.png');

-- ----------------------------
-- Table structure for invitation
-- ----------------------------
DROP TABLE IF EXISTS `invitation`;
CREATE TABLE `invitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codes` varchar(255) NOT NULL COMMENT '邀请码',
  `user` varchar(255) NOT NULL COMMENT '业务员账号',
  `addtime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codes` (`codes`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='业务员邀请码推广表';

-- ----------------------------
-- Records of invitation
-- ----------------------------

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `admin_name` varchar(128) DEFAULT NULL COMMENT '管理员昵称',
  `log_data` varchar(255) DEFAULT NULL COMMENT '操作内容',
  `log_type` tinyint(2) DEFAULT NULL COMMENT '操作类型: 1/用户绑定 2/解绑 3/用户删除 4/订单删除',
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES ('1', '33', 'kefu2', '17752315386|17752315386|1', '1', '2020-05-17 10:55:48');
INSERT INTO `logs` VALUES ('2', '32', 'admin', '13257744517|13257744517|2', '2', '2020-05-17 11:52:17');
INSERT INTO `logs` VALUES ('3', '33', 'kefu', '13479628995|13479628995|2', '2', '2020-05-17 11:55:20');
INSERT INTO `logs` VALUES ('4', '33', 'kefu', '15918476606|15918476606|1', '3', '2020-05-17 11:56:27');
INSERT INTO `logs` VALUES ('5', '33', 'kefu', '15559763298|15559763298|2', '4', '2020-05-17 11:59:25');
INSERT INTO `logs` VALUES ('6', '33', 'kefu', '15918476606|15918476606|4', '4', '2020-05-17 12:14:42');
INSERT INTO `logs` VALUES ('7', '33', 'kefu', '17791797821|17791797821|1', '1', '2020-05-17 12:21:25');
INSERT INTO `logs` VALUES ('8', '32', 'admin', '13257744517|13257744517|2', '2', '2020-05-20 12:30:14');
INSERT INTO `logs` VALUES ('9', '32', 'admin', '18930872298|18930872298|2', '2', '2020-05-20 12:30:25');
INSERT INTO `logs` VALUES ('10', '33', 'kefu', '13257744517|13257744517|1', '1', '2020-05-20 12:52:18');
INSERT INTO `logs` VALUES ('11', '33', 'kefu', '13681794059|13681794059|1', '1', '2020-05-20 12:53:58');
INSERT INTO `logs` VALUES ('12', '33', 'kefu', '13257744517|13257744517|1', '1', '2020-05-20 12:55:19');
INSERT INTO `logs` VALUES ('13', '33', 'kefu', '13681794059|13681794059|1', '1', '2020-05-20 12:58:25');
INSERT INTO `logs` VALUES ('14', '33', 'kefu', '17791797821|17791797821|1', '1', '2020-05-20 12:58:28');
INSERT INTO `logs` VALUES ('15', '33', 'kefu', '15918476606|15918476606|1', '1', '2020-05-20 12:58:30');
INSERT INTO `logs` VALUES ('16', '33', 'kefu', '15126782331|15126782331|1', '1', '2020-05-20 12:58:32');
INSERT INTO `logs` VALUES ('17', '33', 'kefu', '13841354168|13841354168|1', '1', '2020-05-20 12:58:33');
INSERT INTO `logs` VALUES ('18', '42', 'kefu', '18359202476|18359202476|1', '1', '2020-05-26 14:46:50');
INSERT INTO `logs` VALUES ('19', '42', 'kefu', '18930872298|18930872298|1', '1', '2020-05-26 14:47:28');
INSERT INTO `logs` VALUES ('20', '32', 'admin', '18359202476|18359202476|2', '2', '2020-05-26 14:48:54');
INSERT INTO `logs` VALUES ('21', '32', 'admin', '13257744517|13257744517|2', '2', '2020-05-26 14:48:56');
INSERT INTO `logs` VALUES ('22', '32', 'admin', '18930872298|18930872298|2', '2', '2020-05-26 14:48:58');
INSERT INTO `logs` VALUES ('23', '32', 'admin', '13681794059|13681794059|2', '2', '2020-05-26 14:49:00');
INSERT INTO `logs` VALUES ('24', '32', 'admin', '15918476606|15918476606|2', '2', '2020-05-26 14:49:02');
INSERT INTO `logs` VALUES ('25', '32', 'admin', '17791797821|17791797821|2', '2', '2020-05-26 14:49:03');
INSERT INTO `logs` VALUES ('26', '32', 'admin', '15126782331|15126782331|2', '2', '2020-05-26 14:49:05');
INSERT INTO `logs` VALUES ('27', '32', 'admin', '13841354168|13841354168|2', '2', '2020-05-26 14:49:07');
INSERT INTO `logs` VALUES ('28', '42', 'kefu', '18359202476|18359202476|1', '1', '2020-05-26 14:49:51');
INSERT INTO `logs` VALUES ('29', '42', 'kefu', '13257744517|13257744517|1', '1', '2020-05-26 14:49:53');
INSERT INTO `logs` VALUES ('30', '42', 'kefu', '13681794059|13681794059|1', '1', '2020-05-26 14:49:56');
INSERT INTO `logs` VALUES ('31', '42', 'kefu', '15918476606|15918476606|1', '1', '2020-05-26 14:49:57');
INSERT INTO `logs` VALUES ('32', '44', 'kefu2', '18930872298|18930872298|1', '1', '2020-05-26 15:14:11');
INSERT INTO `logs` VALUES ('33', '44', 'kefu2', '13479628995|13479628995|1', '1', '2020-05-26 15:14:13');
INSERT INTO `logs` VALUES ('34', '43', 'admin', '13257744517|13257744517|2', '2', '2020-05-30 13:36:14');
INSERT INTO `logs` VALUES ('35', '43', 'admin', '15918476606|15918476606|2', '2', '2020-05-30 13:36:36');
INSERT INTO `logs` VALUES ('36', '43', 'admin', '13681794059|13681794059|2', '2', '2020-05-30 13:36:55');
INSERT INTO `logs` VALUES ('37', '43', 'admin', '13257744517|13257744517|3', '3', '2020-05-30 13:50:42');
INSERT INTO `logs` VALUES ('38', '43', 'admin', '18956501550|18956501550|4', '4', '2020-05-30 14:22:01');
INSERT INTO `logs` VALUES ('39', '42', 'kefu', '18569396549|18569396549|1', '1', '2020-06-03 13:20:03');
INSERT INTO `logs` VALUES ('40', '42', 'kefu', '18569396549|18569396549|1', '1', '2020-06-03 17:30:37');
INSERT INTO `logs` VALUES ('41', '42', 'kefu', '游客|游客|1', '1', '2020-06-07 15:30:44');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `admin_name` varchar(128) DEFAULT NULL,
  `money` float NOT NULL DEFAULT '0',
  `months` int(11) NOT NULL DEFAULT '0',
  `monthmoney` float NOT NULL,
  `donemonth` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '9' COMMENT '-2:临时冻结 -1:审核不通过 2 :审核通过 3 :提现已提交,打款处理中 4 :首期 5 :退款中 7 :打款中 8 :绑卡失败 9 :正在审核 11:提现处理 12:到帐成功 13:保险 14:第一期还款 15:提现失败 18:征信不良 17:核实失败',
  `pid` int(11) NOT NULL,
  `ordernum` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `fowardstatus` int(2) NOT NULL DEFAULT '0' COMMENT '1:已提交 0：未提交',
  `foward` varchar(255) NOT NULL DEFAULT '',
  `banknum` varchar(255) NOT NULL,
  `des` varchar(255) DEFAULT NULL COMMENT '描述',
  `yzpz_img` varchar(255) NOT NULL COMMENT '验资费凭证图片',
  `qb` int(11) NOT NULL DEFAULT '0',
  `is_bank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('9', '13227547578', null, null, '30000', '12', '2680', '0', '1577345772', '2', '1', 'IC26457728925031', '农业银行', '0', '', '6228480759796251677', null, '', '0', '0');
INSERT INTO `order` VALUES ('31', '15579161111', null, null, '50000', '12', '4467', '0', '1577785111', '12', '1', 'IC31851112189286', '浦发银行', '0', '', '49843200366487155', null, '', '0', '0');
INSERT INTO `order` VALUES ('8', '18031927965', null, null, '30000', '12', '2680', '0', '1577344187', '2', '1', 'IC26441873333460', '农业银行', '0', '', '6228480639120567073', null, '', '0', '0');
INSERT INTO `order` VALUES ('10', '15256233230', null, null, '90000', '12', '8040', '0', '1577421705', '9', '1', 'IC27217056421025', '工商银行', '0', '', '6222031302004206121', null, '', '0', '1');
INSERT INTO `order` VALUES ('11', '13222701199', null, null, '30000', '36', '1014', '0', '1577422326', '9', '1', 'IC27223262812508', '工商银行', '0', '', '6215581110003363498', null, '', '0', '0');
INSERT INTO `order` VALUES ('12', '15815709239', null, null, '50000', '12', '4467', '0', '1577427982', '9', '1', 'IC27279823655318', '招商银行', '0', '', '6214837605203987', null, '', '0', '0');
INSERT INTO `order` VALUES ('13', '13899409562', null, null, '30000', '36', '1014', '0', '1577429407', '9', '1', 'IC27294070974135', '农业银行', '0', '', '6228483008354592974', null, '', '0', '0');
INSERT INTO `order` VALUES ('15', '15089351761', null, null, '30000', '12', '2680', '0', '1577435145', '9', '1', 'IC27351457664513', '建设银行', '0', '', '6236683260003260450', null, '', '0', '0');
INSERT INTO `order` VALUES ('24', '15702933428', null, null, '30000', '24', '1430', '0', '1577604486', '9', '1', 'IC29044861297712', '建设银行', '0', '', '6217004220034689210', null, '', '0', '0');
INSERT INTO `order` VALUES ('25', '15021770972', null, null, '30000', '12', '2680', '0', '1577604493', '12', '1', 'IC29044933358656', '工商银行', '0', '', '6215581804005151543', null, '', '0', '0');
INSERT INTO `order` VALUES ('26', '13733608333', null, null, '50000', '24', '2384', '0', '1577608573', '12', '1', 'IC29085730262937', '邮储银行', '0', '', '6217995030015350786', null, '', '0', '0');
INSERT INTO `order` VALUES ('20', '18735543883', null, null, '30000', '12', '2680', '0', '1577507408', '9', '1', 'IC28074086891424', '浦发银行', '0', '', '6217923270360950', null, '', '0', '0');
INSERT INTO `order` VALUES ('21', '13833078840', null, null, '30000', '36', '1014', '0', '1577516186', '-1', '1', 'IC28161863505690', '农业银行', '0', '', '6228481268349189672', null, '', '0', '0');
INSERT INTO `order` VALUES ('27', '18569296287', null, null, '30000', '36', '1014', '0', '1577688110', '-2', '1', 'IC30881103248735', '建设银行', '0', '', '6217002920139319892', null, '', '0', '0');
INSERT INTO `order` VALUES ('29', '13613183210', null, null, '52000', '36', '1757', '0', '1577771369', '-1', '1', 'IC31713697199709', '建设银行', '0', '', '6217000160002835482', null, '', '0', '0');
INSERT INTO `order` VALUES ('30', '15830485640', null, null, '30000', '12', '2680', '0', '1577772387', '-1', '1', 'IC31723873405535', '工商银行', '0', '', '6212260407003672604', null, '', '0', '0');
INSERT INTO `order` VALUES ('32', '15195523807', null, null, '63000', '36', '2128', '0', '1577852057', '-2', '1', 'J101520570370348', '中国银行', '0', '', '6215678100040883008', null, '', '0', '0');
INSERT INTO `order` VALUES ('42', '13681794059', '42', null, '128000', '36', '4324', '0', '1578276647', '2', '1', 'J106766471376337', '建设银行', '0', '', '6217001180037804575', null, '', '0', '0');
INSERT INTO `order` VALUES ('35', '18359838207', null, null, '50000', '36', '1689', '0', '1577949175', '-2', '1', 'J102491756662151', '建设银行', '0', '', '6217001830028411893', null, '', '0', '0');
INSERT INTO `order` VALUES ('37', '18865186593', null, null, '30000', '36', '1014', '0', '1578018809', '-2', '1', 'J103188098565966', '工商银行', '0', '', '6212261712006157233', null, '', '0', '0');
INSERT INTO `order` VALUES ('49', '13257744517', '42', null, '21000', '12', '1876', '0', '1586247395', '12', '1', 'J407473951465638', '工商银行', '0', '', '887885', '', '', '10000', '1');
INSERT INTO `order` VALUES ('45', '17791797821', '33', null, '300000', '12', '26800', '0', '1578287981', '2', '1', 'J106879818853154', '工商银行', '0', '', '6216693600003336836', null, '', '0', '0');
INSERT INTO `order` VALUES ('47', '15706790550', null, null, '20000', '12', '1787', '0', '1578358828', '12', '1', 'J107588285769093', '中信银行', '0', '', '6217731302511544', null, '', '0', '0');
INSERT INTO `order` VALUES ('56', '18569396549', '42', 'kefu', '20000', '12', '1787', '0', '1591508930', '9', '1', 'J607089308822664', '工商银行', '0', '', '12312312312312312312', null, '', '0', '0');

-- ----------------------------
-- Table structure for otherinfo
-- ----------------------------
DROP TABLE IF EXISTS `otherinfo`;
CREATE TABLE `otherinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `infojson` varchar(255) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of otherinfo
-- ----------------------------
INSERT INTO `otherinfo` VALUES ('1', '18930632627', '[\"http:\\/\\/hld.qingman.wang\\/Upload\\/image\\/20191115\\/20191115145703_27716.jpg\"]', '1573799595');
INSERT INTO `otherinfo` VALUES ('2', '13680741130', '[]', '1573888131');
INSERT INTO `otherinfo` VALUES ('3', '15037676086', '[\"http:\\/\\/hld.qingman.wang\\/Upload\\/image\\/20191116\\/20191116195218_82959.png\"]', '1573905147');
INSERT INTO `otherinfo` VALUES ('4', '18631041969', '[]', '1573908763');
INSERT INTO `otherinfo` VALUES ('5', '18676677617', '[]', '1573967261');
INSERT INTO `otherinfo` VALUES ('6', '13722659301', '[]', '1573969334');
INSERT INTO `otherinfo` VALUES ('7', '18356417987', '[]', '1573985930');
INSERT INTO `otherinfo` VALUES ('8', '15826286888', '[]', '1574067878');
INSERT INTO `otherinfo` VALUES ('9', '15711421949', '[]', '1574133424');
INSERT INTO `otherinfo` VALUES ('13', '13227547578', '[]', '1577271952');
INSERT INTO `otherinfo` VALUES ('10', '13205690271', '[]', '1574149127');
INSERT INTO `otherinfo` VALUES ('11', '18152394825', '[]', '1574155593');
INSERT INTO `otherinfo` VALUES ('12', '18976133795', '[]', '1574167011');
INSERT INTO `otherinfo` VALUES ('14', '13733608333', '[]', '1577608547');
INSERT INTO `otherinfo` VALUES ('15', '18359838207', '[]', '1577949004');
INSERT INTO `otherinfo` VALUES ('16', '18865186593', '[\"http:\\/\\/hld.qingman.wang\\/Upload\\/image\\/20200102\\/20200102193137_12305.jpeg\"]', '1577964701');
INSERT INTO `otherinfo` VALUES ('17', '18518115260', '[\"http:\\/\\/hld.qingman.wang\\/Upload\\/image\\/20200107\\/20200107185746_69399.png\"]', '1578394669');

-- ----------------------------
-- Table structure for payorder
-- ----------------------------
DROP TABLE IF EXISTS `payorder`;
CREATE TABLE `payorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordernum` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `banks` varchar(255) NOT NULL COMMENT '提现银行',
  `cfg_pwd` int(11) NOT NULL COMMENT '授权码',
  `money` float NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `account` varchar(255) NOT NULL DEFAULT '0' COMMENT '收款账户',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='提现表';

-- ----------------------------
-- Records of payorder
-- ----------------------------
INSERT INTO `payorder` VALUES ('1', 'IC24849717800972', '16556896331', '刘锦', '工商银行', '0', '124000', '1577185269', '6217025238466612553');
INSERT INTO `payorder` VALUES ('2', 'IC24849717800972', '16556896331', '刘锦', '工商银行', '0', '124000', '1577185313', '6217025238466612553');
INSERT INTO `payorder` VALUES ('3', 'IC24849717800972', '16556896331', '刘锦', '工商银行', '0', '130000', '1577186453', '6217025238466612553');
INSERT INTO `payorder` VALUES ('4', 'IC25389139933632', '15579161111', '刘田', '工商银行', '0', '100000', '1577238991', '6192234529665325852');
INSERT INTO `payorder` VALUES ('5', 'IC25390878653255', '15579161111', '刘田', '工商银行', '0', '30000', '1577239738', '6192234529665325852');
INSERT INTO `payorder` VALUES ('6', 'IC25398304737685', '15579161111', '刘田', '工商银行', '0', '50000', '1577239952', '6192234529665325852');
INSERT INTO `payorder` VALUES ('7', 'IC25404021256708', '15579161111', '刘田', '工商银行', '0', '30000', '1577240938', '6192234529665325852');
INSERT INTO `payorder` VALUES ('8', 'IC25404021256708', '15579161111', '刘田', '工商银行', '0', '30000', '1577241851', '6192234529965325852');
INSERT INTO `payorder` VALUES ('9', 'IC25404021256708', '15579161111', '刘田', '工商银行', '0', '30000', '1577242275', '6192234529965325852');
INSERT INTO `payorder` VALUES ('10', 'J102327210428071', '18637179846', '王超', '交通银行', '0', '50000', '1577938718', '6222620620019409068');
INSERT INTO `payorder` VALUES ('11', 'J407473951465638', '13257744517', '孙嘉彬', '工商银行相对湿度', '0', '21000', '1586250808', '887885');
INSERT INTO `payorder` VALUES ('12', 'J602955315581098', '18569396549', '唐大帅', '工商银行', '0', '300000', '1591102054', '12312312312312312312');
INSERT INTO `payorder` VALUES ('13', 'J602049136583724', '18569396549', '唐大帅', '工商银行', '0', '300000', '1591338734', '12312312312312312312');
INSERT INTO `payorder` VALUES ('14', 'J602049136583724', '18569396549', '唐大帅', '工商银行', '0', '300000', '1591340058', '12312312312312312312');
INSERT INTO `payorder` VALUES ('15', 'J606337074556559', '18569396549', '唐大帅', '工商银行', '0', '20000', '1591433944', '12312312312312312312');
INSERT INTO `payorder` VALUES ('16', 'J606337074556559', '18569396549', '唐大帅', '工商银行', '0', '20000', '1591438646', '12312312312312312312');

-- ----------------------------
-- Table structure for richat_archives
-- ----------------------------
DROP TABLE IF EXISTS `richat_archives`;
CREATE TABLE `richat_archives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(155) NOT NULL,
  `url` varchar(155) NOT NULL,
  `keywords` varchar(155) DEFAULT '' COMMENT '文章关键词',
  `description` varchar(155) DEFAULT '' COMMENT '文章的描述',
  `typeid` int(5) NOT NULL DEFAULT '1' COMMENT '文章栏目id',
  `sort` int(3) NOT NULL DEFAULT '1' COMMENT '文章权重',
  `cnum` int(10) NOT NULL DEFAULT '2' COMMENT '文章点击次数',
  `writer` varchar(155) NOT NULL DEFAULT 'admin' COMMENT '文章作者',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of richat_archives
-- ----------------------------

-- ----------------------------
-- Table structure for richat_articleinfo
-- ----------------------------
DROP TABLE IF EXISTS `richat_articleinfo`;
CREATE TABLE `richat_articleinfo` (
  `aid` int(11) NOT NULL COMMENT '文章对应的id',
  `body` text NOT NULL,
  `typeid` int(5) NOT NULL DEFAULT '1' COMMENT '文章栏目id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of richat_articleinfo
-- ----------------------------

-- ----------------------------
-- Table structure for richat_category
-- ----------------------------
DROP TABLE IF EXISTS `richat_category`;
CREATE TABLE `richat_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) NOT NULL COMMENT '类别名称',
  `type` varchar(155) NOT NULL COMMENT '归属分类',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 启用 2 禁用',
  `typeid` int(11) NOT NULL COMMENT '父类id',
  PRIMARY KEY (`id`),
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of richat_category
-- ----------------------------

-- ----------------------------
-- Table structure for richat_chatgroup
-- ----------------------------
DROP TABLE IF EXISTS `richat_chatgroup`;
CREATE TABLE `richat_chatgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '群组id',
  `groupname` varchar(155) NOT NULL COMMENT '群组名称',
  `avatar` varchar(155) DEFAULT NULL COMMENT '群组头像',
  `owner_name` varchar(155) DEFAULT NULL COMMENT '群主名称',
  `owner_id` int(11) DEFAULT NULL COMMENT '群主id',
  `owner_avatar` varchar(155) DEFAULT NULL COMMENT '群主头像',
  `owner_sign` varchar(155) DEFAULT NULL COMMENT '群主签名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of richat_chatgroup
-- ----------------------------
INSERT INTO `richat_chatgroup` VALUES ('39', '外部群', '/Upload/LayChat/image/20200524/5eca0bc67b6c7.png', '马云', '2', 'http://tp4.sinaimg.cn/2145291155/180/5601307179/1', '让天下没有难写的代码');

-- ----------------------------
-- Table structure for richat_chatlog
-- ----------------------------
DROP TABLE IF EXISTS `richat_chatlog`;
CREATE TABLE `richat_chatlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromid` int(11) NOT NULL COMMENT '会话来源id',
  `fromname` varchar(155) NOT NULL DEFAULT '' COMMENT '消息来源用户名',
  `fromavatar` varchar(155) NOT NULL DEFAULT '' COMMENT '来源的用户头像',
  `toid` int(11) NOT NULL COMMENT '会话发送的id',
  `content` text NOT NULL COMMENT '发送的内容',
  `timeline` int(10) NOT NULL COMMENT '记录时间',
  `type` varchar(55) NOT NULL COMMENT '聊天类型',
  `needsend` tinyint(1) DEFAULT '0' COMMENT '0 不需要推送 1 需要推送',
  PRIMARY KEY (`id`),
  KEY `fromid` (`fromid`) USING BTREE,
  KEY `toid` (`toid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of richat_chatlog
-- ----------------------------
INSERT INTO `richat_chatlog` VALUES ('24', '32', '18359202475', '/Public/images/customer.jpg', '22', '1111', '1590479989', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('25', '22', 'kefu', '/Public/images/sj.png', '22', '1111', '1590502741', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('26', '22', 'kefu', '/Public/images/sj.png', '22', '2222', '1590502745', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('27', '29', 'kefu2', '/Public/images/sj.png', '22', '1111', '1590557816', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('28', '22', 'kefu', '/Public/images/sj.png', '29', '3333', '1590557889', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('29', '22', 'kefu', '/Public/images/sj.png', '29', '1111', '1590558104', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('30', '2134', '18569396549', '/Public/images/customer.jpg', '22', '1111', '1591165448', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('31', '22', 'kefu', '/Public/images/sj.png', '2134', '啥事啊', '1591165455', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('32', '2134', '18569396549', '/Public/images/customer.jpg', '22', '我要充钱', '1591165474', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('33', '2134', '18569396549', '/Public/images/customer.jpg', '22', '我要充钱', '1591165474', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('34', '2134', '18569396549', '/Public/images/customer.jpg', '22', '重启', '1591165484', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('35', '2134', '18569396549', '/Public/images/customer.jpg', '22', '重启', '1591165484', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('36', '2134', '18569396549', '/Public/images/customer.jpg', '22', '111', '1591165591', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('37', '2134', '18569396549', '/Public/images/customer.jpg', '22', '现在对么', '1591165602', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('38', '22', 'kefu', '/Public/images/sj.png', '2134', '对了', '1591165607', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('39', '2134', '18569396549', '/Public/images/customer.jpg', '22', '1111\\', '1591165627', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('40', '2134', '18569396549', '/Public/images/customer.jpg', '22', '消息记录怎么没有了', '1591165700', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('41', '2134', '18569396549', '/Public/images/customer.jpg', '22', '因为走的是新的聊天窗口么', '1591165716', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('42', '22', 'kefu', '/Public/images/sj.png', '2134', '是的', '1591165721', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('43', '99999', '游客', '/Public/images/customer.jpg', '22', '111', '1591165764', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('44', '22', 'kefu', '/Public/images/sj.png', '100001', '在么', '1591176747', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('45', '22', 'kefu', '/Public/images/sj.png', '100001', '1', '1591176884', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('46', '22', 'kefu', '/Public/images/sj.png', '100001', '1111', '1591176907', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('47', '100001', '18569396549', '/Public/images/customer.jpg', '22', '1111', '1591177269', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('48', '99999', '游客', '/Public/images/customer.jpg', '22', '你干啥呢', '1591178066', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('49', '1', '游客', '/Public/images/customer.jpg', '22', '1111', '1591516822', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('50', '1', '游客', '/Public/images/customer.jpg', '22', '11111', '1591516828', 'friend', '0');
INSERT INTO `richat_chatlog` VALUES ('51', '100004', '游客 :127.0.0.1', '/Public/images/customer.jpg', '22', '1111231', '1591518131', 'friend', '0');

-- ----------------------------
-- Table structure for richat_chatuser
-- ----------------------------
DROP TABLE IF EXISTS `richat_chatuser`;
CREATE TABLE `richat_chatuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL COMMENT '后台管理员id',
  `customer_id` int(11) DEFAULT NULL COMMENT '客服id',
  `user_type` tinyint(2) DEFAULT '1' COMMENT '1/客服 2/客户',
  `username` varchar(155) DEFAULT NULL,
  `pwd` varchar(155) DEFAULT NULL COMMENT '密码',
  `groupid` int(5) DEFAULT NULL COMMENT '所属的分组id',
  `status` varchar(55) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of richat_chatuser
-- ----------------------------
INSERT INTO `richat_chatuser` VALUES ('10', null, '22', '2', '游客', null, '2', null, '游客', '/Public/images/customer.jpg');
INSERT INTO `richat_chatuser` VALUES ('26', null, null, '2', '13681794059', null, '2', null, '客户 13681794059', '/Public/images/customer.jpg');
INSERT INTO `richat_chatuser` VALUES ('27', null, null, '2', '15918476606', null, '2', null, '客户 15918476606', '/Public/images/customer.jpg');
INSERT INTO `richat_chatuser` VALUES ('28', '43', null, '1', 'admin', 'f11ec7022bbe2bf69670d1a181646f0e', '1', 'online', '客服 admin', '/Public/images/sj.png');
INSERT INTO `richat_chatuser` VALUES ('24', null, '22', '2', '18359202476', null, '2', null, '客户 18359202476', '/Public/images/customer.jpg');
INSERT INTO `richat_chatuser` VALUES ('22', '42', null, '1', 'kefu', '57cea37edd561f91185ee4044f528e75', '1', 'online', '客服 kefu', '/Public/images/sj.png');
INSERT INTO `richat_chatuser` VALUES ('29', '44', null, '1', 'kefu2', '22e1bc525432de9878534afd9c0a0dcb', '1', 'online', '客服 kefu2', '/Public/images/sj.png');
INSERT INTO `richat_chatuser` VALUES ('30', null, '29', '2', '18930872298', null, '2', null, '客户 18930872298', '/Public/images/customer.jpg');
INSERT INTO `richat_chatuser` VALUES ('31', null, '29', '2', '13479628995', null, '2', null, '客户 13479628995', '/Public/images/customer.jpg');
INSERT INTO `richat_chatuser` VALUES ('32', null, '29', '2', '18359202475', null, '2', null, '客户 18359202475', '/Public/images/customer.jpg');
INSERT INTO `richat_chatuser` VALUES ('33', '45', null, '1', '123456', 'edeccff4668c9c81cb144dbc5c86ace2', '1', null, '客服 123456', '/Public/images/sj.png');
INSERT INTO `richat_chatuser` VALUES ('34', '46', null, '1', '123457', 'ec0479b18c575cb508fec693ad48992a', '1', null, '客服 123457', '/Public/images/sj.png');
INSERT INTO `richat_chatuser` VALUES ('36', '48', null, '1', '123459', '965ba7de93e77f417ade24fccf7a8b22', '1', null, '客服 123459', '/Public/images/sj.png');
INSERT INTO `richat_chatuser` VALUES ('37', '49', null, '1', '123460', '08fd696506756cd0b8eb47460df13aa9', '1', null, '客服 123460', '/Public/images/sj.png');
INSERT INTO `richat_chatuser` VALUES ('38', '50', null, '1', '123461', '35c5c6fd43072e6bcdb82bf88be81e57', '1', null, '客服 123461', '/Public/images/sj.png');
INSERT INTO `richat_chatuser` VALUES ('39', '51', null, '1', '123462', '9e5501c8a42af470d6aa5129b0301a90', '1', null, '客服 123462', '/Public/images/sj.png');
INSERT INTO `richat_chatuser` VALUES ('40', '52', null, '1', '123463', '184571fb380dcda240f9b3d13499a3cd', '1', null, '客服 123463', '/Public/images/sj.png');
INSERT INTO `richat_chatuser` VALUES ('100004', null, '22', '2', '游客 :127.0.0.1', null, '2', null, '127.0.0.1', '/Public/images/customer.jpg');
INSERT INTO `richat_chatuser` VALUES ('100002', null, null, '2', '18569396549', null, '2', null, '客户 18569396549', '/Public/images/customer.jpg');
INSERT INTO `richat_chatuser` VALUES ('1', null, '22', '2', '游客', null, '2', null, '游客', '/Public/images/customer.jpg');

-- ----------------------------
-- Table structure for richat_groupdetail
-- ----------------------------
DROP TABLE IF EXISTS `richat_groupdetail`;
CREATE TABLE `richat_groupdetail` (
  `userid` int(11) NOT NULL,
  `username` varchar(155) NOT NULL,
  `useravatar` varchar(155) NOT NULL,
  `usersign` varchar(155) NOT NULL,
  `groupid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of richat_groupdetail
-- ----------------------------
INSERT INTO `richat_groupdetail` VALUES ('22', 'kefu', '/Public/images/sj.png', '客服 kefu', '39');
INSERT INTO `richat_groupdetail` VALUES ('2', '马云', 'http://tp4.sinaimg.cn/2145291155/180/5601307179/1', '让天下没有难写的代码', '39');

-- ----------------------------
-- Table structure for smscode
-- ----------------------------
DROP TABLE IF EXISTS `smscode`;
CREATE TABLE `smscode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `code` varchar(12) NOT NULL,
  `sendtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=312 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smscode
-- ----------------------------
INSERT INTO `smscode` VALUES ('1', '17634190277', '900111', '1571744205');
INSERT INTO `smscode` VALUES ('2', '13552480730', '188269', '1572617247');
INSERT INTO `smscode` VALUES ('3', '18087076770', '782712', '1572617778');
INSERT INTO `smscode` VALUES ('4', '15848470623', '093434', '1572660795');
INSERT INTO `smscode` VALUES ('5', '15848470923', '270790', '1572660969');
INSERT INTO `smscode` VALUES ('6', '13774003309', '995050', '1572669436');
INSERT INTO `smscode` VALUES ('7', '13239521521', '426036', '1572669918');
INSERT INTO `smscode` VALUES ('8', '15117336692', '508402', '1572670298');
INSERT INTO `smscode` VALUES ('9', '13184061144', '870147', '1572679119');
INSERT INTO `smscode` VALUES ('10', '13768022520', '995663', '1572681210');
INSERT INTO `smscode` VALUES ('11', '15186624388', '559180', '1572681401');
INSERT INTO `smscode` VALUES ('12', '18754339331', '471124', '1572698848');
INSERT INTO `smscode` VALUES ('13', '18334976553', '468575', '1572704410');
INSERT INTO `smscode` VALUES ('14', '18334976553', '705163', '1572707804');
INSERT INTO `smscode` VALUES ('15', '18435160171', '535392', '1572710678');
INSERT INTO `smscode` VALUES ('16', '18334976553', '643232', '1572835641');
INSERT INTO `smscode` VALUES ('17', '18435160171', '364206', '1573490106');
INSERT INTO `smscode` VALUES ('18', '17327362297', '833531', '1573521393');
INSERT INTO `smscode` VALUES ('19', '17327362297', '756138', '1573521476');
INSERT INTO `smscode` VALUES ('20', '13160299427', '969866', '1573522736');
INSERT INTO `smscode` VALUES ('21', '13160299427', '441912', '1573526190');
INSERT INTO `smscode` VALUES ('22', '17327362297', '207629', '1573528211');
INSERT INTO `smscode` VALUES ('23', '13160299427', '217380', '1573529774');
INSERT INTO `smscode` VALUES ('24', '13160299427', '936295', '1573555798');
INSERT INTO `smscode` VALUES ('25', '17772273015', '889075', '1573555868');
INSERT INTO `smscode` VALUES ('26', '13160299427', '873508', '1573565083');
INSERT INTO `smscode` VALUES ('27', '13059558391', '216900', '1573566889');
INSERT INTO `smscode` VALUES ('28', '13059558391', '251428', '1573566987');
INSERT INTO `smscode` VALUES ('29', '13059558391', '736396', '1573567052');
INSERT INTO `smscode` VALUES ('30', '13145216847', '953849', '1573567134');
INSERT INTO `smscode` VALUES ('31', '13145216847', '561914', '1573567212');
INSERT INTO `smscode` VALUES ('32', '13059558391', '293247', '1573567771');
INSERT INTO `smscode` VALUES ('33', '13059558391', '239657', '1573568449');
INSERT INTO `smscode` VALUES ('34', '17682433801', '998902', '1573613245');
INSERT INTO `smscode` VALUES ('35', '17682433801', '287754', '1573614350');
INSERT INTO `smscode` VALUES ('36', '15974752391', '522140', '1573618904');
INSERT INTO `smscode` VALUES ('37', '18267230325', '190305', '1573620796');
INSERT INTO `smscode` VALUES ('38', '13639749072', '760713', '1573622137');
INSERT INTO `smscode` VALUES ('39', '15101060461', '100323', '1573623075');
INSERT INTO `smscode` VALUES ('40', '15258142006', '756114', '1573625373');
INSERT INTO `smscode` VALUES ('41', '15913920006', '653228', '1573631446');
INSERT INTO `smscode` VALUES ('42', '18263685383', '790205', '1573632054');
INSERT INTO `smscode` VALUES ('43', '18263685383', '475792', '1573632131');
INSERT INTO `smscode` VALUES ('44', '15198522700', '677205', '1573635245');
INSERT INTO `smscode` VALUES ('45', '13410817346', '987101', '1573635940');
INSERT INTO `smscode` VALUES ('46', '18717418993', '310340', '1573645427');
INSERT INTO `smscode` VALUES ('47', '13145216847', '636827', '1573646102');
INSERT INTO `smscode` VALUES ('48', '13878039492', '140941', '1573686553');
INSERT INTO `smscode` VALUES ('49', '13639749072', '350147', '1573697806');
INSERT INTO `smscode` VALUES ('50', '15283778432', '421543', '1573701593');
INSERT INTO `smscode` VALUES ('51', '17603209416', '483091', '1573701672');
INSERT INTO `smscode` VALUES ('52', '18777574470', '178173', '1573704650');
INSERT INTO `smscode` VALUES ('53', '15886502843', '327394', '1573705594');
INSERT INTO `smscode` VALUES ('54', '18334976553', '317810', '1573708786');
INSERT INTO `smscode` VALUES ('55', '13619291458', '030781', '1573712110');
INSERT INTO `smscode` VALUES ('56', '18677101324', '969655', '1573712267');
INSERT INTO `smscode` VALUES ('57', '18699074457', '802720', '1573715266');
INSERT INTO `smscode` VALUES ('58', '13729336399', '871907', '1573718767');
INSERT INTO `smscode` VALUES ('59', '15223065475', '355890', '1573723200');
INSERT INTO `smscode` VALUES ('60', '18550433622', '234314', '1573727730');
INSERT INTO `smscode` VALUES ('61', '15771383039', '792228', '1573733088');
INSERT INTO `smscode` VALUES ('62', '15880062726', '377111', '1573734331');
INSERT INTO `smscode` VALUES ('63', '13903198923', '975587', '1573738716');
INSERT INTO `smscode` VALUES ('64', '13160299427', '902247', '1573791079');
INSERT INTO `smscode` VALUES ('65', '13160299427', '305419', '1573791366');
INSERT INTO `smscode` VALUES ('66', '17772273015', '675971', '1573791439');
INSERT INTO `smscode` VALUES ('67', '13268371295', '367121', '1573792630');
INSERT INTO `smscode` VALUES ('68', '17621026217', '707614', '1573794561');
INSERT INTO `smscode` VALUES ('69', '17621026217', '652161', '1573794655');
INSERT INTO `smscode` VALUES ('70', '18930632627', '285108', '1573794749');
INSERT INTO `smscode` VALUES ('71', '13924695233', '885734', '1573794854');
INSERT INTO `smscode` VALUES ('72', '13924695233', '449068', '1573794933');
INSERT INTO `smscode` VALUES ('73', '18826099620', '137210', '1573795029');
INSERT INTO `smscode` VALUES ('74', '13924695233', '855331', '1573795139');
INSERT INTO `smscode` VALUES ('75', '18826099620', '138923', '1573795543');
INSERT INTO `smscode` VALUES ('76', '18826099620', '050434', '1573795678');
INSERT INTO `smscode` VALUES ('77', '17772273015', '405244', '1573796564');
INSERT INTO `smscode` VALUES ('78', '13160299427', '532526', '1573796653');
INSERT INTO `smscode` VALUES ('79', '13059558391', '280762', '1573797045');
INSERT INTO `smscode` VALUES ('80', '13059558391', '381058', '1573797140');
INSERT INTO `smscode` VALUES ('81', '13160299427', '220644', '1573797339');
INSERT INTO `smscode` VALUES ('82', '17772273015', '129688', '1573797434');
INSERT INTO `smscode` VALUES ('83', '18826099620', '175438', '1573797635');
INSERT INTO `smscode` VALUES ('84', '18655770315', '162351', '1573797814');
INSERT INTO `smscode` VALUES ('85', '18655770315', '098564', '1573797888');
INSERT INTO `smscode` VALUES ('86', '18826099620', '547994', '1573798001');
INSERT INTO `smscode` VALUES ('87', '13059558391', '201051', '1573798094');
INSERT INTO `smscode` VALUES ('88', '18826099620', '019697', '1573798182');
INSERT INTO `smscode` VALUES ('89', '18930632627', '348437', '1573798273');
INSERT INTO `smscode` VALUES ('90', '13924695233', '511029', '1573798836');
INSERT INTO `smscode` VALUES ('91', '15160007132', '355279', '1573800659');
INSERT INTO `smscode` VALUES ('92', '15160007132', '832899', '1573800731');
INSERT INTO `smscode` VALUES ('93', '18208160052', '642368', '1573801504');
INSERT INTO `smscode` VALUES ('94', '18208160052', '521183', '1573801569');
INSERT INTO `smscode` VALUES ('95', '18208160052', '608644', '1573801655');
INSERT INTO `smscode` VALUES ('96', '18288160052', '875365', '1573801832');
INSERT INTO `smscode` VALUES ('97', '18208160052', '323650', '1573802156');
INSERT INTO `smscode` VALUES ('98', '17576012181', '294275', '1573802952');
INSERT INTO `smscode` VALUES ('99', '13755669802', '554663', '1573803262');
INSERT INTO `smscode` VALUES ('100', '13755669802', '244529', '1573803326');
INSERT INTO `smscode` VALUES ('101', '13755669802', '388466', '1573803393');
INSERT INTO `smscode` VALUES ('102', '15823283744', '823790', '1573803695');
INSERT INTO `smscode` VALUES ('103', '15823283744', '918056', '1573803763');
INSERT INTO `smscode` VALUES ('104', '13958913219', '411664', '1573804234');
INSERT INTO `smscode` VALUES ('105', '18834418014', '054719', '1573804421');
INSERT INTO `smscode` VALUES ('106', '18834418014', '342206', '1573804566');
INSERT INTO `smscode` VALUES ('107', '18834418014', '468874', '1573804705');
INSERT INTO `smscode` VALUES ('108', '18334976553', '679075', '1573806003');
INSERT INTO `smscode` VALUES ('109', '15197015437', '005077', '1573806155');
INSERT INTO `smscode` VALUES ('110', '17576012181', '109189', '1573806216');
INSERT INTO `smscode` VALUES ('111', '15197015437', '071308', '1573806311');
INSERT INTO `smscode` VALUES ('112', '18348690429', '116945', '1573808600');
INSERT INTO `smscode` VALUES ('113', '18348690429', '306697', '1573808719');
INSERT INTO `smscode` VALUES ('114', '17576012181', '669960', '1573812029');
INSERT INTO `smscode` VALUES ('115', '13755669802', '289093', '1573812194');
INSERT INTO `smscode` VALUES ('116', '15769153989', '620896', '1573812976');
INSERT INTO `smscode` VALUES ('117', '18725122464', '562188', '1573813865');
INSERT INTO `smscode` VALUES ('118', '15197015437', '873407', '1573814091');
INSERT INTO `smscode` VALUES ('119', '18208160052', '376258', '1573815818');
INSERT INTO `smscode` VALUES ('120', '15288163090', '168275', '1573817203');
INSERT INTO `smscode` VALUES ('121', '18218526507', '531429', '1573817710');
INSERT INTO `smscode` VALUES ('122', '17515750925', '354637', '1573822810');
INSERT INTO `smscode` VALUES ('123', '13376367980', '534279', '1573823288');
INSERT INTO `smscode` VALUES ('124', '18834418014', '587582', '1573834885');
INSERT INTO `smscode` VALUES ('125', '13376367980', '223997', '1573857414');
INSERT INTO `smscode` VALUES ('126', '18348690429', '991219', '1573870304');
INSERT INTO `smscode` VALUES ('127', '13659006751', '757689', '1573870832');
INSERT INTO `smscode` VALUES ('128', '13659006751', '581364', '1573870905');
INSERT INTO `smscode` VALUES ('129', '13659006751', '004326', '1573870997');
INSERT INTO `smscode` VALUES ('130', '17576012181', '706137', '1573871384');
INSERT INTO `smscode` VALUES ('131', '13659006751', '000895', '1573871468');
INSERT INTO `smscode` VALUES ('132', '13659006751', '185782', '1573871560');
INSERT INTO `smscode` VALUES ('133', '13659006751', '892726', '1573871877');
INSERT INTO `smscode` VALUES ('134', '18910521419', '271946', '1573874385');
INSERT INTO `smscode` VALUES ('135', '13659006751', '330598', '1573876516');
INSERT INTO `smscode` VALUES ('136', '15871844886', '277523', '1573878364');
INSERT INTO `smscode` VALUES ('137', '18676677617', '484747', '1573882331');
INSERT INTO `smscode` VALUES ('138', '15839802690', '744362', '1573884863');
INSERT INTO `smscode` VALUES ('139', '15027913862', '507185', '1573885781');
INSERT INTO `smscode` VALUES ('140', '13680741130', '174383', '1573887502');
INSERT INTO `smscode` VALUES ('141', '13558133320', '167324', '1573889102');
INSERT INTO `smscode` VALUES ('142', '18120562851', '255757', '1573889983');
INSERT INTO `smscode` VALUES ('143', '15322815857', '470909', '1573891261');
INSERT INTO `smscode` VALUES ('144', '15108508472', '164462', '1573892136');
INSERT INTO `smscode` VALUES ('145', '13550330059', '415918', '1573894886');
INSERT INTO `smscode` VALUES ('146', '18930632627', '207681', '1573902909');
INSERT INTO `smscode` VALUES ('147', '15037676086', '113804', '1573903456');
INSERT INTO `smscode` VALUES ('148', '18631041969', '123708', '1573907915');
INSERT INTO `smscode` VALUES ('149', '18834418014', '121243', '1573909662');
INSERT INTO `smscode` VALUES ('150', '18861020514', '215357', '1573950424');
INSERT INTO `smscode` VALUES ('151', '13546241665', '389364', '1573961756');
INSERT INTO `smscode` VALUES ('152', '13722659301', '878978', '1573962923');
INSERT INTO `smscode` VALUES ('153', '15975502070', '588083', '1573963401');
INSERT INTO `smscode` VALUES ('154', '13376367980', '933112', '1573964192');
INSERT INTO `smscode` VALUES ('155', '18356417987', '464933', '1573964559');
INSERT INTO `smscode` VALUES ('156', '18513500213', '960583', '1573966337');
INSERT INTO `smscode` VALUES ('157', '15880377315', '270095', '1573975975');
INSERT INTO `smscode` VALUES ('158', '15880664988', '146468', '1573976615');
INSERT INTO `smscode` VALUES ('159', '15513480005', '272283', '1573977106');
INSERT INTO `smscode` VALUES ('160', '15821574350', '599788', '1573986691');
INSERT INTO `smscode` VALUES ('161', '13619041608', '869876', '1573991884');
INSERT INTO `smscode` VALUES ('162', '13904679865', '410104', '1574000136');
INSERT INTO `smscode` VALUES ('163', '15965251693', '224013', '1574039961');
INSERT INTO `smscode` VALUES ('164', '15965251693', '108552', '1574043788');
INSERT INTO `smscode` VALUES ('165', '13725358553', '148591', '1574045348');
INSERT INTO `smscode` VALUES ('166', '13666891455', '429891', '1574045472');
INSERT INTO `smscode` VALUES ('167', '13972593561', '776489', '1574045961');
INSERT INTO `smscode` VALUES ('168', '15578184953', '721345', '1574046169');
INSERT INTO `smscode` VALUES ('169', '15952469839', '335607', '1574046483');
INSERT INTO `smscode` VALUES ('170', '19903483864', '048392', '1574047104');
INSERT INTO `smscode` VALUES ('171', '15076206035', '755454', '1574048143');
INSERT INTO `smscode` VALUES ('172', '18631041969', '101491', '1574048711');
INSERT INTO `smscode` VALUES ('173', '15262378634', '453363', '1574048881');
INSERT INTO `smscode` VALUES ('174', '19903483864', '077893', '1574051046');
INSERT INTO `smscode` VALUES ('175', '19903483864', '592041', '1574052906');
INSERT INTO `smscode` VALUES ('176', '19903483864', '440046', '1574054794');
INSERT INTO `smscode` VALUES ('177', '15262378634', '975575', '1574055119');
INSERT INTO `smscode` VALUES ('178', '18293732211', '077128', '1574057442');
INSERT INTO `smscode` VALUES ('179', '15753191893', '935526', '1574057759');
INSERT INTO `smscode` VALUES ('180', '18819163707', '567959', '1574059065');
INSERT INTO `smscode` VALUES ('181', '15711421949', '227229', '1574061544');
INSERT INTO `smscode` VALUES ('182', '18087126121', '303294', '1574061842');
INSERT INTO `smscode` VALUES ('183', '13972593561', '782047', '1574063506');
INSERT INTO `smscode` VALUES ('184', '15826286888', '754286', '1574067784');
INSERT INTO `smscode` VALUES ('185', '13487953696', '858939', '1574069096');
INSERT INTO `smscode` VALUES ('186', '17758706585', '201194', '1574078792');
INSERT INTO `smscode` VALUES ('187', '13547114001', '222775', '1574080796');
INSERT INTO `smscode` VALUES ('188', '13759481033', '662877', '1574082506');
INSERT INTO `smscode` VALUES ('189', '18200191880', '350738', '1574083908');
INSERT INTO `smscode` VALUES ('190', '15769582945', '083489', '1574091239');
INSERT INTO `smscode` VALUES ('191', '13205690271', '158746', '1574130017');
INSERT INTO `smscode` VALUES ('192', '18109366689', '436320', '1574130798');
INSERT INTO `smscode` VALUES ('193', '18109366689', '879232', '1574130884');
INSERT INTO `smscode` VALUES ('194', '18109366689', '195171', '1574131069');
INSERT INTO `smscode` VALUES ('195', '18109366689', '373647', '1574131624');
INSERT INTO `smscode` VALUES ('196', '18109366689', '100067', '1574131799');
INSERT INTO `smscode` VALUES ('197', '18993542899', '640132', '1574131884');
INSERT INTO `smscode` VALUES ('198', '18717150331', '299806', '1574132318');
INSERT INTO `smscode` VALUES ('199', '18109366689', '554293', '1574132667');
INSERT INTO `smscode` VALUES ('200', '18109366689', '962464', '1574132965');
INSERT INTO `smscode` VALUES ('201', '13586722824', '752867', '1574135818');
INSERT INTO `smscode` VALUES ('202', '15875973899', '181768', '1574138573');
INSERT INTO `smscode` VALUES ('203', '15769582948', '626578', '1574139845');
INSERT INTO `smscode` VALUES ('204', '18976133795', '834610', '1574150894');
INSERT INTO `smscode` VALUES ('205', '18293421150', '013716', '1574151382');
INSERT INTO `smscode` VALUES ('206', '18152394825', '494397', '1574154439');
INSERT INTO `smscode` VALUES ('207', '15875973899', '419794', '1574154511');
INSERT INTO `smscode` VALUES ('208', '15198104461', '179452', '1574157870');
INSERT INTO `smscode` VALUES ('209', '13960538155', '512889', '1574159600');
INSERT INTO `smscode` VALUES ('210', '18814449978', '818821', '1574163760');
INSERT INTO `smscode` VALUES ('211', '17879027416', '284317', '1574165585');
INSERT INTO `smscode` VALUES ('212', '13085467460', '604219', '1574167156');
INSERT INTO `smscode` VALUES ('213', '13785106598', '164846', '1574169300');
INSERT INTO `smscode` VALUES ('214', '18239992684', '161583', '1574213579');
INSERT INTO `smscode` VALUES ('215', '14768081816', '787177', '1574220288');
INSERT INTO `smscode` VALUES ('216', '13927115405', '898369', '1574224895');
INSERT INTO `smscode` VALUES ('217', '18208849084', '267008', '1574230771');
INSERT INTO `smscode` VALUES ('218', '18368308179', '594698', '1574235459');
INSERT INTO `smscode` VALUES ('219', '18368308179', '440068', '1574235562');
INSERT INTO `smscode` VALUES ('220', '13971955462', '684627', '1574236011');
INSERT INTO `smscode` VALUES ('221', '13971955462', '157251', '1574236146');
INSERT INTO `smscode` VALUES ('222', '18368308179', '453357', '1574236250');
INSERT INTO `smscode` VALUES ('223', '13971955462', '344467', '1574236326');
INSERT INTO `smscode` VALUES ('224', '13868308179', '152138', '1574306147');
INSERT INTO `smscode` VALUES ('225', '13868308179', '113623', '1574306213');
INSERT INTO `smscode` VALUES ('226', '13868308179', '643256', '1574306281');
INSERT INTO `smscode` VALUES ('227', '13868308179', '382043', '1574306349');
INSERT INTO `smscode` VALUES ('228', '13868308179', '633011', '1574310675');
INSERT INTO `smscode` VALUES ('229', '13868308179', '196530', '1574310738');
INSERT INTO `smscode` VALUES ('230', '15965251693', '723604', '1574411067');
INSERT INTO `smscode` VALUES ('231', '17608471751', '565445', '1574440932');
INSERT INTO `smscode` VALUES ('232', '18602757009', '827017', '1576895941');
INSERT INTO `smscode` VALUES ('233', '13160299427', '138670', '1577002663');
INSERT INTO `smscode` VALUES ('234', '16556896331', '620785', '1577009572');
INSERT INTO `smscode` VALUES ('235', '16556896331', '771198', '1577022025');
INSERT INTO `smscode` VALUES ('236', '16556896331', '149424', '1577187015');
INSERT INTO `smscode` VALUES ('237', '16556896331', '999691', '1577187077');
INSERT INTO `smscode` VALUES ('238', '16556896331', '284216', '1577187145');
INSERT INTO `smscode` VALUES ('239', '16556896331', '078742', '1577187274');
INSERT INTO `smscode` VALUES ('240', '16556896331', '988251', '1577187336');
INSERT INTO `smscode` VALUES ('241', '16556896331', '126145', '1577187405');
INSERT INTO `smscode` VALUES ('242', '16556896331', '032172', '1577187475');
INSERT INTO `smscode` VALUES ('243', '16556896331', '054704', '1577188925');
INSERT INTO `smscode` VALUES ('244', '16556896331', '356535', '1577189550');
INSERT INTO `smscode` VALUES ('245', '16556896331', '250533', '1577189620');
INSERT INTO `smscode` VALUES ('246', '15857187099', '980274', '1577189682');
INSERT INTO `smscode` VALUES ('247', '13227547578', '107579', '1577270668');
INSERT INTO `smscode` VALUES ('248', '13227547578', '761494', '1577322248');
INSERT INTO `smscode` VALUES ('249', '13227547578', '583680', '1577322360');
INSERT INTO `smscode` VALUES ('250', '13227547578', '962778', '1577323071');
INSERT INTO `smscode` VALUES ('251', '18031927965', '475149', '1577342776');
INSERT INTO `smscode` VALUES ('252', '13222701199', '513656', '1577421157');
INSERT INTO `smscode` VALUES ('253', '15256233230', '728520', '1577421277');
INSERT INTO `smscode` VALUES ('254', '15826823612', '327382', '1577421490');
INSERT INTO `smscode` VALUES ('255', '15256233260', '694867', '1577422019');
INSERT INTO `smscode` VALUES ('256', '15815709239', '702219', '1577426839');
INSERT INTO `smscode` VALUES ('257', '13899409562', '311555', '1577427883');
INSERT INTO `smscode` VALUES ('258', '15089351761', '442187', '1577434449');
INSERT INTO `smscode` VALUES ('259', '18265643628', '820300', '1577438027');
INSERT INTO `smscode` VALUES ('260', '18735543883', '641659', '1577501498');
INSERT INTO `smscode` VALUES ('261', '18475324511', '225641', '1577507528');
INSERT INTO `smscode` VALUES ('262', '13833078840', '117825', '1577514112');
INSERT INTO `smscode` VALUES ('263', '18735543883', '890027', '1577527121');
INSERT INTO `smscode` VALUES ('264', '13571699708', '453790', '1577595095');
INSERT INTO `smscode` VALUES ('265', '15702933428', '768076', '1577600417');
INSERT INTO `smscode` VALUES ('266', '15021770972', '978783', '1577603382');
INSERT INTO `smscode` VALUES ('267', '13733608333', '125030', '1577606044');
INSERT INTO `smscode` VALUES ('268', '13733608333', '180356', '1577606170');
INSERT INTO `smscode` VALUES ('269', '18735543883', '040289', '1577612375');
INSERT INTO `smscode` VALUES ('270', '18735543883', '726960', '1577612446');
INSERT INTO `smscode` VALUES ('271', '18518115260', '742317', '1577671238');
INSERT INTO `smscode` VALUES ('272', '18569296287', '395338', '1577687209');
INSERT INTO `smscode` VALUES ('273', '15016665056', '785936', '1577770084');
INSERT INTO `smscode` VALUES ('274', '13613183210', '745348', '1577770799');
INSERT INTO `smscode` VALUES ('275', '15830485640', '054971', '1577771715');
INSERT INTO `smscode` VALUES ('276', '15690571917', '534117', '1577838234');
INSERT INTO `smscode` VALUES ('277', '13912808084', '323725', '1577849399');
INSERT INTO `smscode` VALUES ('278', '15195223807', '106421', '1577851269');
INSERT INTO `smscode` VALUES ('279', '15195223807', '179122', '1577851336');
INSERT INTO `smscode` VALUES ('280', '15195523807', '198442', '1577851399');
INSERT INTO `smscode` VALUES ('281', '13477293077', '406111', '1577854142');
INSERT INTO `smscode` VALUES ('282', '18834478477', '615891', '1577862782');
INSERT INTO `smscode` VALUES ('283', '15706790550', '810391', '1577863815');
INSERT INTO `smscode` VALUES ('284', '13668514505', '579623', '1577872096');
INSERT INTO `smscode` VALUES ('285', '18637179846', '057060', '1577931063');
INSERT INTO `smscode` VALUES ('286', '18359838207', '234206', '1577947746');
INSERT INTO `smscode` VALUES ('287', '18865186593', '520574', '1577948377');
INSERT INTO `smscode` VALUES ('288', '13841354168', '509708', '1577953050');
INSERT INTO `smscode` VALUES ('289', '18423207030', '401845', '1577955381');
INSERT INTO `smscode` VALUES ('290', '13858718214', '883832', '1578127316');
INSERT INTO `smscode` VALUES ('291', '13681794059', '910112', '1578201235');
INSERT INTO `smscode` VALUES ('292', '15126782331', '659486', '1578204751');
INSERT INTO `smscode` VALUES ('293', '17791797821', '640831', '1578275995');
INSERT INTO `smscode` VALUES ('294', '18361837377', '467611', '1578286497');
INSERT INTO `smscode` VALUES ('295', '18834478477', '445525', '1578304275');
INSERT INTO `smscode` VALUES ('296', '15918476606', '338246', '1578304966');
INSERT INTO `smscode` VALUES ('297', '15918476606', '991560', '1578305031');
INSERT INTO `smscode` VALUES ('298', '13681794059', '071107', '1578455770');
INSERT INTO `smscode` VALUES ('299', '13780000892', '257177', '1579161197');
INSERT INTO `smscode` VALUES ('300', '13479628995', '928002', '1582041117');
INSERT INTO `smscode` VALUES ('301', '18930872298', '024645', '1582448370');
INSERT INTO `smscode` VALUES ('302', '15258234501', '082263', '1583999176');
INSERT INTO `smscode` VALUES ('303', '15757851836', '313775', '1584036731');
INSERT INTO `smscode` VALUES ('304', '15559763298', '439801', '1584780688');
INSERT INTO `smscode` VALUES ('305', '13685169501', '376262', '1584951038');
INSERT INTO `smscode` VALUES ('306', '13257744517', '416872', '1584951218');
INSERT INTO `smscode` VALUES ('307', '18359202476', '803775', '1585510809');
INSERT INTO `smscode` VALUES ('308', '17710573616', '575618', '1588063746');
INSERT INTO `smscode` VALUES ('309', '17710573616', '911527', '1588063840');
INSERT INTO `smscode` VALUES ('310', '18359202475', '012621', '1590477596');
INSERT INTO `smscode` VALUES ('311', '18569396549', '371723', '1591092852');

-- ----------------------------
-- Table structure for spread
-- ----------------------------
DROP TABLE IF EXISTS `spread`;
CREATE TABLE `spread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '推广通道名',
  `url` varchar(128) DEFAULT NULL COMMENT '推广地址',
  `reg_num` int(11) DEFAULT '0' COMMENT '注册量',
  `application_num` int(11) DEFAULT '0' COMMENT '申请数量',
  `reg_num_today` int(11) DEFAULT '0' COMMENT '当日注册量',
  `application_num_today` int(11) DEFAULT '0' COMMENT '当日申请量',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of spread
-- ----------------------------
INSERT INTO `spread` VALUES ('1', '通道1	', 'http://get-money.im/index.php?g=Home&m=User&a=invitation_user', '0', '0', '0', '0', '2020-05-16 09:35:04');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(32) DEFAULT NULL COMMENT '管理员名',
  `admin_id` int(11) DEFAULT NULL COMMENT '所属客服id',
  `phone` varchar(255) NOT NULL,
  `password` varchar(128) NOT NULL,
  `withdrawal_password` varchar(8) DEFAULT NULL COMMENT '取款密码',
  `available_credit` int(8) DEFAULT '0' COMMENT '可用额度',
  `used_credit` int(8) DEFAULT '0' COMMENT '已用额度',
  `withdrawal_time` int(11) DEFAULT NULL COMMENT '提现时间',
  `withdrawal_status` tinyint(2) DEFAULT '0' COMMENT '提现状态: 0/未提现 1/已提现',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `sign_time` int(11) DEFAULT NULL COMMENT '签到时间',
  `status` int(1) NOT NULL DEFAULT '1',
  `codes` varchar(255) DEFAULT NULL COMMENT '邀请码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, null, '游客', '', null, '0', '0', '1577421705', '0', '1577422190', null, '1', null);
INSERT INTO `user` VALUES ('3', null, null, '13227547578', '0747ba547fbc1b06d93d64c1fe606a2d729c1f88', null, '0', '0', '1577421705', '0', '1577270708', null, '1', '0');
INSERT INTO `user` VALUES ('4', null, null, '18031927965', '111e582bcf5d88f67e46c13944b7c83d2066038c', null, '0', '0', '1577421705', '0', '1577342789', null, '1', '0');
INSERT INTO `user` VALUES ('5', null, null, '13222701199', '438751b5581e229111f0f21a7cc89f40384d6e81', null, '0', '0', '1577421705', '0', '1577421187', null, '1', '0');
INSERT INTO `user` VALUES ('6', null, null, '15256233230', 'b964800f273c7bebfbd314ce168735addb2d84c3', null, '0', '0', '1577421705', '0', '1577421296', null, '1', '0');
INSERT INTO `user` VALUES ('14', null, null, '18735543883', 'cadf1711199cdf1e0446254213d9074e700e85f5', null, '0', '0', '1577421705', '0', '1577501523', null, '1', '0');
INSERT INTO `user` VALUES ('10', null, null, '15815709239', 'a3c182ff36d058f055f9cbd51f1a05b4858248c4', null, '0', '0', '1577421705', '0', '1577426873', null, '1', '0');
INSERT INTO `user` VALUES ('11', null, null, '13899409562', 'a7ee86605e6d815b3842aa1ff6e51b943edbce2f', null, '0', '0', '1577421705', '0', '1577427903', null, '1', '0');
INSERT INTO `user` VALUES ('15', null, null, '18475324511', '8d0133904a18dbee7cc65a2133c0496f5ee784e7', null, '0', '0', '1577421705', '0', '1577507545', null, '1', '0');
INSERT INTO `user` VALUES ('16', null, null, '13833078840', 'acf58f68f25710c5d619b0e9a3894d3cd7e76776', null, '0', '0', '1577421705', '0', '1577514131', null, '1', '0');
INSERT INTO `user` VALUES ('17', null, null, '13571699708', 'f38d3191a6f3506f889eb93a0ad1c99256090ba1', null, '0', '0', '1577421705', '0', '1577595118', null, '1', '0');
INSERT INTO `user` VALUES ('18', null, null, '15702933428', '534f0e3b9fe28872be1c2140f65901f5a830f176', null, '0', '0', '1577421705', '0', '1577600460', null, '1', '0');
INSERT INTO `user` VALUES ('19', null, null, '15021770972', '762a14f9ccd8b0b8519d892ffb9775b6b31b6795', null, '0', '0', '1577421705', '0', '1577603409', null, '1', '0');
INSERT INTO `user` VALUES ('20', null, null, '13733608333', 'ae13208a7ed95b514b0629bce6577f4d36afe91b', null, '0', '0', '1577421705', '0', '1577606244', null, '1', '0');
INSERT INTO `user` VALUES ('21', null, null, '18518115260', '305ac4cd15aeb2a094026248e829163d9993b88a', null, '0', '0', '1577421705', '0', '1577671257', null, '1', '0');
INSERT INTO `user` VALUES ('22', null, null, '18569296287', 'e0c720c83d692665999b9fd8230377b33bd0c72d', null, '0', '0', '1577421705', '0', '1577687229', null, '1', '0');
INSERT INTO `user` VALUES ('43', null, null, '15918476606', '769bb589287f8bc6d7c45c2e205a5798a738047e', null, '0', '0', '1577421705', '0', '1578305065', null, '0', '0');
INSERT INTO `user` VALUES ('24', null, null, '13613183210', 'e479ddaa22e2058a0489f9d9f025fba8efe57faf', null, '0', '0', '1577421705', '0', '1577770833', null, '1', '0');
INSERT INTO `user` VALUES ('25', null, null, '15830485640', '64b8aa1a6153799b0391b38ff6aac66148d37394', null, '0', '0', '1577421705', '0', '1577771738', null, '1', '0');
INSERT INTO `user` VALUES ('40', null, null, '15126782331', '048e7aafe2e5e4a2a1a372082954d2eebf6d3a64', null, '0', '0', '1577421705', '0', '1578204780', null, '1', '0');
INSERT INTO `user` VALUES ('41', null, null, '17791797821', 'a511f545295b66e672b357999749551fac8cbdc7', null, '0', '0', '1577421705', '0', '1578276023', null, '1', '0');
INSERT INTO `user` VALUES ('28', null, null, '15195523807', 'a1d61fd349d3d8d257dae90339e69d0f319729d0', null, '0', '0', '1577421705', '0', '1577851430', null, '1', '0');
INSERT INTO `user` VALUES ('30', null, null, '18834478477', 'fe9b86978ec92e01af838b3bc9d6ed636fb38c12', null, '0', '0', '1577421705', '0', '1577862812', null, '1', '0');
INSERT INTO `user` VALUES ('31', null, null, '15706790550', '0286d2c0563aa4b8c62440ad6ccc0e8c15621923', null, '0', '0', '1577421705', '0', '1577863865', null, '1', '0');
INSERT INTO `user` VALUES ('32', null, null, '13668514505', 'de110c2030db320a675126043455c6095aafd54f', null, '0', '0', '1577421705', '0', '1577872121', null, '1', '0');
INSERT INTO `user` VALUES ('45', null, null, '13780000892', '10470c3b4b1fed12c3baac014be15fac67c6e815', '123456', '0', '0', '1577421705', '1', '1579161218', null, '1', '0');
INSERT INTO `user` VALUES ('34', null, null, '18359838207', 'd52109df8e960ea9dd44fd1341279fd823e2edf7', null, '0', '0', '1577421705', '0', '1577947789', null, '1', '0');
INSERT INTO `user` VALUES ('35', null, null, '18865186593', '9ef158f1dfccaad030ec1b243f71ef8fae8cb7c8', null, '0', '0', '1577421705', '0', '1577948407', null, '0', '0');
INSERT INTO `user` VALUES ('36', null, null, '13841354168', 'a5d570de86ab4dae7b7be98d83e5a4e865dc713e', null, '0', '0', '1577421705', '0', '1577953082', null, '1', '0');
INSERT INTO `user` VALUES ('44', null, null, '13681794059', '8d0133904a18dbee7cc65a2133c0496f5ee784e7', null, '0', '0', '1577421705', '0', '1578455811', null, '1', '0');
INSERT INTO `user` VALUES ('46', null, null, '13479628995', '10470c3b4b1fed12c3baac014be15fac67c6e815', null, '0', '0', '1577421705', '0', '1582041136', null, '1', '0');
INSERT INTO `user` VALUES ('47', null, null, '18930872298', '0d33f4798bf05770e15e0543720c7d00ddf1af5e', '123456', '0', '0', '1577421705', '0', '1582448394', null, '1', '0');
INSERT INTO `user` VALUES ('52', null, null, '18569396549', 'a5b5288afb7db409feb025917387ac4ca9cb6ea3', '123456', '1000', '0', '1577421705', '0', '1585510839', null, '1', '0');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `usercard` varchar(255) DEFAULT NULL,
  `cardphoto_1` varchar(255) DEFAULT NULL,
  `cardphoto_2` varchar(255) DEFAULT NULL,
  `cardphoto_3` varchar(255) DEFAULT NULL,
  `addess_ssq` varchar(255) DEFAULT NULL,
  `addess_more` varchar(255) DEFAULT NULL,
  `dwname` varchar(255) DEFAULT NULL,
  `dwaddess_ssq` varchar(255) DEFAULT NULL,
  `dwaddess_more` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `workyears` float DEFAULT NULL,
  `bankcard` varchar(255) DEFAULT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `alipay` int(1) DEFAULT '0',
  `wechat` int(1) DEFAULT '0',
  `dwphone` varchar(255) DEFAULT NULL,
  `dwysr` varchar(255) DEFAULT NULL,
  `personname_1` varchar(255) DEFAULT NULL,
  `personphone_1` varchar(255) DEFAULT NULL,
  `persongx_1` varchar(255) DEFAULT NULL,
  `personname_2` varchar(255) DEFAULT NULL,
  `personphone_2` varchar(255) DEFAULT NULL,
  `persongx_2` varchar(255) DEFAULT NULL,
  `sesame` int(11) DEFAULT NULL COMMENT '芝麻信用分',
  `alipay_num` varchar(255) DEFAULT NULL COMMENT '支付宝账号',
  `education` varchar(255) NOT NULL COMMENT '学历',
  `phone` int(11) NOT NULL,
  `zhimaxinyou` int(11) NOT NULL DEFAULT '0',
  `is_check` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for voucher
-- ----------------------------
DROP TABLE IF EXISTS `voucher`;
CREATE TABLE `voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL COMMENT '还款客户',
  `ordernum` varchar(255) NOT NULL COMMENT '订单号',
  `money` float NOT NULL DEFAULT '0' COMMENT '还款总金额',
  `months` int(11) NOT NULL DEFAULT '0' COMMENT '还款总期数',
  `ofnumber` int(11) NOT NULL DEFAULT '0' COMMENT '当前期数',
  `monthmoney` float NOT NULL COMMENT '每期还款金额',
  `zfimg` varchar(255) NOT NULL COMMENT '支付凭证图',
  `status` int(11) NOT NULL COMMENT '支付状态0：未支付1：已支付',
  `addtime` datetime NOT NULL COMMENT '生成日期',
  `huantime` date NOT NULL COMMENT '还款日期',
  `paytime` datetime DEFAULT NULL COMMENT '客户支付日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1645 DEFAULT CHARSET=utf8 COMMENT='还款列表订单';

-- ----------------------------
-- Records of voucher
-- ----------------------------
