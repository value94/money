/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : money

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-06-01 17:51:58
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
INSERT INTO `admin` VALUES ('1', '28', 'admin', 'f11ec7022bbe2bf69670d1a181646f0e', '1111', '1', 'mtciily6', '1', '1590476422', '1590735110', '1', '1');
INSERT INTO `admin` VALUES ('2', '29', 'kefu2', '22e1bc525432de9878534afd9c0a0dcb', '', '1', 'weezvjzm', '2', '1590477235', '1590557807', '1', '1');
INSERT INTO `admin` VALUES ('3', '22', 'kefu', '57cea37edd561f91185ee4044f528e75', '', '1', 'gehn5xk2', '2', '1590475576', '1590557733', '1', '1');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of logs
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of otherinfo
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='提现表';

-- ----------------------------
-- Records of payorder
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of richat_chatgroup
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of richat_chatlog
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of richat_chatuser
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;

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
INSERT INTO `spread` VALUES ('1', '通道1	', 'http://jaswa.cn/index.php?g=Home&m=User&a=invitation', '0', '0', '0', '0', '2020-05-16 09:35:04');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

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
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '生成日期',
  `huantime` date NOT NULL DEFAULT '0000-00-00' COMMENT '还款日期',
  `paytime` datetime DEFAULT NULL COMMENT '客户支付日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='还款列表订单';

-- ----------------------------
-- Records of voucher
-- ----------------------------

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
