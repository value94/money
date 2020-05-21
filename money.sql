/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : money

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-05-20 16:30:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL,
  `password` varchar(35) NOT NULL,
  `gid` int(11) NOT NULL DEFAULT '1',
  `id_code` varchar(32) DEFAULT NULL COMMENT '用户推广码',
  `role` tinyint(2) DEFAULT '2' COMMENT '用户权限',
  `addtime` int(11) NOT NULL,
  `lastlogin` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('32', 'admin', 'f11ec7022bbe2bf69670d1a181646f0e', '1', null, '1', '0', '1589867865', '1');
INSERT INTO `admin` VALUES ('33', 'kefu', '57cea37edd561f91185ee4044f528e75', '1', 'Aiprzvep', '2', '1589598391', '1589949898', '1');
INSERT INTO `admin` VALUES ('34', 'kefu2', '57cea37edd561f91185ee4044f528e75', '1', 'Aiprz1ep', '2', '1589612669', '0', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_login
-- ----------------------------
INSERT INTO `admin_login` VALUES ('1', 'admin', '1577000856', '180.124.82.84');
INSERT INTO `admin_login` VALUES ('2', 'admin', '1577009041', '203.168.21.81');
INSERT INTO `admin_login` VALUES ('3', 'admin', '1577161762', '183.202.120.121');
INSERT INTO `admin_login` VALUES ('4', 'admin', '1577162025', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('5', 'admin', '1577184210', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('6', 'admin', '1577237683', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('7', 'admin', '1577270748', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('8', 'admin', '1577323447', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('9', 'admin', '1577408962', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('10', 'admin', '1577510428', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('11', 'admin', '1577587927', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('12', 'admin', '1577595694', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('13', 'admin', '1577603362', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('14', 'admin', '1577604457', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('15', 'admin', '1577678607', '223.111.137.158');
INSERT INTO `admin_login` VALUES ('16', 'admin', '1577699057', '223.111.137.157');
INSERT INTO `admin_login` VALUES ('17', 'admin', '1577768280', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('18', 'admin', '1577849452', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('19', 'admin', '1577926387', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('20', 'admin', '1577941586', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('21', 'admin', '1577974104', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('22', 'admin', '1578015962', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('23', 'admin', '1578021123', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('24', 'admin', '1578034766', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('25', 'admin', '1578061513', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('26', 'admin', '1578064580', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('27', 'admin', '1578187410', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('28', 'admin', '1578191870', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('29', 'admin', '1578274757', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('30', 'admin', '1578303613', '223.111.137.156');
INSERT INTO `admin_login` VALUES ('31', 'admin', '1578383766', '124.167.76.138');
INSERT INTO `admin_login` VALUES ('32', 'admin', '1578383788', '124.167.76.138');
INSERT INTO `admin_login` VALUES ('33', 'admin', '1578383797', '124.167.76.138');
INSERT INTO `admin_login` VALUES ('34', 'admin', '1578384245', '223.66.190.254');
INSERT INTO `admin_login` VALUES ('35', 'admin', '1578394431', '42.100.134.157');
INSERT INTO `admin_login` VALUES ('36', 'admin', '1582039778', '171.122.248.4');
INSERT INTO `admin_login` VALUES ('37', 'admin', '1583117398', '58.35.136.78');
INSERT INTO `admin_login` VALUES ('38', 'admin', '1583306662', '111.112.242.177');
INSERT INTO `admin_login` VALUES ('39', 'admin', '1583999068', '218.205.55.60');
INSERT INTO `admin_login` VALUES ('40', 'admin', '1584036580', '117.136.60.129');
INSERT INTO `admin_login` VALUES ('41', 'admin', '1584077370', '218.205.55.114');
INSERT INTO `admin_login` VALUES ('42', 'admin', '1584083027', '183.40.28.166');
INSERT INTO `admin_login` VALUES ('43', 'admin', '1584605633', '124.167.200.241');
INSERT INTO `admin_login` VALUES ('44', 'admin', '1584692841', '171.122.23.251');
INSERT INTO `admin_login` VALUES ('45', 'admin', '1584713377', '111.174.41.29');
INSERT INTO `admin_login` VALUES ('46', 'admin', '1584780690', '223.66.190.178');
INSERT INTO `admin_login` VALUES ('47', 'admin', '1584780926', '116.249.168.146');
INSERT INTO `admin_login` VALUES ('48', 'admin', '1584903619', '180.140.220.212');
INSERT INTO `admin_login` VALUES ('49', 'admin', '1585101984', '117.136.46.111');
INSERT INTO `admin_login` VALUES ('50', 'admin', '1585277962', '218.77.41.80');
INSERT INTO `admin_login` VALUES ('51', 'admin', '1585450368', '37.111.15.92');
INSERT INTO `admin_login` VALUES ('52', 'admin', '1585818489', '111.112.244.27');
INSERT INTO `admin_login` VALUES ('53', 'admin', '1586162751', '180.130.2.33');
INSERT INTO `admin_login` VALUES ('54', 'admin', '1586164265', '117.151.241.5');
INSERT INTO `admin_login` VALUES ('55', 'admin', '1586177454', '117.151.241.5');
INSERT INTO `admin_login` VALUES ('56', 'admin', '1586243405', '37.111.9.176');
INSERT INTO `admin_login` VALUES ('57', 'admin', '1586245097', '171.122.250.128');
INSERT INTO `admin_login` VALUES ('58', 'admin', '1586248277', '101.206.169.59');
INSERT INTO `admin_login` VALUES ('59', 'admin', '1586263154', '37.111.9.176');
INSERT INTO `admin_login` VALUES ('60', 'admin', '1586389424', '223.104.14.96');
INSERT INTO `admin_login` VALUES ('61', 'admin', '1586437028', '120.229.11.213');
INSERT INTO `admin_login` VALUES ('62', 'admin', '1586509127', '117.151.250.126');
INSERT INTO `admin_login` VALUES ('63', 'admin', '1588063638', '111.112.245.219');
INSERT INTO `admin_login` VALUES ('64', 'admin', '1588151358', '125.80.138.231');
INSERT INTO `admin_login` VALUES ('65', 'admin', '1588565987', '123.147.250.212');
INSERT INTO `admin_login` VALUES ('66', 'admin', '1588607412', '115.120.192.33');
INSERT INTO `admin_login` VALUES ('67', 'admin', '1589436604', '120.239.137.1');
INSERT INTO `admin_login` VALUES ('68', 'admin', '1589436979', '112.123.71.4');
INSERT INTO `admin_login` VALUES ('69', 'admin', '1589460487', '180.124.82.79');
INSERT INTO `admin_login` VALUES ('70', 'admin', '1589510073', '180.124.82.79');
INSERT INTO `admin_login` VALUES ('71', 'admin', '1589510365', '183.95.250.206');
INSERT INTO `admin_login` VALUES ('72', 'admin', '1589510806', '140.250.201.12');
INSERT INTO `admin_login` VALUES ('73', 'admin', '1589510869', '140.250.201.12');
INSERT INTO `admin_login` VALUES ('74', 'admin', '1589522930', '113.87.129.144');
INSERT INTO `admin_login` VALUES ('75', 'admin', '1589525594', '112.32.80.248');
INSERT INTO `admin_login` VALUES ('76', 'admin', '1589526120', '125.211.152.245');
INSERT INTO `admin_login` VALUES ('77', 'admin', '1589526214', '112.97.245.231');
INSERT INTO `admin_login` VALUES ('78', 'admin', '1589526499', '180.140.14.152');
INSERT INTO `admin_login` VALUES ('79', 'admin', '1589532749', '125.211.152.245');
INSERT INTO `admin_login` VALUES ('80', 'admin', '1589603096', '127.0.0.1');
INSERT INTO `admin_login` VALUES ('81', 'kefu', '1589604284', '127.0.0.1');
INSERT INTO `admin_login` VALUES ('82', 'admin', '1589604292', '127.0.0.1');
INSERT INTO `admin_login` VALUES ('83', 'admin', '1589681780', '127.0.0.1');
INSERT INTO `admin_login` VALUES ('84', 'kefu', '1589686817', '127.0.0.1');
INSERT INTO `admin_login` VALUES ('85', 'admin', '1589687365', '127.0.0.1');
INSERT INTO `admin_login` VALUES ('86', 'kefu', '1589687712', '127.0.0.1');
INSERT INTO `admin_login` VALUES ('87', 'kefu', '1589689078', '127.0.0.1');
INSERT INTO `admin_login` VALUES ('88', 'kefu', '1589689281', '127.0.0.1');
INSERT INTO `admin_login` VALUES ('89', 'admin', '1589867865', '127.0.0.1');
INSERT INTO `admin_login` VALUES ('90', 'kefu', '1589949898', '127.0.0.1');

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
INSERT INTO `cat` VALUES ('8', '贷款申请', '贷款申请', '1529387793', '0', '1', '', '贷款申请', '贷款申请', 'http://two.jinziyu.club/Upload/image/20191102/20191102232811_36065.png');
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='业务员邀请码推广表';

-- ----------------------------
-- Records of invitation
-- ----------------------------
INSERT INTO `invitation` VALUES ('2', '4241', 'LLBC856954', '2019-11-01 22:07:42');

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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

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

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `money` float NOT NULL DEFAULT '0',
  `months` int(11) NOT NULL DEFAULT '0',
  `monthmoney` float NOT NULL,
  `donemonth` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '9',
  `pid` int(11) NOT NULL,
  `ordernum` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `fowardstatus` int(2) NOT NULL DEFAULT '0' COMMENT '1:已提交 0：未提交',
  `foward` varchar(255) NOT NULL DEFAULT '',
  `banknum` varchar(255) NOT NULL,
  `yzpz_img` varchar(255) NOT NULL COMMENT '验资费凭证图片',
  `qb` int(11) NOT NULL DEFAULT '0',
  `is_bank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('9', '13227547578', null, '30000', '12', '2680', '0', '1577345772', '2', '1', 'IC26457728925031', '农业银行', '0', '', '6228480759796251677', '', '0', '0');
INSERT INTO `order` VALUES ('31', '15579161111', null, '50000', '12', '4467', '0', '1577785111', '12', '1', 'IC31851112189286', '浦发银行', '0', '', '49843200366487155', '', '0', '0');
INSERT INTO `order` VALUES ('8', '18031927965', null, '30000', '12', '2680', '0', '1577344187', '2', '1', 'IC26441873333460', '农业银行', '0', '', '6228480639120567073', '', '0', '0');
INSERT INTO `order` VALUES ('10', '15256233230', null, '90000', '12', '8040', '0', '1577421705', '2', '1', 'IC27217056421025', '工商银行', '0', '', '6222031302004206121', '', '0', '1');
INSERT INTO `order` VALUES ('11', '13222701199', null, '30000', '36', '1014', '0', '1577422326', '2', '1', 'IC27223262812508', '工商银行', '0', '', '6215581110003363498', '', '0', '0');
INSERT INTO `order` VALUES ('12', '15815709239', null, '50000', '12', '4467', '0', '1577427982', '2', '1', 'IC27279823655318', '招商银行', '0', '', '6214837605203987', '', '0', '0');
INSERT INTO `order` VALUES ('13', '13899409562', null, '30000', '36', '1014', '0', '1577429407', '-2', '1', 'IC27294070974135', '农业银行', '0', '', '6228483008354592974', '', '0', '0');
INSERT INTO `order` VALUES ('15', '15089351761', null, '30000', '12', '2680', '0', '1577435145', '2', '1', 'IC27351457664513', '建设银行', '0', '', '6236683260003260450', '', '0', '0');
INSERT INTO `order` VALUES ('24', '15702933428', null, '30000', '24', '1430', '0', '1577604486', '-2', '1', 'IC29044861297712', '建设银行', '0', '', '6217004220034689210', '', '0', '0');
INSERT INTO `order` VALUES ('25', '15021770972', null, '30000', '12', '2680', '0', '1577604493', '-2', '1', 'IC29044933358656', '工商银行', '0', '', '6215581804005151543', '', '0', '0');
INSERT INTO `order` VALUES ('26', '13733608333', null, '50000', '24', '2384', '0', '1577608573', '-2', '1', 'IC29085730262937', '邮储银行', '0', '', '6217995030015350786', '', '0', '0');
INSERT INTO `order` VALUES ('20', '18735543883', null, '30000', '12', '2680', '0', '1577507408', '-2', '1', 'IC28074086891424', '浦发银行', '0', '', '6217923270360950', '', '0', '0');
INSERT INTO `order` VALUES ('21', '13833078840', null, '30000', '36', '1014', '0', '1577516186', '-1', '1', 'IC28161863505690', '农业银行', '0', '', '6228481268349189672', '', '0', '0');
INSERT INTO `order` VALUES ('27', '18569296287', null, '30000', '36', '1014', '0', '1577688110', '-2', '1', 'IC30881103248735', '建设银行', '0', '', '6217002920139319892', '', '0', '0');
INSERT INTO `order` VALUES ('29', '13613183210', null, '52000', '36', '1757', '0', '1577771369', '-1', '1', 'IC31713697199709', '建设银行', '0', '', '6217000160002835482', '', '0', '0');
INSERT INTO `order` VALUES ('30', '15830485640', null, '30000', '12', '2680', '0', '1577772387', '-1', '1', 'IC31723873405535', '工商银行', '0', '', '6212260407003672604', '', '0', '0');
INSERT INTO `order` VALUES ('32', '15195523807', null, '63000', '36', '2128', '0', '1577852057', '-2', '1', 'J101520570370348', '中国银行', '0', '', '6215678100040883008', '', '0', '0');
INSERT INTO `order` VALUES ('42', '13681794059', '33', '128000', '36', '4324', '0', '1578276647', '2', '1', 'J106766471376337', '建设银行', '0', '', '6217001180037804575', '', '0', '0');
INSERT INTO `order` VALUES ('35', '18359838207', null, '50000', '36', '1689', '0', '1577949175', '-2', '1', 'J102491756662151', '建设银行', '0', '', '6217001830028411893', '', '0', '0');
INSERT INTO `order` VALUES ('37', '18865186593', null, '30000', '36', '1014', '0', '1578018809', '-2', '1', 'J103188098565966', '工商银行', '0', '', '6212261712006157233', '', '0', '0');
INSERT INTO `order` VALUES ('49', '13257744517', '33', '21000', '12', '1876', '0', '1586247395', '2', '1', 'J407473951465638', '工商银行', '0', '', '887885', '', '10000', '1');
INSERT INTO `order` VALUES ('45', '17791797821', '33', '300000', '12', '26800', '0', '1578287981', '2', '1', 'J106879818853154', '工商银行', '0', '', '6216693600003336836', '', '0', '0');
INSERT INTO `order` VALUES ('47', '15706790550', null, '20000', '12', '1787', '0', '1578358828', '12', '1', 'J107588285769093', '中信银行', '0', '', '6217731302511544', '', '0', '0');
INSERT INTO `order` VALUES ('50', '18956501550', null, '20000', '12', '1787', '0', '1589610282', '2', '1', 'J516102829007614', '工商银行', '0', '', '12312312312312312312', '', '10', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='提现表';

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
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=utf8;

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
INSERT INTO `spread` VALUES ('1', '通道1	', 'http://4d10e.ftfers.887f.cn/index.php?m=User&a=rlx&td=1', '0', '0', '0', '0', '2020-05-16 09:35:04');

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
  `status` int(1) NOT NULL DEFAULT '1',
  `codes` varchar(255) DEFAULT NULL COMMENT '邀请码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('9', null, null, '15579161111', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', null, '0', '0', null, '0', '1577422190', '1', null);
INSERT INTO `user` VALUES ('3', null, null, '13227547578', '0747ba547fbc1b06d93d64c1fe606a2d729c1f88', null, '0', '0', null, '0', '1577270708', '1', '0');
INSERT INTO `user` VALUES ('4', null, null, '18031927965', '111e582bcf5d88f67e46c13944b7c83d2066038c', null, '0', '0', null, '0', '1577342789', '1', '0');
INSERT INTO `user` VALUES ('5', null, null, '13222701199', '438751b5581e229111f0f21a7cc89f40384d6e81', null, '0', '0', null, '0', '1577421187', '1', '0');
INSERT INTO `user` VALUES ('6', null, null, '15256233230', 'b964800f273c7bebfbd314ce168735addb2d84c3', null, '0', '0', null, '0', '1577421296', '1', '0');
INSERT INTO `user` VALUES ('14', null, null, '18735543883', 'cadf1711199cdf1e0446254213d9074e700e85f5', null, '0', '0', null, '0', '1577501523', '1', '0');
INSERT INTO `user` VALUES ('10', null, null, '15815709239', 'a3c182ff36d058f055f9cbd51f1a05b4858248c4', null, '0', '0', null, '0', '1577426873', '1', '0');
INSERT INTO `user` VALUES ('11', null, null, '13899409562', 'a7ee86605e6d815b3842aa1ff6e51b943edbce2f', null, '0', '0', null, '0', '1577427903', '1', '0');
INSERT INTO `user` VALUES ('15', null, null, '18475324511', '8d0133904a18dbee7cc65a2133c0496f5ee784e7', null, '0', '0', null, '0', '1577507545', '1', '0');
INSERT INTO `user` VALUES ('16', null, null, '13833078840', 'acf58f68f25710c5d619b0e9a3894d3cd7e76776', null, '0', '0', null, '0', '1577514131', '1', '0');
INSERT INTO `user` VALUES ('17', null, null, '13571699708', 'f38d3191a6f3506f889eb93a0ad1c99256090ba1', null, '0', '0', null, '0', '1577595118', '1', '0');
INSERT INTO `user` VALUES ('18', null, null, '15702933428', '534f0e3b9fe28872be1c2140f65901f5a830f176', null, '0', '0', null, '0', '1577600460', '1', '0');
INSERT INTO `user` VALUES ('19', null, null, '15021770972', '762a14f9ccd8b0b8519d892ffb9775b6b31b6795', null, '0', '0', null, '0', '1577603409', '1', '0');
INSERT INTO `user` VALUES ('20', null, null, '13733608333', 'ae13208a7ed95b514b0629bce6577f4d36afe91b', null, '0', '0', null, '0', '1577606244', '1', '0');
INSERT INTO `user` VALUES ('21', null, null, '18518115260', '305ac4cd15aeb2a094026248e829163d9993b88a', null, '0', '0', null, '0', '1577671257', '1', '0');
INSERT INTO `user` VALUES ('22', null, null, '18569296287', 'e0c720c83d692665999b9fd8230377b33bd0c72d', null, '0', '0', null, '0', '1577687229', '1', '0');
INSERT INTO `user` VALUES ('43', 'kefu', '33', '15918476606', '769bb589287f8bc6d7c45c2e205a5798a738047e', null, '0', '0', null, '0', '1578305065', '0', '0');
INSERT INTO `user` VALUES ('24', null, null, '13613183210', 'e479ddaa22e2058a0489f9d9f025fba8efe57faf', null, '0', '0', null, '0', '1577770833', '1', '0');
INSERT INTO `user` VALUES ('25', null, null, '15830485640', '64b8aa1a6153799b0391b38ff6aac66148d37394', null, '0', '0', null, '0', '1577771738', '1', '0');
INSERT INTO `user` VALUES ('40', 'kefu', '33', '15126782331', '048e7aafe2e5e4a2a1a372082954d2eebf6d3a64', null, '0', '0', null, '0', '1578204780', '1', '0');
INSERT INTO `user` VALUES ('41', 'kefu', '33', '17791797821', 'a511f545295b66e672b357999749551fac8cbdc7', null, '0', '0', null, '0', '1578276023', '1', '0');
INSERT INTO `user` VALUES ('28', null, null, '15195523807', 'a1d61fd349d3d8d257dae90339e69d0f319729d0', null, '0', '0', null, '0', '1577851430', '1', '0');
INSERT INTO `user` VALUES ('30', null, null, '18834478477', 'fe9b86978ec92e01af838b3bc9d6ed636fb38c12', null, '0', '0', null, '0', '1577862812', '1', '0');
INSERT INTO `user` VALUES ('31', null, null, '15706790550', '0286d2c0563aa4b8c62440ad6ccc0e8c15621923', null, '0', '0', null, '0', '1577863865', '1', '0');
INSERT INTO `user` VALUES ('32', null, null, '13668514505', 'de110c2030db320a675126043455c6095aafd54f', null, '0', '0', null, '0', '1577872121', '1', '0');
INSERT INTO `user` VALUES ('45', null, null, '13780000892', '10470c3b4b1fed12c3baac014be15fac67c6e815', '123456', '0', '0', null, '1', '1579161218', '1', '0');
INSERT INTO `user` VALUES ('34', null, null, '18359838207', 'd52109df8e960ea9dd44fd1341279fd823e2edf7', null, '0', '0', null, '0', '1577947789', '1', '0');
INSERT INTO `user` VALUES ('35', null, null, '18865186593', '9ef158f1dfccaad030ec1b243f71ef8fae8cb7c8', null, '0', '0', null, '0', '1577948407', '0', '0');
INSERT INTO `user` VALUES ('36', 'kefu', '33', '13841354168', 'a5d570de86ab4dae7b7be98d83e5a4e865dc713e', null, '0', '0', null, '0', '1577953082', '1', '0');
INSERT INTO `user` VALUES ('44', 'kefu', '33', '13681794059', '8d0133904a18dbee7cc65a2133c0496f5ee784e7', null, '0', '0', null, '0', '1578455811', '1', '0');
INSERT INTO `user` VALUES ('46', null, null, '13479628995', '10470c3b4b1fed12c3baac014be15fac67c6e815', null, '0', '0', null, '0', '1582041136', '1', '0');
INSERT INTO `user` VALUES ('47', null, null, '18930872298', '0d33f4798bf05770e15e0543720c7d00ddf1af5e', '123456', '0', '0', null, '0', '1582448394', '1', '0');
INSERT INTO `user` VALUES ('51', 'kefu', '33', '13257744517', '10470c3b4b1fed12c3baac014be15fac67c6e815', '111111', '0', '0', null, '0', '1584951254', '0', '0');
INSERT INTO `user` VALUES ('52', null, null, '18359202476', 'ff1febecf0d4bb524e65a7d1b9582c0faaa6b78d', null, '0', '0', null, '0', '1585510839', '1', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '16556896331', '刘锦', '420922199511015711', 'http://hld.qingman.wang/Upload/image/20191222/20191222214225_81034.jpg', 'http://hld.qingman.wang/Upload/image/20191222/20191222214247_22599.jpg', 'http://hld.qingman.wang/Upload/image/20191222/20191222214321_72989.jpg', '广东省 深圳市 罗湖区', '广州深圳', '广州恒大', '广东省 深圳市 罗湖区', '广州深圳罗湖', '经理', '6', '6217025238466612553', '工商银行', '0', '0', '', '8000', '刘锦', '16556896331', '16556896331', '刘锦', '16556896331', '兄妹', '610', '16556896331', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('2', '15579161111', '刘田', '423303199604123656', 'http://hld.qingman.wang/Upload/image/20191225/20191225094844_95794.jpg', 'http://hld.qingman.wang/Upload/image/20191225/20191225094859_44084.jpg', 'http://hld.qingman.wang/Upload/image/20191225/20191225094915_36455.jpg', '辽宁省 沈阳市 沈河区', '群明明掐指一算', '明年', '辽宁省 沈阳市 和平区', '寂寞千与千寻 网球王子', '还以为', '5', '49843200366487155', '浦发银行', '0', '0', '6799799797', '50000', '54597', '1369799797979', '同事', '55767', '15569799797', '同事', '556', '64699797', '大专', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('3', '13227547578', '张贵良', '420621196412022231', 'http://hld.qingman.wang/Upload/image/20191225/20191225184926_93072.jpg', 'http://hld.qingman.wang/Upload/image/20191225/20191225184950_36577.jpg', 'http://hld.qingman.wang/Upload/image/20191225/20191225185045_54467.jpg', '湖北省 襄阳市 襄州区', '张家集镇梅铺村二', '贵良生猪养殖专业合作社', '湖北省 襄阳市 襄州区', '张家集镇梅铺村二组', '法人代表', '10', '6228480759796251677', '农业银行', '0', '0', '13476371680', '30000', '王志英', '13871736023', '同事', '张艳涛', '15597275334', '朋友', '550', '988988', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('4', '18031927965', '王晓雪', '130185198911211832', 'http://hld.qingman.wang/Upload/image/20191226/20191226150021_60011.jpg', 'http://hld.qingman.wang/Upload/image/20191226/20191226150055_85605.jpg', 'http://hld.qingman.wang/Upload/image/20191226/20191226150122_16791.jpg', '河北省 石家庄市 鹿泉市', '李村镇西小壁村富康街十八巷7号', '韩书军', '河北省 石家庄市 鹿泉市', '李村镇王村垃圾站旁边', '司机', '2', '6228480639120567073', '农业银行', '0', '0', '', '7000', '王林山', '15830672665', '父母', '周顶', '14785136572', '同事', '587', '18031927965', '初中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('5', '13222701199', '郭小连', '320826197608263217', 'http://hld.qingman.wang/Upload/image/20191227/20191227123745_78953.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227123830_70539.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227123934_12695.jpg', '江苏省 淮安市 涟水县', '江苏省涟水县方渡乡', '南通市达欣工程有限公司', '江苏省 无锡市 锡山区', '江苏省无锡市锡山区云林苑', '安装空调', '10', '6215581110003363498', '工商银行', '0', '0', '', '8000', '郭根林', '19805031998', '兄妹', '曹梅方', '17715622366', '父母', '541', '13222701199', '初中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('6', '15256233230', '王新杰', '342601198009010658', 'http://hld.qingman.wang/Upload/image/20191227/20191227123538_88818.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227123552_87030.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227123612_73211.jpg', '安徽省 合肥市 巢湖市', '巢湖市凤凰山路凤凰名城5栋1301', '巢湖市中陵交通工程设施有限公司', '安徽省 合肥市 巢湖市', '巢湖市半汤崌嶂社区紫薇路9号', '中层', '15', '6222031302004206121', '工商银行', '0', '0', '', '16780', '邓胜男', '13955251854', '同事', '王子龙', '15155763137', '朋友', '680', '15256233230', '大学', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('7', '15826823612', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('8', '15815709239', '邱华通', '4441781199309083554', 'http://hld.qingman.wang/Upload/image/20191227/20191227141556_60450.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227141617_70331.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227141804_62006.jpg', '广东省 中山市', '中山市三乡镇鸦岗村安庆街三巷62号', '中山三乡镇保安服务公司', '广东省 中山市', '中山市三乡镇建设路六号', '保安服务', '1', '6214837605203987', '招商银行', '0', '0', '076086685123', '5500', '何冬梅', '15815709239', '父母', '邱华权', '13539216931', '兄妹', '564', '15815709239', '中专', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('9', '13899409562', '加那尔古丽·哈米', '654325198102251164', 'http://hld.qingman.wang/Upload/image/20191227/20191227143526_67662.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227143610_87393.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227143739_25170.jpg', '新疆 阿勒泰地区 青河县', '青龙湖小区七号楼三单元304', '青河镇政府', '新疆 阿勒泰地区 青河县', '青河县青龙湖小区七号楼三单元304', '社保专干', '10', '6228483008354592974', '农业银行', '0', '0', '09068824372', '3000', '马依拉·哈米', '18097522419', '兄妹', '库丽孜依帕·加那尔', '18097526934', '朋友', '100', '无', '中专', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('10', '15089351761', '黄武雄', '445281198705202895', 'http://hld.qingman.wang/Upload/image/20191227/20191227161616_29812.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227161641_77107.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227161651_50021.jpg', '广东省 揭阳市 普宁市', '洪阳镇钱湖村新村23号之1', '东市水果行', '广东省 揭阳市 普宁市', '流沙后坛路口往东市三鸟市场方向50米', '老板', '10', '6236683260003260450', '建设银行', '0', '0', '06632161576', '10000', '老夏', '18718468700', '同事', '水果姨', '13620286869', '朋友', '616', '15089351761', '初中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('11', '18265643628', '刘文建', '220603197107281167x', 'http://hld.qingman.wang/Upload/image/20191227/20191227172846_61446.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227172820_72944.jpg', 'http://hld.qingman.wang/Upload/image/20191227/20191227172752_57431.jpg', '山东省 潍坊市 青州市', '山东省潍坊市青州市老汽车站西街1188号', '山东省潍坊市青州市玉溪木业有限公司', '山东省 潍坊市 青州市', '山东省潍坊市青州市益都办事处西张村157号', '生产厂长', '9', '6228480218695284073', '农业银行', '0', '0', '05363589230', '8000', '刘娣', '13943981765', '兄妹', '王伟', '13780852017', '同事', '603', '18265643628', '大专', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('12', '18735543883', '王鹏军', '140423197910203616', 'http://hld.qingman.wang/Upload/image/20191228/20191228105332_53260.jpg', 'http://hld.qingman.wang/Upload/image/20191228/20191228105341_74121.jpg', 'http://hld.qingman.wang/Upload/image/20191228/20191228105427_57140.jpg', '山西省 长治市 襄垣县', '王桥镇安宁村', '七一善福', '山西省 长治市 襄垣县', '襄垣县善福乡', '班长', '2', '6217923270360950', '浦发银行', '0', '0', '7469686', '8000', '王永太', '13834773796', '父母', '王耀华', '13734230546', '朋友', '637', '18735543883', '中专', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('13', '18475324511', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('14', '13833078840', '杨红娜', '130634197609071384', 'http://hld.qingman.wang/Upload/image/20191228/20191228142716_58958.jpg', 'http://hld.qingman.wang/Upload/image/20191228/20191228142746_78864.jpg', 'http://hld.qingman.wang/Upload/image/20191228/20191228143936_55794.jpg', '河北省 保定市 曲阳县', '西苑新区', '时尚鞋吧', '河北省 保定市 曲阳县', '西街南路7条12号', '老板', '10', '6228481268349189672', '农业银行', '0', '0', '', '18000', '杨鹏欣', '13111673015', '朋友', '雷果子', '13102999130', '父母', '633', '13833078840', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('15', '13571699708', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('16', '15021770972', '王陈林', '420624198803131839', 'http://hld.qingman.wang/Upload/image/20191229/20191229151134_59556.jpg', 'http://hld.qingman.wang/Upload/image/20191229/20191229151150_84882.jpg', 'http://hld.qingman.wang/Upload/image/20191229/20191229151238_34989.jpg', '上海市 上海市 浦东新区', '丽正路1515号', '上海金盾特种车辆装备有限公司', '上海市 上海市 浦东新区', '丽正路1515号', '普工', '7', '6215581804005151543', '工商银行', '0', '0', '', '6000', '王千菊', '15072252718', '父母', '李光成', '18621535828', '同事', '588', '18771501163', '中专', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('17', '15702933428', '侯秦安', '61010219630915063X', 'http://hld.qingman.wang/Upload/image/20191229/20191229152005_16935.jpg', 'http://hld.qingman.wang/Upload/image/20191229/20191229152016_68529.jpg', 'http://hld.qingman.wang/Upload/image/20191229/20191229152209_73730.jpg', '陕西省 西安市 新城区', '康宁里小区2号楼1单元6层22号', '西安朱雀国家森林公园有限公司', '陕西省 西安市 户县', '涝峪八里坪', '员工', '6', '6217004220034689210', '建设银行', '0', '0', '02984970888', '4500', '侯胜才', '18634592901', '兄妹', '郭宏嘉', '18034295883', '同事', '613', '15702933420', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('18', '13733608333', '张二显', '410426196507110516', 'http://hld.qingman.wang/Upload/image/20191229/20191229161920_20386.jpg', 'http://hld.qingman.wang/Upload/image/20191229/20191229161943_55937.jpg', 'http://hld.qingman.wang/Upload/image/20191229/20191229162024_59668.jpg', '河南省 许昌市 长葛市', '视察路东段', '个体户', '河南省 许昌市 长葛市', '和尚桥镇于井村', '老板', '15', '6217995030015350786', '邮储银行', '0', '0', '', '5000', '张文豪', '15893751819', '同事', '丁书民', '13603746633', '朋友', '643', '13733608333', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('19', '18518115260', '1', '1', 'http://hld.qingman.wang/Upload/image/20200107/20200107185553_36095.png', 'http://hld.qingman.wang/Upload/image/20200107/20200107185602_41042.png', 'http://hld.qingman.wang/Upload/image/20200107/20200107185623_23187.png', '北京市 北京市 东城区', '具体', '1', '北京市 北京市 东城区', '2', '1', '2', '123456789123456789', '工商银行', '0', '0', '', '18888', '具体', '1', '父母', '你', '22', '同事', '1', '1', '1', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('20', '18569296287', '李新农', '43052819890526305X', 'http://hld.qingman.wang/Upload/image/20191230/20191230142759_38212.jpg', 'http://hld.qingman.wang/Upload/image/20191230/20191230142809_43997.jpg', 'http://hld.qingman.wang/Upload/image/20191230/20191230142822_63969.jpg', '湖南省 邵阳市 新宁县', '金石镇马江村龙口组', '伟力振升颐人门窗厂', '湖南省 邵阳市 新宁县', '金石镇永安工业园', '员工', '3', '6217002920139319892', '建设银行', '0', '0', '', '8000', '刘晓丽', '18874213396', '同事', '徐海玲', '15992785719', '朋友', '602', '18569296287', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('21', '15016665056', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('22', '13613183210', '杨宝巨', '131122197108270412', 'http://hld.qingman.wang/Upload/image/20191231/20191231134114_23001.jpeg', 'http://hld.qingman.wang/Upload/image/20191231/20191231134128_99448.jpeg', 'http://hld.qingman.wang/Upload/image/20191231/20191231134200_73237.jpg', '河北省 衡水市 桃城区', '丽都花苑5幢二单元202', '衡水市桃城区德谦茶店', '河北省 衡水市 桃城区', '永兴东路2182号', '法人', '3', '6217000160002835482', '建设银行', '0', '0', '03186666164', '10000', '杨军', '18903286050', '兄妹', '张存武', '13932838932', '朋友', '654', '13613183210', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('23', '15830485640', '郭爱娜', '131181198310020964', 'http://hld.qingman.wang/Upload/image/20191231/20191231135804_72026.jpg', 'http://hld.qingman.wang/Upload/image/20191231/20191231135822_89766.jpg', 'http://hld.qingman.wang/Upload/image/20191231/20191231135905_34496.jpg', '河北省 衡水市 桃城区', '榕花北大街惠丰家园二号楼二单元三零二室', '衡水市桃城区德歉茶店', '河北省 衡水市 桃城区', '永兴东路德歉茶店2182号', '销售部经理', '3', '6212260407003672604', '工商银行', '0', '0', '', '6000', '王新贞', '15132845670', '同事', '付婷', '15130879492', '兄妹', '593', '15830485640', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('24', '15690571917', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('25', '13912808084', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('26', '15195523807', '丨吴贵兵', '320925195909090014', 'http://hld.qingman.wang/Upload/image/20200101/20200101120448_88529.jpg', 'http://hld.qingman.wang/Upload/image/20200101/20200101120457_93338.jpeg', 'http://hld.qingman.wang/Upload/image/20200101/20200101120517_50246.jpg', '江苏省 盐城市 建湖县', '近湖镇万福新村36幢108室', '建湖县贸易办公室', '江苏省 盐城市 建湖县', '人民南路210号', '综合科负责人', '12', '6215678100040883008', '中国银行', '0', '0', '051585361570', '5500', '金寅泰', '15962021158', '同事', '石云', '15161908699', '兄妹', '598', '13813225628', '大专', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('27', '13477293077', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('28', '18834478477', '张小艾', '142702198901275520', 'http://hld.qingman.wang/Upload/image/20200101/20200101151431_54304.jpg', 'http://hld.qingman.wang/Upload/image/20200101/20200101151450_37899.jpg', 'http://hld.qingman.wang/Upload/image/20200101/20200101151529_67229.jpg', null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('29', '15706790550', '陈玲光', '352224197812115918', 'http://hld.qingman.wang/Upload/image/20200102/20200102122012_73155.jpg', 'http://hld.qingman.wang/Upload/image/20200102/20200102122116_67165.jpg', 'http://hld.qingman.wang/Upload/image/20200103/20200103134753_41681.jpg', '浙江省 温州市 苍南县', '凤池88号', '精武门', '浙江省 温州市 苍南县', '苍南县灵溪镇二中东路125号', '木工', '20', '6217731302511544', '中信银行', '0', '0', '13091953350', '15000', '陈存福', '15167733414', '兄妹', '陈玲紫怡', '13868336581', '朋友', '580', '15706790550', '小学', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('30', '13668514505', '余先国', '522725198102283511', 'http://hld.qingman.wang/Upload/image/20200101/20200101175100_62326.jpg', 'http://hld.qingman.wang/Upload/image/20200101/20200101175135_10765.jpg', 'http://hld.qingman.wang/Upload/image/20200101/20200101175242_57903.jpg', '贵州省 贵阳市 云岩区', '贵乌北路20号', '余先国粉面馆', '贵州省 贵阳市 云岩区', '贵乌北路20号', '负责人', '1', '6212262402019763263', '工商银行', '0', '0', '085185616718', '12000', '余先平', '15286209581', '兄妹', '赵成林', '13984168799', '朋友', '587', '13668514505', '大专', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('31', '18637179846', '王超', '41082519830808601X', 'http://hld.qingman.wang/Upload/image/20200102/20200102101256_53877.jpg', 'http://hld.qingman.wang/Upload/image/20200102/20200102101332_10850.jpg', 'http://hld.qingman.wang/Upload/image/20200102/20200102101355_78073.jpg', '陕西省 西安市 未央区', '保利拉菲公馆南区21号楼2单元304', '陕西德胜合建筑劳务有限公司', '陕西省 西安市 灞桥区', '东湖路中新浐灞半岛A15区13栋一单元10层', '部门经理', '10', '6222620260019409068', '交通银行', '0', '0', '', '20000', '冯菲', '13733853854', '朋友', '王满仓', '13259884158', '父母', '707', '18637179846', '本科', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('32', '18359838207', '蒋海军', '350582198710105594', 'http://hld.qingman.wang/Upload/image/20200102/20200102145102_18355.jpg', 'http://hld.qingman.wang/Upload/image/20200102/20200102145116_52046.jpg', 'http://hld.qingman.wang/Upload/image/20200102/20200102145211_83141.jpg', '福建省 泉州市 晋江市', '福建省晋江市金井镇福全村北区62号', '石圳东方骆驼', '福建省 泉州市 晋江市', '石圳村东方骆驼', '管理员', '7', '6217001830028411893', '建设银行', '0', '0', '0595', '6500', '蒋福利', '15959547426', '父母', '蔡荣图', '15960777143', '朋友', '530', '18359838207', '初中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('33', '18865186593', '刘田田', '371522198605079679', 'http://hld.qingman.wang/Upload/image/20200103/20200103103019_40597.jpg', 'http://hld.qingman.wang/Upload/image/20200103/20200103103107_31784.jpg', 'http://hld.qingman.wang/Upload/image/20200103/20200103103204_39095.jpg', '山东省 聊城市 莘县', '古云镇刘楼村68号', '山东九鼎新材料有限公司', '山东省 聊城市 莘县', '古云镇祥云街1号', '员工', '3', '6212261712006157233', '工商银行', '0', '0', '', '6000', '罗进美', '15106865954', '父母', '孙来威', '15166587183', '朋友', '635', '774864086@qq.com', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('34', '13841354168', '李铁滨', '210403197109270912', 'http://hld.qingman.wang/Upload/image/20200102/20200102162019_13429.jpg', 'http://hld.qingman.wang/Upload/image/20200102/20200102162041_72674.jpg', 'http://hld.qingman.wang/Upload/image/20200102/20200102162156_26495.jpg', '辽宁省 抚顺市 东洲区', '辽宁省抚顺市东洲区万新街13号楼2单元103', '方顺超市', '辽宁省 抚顺市 东洲区', '辽宁省抚顺市东洲区万新街', '经理', '13', '6212260705001989627', '工商银行', '0', '0', '02454300126', '7', '李俊梅', '15694136368', '兄妹', '李永伟', '15641347895', '朋友', '564', '13841354168', '大专', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('35', '18423207030', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('36', '13858718214', '周大呀', '330327197707102882', 'http://hld.qingman.wang/Upload/image/20200104/20200104164400_64479.jpeg', 'http://hld.qingman.wang/Upload/image/20200104/20200104164420_73364.jpeg', 'http://hld.qingman.wang/Upload/image/20200104/20200104164720_27506.jpeg', '浙江省 温州市 苍南县', '银苑大厦30F', '温州国豪工艺品进出口有限公司', '浙江省 温州市 苍南县', '苍南县龙港镇世纪大道699弄4-6栋第六层', '销售部门经理', '8', '6228410334548907672', '农业银行', '0', '0', '057768588188', '8000', '吕心晨', '15257711153', '同事', '黄祖喜', '13262397488', '朋友', '550', '13858718214', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('37', '13681794059', '高继林', '342422196609108554', 'http://hld.qingman.wang/Upload/image/20200105/20200105131736_68741.jpg', 'http://hld.qingman.wang/Upload/image/20200105/20200105131757_16471.jpg', 'http://hld.qingman.wang/Upload/image/20200105/20200105131844_93234.jpg', '上海市 上海市 浦东新区', '华夏东路860弄6号702', '温州国豪工艺品进出口有限公司', '浙江省 温州市 苍南县', '苍南县龙港镇世纪大道699弄4-6号四幢第六层', '经理', '20', '6217001180037804575', '建设银行', '0', '0', '057768588188', '15000', '高翔', '13524973222', '父子', '宋桂兵', '13120677322', '同事', '675', '13681794059', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('38', '15126782331', '闻金春', '532621198602180712', 'http://hld.qingman.wang/Upload/image/20200105/20200105141837_41276.jpg', 'http://hld.qingman.wang/Upload/image/20200105/20200105141844_20321.jpg', 'http://hld.qingman.wang/Upload/image/20200105/20200105141921_28801.jpg', '云南省 文山壮族苗族自治州 文山县', '文山市追栗街镇硝厂村二村', '个体', '云南省 文山壮族苗族自治州 文山县', '文山市追栗街镇硝厂村二村', '个体', '1', null, null, '0', '0', '18126782331', '4500', '闻凯生', '15187112191', '父母', '李金成', '18387614283', '朋友', '593', '15126782331', '初中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('39', '17791797821', '刘备', '1387584955684888846', 'http://hld.qingman.wang/Upload/image/20200106/20200106100151_30494.png', 'http://hld.qingman.wang/Upload/image/20200106/20200106100204_56796.jpg', 'http://hld.qingman.wang/Upload/image/20200106/20200106100224_30005.jpg', '河北省 石家庄市 桥东区', '太让我伤心', '视屏', '北京市 北京市 东城区', '积木去', '视屏', '5', '6216693600003336836', '工商银行', '0', '0', '02138580587', '15000', '李华', '15125153779', '同事', '老虎', '13524179465', '兄妹', '650', '15144499941', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('40', '18361837377', '时平静', '321281199403087477', 'http://hld.qingman.wang/Upload/image/20200106/20200106125618_46065.jpeg', 'http://hld.qingman.wang/Upload/image/20200106/20200106125618_29280.jpeg', 'http://hld.qingman.wang/Upload/image/20200106/20200106125853_65635.jpeg', '江苏省 扬州市 邗江区', '文汇苑A区4栋904', '邗江区米粒儿童摄影店', '江苏省 扬州市 邗江区', '文汇西路永安综合楼104', '店长', '3', '6217231115000334574', '工商银行', '0', '0', '051489993346', '20000', '安安', '18762348887', '同事', '吴传亮', '18752347897', '同事', '650', '18762348886', '大专', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('41', '15918476606', '熊红才', '429006196808292133', 'http://hld.qingman.wang/Upload/image/20200106/20200106183809_37735.jpg', 'http://hld.qingman.wang/Upload/image/20200106/20200106183820_20974.jpg', 'http://hld.qingman.wang/Upload/image/20200106/20200106184017_44391.jpg', '广东省 广州市 海珠区', '广册市海珠区西约南大街二巷36号', '温问州国豪工艺品进出口有限公司', '浙江省 温州市 鹿城区', '巷南县龙港镇世纪大道699弄4-6号四幢', '员工', '5', '6217003320045804674', '建设银行', '0', '0', '057768588188', '8500', '熊良才', '13938898527', '兄妹', '万胜波', '15622794186', '朋友', '675', '15918476606', '高中', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('42', '13780000892', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('43', '18930872298', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('44', '15757851836', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('45', '15258234501', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('46', '15559763298', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('47', '13257744517', '孙嘉彬', '610104198202176137', 'http://hld.qingman.wang/Upload/image/20200323/20200323161734_95432.png', 'http://hld.qingman.wang/Upload/image/20200323/20200323161749_72758.png', 'http://hld.qingman.wang/Upload/image/20200323/20200323161759_24788.png', '北京市 北京市 东城区', '脚手架', '我们', '北京市 北京市 东城区', '我们就没有办法', '我们', '10', '887885', '工商银行', '0', '0', '', '10000', '一直都', '13100000000', '父母', '我们的', '13666666666', '父母', '1212', '12345', '我们', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('48', '18359202476', null, null, null, null, null, null, null, null, null, null, null, null, '62366837600651876528', '工商银行', '0', '0', null, null, null, null, null, null, null, null, null, null, '', '0', '0', '0');
INSERT INTO `userinfo` VALUES ('49', '18956501550', '唐大帅', '43110299405112756', 'http://get-money.im/Upload/image/20200516/20200516142235_49358.jpg', 'http://get-money.im/Upload/image/20200516/20200516142238_33966.jpg', 'http://get-money.im/Upload/image/20200516/20200516142243_84704.jpeg', '湖南省 长沙市 芙蓉区', '斯达舒大撒多', '腾讯', '湖南省 长沙市 芙蓉区', '大发大打发', '程序猿', '5', '12312312312312312312', '工商银行', '0', '0', '', '10000', '爱的发的是', '1231231231231', '父母', '打发', '123123123121', '同事', '760', '121231123131', '本科', '0', '0', '0');

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
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '生成日期',
  `huantime` date NOT NULL DEFAULT '0000-00-00' COMMENT '还款日期',
  `paytime` datetime DEFAULT NULL COMMENT '客户支付日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1549 DEFAULT CHARSET=utf8 COMMENT='还款列表订单';

-- ----------------------------
-- Records of voucher
-- ----------------------------
INSERT INTO `voucher` VALUES ('24', '13268371295', 'IB15970644060114', '300000', '12', '12', '26800', '', '0', '2019-11-15 13:52:47', '2020-11-15', null);
INSERT INTO `voucher` VALUES ('23', '13268371295', 'IB15970644060114', '300000', '12', '11', '26800', '', '0', '2019-11-15 13:52:47', '2020-10-15', null);
INSERT INTO `voucher` VALUES ('22', '13268371295', 'IB15970644060114', '300000', '12', '10', '26800', '', '0', '2019-11-15 13:52:47', '2020-09-15', null);
INSERT INTO `voucher` VALUES ('21', '13268371295', 'IB15970644060114', '300000', '12', '9', '26800', '', '0', '2019-11-15 13:52:47', '2020-08-15', null);
INSERT INTO `voucher` VALUES ('20', '13268371295', 'IB15970644060114', '300000', '12', '8', '26800', '', '0', '2019-11-15 13:52:47', '2020-07-15', null);
INSERT INTO `voucher` VALUES ('19', '13268371295', 'IB15970644060114', '300000', '12', '7', '26800', '', '0', '2019-11-15 13:52:47', '2020-06-15', null);
INSERT INTO `voucher` VALUES ('18', '13268371295', 'IB15970644060114', '300000', '12', '6', '26800', '', '0', '2019-11-15 13:52:47', '2020-05-15', null);
INSERT INTO `voucher` VALUES ('17', '13268371295', 'IB15970644060114', '300000', '12', '5', '26800', '', '0', '2019-11-15 13:52:47', '2020-04-15', null);
INSERT INTO `voucher` VALUES ('16', '13268371295', 'IB15970644060114', '300000', '12', '4', '26800', '', '0', '2019-11-15 13:52:47', '2020-03-15', null);
INSERT INTO `voucher` VALUES ('15', '13268371295', 'IB15970644060114', '300000', '12', '3', '26800', '', '0', '2019-11-15 13:52:47', '2020-02-15', null);
INSERT INTO `voucher` VALUES ('14', '13268371295', 'IB15970644060114', '300000', '12', '2', '26800', '', '0', '2019-11-15 13:52:47', '2020-01-15', null);
INSERT INTO `voucher` VALUES ('13', '13268371295', 'IB15970644060114', '300000', '12', '1', '26800', '', '0', '2019-11-15 13:52:47', '2019-12-15', null);
INSERT INTO `voucher` VALUES ('456', '13924695233', 'IB15998313951627', '60000', '24', '24', '2860', '', '0', '2019-11-17 16:28:25', '2021-11-17', null);
INSERT INTO `voucher` VALUES ('455', '13924695233', 'IB15998313951627', '60000', '24', '23', '2860', '', '0', '2019-11-17 16:28:25', '2021-10-17', null);
INSERT INTO `voucher` VALUES ('454', '13924695233', 'IB15998313951627', '60000', '24', '22', '2860', '', '0', '2019-11-17 16:28:25', '2021-09-17', null);
INSERT INTO `voucher` VALUES ('453', '13924695233', 'IB15998313951627', '60000', '24', '21', '2860', '', '0', '2019-11-17 16:28:25', '2021-08-17', null);
INSERT INTO `voucher` VALUES ('452', '13924695233', 'IB15998313951627', '60000', '24', '20', '2860', '', '0', '2019-11-17 16:28:25', '2021-07-17', null);
INSERT INTO `voucher` VALUES ('451', '13924695233', 'IB15998313951627', '60000', '24', '19', '2860', '', '0', '2019-11-17 16:28:25', '2021-06-17', null);
INSERT INTO `voucher` VALUES ('450', '13924695233', 'IB15998313951627', '60000', '24', '18', '2860', '', '0', '2019-11-17 16:28:25', '2021-05-17', null);
INSERT INTO `voucher` VALUES ('449', '13924695233', 'IB15998313951627', '60000', '24', '17', '2860', '', '0', '2019-11-17 16:28:25', '2021-04-17', null);
INSERT INTO `voucher` VALUES ('448', '13924695233', 'IB15998313951627', '60000', '24', '16', '2860', '', '0', '2019-11-17 16:28:25', '2021-03-17', null);
INSERT INTO `voucher` VALUES ('447', '13924695233', 'IB15998313951627', '60000', '24', '15', '2860', '', '0', '2019-11-17 16:28:25', '2021-02-17', null);
INSERT INTO `voucher` VALUES ('446', '13924695233', 'IB15998313951627', '60000', '24', '14', '2860', '', '0', '2019-11-17 16:28:25', '2021-01-17', null);
INSERT INTO `voucher` VALUES ('445', '13924695233', 'IB15998313951627', '60000', '24', '13', '2860', '', '0', '2019-11-17 16:28:25', '2020-12-17', null);
INSERT INTO `voucher` VALUES ('444', '13924695233', 'IB15998313951627', '60000', '24', '12', '2860', '', '0', '2019-11-17 16:28:25', '2020-11-17', null);
INSERT INTO `voucher` VALUES ('443', '13924695233', 'IB15998313951627', '60000', '24', '11', '2860', '', '0', '2019-11-17 16:28:25', '2020-10-17', null);
INSERT INTO `voucher` VALUES ('442', '13924695233', 'IB15998313951627', '60000', '24', '10', '2860', '', '0', '2019-11-17 16:28:25', '2020-09-17', null);
INSERT INTO `voucher` VALUES ('441', '13924695233', 'IB15998313951627', '60000', '24', '9', '2860', '', '0', '2019-11-17 16:28:25', '2020-08-17', null);
INSERT INTO `voucher` VALUES ('440', '13924695233', 'IB15998313951627', '60000', '24', '8', '2860', '', '0', '2019-11-17 16:28:25', '2020-07-17', null);
INSERT INTO `voucher` VALUES ('439', '13924695233', 'IB15998313951627', '60000', '24', '7', '2860', '', '0', '2019-11-17 16:28:25', '2020-06-17', null);
INSERT INTO `voucher` VALUES ('438', '13924695233', 'IB15998313951627', '60000', '24', '6', '2860', '', '0', '2019-11-17 16:28:25', '2020-05-17', null);
INSERT INTO `voucher` VALUES ('437', '13924695233', 'IB15998313951627', '60000', '24', '5', '2860', '', '0', '2019-11-17 16:28:25', '2020-04-17', null);
INSERT INTO `voucher` VALUES ('436', '13924695233', 'IB15998313951627', '60000', '24', '4', '2860', '', '0', '2019-11-17 16:28:25', '2020-03-17', null);
INSERT INTO `voucher` VALUES ('435', '13924695233', 'IB15998313951627', '60000', '24', '3', '2860', '', '0', '2019-11-17 16:28:25', '2020-02-17', null);
INSERT INTO `voucher` VALUES ('434', '13924695233', 'IB15998313951627', '60000', '24', '2', '2860', '', '0', '2019-11-17 16:28:25', '2020-01-17', null);
INSERT INTO `voucher` VALUES ('433', '13924695233', 'IB15998313951627', '60000', '24', '1', '2860', '', '0', '2019-11-17 16:28:25', '2019-12-17', null);
INSERT INTO `voucher` VALUES ('49', '18725122464', 'IB15149023415112', '30000', '12', '1', '2680', '', '0', '2019-11-15 19:43:35', '2019-12-15', null);
INSERT INTO `voucher` VALUES ('50', '18725122464', 'IB15149023415112', '30000', '12', '2', '2680', '', '0', '2019-11-15 19:43:35', '2020-01-15', null);
INSERT INTO `voucher` VALUES ('51', '18725122464', 'IB15149023415112', '30000', '12', '3', '2680', '', '0', '2019-11-15 19:43:35', '2020-02-15', null);
INSERT INTO `voucher` VALUES ('52', '18725122464', 'IB15149023415112', '30000', '12', '4', '2680', '', '0', '2019-11-15 19:43:35', '2020-03-15', null);
INSERT INTO `voucher` VALUES ('53', '18725122464', 'IB15149023415112', '30000', '12', '5', '2680', '', '0', '2019-11-15 19:43:35', '2020-04-15', null);
INSERT INTO `voucher` VALUES ('54', '18725122464', 'IB15149023415112', '30000', '12', '6', '2680', '', '0', '2019-11-15 19:43:35', '2020-05-15', null);
INSERT INTO `voucher` VALUES ('55', '18725122464', 'IB15149023415112', '30000', '12', '7', '2680', '', '0', '2019-11-15 19:43:35', '2020-06-15', null);
INSERT INTO `voucher` VALUES ('56', '18725122464', 'IB15149023415112', '30000', '12', '8', '2680', '', '0', '2019-11-15 19:43:35', '2020-07-15', null);
INSERT INTO `voucher` VALUES ('57', '18725122464', 'IB15149023415112', '30000', '12', '9', '2680', '', '0', '2019-11-15 19:43:35', '2020-08-15', null);
INSERT INTO `voucher` VALUES ('58', '18725122464', 'IB15149023415112', '30000', '12', '10', '2680', '', '0', '2019-11-15 19:43:35', '2020-09-15', null);
INSERT INTO `voucher` VALUES ('59', '18725122464', 'IB15149023415112', '30000', '12', '11', '2680', '', '0', '2019-11-15 19:43:35', '2020-10-15', null);
INSERT INTO `voucher` VALUES ('60', '18725122464', 'IB15149023415112', '30000', '12', '12', '2680', '', '0', '2019-11-15 19:43:35', '2020-11-15', null);
INSERT INTO `voucher` VALUES ('61', '18218526507', 'IB15181174812560', '205000', '36', '1', '6925', '', '0', '2019-11-15 19:43:50', '2019-12-15', null);
INSERT INTO `voucher` VALUES ('62', '18218526507', 'IB15181174812560', '205000', '36', '2', '6925', '', '0', '2019-11-15 19:43:50', '2020-01-15', null);
INSERT INTO `voucher` VALUES ('63', '18218526507', 'IB15181174812560', '205000', '36', '3', '6925', '', '0', '2019-11-15 19:43:50', '2020-02-15', null);
INSERT INTO `voucher` VALUES ('64', '18218526507', 'IB15181174812560', '205000', '36', '4', '6925', '', '0', '2019-11-15 19:43:50', '2020-03-15', null);
INSERT INTO `voucher` VALUES ('65', '18218526507', 'IB15181174812560', '205000', '36', '5', '6925', '', '0', '2019-11-15 19:43:50', '2020-04-15', null);
INSERT INTO `voucher` VALUES ('66', '18218526507', 'IB15181174812560', '205000', '36', '6', '6925', '', '0', '2019-11-15 19:43:50', '2020-05-15', null);
INSERT INTO `voucher` VALUES ('67', '18218526507', 'IB15181174812560', '205000', '36', '7', '6925', '', '0', '2019-11-15 19:43:50', '2020-06-15', null);
INSERT INTO `voucher` VALUES ('68', '18218526507', 'IB15181174812560', '205000', '36', '8', '6925', '', '0', '2019-11-15 19:43:50', '2020-07-15', null);
INSERT INTO `voucher` VALUES ('69', '18218526507', 'IB15181174812560', '205000', '36', '9', '6925', '', '0', '2019-11-15 19:43:50', '2020-08-15', null);
INSERT INTO `voucher` VALUES ('70', '18218526507', 'IB15181174812560', '205000', '36', '10', '6925', '', '0', '2019-11-15 19:43:50', '2020-09-15', null);
INSERT INTO `voucher` VALUES ('71', '18218526507', 'IB15181174812560', '205000', '36', '11', '6925', '', '0', '2019-11-15 19:43:50', '2020-10-15', null);
INSERT INTO `voucher` VALUES ('72', '18218526507', 'IB15181174812560', '205000', '36', '12', '6925', '', '0', '2019-11-15 19:43:50', '2020-11-15', null);
INSERT INTO `voucher` VALUES ('73', '18218526507', 'IB15181174812560', '205000', '36', '13', '6925', '', '0', '2019-11-15 19:43:50', '2020-12-15', null);
INSERT INTO `voucher` VALUES ('74', '18218526507', 'IB15181174812560', '205000', '36', '14', '6925', '', '0', '2019-11-15 19:43:50', '2021-01-15', null);
INSERT INTO `voucher` VALUES ('75', '18218526507', 'IB15181174812560', '205000', '36', '15', '6925', '', '0', '2019-11-15 19:43:50', '2021-02-15', null);
INSERT INTO `voucher` VALUES ('76', '18218526507', 'IB15181174812560', '205000', '36', '16', '6925', '', '0', '2019-11-15 19:43:50', '2021-03-15', null);
INSERT INTO `voucher` VALUES ('77', '18218526507', 'IB15181174812560', '205000', '36', '17', '6925', '', '0', '2019-11-15 19:43:50', '2021-04-15', null);
INSERT INTO `voucher` VALUES ('78', '18218526507', 'IB15181174812560', '205000', '36', '18', '6925', '', '0', '2019-11-15 19:43:50', '2021-05-15', null);
INSERT INTO `voucher` VALUES ('79', '18218526507', 'IB15181174812560', '205000', '36', '19', '6925', '', '0', '2019-11-15 19:43:50', '2021-06-15', null);
INSERT INTO `voucher` VALUES ('80', '18218526507', 'IB15181174812560', '205000', '36', '20', '6925', '', '0', '2019-11-15 19:43:50', '2021-07-15', null);
INSERT INTO `voucher` VALUES ('81', '18218526507', 'IB15181174812560', '205000', '36', '21', '6925', '', '0', '2019-11-15 19:43:50', '2021-08-15', null);
INSERT INTO `voucher` VALUES ('82', '18218526507', 'IB15181174812560', '205000', '36', '22', '6925', '', '0', '2019-11-15 19:43:50', '2021-09-15', null);
INSERT INTO `voucher` VALUES ('83', '18218526507', 'IB15181174812560', '205000', '36', '23', '6925', '', '0', '2019-11-15 19:43:50', '2021-10-15', null);
INSERT INTO `voucher` VALUES ('84', '18218526507', 'IB15181174812560', '205000', '36', '24', '6925', '', '0', '2019-11-15 19:43:50', '2021-11-15', null);
INSERT INTO `voucher` VALUES ('85', '18218526507', 'IB15181174812560', '205000', '36', '25', '6925', '', '0', '2019-11-15 19:43:50', '2021-12-15', null);
INSERT INTO `voucher` VALUES ('86', '18218526507', 'IB15181174812560', '205000', '36', '26', '6925', '', '0', '2019-11-15 19:43:50', '2022-01-15', null);
INSERT INTO `voucher` VALUES ('87', '18218526507', 'IB15181174812560', '205000', '36', '27', '6925', '', '0', '2019-11-15 19:43:50', '2022-02-15', null);
INSERT INTO `voucher` VALUES ('88', '18218526507', 'IB15181174812560', '205000', '36', '28', '6925', '', '0', '2019-11-15 19:43:50', '2022-03-15', null);
INSERT INTO `voucher` VALUES ('89', '18218526507', 'IB15181174812560', '205000', '36', '29', '6925', '', '0', '2019-11-15 19:43:50', '2022-04-15', null);
INSERT INTO `voucher` VALUES ('90', '18218526507', 'IB15181174812560', '205000', '36', '30', '6925', '', '0', '2019-11-15 19:43:50', '2022-05-15', null);
INSERT INTO `voucher` VALUES ('91', '18218526507', 'IB15181174812560', '205000', '36', '31', '6925', '', '0', '2019-11-15 19:43:50', '2022-06-15', null);
INSERT INTO `voucher` VALUES ('92', '18218526507', 'IB15181174812560', '205000', '36', '32', '6925', '', '0', '2019-11-15 19:43:50', '2022-07-15', null);
INSERT INTO `voucher` VALUES ('93', '18218526507', 'IB15181174812560', '205000', '36', '33', '6925', '', '0', '2019-11-15 19:43:50', '2022-08-15', null);
INSERT INTO `voucher` VALUES ('94', '18218526507', 'IB15181174812560', '205000', '36', '34', '6925', '', '0', '2019-11-15 19:43:50', '2022-09-15', null);
INSERT INTO `voucher` VALUES ('95', '18218526507', 'IB15181174812560', '205000', '36', '35', '6925', '', '0', '2019-11-15 19:43:50', '2022-10-15', null);
INSERT INTO `voucher` VALUES ('96', '18218526507', 'IB15181174812560', '205000', '36', '36', '6925', '', '0', '2019-11-15 19:43:50', '2022-11-15', null);
INSERT INTO `voucher` VALUES ('336', '15197015437', 'IB15171772114298', '90000', '24', '24', '4290', '', '0', '2019-11-16 16:34:49', '2021-11-16', null);
INSERT INTO `voucher` VALUES ('335', '15197015437', 'IB15171772114298', '90000', '24', '23', '4290', '', '0', '2019-11-16 16:34:49', '2021-10-16', null);
INSERT INTO `voucher` VALUES ('334', '15197015437', 'IB15171772114298', '90000', '24', '22', '4290', '', '0', '2019-11-16 16:34:49', '2021-09-16', null);
INSERT INTO `voucher` VALUES ('333', '15197015437', 'IB15171772114298', '90000', '24', '21', '4290', '', '0', '2019-11-16 16:34:49', '2021-08-16', null);
INSERT INTO `voucher` VALUES ('332', '15197015437', 'IB15171772114298', '90000', '24', '20', '4290', '', '0', '2019-11-16 16:34:49', '2021-07-16', null);
INSERT INTO `voucher` VALUES ('331', '15197015437', 'IB15171772114298', '90000', '24', '19', '4290', '', '0', '2019-11-16 16:34:49', '2021-06-16', null);
INSERT INTO `voucher` VALUES ('330', '15197015437', 'IB15171772114298', '90000', '24', '18', '4290', '', '0', '2019-11-16 16:34:49', '2021-05-16', null);
INSERT INTO `voucher` VALUES ('329', '15197015437', 'IB15171772114298', '90000', '24', '17', '4290', '', '0', '2019-11-16 16:34:49', '2021-04-16', null);
INSERT INTO `voucher` VALUES ('328', '15197015437', 'IB15171772114298', '90000', '24', '16', '4290', '', '0', '2019-11-16 16:34:49', '2021-03-16', null);
INSERT INTO `voucher` VALUES ('327', '15197015437', 'IB15171772114298', '90000', '24', '15', '4290', '', '0', '2019-11-16 16:34:49', '2021-02-16', null);
INSERT INTO `voucher` VALUES ('326', '15197015437', 'IB15171772114298', '90000', '24', '14', '4290', '', '0', '2019-11-16 16:34:49', '2021-01-16', null);
INSERT INTO `voucher` VALUES ('325', '15197015437', 'IB15171772114298', '90000', '24', '13', '4290', '', '0', '2019-11-16 16:34:49', '2020-12-16', null);
INSERT INTO `voucher` VALUES ('324', '15197015437', 'IB15171772114298', '90000', '24', '12', '4290', '', '0', '2019-11-16 16:34:49', '2020-11-16', null);
INSERT INTO `voucher` VALUES ('323', '15197015437', 'IB15171772114298', '90000', '24', '11', '4290', '', '0', '2019-11-16 16:34:49', '2020-10-16', null);
INSERT INTO `voucher` VALUES ('322', '15197015437', 'IB15171772114298', '90000', '24', '10', '4290', '', '0', '2019-11-16 16:34:49', '2020-09-16', null);
INSERT INTO `voucher` VALUES ('321', '15197015437', 'IB15171772114298', '90000', '24', '9', '4290', '', '0', '2019-11-16 16:34:49', '2020-08-16', null);
INSERT INTO `voucher` VALUES ('320', '15197015437', 'IB15171772114298', '90000', '24', '8', '4290', '', '0', '2019-11-16 16:34:49', '2020-07-16', null);
INSERT INTO `voucher` VALUES ('319', '15197015437', 'IB15171772114298', '90000', '24', '7', '4290', '', '0', '2019-11-16 16:34:49', '2020-06-16', null);
INSERT INTO `voucher` VALUES ('318', '15197015437', 'IB15171772114298', '90000', '24', '6', '4290', '', '0', '2019-11-16 16:34:49', '2020-05-16', null);
INSERT INTO `voucher` VALUES ('317', '15197015437', 'IB15171772114298', '90000', '24', '5', '4290', '', '0', '2019-11-16 16:34:49', '2020-04-16', null);
INSERT INTO `voucher` VALUES ('316', '15197015437', 'IB15171772114298', '90000', '24', '4', '4290', '', '0', '2019-11-16 16:34:49', '2020-03-16', null);
INSERT INTO `voucher` VALUES ('315', '15197015437', 'IB15171772114298', '90000', '24', '3', '4290', '', '0', '2019-11-16 16:34:49', '2020-02-16', null);
INSERT INTO `voucher` VALUES ('314', '15197015437', 'IB15171772114298', '90000', '24', '2', '4290', '', '0', '2019-11-16 16:34:49', '2020-01-16', null);
INSERT INTO `voucher` VALUES ('313', '15197015437', 'IB15171772114298', '90000', '24', '1', '4290', '', '0', '2019-11-16 16:34:49', '2019-12-16', null);
INSERT INTO `voucher` VALUES ('121', '17515750925', 'IB15239353533600', '30000', '12', '1', '2680', '', '0', '2019-11-16 10:03:34', '2019-12-16', null);
INSERT INTO `voucher` VALUES ('122', '17515750925', 'IB15239353533600', '30000', '12', '2', '2680', '', '0', '2019-11-16 10:03:34', '2020-01-16', null);
INSERT INTO `voucher` VALUES ('123', '17515750925', 'IB15239353533600', '30000', '12', '3', '2680', '', '0', '2019-11-16 10:03:34', '2020-02-16', null);
INSERT INTO `voucher` VALUES ('124', '17515750925', 'IB15239353533600', '30000', '12', '4', '2680', '', '0', '2019-11-16 10:03:34', '2020-03-16', null);
INSERT INTO `voucher` VALUES ('125', '17515750925', 'IB15239353533600', '30000', '12', '5', '2680', '', '0', '2019-11-16 10:03:34', '2020-04-16', null);
INSERT INTO `voucher` VALUES ('126', '17515750925', 'IB15239353533600', '30000', '12', '6', '2680', '', '0', '2019-11-16 10:03:34', '2020-05-16', null);
INSERT INTO `voucher` VALUES ('127', '17515750925', 'IB15239353533600', '30000', '12', '7', '2680', '', '0', '2019-11-16 10:03:34', '2020-06-16', null);
INSERT INTO `voucher` VALUES ('128', '17515750925', 'IB15239353533600', '30000', '12', '8', '2680', '', '0', '2019-11-16 10:03:34', '2020-07-16', null);
INSERT INTO `voucher` VALUES ('129', '17515750925', 'IB15239353533600', '30000', '12', '9', '2680', '', '0', '2019-11-16 10:03:34', '2020-08-16', null);
INSERT INTO `voucher` VALUES ('130', '17515750925', 'IB15239353533600', '30000', '12', '10', '2680', '', '0', '2019-11-16 10:03:34', '2020-09-16', null);
INSERT INTO `voucher` VALUES ('131', '17515750925', 'IB15239353533600', '30000', '12', '11', '2680', '', '0', '2019-11-16 10:03:34', '2020-10-16', null);
INSERT INTO `voucher` VALUES ('132', '17515750925', 'IB15239353533600', '30000', '12', '12', '2680', '', '0', '2019-11-16 10:03:34', '2020-11-16', null);
INSERT INTO `voucher` VALUES ('204', '13376367980', 'IB15249243400389', '30000', '36', '36', '1014', '', '0', '2019-11-16 10:34:33', '2022-11-16', null);
INSERT INTO `voucher` VALUES ('203', '13376367980', 'IB15249243400389', '30000', '36', '35', '1014', '', '0', '2019-11-16 10:34:33', '2022-10-16', null);
INSERT INTO `voucher` VALUES ('202', '13376367980', 'IB15249243400389', '30000', '36', '34', '1014', '', '0', '2019-11-16 10:34:33', '2022-09-16', null);
INSERT INTO `voucher` VALUES ('201', '13376367980', 'IB15249243400389', '30000', '36', '33', '1014', '', '0', '2019-11-16 10:34:33', '2022-08-16', null);
INSERT INTO `voucher` VALUES ('200', '13376367980', 'IB15249243400389', '30000', '36', '32', '1014', '', '0', '2019-11-16 10:34:33', '2022-07-16', null);
INSERT INTO `voucher` VALUES ('199', '13376367980', 'IB15249243400389', '30000', '36', '31', '1014', '', '0', '2019-11-16 10:34:33', '2022-06-16', null);
INSERT INTO `voucher` VALUES ('198', '13376367980', 'IB15249243400389', '30000', '36', '30', '1014', '', '0', '2019-11-16 10:34:33', '2022-05-16', null);
INSERT INTO `voucher` VALUES ('197', '13376367980', 'IB15249243400389', '30000', '36', '29', '1014', '', '0', '2019-11-16 10:34:33', '2022-04-16', null);
INSERT INTO `voucher` VALUES ('196', '13376367980', 'IB15249243400389', '30000', '36', '28', '1014', '', '0', '2019-11-16 10:34:33', '2022-03-16', null);
INSERT INTO `voucher` VALUES ('195', '13376367980', 'IB15249243400389', '30000', '36', '27', '1014', '', '0', '2019-11-16 10:34:33', '2022-02-16', null);
INSERT INTO `voucher` VALUES ('194', '13376367980', 'IB15249243400389', '30000', '36', '26', '1014', '', '0', '2019-11-16 10:34:33', '2022-01-16', null);
INSERT INTO `voucher` VALUES ('193', '13376367980', 'IB15249243400389', '30000', '36', '25', '1014', '', '0', '2019-11-16 10:34:33', '2021-12-16', null);
INSERT INTO `voucher` VALUES ('192', '13376367980', 'IB15249243400389', '30000', '36', '24', '1014', '', '0', '2019-11-16 10:34:33', '2021-11-16', null);
INSERT INTO `voucher` VALUES ('191', '13376367980', 'IB15249243400389', '30000', '36', '23', '1014', '', '0', '2019-11-16 10:34:33', '2021-10-16', null);
INSERT INTO `voucher` VALUES ('190', '13376367980', 'IB15249243400389', '30000', '36', '22', '1014', '', '0', '2019-11-16 10:34:33', '2021-09-16', null);
INSERT INTO `voucher` VALUES ('189', '13376367980', 'IB15249243400389', '30000', '36', '21', '1014', '', '0', '2019-11-16 10:34:33', '2021-08-16', null);
INSERT INTO `voucher` VALUES ('188', '13376367980', 'IB15249243400389', '30000', '36', '20', '1014', '', '0', '2019-11-16 10:34:33', '2021-07-16', null);
INSERT INTO `voucher` VALUES ('187', '13376367980', 'IB15249243400389', '30000', '36', '19', '1014', '', '0', '2019-11-16 10:34:33', '2021-06-16', null);
INSERT INTO `voucher` VALUES ('186', '13376367980', 'IB15249243400389', '30000', '36', '18', '1014', '', '0', '2019-11-16 10:34:33', '2021-05-16', null);
INSERT INTO `voucher` VALUES ('185', '13376367980', 'IB15249243400389', '30000', '36', '17', '1014', '', '0', '2019-11-16 10:34:33', '2021-04-16', null);
INSERT INTO `voucher` VALUES ('184', '13376367980', 'IB15249243400389', '30000', '36', '16', '1014', '', '0', '2019-11-16 10:34:33', '2021-03-16', null);
INSERT INTO `voucher` VALUES ('183', '13376367980', 'IB15249243400389', '30000', '36', '15', '1014', '', '0', '2019-11-16 10:34:33', '2021-02-16', null);
INSERT INTO `voucher` VALUES ('182', '13376367980', 'IB15249243400389', '30000', '36', '14', '1014', '', '0', '2019-11-16 10:34:33', '2021-01-16', null);
INSERT INTO `voucher` VALUES ('181', '13376367980', 'IB15249243400389', '30000', '36', '13', '1014', '', '0', '2019-11-16 10:34:33', '2020-12-16', null);
INSERT INTO `voucher` VALUES ('180', '13376367980', 'IB15249243400389', '30000', '36', '12', '1014', '', '0', '2019-11-16 10:34:33', '2020-11-16', null);
INSERT INTO `voucher` VALUES ('179', '13376367980', 'IB15249243400389', '30000', '36', '11', '1014', '', '0', '2019-11-16 10:34:33', '2020-10-16', null);
INSERT INTO `voucher` VALUES ('178', '13376367980', 'IB15249243400389', '30000', '36', '10', '1014', '', '0', '2019-11-16 10:34:33', '2020-09-16', null);
INSERT INTO `voucher` VALUES ('177', '13376367980', 'IB15249243400389', '30000', '36', '9', '1014', '', '0', '2019-11-16 10:34:33', '2020-08-16', null);
INSERT INTO `voucher` VALUES ('176', '13376367980', 'IB15249243400389', '30000', '36', '8', '1014', '', '0', '2019-11-16 10:34:33', '2020-07-16', null);
INSERT INTO `voucher` VALUES ('175', '13376367980', 'IB15249243400389', '30000', '36', '7', '1014', '', '0', '2019-11-16 10:34:33', '2020-06-16', null);
INSERT INTO `voucher` VALUES ('174', '13376367980', 'IB15249243400389', '30000', '36', '6', '1014', '', '0', '2019-11-16 10:34:33', '2020-05-16', null);
INSERT INTO `voucher` VALUES ('173', '13376367980', 'IB15249243400389', '30000', '36', '5', '1014', '', '0', '2019-11-16 10:34:33', '2020-04-16', null);
INSERT INTO `voucher` VALUES ('172', '13376367980', 'IB15249243400389', '30000', '36', '4', '1014', '', '0', '2019-11-16 10:34:33', '2020-03-16', null);
INSERT INTO `voucher` VALUES ('171', '13376367980', 'IB15249243400389', '30000', '36', '3', '1014', '', '0', '2019-11-16 10:34:33', '2020-02-16', null);
INSERT INTO `voucher` VALUES ('170', '13376367980', 'IB15249243400389', '30000', '36', '2', '1014', '', '0', '2019-11-16 10:34:33', '2020-01-16', null);
INSERT INTO `voucher` VALUES ('169', '13376367980', 'IB15249243400389', '30000', '36', '1', '1014', '', '0', '2019-11-16 10:34:33', '2019-12-16', null);
INSERT INTO `voucher` VALUES ('205', '18348690429', 'IB16712145924776', '150000', '36', '1', '5067', '', '0', '2019-11-16 11:53:49', '2019-12-16', null);
INSERT INTO `voucher` VALUES ('206', '18348690429', 'IB16712145924776', '150000', '36', '2', '5067', '', '0', '2019-11-16 11:53:49', '2020-01-16', null);
INSERT INTO `voucher` VALUES ('207', '18348690429', 'IB16712145924776', '150000', '36', '3', '5067', '', '0', '2019-11-16 11:53:49', '2020-02-16', null);
INSERT INTO `voucher` VALUES ('208', '18348690429', 'IB16712145924776', '150000', '36', '4', '5067', '', '0', '2019-11-16 11:53:49', '2020-03-16', null);
INSERT INTO `voucher` VALUES ('209', '18348690429', 'IB16712145924776', '150000', '36', '5', '5067', '', '0', '2019-11-16 11:53:49', '2020-04-16', null);
INSERT INTO `voucher` VALUES ('210', '18348690429', 'IB16712145924776', '150000', '36', '6', '5067', '', '0', '2019-11-16 11:53:49', '2020-05-16', null);
INSERT INTO `voucher` VALUES ('211', '18348690429', 'IB16712145924776', '150000', '36', '7', '5067', '', '0', '2019-11-16 11:53:49', '2020-06-16', null);
INSERT INTO `voucher` VALUES ('212', '18348690429', 'IB16712145924776', '150000', '36', '8', '5067', '', '0', '2019-11-16 11:53:49', '2020-07-16', null);
INSERT INTO `voucher` VALUES ('213', '18348690429', 'IB16712145924776', '150000', '36', '9', '5067', '', '0', '2019-11-16 11:53:49', '2020-08-16', null);
INSERT INTO `voucher` VALUES ('214', '18348690429', 'IB16712145924776', '150000', '36', '10', '5067', '', '0', '2019-11-16 11:53:49', '2020-09-16', null);
INSERT INTO `voucher` VALUES ('215', '18348690429', 'IB16712145924776', '150000', '36', '11', '5067', '', '0', '2019-11-16 11:53:49', '2020-10-16', null);
INSERT INTO `voucher` VALUES ('216', '18348690429', 'IB16712145924776', '150000', '36', '12', '5067', '', '0', '2019-11-16 11:53:49', '2020-11-16', null);
INSERT INTO `voucher` VALUES ('217', '18348690429', 'IB16712145924776', '150000', '36', '13', '5067', '', '0', '2019-11-16 11:53:49', '2020-12-16', null);
INSERT INTO `voucher` VALUES ('218', '18348690429', 'IB16712145924776', '150000', '36', '14', '5067', '', '0', '2019-11-16 11:53:49', '2021-01-16', null);
INSERT INTO `voucher` VALUES ('219', '18348690429', 'IB16712145924776', '150000', '36', '15', '5067', '', '0', '2019-11-16 11:53:49', '2021-02-16', null);
INSERT INTO `voucher` VALUES ('220', '18348690429', 'IB16712145924776', '150000', '36', '16', '5067', '', '0', '2019-11-16 11:53:49', '2021-03-16', null);
INSERT INTO `voucher` VALUES ('221', '18348690429', 'IB16712145924776', '150000', '36', '17', '5067', '', '0', '2019-11-16 11:53:49', '2021-04-16', null);
INSERT INTO `voucher` VALUES ('222', '18348690429', 'IB16712145924776', '150000', '36', '18', '5067', '', '0', '2019-11-16 11:53:49', '2021-05-16', null);
INSERT INTO `voucher` VALUES ('223', '18348690429', 'IB16712145924776', '150000', '36', '19', '5067', '', '0', '2019-11-16 11:53:49', '2021-06-16', null);
INSERT INTO `voucher` VALUES ('224', '18348690429', 'IB16712145924776', '150000', '36', '20', '5067', '', '0', '2019-11-16 11:53:49', '2021-07-16', null);
INSERT INTO `voucher` VALUES ('225', '18348690429', 'IB16712145924776', '150000', '36', '21', '5067', '', '0', '2019-11-16 11:53:49', '2021-08-16', null);
INSERT INTO `voucher` VALUES ('226', '18348690429', 'IB16712145924776', '150000', '36', '22', '5067', '', '0', '2019-11-16 11:53:49', '2021-09-16', null);
INSERT INTO `voucher` VALUES ('227', '18348690429', 'IB16712145924776', '150000', '36', '23', '5067', '', '0', '2019-11-16 11:53:49', '2021-10-16', null);
INSERT INTO `voucher` VALUES ('228', '18348690429', 'IB16712145924776', '150000', '36', '24', '5067', '', '0', '2019-11-16 11:53:49', '2021-11-16', null);
INSERT INTO `voucher` VALUES ('229', '18348690429', 'IB16712145924776', '150000', '36', '25', '5067', '', '0', '2019-11-16 11:53:49', '2021-12-16', null);
INSERT INTO `voucher` VALUES ('230', '18348690429', 'IB16712145924776', '150000', '36', '26', '5067', '', '0', '2019-11-16 11:53:49', '2022-01-16', null);
INSERT INTO `voucher` VALUES ('231', '18348690429', 'IB16712145924776', '150000', '36', '27', '5067', '', '0', '2019-11-16 11:53:49', '2022-02-16', null);
INSERT INTO `voucher` VALUES ('232', '18348690429', 'IB16712145924776', '150000', '36', '28', '5067', '', '0', '2019-11-16 11:53:49', '2022-03-16', null);
INSERT INTO `voucher` VALUES ('233', '18348690429', 'IB16712145924776', '150000', '36', '29', '5067', '', '0', '2019-11-16 11:53:49', '2022-04-16', null);
INSERT INTO `voucher` VALUES ('234', '18348690429', 'IB16712145924776', '150000', '36', '30', '5067', '', '0', '2019-11-16 11:53:49', '2022-05-16', null);
INSERT INTO `voucher` VALUES ('235', '18348690429', 'IB16712145924776', '150000', '36', '31', '5067', '', '0', '2019-11-16 11:53:49', '2022-06-16', null);
INSERT INTO `voucher` VALUES ('236', '18348690429', 'IB16712145924776', '150000', '36', '32', '5067', '', '0', '2019-11-16 11:53:49', '2022-07-16', null);
INSERT INTO `voucher` VALUES ('237', '18348690429', 'IB16712145924776', '150000', '36', '33', '5067', '', '0', '2019-11-16 11:53:49', '2022-08-16', null);
INSERT INTO `voucher` VALUES ('238', '18348690429', 'IB16712145924776', '150000', '36', '34', '5067', '', '0', '2019-11-16 11:53:49', '2022-09-16', null);
INSERT INTO `voucher` VALUES ('239', '18348690429', 'IB16712145924776', '150000', '36', '35', '5067', '', '0', '2019-11-16 11:53:49', '2022-10-16', null);
INSERT INTO `voucher` VALUES ('240', '18348690429', 'IB16712145924776', '150000', '36', '36', '5067', '', '0', '2019-11-16 11:53:49', '2022-11-16', null);
INSERT INTO `voucher` VALUES ('348', '13659006751', 'IB16807251548272', '36000', '12', '12', '3216', '', '0', '2019-11-16 17:32:23', '2020-11-16', null);
INSERT INTO `voucher` VALUES ('347', '13659006751', 'IB16807251548272', '36000', '12', '11', '3216', '', '0', '2019-11-16 17:32:23', '2020-10-16', null);
INSERT INTO `voucher` VALUES ('346', '13659006751', 'IB16807251548272', '36000', '12', '10', '3216', '', '0', '2019-11-16 17:32:23', '2020-09-16', null);
INSERT INTO `voucher` VALUES ('345', '13659006751', 'IB16807251548272', '36000', '12', '9', '3216', '', '0', '2019-11-16 17:32:23', '2020-08-16', null);
INSERT INTO `voucher` VALUES ('344', '13659006751', 'IB16807251548272', '36000', '12', '8', '3216', '', '0', '2019-11-16 17:32:23', '2020-07-16', null);
INSERT INTO `voucher` VALUES ('343', '13659006751', 'IB16807251548272', '36000', '12', '7', '3216', '', '0', '2019-11-16 17:32:23', '2020-06-16', null);
INSERT INTO `voucher` VALUES ('342', '13659006751', 'IB16807251548272', '36000', '12', '6', '3216', '', '0', '2019-11-16 17:32:23', '2020-05-16', null);
INSERT INTO `voucher` VALUES ('341', '13659006751', 'IB16807251548272', '36000', '12', '5', '3216', '', '0', '2019-11-16 17:32:23', '2020-04-16', null);
INSERT INTO `voucher` VALUES ('340', '13659006751', 'IB16807251548272', '36000', '12', '4', '3216', '', '0', '2019-11-16 17:32:23', '2020-03-16', null);
INSERT INTO `voucher` VALUES ('339', '13659006751', 'IB16807251548272', '36000', '12', '3', '3216', '', '0', '2019-11-16 17:32:23', '2020-02-16', null);
INSERT INTO `voucher` VALUES ('338', '13659006751', 'IB16807251548272', '36000', '12', '2', '3216', '', '0', '2019-11-16 17:32:23', '2020-01-16', null);
INSERT INTO `voucher` VALUES ('337', '13659006751', 'IB16807251548272', '36000', '12', '1', '3216', '', '0', '2019-11-16 17:32:23', '2019-12-16', null);
INSERT INTO `voucher` VALUES ('277', '18930632627', 'IB15010688784899', '100000', '36', '1', '3378', '', '0', '2019-11-16 15:10:12', '2019-12-16', null);
INSERT INTO `voucher` VALUES ('278', '18930632627', 'IB15010688784899', '100000', '36', '2', '3378', '', '0', '2019-11-16 15:10:12', '2020-01-16', null);
INSERT INTO `voucher` VALUES ('279', '18930632627', 'IB15010688784899', '100000', '36', '3', '3378', '', '0', '2019-11-16 15:10:12', '2020-02-16', null);
INSERT INTO `voucher` VALUES ('280', '18930632627', 'IB15010688784899', '100000', '36', '4', '3378', '', '0', '2019-11-16 15:10:12', '2020-03-16', null);
INSERT INTO `voucher` VALUES ('281', '18930632627', 'IB15010688784899', '100000', '36', '5', '3378', '', '0', '2019-11-16 15:10:12', '2020-04-16', null);
INSERT INTO `voucher` VALUES ('282', '18930632627', 'IB15010688784899', '100000', '36', '6', '3378', '', '0', '2019-11-16 15:10:12', '2020-05-16', null);
INSERT INTO `voucher` VALUES ('283', '18930632627', 'IB15010688784899', '100000', '36', '7', '3378', '', '0', '2019-11-16 15:10:12', '2020-06-16', null);
INSERT INTO `voucher` VALUES ('284', '18930632627', 'IB15010688784899', '100000', '36', '8', '3378', '', '0', '2019-11-16 15:10:12', '2020-07-16', null);
INSERT INTO `voucher` VALUES ('285', '18930632627', 'IB15010688784899', '100000', '36', '9', '3378', '', '0', '2019-11-16 15:10:12', '2020-08-16', null);
INSERT INTO `voucher` VALUES ('286', '18930632627', 'IB15010688784899', '100000', '36', '10', '3378', '', '0', '2019-11-16 15:10:12', '2020-09-16', null);
INSERT INTO `voucher` VALUES ('287', '18930632627', 'IB15010688784899', '100000', '36', '11', '3378', '', '0', '2019-11-16 15:10:12', '2020-10-16', null);
INSERT INTO `voucher` VALUES ('288', '18930632627', 'IB15010688784899', '100000', '36', '12', '3378', '', '0', '2019-11-16 15:10:12', '2020-11-16', null);
INSERT INTO `voucher` VALUES ('289', '18930632627', 'IB15010688784899', '100000', '36', '13', '3378', '', '0', '2019-11-16 15:10:12', '2020-12-16', null);
INSERT INTO `voucher` VALUES ('290', '18930632627', 'IB15010688784899', '100000', '36', '14', '3378', '', '0', '2019-11-16 15:10:12', '2021-01-16', null);
INSERT INTO `voucher` VALUES ('291', '18930632627', 'IB15010688784899', '100000', '36', '15', '3378', '', '0', '2019-11-16 15:10:12', '2021-02-16', null);
INSERT INTO `voucher` VALUES ('292', '18930632627', 'IB15010688784899', '100000', '36', '16', '3378', '', '0', '2019-11-16 15:10:12', '2021-03-16', null);
INSERT INTO `voucher` VALUES ('293', '18930632627', 'IB15010688784899', '100000', '36', '17', '3378', '', '0', '2019-11-16 15:10:12', '2021-04-16', null);
INSERT INTO `voucher` VALUES ('294', '18930632627', 'IB15010688784899', '100000', '36', '18', '3378', '', '0', '2019-11-16 15:10:12', '2021-05-16', null);
INSERT INTO `voucher` VALUES ('295', '18930632627', 'IB15010688784899', '100000', '36', '19', '3378', '', '0', '2019-11-16 15:10:12', '2021-06-16', null);
INSERT INTO `voucher` VALUES ('296', '18930632627', 'IB15010688784899', '100000', '36', '20', '3378', '', '0', '2019-11-16 15:10:12', '2021-07-16', null);
INSERT INTO `voucher` VALUES ('297', '18930632627', 'IB15010688784899', '100000', '36', '21', '3378', '', '0', '2019-11-16 15:10:12', '2021-08-16', null);
INSERT INTO `voucher` VALUES ('298', '18930632627', 'IB15010688784899', '100000', '36', '22', '3378', '', '0', '2019-11-16 15:10:12', '2021-09-16', null);
INSERT INTO `voucher` VALUES ('299', '18930632627', 'IB15010688784899', '100000', '36', '23', '3378', '', '0', '2019-11-16 15:10:12', '2021-10-16', null);
INSERT INTO `voucher` VALUES ('300', '18930632627', 'IB15010688784899', '100000', '36', '24', '3378', '', '0', '2019-11-16 15:10:12', '2021-11-16', null);
INSERT INTO `voucher` VALUES ('301', '18930632627', 'IB15010688784899', '100000', '36', '25', '3378', '', '0', '2019-11-16 15:10:12', '2021-12-16', null);
INSERT INTO `voucher` VALUES ('302', '18930632627', 'IB15010688784899', '100000', '36', '26', '3378', '', '0', '2019-11-16 15:10:12', '2022-01-16', null);
INSERT INTO `voucher` VALUES ('303', '18930632627', 'IB15010688784899', '100000', '36', '27', '3378', '', '0', '2019-11-16 15:10:12', '2022-02-16', null);
INSERT INTO `voucher` VALUES ('304', '18930632627', 'IB15010688784899', '100000', '36', '28', '3378', '', '0', '2019-11-16 15:10:12', '2022-03-16', null);
INSERT INTO `voucher` VALUES ('305', '18930632627', 'IB15010688784899', '100000', '36', '29', '3378', '', '0', '2019-11-16 15:10:12', '2022-04-16', null);
INSERT INTO `voucher` VALUES ('306', '18930632627', 'IB15010688784899', '100000', '36', '30', '3378', '', '0', '2019-11-16 15:10:12', '2022-05-16', null);
INSERT INTO `voucher` VALUES ('307', '18930632627', 'IB15010688784899', '100000', '36', '31', '3378', '', '0', '2019-11-16 15:10:12', '2022-06-16', null);
INSERT INTO `voucher` VALUES ('308', '18930632627', 'IB15010688784899', '100000', '36', '32', '3378', '', '0', '2019-11-16 15:10:12', '2022-07-16', null);
INSERT INTO `voucher` VALUES ('309', '18930632627', 'IB15010688784899', '100000', '36', '33', '3378', '', '0', '2019-11-16 15:10:12', '2022-08-16', null);
INSERT INTO `voucher` VALUES ('310', '18930632627', 'IB15010688784899', '100000', '36', '34', '3378', '', '0', '2019-11-16 15:10:12', '2022-09-16', null);
INSERT INTO `voucher` VALUES ('311', '18930632627', 'IB15010688784899', '100000', '36', '35', '3378', '', '0', '2019-11-16 15:10:12', '2022-10-16', null);
INSERT INTO `voucher` VALUES ('312', '18930632627', 'IB15010688784899', '100000', '36', '36', '3378', '', '0', '2019-11-16 15:10:12', '2022-11-16', null);
INSERT INTO `voucher` VALUES ('349', '18834418014', 'IB16034932092093', '45000', '36', '1', '1520', '', '0', '2019-11-16 20:52:47', '2019-12-16', null);
INSERT INTO `voucher` VALUES ('350', '18834418014', 'IB16034932092093', '45000', '36', '2', '1520', '', '0', '2019-11-16 20:52:47', '2020-01-16', null);
INSERT INTO `voucher` VALUES ('351', '18834418014', 'IB16034932092093', '45000', '36', '3', '1520', '', '0', '2019-11-16 20:52:47', '2020-02-16', null);
INSERT INTO `voucher` VALUES ('352', '18834418014', 'IB16034932092093', '45000', '36', '4', '1520', '', '0', '2019-11-16 20:52:47', '2020-03-16', null);
INSERT INTO `voucher` VALUES ('353', '18834418014', 'IB16034932092093', '45000', '36', '5', '1520', '', '0', '2019-11-16 20:52:47', '2020-04-16', null);
INSERT INTO `voucher` VALUES ('354', '18834418014', 'IB16034932092093', '45000', '36', '6', '1520', '', '0', '2019-11-16 20:52:47', '2020-05-16', null);
INSERT INTO `voucher` VALUES ('355', '18834418014', 'IB16034932092093', '45000', '36', '7', '1520', '', '0', '2019-11-16 20:52:47', '2020-06-16', null);
INSERT INTO `voucher` VALUES ('356', '18834418014', 'IB16034932092093', '45000', '36', '8', '1520', '', '0', '2019-11-16 20:52:47', '2020-07-16', null);
INSERT INTO `voucher` VALUES ('357', '18834418014', 'IB16034932092093', '45000', '36', '9', '1520', '', '0', '2019-11-16 20:52:47', '2020-08-16', null);
INSERT INTO `voucher` VALUES ('358', '18834418014', 'IB16034932092093', '45000', '36', '10', '1520', '', '0', '2019-11-16 20:52:47', '2020-09-16', null);
INSERT INTO `voucher` VALUES ('359', '18834418014', 'IB16034932092093', '45000', '36', '11', '1520', '', '0', '2019-11-16 20:52:47', '2020-10-16', null);
INSERT INTO `voucher` VALUES ('360', '18834418014', 'IB16034932092093', '45000', '36', '12', '1520', '', '0', '2019-11-16 20:52:47', '2020-11-16', null);
INSERT INTO `voucher` VALUES ('361', '18834418014', 'IB16034932092093', '45000', '36', '13', '1520', '', '0', '2019-11-16 20:52:47', '2020-12-16', null);
INSERT INTO `voucher` VALUES ('362', '18834418014', 'IB16034932092093', '45000', '36', '14', '1520', '', '0', '2019-11-16 20:52:47', '2021-01-16', null);
INSERT INTO `voucher` VALUES ('363', '18834418014', 'IB16034932092093', '45000', '36', '15', '1520', '', '0', '2019-11-16 20:52:47', '2021-02-16', null);
INSERT INTO `voucher` VALUES ('364', '18834418014', 'IB16034932092093', '45000', '36', '16', '1520', '', '0', '2019-11-16 20:52:47', '2021-03-16', null);
INSERT INTO `voucher` VALUES ('365', '18834418014', 'IB16034932092093', '45000', '36', '17', '1520', '', '0', '2019-11-16 20:52:47', '2021-04-16', null);
INSERT INTO `voucher` VALUES ('366', '18834418014', 'IB16034932092093', '45000', '36', '18', '1520', '', '0', '2019-11-16 20:52:47', '2021-05-16', null);
INSERT INTO `voucher` VALUES ('367', '18834418014', 'IB16034932092093', '45000', '36', '19', '1520', '', '0', '2019-11-16 20:52:47', '2021-06-16', null);
INSERT INTO `voucher` VALUES ('368', '18834418014', 'IB16034932092093', '45000', '36', '20', '1520', '', '0', '2019-11-16 20:52:47', '2021-07-16', null);
INSERT INTO `voucher` VALUES ('369', '18834418014', 'IB16034932092093', '45000', '36', '21', '1520', '', '0', '2019-11-16 20:52:47', '2021-08-16', null);
INSERT INTO `voucher` VALUES ('370', '18834418014', 'IB16034932092093', '45000', '36', '22', '1520', '', '0', '2019-11-16 20:52:47', '2021-09-16', null);
INSERT INTO `voucher` VALUES ('371', '18834418014', 'IB16034932092093', '45000', '36', '23', '1520', '', '0', '2019-11-16 20:52:47', '2021-10-16', null);
INSERT INTO `voucher` VALUES ('372', '18834418014', 'IB16034932092093', '45000', '36', '24', '1520', '', '0', '2019-11-16 20:52:47', '2021-11-16', null);
INSERT INTO `voucher` VALUES ('373', '18834418014', 'IB16034932092093', '45000', '36', '25', '1520', '', '0', '2019-11-16 20:52:47', '2021-12-16', null);
INSERT INTO `voucher` VALUES ('374', '18834418014', 'IB16034932092093', '45000', '36', '26', '1520', '', '0', '2019-11-16 20:52:47', '2022-01-16', null);
INSERT INTO `voucher` VALUES ('375', '18834418014', 'IB16034932092093', '45000', '36', '27', '1520', '', '0', '2019-11-16 20:52:47', '2022-02-16', null);
INSERT INTO `voucher` VALUES ('376', '18834418014', 'IB16034932092093', '45000', '36', '28', '1520', '', '0', '2019-11-16 20:52:47', '2022-03-16', null);
INSERT INTO `voucher` VALUES ('377', '18834418014', 'IB16034932092093', '45000', '36', '29', '1520', '', '0', '2019-11-16 20:52:47', '2022-04-16', null);
INSERT INTO `voucher` VALUES ('378', '18834418014', 'IB16034932092093', '45000', '36', '30', '1520', '', '0', '2019-11-16 20:52:47', '2022-05-16', null);
INSERT INTO `voucher` VALUES ('379', '18834418014', 'IB16034932092093', '45000', '36', '31', '1520', '', '0', '2019-11-16 20:52:47', '2022-06-16', null);
INSERT INTO `voucher` VALUES ('380', '18834418014', 'IB16034932092093', '45000', '36', '32', '1520', '', '0', '2019-11-16 20:52:47', '2022-07-16', null);
INSERT INTO `voucher` VALUES ('381', '18834418014', 'IB16034932092093', '45000', '36', '33', '1520', '', '0', '2019-11-16 20:52:47', '2022-08-16', null);
INSERT INTO `voucher` VALUES ('382', '18834418014', 'IB16034932092093', '45000', '36', '34', '1520', '', '0', '2019-11-16 20:52:47', '2022-09-16', null);
INSERT INTO `voucher` VALUES ('383', '18834418014', 'IB16034932092093', '45000', '36', '35', '1520', '', '0', '2019-11-16 20:52:47', '2022-10-16', null);
INSERT INTO `voucher` VALUES ('384', '18834418014', 'IB16034932092093', '45000', '36', '36', '1520', '', '0', '2019-11-16 20:52:47', '2022-11-16', null);
INSERT INTO `voucher` VALUES ('385', '18218526507', 'IB17535086261342', '200000', '12', '1', '17867', '', '0', '2019-11-17 09:19:06', '2019-12-17', null);
INSERT INTO `voucher` VALUES ('386', '18218526507', 'IB17535086261342', '200000', '12', '2', '17867', '', '0', '2019-11-17 09:19:06', '2020-01-17', null);
INSERT INTO `voucher` VALUES ('387', '18218526507', 'IB17535086261342', '200000', '12', '3', '17867', '', '0', '2019-11-17 09:19:06', '2020-02-17', null);
INSERT INTO `voucher` VALUES ('388', '18218526507', 'IB17535086261342', '200000', '12', '4', '17867', '', '0', '2019-11-17 09:19:06', '2020-03-17', null);
INSERT INTO `voucher` VALUES ('389', '18218526507', 'IB17535086261342', '200000', '12', '5', '17867', '', '0', '2019-11-17 09:19:06', '2020-04-17', null);
INSERT INTO `voucher` VALUES ('390', '18218526507', 'IB17535086261342', '200000', '12', '6', '17867', '', '0', '2019-11-17 09:19:06', '2020-05-17', null);
INSERT INTO `voucher` VALUES ('391', '18218526507', 'IB17535086261342', '200000', '12', '7', '17867', '', '0', '2019-11-17 09:19:06', '2020-06-17', null);
INSERT INTO `voucher` VALUES ('392', '18218526507', 'IB17535086261342', '200000', '12', '8', '17867', '', '0', '2019-11-17 09:19:06', '2020-07-17', null);
INSERT INTO `voucher` VALUES ('393', '18218526507', 'IB17535086261342', '200000', '12', '9', '17867', '', '0', '2019-11-17 09:19:06', '2020-08-17', null);
INSERT INTO `voucher` VALUES ('394', '18218526507', 'IB17535086261342', '200000', '12', '10', '17867', '', '0', '2019-11-17 09:19:06', '2020-09-17', null);
INSERT INTO `voucher` VALUES ('395', '18218526507', 'IB17535086261342', '200000', '12', '11', '17867', '', '0', '2019-11-17 09:19:06', '2020-10-17', null);
INSERT INTO `voucher` VALUES ('396', '18218526507', 'IB17535086261342', '200000', '12', '12', '17867', '', '0', '2019-11-17 09:19:06', '2020-11-17', null);
INSERT INTO `voucher` VALUES ('397', '18861020514', 'IB17578061233074', '60000', '24', '1', '2860', '', '0', '2019-11-17 11:12:11', '2019-12-17', null);
INSERT INTO `voucher` VALUES ('398', '18861020514', 'IB17578061233074', '60000', '24', '2', '2860', '', '0', '2019-11-17 11:12:11', '2020-01-17', null);
INSERT INTO `voucher` VALUES ('399', '18861020514', 'IB17578061233074', '60000', '24', '3', '2860', '', '0', '2019-11-17 11:12:11', '2020-02-17', null);
INSERT INTO `voucher` VALUES ('400', '18861020514', 'IB17578061233074', '60000', '24', '4', '2860', '', '0', '2019-11-17 11:12:11', '2020-03-17', null);
INSERT INTO `voucher` VALUES ('401', '18861020514', 'IB17578061233074', '60000', '24', '5', '2860', '', '0', '2019-11-17 11:12:11', '2020-04-17', null);
INSERT INTO `voucher` VALUES ('402', '18861020514', 'IB17578061233074', '60000', '24', '6', '2860', '', '0', '2019-11-17 11:12:11', '2020-05-17', null);
INSERT INTO `voucher` VALUES ('403', '18861020514', 'IB17578061233074', '60000', '24', '7', '2860', '', '0', '2019-11-17 11:12:11', '2020-06-17', null);
INSERT INTO `voucher` VALUES ('404', '18861020514', 'IB17578061233074', '60000', '24', '8', '2860', '', '0', '2019-11-17 11:12:11', '2020-07-17', null);
INSERT INTO `voucher` VALUES ('405', '18861020514', 'IB17578061233074', '60000', '24', '9', '2860', '', '0', '2019-11-17 11:12:11', '2020-08-17', null);
INSERT INTO `voucher` VALUES ('406', '18861020514', 'IB17578061233074', '60000', '24', '10', '2860', '', '0', '2019-11-17 11:12:11', '2020-09-17', null);
INSERT INTO `voucher` VALUES ('407', '18861020514', 'IB17578061233074', '60000', '24', '11', '2860', '', '0', '2019-11-17 11:12:11', '2020-10-17', null);
INSERT INTO `voucher` VALUES ('408', '18861020514', 'IB17578061233074', '60000', '24', '12', '2860', '', '0', '2019-11-17 11:12:11', '2020-11-17', null);
INSERT INTO `voucher` VALUES ('409', '18861020514', 'IB17578061233074', '60000', '24', '13', '2860', '', '0', '2019-11-17 11:12:11', '2020-12-17', null);
INSERT INTO `voucher` VALUES ('410', '18861020514', 'IB17578061233074', '60000', '24', '14', '2860', '', '0', '2019-11-17 11:12:11', '2021-01-17', null);
INSERT INTO `voucher` VALUES ('411', '18861020514', 'IB17578061233074', '60000', '24', '15', '2860', '', '0', '2019-11-17 11:12:11', '2021-02-17', null);
INSERT INTO `voucher` VALUES ('412', '18861020514', 'IB17578061233074', '60000', '24', '16', '2860', '', '0', '2019-11-17 11:12:11', '2021-03-17', null);
INSERT INTO `voucher` VALUES ('413', '18861020514', 'IB17578061233074', '60000', '24', '17', '2860', '', '0', '2019-11-17 11:12:11', '2021-04-17', null);
INSERT INTO `voucher` VALUES ('414', '18861020514', 'IB17578061233074', '60000', '24', '18', '2860', '', '0', '2019-11-17 11:12:11', '2021-05-17', null);
INSERT INTO `voucher` VALUES ('415', '18861020514', 'IB17578061233074', '60000', '24', '19', '2860', '', '0', '2019-11-17 11:12:11', '2021-06-17', null);
INSERT INTO `voucher` VALUES ('416', '18861020514', 'IB17578061233074', '60000', '24', '20', '2860', '', '0', '2019-11-17 11:12:11', '2021-07-17', null);
INSERT INTO `voucher` VALUES ('417', '18861020514', 'IB17578061233074', '60000', '24', '21', '2860', '', '0', '2019-11-17 11:12:11', '2021-08-17', null);
INSERT INTO `voucher` VALUES ('418', '18861020514', 'IB17578061233074', '60000', '24', '22', '2860', '', '0', '2019-11-17 11:12:11', '2021-09-17', null);
INSERT INTO `voucher` VALUES ('419', '18861020514', 'IB17578061233074', '60000', '24', '23', '2860', '', '0', '2019-11-17 11:12:11', '2021-10-17', null);
INSERT INTO `voucher` VALUES ('420', '18861020514', 'IB17578061233074', '60000', '24', '24', '2860', '', '0', '2019-11-17 11:12:11', '2021-11-17', null);
INSERT INTO `voucher` VALUES ('421', '15027913862', 'IB16870982331044', '30000', '12', '1', '2680', '', '0', '2019-11-17 12:07:44', '2019-12-17', null);
INSERT INTO `voucher` VALUES ('422', '15027913862', 'IB16870982331044', '30000', '12', '2', '2680', '', '0', '2019-11-17 12:07:44', '2020-01-17', null);
INSERT INTO `voucher` VALUES ('423', '15027913862', 'IB16870982331044', '30000', '12', '3', '2680', '', '0', '2019-11-17 12:07:44', '2020-02-17', null);
INSERT INTO `voucher` VALUES ('424', '15027913862', 'IB16870982331044', '30000', '12', '4', '2680', '', '0', '2019-11-17 12:07:44', '2020-03-17', null);
INSERT INTO `voucher` VALUES ('425', '15027913862', 'IB16870982331044', '30000', '12', '5', '2680', '', '0', '2019-11-17 12:07:44', '2020-04-17', null);
INSERT INTO `voucher` VALUES ('426', '15027913862', 'IB16870982331044', '30000', '12', '6', '2680', '', '0', '2019-11-17 12:07:44', '2020-05-17', null);
INSERT INTO `voucher` VALUES ('427', '15027913862', 'IB16870982331044', '30000', '12', '7', '2680', '', '0', '2019-11-17 12:07:44', '2020-06-17', null);
INSERT INTO `voucher` VALUES ('428', '15027913862', 'IB16870982331044', '30000', '12', '8', '2680', '', '0', '2019-11-17 12:07:44', '2020-07-17', null);
INSERT INTO `voucher` VALUES ('429', '15027913862', 'IB16870982331044', '30000', '12', '9', '2680', '', '0', '2019-11-17 12:07:44', '2020-08-17', null);
INSERT INTO `voucher` VALUES ('430', '15027913862', 'IB16870982331044', '30000', '12', '10', '2680', '', '0', '2019-11-17 12:07:44', '2020-09-17', null);
INSERT INTO `voucher` VALUES ('431', '15027913862', 'IB16870982331044', '30000', '12', '11', '2680', '', '0', '2019-11-17 12:07:44', '2020-10-17', null);
INSERT INTO `voucher` VALUES ('432', '15027913862', 'IB16870982331044', '30000', '12', '12', '2680', '', '0', '2019-11-17 12:07:44', '2020-11-17', null);
INSERT INTO `voucher` VALUES ('576', '15880377315', 'IB17769158939033', '49500', '12', '12', '4422', '', '0', '2019-11-18 16:00:00', '2020-11-18', null);
INSERT INTO `voucher` VALUES ('575', '15880377315', 'IB17769158939033', '49500', '12', '11', '4422', '', '0', '2019-11-18 16:00:00', '2020-10-18', null);
INSERT INTO `voucher` VALUES ('574', '15880377315', 'IB17769158939033', '49500', '12', '10', '4422', '', '0', '2019-11-18 16:00:00', '2020-09-18', null);
INSERT INTO `voucher` VALUES ('573', '15880377315', 'IB17769158939033', '49500', '12', '9', '4422', '', '0', '2019-11-18 16:00:00', '2020-08-18', null);
INSERT INTO `voucher` VALUES ('572', '15880377315', 'IB17769158939033', '49500', '12', '8', '4422', '', '0', '2019-11-18 16:00:00', '2020-07-18', null);
INSERT INTO `voucher` VALUES ('571', '15880377315', 'IB17769158939033', '49500', '12', '7', '4422', '', '0', '2019-11-18 16:00:00', '2020-06-18', null);
INSERT INTO `voucher` VALUES ('570', '15880377315', 'IB17769158939033', '49500', '12', '6', '4422', '', '0', '2019-11-18 16:00:00', '2020-05-18', null);
INSERT INTO `voucher` VALUES ('569', '15880377315', 'IB17769158939033', '49500', '12', '5', '4422', '', '0', '2019-11-18 16:00:00', '2020-04-18', null);
INSERT INTO `voucher` VALUES ('568', '15880377315', 'IB17769158939033', '49500', '12', '4', '4422', '', '0', '2019-11-18 16:00:00', '2020-03-18', null);
INSERT INTO `voucher` VALUES ('567', '15880377315', 'IB17769158939033', '49500', '12', '3', '4422', '', '0', '2019-11-18 16:00:00', '2020-02-18', null);
INSERT INTO `voucher` VALUES ('566', '15880377315', 'IB17769158939033', '49500', '12', '2', '4422', '', '0', '2019-11-18 16:00:00', '2020-01-18', null);
INSERT INTO `voucher` VALUES ('565', '15880377315', 'IB17769158939033', '49500', '12', '1', '4422', '', '0', '2019-11-18 16:00:00', '2019-12-18', null);
INSERT INTO `voucher` VALUES ('469', '15880664988', 'IB17775618370774', '30000', '36', '1', '1014', '', '0', '2019-11-17 17:15:20', '2019-12-17', null);
INSERT INTO `voucher` VALUES ('470', '15880664988', 'IB17775618370774', '30000', '36', '2', '1014', '', '0', '2019-11-17 17:15:20', '2020-01-17', null);
INSERT INTO `voucher` VALUES ('471', '15880664988', 'IB17775618370774', '30000', '36', '3', '1014', '', '0', '2019-11-17 17:15:20', '2020-02-17', null);
INSERT INTO `voucher` VALUES ('472', '15880664988', 'IB17775618370774', '30000', '36', '4', '1014', '', '0', '2019-11-17 17:15:20', '2020-03-17', null);
INSERT INTO `voucher` VALUES ('473', '15880664988', 'IB17775618370774', '30000', '36', '5', '1014', '', '0', '2019-11-17 17:15:20', '2020-04-17', null);
INSERT INTO `voucher` VALUES ('474', '15880664988', 'IB17775618370774', '30000', '36', '6', '1014', '', '0', '2019-11-17 17:15:20', '2020-05-17', null);
INSERT INTO `voucher` VALUES ('475', '15880664988', 'IB17775618370774', '30000', '36', '7', '1014', '', '0', '2019-11-17 17:15:20', '2020-06-17', null);
INSERT INTO `voucher` VALUES ('476', '15880664988', 'IB17775618370774', '30000', '36', '8', '1014', '', '0', '2019-11-17 17:15:20', '2020-07-17', null);
INSERT INTO `voucher` VALUES ('477', '15880664988', 'IB17775618370774', '30000', '36', '9', '1014', '', '0', '2019-11-17 17:15:20', '2020-08-17', null);
INSERT INTO `voucher` VALUES ('478', '15880664988', 'IB17775618370774', '30000', '36', '10', '1014', '', '0', '2019-11-17 17:15:20', '2020-09-17', null);
INSERT INTO `voucher` VALUES ('479', '15880664988', 'IB17775618370774', '30000', '36', '11', '1014', '', '0', '2019-11-17 17:15:20', '2020-10-17', null);
INSERT INTO `voucher` VALUES ('480', '15880664988', 'IB17775618370774', '30000', '36', '12', '1014', '', '0', '2019-11-17 17:15:20', '2020-11-17', null);
INSERT INTO `voucher` VALUES ('481', '15880664988', 'IB17775618370774', '30000', '36', '13', '1014', '', '0', '2019-11-17 17:15:20', '2020-12-17', null);
INSERT INTO `voucher` VALUES ('482', '15880664988', 'IB17775618370774', '30000', '36', '14', '1014', '', '0', '2019-11-17 17:15:20', '2021-01-17', null);
INSERT INTO `voucher` VALUES ('483', '15880664988', 'IB17775618370774', '30000', '36', '15', '1014', '', '0', '2019-11-17 17:15:20', '2021-02-17', null);
INSERT INTO `voucher` VALUES ('484', '15880664988', 'IB17775618370774', '30000', '36', '16', '1014', '', '0', '2019-11-17 17:15:20', '2021-03-17', null);
INSERT INTO `voucher` VALUES ('485', '15880664988', 'IB17775618370774', '30000', '36', '17', '1014', '', '0', '2019-11-17 17:15:20', '2021-04-17', null);
INSERT INTO `voucher` VALUES ('486', '15880664988', 'IB17775618370774', '30000', '36', '18', '1014', '', '0', '2019-11-17 17:15:20', '2021-05-17', null);
INSERT INTO `voucher` VALUES ('487', '15880664988', 'IB17775618370774', '30000', '36', '19', '1014', '', '0', '2019-11-17 17:15:20', '2021-06-17', null);
INSERT INTO `voucher` VALUES ('488', '15880664988', 'IB17775618370774', '30000', '36', '20', '1014', '', '0', '2019-11-17 17:15:20', '2021-07-17', null);
INSERT INTO `voucher` VALUES ('489', '15880664988', 'IB17775618370774', '30000', '36', '21', '1014', '', '0', '2019-11-17 17:15:20', '2021-08-17', null);
INSERT INTO `voucher` VALUES ('490', '15880664988', 'IB17775618370774', '30000', '36', '22', '1014', '', '0', '2019-11-17 17:15:20', '2021-09-17', null);
INSERT INTO `voucher` VALUES ('491', '15880664988', 'IB17775618370774', '30000', '36', '23', '1014', '', '0', '2019-11-17 17:15:20', '2021-10-17', null);
INSERT INTO `voucher` VALUES ('492', '15880664988', 'IB17775618370774', '30000', '36', '24', '1014', '', '0', '2019-11-17 17:15:20', '2021-11-17', null);
INSERT INTO `voucher` VALUES ('493', '15880664988', 'IB17775618370774', '30000', '36', '25', '1014', '', '0', '2019-11-17 17:15:20', '2021-12-17', null);
INSERT INTO `voucher` VALUES ('494', '15880664988', 'IB17775618370774', '30000', '36', '26', '1014', '', '0', '2019-11-17 17:15:20', '2022-01-17', null);
INSERT INTO `voucher` VALUES ('495', '15880664988', 'IB17775618370774', '30000', '36', '27', '1014', '', '0', '2019-11-17 17:15:20', '2022-02-17', null);
INSERT INTO `voucher` VALUES ('496', '15880664988', 'IB17775618370774', '30000', '36', '28', '1014', '', '0', '2019-11-17 17:15:20', '2022-03-17', null);
INSERT INTO `voucher` VALUES ('497', '15880664988', 'IB17775618370774', '30000', '36', '29', '1014', '', '0', '2019-11-17 17:15:20', '2022-04-17', null);
INSERT INTO `voucher` VALUES ('498', '15880664988', 'IB17775618370774', '30000', '36', '30', '1014', '', '0', '2019-11-17 17:15:20', '2022-05-17', null);
INSERT INTO `voucher` VALUES ('499', '15880664988', 'IB17775618370774', '30000', '36', '31', '1014', '', '0', '2019-11-17 17:15:20', '2022-06-17', null);
INSERT INTO `voucher` VALUES ('500', '15880664988', 'IB17775618370774', '30000', '36', '32', '1014', '', '0', '2019-11-17 17:15:20', '2022-07-17', null);
INSERT INTO `voucher` VALUES ('501', '15880664988', 'IB17775618370774', '30000', '36', '33', '1014', '', '0', '2019-11-17 17:15:20', '2022-08-17', null);
INSERT INTO `voucher` VALUES ('502', '15880664988', 'IB17775618370774', '30000', '36', '34', '1014', '', '0', '2019-11-17 17:15:20', '2022-09-17', null);
INSERT INTO `voucher` VALUES ('503', '15880664988', 'IB17775618370774', '30000', '36', '35', '1014', '', '0', '2019-11-17 17:15:20', '2022-10-17', null);
INSERT INTO `voucher` VALUES ('504', '15880664988', 'IB17775618370774', '30000', '36', '36', '1014', '', '0', '2019-11-17 17:15:20', '2022-11-17', null);
INSERT INTO `voucher` VALUES ('505', '18218526507', 'IB18435319247358', '180000', '36', '1', '6080', '', '0', '2019-11-18 10:19:25', '2019-12-18', null);
INSERT INTO `voucher` VALUES ('506', '18218526507', 'IB18435319247358', '180000', '36', '2', '6080', '', '0', '2019-11-18 10:19:25', '2020-01-18', null);
INSERT INTO `voucher` VALUES ('507', '18218526507', 'IB18435319247358', '180000', '36', '3', '6080', '', '0', '2019-11-18 10:19:25', '2020-02-18', null);
INSERT INTO `voucher` VALUES ('508', '18218526507', 'IB18435319247358', '180000', '36', '4', '6080', '', '0', '2019-11-18 10:19:25', '2020-03-18', null);
INSERT INTO `voucher` VALUES ('509', '18218526507', 'IB18435319247358', '180000', '36', '5', '6080', '', '0', '2019-11-18 10:19:25', '2020-04-18', null);
INSERT INTO `voucher` VALUES ('510', '18218526507', 'IB18435319247358', '180000', '36', '6', '6080', '', '0', '2019-11-18 10:19:25', '2020-05-18', null);
INSERT INTO `voucher` VALUES ('511', '18218526507', 'IB18435319247358', '180000', '36', '7', '6080', '', '0', '2019-11-18 10:19:25', '2020-06-18', null);
INSERT INTO `voucher` VALUES ('512', '18218526507', 'IB18435319247358', '180000', '36', '8', '6080', '', '0', '2019-11-18 10:19:25', '2020-07-18', null);
INSERT INTO `voucher` VALUES ('513', '18218526507', 'IB18435319247358', '180000', '36', '9', '6080', '', '0', '2019-11-18 10:19:25', '2020-08-18', null);
INSERT INTO `voucher` VALUES ('514', '18218526507', 'IB18435319247358', '180000', '36', '10', '6080', '', '0', '2019-11-18 10:19:25', '2020-09-18', null);
INSERT INTO `voucher` VALUES ('515', '18218526507', 'IB18435319247358', '180000', '36', '11', '6080', '', '0', '2019-11-18 10:19:25', '2020-10-18', null);
INSERT INTO `voucher` VALUES ('516', '18218526507', 'IB18435319247358', '180000', '36', '12', '6080', '', '0', '2019-11-18 10:19:25', '2020-11-18', null);
INSERT INTO `voucher` VALUES ('517', '18218526507', 'IB18435319247358', '180000', '36', '13', '6080', '', '0', '2019-11-18 10:19:25', '2020-12-18', null);
INSERT INTO `voucher` VALUES ('518', '18218526507', 'IB18435319247358', '180000', '36', '14', '6080', '', '0', '2019-11-18 10:19:25', '2021-01-18', null);
INSERT INTO `voucher` VALUES ('519', '18218526507', 'IB18435319247358', '180000', '36', '15', '6080', '', '0', '2019-11-18 10:19:25', '2021-02-18', null);
INSERT INTO `voucher` VALUES ('520', '18218526507', 'IB18435319247358', '180000', '36', '16', '6080', '', '0', '2019-11-18 10:19:25', '2021-03-18', null);
INSERT INTO `voucher` VALUES ('521', '18218526507', 'IB18435319247358', '180000', '36', '17', '6080', '', '0', '2019-11-18 10:19:25', '2021-04-18', null);
INSERT INTO `voucher` VALUES ('522', '18218526507', 'IB18435319247358', '180000', '36', '18', '6080', '', '0', '2019-11-18 10:19:25', '2021-05-18', null);
INSERT INTO `voucher` VALUES ('523', '18218526507', 'IB18435319247358', '180000', '36', '19', '6080', '', '0', '2019-11-18 10:19:25', '2021-06-18', null);
INSERT INTO `voucher` VALUES ('524', '18218526507', 'IB18435319247358', '180000', '36', '20', '6080', '', '0', '2019-11-18 10:19:25', '2021-07-18', null);
INSERT INTO `voucher` VALUES ('525', '18218526507', 'IB18435319247358', '180000', '36', '21', '6080', '', '0', '2019-11-18 10:19:25', '2021-08-18', null);
INSERT INTO `voucher` VALUES ('526', '18218526507', 'IB18435319247358', '180000', '36', '22', '6080', '', '0', '2019-11-18 10:19:25', '2021-09-18', null);
INSERT INTO `voucher` VALUES ('527', '18218526507', 'IB18435319247358', '180000', '36', '23', '6080', '', '0', '2019-11-18 10:19:25', '2021-10-18', null);
INSERT INTO `voucher` VALUES ('528', '18218526507', 'IB18435319247358', '180000', '36', '24', '6080', '', '0', '2019-11-18 10:19:25', '2021-11-18', null);
INSERT INTO `voucher` VALUES ('529', '18218526507', 'IB18435319247358', '180000', '36', '25', '6080', '', '0', '2019-11-18 10:19:25', '2021-12-18', null);
INSERT INTO `voucher` VALUES ('530', '18218526507', 'IB18435319247358', '180000', '36', '26', '6080', '', '0', '2019-11-18 10:19:25', '2022-01-18', null);
INSERT INTO `voucher` VALUES ('531', '18218526507', 'IB18435319247358', '180000', '36', '27', '6080', '', '0', '2019-11-18 10:19:25', '2022-02-18', null);
INSERT INTO `voucher` VALUES ('532', '18218526507', 'IB18435319247358', '180000', '36', '28', '6080', '', '0', '2019-11-18 10:19:25', '2022-03-18', null);
INSERT INTO `voucher` VALUES ('533', '18218526507', 'IB18435319247358', '180000', '36', '29', '6080', '', '0', '2019-11-18 10:19:25', '2022-04-18', null);
INSERT INTO `voucher` VALUES ('534', '18218526507', 'IB18435319247358', '180000', '36', '30', '6080', '', '0', '2019-11-18 10:19:25', '2022-05-18', null);
INSERT INTO `voucher` VALUES ('535', '18218526507', 'IB18435319247358', '180000', '36', '31', '6080', '', '0', '2019-11-18 10:19:25', '2022-06-18', null);
INSERT INTO `voucher` VALUES ('536', '18218526507', 'IB18435319247358', '180000', '36', '32', '6080', '', '0', '2019-11-18 10:19:25', '2022-07-18', null);
INSERT INTO `voucher` VALUES ('537', '18218526507', 'IB18435319247358', '180000', '36', '33', '6080', '', '0', '2019-11-18 10:19:25', '2022-08-18', null);
INSERT INTO `voucher` VALUES ('538', '18218526507', 'IB18435319247358', '180000', '36', '34', '6080', '', '0', '2019-11-18 10:19:25', '2022-09-18', null);
INSERT INTO `voucher` VALUES ('539', '18218526507', 'IB18435319247358', '180000', '36', '35', '6080', '', '0', '2019-11-18 10:19:25', '2022-10-18', null);
INSERT INTO `voucher` VALUES ('540', '18218526507', 'IB18435319247358', '180000', '36', '36', '6080', '', '0', '2019-11-18 10:19:25', '2022-11-18', null);
INSERT INTO `voucher` VALUES ('541', '15076206035', 'IB18491540804035', '30000', '12', '1', '2680', '', '0', '2019-11-18 12:55:12', '2019-12-18', null);
INSERT INTO `voucher` VALUES ('542', '15076206035', 'IB18491540804035', '30000', '12', '2', '2680', '', '0', '2019-11-18 12:55:12', '2020-01-18', null);
INSERT INTO `voucher` VALUES ('543', '15076206035', 'IB18491540804035', '30000', '12', '3', '2680', '', '0', '2019-11-18 12:55:12', '2020-02-18', null);
INSERT INTO `voucher` VALUES ('544', '15076206035', 'IB18491540804035', '30000', '12', '4', '2680', '', '0', '2019-11-18 12:55:12', '2020-03-18', null);
INSERT INTO `voucher` VALUES ('545', '15076206035', 'IB18491540804035', '30000', '12', '5', '2680', '', '0', '2019-11-18 12:55:12', '2020-04-18', null);
INSERT INTO `voucher` VALUES ('546', '15076206035', 'IB18491540804035', '30000', '12', '6', '2680', '', '0', '2019-11-18 12:55:12', '2020-05-18', null);
INSERT INTO `voucher` VALUES ('547', '15076206035', 'IB18491540804035', '30000', '12', '7', '2680', '', '0', '2019-11-18 12:55:12', '2020-06-18', null);
INSERT INTO `voucher` VALUES ('548', '15076206035', 'IB18491540804035', '30000', '12', '8', '2680', '', '0', '2019-11-18 12:55:12', '2020-07-18', null);
INSERT INTO `voucher` VALUES ('549', '15076206035', 'IB18491540804035', '30000', '12', '9', '2680', '', '0', '2019-11-18 12:55:12', '2020-08-18', null);
INSERT INTO `voucher` VALUES ('550', '15076206035', 'IB18491540804035', '30000', '12', '10', '2680', '', '0', '2019-11-18 12:55:12', '2020-09-18', null);
INSERT INTO `voucher` VALUES ('551', '15076206035', 'IB18491540804035', '30000', '12', '11', '2680', '', '0', '2019-11-18 12:55:12', '2020-10-18', null);
INSERT INTO `voucher` VALUES ('552', '15076206035', 'IB18491540804035', '30000', '12', '12', '2680', '', '0', '2019-11-18 12:55:12', '2020-11-18', null);
INSERT INTO `voucher` VALUES ('577', '15262378634', 'IB18555217980963', '60000', '24', '1', '2860', '', '0', '2019-11-18 16:08:35', '2019-12-18', null);
INSERT INTO `voucher` VALUES ('578', '15262378634', 'IB18555217980963', '60000', '24', '2', '2860', '', '0', '2019-11-18 16:08:35', '2020-01-18', null);
INSERT INTO `voucher` VALUES ('579', '15262378634', 'IB18555217980963', '60000', '24', '3', '2860', '', '0', '2019-11-18 16:08:35', '2020-02-18', null);
INSERT INTO `voucher` VALUES ('580', '15262378634', 'IB18555217980963', '60000', '24', '4', '2860', '', '0', '2019-11-18 16:08:35', '2020-03-18', null);
INSERT INTO `voucher` VALUES ('581', '15262378634', 'IB18555217980963', '60000', '24', '5', '2860', '', '0', '2019-11-18 16:08:35', '2020-04-18', null);
INSERT INTO `voucher` VALUES ('582', '15262378634', 'IB18555217980963', '60000', '24', '6', '2860', '', '0', '2019-11-18 16:08:35', '2020-05-18', null);
INSERT INTO `voucher` VALUES ('583', '15262378634', 'IB18555217980963', '60000', '24', '7', '2860', '', '0', '2019-11-18 16:08:35', '2020-06-18', null);
INSERT INTO `voucher` VALUES ('584', '15262378634', 'IB18555217980963', '60000', '24', '8', '2860', '', '0', '2019-11-18 16:08:35', '2020-07-18', null);
INSERT INTO `voucher` VALUES ('585', '15262378634', 'IB18555217980963', '60000', '24', '9', '2860', '', '0', '2019-11-18 16:08:35', '2020-08-18', null);
INSERT INTO `voucher` VALUES ('586', '15262378634', 'IB18555217980963', '60000', '24', '10', '2860', '', '0', '2019-11-18 16:08:35', '2020-09-18', null);
INSERT INTO `voucher` VALUES ('587', '15262378634', 'IB18555217980963', '60000', '24', '11', '2860', '', '0', '2019-11-18 16:08:35', '2020-10-18', null);
INSERT INTO `voucher` VALUES ('588', '15262378634', 'IB18555217980963', '60000', '24', '12', '2860', '', '0', '2019-11-18 16:08:35', '2020-11-18', null);
INSERT INTO `voucher` VALUES ('589', '15262378634', 'IB18555217980963', '60000', '24', '13', '2860', '', '0', '2019-11-18 16:08:35', '2020-12-18', null);
INSERT INTO `voucher` VALUES ('590', '15262378634', 'IB18555217980963', '60000', '24', '14', '2860', '', '0', '2019-11-18 16:08:35', '2021-01-18', null);
INSERT INTO `voucher` VALUES ('591', '15262378634', 'IB18555217980963', '60000', '24', '15', '2860', '', '0', '2019-11-18 16:08:35', '2021-02-18', null);
INSERT INTO `voucher` VALUES ('592', '15262378634', 'IB18555217980963', '60000', '24', '16', '2860', '', '0', '2019-11-18 16:08:35', '2021-03-18', null);
INSERT INTO `voucher` VALUES ('593', '15262378634', 'IB18555217980963', '60000', '24', '17', '2860', '', '0', '2019-11-18 16:08:35', '2021-04-18', null);
INSERT INTO `voucher` VALUES ('594', '15262378634', 'IB18555217980963', '60000', '24', '18', '2860', '', '0', '2019-11-18 16:08:35', '2021-05-18', null);
INSERT INTO `voucher` VALUES ('595', '15262378634', 'IB18555217980963', '60000', '24', '19', '2860', '', '0', '2019-11-18 16:08:35', '2021-06-18', null);
INSERT INTO `voucher` VALUES ('596', '15262378634', 'IB18555217980963', '60000', '24', '20', '2860', '', '0', '2019-11-18 16:08:35', '2021-07-18', null);
INSERT INTO `voucher` VALUES ('597', '15262378634', 'IB18555217980963', '60000', '24', '21', '2860', '', '0', '2019-11-18 16:08:35', '2021-08-18', null);
INSERT INTO `voucher` VALUES ('598', '15262378634', 'IB18555217980963', '60000', '24', '22', '2860', '', '0', '2019-11-18 16:08:35', '2021-09-18', null);
INSERT INTO `voucher` VALUES ('599', '15262378634', 'IB18555217980963', '60000', '24', '23', '2860', '', '0', '2019-11-18 16:08:35', '2021-10-18', null);
INSERT INTO `voucher` VALUES ('600', '15262378634', 'IB18555217980963', '60000', '24', '24', '2860', '', '0', '2019-11-18 16:08:35', '2021-11-18', null);
INSERT INTO `voucher` VALUES ('828', '18293732211', 'IB18626507369220', '132000', '36', '36', '4459', '', '0', '2019-11-20 14:40:52', '2022-11-20', null);
INSERT INTO `voucher` VALUES ('827', '18293732211', 'IB18626507369220', '132000', '36', '35', '4459', '', '0', '2019-11-20 14:40:52', '2022-10-20', null);
INSERT INTO `voucher` VALUES ('826', '18293732211', 'IB18626507369220', '132000', '36', '34', '4459', '', '0', '2019-11-20 14:40:52', '2022-09-20', null);
INSERT INTO `voucher` VALUES ('825', '18293732211', 'IB18626507369220', '132000', '36', '33', '4459', '', '0', '2019-11-20 14:40:52', '2022-08-20', null);
INSERT INTO `voucher` VALUES ('824', '18293732211', 'IB18626507369220', '132000', '36', '32', '4459', '', '0', '2019-11-20 14:40:52', '2022-07-20', null);
INSERT INTO `voucher` VALUES ('823', '18293732211', 'IB18626507369220', '132000', '36', '31', '4459', '', '0', '2019-11-20 14:40:52', '2022-06-20', null);
INSERT INTO `voucher` VALUES ('822', '18293732211', 'IB18626507369220', '132000', '36', '30', '4459', '', '0', '2019-11-20 14:40:52', '2022-05-20', null);
INSERT INTO `voucher` VALUES ('821', '18293732211', 'IB18626507369220', '132000', '36', '29', '4459', '', '0', '2019-11-20 14:40:52', '2022-04-20', null);
INSERT INTO `voucher` VALUES ('820', '18293732211', 'IB18626507369220', '132000', '36', '28', '4459', '', '0', '2019-11-20 14:40:52', '2022-03-20', null);
INSERT INTO `voucher` VALUES ('819', '18293732211', 'IB18626507369220', '132000', '36', '27', '4459', '', '0', '2019-11-20 14:40:52', '2022-02-20', null);
INSERT INTO `voucher` VALUES ('818', '18293732211', 'IB18626507369220', '132000', '36', '26', '4459', '', '0', '2019-11-20 14:40:52', '2022-01-20', null);
INSERT INTO `voucher` VALUES ('817', '18293732211', 'IB18626507369220', '132000', '36', '25', '4459', '', '0', '2019-11-20 14:40:52', '2021-12-20', null);
INSERT INTO `voucher` VALUES ('816', '18293732211', 'IB18626507369220', '132000', '36', '24', '4459', '', '0', '2019-11-20 14:40:52', '2021-11-20', null);
INSERT INTO `voucher` VALUES ('815', '18293732211', 'IB18626507369220', '132000', '36', '23', '4459', '', '0', '2019-11-20 14:40:52', '2021-10-20', null);
INSERT INTO `voucher` VALUES ('814', '18293732211', 'IB18626507369220', '132000', '36', '22', '4459', '', '0', '2019-11-20 14:40:52', '2021-09-20', null);
INSERT INTO `voucher` VALUES ('813', '18293732211', 'IB18626507369220', '132000', '36', '21', '4459', '', '0', '2019-11-20 14:40:52', '2021-08-20', null);
INSERT INTO `voucher` VALUES ('812', '18293732211', 'IB18626507369220', '132000', '36', '20', '4459', '', '0', '2019-11-20 14:40:52', '2021-07-20', null);
INSERT INTO `voucher` VALUES ('811', '18293732211', 'IB18626507369220', '132000', '36', '19', '4459', '', '0', '2019-11-20 14:40:52', '2021-06-20', null);
INSERT INTO `voucher` VALUES ('810', '18293732211', 'IB18626507369220', '132000', '36', '18', '4459', '', '0', '2019-11-20 14:40:52', '2021-05-20', null);
INSERT INTO `voucher` VALUES ('809', '18293732211', 'IB18626507369220', '132000', '36', '17', '4459', '', '0', '2019-11-20 14:40:52', '2021-04-20', null);
INSERT INTO `voucher` VALUES ('808', '18293732211', 'IB18626507369220', '132000', '36', '16', '4459', '', '0', '2019-11-20 14:40:52', '2021-03-20', null);
INSERT INTO `voucher` VALUES ('807', '18293732211', 'IB18626507369220', '132000', '36', '15', '4459', '', '0', '2019-11-20 14:40:52', '2021-02-20', null);
INSERT INTO `voucher` VALUES ('806', '18293732211', 'IB18626507369220', '132000', '36', '14', '4459', '', '0', '2019-11-20 14:40:52', '2021-01-20', null);
INSERT INTO `voucher` VALUES ('805', '18293732211', 'IB18626507369220', '132000', '36', '13', '4459', '', '0', '2019-11-20 14:40:52', '2020-12-20', null);
INSERT INTO `voucher` VALUES ('804', '18293732211', 'IB18626507369220', '132000', '36', '12', '4459', '', '0', '2019-11-20 14:40:52', '2020-11-20', null);
INSERT INTO `voucher` VALUES ('803', '18293732211', 'IB18626507369220', '132000', '36', '11', '4459', '', '0', '2019-11-20 14:40:52', '2020-10-20', null);
INSERT INTO `voucher` VALUES ('802', '18293732211', 'IB18626507369220', '132000', '36', '10', '4459', '', '0', '2019-11-20 14:40:52', '2020-09-20', null);
INSERT INTO `voucher` VALUES ('801', '18293732211', 'IB18626507369220', '132000', '36', '9', '4459', '', '0', '2019-11-20 14:40:52', '2020-08-20', null);
INSERT INTO `voucher` VALUES ('800', '18293732211', 'IB18626507369220', '132000', '36', '8', '4459', '', '0', '2019-11-20 14:40:52', '2020-07-20', null);
INSERT INTO `voucher` VALUES ('799', '18293732211', 'IB18626507369220', '132000', '36', '7', '4459', '', '0', '2019-11-20 14:40:52', '2020-06-20', null);
INSERT INTO `voucher` VALUES ('798', '18293732211', 'IB18626507369220', '132000', '36', '6', '4459', '', '0', '2019-11-20 14:40:52', '2020-05-20', null);
INSERT INTO `voucher` VALUES ('797', '18293732211', 'IB18626507369220', '132000', '36', '5', '4459', '', '0', '2019-11-20 14:40:52', '2020-04-20', null);
INSERT INTO `voucher` VALUES ('796', '18293732211', 'IB18626507369220', '132000', '36', '4', '4459', '', '0', '2019-11-20 14:40:52', '2020-03-20', null);
INSERT INTO `voucher` VALUES ('795', '18293732211', 'IB18626507369220', '132000', '36', '3', '4459', '', '0', '2019-11-20 14:40:52', '2020-02-20', null);
INSERT INTO `voucher` VALUES ('794', '18293732211', 'IB18626507369220', '132000', '36', '2', '4459', '', '0', '2019-11-20 14:40:52', '2020-01-20', null);
INSERT INTO `voucher` VALUES ('793', '18293732211', 'IB18626507369220', '132000', '36', '1', '4459', '', '0', '2019-11-20 14:40:52', '2019-12-20', null);
INSERT INTO `voucher` VALUES ('637', '13547114001', 'IB19277290759994', '50000', '24', '1', '2384', '', '0', '2019-11-19 10:58:39', '2019-12-19', null);
INSERT INTO `voucher` VALUES ('638', '13547114001', 'IB19277290759994', '50000', '24', '2', '2384', '', '0', '2019-11-19 10:58:39', '2020-01-19', null);
INSERT INTO `voucher` VALUES ('639', '13547114001', 'IB19277290759994', '50000', '24', '3', '2384', '', '0', '2019-11-19 10:58:39', '2020-02-19', null);
INSERT INTO `voucher` VALUES ('640', '13547114001', 'IB19277290759994', '50000', '24', '4', '2384', '', '0', '2019-11-19 10:58:39', '2020-03-19', null);
INSERT INTO `voucher` VALUES ('641', '13547114001', 'IB19277290759994', '50000', '24', '5', '2384', '', '0', '2019-11-19 10:58:39', '2020-04-19', null);
INSERT INTO `voucher` VALUES ('642', '13547114001', 'IB19277290759994', '50000', '24', '6', '2384', '', '0', '2019-11-19 10:58:39', '2020-05-19', null);
INSERT INTO `voucher` VALUES ('643', '13547114001', 'IB19277290759994', '50000', '24', '7', '2384', '', '0', '2019-11-19 10:58:39', '2020-06-19', null);
INSERT INTO `voucher` VALUES ('644', '13547114001', 'IB19277290759994', '50000', '24', '8', '2384', '', '0', '2019-11-19 10:58:39', '2020-07-19', null);
INSERT INTO `voucher` VALUES ('645', '13547114001', 'IB19277290759994', '50000', '24', '9', '2384', '', '0', '2019-11-19 10:58:39', '2020-08-19', null);
INSERT INTO `voucher` VALUES ('646', '13547114001', 'IB19277290759994', '50000', '24', '10', '2384', '', '0', '2019-11-19 10:58:39', '2020-09-19', null);
INSERT INTO `voucher` VALUES ('647', '13547114001', 'IB19277290759994', '50000', '24', '11', '2384', '', '0', '2019-11-19 10:58:39', '2020-10-19', null);
INSERT INTO `voucher` VALUES ('648', '13547114001', 'IB19277290759994', '50000', '24', '12', '2384', '', '0', '2019-11-19 10:58:39', '2020-11-19', null);
INSERT INTO `voucher` VALUES ('649', '13547114001', 'IB19277290759994', '50000', '24', '13', '2384', '', '0', '2019-11-19 10:58:39', '2020-12-19', null);
INSERT INTO `voucher` VALUES ('650', '13547114001', 'IB19277290759994', '50000', '24', '14', '2384', '', '0', '2019-11-19 10:58:39', '2021-01-19', null);
INSERT INTO `voucher` VALUES ('651', '13547114001', 'IB19277290759994', '50000', '24', '15', '2384', '', '0', '2019-11-19 10:58:39', '2021-02-19', null);
INSERT INTO `voucher` VALUES ('652', '13547114001', 'IB19277290759994', '50000', '24', '16', '2384', '', '0', '2019-11-19 10:58:39', '2021-03-19', null);
INSERT INTO `voucher` VALUES ('653', '13547114001', 'IB19277290759994', '50000', '24', '17', '2384', '', '0', '2019-11-19 10:58:39', '2021-04-19', null);
INSERT INTO `voucher` VALUES ('654', '13547114001', 'IB19277290759994', '50000', '24', '18', '2384', '', '0', '2019-11-19 10:58:39', '2021-05-19', null);
INSERT INTO `voucher` VALUES ('655', '13547114001', 'IB19277290759994', '50000', '24', '19', '2384', '', '0', '2019-11-19 10:58:39', '2021-06-19', null);
INSERT INTO `voucher` VALUES ('656', '13547114001', 'IB19277290759994', '50000', '24', '20', '2384', '', '0', '2019-11-19 10:58:39', '2021-07-19', null);
INSERT INTO `voucher` VALUES ('657', '13547114001', 'IB19277290759994', '50000', '24', '21', '2384', '', '0', '2019-11-19 10:58:39', '2021-08-19', null);
INSERT INTO `voucher` VALUES ('658', '13547114001', 'IB19277290759994', '50000', '24', '22', '2384', '', '0', '2019-11-19 10:58:39', '2021-09-19', null);
INSERT INTO `voucher` VALUES ('659', '13547114001', 'IB19277290759994', '50000', '24', '23', '2384', '', '0', '2019-11-19 10:58:39', '2021-10-19', null);
INSERT INTO `voucher` VALUES ('660', '13547114001', 'IB19277290759994', '50000', '24', '24', '2384', '', '0', '2019-11-19 10:58:39', '2021-11-19', null);
INSERT INTO `voucher` VALUES ('768', '15711421949', 'IB19337544106956', '60000', '24', '24', '2860', '', '0', '2019-11-19 16:54:38', '2021-11-19', null);
INSERT INTO `voucher` VALUES ('767', '15711421949', 'IB19337544106956', '60000', '24', '23', '2860', '', '0', '2019-11-19 16:54:38', '2021-10-19', null);
INSERT INTO `voucher` VALUES ('766', '15711421949', 'IB19337544106956', '60000', '24', '22', '2860', '', '0', '2019-11-19 16:54:38', '2021-09-19', null);
INSERT INTO `voucher` VALUES ('765', '15711421949', 'IB19337544106956', '60000', '24', '21', '2860', '', '0', '2019-11-19 16:54:38', '2021-08-19', null);
INSERT INTO `voucher` VALUES ('764', '15711421949', 'IB19337544106956', '60000', '24', '20', '2860', '', '0', '2019-11-19 16:54:38', '2021-07-19', null);
INSERT INTO `voucher` VALUES ('763', '15711421949', 'IB19337544106956', '60000', '24', '19', '2860', '', '0', '2019-11-19 16:54:38', '2021-06-19', null);
INSERT INTO `voucher` VALUES ('762', '15711421949', 'IB19337544106956', '60000', '24', '18', '2860', '', '0', '2019-11-19 16:54:38', '2021-05-19', null);
INSERT INTO `voucher` VALUES ('761', '15711421949', 'IB19337544106956', '60000', '24', '17', '2860', '', '0', '2019-11-19 16:54:38', '2021-04-19', null);
INSERT INTO `voucher` VALUES ('760', '15711421949', 'IB19337544106956', '60000', '24', '16', '2860', '', '0', '2019-11-19 16:54:38', '2021-03-19', null);
INSERT INTO `voucher` VALUES ('759', '15711421949', 'IB19337544106956', '60000', '24', '15', '2860', '', '0', '2019-11-19 16:54:38', '2021-02-19', null);
INSERT INTO `voucher` VALUES ('758', '15711421949', 'IB19337544106956', '60000', '24', '14', '2860', '', '0', '2019-11-19 16:54:38', '2021-01-19', null);
INSERT INTO `voucher` VALUES ('757', '15711421949', 'IB19337544106956', '60000', '24', '13', '2860', '', '0', '2019-11-19 16:54:38', '2020-12-19', null);
INSERT INTO `voucher` VALUES ('756', '15711421949', 'IB19337544106956', '60000', '24', '12', '2860', '', '0', '2019-11-19 16:54:38', '2020-11-19', null);
INSERT INTO `voucher` VALUES ('755', '15711421949', 'IB19337544106956', '60000', '24', '11', '2860', '', '0', '2019-11-19 16:54:38', '2020-10-19', null);
INSERT INTO `voucher` VALUES ('754', '15711421949', 'IB19337544106956', '60000', '24', '10', '2860', '', '0', '2019-11-19 16:54:38', '2020-09-19', null);
INSERT INTO `voucher` VALUES ('753', '15711421949', 'IB19337544106956', '60000', '24', '9', '2860', '', '0', '2019-11-19 16:54:38', '2020-08-19', null);
INSERT INTO `voucher` VALUES ('752', '15711421949', 'IB19337544106956', '60000', '24', '8', '2860', '', '0', '2019-11-19 16:54:38', '2020-07-19', null);
INSERT INTO `voucher` VALUES ('751', '15711421949', 'IB19337544106956', '60000', '24', '7', '2860', '', '0', '2019-11-19 16:54:38', '2020-06-19', null);
INSERT INTO `voucher` VALUES ('750', '15711421949', 'IB19337544106956', '60000', '24', '6', '2860', '', '0', '2019-11-19 16:54:38', '2020-05-19', null);
INSERT INTO `voucher` VALUES ('749', '15711421949', 'IB19337544106956', '60000', '24', '5', '2860', '', '0', '2019-11-19 16:54:38', '2020-04-19', null);
INSERT INTO `voucher` VALUES ('748', '15711421949', 'IB19337544106956', '60000', '24', '4', '2860', '', '0', '2019-11-19 16:54:38', '2020-03-19', null);
INSERT INTO `voucher` VALUES ('747', '15711421949', 'IB19337544106956', '60000', '24', '3', '2860', '', '0', '2019-11-19 16:54:38', '2020-02-19', null);
INSERT INTO `voucher` VALUES ('746', '15711421949', 'IB19337544106956', '60000', '24', '2', '2860', '', '0', '2019-11-19 16:54:38', '2020-01-19', null);
INSERT INTO `voucher` VALUES ('745', '15711421949', 'IB19337544106956', '60000', '24', '1', '2860', '', '0', '2019-11-19 16:54:38', '2019-12-19', null);
INSERT INTO `voucher` VALUES ('685', '13205690271', 'IB19384730262021', '80000', '36', '1', '2703', '', '0', '2019-11-19 14:35:03', '2019-12-19', null);
INSERT INTO `voucher` VALUES ('686', '13205690271', 'IB19384730262021', '80000', '36', '2', '2703', '', '0', '2019-11-19 14:35:03', '2020-01-19', null);
INSERT INTO `voucher` VALUES ('687', '13205690271', 'IB19384730262021', '80000', '36', '3', '2703', '', '0', '2019-11-19 14:35:03', '2020-02-19', null);
INSERT INTO `voucher` VALUES ('688', '13205690271', 'IB19384730262021', '80000', '36', '4', '2703', '', '0', '2019-11-19 14:35:03', '2020-03-19', null);
INSERT INTO `voucher` VALUES ('689', '13205690271', 'IB19384730262021', '80000', '36', '5', '2703', '', '0', '2019-11-19 14:35:03', '2020-04-19', null);
INSERT INTO `voucher` VALUES ('690', '13205690271', 'IB19384730262021', '80000', '36', '6', '2703', '', '0', '2019-11-19 14:35:03', '2020-05-19', null);
INSERT INTO `voucher` VALUES ('691', '13205690271', 'IB19384730262021', '80000', '36', '7', '2703', '', '0', '2019-11-19 14:35:03', '2020-06-19', null);
INSERT INTO `voucher` VALUES ('692', '13205690271', 'IB19384730262021', '80000', '36', '8', '2703', '', '0', '2019-11-19 14:35:03', '2020-07-19', null);
INSERT INTO `voucher` VALUES ('693', '13205690271', 'IB19384730262021', '80000', '36', '9', '2703', '', '0', '2019-11-19 14:35:03', '2020-08-19', null);
INSERT INTO `voucher` VALUES ('694', '13205690271', 'IB19384730262021', '80000', '36', '10', '2703', '', '0', '2019-11-19 14:35:03', '2020-09-19', null);
INSERT INTO `voucher` VALUES ('695', '13205690271', 'IB19384730262021', '80000', '36', '11', '2703', '', '0', '2019-11-19 14:35:03', '2020-10-19', null);
INSERT INTO `voucher` VALUES ('696', '13205690271', 'IB19384730262021', '80000', '36', '12', '2703', '', '0', '2019-11-19 14:35:03', '2020-11-19', null);
INSERT INTO `voucher` VALUES ('697', '13205690271', 'IB19384730262021', '80000', '36', '13', '2703', '', '0', '2019-11-19 14:35:03', '2020-12-19', null);
INSERT INTO `voucher` VALUES ('698', '13205690271', 'IB19384730262021', '80000', '36', '14', '2703', '', '0', '2019-11-19 14:35:03', '2021-01-19', null);
INSERT INTO `voucher` VALUES ('699', '13205690271', 'IB19384730262021', '80000', '36', '15', '2703', '', '0', '2019-11-19 14:35:03', '2021-02-19', null);
INSERT INTO `voucher` VALUES ('700', '13205690271', 'IB19384730262021', '80000', '36', '16', '2703', '', '0', '2019-11-19 14:35:03', '2021-03-19', null);
INSERT INTO `voucher` VALUES ('701', '13205690271', 'IB19384730262021', '80000', '36', '17', '2703', '', '0', '2019-11-19 14:35:03', '2021-04-19', null);
INSERT INTO `voucher` VALUES ('702', '13205690271', 'IB19384730262021', '80000', '36', '18', '2703', '', '0', '2019-11-19 14:35:03', '2021-05-19', null);
INSERT INTO `voucher` VALUES ('703', '13205690271', 'IB19384730262021', '80000', '36', '19', '2703', '', '0', '2019-11-19 14:35:03', '2021-06-19', null);
INSERT INTO `voucher` VALUES ('704', '13205690271', 'IB19384730262021', '80000', '36', '20', '2703', '', '0', '2019-11-19 14:35:03', '2021-07-19', null);
INSERT INTO `voucher` VALUES ('705', '13205690271', 'IB19384730262021', '80000', '36', '21', '2703', '', '0', '2019-11-19 14:35:03', '2021-08-19', null);
INSERT INTO `voucher` VALUES ('706', '13205690271', 'IB19384730262021', '80000', '36', '22', '2703', '', '0', '2019-11-19 14:35:03', '2021-09-19', null);
INSERT INTO `voucher` VALUES ('707', '13205690271', 'IB19384730262021', '80000', '36', '23', '2703', '', '0', '2019-11-19 14:35:03', '2021-10-19', null);
INSERT INTO `voucher` VALUES ('708', '13205690271', 'IB19384730262021', '80000', '36', '24', '2703', '', '0', '2019-11-19 14:35:03', '2021-11-19', null);
INSERT INTO `voucher` VALUES ('709', '13205690271', 'IB19384730262021', '80000', '36', '25', '2703', '', '0', '2019-11-19 14:35:03', '2021-12-19', null);
INSERT INTO `voucher` VALUES ('710', '13205690271', 'IB19384730262021', '80000', '36', '26', '2703', '', '0', '2019-11-19 14:35:03', '2022-01-19', null);
INSERT INTO `voucher` VALUES ('711', '13205690271', 'IB19384730262021', '80000', '36', '27', '2703', '', '0', '2019-11-19 14:35:03', '2022-02-19', null);
INSERT INTO `voucher` VALUES ('712', '13205690271', 'IB19384730262021', '80000', '36', '28', '2703', '', '0', '2019-11-19 14:35:03', '2022-03-19', null);
INSERT INTO `voucher` VALUES ('713', '13205690271', 'IB19384730262021', '80000', '36', '29', '2703', '', '0', '2019-11-19 14:35:03', '2022-04-19', null);
INSERT INTO `voucher` VALUES ('714', '13205690271', 'IB19384730262021', '80000', '36', '30', '2703', '', '0', '2019-11-19 14:35:03', '2022-05-19', null);
INSERT INTO `voucher` VALUES ('715', '13205690271', 'IB19384730262021', '80000', '36', '31', '2703', '', '0', '2019-11-19 14:35:03', '2022-06-19', null);
INSERT INTO `voucher` VALUES ('716', '13205690271', 'IB19384730262021', '80000', '36', '32', '2703', '', '0', '2019-11-19 14:35:03', '2022-07-19', null);
INSERT INTO `voucher` VALUES ('717', '13205690271', 'IB19384730262021', '80000', '36', '33', '2703', '', '0', '2019-11-19 14:35:03', '2022-08-19', null);
INSERT INTO `voucher` VALUES ('718', '13205690271', 'IB19384730262021', '80000', '36', '34', '2703', '', '0', '2019-11-19 14:35:03', '2022-09-19', null);
INSERT INTO `voucher` VALUES ('719', '13205690271', 'IB19384730262021', '80000', '36', '35', '2703', '', '0', '2019-11-19 14:35:03', '2022-10-19', null);
INSERT INTO `voucher` VALUES ('720', '13205690271', 'IB19384730262021', '80000', '36', '36', '2703', '', '0', '2019-11-19 14:35:03', '2022-11-19', null);
INSERT INTO `voucher` VALUES ('721', '15875973899', 'IB19441305963824', '50000', '24', '1', '2384', '', '0', '2019-11-19 16:10:12', '2019-12-19', null);
INSERT INTO `voucher` VALUES ('722', '15875973899', 'IB19441305963824', '50000', '24', '2', '2384', '', '0', '2019-11-19 16:10:12', '2020-01-19', null);
INSERT INTO `voucher` VALUES ('723', '15875973899', 'IB19441305963824', '50000', '24', '3', '2384', '', '0', '2019-11-19 16:10:12', '2020-02-19', null);
INSERT INTO `voucher` VALUES ('724', '15875973899', 'IB19441305963824', '50000', '24', '4', '2384', '', '0', '2019-11-19 16:10:12', '2020-03-19', null);
INSERT INTO `voucher` VALUES ('725', '15875973899', 'IB19441305963824', '50000', '24', '5', '2384', '', '0', '2019-11-19 16:10:12', '2020-04-19', null);
INSERT INTO `voucher` VALUES ('726', '15875973899', 'IB19441305963824', '50000', '24', '6', '2384', '', '0', '2019-11-19 16:10:12', '2020-05-19', null);
INSERT INTO `voucher` VALUES ('727', '15875973899', 'IB19441305963824', '50000', '24', '7', '2384', '', '0', '2019-11-19 16:10:12', '2020-06-19', null);
INSERT INTO `voucher` VALUES ('728', '15875973899', 'IB19441305963824', '50000', '24', '8', '2384', '', '0', '2019-11-19 16:10:12', '2020-07-19', null);
INSERT INTO `voucher` VALUES ('729', '15875973899', 'IB19441305963824', '50000', '24', '9', '2384', '', '0', '2019-11-19 16:10:12', '2020-08-19', null);
INSERT INTO `voucher` VALUES ('730', '15875973899', 'IB19441305963824', '50000', '24', '10', '2384', '', '0', '2019-11-19 16:10:12', '2020-09-19', null);
INSERT INTO `voucher` VALUES ('731', '15875973899', 'IB19441305963824', '50000', '24', '11', '2384', '', '0', '2019-11-19 16:10:12', '2020-10-19', null);
INSERT INTO `voucher` VALUES ('732', '15875973899', 'IB19441305963824', '50000', '24', '12', '2384', '', '0', '2019-11-19 16:10:12', '2020-11-19', null);
INSERT INTO `voucher` VALUES ('733', '15875973899', 'IB19441305963824', '50000', '24', '13', '2384', '', '0', '2019-11-19 16:10:12', '2020-12-19', null);
INSERT INTO `voucher` VALUES ('734', '15875973899', 'IB19441305963824', '50000', '24', '14', '2384', '', '0', '2019-11-19 16:10:12', '2021-01-19', null);
INSERT INTO `voucher` VALUES ('735', '15875973899', 'IB19441305963824', '50000', '24', '15', '2384', '', '0', '2019-11-19 16:10:12', '2021-02-19', null);
INSERT INTO `voucher` VALUES ('736', '15875973899', 'IB19441305963824', '50000', '24', '16', '2384', '', '0', '2019-11-19 16:10:12', '2021-03-19', null);
INSERT INTO `voucher` VALUES ('737', '15875973899', 'IB19441305963824', '50000', '24', '17', '2384', '', '0', '2019-11-19 16:10:12', '2021-04-19', null);
INSERT INTO `voucher` VALUES ('738', '15875973899', 'IB19441305963824', '50000', '24', '18', '2384', '', '0', '2019-11-19 16:10:12', '2021-05-19', null);
INSERT INTO `voucher` VALUES ('739', '15875973899', 'IB19441305963824', '50000', '24', '19', '2384', '', '0', '2019-11-19 16:10:12', '2021-06-19', null);
INSERT INTO `voucher` VALUES ('740', '15875973899', 'IB19441305963824', '50000', '24', '20', '2384', '', '0', '2019-11-19 16:10:12', '2021-07-19', null);
INSERT INTO `voucher` VALUES ('741', '15875973899', 'IB19441305963824', '50000', '24', '21', '2384', '', '0', '2019-11-19 16:10:12', '2021-08-19', null);
INSERT INTO `voucher` VALUES ('742', '15875973899', 'IB19441305963824', '50000', '24', '22', '2384', '', '0', '2019-11-19 16:10:12', '2021-09-19', null);
INSERT INTO `voucher` VALUES ('743', '15875973899', 'IB19441305963824', '50000', '24', '23', '2384', '', '0', '2019-11-19 16:10:12', '2021-10-19', null);
INSERT INTO `voucher` VALUES ('744', '15875973899', 'IB19441305963824', '50000', '24', '24', '2384', '', '0', '2019-11-19 16:10:12', '2021-11-19', null);
INSERT INTO `voucher` VALUES ('769', '18218526507', 'IB20127710547756', '168000', '12', '1', '15008', '', '0', '2019-11-20 09:20:03', '2019-12-20', null);
INSERT INTO `voucher` VALUES ('770', '18218526507', 'IB20127710547756', '168000', '12', '2', '15008', '', '0', '2019-11-20 09:20:03', '2020-01-20', null);
INSERT INTO `voucher` VALUES ('771', '18218526507', 'IB20127710547756', '168000', '12', '3', '15008', '', '0', '2019-11-20 09:20:03', '2020-02-20', null);
INSERT INTO `voucher` VALUES ('772', '18218526507', 'IB20127710547756', '168000', '12', '4', '15008', '', '0', '2019-11-20 09:20:03', '2020-03-20', null);
INSERT INTO `voucher` VALUES ('773', '18218526507', 'IB20127710547756', '168000', '12', '5', '15008', '', '0', '2019-11-20 09:20:03', '2020-04-20', null);
INSERT INTO `voucher` VALUES ('774', '18218526507', 'IB20127710547756', '168000', '12', '6', '15008', '', '0', '2019-11-20 09:20:03', '2020-05-20', null);
INSERT INTO `voucher` VALUES ('775', '18218526507', 'IB20127710547756', '168000', '12', '7', '15008', '', '0', '2019-11-20 09:20:03', '2020-06-20', null);
INSERT INTO `voucher` VALUES ('776', '18218526507', 'IB20127710547756', '168000', '12', '8', '15008', '', '0', '2019-11-20 09:20:03', '2020-07-20', null);
INSERT INTO `voucher` VALUES ('777', '18218526507', 'IB20127710547756', '168000', '12', '9', '15008', '', '0', '2019-11-20 09:20:03', '2020-08-20', null);
INSERT INTO `voucher` VALUES ('778', '18218526507', 'IB20127710547756', '168000', '12', '10', '15008', '', '0', '2019-11-20 09:20:03', '2020-09-20', null);
INSERT INTO `voucher` VALUES ('779', '18218526507', 'IB20127710547756', '168000', '12', '11', '15008', '', '0', '2019-11-20 09:20:03', '2020-10-20', null);
INSERT INTO `voucher` VALUES ('780', '18218526507', 'IB20127710547756', '168000', '12', '12', '15008', '', '0', '2019-11-20 09:20:03', '2020-11-20', null);
INSERT INTO `voucher` VALUES ('781', '14768081816', 'IB20210345363988', '50000', '12', '1', '4467', '', '0', '2019-11-20 12:31:27', '2019-12-20', null);
INSERT INTO `voucher` VALUES ('782', '14768081816', 'IB20210345363988', '50000', '12', '2', '4467', '', '0', '2019-11-20 12:31:27', '2020-01-20', null);
INSERT INTO `voucher` VALUES ('783', '14768081816', 'IB20210345363988', '50000', '12', '3', '4467', '', '0', '2019-11-20 12:31:27', '2020-02-20', null);
INSERT INTO `voucher` VALUES ('784', '14768081816', 'IB20210345363988', '50000', '12', '4', '4467', '', '0', '2019-11-20 12:31:27', '2020-03-20', null);
INSERT INTO `voucher` VALUES ('785', '14768081816', 'IB20210345363988', '50000', '12', '5', '4467', '', '0', '2019-11-20 12:31:27', '2020-04-20', null);
INSERT INTO `voucher` VALUES ('786', '14768081816', 'IB20210345363988', '50000', '12', '6', '4467', '', '0', '2019-11-20 12:31:27', '2020-05-20', null);
INSERT INTO `voucher` VALUES ('787', '14768081816', 'IB20210345363988', '50000', '12', '7', '4467', '', '0', '2019-11-20 12:31:27', '2020-06-20', null);
INSERT INTO `voucher` VALUES ('788', '14768081816', 'IB20210345363988', '50000', '12', '8', '4467', '', '0', '2019-11-20 12:31:27', '2020-07-20', null);
INSERT INTO `voucher` VALUES ('789', '14768081816', 'IB20210345363988', '50000', '12', '9', '4467', '', '0', '2019-11-20 12:31:27', '2020-08-20', null);
INSERT INTO `voucher` VALUES ('790', '14768081816', 'IB20210345363988', '50000', '12', '10', '4467', '', '0', '2019-11-20 12:31:27', '2020-09-20', null);
INSERT INTO `voucher` VALUES ('791', '14768081816', 'IB20210345363988', '50000', '12', '11', '4467', '', '0', '2019-11-20 12:31:27', '2020-10-20', null);
INSERT INTO `voucher` VALUES ('792', '14768081816', 'IB20210345363988', '50000', '12', '12', '4467', '', '0', '2019-11-20 12:31:27', '2020-11-20', null);
INSERT INTO `voucher` VALUES ('829', '15769582948', 'IB19416256076872', '60000', '36', '1', '2027', '', '0', '2019-11-20 16:07:49', '2019-12-20', null);
INSERT INTO `voucher` VALUES ('830', '15769582948', 'IB19416256076872', '60000', '36', '2', '2027', '', '0', '2019-11-20 16:07:49', '2020-01-20', null);
INSERT INTO `voucher` VALUES ('831', '15769582948', 'IB19416256076872', '60000', '36', '3', '2027', '', '0', '2019-11-20 16:07:49', '2020-02-20', null);
INSERT INTO `voucher` VALUES ('832', '15769582948', 'IB19416256076872', '60000', '36', '4', '2027', '', '0', '2019-11-20 16:07:49', '2020-03-20', null);
INSERT INTO `voucher` VALUES ('833', '15769582948', 'IB19416256076872', '60000', '36', '5', '2027', '', '0', '2019-11-20 16:07:49', '2020-04-20', null);
INSERT INTO `voucher` VALUES ('834', '15769582948', 'IB19416256076872', '60000', '36', '6', '2027', '', '0', '2019-11-20 16:07:49', '2020-05-20', null);
INSERT INTO `voucher` VALUES ('835', '15769582948', 'IB19416256076872', '60000', '36', '7', '2027', '', '0', '2019-11-20 16:07:49', '2020-06-20', null);
INSERT INTO `voucher` VALUES ('836', '15769582948', 'IB19416256076872', '60000', '36', '8', '2027', '', '0', '2019-11-20 16:07:49', '2020-07-20', null);
INSERT INTO `voucher` VALUES ('837', '15769582948', 'IB19416256076872', '60000', '36', '9', '2027', '', '0', '2019-11-20 16:07:49', '2020-08-20', null);
INSERT INTO `voucher` VALUES ('838', '15769582948', 'IB19416256076872', '60000', '36', '10', '2027', '', '0', '2019-11-20 16:07:49', '2020-09-20', null);
INSERT INTO `voucher` VALUES ('839', '15769582948', 'IB19416256076872', '60000', '36', '11', '2027', '', '0', '2019-11-20 16:07:49', '2020-10-20', null);
INSERT INTO `voucher` VALUES ('840', '15769582948', 'IB19416256076872', '60000', '36', '12', '2027', '', '0', '2019-11-20 16:07:49', '2020-11-20', null);
INSERT INTO `voucher` VALUES ('841', '15769582948', 'IB19416256076872', '60000', '36', '13', '2027', '', '0', '2019-11-20 16:07:49', '2020-12-20', null);
INSERT INTO `voucher` VALUES ('842', '15769582948', 'IB19416256076872', '60000', '36', '14', '2027', '', '0', '2019-11-20 16:07:49', '2021-01-20', null);
INSERT INTO `voucher` VALUES ('843', '15769582948', 'IB19416256076872', '60000', '36', '15', '2027', '', '0', '2019-11-20 16:07:49', '2021-02-20', null);
INSERT INTO `voucher` VALUES ('844', '15769582948', 'IB19416256076872', '60000', '36', '16', '2027', '', '0', '2019-11-20 16:07:49', '2021-03-20', null);
INSERT INTO `voucher` VALUES ('845', '15769582948', 'IB19416256076872', '60000', '36', '17', '2027', '', '0', '2019-11-20 16:07:49', '2021-04-20', null);
INSERT INTO `voucher` VALUES ('846', '15769582948', 'IB19416256076872', '60000', '36', '18', '2027', '', '0', '2019-11-20 16:07:49', '2021-05-20', null);
INSERT INTO `voucher` VALUES ('847', '15769582948', 'IB19416256076872', '60000', '36', '19', '2027', '', '0', '2019-11-20 16:07:49', '2021-06-20', null);
INSERT INTO `voucher` VALUES ('848', '15769582948', 'IB19416256076872', '60000', '36', '20', '2027', '', '0', '2019-11-20 16:07:49', '2021-07-20', null);
INSERT INTO `voucher` VALUES ('849', '15769582948', 'IB19416256076872', '60000', '36', '21', '2027', '', '0', '2019-11-20 16:07:49', '2021-08-20', null);
INSERT INTO `voucher` VALUES ('850', '15769582948', 'IB19416256076872', '60000', '36', '22', '2027', '', '0', '2019-11-20 16:07:49', '2021-09-20', null);
INSERT INTO `voucher` VALUES ('851', '15769582948', 'IB19416256076872', '60000', '36', '23', '2027', '', '0', '2019-11-20 16:07:49', '2021-10-20', null);
INSERT INTO `voucher` VALUES ('852', '15769582948', 'IB19416256076872', '60000', '36', '24', '2027', '', '0', '2019-11-20 16:07:49', '2021-11-20', null);
INSERT INTO `voucher` VALUES ('853', '15769582948', 'IB19416256076872', '60000', '36', '25', '2027', '', '0', '2019-11-20 16:07:49', '2021-12-20', null);
INSERT INTO `voucher` VALUES ('854', '15769582948', 'IB19416256076872', '60000', '36', '26', '2027', '', '0', '2019-11-20 16:07:49', '2022-01-20', null);
INSERT INTO `voucher` VALUES ('855', '15769582948', 'IB19416256076872', '60000', '36', '27', '2027', '', '0', '2019-11-20 16:07:49', '2022-02-20', null);
INSERT INTO `voucher` VALUES ('856', '15769582948', 'IB19416256076872', '60000', '36', '28', '2027', '', '0', '2019-11-20 16:07:49', '2022-03-20', null);
INSERT INTO `voucher` VALUES ('857', '15769582948', 'IB19416256076872', '60000', '36', '29', '2027', '', '0', '2019-11-20 16:07:49', '2022-04-20', null);
INSERT INTO `voucher` VALUES ('858', '15769582948', 'IB19416256076872', '60000', '36', '30', '2027', '', '0', '2019-11-20 16:07:49', '2022-05-20', null);
INSERT INTO `voucher` VALUES ('859', '15769582948', 'IB19416256076872', '60000', '36', '31', '2027', '', '0', '2019-11-20 16:07:49', '2022-06-20', null);
INSERT INTO `voucher` VALUES ('860', '15769582948', 'IB19416256076872', '60000', '36', '32', '2027', '', '0', '2019-11-20 16:07:49', '2022-07-20', null);
INSERT INTO `voucher` VALUES ('861', '15769582948', 'IB19416256076872', '60000', '36', '33', '2027', '', '0', '2019-11-20 16:07:49', '2022-08-20', null);
INSERT INTO `voucher` VALUES ('862', '15769582948', 'IB19416256076872', '60000', '36', '34', '2027', '', '0', '2019-11-20 16:07:49', '2022-09-20', null);
INSERT INTO `voucher` VALUES ('863', '15769582948', 'IB19416256076872', '60000', '36', '35', '2027', '', '0', '2019-11-20 16:07:49', '2022-10-20', null);
INSERT INTO `voucher` VALUES ('864', '15769582948', 'IB19416256076872', '60000', '36', '36', '2027', '', '0', '2019-11-20 16:07:49', '2022-11-20', null);
INSERT INTO `voucher` VALUES ('888', '17608471751', 'IB23410819465543', '30000', '12', '12', '2680', '', '0', '2019-11-23 01:22:08', '2020-11-23', null);
INSERT INTO `voucher` VALUES ('887', '17608471751', 'IB23410819465543', '30000', '12', '11', '2680', '', '0', '2019-11-23 01:22:08', '2020-10-23', null);
INSERT INTO `voucher` VALUES ('886', '17608471751', 'IB23410819465543', '30000', '12', '10', '2680', '', '0', '2019-11-23 01:22:08', '2020-09-23', null);
INSERT INTO `voucher` VALUES ('885', '17608471751', 'IB23410819465543', '30000', '12', '9', '2680', '', '0', '2019-11-23 01:22:08', '2020-08-23', null);
INSERT INTO `voucher` VALUES ('884', '17608471751', 'IB23410819465543', '30000', '12', '8', '2680', '', '0', '2019-11-23 01:22:08', '2020-07-23', null);
INSERT INTO `voucher` VALUES ('883', '17608471751', 'IB23410819465543', '30000', '12', '7', '2680', '', '0', '2019-11-23 01:22:08', '2020-06-23', null);
INSERT INTO `voucher` VALUES ('882', '17608471751', 'IB23410819465543', '30000', '12', '6', '2680', '', '0', '2019-11-23 01:22:08', '2020-05-23', null);
INSERT INTO `voucher` VALUES ('881', '17608471751', 'IB23410819465543', '30000', '12', '5', '2680', '', '0', '2019-11-23 01:22:08', '2020-04-23', null);
INSERT INTO `voucher` VALUES ('880', '17608471751', 'IB23410819465543', '30000', '12', '4', '2680', '', '0', '2019-11-23 01:22:08', '2020-03-23', null);
INSERT INTO `voucher` VALUES ('879', '17608471751', 'IB23410819465543', '30000', '12', '3', '2680', '', '0', '2019-11-23 01:22:08', '2020-02-23', null);
INSERT INTO `voucher` VALUES ('878', '17608471751', 'IB23410819465543', '30000', '12', '2', '2680', '', '0', '2019-11-23 01:22:08', '2020-01-23', null);
INSERT INTO `voucher` VALUES ('877', '17608471751', 'IB23410819465543', '30000', '12', '1', '2680', '', '0', '2019-11-23 01:22:08', '2019-12-23', null);
INSERT INTO `voucher` VALUES ('889', '17608471751', 'IB23535792837244', '30000', '12', '1', '2680', '', '0', '2019-11-23 04:28:37', '2019-12-23', null);
INSERT INTO `voucher` VALUES ('890', '17608471751', 'IB23535792837244', '30000', '12', '2', '2680', '', '0', '2019-11-23 04:28:37', '2020-01-23', null);
INSERT INTO `voucher` VALUES ('891', '17608471751', 'IB23535792837244', '30000', '12', '3', '2680', '', '0', '2019-11-23 04:28:37', '2020-02-23', null);
INSERT INTO `voucher` VALUES ('892', '17608471751', 'IB23535792837244', '30000', '12', '4', '2680', '', '0', '2019-11-23 04:28:37', '2020-03-23', null);
INSERT INTO `voucher` VALUES ('893', '17608471751', 'IB23535792837244', '30000', '12', '5', '2680', '', '0', '2019-11-23 04:28:37', '2020-04-23', null);
INSERT INTO `voucher` VALUES ('894', '17608471751', 'IB23535792837244', '30000', '12', '6', '2680', '', '0', '2019-11-23 04:28:37', '2020-05-23', null);
INSERT INTO `voucher` VALUES ('895', '17608471751', 'IB23535792837244', '30000', '12', '7', '2680', '', '0', '2019-11-23 04:28:37', '2020-06-23', null);
INSERT INTO `voucher` VALUES ('896', '17608471751', 'IB23535792837244', '30000', '12', '8', '2680', '', '0', '2019-11-23 04:28:37', '2020-07-23', null);
INSERT INTO `voucher` VALUES ('897', '17608471751', 'IB23535792837244', '30000', '12', '9', '2680', '', '0', '2019-11-23 04:28:37', '2020-08-23', null);
INSERT INTO `voucher` VALUES ('898', '17608471751', 'IB23535792837244', '30000', '12', '10', '2680', '', '0', '2019-11-23 04:28:37', '2020-09-23', null);
INSERT INTO `voucher` VALUES ('899', '17608471751', 'IB23535792837244', '30000', '12', '11', '2680', '', '0', '2019-11-23 04:28:37', '2020-10-23', null);
INSERT INTO `voucher` VALUES ('900', '17608471751', 'IB23535792837244', '30000', '12', '12', '2680', '', '0', '2019-11-23 04:28:37', '2020-11-23', null);
INSERT INTO `voucher` VALUES ('924', '17608471751', 'IB23559104150867', '30000', '12', '12', '2680', '', '0', '2019-11-23 05:12:16', '2020-11-23', null);
INSERT INTO `voucher` VALUES ('923', '17608471751', 'IB23559104150867', '30000', '12', '11', '2680', '', '0', '2019-11-23 05:12:16', '2020-10-23', null);
INSERT INTO `voucher` VALUES ('922', '17608471751', 'IB23559104150867', '30000', '12', '10', '2680', '', '0', '2019-11-23 05:12:16', '2020-09-23', null);
INSERT INTO `voucher` VALUES ('921', '17608471751', 'IB23559104150867', '30000', '12', '9', '2680', '', '0', '2019-11-23 05:12:16', '2020-08-23', null);
INSERT INTO `voucher` VALUES ('920', '17608471751', 'IB23559104150867', '30000', '12', '8', '2680', '', '0', '2019-11-23 05:12:16', '2020-07-23', null);
INSERT INTO `voucher` VALUES ('919', '17608471751', 'IB23559104150867', '30000', '12', '7', '2680', '', '0', '2019-11-23 05:12:16', '2020-06-23', null);
INSERT INTO `voucher` VALUES ('918', '17608471751', 'IB23559104150867', '30000', '12', '6', '2680', '', '0', '2019-11-23 05:12:16', '2020-05-23', null);
INSERT INTO `voucher` VALUES ('917', '17608471751', 'IB23559104150867', '30000', '12', '5', '2680', '', '0', '2019-11-23 05:12:16', '2020-04-23', null);
INSERT INTO `voucher` VALUES ('916', '17608471751', 'IB23559104150867', '30000', '12', '4', '2680', '', '0', '2019-11-23 05:12:16', '2020-03-23', null);
INSERT INTO `voucher` VALUES ('915', '17608471751', 'IB23559104150867', '30000', '12', '3', '2680', '', '0', '2019-11-23 05:12:16', '2020-02-23', null);
INSERT INTO `voucher` VALUES ('914', '17608471751', 'IB23559104150867', '30000', '12', '2', '2680', '', '0', '2019-11-23 05:12:16', '2020-01-23', null);
INSERT INTO `voucher` VALUES ('913', '17608471751', 'IB23559104150867', '30000', '12', '1', '2680', '', '0', '2019-11-23 05:12:16', '2019-12-23', null);
INSERT INTO `voucher` VALUES ('925', '17608471751', 'IB23573044148227', '30000', '12', '1', '2680', '', '0', '2019-11-23 05:17:35', '2019-12-23', null);
INSERT INTO `voucher` VALUES ('926', '17608471751', 'IB23573044148227', '30000', '12', '2', '2680', '', '0', '2019-11-23 05:17:35', '2020-01-23', null);
INSERT INTO `voucher` VALUES ('927', '17608471751', 'IB23573044148227', '30000', '12', '3', '2680', '', '0', '2019-11-23 05:17:35', '2020-02-23', null);
INSERT INTO `voucher` VALUES ('928', '17608471751', 'IB23573044148227', '30000', '12', '4', '2680', '', '0', '2019-11-23 05:17:35', '2020-03-23', null);
INSERT INTO `voucher` VALUES ('929', '17608471751', 'IB23573044148227', '30000', '12', '5', '2680', '', '0', '2019-11-23 05:17:35', '2020-04-23', null);
INSERT INTO `voucher` VALUES ('930', '17608471751', 'IB23573044148227', '30000', '12', '6', '2680', '', '0', '2019-11-23 05:17:35', '2020-05-23', null);
INSERT INTO `voucher` VALUES ('931', '17608471751', 'IB23573044148227', '30000', '12', '7', '2680', '', '0', '2019-11-23 05:17:35', '2020-06-23', null);
INSERT INTO `voucher` VALUES ('932', '17608471751', 'IB23573044148227', '30000', '12', '8', '2680', '', '0', '2019-11-23 05:17:35', '2020-07-23', null);
INSERT INTO `voucher` VALUES ('933', '17608471751', 'IB23573044148227', '30000', '12', '9', '2680', '', '0', '2019-11-23 05:17:35', '2020-08-23', null);
INSERT INTO `voucher` VALUES ('934', '17608471751', 'IB23573044148227', '30000', '12', '10', '2680', '', '0', '2019-11-23 05:17:35', '2020-09-23', null);
INSERT INTO `voucher` VALUES ('935', '17608471751', 'IB23573044148227', '30000', '12', '11', '2680', '', '0', '2019-11-23 05:17:35', '2020-10-23', null);
INSERT INTO `voucher` VALUES ('936', '17608471751', 'IB23573044148227', '30000', '12', '12', '2680', '', '0', '2019-11-23 05:17:35', '2020-11-23', null);
INSERT INTO `voucher` VALUES ('1188', '16556896331', 'IC24849717800972', '130000', '36', '36', '4392', '', '0', '2019-12-24 19:22:59', '2022-12-24', null);
INSERT INTO `voucher` VALUES ('1187', '16556896331', 'IC24849717800972', '130000', '36', '35', '4392', '', '0', '2019-12-24 19:22:59', '2022-11-24', null);
INSERT INTO `voucher` VALUES ('1186', '16556896331', 'IC24849717800972', '130000', '36', '34', '4392', '', '0', '2019-12-24 19:22:59', '2022-10-24', null);
INSERT INTO `voucher` VALUES ('1185', '16556896331', 'IC24849717800972', '130000', '36', '33', '4392', '', '0', '2019-12-24 19:22:59', '2022-09-24', null);
INSERT INTO `voucher` VALUES ('1184', '16556896331', 'IC24849717800972', '130000', '36', '32', '4392', '', '0', '2019-12-24 19:22:59', '2022-08-24', null);
INSERT INTO `voucher` VALUES ('1183', '16556896331', 'IC24849717800972', '130000', '36', '31', '4392', '', '0', '2019-12-24 19:22:59', '2022-07-24', null);
INSERT INTO `voucher` VALUES ('1182', '16556896331', 'IC24849717800972', '130000', '36', '30', '4392', '', '0', '2019-12-24 19:22:59', '2022-06-24', null);
INSERT INTO `voucher` VALUES ('1181', '16556896331', 'IC24849717800972', '130000', '36', '29', '4392', '', '0', '2019-12-24 19:22:59', '2022-05-24', null);
INSERT INTO `voucher` VALUES ('1180', '16556896331', 'IC24849717800972', '130000', '36', '28', '4392', '', '0', '2019-12-24 19:22:59', '2022-04-24', null);
INSERT INTO `voucher` VALUES ('1179', '16556896331', 'IC24849717800972', '130000', '36', '27', '4392', '', '0', '2019-12-24 19:22:59', '2022-03-24', null);
INSERT INTO `voucher` VALUES ('1178', '16556896331', 'IC24849717800972', '130000', '36', '26', '4392', '', '0', '2019-12-24 19:22:59', '2022-02-24', null);
INSERT INTO `voucher` VALUES ('1177', '16556896331', 'IC24849717800972', '130000', '36', '25', '4392', '', '0', '2019-12-24 19:22:59', '2022-01-24', null);
INSERT INTO `voucher` VALUES ('1176', '16556896331', 'IC24849717800972', '130000', '36', '24', '4392', '', '0', '2019-12-24 19:22:59', '2021-12-24', null);
INSERT INTO `voucher` VALUES ('1175', '16556896331', 'IC24849717800972', '130000', '36', '23', '4392', '', '0', '2019-12-24 19:22:59', '2021-11-24', null);
INSERT INTO `voucher` VALUES ('1174', '16556896331', 'IC24849717800972', '130000', '36', '22', '4392', '', '0', '2019-12-24 19:22:59', '2021-10-24', null);
INSERT INTO `voucher` VALUES ('1173', '16556896331', 'IC24849717800972', '130000', '36', '21', '4392', '', '0', '2019-12-24 19:22:59', '2021-09-24', null);
INSERT INTO `voucher` VALUES ('1172', '16556896331', 'IC24849717800972', '130000', '36', '20', '4392', '', '0', '2019-12-24 19:22:59', '2021-08-24', null);
INSERT INTO `voucher` VALUES ('1171', '16556896331', 'IC24849717800972', '130000', '36', '19', '4392', '', '0', '2019-12-24 19:22:59', '2021-07-24', null);
INSERT INTO `voucher` VALUES ('1170', '16556896331', 'IC24849717800972', '130000', '36', '18', '4392', '', '0', '2019-12-24 19:22:59', '2021-06-24', null);
INSERT INTO `voucher` VALUES ('1169', '16556896331', 'IC24849717800972', '130000', '36', '17', '4392', '', '0', '2019-12-24 19:22:59', '2021-05-24', null);
INSERT INTO `voucher` VALUES ('1168', '16556896331', 'IC24849717800972', '130000', '36', '16', '4392', '', '0', '2019-12-24 19:22:59', '2021-04-24', null);
INSERT INTO `voucher` VALUES ('1167', '16556896331', 'IC24849717800972', '130000', '36', '15', '4392', '', '0', '2019-12-24 19:22:59', '2021-03-24', null);
INSERT INTO `voucher` VALUES ('1166', '16556896331', 'IC24849717800972', '130000', '36', '14', '4392', '', '0', '2019-12-24 19:22:59', '2021-02-24', null);
INSERT INTO `voucher` VALUES ('1165', '16556896331', 'IC24849717800972', '130000', '36', '13', '4392', '', '0', '2019-12-24 19:22:59', '2021-01-24', null);
INSERT INTO `voucher` VALUES ('1164', '16556896331', 'IC24849717800972', '130000', '36', '12', '4392', '', '0', '2019-12-24 19:22:59', '2020-12-24', null);
INSERT INTO `voucher` VALUES ('1163', '16556896331', 'IC24849717800972', '130000', '36', '11', '4392', '', '0', '2019-12-24 19:22:59', '2020-11-24', null);
INSERT INTO `voucher` VALUES ('1162', '16556896331', 'IC24849717800972', '130000', '36', '10', '4392', '', '0', '2019-12-24 19:22:59', '2020-10-24', null);
INSERT INTO `voucher` VALUES ('1161', '16556896331', 'IC24849717800972', '130000', '36', '9', '4392', '', '0', '2019-12-24 19:22:59', '2020-09-24', null);
INSERT INTO `voucher` VALUES ('1160', '16556896331', 'IC24849717800972', '130000', '36', '8', '4392', '', '0', '2019-12-24 19:22:59', '2020-08-24', null);
INSERT INTO `voucher` VALUES ('1159', '16556896331', 'IC24849717800972', '130000', '36', '7', '4392', '', '0', '2019-12-24 19:22:59', '2020-07-24', null);
INSERT INTO `voucher` VALUES ('1158', '16556896331', 'IC24849717800972', '130000', '36', '6', '4392', '', '0', '2019-12-24 19:22:59', '2020-06-24', null);
INSERT INTO `voucher` VALUES ('1157', '16556896331', 'IC24849717800972', '130000', '36', '5', '4392', '', '0', '2019-12-24 19:22:59', '2020-05-24', null);
INSERT INTO `voucher` VALUES ('1156', '16556896331', 'IC24849717800972', '130000', '36', '4', '4392', '', '0', '2019-12-24 19:22:59', '2020-04-24', null);
INSERT INTO `voucher` VALUES ('1155', '16556896331', 'IC24849717800972', '130000', '36', '3', '4392', '', '0', '2019-12-24 19:22:59', '2020-03-24', null);
INSERT INTO `voucher` VALUES ('1154', '16556896331', 'IC24849717800972', '130000', '36', '2', '4392', '', '0', '2019-12-24 19:22:59', '2020-02-24', null);
INSERT INTO `voucher` VALUES ('1153', '16556896331', 'IC24849717800972', '130000', '36', '1', '4392', '', '0', '2019-12-24 19:22:59', '2020-01-24', null);
INSERT INTO `voucher` VALUES ('1189', '15579161111', 'IC25387263870568', '30000', '12', '1', '2680', '', '0', '2019-12-25 09:54:10', '2020-01-25', null);
INSERT INTO `voucher` VALUES ('1190', '15579161111', 'IC25387263870568', '30000', '12', '2', '2680', '', '0', '2019-12-25 09:54:10', '2020-02-25', null);
INSERT INTO `voucher` VALUES ('1191', '15579161111', 'IC25387263870568', '30000', '12', '3', '2680', '', '0', '2019-12-25 09:54:10', '2020-03-25', null);
INSERT INTO `voucher` VALUES ('1192', '15579161111', 'IC25387263870568', '30000', '12', '4', '2680', '', '0', '2019-12-25 09:54:10', '2020-04-25', null);
INSERT INTO `voucher` VALUES ('1193', '15579161111', 'IC25387263870568', '30000', '12', '5', '2680', '', '0', '2019-12-25 09:54:10', '2020-05-25', null);
INSERT INTO `voucher` VALUES ('1194', '15579161111', 'IC25387263870568', '30000', '12', '6', '2680', '', '0', '2019-12-25 09:54:10', '2020-06-25', null);
INSERT INTO `voucher` VALUES ('1195', '15579161111', 'IC25387263870568', '30000', '12', '7', '2680', '', '0', '2019-12-25 09:54:10', '2020-07-25', null);
INSERT INTO `voucher` VALUES ('1196', '15579161111', 'IC25387263870568', '30000', '12', '8', '2680', '', '0', '2019-12-25 09:54:10', '2020-08-25', null);
INSERT INTO `voucher` VALUES ('1197', '15579161111', 'IC25387263870568', '30000', '12', '9', '2680', '', '0', '2019-12-25 09:54:10', '2020-09-25', null);
INSERT INTO `voucher` VALUES ('1198', '15579161111', 'IC25387263870568', '30000', '12', '10', '2680', '', '0', '2019-12-25 09:54:10', '2020-10-25', null);
INSERT INTO `voucher` VALUES ('1199', '15579161111', 'IC25387263870568', '30000', '12', '11', '2680', '', '0', '2019-12-25 09:54:10', '2020-11-25', null);
INSERT INTO `voucher` VALUES ('1200', '15579161111', 'IC25387263870568', '30000', '12', '12', '2680', '', '0', '2019-12-25 09:54:10', '2020-12-25', null);
INSERT INTO `voucher` VALUES ('1201', '15579161111', 'IC25389139933632', '100000', '12', '1', '8934', '', '0', '2019-12-25 09:56:03', '2020-01-25', null);
INSERT INTO `voucher` VALUES ('1202', '15579161111', 'IC25389139933632', '100000', '12', '2', '8934', '', '0', '2019-12-25 09:56:03', '2020-02-25', null);
INSERT INTO `voucher` VALUES ('1203', '15579161111', 'IC25389139933632', '100000', '12', '3', '8934', '', '0', '2019-12-25 09:56:03', '2020-03-25', null);
INSERT INTO `voucher` VALUES ('1204', '15579161111', 'IC25389139933632', '100000', '12', '4', '8934', '', '0', '2019-12-25 09:56:03', '2020-04-25', null);
INSERT INTO `voucher` VALUES ('1205', '15579161111', 'IC25389139933632', '100000', '12', '5', '8934', '', '0', '2019-12-25 09:56:03', '2020-05-25', null);
INSERT INTO `voucher` VALUES ('1206', '15579161111', 'IC25389139933632', '100000', '12', '6', '8934', '', '0', '2019-12-25 09:56:03', '2020-06-25', null);
INSERT INTO `voucher` VALUES ('1207', '15579161111', 'IC25389139933632', '100000', '12', '7', '8934', '', '0', '2019-12-25 09:56:03', '2020-07-25', null);
INSERT INTO `voucher` VALUES ('1208', '15579161111', 'IC25389139933632', '100000', '12', '8', '8934', '', '0', '2019-12-25 09:56:03', '2020-08-25', null);
INSERT INTO `voucher` VALUES ('1209', '15579161111', 'IC25389139933632', '100000', '12', '9', '8934', '', '0', '2019-12-25 09:56:03', '2020-09-25', null);
INSERT INTO `voucher` VALUES ('1210', '15579161111', 'IC25389139933632', '100000', '12', '10', '8934', '', '0', '2019-12-25 09:56:03', '2020-10-25', null);
INSERT INTO `voucher` VALUES ('1211', '15579161111', 'IC25389139933632', '100000', '12', '11', '8934', '', '0', '2019-12-25 09:56:03', '2020-11-25', null);
INSERT INTO `voucher` VALUES ('1212', '15579161111', 'IC25389139933632', '100000', '12', '12', '8934', '', '0', '2019-12-25 09:56:03', '2020-12-25', null);
INSERT INTO `voucher` VALUES ('1236', '15579161111', 'IC25390878653255', '30000', '12', '12', '2680', '', '0', '2019-12-25 10:03:37', '2020-12-25', null);
INSERT INTO `voucher` VALUES ('1235', '15579161111', 'IC25390878653255', '30000', '12', '11', '2680', '', '0', '2019-12-25 10:03:37', '2020-11-25', null);
INSERT INTO `voucher` VALUES ('1234', '15579161111', 'IC25390878653255', '30000', '12', '10', '2680', '', '0', '2019-12-25 10:03:37', '2020-10-25', null);
INSERT INTO `voucher` VALUES ('1233', '15579161111', 'IC25390878653255', '30000', '12', '9', '2680', '', '0', '2019-12-25 10:03:37', '2020-09-25', null);
INSERT INTO `voucher` VALUES ('1232', '15579161111', 'IC25390878653255', '30000', '12', '8', '2680', '', '0', '2019-12-25 10:03:37', '2020-08-25', null);
INSERT INTO `voucher` VALUES ('1231', '15579161111', 'IC25390878653255', '30000', '12', '7', '2680', '', '0', '2019-12-25 10:03:37', '2020-07-25', null);
INSERT INTO `voucher` VALUES ('1230', '15579161111', 'IC25390878653255', '30000', '12', '6', '2680', '', '0', '2019-12-25 10:03:37', '2020-06-25', null);
INSERT INTO `voucher` VALUES ('1229', '15579161111', 'IC25390878653255', '30000', '12', '5', '2680', '', '0', '2019-12-25 10:03:37', '2020-05-25', null);
INSERT INTO `voucher` VALUES ('1228', '15579161111', 'IC25390878653255', '30000', '12', '4', '2680', '', '0', '2019-12-25 10:03:37', '2020-04-25', null);
INSERT INTO `voucher` VALUES ('1227', '15579161111', 'IC25390878653255', '30000', '12', '3', '2680', '', '0', '2019-12-25 10:03:37', '2020-03-25', null);
INSERT INTO `voucher` VALUES ('1226', '15579161111', 'IC25390878653255', '30000', '12', '2', '2680', '', '0', '2019-12-25 10:03:37', '2020-02-25', null);
INSERT INTO `voucher` VALUES ('1225', '15579161111', 'IC25390878653255', '30000', '12', '1', '2680', '', '0', '2019-12-25 10:03:37', '2020-01-25', null);
INSERT INTO `voucher` VALUES ('1260', '15579161111', 'IC25398304737685', '50000', '12', '12', '4467', '', '0', '2019-12-25 10:18:00', '2020-12-25', null);
INSERT INTO `voucher` VALUES ('1259', '15579161111', 'IC25398304737685', '50000', '12', '11', '4467', '', '0', '2019-12-25 10:18:00', '2020-11-25', null);
INSERT INTO `voucher` VALUES ('1258', '15579161111', 'IC25398304737685', '50000', '12', '10', '4467', '', '0', '2019-12-25 10:18:00', '2020-10-25', null);
INSERT INTO `voucher` VALUES ('1257', '15579161111', 'IC25398304737685', '50000', '12', '9', '4467', '', '0', '2019-12-25 10:18:00', '2020-09-25', null);
INSERT INTO `voucher` VALUES ('1256', '15579161111', 'IC25398304737685', '50000', '12', '8', '4467', '', '0', '2019-12-25 10:18:00', '2020-08-25', null);
INSERT INTO `voucher` VALUES ('1255', '15579161111', 'IC25398304737685', '50000', '12', '7', '4467', '', '0', '2019-12-25 10:18:00', '2020-07-25', null);
INSERT INTO `voucher` VALUES ('1254', '15579161111', 'IC25398304737685', '50000', '12', '6', '4467', '', '0', '2019-12-25 10:18:00', '2020-06-25', null);
INSERT INTO `voucher` VALUES ('1253', '15579161111', 'IC25398304737685', '50000', '12', '5', '4467', '', '0', '2019-12-25 10:18:00', '2020-05-25', null);
INSERT INTO `voucher` VALUES ('1252', '15579161111', 'IC25398304737685', '50000', '12', '4', '4467', '', '0', '2019-12-25 10:18:00', '2020-04-25', null);
INSERT INTO `voucher` VALUES ('1251', '15579161111', 'IC25398304737685', '50000', '12', '3', '4467', '', '0', '2019-12-25 10:18:00', '2020-03-25', null);
INSERT INTO `voucher` VALUES ('1250', '15579161111', 'IC25398304737685', '50000', '12', '2', '4467', '', '0', '2019-12-25 10:18:00', '2020-02-25', null);
INSERT INTO `voucher` VALUES ('1249', '15579161111', 'IC25398304737685', '50000', '12', '1', '4467', '', '0', '2019-12-25 10:18:00', '2020-01-25', null);
INSERT INTO `voucher` VALUES ('1320', '15579161111', 'IC25404021256708', '125000', '24', '12', '5959', '', '0', '2019-12-25 12:17:00', '2020-12-25', null);
INSERT INTO `voucher` VALUES ('1319', '15579161111', 'IC25404021256708', '125000', '24', '11', '5959', '', '0', '2019-12-25 12:17:00', '2020-11-25', null);
INSERT INTO `voucher` VALUES ('1318', '15579161111', 'IC25404021256708', '125000', '24', '10', '5959', '', '0', '2019-12-25 12:17:00', '2020-10-25', null);
INSERT INTO `voucher` VALUES ('1317', '15579161111', 'IC25404021256708', '125000', '24', '9', '5959', '', '0', '2019-12-25 12:17:00', '2020-09-25', null);
INSERT INTO `voucher` VALUES ('1316', '15579161111', 'IC25404021256708', '125000', '24', '8', '5959', '', '0', '2019-12-25 12:17:00', '2020-08-25', null);
INSERT INTO `voucher` VALUES ('1315', '15579161111', 'IC25404021256708', '125000', '24', '7', '5959', '', '0', '2019-12-25 12:17:00', '2020-07-25', null);
INSERT INTO `voucher` VALUES ('1314', '15579161111', 'IC25404021256708', '125000', '24', '6', '5959', '', '0', '2019-12-25 12:17:00', '2020-06-25', null);
INSERT INTO `voucher` VALUES ('1313', '15579161111', 'IC25404021256708', '125000', '24', '5', '5959', '', '0', '2019-12-25 12:17:00', '2020-05-25', null);
INSERT INTO `voucher` VALUES ('1312', '15579161111', 'IC25404021256708', '125000', '24', '4', '5959', '', '0', '2019-12-25 12:17:00', '2020-04-25', null);
INSERT INTO `voucher` VALUES ('1311', '15579161111', 'IC25404021256708', '125000', '24', '3', '5959', '', '0', '2019-12-25 12:17:00', '2020-03-25', null);
INSERT INTO `voucher` VALUES ('1310', '15579161111', 'IC25404021256708', '125000', '24', '2', '5959', '', '0', '2019-12-25 12:17:00', '2020-02-25', null);
INSERT INTO `voucher` VALUES ('1309', '15579161111', 'IC25404021256708', '125000', '24', '1', '5959', '', '0', '2019-12-25 12:17:00', '2020-01-25', null);
INSERT INTO `voucher` VALUES ('1321', '15579161111', 'IC25404021256708', '125000', '24', '13', '5959', '', '0', '2019-12-25 12:17:00', '2021-01-25', null);
INSERT INTO `voucher` VALUES ('1322', '15579161111', 'IC25404021256708', '125000', '24', '14', '5959', '', '0', '2019-12-25 12:17:00', '2021-02-25', null);
INSERT INTO `voucher` VALUES ('1323', '15579161111', 'IC25404021256708', '125000', '24', '15', '5959', '', '0', '2019-12-25 12:17:00', '2021-03-25', null);
INSERT INTO `voucher` VALUES ('1324', '15579161111', 'IC25404021256708', '125000', '24', '16', '5959', '', '0', '2019-12-25 12:17:00', '2021-04-25', null);
INSERT INTO `voucher` VALUES ('1325', '15579161111', 'IC25404021256708', '125000', '24', '17', '5959', '', '0', '2019-12-25 12:17:00', '2021-05-25', null);
INSERT INTO `voucher` VALUES ('1326', '15579161111', 'IC25404021256708', '125000', '24', '18', '5959', '', '0', '2019-12-25 12:17:00', '2021-06-25', null);
INSERT INTO `voucher` VALUES ('1327', '15579161111', 'IC25404021256708', '125000', '24', '19', '5959', '', '0', '2019-12-25 12:17:00', '2021-07-25', null);
INSERT INTO `voucher` VALUES ('1328', '15579161111', 'IC25404021256708', '125000', '24', '20', '5959', '', '0', '2019-12-25 12:17:00', '2021-08-25', null);
INSERT INTO `voucher` VALUES ('1329', '15579161111', 'IC25404021256708', '125000', '24', '21', '5959', '', '0', '2019-12-25 12:17:00', '2021-09-25', null);
INSERT INTO `voucher` VALUES ('1330', '15579161111', 'IC25404021256708', '125000', '24', '22', '5959', '', '0', '2019-12-25 12:17:00', '2021-10-25', null);
INSERT INTO `voucher` VALUES ('1331', '15579161111', 'IC25404021256708', '125000', '24', '23', '5959', '', '0', '2019-12-25 12:17:00', '2021-11-25', null);
INSERT INTO `voucher` VALUES ('1332', '15579161111', 'IC25404021256708', '125000', '24', '24', '5959', '', '0', '2019-12-25 12:17:00', '2021-12-25', null);
INSERT INTO `voucher` VALUES ('1333', '15579161111', 'IC27308891250067', '250000', '36', '1', '8445', '', '0', '2019-12-27 15:15:29', '2020-01-27', null);
INSERT INTO `voucher` VALUES ('1334', '15579161111', 'IC27308891250067', '250000', '36', '2', '8445', '', '0', '2019-12-27 15:15:29', '2020-02-27', null);
INSERT INTO `voucher` VALUES ('1335', '15579161111', 'IC27308891250067', '250000', '36', '3', '8445', '', '0', '2019-12-27 15:15:29', '2020-03-27', null);
INSERT INTO `voucher` VALUES ('1336', '15579161111', 'IC27308891250067', '250000', '36', '4', '8445', '', '0', '2019-12-27 15:15:29', '2020-04-27', null);
INSERT INTO `voucher` VALUES ('1337', '15579161111', 'IC27308891250067', '250000', '36', '5', '8445', '', '0', '2019-12-27 15:15:29', '2020-05-27', null);
INSERT INTO `voucher` VALUES ('1338', '15579161111', 'IC27308891250067', '250000', '36', '6', '8445', '', '0', '2019-12-27 15:15:29', '2020-06-27', null);
INSERT INTO `voucher` VALUES ('1339', '15579161111', 'IC27308891250067', '250000', '36', '7', '8445', '', '0', '2019-12-27 15:15:29', '2020-07-27', null);
INSERT INTO `voucher` VALUES ('1340', '15579161111', 'IC27308891250067', '250000', '36', '8', '8445', '', '0', '2019-12-27 15:15:29', '2020-08-27', null);
INSERT INTO `voucher` VALUES ('1341', '15579161111', 'IC27308891250067', '250000', '36', '9', '8445', '', '0', '2019-12-27 15:15:29', '2020-09-27', null);
INSERT INTO `voucher` VALUES ('1342', '15579161111', 'IC27308891250067', '250000', '36', '10', '8445', '', '0', '2019-12-27 15:15:29', '2020-10-27', null);
INSERT INTO `voucher` VALUES ('1343', '15579161111', 'IC27308891250067', '250000', '36', '11', '8445', '', '0', '2019-12-27 15:15:29', '2020-11-27', null);
INSERT INTO `voucher` VALUES ('1344', '15579161111', 'IC27308891250067', '250000', '36', '12', '8445', '', '0', '2019-12-27 15:15:29', '2020-12-27', null);
INSERT INTO `voucher` VALUES ('1345', '15579161111', 'IC27308891250067', '250000', '36', '13', '8445', '', '0', '2019-12-27 15:15:29', '2021-01-27', null);
INSERT INTO `voucher` VALUES ('1346', '15579161111', 'IC27308891250067', '250000', '36', '14', '8445', '', '0', '2019-12-27 15:15:29', '2021-02-27', null);
INSERT INTO `voucher` VALUES ('1347', '15579161111', 'IC27308891250067', '250000', '36', '15', '8445', '', '0', '2019-12-27 15:15:29', '2021-03-27', null);
INSERT INTO `voucher` VALUES ('1348', '15579161111', 'IC27308891250067', '250000', '36', '16', '8445', '', '0', '2019-12-27 15:15:29', '2021-04-27', null);
INSERT INTO `voucher` VALUES ('1349', '15579161111', 'IC27308891250067', '250000', '36', '17', '8445', '', '0', '2019-12-27 15:15:29', '2021-05-27', null);
INSERT INTO `voucher` VALUES ('1350', '15579161111', 'IC27308891250067', '250000', '36', '18', '8445', '', '0', '2019-12-27 15:15:29', '2021-06-27', null);
INSERT INTO `voucher` VALUES ('1351', '15579161111', 'IC27308891250067', '250000', '36', '19', '8445', '', '0', '2019-12-27 15:15:29', '2021-07-27', null);
INSERT INTO `voucher` VALUES ('1352', '15579161111', 'IC27308891250067', '250000', '36', '20', '8445', '', '0', '2019-12-27 15:15:29', '2021-08-27', null);
INSERT INTO `voucher` VALUES ('1353', '15579161111', 'IC27308891250067', '250000', '36', '21', '8445', '', '0', '2019-12-27 15:15:29', '2021-09-27', null);
INSERT INTO `voucher` VALUES ('1354', '15579161111', 'IC27308891250067', '250000', '36', '22', '8445', '', '0', '2019-12-27 15:15:29', '2021-10-27', null);
INSERT INTO `voucher` VALUES ('1355', '15579161111', 'IC27308891250067', '250000', '36', '23', '8445', '', '0', '2019-12-27 15:15:29', '2021-11-27', null);
INSERT INTO `voucher` VALUES ('1356', '15579161111', 'IC27308891250067', '250000', '36', '24', '8445', '', '0', '2019-12-27 15:15:29', '2021-12-27', null);
INSERT INTO `voucher` VALUES ('1357', '15579161111', 'IC27308891250067', '250000', '36', '25', '8445', '', '0', '2019-12-27 15:15:29', '2022-01-27', null);
INSERT INTO `voucher` VALUES ('1358', '15579161111', 'IC27308891250067', '250000', '36', '26', '8445', '', '0', '2019-12-27 15:15:29', '2022-02-27', null);
INSERT INTO `voucher` VALUES ('1359', '15579161111', 'IC27308891250067', '250000', '36', '27', '8445', '', '0', '2019-12-27 15:15:29', '2022-03-27', null);
INSERT INTO `voucher` VALUES ('1360', '15579161111', 'IC27308891250067', '250000', '36', '28', '8445', '', '0', '2019-12-27 15:15:29', '2022-04-27', null);
INSERT INTO `voucher` VALUES ('1361', '15579161111', 'IC27308891250067', '250000', '36', '29', '8445', '', '0', '2019-12-27 15:15:29', '2022-05-27', null);
INSERT INTO `voucher` VALUES ('1362', '15579161111', 'IC27308891250067', '250000', '36', '30', '8445', '', '0', '2019-12-27 15:15:29', '2022-06-27', null);
INSERT INTO `voucher` VALUES ('1363', '15579161111', 'IC27308891250067', '250000', '36', '31', '8445', '', '0', '2019-12-27 15:15:29', '2022-07-27', null);
INSERT INTO `voucher` VALUES ('1364', '15579161111', 'IC27308891250067', '250000', '36', '32', '8445', '', '0', '2019-12-27 15:15:29', '2022-08-27', null);
INSERT INTO `voucher` VALUES ('1365', '15579161111', 'IC27308891250067', '250000', '36', '33', '8445', '', '0', '2019-12-27 15:15:29', '2022-09-27', null);
INSERT INTO `voucher` VALUES ('1366', '15579161111', 'IC27308891250067', '250000', '36', '34', '8445', '', '0', '2019-12-27 15:15:29', '2022-10-27', null);
INSERT INTO `voucher` VALUES ('1367', '15579161111', 'IC27308891250067', '250000', '36', '35', '8445', '', '0', '2019-12-27 15:15:29', '2022-11-27', null);
INSERT INTO `voucher` VALUES ('1368', '15579161111', 'IC27308891250067', '250000', '36', '36', '8445', '', '0', '2019-12-27 15:15:29', '2022-12-27', null);
INSERT INTO `voucher` VALUES ('1369', '15579161111', 'IC29881018979613', '180000', '24', '1', '8580', '', '0', '2019-12-29 10:56:12', '2020-01-29', null);
INSERT INTO `voucher` VALUES ('1370', '15579161111', 'IC29881018979613', '180000', '24', '2', '8580', '', '0', '2019-12-29 10:56:12', '2020-02-29', null);
INSERT INTO `voucher` VALUES ('1371', '15579161111', 'IC29881018979613', '180000', '24', '3', '8580', '', '0', '2019-12-29 10:56:12', '2020-03-29', null);
INSERT INTO `voucher` VALUES ('1372', '15579161111', 'IC29881018979613', '180000', '24', '4', '8580', '', '0', '2019-12-29 10:56:12', '2020-04-29', null);
INSERT INTO `voucher` VALUES ('1373', '15579161111', 'IC29881018979613', '180000', '24', '5', '8580', '', '0', '2019-12-29 10:56:12', '2020-05-29', null);
INSERT INTO `voucher` VALUES ('1374', '15579161111', 'IC29881018979613', '180000', '24', '6', '8580', '', '0', '2019-12-29 10:56:12', '2020-06-29', null);
INSERT INTO `voucher` VALUES ('1375', '15579161111', 'IC29881018979613', '180000', '24', '7', '8580', '', '0', '2019-12-29 10:56:12', '2020-07-29', null);
INSERT INTO `voucher` VALUES ('1376', '15579161111', 'IC29881018979613', '180000', '24', '8', '8580', '', '0', '2019-12-29 10:56:12', '2020-08-29', null);
INSERT INTO `voucher` VALUES ('1377', '15579161111', 'IC29881018979613', '180000', '24', '9', '8580', '', '0', '2019-12-29 10:56:12', '2020-09-29', null);
INSERT INTO `voucher` VALUES ('1378', '15579161111', 'IC29881018979613', '180000', '24', '10', '8580', '', '0', '2019-12-29 10:56:12', '2020-10-29', null);
INSERT INTO `voucher` VALUES ('1379', '15579161111', 'IC29881018979613', '180000', '24', '11', '8580', '', '0', '2019-12-29 10:56:12', '2020-11-29', null);
INSERT INTO `voucher` VALUES ('1380', '15579161111', 'IC29881018979613', '180000', '24', '12', '8580', '', '0', '2019-12-29 10:56:12', '2020-12-29', null);
INSERT INTO `voucher` VALUES ('1381', '15579161111', 'IC29881018979613', '180000', '24', '13', '8580', '', '0', '2019-12-29 10:56:12', '2021-01-29', null);
INSERT INTO `voucher` VALUES ('1382', '15579161111', 'IC29881018979613', '180000', '24', '14', '8580', '', '0', '2019-12-29 10:56:12', '2021-03-01', null);
INSERT INTO `voucher` VALUES ('1383', '15579161111', 'IC29881018979613', '180000', '24', '15', '8580', '', '0', '2019-12-29 10:56:12', '2021-03-29', null);
INSERT INTO `voucher` VALUES ('1384', '15579161111', 'IC29881018979613', '180000', '24', '16', '8580', '', '0', '2019-12-29 10:56:12', '2021-04-29', null);
INSERT INTO `voucher` VALUES ('1385', '15579161111', 'IC29881018979613', '180000', '24', '17', '8580', '', '0', '2019-12-29 10:56:12', '2021-05-29', null);
INSERT INTO `voucher` VALUES ('1386', '15579161111', 'IC29881018979613', '180000', '24', '18', '8580', '', '0', '2019-12-29 10:56:12', '2021-06-29', null);
INSERT INTO `voucher` VALUES ('1387', '15579161111', 'IC29881018979613', '180000', '24', '19', '8580', '', '0', '2019-12-29 10:56:12', '2021-07-29', null);
INSERT INTO `voucher` VALUES ('1388', '15579161111', 'IC29881018979613', '180000', '24', '20', '8580', '', '0', '2019-12-29 10:56:12', '2021-08-29', null);
INSERT INTO `voucher` VALUES ('1389', '15579161111', 'IC29881018979613', '180000', '24', '21', '8580', '', '0', '2019-12-29 10:56:12', '2021-09-29', null);
INSERT INTO `voucher` VALUES ('1390', '15579161111', 'IC29881018979613', '180000', '24', '22', '8580', '', '0', '2019-12-29 10:56:12', '2021-10-29', null);
INSERT INTO `voucher` VALUES ('1391', '15579161111', 'IC29881018979613', '180000', '24', '23', '8580', '', '0', '2019-12-29 10:56:12', '2021-11-29', null);
INSERT INTO `voucher` VALUES ('1392', '15579161111', 'IC29881018979613', '180000', '24', '24', '8580', '', '0', '2019-12-29 10:56:12', '2021-12-29', null);
INSERT INTO `voucher` VALUES ('1416', '15579161111', 'IC29036186178513', '45000', '12', '12', '4020', '', '0', '2019-12-30 15:09:39', '2020-12-30', null);
INSERT INTO `voucher` VALUES ('1415', '15579161111', 'IC29036186178513', '45000', '12', '11', '4020', '', '0', '2019-12-30 15:09:39', '2020-11-30', null);
INSERT INTO `voucher` VALUES ('1414', '15579161111', 'IC29036186178513', '45000', '12', '10', '4020', '', '0', '2019-12-30 15:09:39', '2020-10-30', null);
INSERT INTO `voucher` VALUES ('1413', '15579161111', 'IC29036186178513', '45000', '12', '9', '4020', '', '0', '2019-12-30 15:09:39', '2020-09-30', null);
INSERT INTO `voucher` VALUES ('1412', '15579161111', 'IC29036186178513', '45000', '12', '8', '4020', '', '0', '2019-12-30 15:09:39', '2020-08-30', null);
INSERT INTO `voucher` VALUES ('1411', '15579161111', 'IC29036186178513', '45000', '12', '7', '4020', '', '0', '2019-12-30 15:09:39', '2020-07-30', null);
INSERT INTO `voucher` VALUES ('1410', '15579161111', 'IC29036186178513', '45000', '12', '6', '4020', '', '0', '2019-12-30 15:09:39', '2020-06-30', null);
INSERT INTO `voucher` VALUES ('1409', '15579161111', 'IC29036186178513', '45000', '12', '5', '4020', '', '0', '2019-12-30 15:09:39', '2020-05-30', null);
INSERT INTO `voucher` VALUES ('1408', '15579161111', 'IC29036186178513', '45000', '12', '4', '4020', '', '0', '2019-12-30 15:09:39', '2020-04-30', null);
INSERT INTO `voucher` VALUES ('1407', '15579161111', 'IC29036186178513', '45000', '12', '3', '4020', '', '0', '2019-12-30 15:09:39', '2020-03-30', null);
INSERT INTO `voucher` VALUES ('1406', '15579161111', 'IC29036186178513', '45000', '12', '2', '4020', '', '0', '2019-12-30 15:09:39', '2020-03-01', null);
INSERT INTO `voucher` VALUES ('1405', '15579161111', 'IC29036186178513', '45000', '12', '1', '4020', '', '0', '2019-12-30 15:09:39', '2020-01-30', null);
INSERT INTO `voucher` VALUES ('1417', '15579161111', 'IC30898225768995', '45000', '12', '1', '4020', '', '0', '2019-12-30 15:11:16', '2020-01-30', null);
INSERT INTO `voucher` VALUES ('1418', '15579161111', 'IC30898225768995', '45000', '12', '2', '4020', '', '0', '2019-12-30 15:11:16', '2020-03-01', null);
INSERT INTO `voucher` VALUES ('1419', '15579161111', 'IC30898225768995', '45000', '12', '3', '4020', '', '0', '2019-12-30 15:11:16', '2020-03-30', null);
INSERT INTO `voucher` VALUES ('1420', '15579161111', 'IC30898225768995', '45000', '12', '4', '4020', '', '0', '2019-12-30 15:11:16', '2020-04-30', null);
INSERT INTO `voucher` VALUES ('1421', '15579161111', 'IC30898225768995', '45000', '12', '5', '4020', '', '0', '2019-12-30 15:11:16', '2020-05-30', null);
INSERT INTO `voucher` VALUES ('1422', '15579161111', 'IC30898225768995', '45000', '12', '6', '4020', '', '0', '2019-12-30 15:11:16', '2020-06-30', null);
INSERT INTO `voucher` VALUES ('1423', '15579161111', 'IC30898225768995', '45000', '12', '7', '4020', '', '0', '2019-12-30 15:11:16', '2020-07-30', null);
INSERT INTO `voucher` VALUES ('1424', '15579161111', 'IC30898225768995', '45000', '12', '8', '4020', '', '0', '2019-12-30 15:11:16', '2020-08-30', null);
INSERT INTO `voucher` VALUES ('1425', '15579161111', 'IC30898225768995', '45000', '12', '9', '4020', '', '0', '2019-12-30 15:11:16', '2020-09-30', null);
INSERT INTO `voucher` VALUES ('1426', '15579161111', 'IC30898225768995', '45000', '12', '10', '4020', '', '0', '2019-12-30 15:11:16', '2020-10-30', null);
INSERT INTO `voucher` VALUES ('1427', '15579161111', 'IC30898225768995', '45000', '12', '11', '4020', '', '0', '2019-12-30 15:11:16', '2020-11-30', null);
INSERT INTO `voucher` VALUES ('1428', '15579161111', 'IC30898225768995', '45000', '12', '12', '4020', '', '0', '2019-12-30 15:11:16', '2020-12-30', null);
INSERT INTO `voucher` VALUES ('1429', '15579161111', 'IC31851112189286', '50000', '12', '1', '4467', '', '0', '2019-12-31 17:39:22', '2020-01-31', null);
INSERT INTO `voucher` VALUES ('1430', '15579161111', 'IC31851112189286', '50000', '12', '2', '4467', '', '0', '2019-12-31 17:39:22', '2020-03-02', null);
INSERT INTO `voucher` VALUES ('1431', '15579161111', 'IC31851112189286', '50000', '12', '3', '4467', '', '0', '2019-12-31 17:39:22', '2020-03-31', null);
INSERT INTO `voucher` VALUES ('1432', '15579161111', 'IC31851112189286', '50000', '12', '4', '4467', '', '0', '2019-12-31 17:39:22', '2020-05-01', null);
INSERT INTO `voucher` VALUES ('1433', '15579161111', 'IC31851112189286', '50000', '12', '5', '4467', '', '0', '2019-12-31 17:39:22', '2020-05-31', null);
INSERT INTO `voucher` VALUES ('1434', '15579161111', 'IC31851112189286', '50000', '12', '6', '4467', '', '0', '2019-12-31 17:39:22', '2020-07-01', null);
INSERT INTO `voucher` VALUES ('1435', '15579161111', 'IC31851112189286', '50000', '12', '7', '4467', '', '0', '2019-12-31 17:39:22', '2020-07-31', null);
INSERT INTO `voucher` VALUES ('1436', '15579161111', 'IC31851112189286', '50000', '12', '8', '4467', '', '0', '2019-12-31 17:39:22', '2020-08-31', null);
INSERT INTO `voucher` VALUES ('1437', '15579161111', 'IC31851112189286', '50000', '12', '9', '4467', '', '0', '2019-12-31 17:39:22', '2020-10-01', null);
INSERT INTO `voucher` VALUES ('1438', '15579161111', 'IC31851112189286', '50000', '12', '10', '4467', '', '0', '2019-12-31 17:39:22', '2020-10-31', null);
INSERT INTO `voucher` VALUES ('1439', '15579161111', 'IC31851112189286', '50000', '12', '11', '4467', '', '0', '2019-12-31 17:39:22', '2020-12-01', null);
INSERT INTO `voucher` VALUES ('1440', '15579161111', 'IC31851112189286', '50000', '12', '12', '4467', '', '0', '2019-12-31 17:39:22', '2020-12-31', null);
INSERT INTO `voucher` VALUES ('1441', '15195523807', 'J101520570370348', '63000', '36', '1', '2128', '', '0', '2020-01-01 13:16:26', '2020-02-01', null);
INSERT INTO `voucher` VALUES ('1442', '15195523807', 'J101520570370348', '63000', '36', '2', '2128', '', '0', '2020-01-01 13:16:26', '2020-03-01', null);
INSERT INTO `voucher` VALUES ('1443', '15195523807', 'J101520570370348', '63000', '36', '3', '2128', '', '0', '2020-01-01 13:16:26', '2020-04-01', null);
INSERT INTO `voucher` VALUES ('1444', '15195523807', 'J101520570370348', '63000', '36', '4', '2128', '', '0', '2020-01-01 13:16:26', '2020-05-01', null);
INSERT INTO `voucher` VALUES ('1445', '15195523807', 'J101520570370348', '63000', '36', '5', '2128', '', '0', '2020-01-01 13:16:26', '2020-06-01', null);
INSERT INTO `voucher` VALUES ('1446', '15195523807', 'J101520570370348', '63000', '36', '6', '2128', '', '0', '2020-01-01 13:16:26', '2020-07-01', null);
INSERT INTO `voucher` VALUES ('1447', '15195523807', 'J101520570370348', '63000', '36', '7', '2128', '', '0', '2020-01-01 13:16:26', '2020-08-01', null);
INSERT INTO `voucher` VALUES ('1448', '15195523807', 'J101520570370348', '63000', '36', '8', '2128', '', '0', '2020-01-01 13:16:26', '2020-09-01', null);
INSERT INTO `voucher` VALUES ('1449', '15195523807', 'J101520570370348', '63000', '36', '9', '2128', '', '0', '2020-01-01 13:16:26', '2020-10-01', null);
INSERT INTO `voucher` VALUES ('1450', '15195523807', 'J101520570370348', '63000', '36', '10', '2128', '', '0', '2020-01-01 13:16:26', '2020-11-01', null);
INSERT INTO `voucher` VALUES ('1451', '15195523807', 'J101520570370348', '63000', '36', '11', '2128', '', '0', '2020-01-01 13:16:26', '2020-12-01', null);
INSERT INTO `voucher` VALUES ('1452', '15195523807', 'J101520570370348', '63000', '36', '12', '2128', '', '0', '2020-01-01 13:16:26', '2021-01-01', null);
INSERT INTO `voucher` VALUES ('1453', '15195523807', 'J101520570370348', '63000', '36', '13', '2128', '', '0', '2020-01-01 13:16:26', '2021-02-01', null);
INSERT INTO `voucher` VALUES ('1454', '15195523807', 'J101520570370348', '63000', '36', '14', '2128', '', '0', '2020-01-01 13:16:26', '2021-03-01', null);
INSERT INTO `voucher` VALUES ('1455', '15195523807', 'J101520570370348', '63000', '36', '15', '2128', '', '0', '2020-01-01 13:16:26', '2021-04-01', null);
INSERT INTO `voucher` VALUES ('1456', '15195523807', 'J101520570370348', '63000', '36', '16', '2128', '', '0', '2020-01-01 13:16:26', '2021-05-01', null);
INSERT INTO `voucher` VALUES ('1457', '15195523807', 'J101520570370348', '63000', '36', '17', '2128', '', '0', '2020-01-01 13:16:26', '2021-06-01', null);
INSERT INTO `voucher` VALUES ('1458', '15195523807', 'J101520570370348', '63000', '36', '18', '2128', '', '0', '2020-01-01 13:16:26', '2021-07-01', null);
INSERT INTO `voucher` VALUES ('1459', '15195523807', 'J101520570370348', '63000', '36', '19', '2128', '', '0', '2020-01-01 13:16:26', '2021-08-01', null);
INSERT INTO `voucher` VALUES ('1460', '15195523807', 'J101520570370348', '63000', '36', '20', '2128', '', '0', '2020-01-01 13:16:26', '2021-09-01', null);
INSERT INTO `voucher` VALUES ('1461', '15195523807', 'J101520570370348', '63000', '36', '21', '2128', '', '0', '2020-01-01 13:16:26', '2021-10-01', null);
INSERT INTO `voucher` VALUES ('1462', '15195523807', 'J101520570370348', '63000', '36', '22', '2128', '', '0', '2020-01-01 13:16:26', '2021-11-01', null);
INSERT INTO `voucher` VALUES ('1463', '15195523807', 'J101520570370348', '63000', '36', '23', '2128', '', '0', '2020-01-01 13:16:26', '2021-12-01', null);
INSERT INTO `voucher` VALUES ('1464', '15195523807', 'J101520570370348', '63000', '36', '24', '2128', '', '0', '2020-01-01 13:16:26', '2022-01-01', null);
INSERT INTO `voucher` VALUES ('1465', '15195523807', 'J101520570370348', '63000', '36', '25', '2128', '', '0', '2020-01-01 13:16:26', '2022-02-01', null);
INSERT INTO `voucher` VALUES ('1466', '15195523807', 'J101520570370348', '63000', '36', '26', '2128', '', '0', '2020-01-01 13:16:26', '2022-03-01', null);
INSERT INTO `voucher` VALUES ('1467', '15195523807', 'J101520570370348', '63000', '36', '27', '2128', '', '0', '2020-01-01 13:16:26', '2022-04-01', null);
INSERT INTO `voucher` VALUES ('1468', '15195523807', 'J101520570370348', '63000', '36', '28', '2128', '', '0', '2020-01-01 13:16:26', '2022-05-01', null);
INSERT INTO `voucher` VALUES ('1469', '15195523807', 'J101520570370348', '63000', '36', '29', '2128', '', '0', '2020-01-01 13:16:26', '2022-06-01', null);
INSERT INTO `voucher` VALUES ('1470', '15195523807', 'J101520570370348', '63000', '36', '30', '2128', '', '0', '2020-01-01 13:16:26', '2022-07-01', null);
INSERT INTO `voucher` VALUES ('1471', '15195523807', 'J101520570370348', '63000', '36', '31', '2128', '', '0', '2020-01-01 13:16:26', '2022-08-01', null);
INSERT INTO `voucher` VALUES ('1472', '15195523807', 'J101520570370348', '63000', '36', '32', '2128', '', '0', '2020-01-01 13:16:26', '2022-09-01', null);
INSERT INTO `voucher` VALUES ('1473', '15195523807', 'J101520570370348', '63000', '36', '33', '2128', '', '0', '2020-01-01 13:16:26', '2022-10-01', null);
INSERT INTO `voucher` VALUES ('1474', '15195523807', 'J101520570370348', '63000', '36', '34', '2128', '', '0', '2020-01-01 13:16:26', '2022-11-01', null);
INSERT INTO `voucher` VALUES ('1475', '15195523807', 'J101520570370348', '63000', '36', '35', '2128', '', '0', '2020-01-01 13:16:26', '2022-12-01', null);
INSERT INTO `voucher` VALUES ('1476', '15195523807', 'J101520570370348', '63000', '36', '36', '2128', '', '0', '2020-01-01 13:16:26', '2023-01-01', null);
INSERT INTO `voucher` VALUES ('1477', '18637179846', 'J102327210428071', '50000', '24', '1', '2384', '', '0', '2020-01-02 12:13:42', '2020-02-02', null);
INSERT INTO `voucher` VALUES ('1478', '18637179846', 'J102327210428071', '50000', '24', '2', '2384', '', '0', '2020-01-02 12:13:42', '2020-03-02', null);
INSERT INTO `voucher` VALUES ('1479', '18637179846', 'J102327210428071', '50000', '24', '3', '2384', '', '0', '2020-01-02 12:13:42', '2020-04-02', null);
INSERT INTO `voucher` VALUES ('1480', '18637179846', 'J102327210428071', '50000', '24', '4', '2384', '', '0', '2020-01-02 12:13:42', '2020-05-02', null);
INSERT INTO `voucher` VALUES ('1481', '18637179846', 'J102327210428071', '50000', '24', '5', '2384', '', '0', '2020-01-02 12:13:42', '2020-06-02', null);
INSERT INTO `voucher` VALUES ('1482', '18637179846', 'J102327210428071', '50000', '24', '6', '2384', '', '0', '2020-01-02 12:13:42', '2020-07-02', null);
INSERT INTO `voucher` VALUES ('1483', '18637179846', 'J102327210428071', '50000', '24', '7', '2384', '', '0', '2020-01-02 12:13:42', '2020-08-02', null);
INSERT INTO `voucher` VALUES ('1484', '18637179846', 'J102327210428071', '50000', '24', '8', '2384', '', '0', '2020-01-02 12:13:42', '2020-09-02', null);
INSERT INTO `voucher` VALUES ('1485', '18637179846', 'J102327210428071', '50000', '24', '9', '2384', '', '0', '2020-01-02 12:13:42', '2020-10-02', null);
INSERT INTO `voucher` VALUES ('1486', '18637179846', 'J102327210428071', '50000', '24', '10', '2384', '', '0', '2020-01-02 12:13:42', '2020-11-02', null);
INSERT INTO `voucher` VALUES ('1487', '18637179846', 'J102327210428071', '50000', '24', '11', '2384', '', '0', '2020-01-02 12:13:42', '2020-12-02', null);
INSERT INTO `voucher` VALUES ('1488', '18637179846', 'J102327210428071', '50000', '24', '12', '2384', '', '0', '2020-01-02 12:13:42', '2021-01-02', null);
INSERT INTO `voucher` VALUES ('1489', '18637179846', 'J102327210428071', '50000', '24', '13', '2384', '', '0', '2020-01-02 12:13:42', '2021-02-02', null);
INSERT INTO `voucher` VALUES ('1490', '18637179846', 'J102327210428071', '50000', '24', '14', '2384', '', '0', '2020-01-02 12:13:42', '2021-03-02', null);
INSERT INTO `voucher` VALUES ('1491', '18637179846', 'J102327210428071', '50000', '24', '15', '2384', '', '0', '2020-01-02 12:13:42', '2021-04-02', null);
INSERT INTO `voucher` VALUES ('1492', '18637179846', 'J102327210428071', '50000', '24', '16', '2384', '', '0', '2020-01-02 12:13:42', '2021-05-02', null);
INSERT INTO `voucher` VALUES ('1493', '18637179846', 'J102327210428071', '50000', '24', '17', '2384', '', '0', '2020-01-02 12:13:42', '2021-06-02', null);
INSERT INTO `voucher` VALUES ('1494', '18637179846', 'J102327210428071', '50000', '24', '18', '2384', '', '0', '2020-01-02 12:13:42', '2021-07-02', null);
INSERT INTO `voucher` VALUES ('1495', '18637179846', 'J102327210428071', '50000', '24', '19', '2384', '', '0', '2020-01-02 12:13:42', '2021-08-02', null);
INSERT INTO `voucher` VALUES ('1496', '18637179846', 'J102327210428071', '50000', '24', '20', '2384', '', '0', '2020-01-02 12:13:42', '2021-09-02', null);
INSERT INTO `voucher` VALUES ('1497', '18637179846', 'J102327210428071', '50000', '24', '21', '2384', '', '0', '2020-01-02 12:13:42', '2021-10-02', null);
INSERT INTO `voucher` VALUES ('1498', '18637179846', 'J102327210428071', '50000', '24', '22', '2384', '', '0', '2020-01-02 12:13:42', '2021-11-02', null);
INSERT INTO `voucher` VALUES ('1499', '18637179846', 'J102327210428071', '50000', '24', '23', '2384', '', '0', '2020-01-02 12:13:42', '2021-12-02', null);
INSERT INTO `voucher` VALUES ('1500', '18637179846', 'J102327210428071', '50000', '24', '24', '2384', '', '0', '2020-01-02 12:13:42', '2022-01-02', null);
INSERT INTO `voucher` VALUES ('1536', '13257744517', 'J407473951465638', '21000', '12', '12', '1876', '', '0', '2020-04-07 17:12:50', '2021-04-07', null);
INSERT INTO `voucher` VALUES ('1535', '13257744517', 'J407473951465638', '21000', '12', '11', '1876', '', '0', '2020-04-07 17:12:50', '2021-03-07', null);
INSERT INTO `voucher` VALUES ('1534', '13257744517', 'J407473951465638', '21000', '12', '10', '1876', '', '0', '2020-04-07 17:12:50', '2021-02-07', null);
INSERT INTO `voucher` VALUES ('1533', '13257744517', 'J407473951465638', '21000', '12', '9', '1876', '', '0', '2020-04-07 17:12:50', '2021-01-07', null);
INSERT INTO `voucher` VALUES ('1532', '13257744517', 'J407473951465638', '21000', '12', '8', '1876', '', '0', '2020-04-07 17:12:50', '2020-12-07', null);
INSERT INTO `voucher` VALUES ('1531', '13257744517', 'J407473951465638', '21000', '12', '7', '1876', '', '0', '2020-04-07 17:12:50', '2020-11-07', null);
INSERT INTO `voucher` VALUES ('1530', '13257744517', 'J407473951465638', '21000', '12', '6', '1876', '', '0', '2020-04-07 17:12:50', '2020-10-07', null);
INSERT INTO `voucher` VALUES ('1529', '13257744517', 'J407473951465638', '21000', '12', '5', '1876', '', '0', '2020-04-07 17:12:50', '2020-09-07', null);
INSERT INTO `voucher` VALUES ('1528', '13257744517', 'J407473951465638', '21000', '12', '4', '1876', '', '0', '2020-04-07 17:12:50', '2020-08-07', null);
INSERT INTO `voucher` VALUES ('1527', '13257744517', 'J407473951465638', '21000', '12', '3', '1876', '', '0', '2020-04-07 17:12:50', '2020-07-07', null);
INSERT INTO `voucher` VALUES ('1526', '13257744517', 'J407473951465638', '21000', '12', '2', '1876', '', '0', '2020-04-07 17:12:50', '2020-06-07', null);
INSERT INTO `voucher` VALUES ('1525', '13257744517', 'J407473951465638', '21000', '12', '1', '1876', '', '0', '2020-04-07 17:12:50', '2020-05-07', null);
INSERT INTO `voucher` VALUES ('1537', '15706790550', 'J107588285769093', '20000', '12', '1', '1787', '', '0', '2020-05-16 10:29:20', '2020-06-16', null);
INSERT INTO `voucher` VALUES ('1538', '15706790550', 'J107588285769093', '20000', '12', '2', '1787', '', '0', '2020-05-16 10:29:20', '2020-07-16', null);
INSERT INTO `voucher` VALUES ('1539', '15706790550', 'J107588285769093', '20000', '12', '3', '1787', '', '0', '2020-05-16 10:29:20', '2020-08-16', null);
INSERT INTO `voucher` VALUES ('1540', '15706790550', 'J107588285769093', '20000', '12', '4', '1787', '', '0', '2020-05-16 10:29:20', '2020-09-16', null);
INSERT INTO `voucher` VALUES ('1541', '15706790550', 'J107588285769093', '20000', '12', '5', '1787', '', '0', '2020-05-16 10:29:20', '2020-10-16', null);
INSERT INTO `voucher` VALUES ('1542', '15706790550', 'J107588285769093', '20000', '12', '6', '1787', '', '0', '2020-05-16 10:29:20', '2020-11-16', null);
INSERT INTO `voucher` VALUES ('1543', '15706790550', 'J107588285769093', '20000', '12', '7', '1787', '', '0', '2020-05-16 10:29:20', '2020-12-16', null);
INSERT INTO `voucher` VALUES ('1544', '15706790550', 'J107588285769093', '20000', '12', '8', '1787', '', '0', '2020-05-16 10:29:20', '2021-01-16', null);
INSERT INTO `voucher` VALUES ('1545', '15706790550', 'J107588285769093', '20000', '12', '9', '1787', '', '0', '2020-05-16 10:29:20', '2021-02-16', null);
INSERT INTO `voucher` VALUES ('1546', '15706790550', 'J107588285769093', '20000', '12', '10', '1787', '', '0', '2020-05-16 10:29:20', '2021-03-16', null);
INSERT INTO `voucher` VALUES ('1547', '15706790550', 'J107588285769093', '20000', '12', '11', '1787', '', '0', '2020-05-16 10:29:20', '2021-04-16', null);
INSERT INTO `voucher` VALUES ('1548', '15706790550', 'J107588285769093', '20000', '12', '12', '1787', '', '0', '2020-05-16 10:29:20', '2021-05-16', null);

-- ----------------------------
-- Table structure for wechat
-- ----------------------------
DROP TABLE IF EXISTS `wechat`;
CREATE TABLE `wechat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `addtime` int(11) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat
-- ----------------------------
