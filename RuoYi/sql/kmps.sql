/*
 Navicat MySQL Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : kmps

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 09/06/2020 17:19:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addr_edifice
-- ----------------------------
DROP TABLE IF EXISTS `addr_edifice`;
CREATE TABLE `addr_edifice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `addr_name` varchar(50) DEFAULT NULL COMMENT '名称',
  `addr_path` varchar(50) DEFAULT NULL COMMENT '图片地址',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(20) DEFAULT NULL COMMENT '市',
  `area` varchar(20) DEFAULT NULL COMMENT '区',
  `longitude` double DEFAULT NULL COMMENT '经度',
  `latitude` double DEFAULT NULL COMMENT '纬度',
  `layer_num` int(4) DEFAULT NULL COMMENT '楼层',
  `user_id` int(11) DEFAULT NULL COMMENT '业务员',
  `join_time` int(11) DEFAULT NULL COMMENT '入驻时间',
  `leave_time` int(11) DEFAULT NULL COMMENT '解除时间',
  `start_time` int(11) DEFAULT NULL COMMENT '营业开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '营业结束时间',
  `addrsta` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='楼宇';

-- ----------------------------
-- Table structure for addr_edifice_group
-- ----------------------------
DROP TABLE IF EXISTS `addr_edifice_group`;
CREATE TABLE `addr_edifice_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `edifice_id` int(11) DEFAULT NULL COMMENT '大厦id',
  `edifice_name` varchar(50) DEFAULT NULL COMMENT '大厦名称',
  `meb_id` int(11) DEFAULT NULL COMMENT '会员id',
  `meb_job` int(2) DEFAULT NULL COMMENT '会员职务',
  `layer_num` int(4) DEFAULT NULL COMMENT '楼层',
  `layer_start` int(4) DEFAULT NULL COMMENT '起始楼层',
  `layer_end` int(4) DEFAULT NULL COMMENT '结束楼层',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `end_time` int(11) DEFAULT NULL COMMENT '解除时间',
  `addr_sta` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分组';

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) COLLATE utf8_bin DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) COLLATE utf8_bin DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` VALUES (16, 'meb_opinion', '投诉', 'MebOpinion', 'crud', 'com.ruoyi.kmps', 'kmps', 'opinion', '投诉', 'ruoyi', NULL, 'admin', '2020-06-08 14:39:29', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (17, 'meb_opinion_saleafteropr', '售后单操作记录', 'MebOpinionSaleafteropr', 'crud', 'com.ruoyi.kmps', 'kmps', 'saleafteropr', '售后单操作记录', 'ruoyi', NULL, 'admin', '2020-06-08 14:39:29', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) COLLATE utf8_bin DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_column` VALUES (208, '16', 'id', '编号', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (209, '16', 'type', '投诉类型', 'int(2)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (210, '16', 'desc', '描述', 'varchar(255)', 'String', 'desc', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (211, '16', 'meb_id', '投诉人id', 'int(11)', 'Long', 'mebId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (212, '16', 'order_sl', '订单编号', 'varchar(30)', 'String', 'orderSl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (213, '16', 'order_num', '订单序列号', 'int(11)', 'Long', 'orderNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (214, '16', 'addr_id', '投诉大厦', 'int(11)', 'Long', 'addrId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (215, '16', 'submit_time', '提交时间', 'int(11)', 'Long', 'submitTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (216, '16', 'handle_time', '处理时间', 'int(11)', 'Long', 'handleTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (217, '16', 'fj1', '附件一', 'varchar(255)', 'String', 'fj1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (218, '16', 'fj2', '附件二', 'varchar(255)', 'String', 'fj2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (219, '16', 'fj3', '附件三', 'varchar(255)', 'String', 'fj3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (220, '16', 'fj4', '附件四', 'varchar(255)', 'String', 'fj4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (221, '16', 'user_id', '处理人', 'int(11)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (222, '16', 'opinionsta', '状态', 'int(2)', 'Integer', 'opinionsta', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (223, '17', 'id', '自动编号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (224, '17', 'opinion_id', '投诉单ID', 'int(11)', 'Long', 'opinionId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (225, '17', 'create_id', '操作者ID', 'int(11)', 'Long', 'createId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (226, '17', 'create_by', '操作者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (227, '17', 'create_time', '操作时间', 'int(11)', 'Long', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (228, '17', 'opinion_price', '赔付金额', 'decimal(13,2)', 'Double', 'opinionPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-06-08 14:39:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (229, '17', 'desc', '描述', 'varchar(200)', 'String', 'desc', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-06-08 14:39:29', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for meb_account
-- ----------------------------
DROP TABLE IF EXISTS `meb_account`;
CREATE TABLE `meb_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` int(2) DEFAULT NULL COMMENT '会员类型',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `account` varchar(45) DEFAULT NULL COMMENT '账号',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT '加盐',
  `email` varchar(100) DEFAULT NULL COMMENT '邮件地址',
  `regtime` int(11) DEFAULT NULL COMMENT '注册时间',
  `regip` varchar(20) DEFAULT NULL COMMENT '注册ip',
  `regclt` int(2) DEFAULT NULL COMMENT '注册客户端',
  `regcha` varchar(50) DEFAULT NULL COMMENT '获客渠道',
  `refcode` varchar(20) DEFAULT NULL COMMENT '推荐码',
  `puid` int(11) DEFAULT NULL COMMENT '已注册用户推荐',
  `accsta` int(2) DEFAULT NULL COMMENT '状态',
  `lastlogintime` int(11) DEFAULT NULL COMMENT '最后登录时间',
  `lastloginip` varchar(20) DEFAULT NULL COMMENT '最后登录IP',
  `passerr` int(11) DEFAULT NULL COMMENT '当前密码连续错误次数',
  `m1` varchar(20) DEFAULT NULL COMMENT '预留字段一',
  `m2` varchar(20) DEFAULT NULL COMMENT '预留字段二',
  `m3` varchar(20) DEFAULT NULL COMMENT '预留字段三',
  `mebmoney` decimal(13,2) DEFAULT NULL COMMENT '可用余额',
  `fremoney` decimal(13,2) DEFAULT NULL COMMENT '锁定金额',
  `tpoints` decimal(13,2) DEFAULT NULL COMMENT '积分总额',
  `version` int(11) DEFAULT NULL COMMENT '版本号（乐观锁）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员账号';

-- ----------------------------
-- Table structure for meb_accthird
-- ----------------------------
DROP TABLE IF EXISTS `meb_accthird`;
CREATE TABLE `meb_accthird` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `session_key` varchar(200) DEFAULT NULL COMMENT '小程序返回的会话密钥',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `open_type` varchar(64) DEFAULT NULL COMMENT '第三方平台',
  `openid` varchar(64) DEFAULT NULL COMMENT '用户在第三方平台的ID',
  `access_token` varchar(45) DEFAULT NULL COMMENT '第三方平台返回的token',
  `expired_time` varchar(45) DEFAULT NULL COMMENT '授权时间',
  `nickname` varchar(45) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(200) DEFAULT NULL COMMENT '头像',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `uniqueid` varchar(70) DEFAULT NULL COMMENT '用户在第三方平台的唯一ID',
  `acctsta` int(2) DEFAULT NULL COMMENT '绑定状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方账号';

-- ----------------------------
-- Table structure for meb_addrlist
-- ----------------------------
DROP TABLE IF EXISTS `meb_addrlist`;
CREATE TABLE `meb_addrlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机',
  `cityno` varchar(50) DEFAULT NULL COMMENT '省市区 编号',
  `addr` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `zipcode` varchar(20) DEFAULT NULL COMMENT '邮编',
  `addrsta` int(2) DEFAULT NULL COMMENT '状态',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `createby` int(11) DEFAULT NULL COMMENT '创建人',
  `updatetime` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `updateby` int(11) DEFAULT NULL COMMENT '最后编辑用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员地址列表';

-- ----------------------------
-- Table structure for meb_applog
-- ----------------------------
DROP TABLE IF EXISTS `meb_applog`;
CREATE TABLE `meb_applog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `channelid` varchar(50) DEFAULT NULL COMMENT '机器码',
  `client` int(2) DEFAULT NULL COMMENT '客户端',
  `appversion` varchar(20) DEFAULT NULL COMMENT 'app版本号',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `logintime` int(11) DEFAULT NULL COMMENT '登录时间',
  `token` varchar(64) DEFAULT NULL COMMENT '登录成功时的token',
  `mebid` int(11) DEFAULT NULL COMMENT '会员ID',
  `logsta` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='app机器关联记录';

-- ----------------------------
-- Table structure for meb_authname
-- ----------------------------
DROP TABLE IF EXISTS `meb_authname`;
CREATE TABLE `meb_authname` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `mebidty` int(2) DEFAULT NULL COMMENT '实名类型',
  `realname` varchar(255) DEFAULT NULL COMMENT '名称',
  `idno` varchar(255) DEFAULT NULL COMMENT '证件号码',
  `fj1` varchar(255) DEFAULT NULL COMMENT '附件一',
  `fj2` varchar(255) DEFAULT NULL COMMENT '附件二',
  `fj3` varchar(255) DEFAULT NULL COMMENT '附件三',
  `fj4` varchar(255) DEFAULT NULL COMMENT '附件四',
  `auditopn` varchar(255) DEFAULT NULL COMMENT '审核意见',
  `authsta` int(2) DEFAULT NULL COMMENT '状态',
  `createby` int(11) DEFAULT NULL COMMENT '实名认证提交人',
  `createtime` int(11) DEFAULT NULL COMMENT '提交时间',
  `auditor` int(11) DEFAULT NULL COMMENT '审核员',
  `audittime` int(11) DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员实名认证记录';

-- ----------------------------
-- Table structure for meb_bankbind
-- ----------------------------
DROP TABLE IF EXISTS `meb_bankbind`;
CREATE TABLE `meb_bankbind` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `bankid` varchar(10) DEFAULT NULL COMMENT '银行ID',
  `ctype` int(2) DEFAULT NULL COMMENT '银行卡类型',
  `accname` varchar(30) DEFAULT NULL COMMENT '账户名',
  `accidno` varchar(30) DEFAULT NULL COMMENT '开卡证件号',
  `cardno` varchar(30) DEFAULT NULL COMMENT '银行卡账号',
  `dscardno` varchar(30) DEFAULT NULL COMMENT '脱敏后的银行账户',
  `bankneme` varchar(100) DEFAULT NULL COMMENT '识别后的银行名称',
  `cityno` varchar(50) DEFAULT NULL COMMENT '省市区 编号',
  `subbankaddr` varchar(200) DEFAULT NULL COMMENT '开户支行详细地址',
  `status` int(2) DEFAULT NULL COMMENT '状态',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `createby` int(11) DEFAULT NULL COMMENT '创建人',
  `updatetime` int(11) DEFAULT NULL COMMENT '最后编辑时间',
  `updateby` int(11) DEFAULT NULL COMMENT '最后编辑用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='绑定银行卡记录表';

-- ----------------------------
-- Table structure for meb_financelcash
-- ----------------------------
DROP TABLE IF EXISTS `meb_financelcash`;
CREATE TABLE `meb_financelcash` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `sl` varchar(64) DEFAULT NULL COMMENT '序列号',
  `actamt` decimal(13,6) DEFAULT NULL COMMENT '发生金额',
  `nowamt` decimal(13,6) DEFAULT NULL COMMENT '当前余额',
  `ctype` int(2) DEFAULT NULL COMMENT '银行卡类型',
  `bankneme` varchar(100) DEFAULT NULL COMMENT '银行名称',
  `subbankaddr` varchar(200) DEFAULT NULL COMMENT '开户支行详细地址',
  `accname` varchar(30) DEFAULT NULL COMMENT '账户名',
  `cardno` varchar(30) DEFAULT NULL COMMENT '银行卡账号',
  `cash_sta` int(2) DEFAULT NULL COMMENT '提现状态',
  `cash_desc` varchar(500) DEFAULT NULL COMMENT '提现处理备注',
  `createtime` int(11) DEFAULT NULL COMMENT '申请时间',
  `createby` int(11) DEFAULT NULL COMMENT '申请人',
  `updatetime` datetime DEFAULT NULL COMMENT '提现处理时间',
  `updateby` int(11) DEFAULT NULL COMMENT '处理人',
  `memo` varchar(200) DEFAULT NULL COMMENT '备注',
  `m1` varchar(20) DEFAULT NULL COMMENT '预留字段一',
  `m2` varchar(20) DEFAULT NULL COMMENT '预留字段二',
  `m3` varchar(20) DEFAULT NULL COMMENT '预留字段三',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提现';

-- ----------------------------
-- Table structure for meb_financelrd
-- ----------------------------
DROP TABLE IF EXISTS `meb_financelrd`;
CREATE TABLE `meb_financelrd` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `sl` varchar(64) DEFAULT NULL COMMENT '序列号',
  `actamt` decimal(13,2) DEFAULT NULL COMMENT '发生金额',
  `nowamt` decimal(13,2) DEFAULT NULL COMMENT '当前余额',
  `type` int(2) DEFAULT NULL COMMENT '金额类型',
  `createtime` int(11) DEFAULT NULL COMMENT '发生时间',
  `userid` int(11) DEFAULT NULL COMMENT '操作人',
  `memo` varchar(200) DEFAULT NULL COMMENT '备注',
  `m1` varchar(20) DEFAULT NULL COMMENT '预留字段一',
  `m2` varchar(20) DEFAULT NULL COMMENT '预留字段二',
  `m3` varchar(20) DEFAULT NULL COMMENT '预留字段三',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资金明细';

-- ----------------------------
-- Table structure for meb_friend
-- ----------------------------
DROP TABLE IF EXISTS `meb_friend`;
CREATE TABLE `meb_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` int(11) DEFAULT NULL COMMENT '推荐人',
  `bid` int(11) DEFAULT NULL COMMENT '被推荐会员',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `status` int(2) DEFAULT NULL COMMENT '使用状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员推荐表';

-- ----------------------------
-- Table structure for meb_info
-- ----------------------------
DROP TABLE IF EXISTS `meb_info`;
CREATE TABLE `meb_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `mebidty` int(4) DEFAULT NULL COMMENT '会员身份',
  `nickname` varchar(45) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(20) DEFAULT NULL COMMENT '出生日期',
  `isauthper` int(2) DEFAULT NULL COMMENT '是否通过实名认证',
  `authpertime` int(11) DEFAULT NULL COMMENT '实名认证时间',
  `pername` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `level` int(2) DEFAULT NULL COMMENT '会员等级',
  `remark` varchar(2000) DEFAULT NULL COMMENT '备注',
  `extjson` varchar(2000) DEFAULT NULL COMMENT '扩展信息',
  `wx_account` varchar(100) DEFAULT NULL COMMENT '微信账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员详细信息';

-- ----------------------------
-- Table structure for meb_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `meb_loginlog`;
CREATE TABLE `meb_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `loginip` varchar(50) DEFAULT NULL COMMENT '登录IP',
  `logintime` int(11) DEFAULT NULL COMMENT '登录时间',
  `district` varchar(255) DEFAULT NULL COMMENT '地点',
  `client` int(2) DEFAULT NULL COMMENT '终端设备',
  `browser` varchar(255) DEFAULT NULL COMMENT '客户端浏览器',
  `errnum` int(4) DEFAULT NULL COMMENT '密码连续错误次数',
  `logsta` int(2) DEFAULT NULL COMMENT '登录状态',
  `logintype` int(2) DEFAULT NULL COMMENT '登录方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员登录日志';

-- ----------------------------
-- Table structure for meb_opinion
-- ----------------------------
DROP TABLE IF EXISTS `meb_opinion`;
CREATE TABLE `meb_opinion` (
  `id` int(11) NOT NULL COMMENT '编号',
  `type` int(2) DEFAULT NULL COMMENT '投诉类型',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `meb_id` int(11) DEFAULT NULL COMMENT '投诉人id',
  `order_sl` varchar(30) DEFAULT NULL COMMENT '订单编号',
  `order_num` int(11) DEFAULT NULL COMMENT '订单序列号',
  `addr_id` int(11) DEFAULT NULL COMMENT '投诉大厦',
  `submit_time` int(11) DEFAULT NULL COMMENT '提交时间',
  `handle_time` int(11) DEFAULT NULL COMMENT '处理时间',
  `fj1` varchar(255) DEFAULT NULL COMMENT '附件一',
  `fj2` varchar(255) DEFAULT NULL COMMENT '附件二',
  `fj3` varchar(255) DEFAULT NULL COMMENT '附件三',
  `fj4` varchar(255) DEFAULT NULL COMMENT '附件四',
  `user_id` int(11) DEFAULT NULL COMMENT '处理人',
  `opinionsta` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉';

-- ----------------------------
-- Table structure for meb_opinion_saleafteropr
-- ----------------------------
DROP TABLE IF EXISTS `meb_opinion_saleafteropr`;
CREATE TABLE `meb_opinion_saleafteropr` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `opinion_id` int(11) DEFAULT NULL COMMENT '投诉单ID',
  `create_id` int(11) DEFAULT NULL COMMENT '操作者ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '操作者',
  `create_time` int(11) DEFAULT NULL COMMENT '操作时间',
  `opinion_price` decimal(13,2) DEFAULT NULL COMMENT '赔付金额',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='售后单操作记录';

-- ----------------------------
-- Table structure for meb_phonerd
-- ----------------------------
DROP TABLE IF EXISTS `meb_phonerd`;
CREATE TABLE `meb_phonerd` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `oldphone` varchar(20) DEFAULT NULL COMMENT '原手机号',
  `newphone` varchar(20) DEFAULT NULL COMMENT '新手机号',
  `createtime` int(11) DEFAULT NULL COMMENT '发生时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '完成时间',
  `phonerdsta` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机号变更记录';

-- ----------------------------
-- Table structure for meb_pointsrd
-- ----------------------------
DROP TABLE IF EXISTS `meb_pointsrd`;
CREATE TABLE `meb_pointsrd` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `points` decimal(13,2) DEFAULT NULL COMMENT '发生积分',
  `nowpoints` decimal(13,2) DEFAULT NULL COMMENT '当前积分',
  `modid` int(11) DEFAULT NULL COMMENT '业务类型',
  `cid` int(11) DEFAULT NULL COMMENT '关联业务记录ID',
  `type` int(2) DEFAULT NULL COMMENT '积分类型',
  `createtime` int(11) DEFAULT NULL COMMENT '发生时间',
  `userid` int(11) DEFAULT NULL COMMENT '操作人',
  `memo` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分明细';

-- ----------------------------
-- Table structure for meb_sigin_in
-- ----------------------------
DROP TABLE IF EXISTS `meb_sigin_in`;
CREATE TABLE `meb_sigin_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `loginip` varchar(50) DEFAULT NULL COMMENT 'IP',
  `logintime` int(11) DEFAULT NULL COMMENT '时间',
  `district` varchar(255) DEFAULT NULL COMMENT '地点',
  `latitude` double DEFAULT NULL COMMENT '纬度',
  `longitude` double DEFAULT NULL COMMENT '经度',
  `client` int(2) DEFAULT NULL COMMENT '终端设备',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  `siginsta` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员打卡';

-- ----------------------------
-- Table structure for meb_vacation
-- ----------------------------
DROP TABLE IF EXISTS `meb_vacation`;
CREATE TABLE `meb_vacation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mebid` int(11) DEFAULT NULL COMMENT '平台用户id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `starttime` int(11) DEFAULT NULL COMMENT '开始时间',
  `endtime` int(11) DEFAULT NULL COMMENT '结束时间',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  `reversta` int(2) DEFAULT NULL COMMENT '审核状态',
  `reason` varchar(255) DEFAULT NULL COMMENT '请假事由',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员休假';

-- ----------------------------
-- Table structure for ord_activity_price
-- ----------------------------
DROP TABLE IF EXISTS `ord_activity_price`;
CREATE TABLE `ord_activity_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动编号',
  `edifice_id` int(11) DEFAULT NULL COMMENT '大厦id',
  `price` decimal(13,2) DEFAULT NULL COMMENT '原价',
  `rate` float DEFAULT NULL COMMENT '折扣',
  `discount_price` decimal(13,2) DEFAULT NULL COMMENT '优惠金额',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='楼宇价格';

-- ----------------------------
-- Table structure for ord_order
-- ----------------------------
DROP TABLE IF EXISTS `ord_order`;
CREATE TABLE `ord_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `order_sl` varchar(30) DEFAULT NULL COMMENT '订单编号',
  `order_num` int(11) DEFAULT NULL COMMENT '订单序列号',
  `price` decimal(13,2) DEFAULT NULL COMMENT '价格',
  `edifice_id` int(11) DEFAULT NULL COMMENT '大厦id',
  `putin_id` int(11) DEFAULT NULL COMMENT '骑手id',
  `putin_phone` varchar(11) DEFAULT NULL COMMENT '骑手电话',
  `sort_id` int(11) DEFAULT NULL COMMENT '分拣员id',
  `delivery_id` int(11) DEFAULT NULL COMMENT '送货员id',
  `delivery_phone` varchar(11) DEFAULT NULL COMMENT '送货员电话',
  `sor_time` int(11) DEFAULT NULL COMMENT '分拣时间',
  `pickup_time` int(11) DEFAULT NULL COMMENT '取货时间',
  `finsh_time` int(11) DEFAULT NULL COMMENT '送达时间',
  `close_time` int(11) DEFAULT NULL COMMENT '取消时间',
  `close_desc` varchar(200) DEFAULT NULL COMMENT '取消原因',
  `order_time` int(11) DEFAULT NULL COMMENT '下单时间',
  `pay_time` int(11) DEFAULT NULL COMMENT '支付时间',
  `autoclose_time` int(11) DEFAULT NULL COMMENT '预计自动关闭时间',
  `pay_mode` int(2) DEFAULT NULL COMMENT '支付方式',
  `goods_num` int(4) DEFAULT NULL COMMENT '商品件数',
  `order_clt` int(2) DEFAULT NULL COMMENT '下单客户端',
  `third_name` varchar(20) DEFAULT NULL COMMENT '第三方品牌名称',
  `third_num` varchar(20) DEFAULT NULL COMMENT '第三方订单号',
  `third_take_addr` varchar(50) DEFAULT NULL COMMENT '第三方平台取货地址',
  `third_give_addr` varchar(50) DEFAULT NULL COMMENT '第三方平台送货地址',
  `expect_time` int(11) DEFAULT NULL COMMENT '顾客期望送达时间',
  `order_img_path` varchar(20) DEFAULT NULL COMMENT '第三方订单截图',
  `floor` int(4) DEFAULT NULL COMMENT '楼层',
  `order_sta` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Table structure for ord_pay
-- ----------------------------
DROP TABLE IF EXISTS `ord_pay`;
CREATE TABLE `ord_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `pay_sl` varchar(30) DEFAULT NULL COMMENT '支付流水号',
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID',
  `meb_id` int(11) DEFAULT NULL COMMENT '用户id',
  `totle_amount` decimal(13,2) DEFAULT NULL COMMENT '应付总金额',
  `totle_coupon_amount` decimal(13,2) DEFAULT NULL COMMENT '使用红包金额(预留)',
  `totle_act_amount` decimal(13,2) DEFAULT NULL COMMENT '实际付款金额',
  `pay_mode` int(2) DEFAULT NULL COMMENT '支付方式 ',
  `pay_channel` int(2) DEFAULT NULL COMMENT '支付渠道',
  `pay_para` text COMMENT '支付参数',
  `return_val` text COMMENT '返回值 第三方支付流水号，含银行转账流水号',
  `pay_sta` int(2) DEFAULT NULL COMMENT '支付状态',
  `create_time` int(11) DEFAULT NULL COMMENT '发起支付时间',
  `finish_time` int(11) DEFAULT NULL COMMENT '完成支付时间',
  `close_time` int(11) DEFAULT NULL COMMENT '支付关闭时间',
  `close_by` int(11) DEFAULT NULL COMMENT '关闭操作人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单支付记录';

-- ----------------------------
-- Table structure for set_databank
-- ----------------------------
DROP TABLE IF EXISTS `set_databank`;
CREATE TABLE `set_databank` (
  `id` int(11) NOT NULL COMMENT '银行编号',
  `bank_name` varchar(100) DEFAULT NULL COMMENT '银行名称',
  `bank_code` varchar(50) DEFAULT NULL COMMENT '银行简写',
  `ico` varchar(100) DEFAULT NULL COMMENT '图标路径',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='银行信息表';

-- ----------------------------
-- Records of set_databank
-- ----------------------------
BEGIN;
INSERT INTO `set_databank` VALUES (1, '工商银行', 'ICBC', '/fileuploadpath/bankimg/bank_icb.png', 1);
INSERT INTO `set_databank` VALUES (2, '中国银行', 'BOC', '/fileuploadpath/bankimg/bank_boc.png', 1);
INSERT INTO `set_databank` VALUES (3, '建设银行', 'CCB', '/fileuploadpath/bankimg/bank_ccb.png', 1);
INSERT INTO `set_databank` VALUES (4, '招商银行', 'CMB', '/fileuploadpath/bankimg/bank_cmb.png', 1);
INSERT INTO `set_databank` VALUES (5, '农业银行', 'ABC', '/fileuploadpath/bankimg/bank_abc.png', 0);
INSERT INTO `set_databank` VALUES (6, '平安银行', 'SPABANK', '/fileuploadpath/bankimg/bank_pab.png', 1);
INSERT INTO `set_databank` VALUES (7, '交通银行', 'COMM', '/fileuploadpath/bankimg/bank_bom.png', 1);
INSERT INTO `set_databank` VALUES (8, '中信银行', 'CITIC', '/fileuploadpath/bankimg/bank_cit.png', 1);
INSERT INTO `set_databank` VALUES (9, '光大银行', 'CEB', '/fileuploadpath/bankimg/bank_ceb.png', 1);
INSERT INTO `set_databank` VALUES (10, '华夏银行', 'HXBANK', '/fileuploadpath/bankimg/bank_hxb.png', 0);
INSERT INTO `set_databank` VALUES (11, '广发银行', 'GDB', '/fileuploadpath/bankimg/bank_gdb.png', 1);
INSERT INTO `set_databank` VALUES (12, '上海浦东发展银行', 'SPDB', '/fileuploadpath/bankimg/bank_spd.png', 1);
INSERT INTO `set_databank` VALUES (13, '兴业银行', 'CIB', '/fileuploadpath/bankimg/bank_cib.png', 1);
INSERT INTO `set_databank` VALUES (14, '民生银行', 'CMBC', '/fileuploadpath/bankimg/bank_smb.png', 1);
INSERT INTO `set_databank` VALUES (15, '中国邮政储蓄银行', 'PSBC', '/fileuploadpath/bankimg/bank_psb.png', 1);
INSERT INTO `set_databank` VALUES (16, '北京银行', 'BJBANK', '/fileuploadpath/bankimg/bank_bob.png', 1);
INSERT INTO `set_databank` VALUES (17, '上海银行', 'SHBANK', '/fileuploadpath/bankimg/bank_bos.png', 1);
INSERT INTO `set_databank` VALUES (18, '广州银行', 'GCB', '', 1);
INSERT INTO `set_databank` VALUES (19, '宝安桂银村镇银行', 'BAGYBC', '', 1);
INSERT INTO `set_databank` VALUES (20, '深圳农村商业银行', 'SRCB', '', NULL);
INSERT INTO `set_databank` VALUES (21, '广西北部湾银行', 'BGB', '', NULL);
INSERT INTO `set_databank` VALUES (22, '上海农村商业银行', 'SHRCB', '', NULL);
INSERT INTO `set_databank` VALUES (23, '威海市商业银行', 'WHCCB', '', NULL);
INSERT INTO `set_databank` VALUES (24, '周口银行', 'BOZK', '', NULL);
INSERT INTO `set_databank` VALUES (25, '库尔勒市商业银行', 'KORLABANK', '', NULL);
INSERT INTO `set_databank` VALUES (26, '顺德农商银行', 'SDEB', '', NULL);
INSERT INTO `set_databank` VALUES (27, '湖北省农村信用社', 'HURCB', '', NULL);
INSERT INTO `set_databank` VALUES (28, '无锡农村商业银行', 'WRCB', '', NULL);
INSERT INTO `set_databank` VALUES (29, '朝阳银行', 'BOCY', '', NULL);
INSERT INTO `set_databank` VALUES (30, '浙商银行', 'CZBANK', '', NULL);
INSERT INTO `set_databank` VALUES (31, '邯郸银行', 'HDBANK', '', NULL);
INSERT INTO `set_databank` VALUES (32, '东莞银行', 'BOD', '', NULL);
INSERT INTO `set_databank` VALUES (33, '遵义市商业银行', 'ZYCBANK', '', NULL);
INSERT INTO `set_databank` VALUES (34, '绍兴银行', 'SXCB', '', NULL);
INSERT INTO `set_databank` VALUES (35, '贵州省农村信用社', 'GZRCU', '', NULL);
INSERT INTO `set_databank` VALUES (36, '张家口市商业银行', 'ZJKCCB', '', NULL);
INSERT INTO `set_databank` VALUES (37, '锦州银行', 'BOJZ', '', NULL);
INSERT INTO `set_databank` VALUES (38, '平顶山银行', 'BOP', '', NULL);
INSERT INTO `set_databank` VALUES (39, '汉口银行', 'HKB', '', NULL);
INSERT INTO `set_databank` VALUES (40, '宁夏黄河农村商业银行', 'NXRCU', '', NULL);
INSERT INTO `set_databank` VALUES (41, '广东南粤银行', 'NYNB', '', NULL);
INSERT INTO `set_databank` VALUES (42, '广州农商银行', 'GRCB', '', NULL);
INSERT INTO `set_databank` VALUES (43, '苏州银行', 'BOSZ', '', NULL);
INSERT INTO `set_databank` VALUES (44, '杭州银行', 'HZCB', '', NULL);
INSERT INTO `set_databank` VALUES (45, '衡水银行', 'HSBK', '', NULL);
INSERT INTO `set_databank` VALUES (46, '湖北银行', 'HBC', '', NULL);
INSERT INTO `set_databank` VALUES (47, '嘉兴银行', 'JXBANK', '', NULL);
INSERT INTO `set_databank` VALUES (48, '华融湘江银行', 'HRXJB', '', NULL);
INSERT INTO `set_databank` VALUES (49, '丹东银行', 'BODD', '', NULL);
INSERT INTO `set_databank` VALUES (50, '安阳银行', 'AYCB', '', NULL);
INSERT INTO `set_databank` VALUES (51, '恒丰银行', 'EGBANK', '', NULL);
INSERT INTO `set_databank` VALUES (52, '国家开发银行', 'CDB', '', NULL);
INSERT INTO `set_databank` VALUES (53, '江苏太仓农村商业银行', 'TCRCB', '', NULL);
INSERT INTO `set_databank` VALUES (54, '南京银行', 'NJCB', '', NULL);
INSERT INTO `set_databank` VALUES (55, '郑州银行', 'ZZBANK', '', NULL);
INSERT INTO `set_databank` VALUES (56, '德阳商业银行', 'DYCB', '', NULL);
INSERT INTO `set_databank` VALUES (57, '宜宾市商业银行', 'YBCCB', '', NULL);
INSERT INTO `set_databank` VALUES (58, '四川省农村信用', 'SCRCU', '', NULL);
INSERT INTO `set_databank` VALUES (59, '昆仑银行', 'KLB', '', NULL);
INSERT INTO `set_databank` VALUES (60, '莱商银行', 'LSBANK', '', NULL);
INSERT INTO `set_databank` VALUES (61, '尧都农商行', 'YDRCB', '', NULL);
INSERT INTO `set_databank` VALUES (62, '重庆三峡银行', 'CCQTGB', '', NULL);
INSERT INTO `set_databank` VALUES (63, '富滇银行', 'FDB', '', NULL);
INSERT INTO `set_databank` VALUES (64, '江苏省农村信用联合社', 'JSRCU', '', NULL);
INSERT INTO `set_databank` VALUES (65, '济宁银行', 'JNBANK', '', NULL);
INSERT INTO `set_databank` VALUES (66, '晋城银行JCBANK', 'JINCHB', '', NULL);
INSERT INTO `set_databank` VALUES (67, '阜新银行', 'FXCB', '', NULL);
INSERT INTO `set_databank` VALUES (68, '武汉农村商业银行', 'WHRCB', '', NULL);
INSERT INTO `set_databank` VALUES (69, '湖北银行宜昌分行', 'HBYCBANK', '', NULL);
INSERT INTO `set_databank` VALUES (70, '台州银行', 'TZCB', '', NULL);
INSERT INTO `set_databank` VALUES (71, '泰安市商业银行', 'TACCB', '', NULL);
INSERT INTO `set_databank` VALUES (72, '许昌银行', 'XCYH', '', NULL);
INSERT INTO `set_databank` VALUES (73, '宁夏银行', 'NXBANK', '', NULL);
INSERT INTO `set_databank` VALUES (74, '徽商银行', 'HSBANK', '', NULL);
INSERT INTO `set_databank` VALUES (75, '九江银行', 'JJBANK', '', NULL);
INSERT INTO `set_databank` VALUES (76, '农信银清算中心', 'NHQS', '', NULL);
INSERT INTO `set_databank` VALUES (77, '浙江民泰商业银行', 'MTBANK', '', NULL);
INSERT INTO `set_databank` VALUES (78, '廊坊银行', 'LANGFB', '', NULL);
INSERT INTO `set_databank` VALUES (79, '鞍山银行', 'ASCB', '', NULL);
INSERT INTO `set_databank` VALUES (80, '昆山农村商业银行', 'KSRB', '', NULL);
INSERT INTO `set_databank` VALUES (81, '玉溪市商业银行', 'YXCCB', '', NULL);
INSERT INTO `set_databank` VALUES (82, '大连银行', 'DLB', '', NULL);
INSERT INTO `set_databank` VALUES (83, '东莞农村商业银行', 'DRCBCL', '', NULL);
INSERT INTO `set_databank` VALUES (84, '宁波银行', 'NBBANK', '', NULL);
INSERT INTO `set_databank` VALUES (85, '营口银行', 'BOYK', '', NULL);
INSERT INTO `set_databank` VALUES (86, '陕西信合', 'SXRCCU', '', NULL);
INSERT INTO `set_databank` VALUES (87, '桂林银行', 'GLBANK', '', NULL);
INSERT INTO `set_databank` VALUES (88, '青海银行', 'BOQH', '', NULL);
INSERT INTO `set_databank` VALUES (89, '成都农商银行', 'CDRCB', '', NULL);
INSERT INTO `set_databank` VALUES (90, '青岛银行', 'QDCCB', '', NULL);
INSERT INTO `set_databank` VALUES (91, '东亚银行', 'HKBEA', '', NULL);
INSERT INTO `set_databank` VALUES (92, '湖北银行黄石分行', 'HBHSBANK', '', NULL);
INSERT INTO `set_databank` VALUES (93, '温州银行', 'WZCB', '', NULL);
INSERT INTO `set_databank` VALUES (94, '天津农商银行', 'TRCB', '', NULL);
INSERT INTO `set_databank` VALUES (95, '齐鲁银行', 'QLBANK', '', NULL);
INSERT INTO `set_databank` VALUES (96, '广东省农村信用社联合社', 'GDRCC', '', NULL);
INSERT INTO `set_databank` VALUES (97, '浙江泰隆商业银行', 'ZJTLCB', '', NULL);
INSERT INTO `set_databank` VALUES (98, '赣州银行', 'GZB', '', NULL);
INSERT INTO `set_databank` VALUES (99, '贵阳市商业银行', 'GYCB', '', NULL);
INSERT INTO `set_databank` VALUES (100, '重庆银行', 'CQBANK', '', NULL);
INSERT INTO `set_databank` VALUES (101, '龙江银行', 'DAQINGB', '', NULL);
INSERT INTO `set_databank` VALUES (102, '南充市商业银行', 'CGNB', '', NULL);
INSERT INTO `set_databank` VALUES (103, '三门峡银行', 'SCCB', '', NULL);
INSERT INTO `set_databank` VALUES (104, '常熟农村商业银行', 'CSRCB', '', NULL);
INSERT INTO `set_databank` VALUES (105, '吉林银行', 'JLBANK', '', NULL);
INSERT INTO `set_databank` VALUES (106, '常州农村信用联社', 'CZRCB', '', NULL);
INSERT INTO `set_databank` VALUES (107, '潍坊银行', 'BANKWF', '', NULL);
INSERT INTO `set_databank` VALUES (108, '张家港农村商业银行', 'ZRCBANK', '', NULL);
INSERT INTO `set_databank` VALUES (109, '福建海峡银行', 'FJHXBC', '', NULL);
INSERT INTO `set_databank` VALUES (110, '浙江省农村信用社联合社', 'ZJNX', '', NULL);
INSERT INTO `set_databank` VALUES (111, '兰州银行', 'LZYH', '', NULL);
INSERT INTO `set_databank` VALUES (112, '晋商银行', 'JSB', '', NULL);
INSERT INTO `set_databank` VALUES (113, '渤海银行', 'BOHAIB', '', NULL);
INSERT INTO `set_databank` VALUES (114, '浙江稠州商业银行', 'CZCB', '', NULL);
INSERT INTO `set_databank` VALUES (115, '阳泉银行', 'YQCCB', '', NULL);
INSERT INTO `set_databank` VALUES (116, '盛京银行', 'SJBANK', '', NULL);
INSERT INTO `set_databank` VALUES (117, '西安银行', 'XABANK', '', NULL);
INSERT INTO `set_databank` VALUES (118, '包商银行', 'BSB', '', NULL);
INSERT INTO `set_databank` VALUES (119, '江苏银行', 'JSBANK', '', NULL);
INSERT INTO `set_databank` VALUES (120, '抚顺银行', 'FSCB', '', NULL);
INSERT INTO `set_databank` VALUES (121, '河南省农村信用', 'HNRCU', '', NULL);
INSERT INTO `set_databank` VALUES (122, '邢台银行', 'XTB', '', NULL);
INSERT INTO `set_databank` VALUES (123, '湖南省农村信用社', 'HNRCC', '', NULL);
INSERT INTO `set_databank` VALUES (124, '东营市商业银行', 'DYCCB', '', NULL);
INSERT INTO `set_databank` VALUES (125, '鄂尔多斯银行', 'ORBANK', '', NULL);
INSERT INTO `set_databank` VALUES (126, '北京农村商业银行', 'BJRCB', '', NULL);
INSERT INTO `set_databank` VALUES (127, '信阳银行', 'XYBANK', '', NULL);
INSERT INTO `set_databank` VALUES (128, '自贡市商业银行', 'ZGCCB', '', NULL);
INSERT INTO `set_databank` VALUES (129, '成都银行', 'CDCB', '', NULL);
INSERT INTO `set_databank` VALUES (130, '韩亚银行', 'HANABANK', '', NULL);
INSERT INTO `set_databank` VALUES (131, '洛阳银行', 'LYBANK', '', NULL);
INSERT INTO `set_databank` VALUES (132, '广东发展银行', 'GDB', '', NULL);
INSERT INTO `set_databank` VALUES (133, '齐商银行', 'ZBCB', '', NULL);
INSERT INTO `set_databank` VALUES (134, '开封市商业银行', 'CBKF', '', NULL);
INSERT INTO `set_databank` VALUES (135, '内蒙古银行', 'H3CB', '', NULL);
INSERT INTO `set_databank` VALUES (136, '重庆农村商业银行', 'CRCBANK', '', NULL);
INSERT INTO `set_databank` VALUES (137, '石嘴山银行', 'SZSBK', '', NULL);
INSERT INTO `set_databank` VALUES (138, '德州银行', 'DZBANK', '', NULL);
INSERT INTO `set_databank` VALUES (139, '上饶银行', 'SRBANK', '', NULL);
INSERT INTO `set_databank` VALUES (140, '乐山市商业银行', 'LSCCB', '', NULL);
INSERT INTO `set_databank` VALUES (141, '江西省农村信用', 'JXRCU', '', NULL);
INSERT INTO `set_databank` VALUES (142, '晋中市商业银行', 'JZBANK', '', NULL);
INSERT INTO `set_databank` VALUES (143, '湖州市商业银行', 'HZCCB', '', NULL);
INSERT INTO `set_databank` VALUES (144, '南海农村信用联社', 'NHB', '', NULL);
INSERT INTO `set_databank` VALUES (145, '新乡银行', 'XXBANK', '', NULL);
INSERT INTO `set_databank` VALUES (146, '江苏江阴农村商业银行', 'JRCB', '', NULL);
INSERT INTO `set_databank` VALUES (147, '云南省农村信用社', 'YNRCC', '', NULL);
INSERT INTO `set_databank` VALUES (148, '广西省农村信用', 'GXRCU', '', NULL);
INSERT INTO `set_databank` VALUES (149, '驻马店银行', 'BZMD', '', NULL);
INSERT INTO `set_databank` VALUES (150, '安徽省农村信用社', 'ARCU', '', NULL);
INSERT INTO `set_databank` VALUES (151, '甘肃省农村信用', 'GSRCU', '', NULL);
INSERT INTO `set_databank` VALUES (152, '辽阳市商业银行', 'LYCB', '', NULL);
INSERT INTO `set_databank` VALUES (153, '吉林农信', 'JLRCU', '', NULL);
INSERT INTO `set_databank` VALUES (154, '乌鲁木齐市商业银行', 'URMQCCB', '', NULL);
INSERT INTO `set_databank` VALUES (155, '中山小榄村镇银行', 'XLBANK', '', NULL);
INSERT INTO `set_databank` VALUES (156, '长沙银行', 'CSCB', '', NULL);
INSERT INTO `set_databank` VALUES (157, '金华银行', 'JHBANK', '', NULL);
INSERT INTO `set_databank` VALUES (158, '河北银行', 'BHB', '', NULL);
INSERT INTO `set_databank` VALUES (159, '鄞州银行', 'NBYZ', '', NULL);
INSERT INTO `set_databank` VALUES (160, '临商银行', 'LSBC', '', NULL);
INSERT INTO `set_databank` VALUES (161, '承德银行', 'BOCD', '', NULL);
INSERT INTO `set_databank` VALUES (162, '山东农信', 'SDRCU', '', NULL);
INSERT INTO `set_databank` VALUES (163, '南昌银行', 'NCB', '', NULL);
INSERT INTO `set_databank` VALUES (164, '天津银行', 'TCCB', '', NULL);
INSERT INTO `set_databank` VALUES (165, '吴江农商银行', 'WJRCB', '', NULL);
INSERT INTO `set_databank` VALUES (166, '城市商业银行资金清算中心', 'CBBQS', '', NULL);
INSERT INTO `set_databank` VALUES (167, '河北省农村信用社', 'HBRCU', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for set_datacity
-- ----------------------------
DROP TABLE IF EXISTS `set_datacity`;
CREATE TABLE `set_datacity` (
  `idno` varchar(20) NOT NULL COMMENT '编号',
  `name` varchar(50) DEFAULT NULL COMMENT '省名称',
  `map` varchar(2000) DEFAULT NULL COMMENT '地图坐标范围值',
  `shorname` varchar(20) DEFAULT NULL COMMENT '缩写城市名称',
  `pinyin` varchar(50) DEFAULT NULL COMMENT '全拼字符',
  `shorter` varchar(10) DEFAULT NULL COMMENT '城市拼音缩写',
  `initial` varchar(1) DEFAULT NULL COMMENT '首字母索引',
  `hotflag` int(4) DEFAULT NULL COMMENT '活动热门城市标志',
  PRIMARY KEY (`idno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='省市数据表';

-- ----------------------------
-- Records of set_datacity
-- ----------------------------
BEGIN;
INSERT INTO `set_datacity` VALUES ('110000', '北京市', NULL, NULL, 'Beijingshi', NULL, NULL, 1);
INSERT INTO `set_datacity` VALUES ('110100', '北京市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110101', '东城区', NULL, NULL, 'Dongchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110102', '西城区', NULL, NULL, 'Xichengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110105', '朝阳区', NULL, NULL, 'Chaoyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110106', '丰台区', NULL, NULL, 'Fengtaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110107', '石景山区', NULL, NULL, 'Shijingshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110108', '海淀区', NULL, NULL, 'Haidianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110109', '门头沟区', NULL, NULL, 'Mentougouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110111', '房山区', NULL, NULL, 'Fangshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110112', '通州区', NULL, NULL, 'Tongzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110113', '顺义区', NULL, NULL, 'Shunyiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110114', '昌平区', NULL, NULL, 'Changpingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110115', '大兴区', NULL, NULL, 'Daxingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110116', '怀柔区', NULL, NULL, 'Huairouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110117', '平谷区', NULL, NULL, 'Pingguqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110118', '密云区', NULL, NULL, 'Miyunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('110119', '延庆区', NULL, NULL, 'Yanqingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120000', '天津市', NULL, NULL, 'Tianjinshi', NULL, NULL, 1);
INSERT INTO `set_datacity` VALUES ('120100', '天津市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120101', '和平区', NULL, NULL, 'Hepingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120102', '河东区', NULL, NULL, 'Hedongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120103', '河西区', NULL, NULL, 'Hexiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120104', '南开区', NULL, NULL, 'Nankaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120105', '河北区', NULL, NULL, 'Hebeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120106', '红桥区', NULL, NULL, 'Hongqiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120110', '东丽区', NULL, NULL, 'Dongliqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120111', '西青区', NULL, NULL, 'Xiqingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120112', '津南区', NULL, NULL, 'Jinnanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120113', '北辰区', NULL, NULL, 'Beichenqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120114', '武清区', NULL, NULL, 'Wuqingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120115', '宝坻区', NULL, NULL, 'Baochiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120116', '滨海新区', NULL, NULL, 'Binhaixinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120117', '宁河区', NULL, NULL, 'Ninghequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120118', '静海区', NULL, NULL, 'Jinghaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('120119', '蓟州区', NULL, NULL, 'Jizhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130000', '河北省', NULL, NULL, 'Hebeisheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130100', '石家庄市', NULL, NULL, 'Shijiazhuangshi', NULL, NULL, 1);
INSERT INTO `set_datacity` VALUES ('130101', '石家庄市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130102', '长安区', NULL, NULL, 'Zhanganqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130104', '桥西区', NULL, NULL, 'Qiaoxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130105', '新华区', NULL, NULL, 'Xinhuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130107', '井陉矿区', NULL, NULL, 'Jingxingkuangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130108', '裕华区', NULL, NULL, 'Yuhuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130109', '藁城区', NULL, NULL, 'Gaochengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130110', '鹿泉区', NULL, NULL, 'Luquanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130111', '栾城区', NULL, NULL, 'Luanchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130121', '井陉县', NULL, NULL, 'Jingxingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130123', '正定县', NULL, NULL, 'Zhengdingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130125', '行唐县', NULL, NULL, 'Xingtangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130126', '灵寿县', NULL, NULL, 'Lingshouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130127', '高邑县', NULL, NULL, 'Gaoyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130128', '深泽县', NULL, NULL, 'Shenzexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130129', '赞皇县', NULL, NULL, 'Zanhuangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130130', '无极县', NULL, NULL, 'Wujixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130131', '平山县', NULL, NULL, 'Pingshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130132', '元氏县', NULL, NULL, 'Yuanshixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130133', '赵县', NULL, NULL, 'Zhaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130183', '晋州市', NULL, NULL, 'Jinzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130184', '新乐市', NULL, NULL, 'Xinleshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130200', '唐山市', NULL, NULL, 'Tangshanshi', NULL, NULL, 1);
INSERT INTO `set_datacity` VALUES ('130201', '唐山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130202', '路南区', NULL, NULL, 'Lunanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130203', '路北区', NULL, NULL, 'Lubeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130204', '古冶区', NULL, NULL, 'Guyequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130205', '开平区', NULL, NULL, 'Kaipingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130207', '丰南区', NULL, NULL, 'Fengnanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130208', '丰润区', NULL, NULL, 'Fengrunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130209', '曹妃甸区', NULL, NULL, 'Caofeidianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130223', '滦县', NULL, NULL, 'Luanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130224', '滦南县', NULL, NULL, 'Luannanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130225', '乐亭县', NULL, NULL, 'Letingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130227', '迁西县', NULL, NULL, 'Qianxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130229', '玉田县', NULL, NULL, 'Yutianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130281', '遵化市', NULL, NULL, 'Zunhuashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130283', '迁安市', NULL, NULL, 'Qiananshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130300', '秦皇岛市', NULL, NULL, 'Qinhuangdaoshi', NULL, NULL, 1);
INSERT INTO `set_datacity` VALUES ('130301', '秦皇岛市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130302', '海港区', NULL, NULL, 'Haigangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130303', '山海关区', NULL, NULL, 'Shanhaiguanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130304', '北戴河区', NULL, NULL, 'Beidaihequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130306', '抚宁区', NULL, NULL, 'Funingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130321', '青龙满族自治县', NULL, NULL, 'Qinglongmanzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130322', '昌黎县', NULL, NULL, 'Changlixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130324', '卢龙县', NULL, NULL, 'Lulongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130400', '邯郸市', NULL, NULL, 'Handanshi', NULL, NULL, 1);
INSERT INTO `set_datacity` VALUES ('130401', '邯郸市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130402', '邯山区', NULL, NULL, 'Hanshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130403', '丛台区', NULL, NULL, 'Congtaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130404', '复兴区', NULL, NULL, 'Fuxingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130406', '峰峰矿区', NULL, NULL, 'Fengfengkuangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130421', '邯郸县', NULL, NULL, 'Handanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130423', '临漳县', NULL, NULL, 'Linzhangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130424', '成安县', NULL, NULL, 'Chenganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130425', '大名县', NULL, NULL, 'Damingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130426', '涉县', NULL, NULL, 'Shexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130427', '磁县', NULL, NULL, 'Cixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130428', '肥乡县', NULL, NULL, 'Feixiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130429', '永年县', NULL, NULL, 'Yongnianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130430', '邱县', NULL, NULL, 'Qiuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130431', '鸡泽县', NULL, NULL, 'Jizexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130432', '广平县', NULL, NULL, 'Guangpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130433', '馆陶县', NULL, NULL, 'Guantaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130434', '魏县', NULL, NULL, 'Weixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130435', '曲周县', NULL, NULL, 'Quzhouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130481', '武安市', NULL, NULL, 'Wuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130500', '邢台市', NULL, NULL, 'Xingtaishi', NULL, NULL, 1);
INSERT INTO `set_datacity` VALUES ('130501', '邢台市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130502', '桥东区', NULL, NULL, 'Qiaodongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130503', '桥西区', NULL, NULL, 'Qiaoxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130521', '邢台县', NULL, NULL, 'Xingtaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130522', '临城县', NULL, NULL, 'Linchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130523', '内丘县', NULL, NULL, 'Neiqiuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130524', '柏乡县', NULL, NULL, 'Boxiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130525', '隆尧县', NULL, NULL, 'Longyaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130526', '任县', NULL, NULL, 'Renxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130527', '南和县', NULL, NULL, 'Nanhexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130528', '宁晋县', NULL, NULL, 'Ningjinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130529', '巨鹿县', NULL, NULL, 'Juluxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130530', '新河县', NULL, NULL, 'Xinhexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130531', '广宗县', NULL, NULL, 'Guangzongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130532', '平乡县', NULL, NULL, 'Pingxiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130533', '威县', NULL, NULL, 'Weixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130534', '清河县', NULL, NULL, 'Qinghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130535', '临西县', NULL, NULL, 'Linxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130581', '南宫市', NULL, NULL, 'Nangongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130582', '沙河市', NULL, NULL, 'Shaheshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130600', '保定市', NULL, NULL, 'Baodingshi', NULL, NULL, 1);
INSERT INTO `set_datacity` VALUES ('130601', '保定市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130602', '竞秀区', NULL, NULL, 'Jingxiuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130606', '莲池区', NULL, NULL, 'Lianchiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130607', '满城区', NULL, NULL, 'Manchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130608', '清苑区', NULL, NULL, 'Qingyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130609', '徐水区', NULL, NULL, 'Xushuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130623', '涞水县', NULL, NULL, 'Laishuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130624', '阜平县', NULL, NULL, 'Fupingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130626', '定兴县', NULL, NULL, 'Dingxingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130627', '唐县', NULL, NULL, 'Tangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130628', '高阳县', NULL, NULL, 'Gaoyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130629', '容城县', NULL, NULL, 'Rongchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130630', '涞源县', NULL, NULL, 'Laiyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130631', '望都县', NULL, NULL, 'Wangdouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130632', '安新县', NULL, NULL, 'Anxinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130633', '易县', NULL, NULL, 'Yixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130634', '曲阳县', NULL, NULL, 'Quyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130635', '蠡县', NULL, NULL, 'Lixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130636', '顺平县', NULL, NULL, 'Shunpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130637', '博野县', NULL, NULL, 'Boyexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130638', '雄县', NULL, NULL, 'Xiongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130681', '涿州市', NULL, NULL, 'Zhuozhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130683', '安国市', NULL, NULL, 'Anguoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130684', '高碑店市', NULL, NULL, 'Gaobeidianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130700', '张家口市', NULL, NULL, 'Zhangjiakoushi', NULL, NULL, 1);
INSERT INTO `set_datacity` VALUES ('130701', '张家口市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130702', '桥东区', NULL, NULL, 'Qiaodongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130703', '桥西区', NULL, NULL, 'Qiaoxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130705', '宣化区', NULL, NULL, 'Xuanhuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130706', '下花园区', NULL, NULL, 'Xiahuayuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130708', '万全区', NULL, NULL, 'Wanquanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130709', '崇礼区', NULL, NULL, 'Chongliqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130722', '张北县', NULL, NULL, 'Zhangbeixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130723', '康保县', NULL, NULL, 'Kangbaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130724', '沽源县', NULL, NULL, 'Guyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130725', '尚义县', NULL, NULL, 'Shangyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130726', '蔚县', NULL, NULL, 'Yuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130727', '阳原县', NULL, NULL, 'Yangyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130728', '怀安县', NULL, NULL, 'Huaianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130730', '怀来县', NULL, NULL, 'Huailaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130731', '涿鹿县', NULL, NULL, 'Zhuoluxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130732', '赤城县', NULL, NULL, 'Chichengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130800', '承德市', NULL, NULL, 'Chengdeshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130801', '承德市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130802', '双桥区', NULL, NULL, 'Shuangqiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130803', '双滦区', NULL, NULL, 'Shuangluanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130804', '鹰手营子矿区', NULL, NULL, 'Yingshouyingzikuangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130821', '承德县', NULL, NULL, 'Chengdexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130822', '兴隆县', NULL, NULL, 'Xinglongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130823', '平泉县', NULL, NULL, 'Pingquanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130824', '滦平县', NULL, NULL, 'Luanpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130825', '隆化县', NULL, NULL, 'Longhuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130826', '丰宁满族自治县', NULL, NULL, 'Fengningmanzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130827', '宽城满族自治县', NULL, NULL, 'Kuanchengmanzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130828', '围场满族蒙古族自治县', NULL, NULL, 'Weichangmanzumengguzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130900', '沧州市', NULL, NULL, 'Cangzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130901', '沧州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130902', '新华区', NULL, NULL, 'Xinhuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130903', '运河区', NULL, NULL, 'Yunhequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130921', '沧县', NULL, NULL, 'Cangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130922', '青县', NULL, NULL, 'Qingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130923', '东光县', NULL, NULL, 'Dongguangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130924', '海兴县', NULL, NULL, 'Haixingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130925', '盐山县', NULL, NULL, 'Yanshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130926', '肃宁县', NULL, NULL, 'Suningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130927', '南皮县', NULL, NULL, 'Nanpixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130928', '吴桥县', NULL, NULL, 'Wuqiaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130929', '献县', NULL, NULL, 'Xianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130930', '孟村回族自治县', NULL, NULL, 'Mengcunhuizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130981', '泊头市', NULL, NULL, 'Botoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130982', '任丘市', NULL, NULL, 'Renqiushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130983', '黄骅市', NULL, NULL, 'Huanghuashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('130984', '河间市', NULL, NULL, 'Hejianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131000', '廊坊市', NULL, NULL, 'Langfangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131001', '廊坊市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131002', '安次区', NULL, NULL, 'Anciqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131003', '广阳区', NULL, NULL, 'Guangyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131022', '固安县', NULL, NULL, 'Guanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131023', '永清县', NULL, NULL, 'Yongqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131024', '香河县', NULL, NULL, 'Xianghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131025', '大城县', NULL, NULL, 'Dachengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131026', '文安县', NULL, NULL, 'Wenanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131028', '大厂回族自治县', NULL, NULL, 'Dachanghuizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131081', '霸州市', NULL, NULL, 'Bazhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131082', '三河市', NULL, NULL, 'Sanheshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131100', '衡水市', NULL, NULL, 'Hengshuishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131101', '衡水市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131102', '桃城区', NULL, NULL, 'Taochengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131103', '冀州区', NULL, NULL, 'Jizhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131121', '枣强县', NULL, NULL, 'Zaoqiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131122', '武邑县', NULL, NULL, 'Wuyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131123', '武强县', NULL, NULL, 'Wuqiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131124', '饶阳县', NULL, NULL, 'Raoyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131125', '安平县', NULL, NULL, 'Anpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131126', '故城县', NULL, NULL, 'Guchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131127', '景县', NULL, NULL, 'Jingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131128', '阜城县', NULL, NULL, 'Fuchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('131182', '深州市', NULL, NULL, 'Shenzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('139000', '省直辖县级行政区划', NULL, NULL, 'Shengzhixiaxianjixingzhengquhua', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('139001', '定州市', NULL, NULL, 'Dingzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('139002', '辛集市', NULL, NULL, 'Xinjishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140000', '山西省', NULL, NULL, 'Shanxisheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140100', '太原市', NULL, NULL, 'Taiyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140101', '太原市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140105', '小店区', NULL, NULL, 'Xiaodianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140106', '迎泽区', NULL, NULL, 'Yingzequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140107', '杏花岭区', NULL, NULL, 'Xinghualingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140108', '尖草坪区', NULL, NULL, 'Jiancaopingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140109', '万柏林区', NULL, NULL, 'Wanbolinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140110', '晋源区', NULL, NULL, 'Jinyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140121', '清徐县', NULL, NULL, 'Qingxuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140122', '阳曲县', NULL, NULL, 'Yangquxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140123', '娄烦县', NULL, NULL, 'Loufanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140181', '古交市', NULL, NULL, 'Gujiaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140200', '大同市', NULL, NULL, 'Datongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140201', '大同市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140202', '城区', NULL, NULL, 'Chengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140203', '矿区', NULL, NULL, 'Kuangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140211', '南郊区', NULL, NULL, 'Nanjiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140212', '新荣区', NULL, NULL, 'Xinrongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140221', '阳高县', NULL, NULL, 'Yanggaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140222', '天镇县', NULL, NULL, 'Tianzhenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140223', '广灵县', NULL, NULL, 'Guanglingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140224', '灵丘县', NULL, NULL, 'Lingqiuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140225', '浑源县', NULL, NULL, 'Hunyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140226', '左云县', NULL, NULL, 'Zuoyunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140227', '大同县', NULL, NULL, 'Datongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140300', '阳泉市', NULL, NULL, 'Yangquanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140301', '阳泉市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140302', '城区', NULL, NULL, 'Chengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140303', '矿区', NULL, NULL, 'Kuangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140311', '郊区', NULL, NULL, 'Jiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140321', '平定县', NULL, NULL, 'Pingdingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140322', '盂县', NULL, NULL, 'Yuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140400', '长治市', NULL, NULL, 'Zhangzhishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140401', '长治市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140402', '城区', NULL, NULL, 'Chengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140411', '郊区', NULL, NULL, 'Jiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140421', '长治县', NULL, NULL, 'Zhangzhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140423', '襄垣县', NULL, NULL, 'Xiangyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140424', '屯留县', NULL, NULL, 'Tunliuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140425', '平顺县', NULL, NULL, 'Pingshunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140426', '黎城县', NULL, NULL, 'Lichengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140427', '壶关县', NULL, NULL, 'Huguanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140428', '长子县', NULL, NULL, 'Zhangzixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140429', '武乡县', NULL, NULL, 'Wuxiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140430', '沁县', NULL, NULL, 'Qinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140431', '沁源县', NULL, NULL, 'Qinyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140481', '潞城市', NULL, NULL, 'Luchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140500', '晋城市', NULL, NULL, 'Jinchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140501', '晋城市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140502', '城区', NULL, NULL, 'Chengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140521', '沁水县', NULL, NULL, 'Qinshuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140522', '阳城县', NULL, NULL, 'Yangchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140524', '陵川县', NULL, NULL, 'Lingchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140525', '泽州县', NULL, NULL, 'Zezhouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140581', '高平市', NULL, NULL, 'Gaopingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140600', '朔州市', NULL, NULL, 'Shuozhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140601', '朔州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140602', '朔城区', NULL, NULL, 'Shuochengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140603', '平鲁区', NULL, NULL, 'Pingluqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140621', '山阴县', NULL, NULL, 'Shanyinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140622', '应县', NULL, NULL, 'Yingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140623', '右玉县', NULL, NULL, 'Youyuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140624', '怀仁县', NULL, NULL, 'Huairenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140700', '晋中市', NULL, NULL, 'Jinzhongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140701', '晋中市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140702', '榆次区', NULL, NULL, 'Yuciqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140721', '榆社县', NULL, NULL, 'Yushexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140722', '左权县', NULL, NULL, 'Zuoquanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140723', '和顺县', NULL, NULL, 'Heshunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140724', '昔阳县', NULL, NULL, 'Xiyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140725', '寿阳县', NULL, NULL, 'Shouyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140726', '太谷县', NULL, NULL, 'Taiguxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140727', '祁县', NULL, NULL, 'Qixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140728', '平遥县', NULL, NULL, 'Pingyaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140729', '灵石县', NULL, NULL, 'Lingshixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140781', '介休市', NULL, NULL, 'Jiexiushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140800', '运城市', NULL, NULL, 'Yunchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140801', '运城市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140802', '盐湖区', NULL, NULL, 'Yanhuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140821', '临猗县', NULL, NULL, 'Linyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140822', '万荣县', NULL, NULL, 'Wanrongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140823', '闻喜县', NULL, NULL, 'Wenxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140824', '稷山县', NULL, NULL, 'Jishanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140825', '新绛县', NULL, NULL, 'Xinjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140826', '绛县', NULL, NULL, 'Jiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140827', '垣曲县', NULL, NULL, 'Yuanquxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140828', '夏县', NULL, NULL, 'Xiaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140829', '平陆县', NULL, NULL, 'Pingluxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140830', '芮城县', NULL, NULL, 'Ruichengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140881', '永济市', NULL, NULL, 'Yongjishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140882', '河津市', NULL, NULL, 'Hejinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140900', '忻州市', NULL, NULL, 'Xinzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140901', '忻州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140902', '忻府区', NULL, NULL, 'Xinfuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140921', '定襄县', NULL, NULL, 'Dingxiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140922', '五台县', NULL, NULL, 'Wutaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140923', '代县', NULL, NULL, 'Daixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140924', '繁峙县', NULL, NULL, 'Fanzhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140925', '宁武县', NULL, NULL, 'Ningwuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140926', '静乐县', NULL, NULL, 'Jinglexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140927', '神池县', NULL, NULL, 'Shenchixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140928', '五寨县', NULL, NULL, 'Wuzhaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140929', '岢岚县', NULL, NULL, 'Kelanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140930', '河曲县', NULL, NULL, 'Hequxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140931', '保德县', NULL, NULL, 'Baodexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140932', '偏关县', NULL, NULL, 'Pianguanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('140981', '原平市', NULL, NULL, 'Yuanpingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141000', '临汾市', NULL, NULL, 'Linfenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141001', '临汾市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141002', '尧都区', NULL, NULL, 'Yaodouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141021', '曲沃县', NULL, NULL, 'Quwoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141022', '翼城县', NULL, NULL, 'Yichengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141023', '襄汾县', NULL, NULL, 'Xiangfenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141024', '洪洞县', NULL, NULL, 'Hongdongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141025', '古县', NULL, NULL, 'Guxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141026', '安泽县', NULL, NULL, 'Anzexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141027', '浮山县', NULL, NULL, 'Fushanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141028', '吉县', NULL, NULL, 'Jixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141029', '乡宁县', NULL, NULL, 'Xiangningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141030', '大宁县', NULL, NULL, 'Daningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141031', '隰县', NULL, NULL, 'Xixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141032', '永和县', NULL, NULL, 'Yonghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141033', '蒲县', NULL, NULL, 'Puxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141034', '汾西县', NULL, NULL, 'Fenxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141081', '侯马市', NULL, NULL, 'Houmashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141082', '霍州市', NULL, NULL, 'Huozhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141100', '吕梁市', NULL, NULL, 'Lvliangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141101', '吕梁市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141102', '离石区', NULL, NULL, 'Lishiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141121', '文水县', NULL, NULL, 'Wenshuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141122', '交城县', NULL, NULL, 'Jiaochengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141123', '兴县', NULL, NULL, 'Xingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141124', '临县', NULL, NULL, 'Linxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141125', '柳林县', NULL, NULL, 'Liulinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141126', '石楼县', NULL, NULL, 'Shilouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141127', '岚县', NULL, NULL, 'Lanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141128', '方山县', NULL, NULL, 'Fangshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141129', '中阳县', NULL, NULL, 'Zhongyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141130', '交口县', NULL, NULL, 'Jiaokouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141181', '孝义市', NULL, NULL, 'Xiaoyishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('141182', '汾阳市', NULL, NULL, 'Fenyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150000', '内蒙古自治区', NULL, NULL, 'Neimengguzizhiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150100', '呼和浩特市', NULL, NULL, 'Huhehaoteshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150101', '呼和浩特市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150102', '新城区', NULL, NULL, 'Xinchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150103', '回民区', NULL, NULL, 'Huiminqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150104', '玉泉区', NULL, NULL, 'Yuquanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150105', '赛罕区', NULL, NULL, 'Saihanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150121', '土默特左旗', NULL, NULL, 'Tumotezuoqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150122', '托克托县', NULL, NULL, 'Tuoketuoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150123', '和林格尔县', NULL, NULL, 'Helingeerxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150124', '清水河县', NULL, NULL, 'Qingshuihexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150125', '武川县', NULL, NULL, 'Wuchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150200', '包头市', NULL, NULL, 'Baotoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150201', '包头市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150202', '东河区', NULL, NULL, 'Donghequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150203', '昆都仑区', NULL, NULL, 'Kundoulunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150204', '青山区', NULL, NULL, 'Qingshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150205', '石拐区', NULL, NULL, 'Shiguaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150206', '白云鄂博矿区', NULL, NULL, 'Baiyunebokuangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150207', '九原区', NULL, NULL, 'Jiuyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150221', '土默特右旗', NULL, NULL, 'Tumoteyouqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150222', '固阳县', NULL, NULL, 'Guyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150223', '达尔罕茂明安联合旗', NULL, NULL, 'Daerhanmaominganlianheqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150300', '乌海市', NULL, NULL, 'Wuhaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150301', '乌海市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150302', '海勃湾区', NULL, NULL, 'Haibowanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150303', '海南区', NULL, NULL, 'Hainanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150304', '乌达区', NULL, NULL, 'Wudaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150400', '赤峰市', NULL, NULL, 'Chifengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150401', '赤峰市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150402', '红山区', NULL, NULL, 'Hongshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150403', '元宝山区', NULL, NULL, 'Yuanbaoshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150404', '松山区', NULL, NULL, 'Songshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150421', '阿鲁科尔沁旗', NULL, NULL, 'Alukeerqinqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150422', '巴林左旗', NULL, NULL, 'Balinzuoqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150423', '巴林右旗', NULL, NULL, 'Balinyouqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150424', '林西县', NULL, NULL, 'Linxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150425', '克什克腾旗', NULL, NULL, 'Keshenketengqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150426', '翁牛特旗', NULL, NULL, 'Wengniuteqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150428', '喀喇沁旗', NULL, NULL, 'Kalaqinqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150429', '宁城县', NULL, NULL, 'Ningchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150430', '敖汉旗', NULL, NULL, 'Aohanqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150500', '通辽市', NULL, NULL, 'Tongliaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150501', '通辽市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150502', '科尔沁区', NULL, NULL, 'Keerqinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150521', '科尔沁左翼中旗', NULL, NULL, 'Keerqinzuoyizhongqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150522', '科尔沁左翼后旗', NULL, NULL, 'Keerqinzuoyihouqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150523', '开鲁县', NULL, NULL, 'Kailuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150524', '库伦旗', NULL, NULL, 'Kulunqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150525', '奈曼旗', NULL, NULL, 'Naimanqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150526', '扎鲁特旗', NULL, NULL, 'Zhaluteqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150581', '霍林郭勒市', NULL, NULL, 'Huolinguoleshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150600', '鄂尔多斯市', NULL, NULL, 'Eerduosishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150601', '鄂尔多斯市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150602', '东胜区', NULL, NULL, 'Dongshengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150603', '康巴什区', NULL, NULL, 'Kangbashenqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150621', '达拉特旗', NULL, NULL, 'Dalateqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150622', '准格尔旗', NULL, NULL, 'Zhungeerqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150623', '鄂托克前旗', NULL, NULL, 'Etuokeqianqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150624', '鄂托克旗', NULL, NULL, 'Etuokeqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150625', '杭锦旗', NULL, NULL, 'Hangjinqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150626', '乌审旗', NULL, NULL, 'Wushenqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150627', '伊金霍洛旗', NULL, NULL, 'Yijinhuoluoqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150700', '呼伦贝尔市', NULL, NULL, 'Hulunbeiershi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150701', '呼伦贝尔市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150702', '海拉尔区', NULL, NULL, 'Hailaerqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150703', '扎赉诺尔区', NULL, NULL, 'Zhalainuoerqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150721', '阿荣旗', NULL, NULL, 'Arongqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150722', '莫力达瓦达斡尔族自治旗', NULL, NULL, 'Molidawadawoerzuzizhiqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150723', '鄂伦春自治旗', NULL, NULL, 'Elunchunzizhiqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150724', '鄂温克族自治旗', NULL, NULL, 'Ewenkezuzizhiqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150725', '陈巴尔虎旗', NULL, NULL, 'Chenbaerhuqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150726', '新巴尔虎左旗', NULL, NULL, 'Xinbaerhuzuoqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150727', '新巴尔虎右旗', NULL, NULL, 'Xinbaerhuyouqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150781', '满洲里市', NULL, NULL, 'Manzhoulishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150782', '牙克石市', NULL, NULL, 'Yakeshishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150783', '扎兰屯市', NULL, NULL, 'Zhalantunshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150784', '额尔古纳市', NULL, NULL, 'Eergunashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150785', '根河市', NULL, NULL, 'Genheshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150800', '巴彦淖尔市', NULL, NULL, 'Bayannaoershi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150801', '巴彦淖尔市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150802', '临河区', NULL, NULL, 'Linhequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150821', '五原县', NULL, NULL, 'Wuyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150822', '磴口县', NULL, NULL, 'Dengkouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150823', '乌拉特前旗', NULL, NULL, 'Wulateqianqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150824', '乌拉特中旗', NULL, NULL, 'Wulatezhongqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150825', '乌拉特后旗', NULL, NULL, 'Wulatehouqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150826', '杭锦后旗', NULL, NULL, 'Hangjinhouqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150900', '乌兰察布市', NULL, NULL, 'Wulanchabushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150901', '乌兰察布市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150902', '集宁区', NULL, NULL, 'Jiningqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150921', '卓资县', NULL, NULL, 'Zhuozixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150922', '化德县', NULL, NULL, 'Huadexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150923', '商都县', NULL, NULL, 'Shangdouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150924', '兴和县', NULL, NULL, 'Xinghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150925', '凉城县', NULL, NULL, 'Liangchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150926', '察哈尔右翼前旗', NULL, NULL, 'Chahaeryouyiqianqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150927', '察哈尔右翼中旗', NULL, NULL, 'Chahaeryouyizhongqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150928', '察哈尔右翼后旗', NULL, NULL, 'Chahaeryouyihouqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150929', '四子王旗', NULL, NULL, 'Siziwangqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('150981', '丰镇市', NULL, NULL, 'Fengzhenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152200', '兴安盟', NULL, NULL, 'Xinganmeng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152201', '乌兰浩特市', NULL, NULL, 'Wulanhaoteshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152202', '阿尔山市', NULL, NULL, 'Aershanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152221', '科尔沁右翼前旗', NULL, NULL, 'Keerqinyouyiqianqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152222', '科尔沁右翼中旗', NULL, NULL, 'Keerqinyouyizhongqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152223', '扎赉特旗', NULL, NULL, 'Zhalaiteqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152224', '突泉县', NULL, NULL, 'Tuquanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152500', '锡林郭勒盟', NULL, NULL, 'Xilinguolemeng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152501', '二连浩特市', NULL, NULL, 'Erlianhaoteshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152502', '锡林浩特市', NULL, NULL, 'Xilinhaoteshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152522', '阿巴嘎旗', NULL, NULL, 'Abagaqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152523', '苏尼特左旗', NULL, NULL, 'Sunitezuoqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152524', '苏尼特右旗', NULL, NULL, 'Suniteyouqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152525', '东乌珠穆沁旗', NULL, NULL, 'Dongwuzhumuqinqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152526', '西乌珠穆沁旗', NULL, NULL, 'Xiwuzhumuqinqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152527', '太仆寺旗', NULL, NULL, 'Taipusiqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152528', '镶黄旗', NULL, NULL, 'Xianghuangqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152529', '正镶白旗', NULL, NULL, 'Zhengxiangbaiqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152530', '正蓝旗', NULL, NULL, 'Zhenglanqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152531', '多伦县', NULL, NULL, 'Duolunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152900', '阿拉善盟', NULL, NULL, 'Alashanmeng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152921', '阿拉善左旗', NULL, NULL, 'Alashanzuoqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152922', '阿拉善右旗', NULL, NULL, 'Alashanyouqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('152923', '额济纳旗', NULL, NULL, 'Ejinaqi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210000', '辽宁省', NULL, NULL, 'Liaoningsheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210100', '沈阳市', NULL, NULL, 'Shenyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210101', '沈阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210102', '和平区', NULL, NULL, 'Hepingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210103', '沈河区', NULL, NULL, 'Shenhequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210104', '大东区', NULL, NULL, 'Dadongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210105', '皇姑区', NULL, NULL, 'Huangguqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210106', '铁西区', NULL, NULL, 'Tiexiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210111', '苏家屯区', NULL, NULL, 'Sujiatunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210112', '浑南区', NULL, NULL, 'Hunnanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210113', '沈北新区', NULL, NULL, 'Shenbeixinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210114', '于洪区', NULL, NULL, 'Yuhongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210115', '辽中区', NULL, NULL, 'Liaozhongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210123', '康平县', NULL, NULL, 'Kangpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210124', '法库县', NULL, NULL, 'Fakuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210181', '新民市', NULL, NULL, 'Xinminshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210200', '大连市', NULL, NULL, 'Dalianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210201', '大连市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210202', '中山区', NULL, NULL, 'Zhongshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210203', '西岗区', NULL, NULL, 'Xigangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210204', '沙河口区', NULL, NULL, 'Shahekouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210211', '甘井子区', NULL, NULL, 'Ganjingziqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210212', '旅顺口区', NULL, NULL, 'Lvshunkouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210213', '金州区', NULL, NULL, 'Jinzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210214', '普兰店区', NULL, NULL, 'Pulandianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210224', '长海县', NULL, NULL, 'Zhanghaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210281', '瓦房店市', NULL, NULL, 'Wafangdianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210283', '庄河市', NULL, NULL, 'Zhuangheshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210300', '鞍山市', NULL, NULL, 'Anshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210301', '鞍山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210302', '铁东区', NULL, NULL, 'Tiedongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210303', '铁西区', NULL, NULL, 'Tiexiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210304', '立山区', NULL, NULL, 'Lishanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210311', '千山区', NULL, NULL, 'Qianshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210321', '台安县', NULL, NULL, 'Taianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210323', '岫岩满族自治县', NULL, NULL, 'Xiuyanmanzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210381', '海城市', NULL, NULL, 'Haichengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210400', '抚顺市', NULL, NULL, 'Fushunshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210401', '抚顺市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210402', '新抚区', NULL, NULL, 'Xinfuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210403', '东洲区', NULL, NULL, 'Dongzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210404', '望花区', NULL, NULL, 'Wanghuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210411', '顺城区', NULL, NULL, 'Shunchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210421', '抚顺县', NULL, NULL, 'Fushunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210422', '新宾满族自治县', NULL, NULL, 'Xinbinmanzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210423', '清原满族自治县', NULL, NULL, 'Qingyuanmanzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210500', '本溪市', NULL, NULL, 'Benxishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210501', '本溪市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210502', '平山区', NULL, NULL, 'Pingshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210503', '溪湖区', NULL, NULL, 'Xihuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210504', '明山区', NULL, NULL, 'Mingshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210505', '南芬区', NULL, NULL, 'Nanfenqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210521', '本溪满族自治县', NULL, NULL, 'Benximanzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210522', '桓仁满族自治县', NULL, NULL, 'Huanrenmanzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210600', '丹东市', NULL, NULL, 'Dandongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210601', '丹东市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210602', '元宝区', NULL, NULL, 'Yuanbaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210603', '振兴区', NULL, NULL, 'Zhenxingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210604', '振安区', NULL, NULL, 'Zhenanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210624', '宽甸满族自治县', NULL, NULL, 'Kuandianmanzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210681', '东港市', NULL, NULL, 'Donggangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210682', '凤城市', NULL, NULL, 'Fengchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210700', '锦州市', NULL, NULL, 'Jinzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210701', '锦州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210702', '古塔区', NULL, NULL, 'Gutaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210703', '凌河区', NULL, NULL, 'Linghequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210711', '太和区', NULL, NULL, 'Taihequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210726', '黑山县', NULL, NULL, 'Heishanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210727', '义县', NULL, NULL, 'Yixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210781', '凌海市', NULL, NULL, 'Linghaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210782', '北镇市', NULL, NULL, 'Beizhenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210800', '营口市', NULL, NULL, 'Yingkoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210801', '营口市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210802', '站前区', NULL, NULL, 'Zhanqianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210803', '西市区', NULL, NULL, 'Xishiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210804', '鲅鱼圈区', NULL, NULL, 'Bayuquanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210811', '老边区', NULL, NULL, 'Laobianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210881', '盖州市', NULL, NULL, 'Gaizhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210882', '大石桥市', NULL, NULL, 'Dashiqiaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210900', '阜新市', NULL, NULL, 'Fuxinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210901', '阜新市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210902', '海州区', NULL, NULL, 'Haizhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210903', '新邱区', NULL, NULL, 'Xinqiuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210904', '太平区', NULL, NULL, 'Taipingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210905', '清河门区', NULL, NULL, 'Qinghemenqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210911', '细河区', NULL, NULL, 'Xihequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210921', '阜新蒙古族自治县', NULL, NULL, 'Fuxinmengguzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('210922', '彰武县', NULL, NULL, 'Zhangwuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211000', '辽阳市', NULL, NULL, 'Liaoyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211001', '辽阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211002', '白塔区', NULL, NULL, 'Baitaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211003', '文圣区', NULL, NULL, 'Wenshengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211004', '宏伟区', NULL, NULL, 'Hongweiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211005', '弓长岭区', NULL, NULL, 'Gongzhanglingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211011', '太子河区', NULL, NULL, 'Taizihequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211021', '辽阳县', NULL, NULL, 'Liaoyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211081', '灯塔市', NULL, NULL, 'Dengtashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211100', '盘锦市', NULL, NULL, 'Panjinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211101', '盘锦市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211102', '双台子区', NULL, NULL, 'Shuangtaiziqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211103', '兴隆台区', NULL, NULL, 'Xinglongtaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211104', '大洼区', NULL, NULL, 'Dawaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211122', '盘山县', NULL, NULL, 'Panshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211200', '铁岭市', NULL, NULL, 'Tielingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211201', '铁岭市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211202', '银州区', NULL, NULL, 'Yinzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211204', '清河区', NULL, NULL, 'Qinghequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211221', '铁岭县', NULL, NULL, 'Tielingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211223', '西丰县', NULL, NULL, 'Xifengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211224', '昌图县', NULL, NULL, 'Changtuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211281', '调兵山市', NULL, NULL, 'Diaobingshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211282', '开原市', NULL, NULL, 'Kaiyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211300', '朝阳市', NULL, NULL, 'Chaoyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211301', '朝阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211302', '双塔区', NULL, NULL, 'Shuangtaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211303', '龙城区', NULL, NULL, 'Longchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211321', '朝阳县', NULL, NULL, 'Chaoyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211322', '建平县', NULL, NULL, 'Jianpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211324', '喀喇沁左翼蒙古族自治县', NULL, NULL, 'Kalaqinzuoyimengguzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211381', '北票市', NULL, NULL, 'Beipiaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211382', '凌源市', NULL, NULL, 'Lingyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211400', '葫芦岛市', NULL, NULL, 'Huludaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211401', '葫芦岛市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211402', '连山区', NULL, NULL, 'Lianshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211403', '龙港区', NULL, NULL, 'Longgangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211404', '南票区', NULL, NULL, 'Nanpiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211421', '绥中县', NULL, NULL, 'Suizhongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211422', '建昌县', NULL, NULL, 'Jianchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('211481', '兴城市', NULL, NULL, 'Xingchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220000', '吉林省', NULL, NULL, 'Jilinsheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220100', '长春市', NULL, NULL, 'Zhangchunshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220101', '长春市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220102', '南关区', NULL, NULL, 'Nanguanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220103', '宽城区', NULL, NULL, 'Kuanchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220104', '朝阳区', NULL, NULL, 'Chaoyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220105', '二道区', NULL, NULL, 'Erdaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220106', '绿园区', NULL, NULL, 'Lvyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220112', '双阳区', NULL, NULL, 'Shuangyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220113', '九台区', NULL, NULL, 'Jiutaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220122', '农安县', NULL, NULL, 'Nonganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220182', '榆树市', NULL, NULL, 'Yushushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220183', '德惠市', NULL, NULL, 'Dehuishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220200', '吉林市', NULL, NULL, 'Jilinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220201', '吉林市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220202', '昌邑区', NULL, NULL, 'Changyiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220203', '龙潭区', NULL, NULL, 'Longtanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220204', '船营区', NULL, NULL, 'Chuanyingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220211', '丰满区', NULL, NULL, 'Fengmanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220221', '永吉县', NULL, NULL, 'Yongjixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220281', '蛟河市', NULL, NULL, 'Jiaoheshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220282', '桦甸市', NULL, NULL, 'Huadianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220283', '舒兰市', NULL, NULL, 'Shulanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220284', '磐石市', NULL, NULL, 'Panshishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220300', '四平市', NULL, NULL, 'Sipingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220301', '四平市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220302', '铁西区', NULL, NULL, 'Tiexiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220303', '铁东区', NULL, NULL, 'Tiedongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220322', '梨树县', NULL, NULL, 'Lishuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220323', '伊通满族自治县', NULL, NULL, 'Yitongmanzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220381', '公主岭市', NULL, NULL, 'Gongzhulingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220382', '双辽市', NULL, NULL, 'Shuangliaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220400', '辽源市', NULL, NULL, 'Liaoyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220401', '辽源市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220402', '龙山区', NULL, NULL, 'Longshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220403', '西安区', NULL, NULL, 'Xianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220421', '东丰县', NULL, NULL, 'Dongfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220422', '东辽县', NULL, NULL, 'Dongliaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220500', '通化市', NULL, NULL, 'Tonghuashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220501', '通化市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220502', '东昌区', NULL, NULL, 'Dongchangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220503', '二道江区', NULL, NULL, 'Erdaojiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220521', '通化县', NULL, NULL, 'Tonghuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220523', '辉南县', NULL, NULL, 'Huinanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220524', '柳河县', NULL, NULL, 'Liuhexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220581', '梅河口市', NULL, NULL, 'Meihekoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220582', '集安市', NULL, NULL, 'Jianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220600', '白山市', NULL, NULL, 'Baishanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220601', '白山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220602', '浑江区', NULL, NULL, 'Hunjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220605', '江源区', NULL, NULL, 'Jiangyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220621', '抚松县', NULL, NULL, 'Fusongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220622', '靖宇县', NULL, NULL, 'Jingyuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220623', '长白朝鲜族自治县', NULL, NULL, 'Zhangbaichaoxianzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220681', '临江市', NULL, NULL, 'Linjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220700', '松原市', NULL, NULL, 'Songyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220701', '松原市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220702', '宁江区', NULL, NULL, 'Ningjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220721', '前郭尔罗斯蒙古族自治县', NULL, NULL, 'Qianguoerluosimengguzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220722', '长岭县', NULL, NULL, 'Zhanglingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220723', '乾安县', NULL, NULL, 'Qiananxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220781', '扶余市', NULL, NULL, 'Fuyushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220800', '白城市', NULL, NULL, 'Baichengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220801', '白城市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220802', '洮北区', NULL, NULL, 'Taobeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220821', '镇赉县', NULL, NULL, 'Zhenlaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220822', '通榆县', NULL, NULL, 'Tongyuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220881', '洮南市', NULL, NULL, 'Taonanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('220882', '大安市', NULL, NULL, 'Daanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('222400', '延边朝鲜族自治州', NULL, NULL, 'Yanbianchaoxianzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('222401', '延吉市', NULL, NULL, 'Yanjishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('222402', '图们市', NULL, NULL, 'Tumenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('222403', '敦化市', NULL, NULL, 'Dunhuashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('222404', '珲春市', NULL, NULL, 'Hunchunshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('222405', '龙井市', NULL, NULL, 'Longjingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('222406', '和龙市', NULL, NULL, 'Helongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('222424', '汪清县', NULL, NULL, 'Wangqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('222426', '安图县', NULL, NULL, 'Antuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230000', '黑龙江省', NULL, NULL, 'Heilongjiangsheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230100', '哈尔滨市', NULL, NULL, 'Haerbinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230101', '哈尔滨市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230102', '道里区', NULL, NULL, 'Daoliqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230103', '南岗区', NULL, NULL, 'Nangangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230104', '道外区', NULL, NULL, 'Daowaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230108', '平房区', NULL, NULL, 'Pingfangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230109', '松北区', NULL, NULL, 'Songbeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230110', '香坊区', NULL, NULL, 'Xiangfangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230111', '呼兰区', NULL, NULL, 'Hulanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230112', '阿城区', NULL, NULL, 'Achengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230113', '双城区', NULL, NULL, 'Shuangchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230123', '依兰县', NULL, NULL, 'Yilanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230124', '方正县', NULL, NULL, 'Fangzhengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230125', '宾县', NULL, NULL, 'Binxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230126', '巴彦县', NULL, NULL, 'Bayanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230127', '木兰县', NULL, NULL, 'Mulanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230128', '通河县', NULL, NULL, 'Tonghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230129', '延寿县', NULL, NULL, 'Yanshouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230183', '尚志市', NULL, NULL, 'Shangzhishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230184', '五常市', NULL, NULL, 'Wuchangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230200', '齐齐哈尔市', NULL, NULL, 'Qiqihaershi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230201', '齐齐哈尔市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230202', '龙沙区', NULL, NULL, 'Longshaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230203', '建华区', NULL, NULL, 'Jianhuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230204', '铁锋区', NULL, NULL, 'Tiefengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230205', '昂昂溪区', NULL, NULL, 'Angangxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230206', '富拉尔基区', NULL, NULL, 'Fulaerjiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230207', '碾子山区', NULL, NULL, 'Nianzishanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230208', '梅里斯达斡尔族区', NULL, NULL, 'Meilisidawoerzuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230221', '龙江县', NULL, NULL, 'Longjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230223', '依安县', NULL, NULL, 'Yianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230224', '泰来县', NULL, NULL, 'Tailaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230225', '甘南县', NULL, NULL, 'Gannanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230227', '富裕县', NULL, NULL, 'Fuyuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230229', '克山县', NULL, NULL, 'Keshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230230', '克东县', NULL, NULL, 'Kedongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230231', '拜泉县', NULL, NULL, 'Baiquanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230281', '讷河市', NULL, NULL, 'Neheshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230300', '鸡西市', NULL, NULL, 'Jixishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230301', '鸡西市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230302', '鸡冠区', NULL, NULL, 'Jiguanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230303', '恒山区', NULL, NULL, 'Hengshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230304', '滴道区', NULL, NULL, 'Didaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230305', '梨树区', NULL, NULL, 'Lishuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230306', '城子河区', NULL, NULL, 'Chengzihequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230307', '麻山区', NULL, NULL, 'Mashanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230321', '鸡东县', NULL, NULL, 'Jidongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230381', '虎林市', NULL, NULL, 'Hulinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230382', '密山市', NULL, NULL, 'Mishanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230400', '鹤岗市', NULL, NULL, 'Hegangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230401', '鹤岗市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230402', '向阳区', NULL, NULL, 'Xiangyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230403', '工农区', NULL, NULL, 'Gongnongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230404', '南山区', NULL, NULL, 'Nanshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230405', '兴安区', NULL, NULL, 'Xinganqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230406', '东山区', NULL, NULL, 'Dongshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230407', '兴山区', NULL, NULL, 'Xingshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230421', '萝北县', NULL, NULL, 'Luobeixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230422', '绥滨县', NULL, NULL, 'Suibinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230500', '双鸭山市', NULL, NULL, 'Shuangyashanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230501', '双鸭山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230502', '尖山区', NULL, NULL, 'Jianshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230503', '岭东区', NULL, NULL, 'Lingdongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230505', '四方台区', NULL, NULL, 'Sifangtaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230506', '宝山区', NULL, NULL, 'Baoshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230521', '集贤县', NULL, NULL, 'Jixianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230522', '友谊县', NULL, NULL, 'Youyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230523', '宝清县', NULL, NULL, 'Baoqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230524', '饶河县', NULL, NULL, 'Raohexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230600', '大庆市', NULL, NULL, 'Daqingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230601', '大庆市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230602', '萨尔图区', NULL, NULL, 'Saertuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230603', '龙凤区', NULL, NULL, 'Longfengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230604', '让胡路区', NULL, NULL, 'Ranghuluqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230605', '红岗区', NULL, NULL, 'Honggangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230606', '大同区', NULL, NULL, 'Datongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230621', '肇州县', NULL, NULL, 'Zhaozhouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230622', '肇源县', NULL, NULL, 'Zhaoyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230623', '林甸县', NULL, NULL, 'Lindianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230624', '杜尔伯特蒙古族自治县', NULL, NULL, 'Duerbotemengguzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230700', '伊春市', NULL, NULL, 'Yichunshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230701', '伊春市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230702', '伊春区', NULL, NULL, 'Yichunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230703', '南岔区', NULL, NULL, 'Nanchaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230704', '友好区', NULL, NULL, 'Youhaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230705', '西林区', NULL, NULL, 'Xilinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230706', '翠峦区', NULL, NULL, 'Cuiluanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230707', '新青区', NULL, NULL, 'Xinqingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230708', '美溪区', NULL, NULL, 'Meixiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230709', '金山屯区', NULL, NULL, 'Jinshantunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230710', '五营区', NULL, NULL, 'Wuyingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230711', '乌马河区', NULL, NULL, 'Wumahequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230712', '汤旺河区', NULL, NULL, 'Tangwanghequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230713', '带岭区', NULL, NULL, 'Dailingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230714', '乌伊岭区', NULL, NULL, 'Wuyilingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230715', '红星区', NULL, NULL, 'Hongxingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230716', '上甘岭区', NULL, NULL, 'Shangganlingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230722', '嘉荫县', NULL, NULL, 'Jiayinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230781', '铁力市', NULL, NULL, 'Tielishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230800', '佳木斯市', NULL, NULL, 'Jiamusishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230801', '佳木斯市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230803', '向阳区', NULL, NULL, 'Xiangyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230804', '前进区', NULL, NULL, 'Qianjinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230805', '东风区', NULL, NULL, 'Dongfengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230811', '郊区', NULL, NULL, 'Jiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230822', '桦南县', NULL, NULL, 'Huananxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230826', '桦川县', NULL, NULL, 'Huachuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230828', '汤原县', NULL, NULL, 'Tangyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230881', '同江市', NULL, NULL, 'Tongjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230882', '富锦市', NULL, NULL, 'Fujinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230883', '抚远市', NULL, NULL, 'Fuyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230900', '七台河市', NULL, NULL, 'Qitaiheshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230901', '七台河市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230902', '新兴区', NULL, NULL, 'Xinxingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230903', '桃山区', NULL, NULL, 'Taoshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230904', '茄子河区', NULL, NULL, 'Qiezihequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('230921', '勃利县', NULL, NULL, 'Bolixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231000', '牡丹江市', NULL, NULL, 'Mudanjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231001', '牡丹江市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231002', '东安区', NULL, NULL, 'Donganqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231003', '阳明区', NULL, NULL, 'Yangmingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231004', '爱民区', NULL, NULL, 'Aiminqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231005', '西安区', NULL, NULL, 'Xianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231025', '林口县', NULL, NULL, 'Linkouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231081', '绥芬河市', NULL, NULL, 'Suifenheshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231083', '海林市', NULL, NULL, 'Hailinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231084', '宁安市', NULL, NULL, 'Ninganshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231085', '穆棱市', NULL, NULL, 'Mulengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231086', '东宁市', NULL, NULL, 'Dongningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231100', '黑河市', NULL, NULL, 'Heiheshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231101', '黑河市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231102', '爱辉区', NULL, NULL, 'Aihuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231121', '嫩江县', NULL, NULL, 'Nenjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231123', '逊克县', NULL, NULL, 'Xunkexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231124', '孙吴县', NULL, NULL, 'Sunwuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231181', '北安市', NULL, NULL, 'Beianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231182', '五大连池市', NULL, NULL, 'Wudalianchishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231200', '绥化市', NULL, NULL, 'Suihuashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231201', '绥化市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231202', '北林区', NULL, NULL, 'Beilinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231221', '望奎县', NULL, NULL, 'Wangkuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231222', '兰西县', NULL, NULL, 'Lanxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231223', '青冈县', NULL, NULL, 'Qinggangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231224', '庆安县', NULL, NULL, 'Qinganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231225', '明水县', NULL, NULL, 'Mingshuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231226', '绥棱县', NULL, NULL, 'Suilengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231281', '安达市', NULL, NULL, 'Andashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231282', '肇东市', NULL, NULL, 'Zhaodongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('231283', '海伦市', NULL, NULL, 'Hailunshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('232700', '大兴安岭地区', NULL, NULL, 'Daxinganlingdiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('232721', '呼玛县', NULL, NULL, 'Humaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('232722', '塔河县', NULL, NULL, 'Tahexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('232723', '漠河县', NULL, NULL, 'Mohexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310000', '上海市', NULL, NULL, 'Shanghaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310100', '上海市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310101', '黄浦区', NULL, NULL, 'Huangpuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310104', '徐汇区', NULL, NULL, 'Xuhuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310105', '长宁区', NULL, NULL, 'Zhangningqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310106', '静安区', NULL, NULL, 'Jinganqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310107', '普陀区', NULL, NULL, 'Putuoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310109', '虹口区', NULL, NULL, 'Hongkouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310110', '杨浦区', NULL, NULL, 'Yangpuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310112', '闵行区', NULL, NULL, 'Minxingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310113', '宝山区', NULL, NULL, 'Baoshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310114', '嘉定区', NULL, NULL, 'Jiadingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310115', '浦东新区', NULL, NULL, 'Pudongxinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310116', '金山区', NULL, NULL, 'Jinshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310117', '松江区', NULL, NULL, 'Songjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310118', '青浦区', NULL, NULL, 'Qingpuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310120', '奉贤区', NULL, NULL, 'Fengxianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('310151', '崇明区', NULL, NULL, 'Chongmingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320000', '江苏省', NULL, NULL, 'Jiangsusheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320100', '南京市', NULL, NULL, 'Nanjingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320101', '南京市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320102', '玄武区', NULL, NULL, 'Xuanwuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320104', '秦淮区', NULL, NULL, 'Qinhuaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320105', '建邺区', NULL, NULL, 'Jianyequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320106', '鼓楼区', NULL, NULL, 'Gulouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320111', '浦口区', NULL, NULL, 'Pukouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320113', '栖霞区', NULL, NULL, 'Qixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320114', '雨花台区', NULL, NULL, 'Yuhuataiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320115', '江宁区', NULL, NULL, 'Jiangningqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320116', '六合区', NULL, NULL, 'Liuhequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320117', '溧水区', NULL, NULL, 'Lishuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320118', '高淳区', NULL, NULL, 'Gaochunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320200', '无锡市', NULL, NULL, 'Wuxishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320201', '无锡市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320205', '锡山区', NULL, NULL, 'Xishanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320206', '惠山区', NULL, NULL, 'Huishanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320211', '滨湖区', NULL, NULL, 'Binhuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320213', '梁溪区', NULL, NULL, 'Liangxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320214', '新吴区', NULL, NULL, 'Xinwuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320281', '江阴市', NULL, NULL, 'Jiangyinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320282', '宜兴市', NULL, NULL, 'Yixingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320300', '徐州市', NULL, NULL, 'Xuzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320301', '徐州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320302', '鼓楼区', NULL, NULL, 'Gulouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320303', '云龙区', NULL, NULL, 'Yunlongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320305', '贾汪区', NULL, NULL, 'Jiawangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320311', '泉山区', NULL, NULL, 'Quanshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320312', '铜山区', NULL, NULL, 'Tongshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320321', '丰县', NULL, NULL, 'Fengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320322', '沛县', NULL, NULL, 'Peixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320324', '睢宁县', NULL, NULL, 'Suiningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320381', '新沂市', NULL, NULL, 'Xinyishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320382', '邳州市', NULL, NULL, 'Pizhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320400', '常州市', NULL, NULL, 'Changzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320401', '常州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320402', '天宁区', NULL, NULL, 'Tianningqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320404', '钟楼区', NULL, NULL, 'Zhonglouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320411', '新北区', NULL, NULL, 'Xinbeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320412', '武进区', NULL, NULL, 'Wujinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320413', '金坛区', NULL, NULL, 'Jintanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320481', '溧阳市', NULL, NULL, 'Liyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320500', '苏州市', NULL, NULL, 'Suzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320501', '苏州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320505', '虎丘区', NULL, NULL, 'Huqiuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320506', '吴中区', NULL, NULL, 'Wuzhongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320507', '相城区', NULL, NULL, 'Xiangchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320508', '姑苏区', NULL, NULL, 'Gusuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320509', '吴江区', NULL, NULL, 'Wujiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320581', '常熟市', NULL, NULL, 'Changshushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320582', '张家港市', NULL, NULL, 'Zhangjiagangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320583', '昆山市', NULL, NULL, 'Kunshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320585', '太仓市', NULL, NULL, 'Taicangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320600', '南通市', NULL, NULL, 'Nantongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320601', '南通市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320602', '崇川区', NULL, NULL, 'Chongchuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320611', '港闸区', NULL, NULL, 'Gangzhaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320612', '通州区', NULL, NULL, 'Tongzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320621', '海安县', NULL, NULL, 'Haianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320623', '如东县', NULL, NULL, 'Rudongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320681', '启东市', NULL, NULL, 'Qidongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320682', '如皋市', NULL, NULL, 'Rugaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320684', '海门市', NULL, NULL, 'Haimenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320700', '连云港市', NULL, NULL, 'Lianyungangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320701', '连云港市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320703', '连云区', NULL, NULL, 'Lianyunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320706', '海州区', NULL, NULL, 'Haizhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320707', '赣榆区', NULL, NULL, 'Ganyuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320722', '东海县', NULL, NULL, 'Donghaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320723', '灌云县', NULL, NULL, 'Guanyunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320724', '灌南县', NULL, NULL, 'Guannanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320800', '淮安市', NULL, NULL, 'Huaianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320801', '淮安市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320803', '淮安区', NULL, NULL, 'Huaianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320804', '淮阴区', NULL, NULL, 'Huaiyinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320812', '清江浦区', NULL, NULL, 'Qingjiangpuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320813', '洪泽区', NULL, NULL, 'Hongzequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320826', '涟水县', NULL, NULL, 'Lianshuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320830', '盱眙县', NULL, NULL, 'Xuyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320831', '金湖县', NULL, NULL, 'Jinhuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320900', '盐城市', NULL, NULL, 'Yanchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320901', '盐城市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320902', '亭湖区', NULL, NULL, 'Tinghuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320903', '盐都区', NULL, NULL, 'Yandouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320904', '大丰区', NULL, NULL, 'Dafengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320921', '响水县', NULL, NULL, 'Xiangshuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320922', '滨海县', NULL, NULL, 'Binhaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320923', '阜宁县', NULL, NULL, 'Funingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320924', '射阳县', NULL, NULL, 'Sheyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320925', '建湖县', NULL, NULL, 'Jianhuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('320981', '东台市', NULL, NULL, 'Dongtaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321000', '扬州市', NULL, NULL, 'Yangzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321001', '扬州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321002', '广陵区', NULL, NULL, 'Guanglingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321003', '邗江区', NULL, NULL, 'Hanjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321012', '江都区', NULL, NULL, 'Jiangdouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321023', '宝应县', NULL, NULL, 'Baoyingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321081', '仪征市', NULL, NULL, 'Yizhengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321084', '高邮市', NULL, NULL, 'Gaoyoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321100', '镇江市', NULL, NULL, 'Zhenjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321101', '镇江市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321102', '京口区', NULL, NULL, 'Jingkouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321111', '润州区', NULL, NULL, 'Runzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321112', '丹徒区', NULL, NULL, 'Dantuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321181', '丹阳市', NULL, NULL, 'Danyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321182', '扬中市', NULL, NULL, 'Yangzhongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321183', '句容市', NULL, NULL, 'Jurongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321200', '泰州市', NULL, NULL, 'Taizhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321201', '泰州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321202', '海陵区', NULL, NULL, 'Hailingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321203', '高港区', NULL, NULL, 'Gaogangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321204', '姜堰区', NULL, NULL, 'Jiangyanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321281', '兴化市', NULL, NULL, 'Xinghuashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321282', '靖江市', NULL, NULL, 'Jingjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321283', '泰兴市', NULL, NULL, 'Taixingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321300', '宿迁市', NULL, NULL, 'Suqianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321301', '宿迁市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321302', '宿城区', NULL, NULL, 'Suchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321311', '宿豫区', NULL, NULL, 'Suyuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321322', '沭阳县', NULL, NULL, 'Shuyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321323', '泗阳县', NULL, NULL, 'Siyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('321324', '泗洪县', NULL, NULL, 'Sihongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330000', '浙江省', NULL, NULL, 'Zhejiangsheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330100', '杭州市', NULL, NULL, 'Hangzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330101', '杭州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330102', '上城区', NULL, NULL, 'Shangchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330103', '下城区', NULL, NULL, 'Xiachengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330104', '江干区', NULL, NULL, 'Jiangganqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330105', '拱墅区', NULL, NULL, 'Gongshuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330106', '西湖区', NULL, NULL, 'Xihuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330108', '滨江区', NULL, NULL, 'Binjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330109', '萧山区', NULL, NULL, 'Xiaoshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330110', '余杭区', NULL, NULL, 'Yuhangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330111', '富阳区', NULL, NULL, 'Fuyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330122', '桐庐县', NULL, NULL, 'Tongluxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330127', '淳安县', NULL, NULL, 'Chunanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330182', '建德市', NULL, NULL, 'Jiandeshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330185', '临安市', NULL, NULL, 'Linanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330200', '宁波市', NULL, NULL, 'Ningboshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330201', '宁波市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330203', '海曙区', NULL, NULL, 'Haishuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330204', '江东区', NULL, NULL, 'Jiangdongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330205', '江北区', NULL, NULL, 'Jiangbeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330206', '北仑区', NULL, NULL, 'Beilunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330211', '镇海区', NULL, NULL, 'Zhenhaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330212', '鄞州区', NULL, NULL, 'Yinzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330225', '象山县', NULL, NULL, 'Xiangshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330226', '宁海县', NULL, NULL, 'Ninghaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330281', '余姚市', NULL, NULL, 'Yuyaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330282', '慈溪市', NULL, NULL, 'Cixishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330283', '奉化市', NULL, NULL, 'Fenghuashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330300', '温州市', NULL, NULL, 'Wenzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330301', '温州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330302', '鹿城区', NULL, NULL, 'Luchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330303', '龙湾区', NULL, NULL, 'Longwanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330304', '瓯海区', NULL, NULL, 'Ouhaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330305', '洞头区', NULL, NULL, 'Dongtouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330324', '永嘉县', NULL, NULL, 'Yongjiaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330326', '平阳县', NULL, NULL, 'Pingyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330327', '苍南县', NULL, NULL, 'Cangnanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330328', '文成县', NULL, NULL, 'Wenchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330329', '泰顺县', NULL, NULL, 'Taishunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330381', '瑞安市', NULL, NULL, 'Ruianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330382', '乐清市', NULL, NULL, 'Leqingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330400', '嘉兴市', NULL, NULL, 'Jiaxingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330401', '嘉兴市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330402', '南湖区', NULL, NULL, 'Nanhuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330411', '秀洲区', NULL, NULL, 'Xiuzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330421', '嘉善县', NULL, NULL, 'Jiashanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330424', '海盐县', NULL, NULL, 'Haiyanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330481', '海宁市', NULL, NULL, 'Hainingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330482', '平湖市', NULL, NULL, 'Pinghushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330483', '桐乡市', NULL, NULL, 'Tongxiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330500', '湖州市', NULL, NULL, 'Huzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330501', '湖州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330502', '吴兴区', NULL, NULL, 'Wuxingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330503', '南浔区', NULL, NULL, 'Nanxunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330521', '德清县', NULL, NULL, 'Deqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330522', '长兴县', NULL, NULL, 'Zhangxingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330523', '安吉县', NULL, NULL, 'Anjixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330600', '绍兴市', NULL, NULL, 'Shaoxingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330601', '绍兴市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330602', '越城区', NULL, NULL, 'Yuechengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330603', '柯桥区', NULL, NULL, 'Keqiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330604', '上虞区', NULL, NULL, 'Shangyuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330624', '新昌县', NULL, NULL, 'Xinchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330681', '诸暨市', NULL, NULL, 'Zhujishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330683', '嵊州市', NULL, NULL, 'Shengzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330700', '金华市', NULL, NULL, 'Jinhuashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330701', '金华市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330702', '婺城区', NULL, NULL, 'Wuchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330703', '金东区', NULL, NULL, 'Jindongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330723', '武义县', NULL, NULL, 'Wuyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330726', '浦江县', NULL, NULL, 'Pujiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330727', '磐安县', NULL, NULL, 'Pananxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330781', '兰溪市', NULL, NULL, 'Lanxishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330782', '义乌市', NULL, NULL, 'Yiwushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330783', '东阳市', NULL, NULL, 'Dongyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330784', '永康市', NULL, NULL, 'Yongkangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330800', '衢州市', NULL, NULL, 'Quzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330801', '衢州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330802', '柯城区', NULL, NULL, 'Kechengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330803', '衢江区', NULL, NULL, 'Qujiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330822', '常山县', NULL, NULL, 'Changshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330824', '开化县', NULL, NULL, 'Kaihuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330825', '龙游县', NULL, NULL, 'Longyouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330881', '江山市', NULL, NULL, 'Jiangshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330900', '舟山市', NULL, NULL, 'Zhoushanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330901', '舟山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330902', '定海区', NULL, NULL, 'Dinghaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330903', '普陀区', NULL, NULL, 'Putuoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330921', '岱山县', NULL, NULL, 'Daishanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('330922', '嵊泗县', NULL, NULL, 'Shengsixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331000', '台州市', NULL, NULL, 'Taizhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331001', '台州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331002', '椒江区', NULL, NULL, 'Jiaojiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331003', '黄岩区', NULL, NULL, 'Huangyanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331004', '路桥区', NULL, NULL, 'Luqiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331021', '玉环县', NULL, NULL, 'Yuhuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331022', '三门县', NULL, NULL, 'Sanmenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331023', '天台县', NULL, NULL, 'Tiantaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331024', '仙居县', NULL, NULL, 'Xianjuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331081', '温岭市', NULL, NULL, 'Wenlingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331082', '临海市', NULL, NULL, 'Linhaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331100', '丽水市', NULL, NULL, 'Lishuishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331101', '丽水市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331102', '莲都区', NULL, NULL, 'Liandouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331121', '青田县', NULL, NULL, 'Qingtianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331122', '缙云县', NULL, NULL, 'Jinyunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331123', '遂昌县', NULL, NULL, 'Suichangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331124', '松阳县', NULL, NULL, 'Songyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331125', '云和县', NULL, NULL, 'Yunhexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331126', '庆元县', NULL, NULL, 'Qingyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331127', '景宁畲族自治县', NULL, NULL, 'Jingningshezuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('331181', '龙泉市', NULL, NULL, 'Longquanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340000', '安徽省', NULL, NULL, 'Anhuisheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340100', '合肥市', NULL, NULL, 'Hefeishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340101', '合肥市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340102', '瑶海区', NULL, NULL, 'Yaohaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340103', '庐阳区', NULL, NULL, 'Luyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340104', '蜀山区', NULL, NULL, 'Shushanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340111', '包河区', NULL, NULL, 'Baohequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340121', '长丰县', NULL, NULL, 'Zhangfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340122', '肥东县', NULL, NULL, 'Feidongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340123', '肥西县', NULL, NULL, 'Feixixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340124', '庐江县', NULL, NULL, 'Lujiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340181', '巢湖市', NULL, NULL, 'Chaohushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340200', '芜湖市', NULL, NULL, 'Wuhushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340201', '芜湖市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340202', '镜湖区', NULL, NULL, 'Jinghuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340203', '弋江区', NULL, NULL, 'Yijiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340207', '鸠江区', NULL, NULL, 'Jiujiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340208', '三山区', NULL, NULL, 'Sanshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340221', '芜湖县', NULL, NULL, 'Wuhuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340222', '繁昌县', NULL, NULL, 'Fanchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340223', '南陵县', NULL, NULL, 'Nanlingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340225', '无为县', NULL, NULL, 'Wuweixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340300', '蚌埠市', NULL, NULL, 'Bangbushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340301', '蚌埠市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340302', '龙子湖区', NULL, NULL, 'Longzihuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340303', '蚌山区', NULL, NULL, 'Bangshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340304', '禹会区', NULL, NULL, 'Yuhuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340311', '淮上区', NULL, NULL, 'Huaishangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340321', '怀远县', NULL, NULL, 'Huaiyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340322', '五河县', NULL, NULL, 'Wuhexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340323', '固镇县', NULL, NULL, 'Guzhenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340400', '淮南市', NULL, NULL, 'Huainanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340401', '淮南市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340402', '大通区', NULL, NULL, 'Datongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340403', '田家庵区', NULL, NULL, 'Tianjiaanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340404', '谢家集区', NULL, NULL, 'Xiejiajiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340405', '八公山区', NULL, NULL, 'Bagongshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340406', '潘集区', NULL, NULL, 'Panjiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340421', '凤台县', NULL, NULL, 'Fengtaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340422', '寿县', NULL, NULL, 'Shouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340500', '马鞍山市', NULL, NULL, 'Maanshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340501', '马鞍山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340503', '花山区', NULL, NULL, 'Huashanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340504', '雨山区', NULL, NULL, 'Yushanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340506', '博望区', NULL, NULL, 'Bowangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340521', '当涂县', NULL, NULL, 'Dangtuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340522', '含山县', NULL, NULL, 'Hanshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340523', '和县', NULL, NULL, 'Hexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340600', '淮北市', NULL, NULL, 'Huaibeishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340601', '淮北市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340602', '杜集区', NULL, NULL, 'Dujiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340603', '相山区', NULL, NULL, 'Xiangshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340604', '烈山区', NULL, NULL, 'Lieshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340621', '濉溪县', NULL, NULL, 'Suixixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340700', '铜陵市', NULL, NULL, 'Tonglingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340701', '铜陵市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340705', '铜官区', NULL, NULL, 'Tongguanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340706', '义安区', NULL, NULL, 'Yianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340711', '郊区', NULL, NULL, 'Jiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340722', '枞阳县', NULL, NULL, 'Zongyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340800', '安庆市', NULL, NULL, 'Anqingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340801', '安庆市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340802', '迎江区', NULL, NULL, 'Yingjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340803', '大观区', NULL, NULL, 'Daguanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340811', '宜秀区', NULL, NULL, 'Yixiuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340822', '怀宁县', NULL, NULL, 'Huainingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340824', '潜山县', NULL, NULL, 'Qianshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340825', '太湖县', NULL, NULL, 'Taihuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340826', '宿松县', NULL, NULL, 'Susongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340827', '望江县', NULL, NULL, 'Wangjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340828', '岳西县', NULL, NULL, 'Yuexixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('340881', '桐城市', NULL, NULL, 'Tongchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341000', '黄山市', NULL, NULL, 'Huangshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341001', '黄山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341002', '屯溪区', NULL, NULL, 'Tunxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341003', '黄山区', NULL, NULL, 'Huangshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341004', '徽州区', NULL, NULL, 'Huizhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341021', '歙县', NULL, NULL, 'Shexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341022', '休宁县', NULL, NULL, 'Xiuningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341023', '黟县', NULL, NULL, 'Yixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341024', '祁门县', NULL, NULL, 'Qimenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341100', '滁州市', NULL, NULL, 'Chuzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341101', '滁州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341102', '琅琊区', NULL, NULL, 'Langyaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341103', '南谯区', NULL, NULL, 'Nanqiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341122', '来安县', NULL, NULL, 'Laianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341124', '全椒县', NULL, NULL, 'Quanjiaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341125', '定远县', NULL, NULL, 'Dingyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341126', '凤阳县', NULL, NULL, 'Fengyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341181', '天长市', NULL, NULL, 'Tianzhangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341182', '明光市', NULL, NULL, 'Mingguangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341200', '阜阳市', NULL, NULL, 'Fuyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341201', '阜阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341202', '颍州区', NULL, NULL, 'Yingzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341203', '颍东区', NULL, NULL, 'Yingdongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341204', '颍泉区', NULL, NULL, 'Yingquanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341221', '临泉县', NULL, NULL, 'Linquanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341222', '太和县', NULL, NULL, 'Taihexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341225', '阜南县', NULL, NULL, 'Funanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341226', '颍上县', NULL, NULL, 'Yingshangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341282', '界首市', NULL, NULL, 'Jieshoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341300', '宿州市', NULL, NULL, 'Suzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341301', '宿州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341302', '埇桥区', NULL, NULL, 'Yongqiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341321', '砀山县', NULL, NULL, 'Dangshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341322', '萧县', NULL, NULL, 'Xiaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341323', '灵璧县', NULL, NULL, 'Lingbixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341324', '泗县', NULL, NULL, 'Sixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341500', '六安市', NULL, NULL, 'Liuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341501', '六安市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341502', '金安区', NULL, NULL, 'Jinanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341503', '裕安区', NULL, NULL, 'Yuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341504', '叶集区', NULL, NULL, 'Yejiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341522', '霍邱县', NULL, NULL, 'Huoqiuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341523', '舒城县', NULL, NULL, 'Shuchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341524', '金寨县', NULL, NULL, 'Jinzhaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341525', '霍山县', NULL, NULL, 'Huoshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341600', '亳州市', NULL, NULL, 'Bozhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341601', '亳州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341602', '谯城区', NULL, NULL, 'Qiaochengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341621', '涡阳县', NULL, NULL, 'Woyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341622', '蒙城县', NULL, NULL, 'Mengchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341623', '利辛县', NULL, NULL, 'Lixinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341700', '池州市', NULL, NULL, 'Chizhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341701', '池州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341702', '贵池区', NULL, NULL, 'Guichiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341721', '东至县', NULL, NULL, 'Dongzhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341722', '石台县', NULL, NULL, 'Shitaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341723', '青阳县', NULL, NULL, 'Qingyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341800', '宣城市', NULL, NULL, 'Xuanchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341801', '宣城市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341802', '宣州区', NULL, NULL, 'Xuanzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341821', '郎溪县', NULL, NULL, 'Langxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341822', '广德县', NULL, NULL, 'Guangdexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341823', '泾县', NULL, NULL, 'Jingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341824', '绩溪县', NULL, NULL, 'Jixixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341825', '旌德县', NULL, NULL, 'Jingdexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('341881', '宁国市', NULL, NULL, 'Ningguoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350000', '福建省', NULL, NULL, 'Fujiansheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350100', '福州市', NULL, NULL, 'Fuzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350101', '福州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350102', '鼓楼区', NULL, NULL, 'Gulouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350103', '台江区', NULL, NULL, 'Taijiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350104', '仓山区', NULL, NULL, 'Cangshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350105', '马尾区', NULL, NULL, 'Maweiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350111', '晋安区', NULL, NULL, 'Jinanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350121', '闽侯县', NULL, NULL, 'Minhouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350122', '连江县', NULL, NULL, 'Lianjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350123', '罗源县', NULL, NULL, 'Luoyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350124', '闽清县', NULL, NULL, 'Minqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350125', '永泰县', NULL, NULL, 'Yongtaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350128', '平潭县', NULL, NULL, 'Pingtanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350181', '福清市', NULL, NULL, 'Fuqingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350182', '长乐市', NULL, NULL, 'Zhangleshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350200', '厦门市', NULL, NULL, 'Shamenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350201', '厦门市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350203', '思明区', NULL, NULL, 'Simingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350205', '海沧区', NULL, NULL, 'Haicangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350206', '湖里区', NULL, NULL, 'Huliqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350211', '集美区', NULL, NULL, 'Jimeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350212', '同安区', NULL, NULL, 'Tonganqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350213', '翔安区', NULL, NULL, 'Xianganqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350300', '莆田市', NULL, NULL, 'Putianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350301', '莆田市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350302', '城厢区', NULL, NULL, 'Chengxiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350303', '涵江区', NULL, NULL, 'Hanjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350304', '荔城区', NULL, NULL, 'Lichengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350305', '秀屿区', NULL, NULL, 'Xiuyuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350322', '仙游县', NULL, NULL, 'Xianyouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350400', '三明市', NULL, NULL, 'Sanmingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350401', '三明市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350402', '梅列区', NULL, NULL, 'Meiliequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350403', '三元区', NULL, NULL, 'Sanyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350421', '明溪县', NULL, NULL, 'Mingxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350423', '清流县', NULL, NULL, 'Qingliuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350424', '宁化县', NULL, NULL, 'Ninghuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350425', '大田县', NULL, NULL, 'Datianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350426', '尤溪县', NULL, NULL, 'Youxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350427', '沙县', NULL, NULL, 'Shaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350428', '将乐县', NULL, NULL, 'Jianglexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350429', '泰宁县', NULL, NULL, 'Tainingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350430', '建宁县', NULL, NULL, 'Jianningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350481', '永安市', NULL, NULL, 'Yonganshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350500', '泉州市', NULL, NULL, 'Quanzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350501', '泉州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350502', '鲤城区', NULL, NULL, 'Lichengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350503', '丰泽区', NULL, NULL, 'Fengzequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350504', '洛江区', NULL, NULL, 'Luojiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350505', '泉港区', NULL, NULL, 'Quangangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350521', '惠安县', NULL, NULL, 'Huianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350524', '安溪县', NULL, NULL, 'Anxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350525', '永春县', NULL, NULL, 'Yongchunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350526', '德化县', NULL, NULL, 'Dehuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350527', '金门县', NULL, NULL, 'Jinmenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350581', '石狮市', NULL, NULL, 'Shishishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350582', '晋江市', NULL, NULL, 'Jinjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350583', '南安市', NULL, NULL, 'Nananshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350600', '漳州市', NULL, NULL, 'Zhangzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350601', '漳州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350602', '芗城区', NULL, NULL, 'Xiangchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350603', '龙文区', NULL, NULL, 'Longwenqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350622', '云霄县', NULL, NULL, 'Yunxiaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350623', '漳浦县', NULL, NULL, 'Zhangpuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350624', '诏安县', NULL, NULL, 'Zhaoanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350625', '长泰县', NULL, NULL, 'Zhangtaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350626', '东山县', NULL, NULL, 'Dongshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350627', '南靖县', NULL, NULL, 'Nanjingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350628', '平和县', NULL, NULL, 'Pinghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350629', '华安县', NULL, NULL, 'Huaanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350681', '龙海市', NULL, NULL, 'Longhaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350700', '南平市', NULL, NULL, 'Nanpingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350701', '南平市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350702', '延平区', NULL, NULL, 'Yanpingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350703', '建阳区', NULL, NULL, 'Jianyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350721', '顺昌县', NULL, NULL, 'Shunchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350722', '浦城县', NULL, NULL, 'Puchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350723', '光泽县', NULL, NULL, 'Guangzexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350724', '松溪县', NULL, NULL, 'Songxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350725', '政和县', NULL, NULL, 'Zhenghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350781', '邵武市', NULL, NULL, 'Shaowushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350782', '武夷山市', NULL, NULL, 'Wuyishanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350783', '建瓯市', NULL, NULL, 'Jianoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350800', '龙岩市', NULL, NULL, 'Longyanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350801', '龙岩市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350802', '新罗区', NULL, NULL, 'Xinluoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350803', '永定区', NULL, NULL, 'Yongdingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350821', '长汀县', NULL, NULL, 'Zhangtingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350823', '上杭县', NULL, NULL, 'Shanghangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350824', '武平县', NULL, NULL, 'Wupingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350825', '连城县', NULL, NULL, 'Lianchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350881', '漳平市', NULL, NULL, 'Zhangpingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350900', '宁德市', NULL, NULL, 'Ningdeshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350901', '宁德市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350902', '蕉城区', NULL, NULL, 'Jiaochengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350921', '霞浦县', NULL, NULL, 'Xiapuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350922', '古田县', NULL, NULL, 'Gutianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350923', '屏南县', NULL, NULL, 'Pingnanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350924', '寿宁县', NULL, NULL, 'Shouningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350925', '周宁县', NULL, NULL, 'Zhouningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350926', '柘荣县', NULL, NULL, 'Zherongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350981', '福安市', NULL, NULL, 'Fuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('350982', '福鼎市', NULL, NULL, 'Fudingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360000', '江西省', NULL, NULL, 'Jiangxisheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360100', '南昌市', NULL, NULL, 'Nanchangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360101', '南昌市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360102', '东湖区', NULL, NULL, 'Donghuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360103', '西湖区', NULL, NULL, 'Xihuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360104', '青云谱区', NULL, NULL, 'Qingyunpuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360105', '湾里区', NULL, NULL, 'Wanliqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360111', '青山湖区', NULL, NULL, 'Qingshanhuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360112', '新建区', NULL, NULL, 'Xinjianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360121', '南昌县', NULL, NULL, 'Nanchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360123', '安义县', NULL, NULL, 'Anyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360124', '进贤县', NULL, NULL, 'Jinxianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360200', '景德镇市', NULL, NULL, 'Jingdezhenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360201', '景德镇市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360202', '昌江区', NULL, NULL, 'Changjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360203', '珠山区', NULL, NULL, 'Zhushanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360222', '浮梁县', NULL, NULL, 'Fuliangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360281', '乐平市', NULL, NULL, 'Lepingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360300', '萍乡市', NULL, NULL, 'Pingxiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360301', '萍乡市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360302', '安源区', NULL, NULL, 'Anyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360313', '湘东区', NULL, NULL, 'Xiangdongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360321', '莲花县', NULL, NULL, 'Lianhuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360322', '上栗县', NULL, NULL, 'Shanglixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360323', '芦溪县', NULL, NULL, 'Luxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360400', '九江市', NULL, NULL, 'Jiujiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360401', '九江市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360402', '濂溪区', NULL, NULL, 'Lianxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360403', '浔阳区', NULL, NULL, 'Xunyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360421', '九江县', NULL, NULL, 'Jiujiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360423', '武宁县', NULL, NULL, 'Wuningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360424', '修水县', NULL, NULL, 'Xiushuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360425', '永修县', NULL, NULL, 'Yongxiuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360426', '德安县', NULL, NULL, 'Deanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360428', '都昌县', NULL, NULL, 'Douchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360429', '湖口县', NULL, NULL, 'Hukouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360430', '彭泽县', NULL, NULL, 'Pengzexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360481', '瑞昌市', NULL, NULL, 'Ruichangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360482', '共青城市', NULL, NULL, 'Gongqingchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360483', '庐山市', NULL, NULL, 'Lushanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360500', '新余市', NULL, NULL, 'Xinyushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360501', '新余市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360502', '渝水区', NULL, NULL, 'Yushuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360521', '分宜县', NULL, NULL, 'Fenyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360600', '鹰潭市', NULL, NULL, 'Yingtanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360601', '鹰潭市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360602', '月湖区', NULL, NULL, 'Yuehuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360622', '余江县', NULL, NULL, 'Yujiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360681', '贵溪市', NULL, NULL, 'Guixishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360700', '赣州市', NULL, NULL, 'Ganzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360701', '赣州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360702', '章贡区', NULL, NULL, 'Zhanggongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360703', '南康区', NULL, NULL, 'Nankangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360721', '赣县', NULL, NULL, 'Ganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360722', '信丰县', NULL, NULL, 'Xinfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360723', '大余县', NULL, NULL, 'Dayuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360724', '上犹县', NULL, NULL, 'Shangyouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360725', '崇义县', NULL, NULL, 'Chongyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360726', '安远县', NULL, NULL, 'Anyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360727', '龙南县', NULL, NULL, 'Longnanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360728', '定南县', NULL, NULL, 'Dingnanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360729', '全南县', NULL, NULL, 'Quannanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360730', '宁都县', NULL, NULL, 'Ningdouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360731', '于都县', NULL, NULL, 'Yudouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360732', '兴国县', NULL, NULL, 'Xingguoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360733', '会昌县', NULL, NULL, 'Huichangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360734', '寻乌县', NULL, NULL, 'Xunwuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360735', '石城县', NULL, NULL, 'Shichengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360781', '瑞金市', NULL, NULL, 'Ruijinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360800', '吉安市', NULL, NULL, 'Jianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360801', '吉安市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360802', '吉州区', NULL, NULL, 'Jizhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360803', '青原区', NULL, NULL, 'Qingyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360821', '吉安县', NULL, NULL, 'Jianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360822', '吉水县', NULL, NULL, 'Jishuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360823', '峡江县', NULL, NULL, 'Xiajiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360824', '新干县', NULL, NULL, 'Xinganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360825', '永丰县', NULL, NULL, 'Yongfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360826', '泰和县', NULL, NULL, 'Taihexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360827', '遂川县', NULL, NULL, 'Suichuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360828', '万安县', NULL, NULL, 'Wananxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360829', '安福县', NULL, NULL, 'Anfuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360830', '永新县', NULL, NULL, 'Yongxinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360881', '井冈山市', NULL, NULL, 'Jinggangshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360900', '宜春市', NULL, NULL, 'Yichunshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360901', '宜春市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360902', '袁州区', NULL, NULL, 'Yuanzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360921', '奉新县', NULL, NULL, 'Fengxinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360922', '万载县', NULL, NULL, 'Wanzaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360923', '上高县', NULL, NULL, 'Shanggaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360924', '宜丰县', NULL, NULL, 'Yifengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360925', '靖安县', NULL, NULL, 'Jinganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360926', '铜鼓县', NULL, NULL, 'Tongguxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360981', '丰城市', NULL, NULL, 'Fengchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360982', '樟树市', NULL, NULL, 'Zhangshushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('360983', '高安市', NULL, NULL, 'Gaoanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361000', '抚州市', NULL, NULL, 'Fuzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361001', '抚州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361002', '临川区', NULL, NULL, 'Linchuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361021', '南城县', NULL, NULL, 'Nanchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361022', '黎川县', NULL, NULL, 'Lichuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361023', '南丰县', NULL, NULL, 'Nanfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361024', '崇仁县', NULL, NULL, 'Chongrenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361025', '乐安县', NULL, NULL, 'Leanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361026', '宜黄县', NULL, NULL, 'Yihuangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361027', '金溪县', NULL, NULL, 'Jinxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361028', '资溪县', NULL, NULL, 'Zixixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361029', '东乡县', NULL, NULL, 'Dongxiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361030', '广昌县', NULL, NULL, 'Guangchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361100', '上饶市', NULL, NULL, 'Shangraoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361101', '上饶市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361102', '信州区', NULL, NULL, 'Xinzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361103', '广丰区', NULL, NULL, 'Guangfengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361121', '上饶县', NULL, NULL, 'Shangraoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361123', '玉山县', NULL, NULL, 'Yushanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361124', '铅山县', NULL, NULL, 'Qianshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361125', '横峰县', NULL, NULL, 'Hengfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361126', '弋阳县', NULL, NULL, 'Yiyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361127', '余干县', NULL, NULL, 'Yuganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361128', '鄱阳县', NULL, NULL, 'Poyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361129', '万年县', NULL, NULL, 'Wannianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361130', '婺源县', NULL, NULL, 'Wuyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('361181', '德兴市', NULL, NULL, 'Dexingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370000', '山东省', NULL, NULL, 'Shandongsheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370100', '济南市', NULL, NULL, 'Jinanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370101', '济南市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370102', '历下区', NULL, NULL, 'Lixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370103', '市中区', NULL, NULL, 'Shizhongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370104', '槐荫区', NULL, NULL, 'Huaiyinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370105', '天桥区', NULL, NULL, 'Tianqiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370112', '历城区', NULL, NULL, 'Lichengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370113', '长清区', NULL, NULL, 'Zhangqingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370124', '平阴县', NULL, NULL, 'Pingyinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370125', '济阳县', NULL, NULL, 'Jiyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370126', '商河县', NULL, NULL, 'Shanghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370181', '章丘市', NULL, NULL, 'Zhangqiushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370200', '青岛市', NULL, NULL, 'Qingdaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370201', '青岛市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370202', '市南区', NULL, NULL, 'Shinanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370203', '市北区', NULL, NULL, 'Shibeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370211', '黄岛区', NULL, NULL, 'Huangdaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370212', '崂山区', NULL, NULL, 'Laoshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370213', '李沧区', NULL, NULL, 'Licangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370214', '城阳区', NULL, NULL, 'Chengyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370281', '胶州市', NULL, NULL, 'Jiaozhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370282', '即墨市', NULL, NULL, 'Jimoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370283', '平度市', NULL, NULL, 'Pingdushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370285', '莱西市', NULL, NULL, 'Laixishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370300', '淄博市', NULL, NULL, 'Ziboshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370301', '淄博市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370302', '淄川区', NULL, NULL, 'Zichuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370303', '张店区', NULL, NULL, 'Zhangdianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370304', '博山区', NULL, NULL, 'Boshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370305', '临淄区', NULL, NULL, 'Linziqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370306', '周村区', NULL, NULL, 'Zhoucunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370321', '桓台县', NULL, NULL, 'Huantaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370322', '高青县', NULL, NULL, 'Gaoqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370323', '沂源县', NULL, NULL, 'Yiyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370400', '枣庄市', NULL, NULL, 'Zaozhuangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370401', '枣庄市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370402', '市中区', NULL, NULL, 'Shizhongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370403', '薛城区', NULL, NULL, 'Xuechengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370404', '峄城区', NULL, NULL, 'Yichengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370405', '台儿庄区', NULL, NULL, 'Taierzhuangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370406', '山亭区', NULL, NULL, 'Shantingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370481', '滕州市', NULL, NULL, 'Tengzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370500', '东营市', NULL, NULL, 'Dongyingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370501', '东营市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370502', '东营区', NULL, NULL, 'Dongyingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370503', '河口区', NULL, NULL, 'Hekouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370505', '垦利区', NULL, NULL, 'Kenliqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370522', '利津县', NULL, NULL, 'Lijinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370523', '广饶县', NULL, NULL, 'Guangraoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370600', '烟台市', NULL, NULL, 'Yantaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370601', '烟台市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370602', '芝罘区', NULL, NULL, 'Zhifuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370611', '福山区', NULL, NULL, 'Fushanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370612', '牟平区', NULL, NULL, 'Moupingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370613', '莱山区', NULL, NULL, 'Laishanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370634', '长岛县', NULL, NULL, 'Zhangdaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370681', '龙口市', NULL, NULL, 'Longkoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370682', '莱阳市', NULL, NULL, 'Laiyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370683', '莱州市', NULL, NULL, 'Laizhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370684', '蓬莱市', NULL, NULL, 'Penglaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370685', '招远市', NULL, NULL, 'Zhaoyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370686', '栖霞市', NULL, NULL, 'Qixiashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370687', '海阳市', NULL, NULL, 'Haiyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370700', '潍坊市', NULL, NULL, 'Weifangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370701', '潍坊市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370702', '潍城区', NULL, NULL, 'Weichengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370703', '寒亭区', NULL, NULL, 'Hantingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370704', '坊子区', NULL, NULL, 'Fangziqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370705', '奎文区', NULL, NULL, 'Kuiwenqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370724', '临朐县', NULL, NULL, 'Linquxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370725', '昌乐县', NULL, NULL, 'Changlexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370781', '青州市', NULL, NULL, 'Qingzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370782', '诸城市', NULL, NULL, 'Zhuchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370783', '寿光市', NULL, NULL, 'Shouguangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370784', '安丘市', NULL, NULL, 'Anqiushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370785', '高密市', NULL, NULL, 'Gaomishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370786', '昌邑市', NULL, NULL, 'Changyishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370800', '济宁市', NULL, NULL, 'Jiningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370801', '济宁市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370811', '任城区', NULL, NULL, 'Renchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370812', '兖州区', NULL, NULL, 'Yanzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370826', '微山县', NULL, NULL, 'Weishanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370827', '鱼台县', NULL, NULL, 'Yutaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370828', '金乡县', NULL, NULL, 'Jinxiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370829', '嘉祥县', NULL, NULL, 'Jiaxiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370830', '汶上县', NULL, NULL, 'Wenshangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370831', '泗水县', NULL, NULL, 'Sishuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370832', '梁山县', NULL, NULL, 'Liangshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370881', '曲阜市', NULL, NULL, 'Qufushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370883', '邹城市', NULL, NULL, 'Zouchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370900', '泰安市', NULL, NULL, 'Taianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370901', '泰安市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370902', '泰山区', NULL, NULL, 'Taishanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370911', '岱岳区', NULL, NULL, 'Daiyuequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370921', '宁阳县', NULL, NULL, 'Ningyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370923', '东平县', NULL, NULL, 'Dongpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370982', '新泰市', NULL, NULL, 'Xintaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('370983', '肥城市', NULL, NULL, 'Feichengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371000', '威海市', NULL, NULL, 'Weihaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371001', '威海市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371002', '环翠区', NULL, NULL, 'Huancuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371003', '文登区', NULL, NULL, 'Wendengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371082', '荣成市', NULL, NULL, 'Rongchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371083', '乳山市', NULL, NULL, 'Rushanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371100', '日照市', NULL, NULL, 'Rizhaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371101', '日照市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371102', '东港区', NULL, NULL, 'Donggangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371103', '岚山区', NULL, NULL, 'Lanshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371121', '五莲县', NULL, NULL, 'Wulianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371122', '莒县', NULL, NULL, 'Juxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371200', '莱芜市', NULL, NULL, 'Laiwushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371201', '莱芜市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371202', '莱城区', NULL, NULL, 'Laichengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371203', '钢城区', NULL, NULL, 'Gangchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371300', '临沂市', NULL, NULL, 'Linyishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371301', '临沂市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371302', '兰山区', NULL, NULL, 'Lanshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371311', '罗庄区', NULL, NULL, 'Luozhuangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371312', '河东区', NULL, NULL, 'Hedongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371321', '沂南县', NULL, NULL, 'Yinanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371322', '郯城县', NULL, NULL, 'Tanchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371323', '沂水县', NULL, NULL, 'Yishuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371324', '兰陵县', NULL, NULL, 'Lanlingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371325', '费县', NULL, NULL, 'Feixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371326', '平邑县', NULL, NULL, 'Pingyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371327', '莒南县', NULL, NULL, 'Junanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371328', '蒙阴县', NULL, NULL, 'Mengyinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371329', '临沭县', NULL, NULL, 'Linshuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371400', '德州市', NULL, NULL, 'Dezhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371401', '德州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371402', '德城区', NULL, NULL, 'Dechengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371403', '陵城区', NULL, NULL, 'Lingchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371422', '宁津县', NULL, NULL, 'Ningjinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371423', '庆云县', NULL, NULL, 'Qingyunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371424', '临邑县', NULL, NULL, 'Linyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371425', '齐河县', NULL, NULL, 'Qihexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371426', '平原县', NULL, NULL, 'Pingyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371427', '夏津县', NULL, NULL, 'Xiajinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371428', '武城县', NULL, NULL, 'Wuchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371481', '乐陵市', NULL, NULL, 'Lelingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371482', '禹城市', NULL, NULL, 'Yuchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371500', '聊城市', NULL, NULL, 'Liaochengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371501', '聊城市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371502', '东昌府区', NULL, NULL, 'Dongchangfuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371521', '阳谷县', NULL, NULL, 'Yangguxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371522', '莘县', NULL, NULL, 'Xinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371523', '茌平县', NULL, NULL, 'Chipingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371524', '东阿县', NULL, NULL, 'Dongaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371525', '冠县', NULL, NULL, 'Guanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371526', '高唐县', NULL, NULL, 'Gaotangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371581', '临清市', NULL, NULL, 'Linqingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371600', '滨州市', NULL, NULL, 'Binzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371601', '滨州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371602', '滨城区', NULL, NULL, 'Binchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371603', '沾化区', NULL, NULL, 'Zhanhuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371621', '惠民县', NULL, NULL, 'Huiminxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371622', '阳信县', NULL, NULL, 'Yangxinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371623', '无棣县', NULL, NULL, 'Wudixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371625', '博兴县', NULL, NULL, 'Boxingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371626', '邹平县', NULL, NULL, 'Zoupingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371700', '菏泽市', NULL, NULL, 'Hezeshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371701', '菏泽市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371702', '牡丹区', NULL, NULL, 'Mudanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371703', '定陶区', NULL, NULL, 'Dingtaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371721', '曹县', NULL, NULL, 'Caoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371722', '单县', NULL, NULL, 'Danxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371723', '成武县', NULL, NULL, 'Chengwuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371724', '巨野县', NULL, NULL, 'Juyexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371725', '郓城县', NULL, NULL, 'Yunchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371726', '鄄城县', NULL, NULL, 'Juanchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('371728', '东明县', NULL, NULL, 'Dongmingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410000', '河南省', NULL, NULL, 'Henansheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410100', '郑州市', NULL, NULL, 'Zhengzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410101', '郑州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410102', '中原区', NULL, NULL, 'Zhongyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410103', '二七区', NULL, NULL, 'Erqiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410104', '管城回族区', NULL, NULL, 'Guanchenghuizuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410105', '金水区', NULL, NULL, 'Jinshuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410106', '上街区', NULL, NULL, 'Shangjiequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410108', '惠济区', NULL, NULL, 'Huijiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410122', '中牟县', NULL, NULL, 'Zhongmouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410181', '巩义市', NULL, NULL, 'Gongyishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410182', '荥阳市', NULL, NULL, 'Yingyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410183', '新密市', NULL, NULL, 'Xinmishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410184', '新郑市', NULL, NULL, 'Xinzhengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410185', '登封市', NULL, NULL, 'Dengfengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410200', '开封市', NULL, NULL, 'Kaifengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410201', '开封市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410202', '龙亭区', NULL, NULL, 'Longtingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410203', '顺河回族区', NULL, NULL, 'Shunhehuizuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410204', '鼓楼区', NULL, NULL, 'Gulouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410205', '禹王台区', NULL, NULL, 'Yuwangtaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410211', '金明区', NULL, NULL, 'Jinmingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410212', '祥符区', NULL, NULL, 'Xiangfuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410221', '杞县', NULL, NULL, 'Qixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410222', '通许县', NULL, NULL, 'Tongxuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410223', '尉氏县', NULL, NULL, 'Weishixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410225', '兰考县', NULL, NULL, 'Lankaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410300', '洛阳市', NULL, NULL, 'Luoyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410301', '洛阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410302', '老城区', NULL, NULL, 'Laochengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410303', '西工区', NULL, NULL, 'Xigongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410304', '瀍河回族区', NULL, NULL, 'Chanhehuizuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410305', '涧西区', NULL, NULL, 'Jianxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410306', '吉利区', NULL, NULL, 'Jiliqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410311', '洛龙区', NULL, NULL, 'Luolongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410322', '孟津县', NULL, NULL, 'Mengjinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410323', '新安县', NULL, NULL, 'Xinanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410324', '栾川县', NULL, NULL, 'Luanchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410325', '嵩县', NULL, NULL, 'Songxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410326', '汝阳县', NULL, NULL, 'Ruyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410327', '宜阳县', NULL, NULL, 'Yiyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410328', '洛宁县', NULL, NULL, 'Luoningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410329', '伊川县', NULL, NULL, 'Yichuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410381', '偃师市', NULL, NULL, 'Yanshishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410400', '平顶山市', NULL, NULL, 'Pingdingshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410401', '平顶山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410402', '新华区', NULL, NULL, 'Xinhuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410403', '卫东区', NULL, NULL, 'Weidongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410404', '石龙区', NULL, NULL, 'Shilongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410411', '湛河区', NULL, NULL, 'Zhanhequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410421', '宝丰县', NULL, NULL, 'Baofengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410422', '叶县', NULL, NULL, 'Yexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410423', '鲁山县', NULL, NULL, 'Lushanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410425', '郏县', NULL, NULL, 'Jiaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410481', '舞钢市', NULL, NULL, 'Wugangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410482', '汝州市', NULL, NULL, 'Ruzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410500', '安阳市', NULL, NULL, 'Anyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410501', '安阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410502', '文峰区', NULL, NULL, 'Wenfengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410503', '北关区', NULL, NULL, 'Beiguanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410505', '殷都区', NULL, NULL, 'Yindouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410506', '龙安区', NULL, NULL, 'Longanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410522', '安阳县', NULL, NULL, 'Anyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410523', '汤阴县', NULL, NULL, 'Tangyinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410526', '滑县', NULL, NULL, 'Huaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410527', '内黄县', NULL, NULL, 'Neihuangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410581', '林州市', NULL, NULL, 'Linzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410600', '鹤壁市', NULL, NULL, 'Hebishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410601', '鹤壁市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410602', '鹤山区', NULL, NULL, 'Heshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410603', '山城区', NULL, NULL, 'Shanchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410611', '淇滨区', NULL, NULL, 'Qibinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410621', '浚县', NULL, NULL, 'Junxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410622', '淇县', NULL, NULL, 'Qixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410700', '新乡市', NULL, NULL, 'Xinxiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410701', '新乡市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410702', '红旗区', NULL, NULL, 'Hongqiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410703', '卫滨区', NULL, NULL, 'Weibinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410704', '凤泉区', NULL, NULL, 'Fengquanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410711', '牧野区', NULL, NULL, 'Muyequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410721', '新乡县', NULL, NULL, 'Xinxiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410724', '获嘉县', NULL, NULL, 'Huojiaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410725', '原阳县', NULL, NULL, 'Yuanyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410726', '延津县', NULL, NULL, 'Yanjinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410727', '封丘县', NULL, NULL, 'Fengqiuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410728', '长垣县', NULL, NULL, 'Zhangyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410781', '卫辉市', NULL, NULL, 'Weihuishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410782', '辉县市', NULL, NULL, 'Huixianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410800', '焦作市', NULL, NULL, 'Jiaozuoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410801', '焦作市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410802', '解放区', NULL, NULL, 'Jiefangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410803', '中站区', NULL, NULL, 'Zhongzhanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410804', '马村区', NULL, NULL, 'Macunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410811', '山阳区', NULL, NULL, 'Shanyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410821', '修武县', NULL, NULL, 'Xiuwuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410822', '博爱县', NULL, NULL, 'Boaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410823', '武陟县', NULL, NULL, 'Wuzhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410825', '温县', NULL, NULL, 'Wenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410882', '沁阳市', NULL, NULL, 'Qinyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410883', '孟州市', NULL, NULL, 'Mengzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410900', '濮阳市', NULL, NULL, 'Puyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410901', '濮阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410902', '华龙区', NULL, NULL, 'Hualongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410922', '清丰县', NULL, NULL, 'Qingfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410923', '南乐县', NULL, NULL, 'Nanlexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410926', '范县', NULL, NULL, 'Fanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410927', '台前县', NULL, NULL, 'Taiqianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('410928', '濮阳县', NULL, NULL, 'Puyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411000', '许昌市', NULL, NULL, 'Xuchangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411001', '许昌市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411002', '魏都区', NULL, NULL, 'Weidouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411023', '许昌县', NULL, NULL, 'Xuchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411024', '鄢陵县', NULL, NULL, 'Yanlingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411025', '襄城县', NULL, NULL, 'Xiangchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411081', '禹州市', NULL, NULL, 'Yuzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411082', '长葛市', NULL, NULL, 'Zhanggeshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411100', '漯河市', NULL, NULL, 'Luoheshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411101', '漯河市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411102', '源汇区', NULL, NULL, 'Yuanhuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411103', '郾城区', NULL, NULL, 'Yanchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411104', '召陵区', NULL, NULL, 'Zhaolingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411121', '舞阳县', NULL, NULL, 'Wuyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411122', '临颍县', NULL, NULL, 'Linyingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411200', '三门峡市', NULL, NULL, 'Sanmenxiashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411201', '三门峡市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411202', '湖滨区', NULL, NULL, 'Hubinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411203', '陕州区', NULL, NULL, 'Shanzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411221', '渑池县', NULL, NULL, 'Mianchixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411224', '卢氏县', NULL, NULL, 'Lushixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411281', '义马市', NULL, NULL, 'Yimashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411282', '灵宝市', NULL, NULL, 'Lingbaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411300', '南阳市', NULL, NULL, 'Nanyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411301', '南阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411302', '宛城区', NULL, NULL, 'Wanchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411303', '卧龙区', NULL, NULL, 'Wolongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411321', '南召县', NULL, NULL, 'Nanzhaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411322', '方城县', NULL, NULL, 'Fangchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411323', '西峡县', NULL, NULL, 'Xixiaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411324', '镇平县', NULL, NULL, 'Zhenpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411325', '内乡县', NULL, NULL, 'Neixiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411326', '淅川县', NULL, NULL, 'Xichuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411327', '社旗县', NULL, NULL, 'Sheqixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411328', '唐河县', NULL, NULL, 'Tanghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411329', '新野县', NULL, NULL, 'Xinyexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411330', '桐柏县', NULL, NULL, 'Tongboxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411381', '邓州市', NULL, NULL, 'Dengzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411400', '商丘市', NULL, NULL, 'Shangqiushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411401', '商丘市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411402', '梁园区', NULL, NULL, 'Liangyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411403', '睢阳区', NULL, NULL, 'Suiyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411421', '民权县', NULL, NULL, 'Minquanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411422', '睢县', NULL, NULL, 'Suixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411423', '宁陵县', NULL, NULL, 'Ninglingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411424', '柘城县', NULL, NULL, 'Zhechengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411425', '虞城县', NULL, NULL, 'Yuchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411426', '夏邑县', NULL, NULL, 'Xiayixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411481', '永城市', NULL, NULL, 'Yongchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411500', '信阳市', NULL, NULL, 'Xinyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411501', '信阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411502', '浉河区', NULL, NULL, 'Shihequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411503', '平桥区', NULL, NULL, 'Pingqiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411521', '罗山县', NULL, NULL, 'Luoshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411522', '光山县', NULL, NULL, 'Guangshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411523', '新县', NULL, NULL, 'Xinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411524', '商城县', NULL, NULL, 'Shangchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411525', '固始县', NULL, NULL, 'Gushixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411526', '潢川县', NULL, NULL, 'Huangchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411527', '淮滨县', NULL, NULL, 'Huaibinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411528', '息县', NULL, NULL, 'Xixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411600', '周口市', NULL, NULL, 'Zhoukoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411601', '周口市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411602', '川汇区', NULL, NULL, 'Chuanhuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411621', '扶沟县', NULL, NULL, 'Fugouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411622', '西华县', NULL, NULL, 'Xihuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411623', '商水县', NULL, NULL, 'Shangshuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411624', '沈丘县', NULL, NULL, 'Shenqiuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411625', '郸城县', NULL, NULL, 'Danchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411626', '淮阳县', NULL, NULL, 'Huaiyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411627', '太康县', NULL, NULL, 'Taikangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411628', '鹿邑县', NULL, NULL, 'Luyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411681', '项城市', NULL, NULL, 'Xiangchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411700', '驻马店市', NULL, NULL, 'Zhumadianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411701', '驻马店市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411702', '驿城区', NULL, NULL, 'Yichengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411721', '西平县', NULL, NULL, 'Xipingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411722', '上蔡县', NULL, NULL, 'Shangcaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411723', '平舆县', NULL, NULL, 'Pingyuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411724', '正阳县', NULL, NULL, 'Zhengyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411725', '确山县', NULL, NULL, 'Queshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411726', '泌阳县', NULL, NULL, 'Miyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411727', '汝南县', NULL, NULL, 'Runanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411728', '遂平县', NULL, NULL, 'Suipingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('411729', '新蔡县', NULL, NULL, 'Xincaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('419000', '省直辖县级行政区划', NULL, NULL, 'Shengzhixiaxianjixingzhengquhua', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('419001', '济源市', NULL, NULL, 'Jiyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420000', '湖北省', NULL, NULL, 'Hubeisheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420100', '武汉市', NULL, NULL, 'Wuhanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420101', '武汉市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420102', '江岸区', NULL, NULL, 'Jianganqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420103', '江汉区', NULL, NULL, 'Jianghanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420104', '硚口区', NULL, NULL, 'Qiaokouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420105', '汉阳区', NULL, NULL, 'Hanyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420106', '武昌区', NULL, NULL, 'Wuchangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420107', '青山区', NULL, NULL, 'Qingshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420111', '洪山区', NULL, NULL, 'Hongshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420112', '东西湖区', NULL, NULL, 'Dongxihuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420113', '汉南区', NULL, NULL, 'Hannanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420114', '蔡甸区', NULL, NULL, 'Caidianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420115', '江夏区', NULL, NULL, 'Jiangxiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420116', '黄陂区', NULL, NULL, 'Huangpoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420117', '新洲区', NULL, NULL, 'Xinzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420200', '黄石市', NULL, NULL, 'Huangshishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420201', '黄石市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420202', '黄石港区', NULL, NULL, 'Huangshigangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420203', '西塞山区', NULL, NULL, 'Xisaishanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420204', '下陆区', NULL, NULL, 'Xialuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420205', '铁山区', NULL, NULL, 'Tieshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420222', '阳新县', NULL, NULL, 'Yangxinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420281', '大冶市', NULL, NULL, 'Dayeshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420300', '十堰市', NULL, NULL, 'Shiyanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420301', '十堰市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420302', '茅箭区', NULL, NULL, 'Maojianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420303', '张湾区', NULL, NULL, 'Zhangwanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420304', '郧阳区', NULL, NULL, 'Yunyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420322', '郧西县', NULL, NULL, 'Yunxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420323', '竹山县', NULL, NULL, 'Zhushanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420324', '竹溪县', NULL, NULL, 'Zhuxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420325', '房县', NULL, NULL, 'Fangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420381', '丹江口市', NULL, NULL, 'Danjiangkoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420500', '宜昌市', NULL, NULL, 'Yichangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420501', '宜昌市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420502', '西陵区', NULL, NULL, 'Xilingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420503', '伍家岗区', NULL, NULL, 'Wujiagangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420504', '点军区', NULL, NULL, 'Dianjunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420505', '猇亭区', NULL, NULL, 'Yaotingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420506', '夷陵区', NULL, NULL, 'Yilingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420525', '远安县', NULL, NULL, 'Yuananxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420526', '兴山县', NULL, NULL, 'Xingshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420527', '秭归县', NULL, NULL, 'Ziguixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420528', '长阳土家族自治县', NULL, NULL, 'Zhangyangtujiazuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420529', '五峰土家族自治县', NULL, NULL, 'Wufengtujiazuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420581', '宜都市', NULL, NULL, 'Yidoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420582', '当阳市', NULL, NULL, 'Dangyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420583', '枝江市', NULL, NULL, 'Zhijiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420600', '襄阳市', NULL, NULL, 'Xiangyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420601', '襄阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420602', '襄城区', NULL, NULL, 'Xiangchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420606', '樊城区', NULL, NULL, 'Fanchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420607', '襄州区', NULL, NULL, 'Xiangzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420624', '南漳县', NULL, NULL, 'Nanzhangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420625', '谷城县', NULL, NULL, 'Guchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420626', '保康县', NULL, NULL, 'Baokangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420682', '老河口市', NULL, NULL, 'Laohekoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420683', '枣阳市', NULL, NULL, 'Zaoyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420684', '宜城市', NULL, NULL, 'Yichengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420700', '鄂州市', NULL, NULL, 'Ezhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420701', '鄂州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420702', '梁子湖区', NULL, NULL, 'Liangzihuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420703', '华容区', NULL, NULL, 'Huarongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420704', '鄂城区', NULL, NULL, 'Echengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420800', '荆门市', NULL, NULL, 'Jingmenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420801', '荆门市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420802', '东宝区', NULL, NULL, 'Dongbaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420804', '掇刀区', NULL, NULL, 'Duodaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420821', '京山县', NULL, NULL, 'Jingshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420822', '沙洋县', NULL, NULL, 'Shayangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420881', '钟祥市', NULL, NULL, 'Zhongxiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420900', '孝感市', NULL, NULL, 'Xiaoganshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420901', '孝感市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420902', '孝南区', NULL, NULL, 'Xiaonanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420921', '孝昌县', NULL, NULL, 'Xiaochangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420922', '大悟县', NULL, NULL, 'Dawuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420923', '云梦县', NULL, NULL, 'Yunmengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420981', '应城市', NULL, NULL, 'Yingchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420982', '安陆市', NULL, NULL, 'Anlushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('420984', '汉川市', NULL, NULL, 'Hanchuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421000', '荆州市', NULL, NULL, 'Jingzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421001', '荆州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421002', '沙市区', NULL, NULL, 'Shashiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421003', '荆州区', NULL, NULL, 'Jingzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421022', '公安县', NULL, NULL, 'Gonganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421023', '监利县', NULL, NULL, 'Jianlixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421024', '江陵县', NULL, NULL, 'Jianglingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421081', '石首市', NULL, NULL, 'Shishoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421083', '洪湖市', NULL, NULL, 'Honghushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421087', '松滋市', NULL, NULL, 'Songzishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421100', '黄冈市', NULL, NULL, 'Huanggangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421101', '黄冈市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421102', '黄州区', NULL, NULL, 'Huangzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421121', '团风县', NULL, NULL, 'Tuanfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421122', '红安县', NULL, NULL, 'Honganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421123', '罗田县', NULL, NULL, 'Luotianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421124', '英山县', NULL, NULL, 'Yingshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421125', '浠水县', NULL, NULL, 'Xishuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421126', '蕲春县', NULL, NULL, 'Qichunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421127', '黄梅县', NULL, NULL, 'Huangmeixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421181', '麻城市', NULL, NULL, 'Machengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421182', '武穴市', NULL, NULL, 'Wuxueshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421200', '咸宁市', NULL, NULL, 'Xianningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421201', '咸宁市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421202', '咸安区', NULL, NULL, 'Xiananqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421221', '嘉鱼县', NULL, NULL, 'Jiayuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421222', '通城县', NULL, NULL, 'Tongchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421223', '崇阳县', NULL, NULL, 'Chongyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421224', '通山县', NULL, NULL, 'Tongshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421281', '赤壁市', NULL, NULL, 'Chibishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421300', '随州市', NULL, NULL, 'Suizhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421301', '随州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421303', '曾都区', NULL, NULL, 'Cengdouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421321', '随县', NULL, NULL, 'Suixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('421381', '广水市', NULL, NULL, 'Guangshuishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('422800', '恩施土家族苗族自治州', NULL, NULL, 'Enshitujiazumiaozuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('422801', '恩施市', NULL, NULL, 'Enshishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('422802', '利川市', NULL, NULL, 'Lichuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('422822', '建始县', NULL, NULL, 'Jianshixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('422823', '巴东县', NULL, NULL, 'Badongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('422825', '宣恩县', NULL, NULL, 'Xuanenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('422826', '咸丰县', NULL, NULL, 'Xianfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('422827', '来凤县', NULL, NULL, 'Laifengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('422828', '鹤峰县', NULL, NULL, 'Hefengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('429000', '省直辖县级行政区划', NULL, NULL, 'Shengzhixiaxianjixingzhengquhua', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('429004', '仙桃市', NULL, NULL, 'Xiantaoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('429005', '潜江市', NULL, NULL, 'Qianjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('429006', '天门市', NULL, NULL, 'Tianmenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('429021', '神农架林区', NULL, NULL, 'Shennongjialinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430000', '湖南省', NULL, NULL, 'Hunansheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430100', '长沙市', NULL, NULL, 'Zhangshashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430101', '长沙市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430102', '芙蓉区', NULL, NULL, 'Furongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430103', '天心区', NULL, NULL, 'Tianxinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430104', '岳麓区', NULL, NULL, 'Yueluqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430105', '开福区', NULL, NULL, 'Kaifuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430111', '雨花区', NULL, NULL, 'Yuhuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430112', '望城区', NULL, NULL, 'Wangchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430121', '长沙县', NULL, NULL, 'Zhangshaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430124', '宁乡县', NULL, NULL, 'Ningxiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430181', '浏阳市', NULL, NULL, 'Liuyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430200', '株洲市', NULL, NULL, 'Zhuzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430201', '株洲市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430202', '荷塘区', NULL, NULL, 'Hetangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430203', '芦淞区', NULL, NULL, 'Lusongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430204', '石峰区', NULL, NULL, 'Shifengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430211', '天元区', NULL, NULL, 'Tianyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430221', '株洲县', NULL, NULL, 'Zhuzhouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430223', '攸县', NULL, NULL, 'Youxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430224', '茶陵县', NULL, NULL, 'Chalingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430225', '炎陵县', NULL, NULL, 'Yanlingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430281', '醴陵市', NULL, NULL, 'Lilingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430300', '湘潭市', NULL, NULL, 'Xiangtanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430301', '湘潭市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430302', '雨湖区', NULL, NULL, 'Yuhuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430304', '岳塘区', NULL, NULL, 'Yuetangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430321', '湘潭县', NULL, NULL, 'Xiangtanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430381', '湘乡市', NULL, NULL, 'Xiangxiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430382', '韶山市', NULL, NULL, 'Shaoshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430400', '衡阳市', NULL, NULL, 'Hengyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430401', '衡阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430405', '珠晖区', NULL, NULL, 'Zhuhuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430406', '雁峰区', NULL, NULL, 'Yanfengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430407', '石鼓区', NULL, NULL, 'Shiguqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430408', '蒸湘区', NULL, NULL, 'Zhengxiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430412', '南岳区', NULL, NULL, 'Nanyuequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430421', '衡阳县', NULL, NULL, 'Hengyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430422', '衡南县', NULL, NULL, 'Hengnanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430423', '衡山县', NULL, NULL, 'Hengshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430424', '衡东县', NULL, NULL, 'Hengdongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430426', '祁东县', NULL, NULL, 'Qidongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430481', '耒阳市', NULL, NULL, 'Leiyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430482', '常宁市', NULL, NULL, 'Changningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430500', '邵阳市', NULL, NULL, 'Shaoyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430501', '邵阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430502', '双清区', NULL, NULL, 'Shuangqingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430503', '大祥区', NULL, NULL, 'Daxiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430511', '北塔区', NULL, NULL, 'Beitaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430521', '邵东县', NULL, NULL, 'Shaodongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430522', '新邵县', NULL, NULL, 'Xinshaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430523', '邵阳县', NULL, NULL, 'Shaoyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430524', '隆回县', NULL, NULL, 'Longhuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430525', '洞口县', NULL, NULL, 'Dongkouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430527', '绥宁县', NULL, NULL, 'Suiningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430528', '新宁县', NULL, NULL, 'Xinningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430529', '城步苗族自治县', NULL, NULL, 'Chengbumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430581', '武冈市', NULL, NULL, 'Wugangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430600', '岳阳市', NULL, NULL, 'Yueyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430601', '岳阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430602', '岳阳楼区', NULL, NULL, 'Yueyanglouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430603', '云溪区', NULL, NULL, 'Yunxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430611', '君山区', NULL, NULL, 'Junshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430621', '岳阳县', NULL, NULL, 'Yueyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430623', '华容县', NULL, NULL, 'Huarongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430624', '湘阴县', NULL, NULL, 'Xiangyinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430626', '平江县', NULL, NULL, 'Pingjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430681', '汨罗市', NULL, NULL, 'Miluoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430682', '临湘市', NULL, NULL, 'Linxiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430700', '常德市', NULL, NULL, 'Changdeshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430701', '常德市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430702', '武陵区', NULL, NULL, 'Wulingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430703', '鼎城区', NULL, NULL, 'Dingchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430721', '安乡县', NULL, NULL, 'Anxiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430722', '汉寿县', NULL, NULL, 'Hanshouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430723', '澧县', NULL, NULL, 'Lixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430724', '临澧县', NULL, NULL, 'Linlixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430725', '桃源县', NULL, NULL, 'Taoyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430726', '石门县', NULL, NULL, 'Shimenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430781', '津市市', NULL, NULL, 'Jinshishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430800', '张家界市', NULL, NULL, 'Zhangjiajieshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430801', '张家界市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430802', '永定区', NULL, NULL, 'Yongdingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430811', '武陵源区', NULL, NULL, 'Wulingyuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430821', '慈利县', NULL, NULL, 'Cilixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430822', '桑植县', NULL, NULL, 'Sangzhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430900', '益阳市', NULL, NULL, 'Yiyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430901', '益阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430902', '资阳区', NULL, NULL, 'Ziyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430903', '赫山区', NULL, NULL, 'Heshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430921', '南县', NULL, NULL, 'Nanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430922', '桃江县', NULL, NULL, 'Taojiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430923', '安化县', NULL, NULL, 'Anhuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('430981', '沅江市', NULL, NULL, 'Yuanjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431000', '郴州市', NULL, NULL, 'Chenzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431001', '郴州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431002', '北湖区', NULL, NULL, 'Beihuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431003', '苏仙区', NULL, NULL, 'Suxianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431021', '桂阳县', NULL, NULL, 'Guiyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431022', '宜章县', NULL, NULL, 'Yizhangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431023', '永兴县', NULL, NULL, 'Yongxingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431024', '嘉禾县', NULL, NULL, 'Jiahexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431025', '临武县', NULL, NULL, 'Linwuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431026', '汝城县', NULL, NULL, 'Ruchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431027', '桂东县', NULL, NULL, 'Guidongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431028', '安仁县', NULL, NULL, 'Anrenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431081', '资兴市', NULL, NULL, 'Zixingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431100', '永州市', NULL, NULL, 'Yongzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431101', '永州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431102', '零陵区', NULL, NULL, 'Linglingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431103', '冷水滩区', NULL, NULL, 'Lengshuitanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431121', '祁阳县', NULL, NULL, 'Qiyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431122', '东安县', NULL, NULL, 'Donganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431123', '双牌县', NULL, NULL, 'Shuangpaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431124', '道县', NULL, NULL, 'Daoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431125', '江永县', NULL, NULL, 'Jiangyongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431126', '宁远县', NULL, NULL, 'Ningyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431127', '蓝山县', NULL, NULL, 'Lanshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431128', '新田县', NULL, NULL, 'Xintianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431129', '江华瑶族自治县', NULL, NULL, 'Jianghuayaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431200', '怀化市', NULL, NULL, 'Huaihuashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431201', '怀化市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431202', '鹤城区', NULL, NULL, 'Hechengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431221', '中方县', NULL, NULL, 'Zhongfangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431222', '沅陵县', NULL, NULL, 'Yuanlingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431223', '辰溪县', NULL, NULL, 'Chenxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431224', '溆浦县', NULL, NULL, 'Xupuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431225', '会同县', NULL, NULL, 'Huitongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431226', '麻阳苗族自治县', NULL, NULL, 'Mayangmiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431227', '新晃侗族自治县', NULL, NULL, 'Xinhuangdongzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431228', '芷江侗族自治县', NULL, NULL, 'Zhijiangdongzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431229', '靖州苗族侗族自治县', NULL, NULL, 'Jingzhoumiaozudongzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431230', '通道侗族自治县', NULL, NULL, 'Tongdaodongzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431281', '洪江市', NULL, NULL, 'Hongjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431300', '娄底市', NULL, NULL, 'Loudishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431301', '娄底市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431302', '娄星区', NULL, NULL, 'Louxingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431321', '双峰县', NULL, NULL, 'Shuangfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431322', '新化县', NULL, NULL, 'Xinhuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431381', '冷水江市', NULL, NULL, 'Lengshuijiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('431382', '涟源市', NULL, NULL, 'Lianyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('433100', '湘西土家族苗族自治州', NULL, NULL, 'Xiangxitujiazumiaozuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('433101', '吉首市', NULL, NULL, 'Jishoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('433122', '泸溪县', NULL, NULL, 'Luxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('433123', '凤凰县', NULL, NULL, 'Fenghuangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('433124', '花垣县', NULL, NULL, 'Huayuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('433125', '保靖县', NULL, NULL, 'Baojingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('433126', '古丈县', NULL, NULL, 'Guzhangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('433127', '永顺县', NULL, NULL, 'Yongshunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('433130', '龙山县', NULL, NULL, 'Longshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440000', '广东省', NULL, NULL, 'Guangdongsheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440100', '广州市', NULL, NULL, 'Guangzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440101', '广州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440103', '荔湾区', NULL, NULL, 'Liwanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440104', '越秀区', NULL, NULL, 'Yuexiuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440105', '海珠区', NULL, NULL, 'Haizhuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440106', '天河区', NULL, NULL, 'Tianhequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440111', '白云区', NULL, NULL, 'Baiyunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440112', '黄埔区', NULL, NULL, 'Huangpuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440113', '番禺区', NULL, NULL, 'Fanyuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440114', '花都区', NULL, NULL, 'Huadouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440115', '南沙区', NULL, NULL, 'Nanshaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440117', '从化区', NULL, NULL, 'Conghuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440118', '增城区', NULL, NULL, 'Zengchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440200', '韶关市', NULL, NULL, 'Shaoguanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440201', '韶关市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440203', '武江区', NULL, NULL, 'Wujiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440204', '浈江区', NULL, NULL, 'Zhenjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440205', '曲江区', NULL, NULL, 'Qujiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440222', '始兴县', NULL, NULL, 'Shixingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440224', '仁化县', NULL, NULL, 'Renhuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440229', '翁源县', NULL, NULL, 'Wengyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440232', '乳源瑶族自治县', NULL, NULL, 'Ruyuanyaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440233', '新丰县', NULL, NULL, 'Xinfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440281', '乐昌市', NULL, NULL, 'Lechangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440282', '南雄市', NULL, NULL, 'Nanxiongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440300', '深圳市', NULL, NULL, 'Shenzhenshi', NULL, NULL, 1);
INSERT INTO `set_datacity` VALUES ('440301', '深圳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440303', '罗湖区', NULL, NULL, 'Luohuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440304', '福田区', NULL, NULL, 'Futianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440305', '南山区', NULL, NULL, 'Nanshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440306', '宝安区', NULL, NULL, 'Baoanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440307', '龙岗区', NULL, NULL, 'Longgangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440308', '盐田区', NULL, NULL, 'Yantianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440400', '珠海市', NULL, NULL, 'Zhuhaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440401', '珠海市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440402', '香洲区', NULL, NULL, 'Xiangzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440403', '斗门区', NULL, NULL, 'Doumenqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440404', '金湾区', NULL, NULL, 'Jinwanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440500', '汕头市', NULL, NULL, 'Shantoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440501', '汕头市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440507', '龙湖区', NULL, NULL, 'Longhuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440511', '金平区', NULL, NULL, 'Jinpingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440512', '濠江区', NULL, NULL, 'Haojiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440513', '潮阳区', NULL, NULL, 'Chaoyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440514', '潮南区', NULL, NULL, 'Chaonanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440515', '澄海区', NULL, NULL, 'Chenghaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440523', '南澳县', NULL, NULL, 'Nanaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440600', '佛山市', NULL, NULL, 'Foshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440601', '佛山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440604', '禅城区', NULL, NULL, 'Shanchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440605', '南海区', NULL, NULL, 'Nanhaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440606', '顺德区', NULL, NULL, 'Shundequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440607', '三水区', NULL, NULL, 'Sanshuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440608', '高明区', NULL, NULL, 'Gaomingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440700', '江门市', NULL, NULL, 'Jiangmenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440701', '江门市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440703', '蓬江区', NULL, NULL, 'Pengjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440704', '江海区', NULL, NULL, 'Jianghaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440705', '新会区', NULL, NULL, 'Xinhuiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440781', '台山市', NULL, NULL, 'Taishanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440783', '开平市', NULL, NULL, 'Kaipingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440784', '鹤山市', NULL, NULL, 'Heshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440785', '恩平市', NULL, NULL, 'Enpingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440800', '湛江市', NULL, NULL, 'Zhanjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440801', '湛江市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440802', '赤坎区', NULL, NULL, 'Chikanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440803', '霞山区', NULL, NULL, 'Xiashanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440804', '坡头区', NULL, NULL, 'Potouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440811', '麻章区', NULL, NULL, 'Mazhangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440823', '遂溪县', NULL, NULL, 'Suixixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440825', '徐闻县', NULL, NULL, 'Xuwenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440881', '廉江市', NULL, NULL, 'Lianjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440882', '雷州市', NULL, NULL, 'Leizhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440883', '吴川市', NULL, NULL, 'Wuchuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440900', '茂名市', NULL, NULL, 'Maomingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440901', '茂名市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440902', '茂南区', NULL, NULL, 'Maonanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440904', '电白区', NULL, NULL, 'Dianbaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440981', '高州市', NULL, NULL, 'Gaozhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440982', '化州市', NULL, NULL, 'Huazhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('440983', '信宜市', NULL, NULL, 'Xinyishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441200', '肇庆市', NULL, NULL, 'Zhaoqingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441201', '肇庆市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441202', '端州区', NULL, NULL, 'Duanzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441203', '鼎湖区', NULL, NULL, 'Dinghuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441204', '高要区', NULL, NULL, 'Gaoyaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441223', '广宁县', NULL, NULL, 'Guangningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441224', '怀集县', NULL, NULL, 'Huaijixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441225', '封开县', NULL, NULL, 'Fengkaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441226', '德庆县', NULL, NULL, 'Deqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441284', '四会市', NULL, NULL, 'Sihuishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441300', '惠州市', NULL, NULL, 'Huizhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441301', '惠州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441302', '惠城区', NULL, NULL, 'Huichengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441303', '惠阳区', NULL, NULL, 'Huiyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441322', '博罗县', NULL, NULL, 'Boluoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441323', '惠东县', NULL, NULL, 'Huidongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441324', '龙门县', NULL, NULL, 'Longmenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441400', '梅州市', NULL, NULL, 'Meizhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441401', '梅州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441402', '梅江区', NULL, NULL, 'Meijiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441403', '梅县区', NULL, NULL, 'Meixianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441422', '大埔县', NULL, NULL, 'Dapuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441423', '丰顺县', NULL, NULL, 'Fengshunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441424', '五华县', NULL, NULL, 'Wuhuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441426', '平远县', NULL, NULL, 'Pingyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441427', '蕉岭县', NULL, NULL, 'Jiaolingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441481', '兴宁市', NULL, NULL, 'Xingningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441500', '汕尾市', NULL, NULL, 'Shanweishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441501', '汕尾市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441502', '城区', NULL, NULL, 'Chengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441521', '海丰县', NULL, NULL, 'Haifengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441523', '陆河县', NULL, NULL, 'Luhexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441581', '陆丰市', NULL, NULL, 'Lufengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441600', '河源市', NULL, NULL, 'Heyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441601', '河源市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441602', '源城区', NULL, NULL, 'Yuanchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441621', '紫金县', NULL, NULL, 'Zijinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441622', '龙川县', NULL, NULL, 'Longchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441623', '连平县', NULL, NULL, 'Lianpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441624', '和平县', NULL, NULL, 'Hepingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441625', '东源县', NULL, NULL, 'Dongyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441700', '阳江市', NULL, NULL, 'Yangjiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441701', '阳江市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441702', '江城区', NULL, NULL, 'Jiangchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441704', '阳东区', NULL, NULL, 'Yangdongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441721', '阳西县', NULL, NULL, 'Yangxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441781', '阳春市', NULL, NULL, 'Yangchunshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441800', '清远市', NULL, NULL, 'Qingyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441801', '清远市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441802', '清城区', NULL, NULL, 'Qingchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441803', '清新区', NULL, NULL, 'Qingxinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441821', '佛冈县', NULL, NULL, 'Fogangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441823', '阳山县', NULL, NULL, 'Yangshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441825', '连山壮族瑶族自治县', NULL, NULL, 'Lianshanzhuangzuyaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441826', '连南瑶族自治县', NULL, NULL, 'Liannanyaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441881', '英德市', NULL, NULL, 'Yingdeshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441882', '连州市', NULL, NULL, 'Lianzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('441900', '东莞市', NULL, NULL, 'Dongguanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('442000', '中山市', NULL, NULL, 'Zhongshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445100', '潮州市', NULL, NULL, 'Chaozhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445101', '潮州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445102', '湘桥区', NULL, NULL, 'Xiangqiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445103', '潮安区', NULL, NULL, 'Chaoanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445122', '饶平县', NULL, NULL, 'Raopingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445200', '揭阳市', NULL, NULL, 'Jieyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445201', '揭阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445202', '榕城区', NULL, NULL, 'Rongchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445203', '揭东区', NULL, NULL, 'Jiedongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445222', '揭西县', NULL, NULL, 'Jiexixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445224', '惠来县', NULL, NULL, 'Huilaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445281', '普宁市', NULL, NULL, 'Puningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445300', '云浮市', NULL, NULL, 'Yunfushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445301', '云浮市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445302', '云城区', NULL, NULL, 'Yunchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445303', '云安区', NULL, NULL, 'Yunanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445321', '新兴县', NULL, NULL, 'Xinxingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445322', '郁南县', NULL, NULL, 'Yunanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('445381', '罗定市', NULL, NULL, 'Luodingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450000', '广西壮族自治区', NULL, NULL, 'Guangxizhuangzuzizhiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450100', '南宁市', NULL, NULL, 'Nanningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450101', '南宁市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450102', '兴宁区', NULL, NULL, 'Xingningqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450103', '青秀区', NULL, NULL, 'Qingxiuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450105', '江南区', NULL, NULL, 'Jiangnanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450107', '西乡塘区', NULL, NULL, 'Xixiangtangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450108', '良庆区', NULL, NULL, 'Liangqingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450109', '邕宁区', NULL, NULL, 'Yongningqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450110', '武鸣区', NULL, NULL, 'Wumingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450123', '隆安县', NULL, NULL, 'Longanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450124', '马山县', NULL, NULL, 'Mashanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450125', '上林县', NULL, NULL, 'Shanglinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450126', '宾阳县', NULL, NULL, 'Binyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450127', '横县', NULL, NULL, 'Hengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450200', '柳州市', NULL, NULL, 'Liuzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450201', '柳州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450202', '城中区', NULL, NULL, 'Chengzhongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450203', '鱼峰区', NULL, NULL, 'Yufengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450204', '柳南区', NULL, NULL, 'Liunanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450205', '柳北区', NULL, NULL, 'Liubeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450206', '柳江区', NULL, NULL, 'Liujiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450222', '柳城县', NULL, NULL, 'Liuchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450223', '鹿寨县', NULL, NULL, 'Luzhaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450224', '融安县', NULL, NULL, 'Ronganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450225', '融水苗族自治县', NULL, NULL, 'Rongshuimiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450226', '三江侗族自治县', NULL, NULL, 'Sanjiangdongzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450300', '桂林市', NULL, NULL, 'Guilinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450301', '桂林市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450302', '秀峰区', NULL, NULL, 'Xiufengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450303', '叠彩区', NULL, NULL, 'Diecaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450304', '象山区', NULL, NULL, 'Xiangshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450305', '七星区', NULL, NULL, 'Qixingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450311', '雁山区', NULL, NULL, 'Yanshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450312', '临桂区', NULL, NULL, 'Linguiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450321', '阳朔县', NULL, NULL, 'Yangshuoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450323', '灵川县', NULL, NULL, 'Lingchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450324', '全州县', NULL, NULL, 'Quanzhouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450325', '兴安县', NULL, NULL, 'Xinganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450326', '永福县', NULL, NULL, 'Yongfuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450327', '灌阳县', NULL, NULL, 'Guanyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450328', '龙胜各族自治县', NULL, NULL, 'Longshenggezuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450329', '资源县', NULL, NULL, 'Ziyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450330', '平乐县', NULL, NULL, 'Pinglexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450331', '荔浦县', NULL, NULL, 'Lipuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450332', '恭城瑶族自治县', NULL, NULL, 'Gongchengyaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450400', '梧州市', NULL, NULL, 'Wuzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450401', '梧州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450403', '万秀区', NULL, NULL, 'Wanxiuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450405', '长洲区', NULL, NULL, 'Zhangzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450406', '龙圩区', NULL, NULL, 'Longweiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450421', '苍梧县', NULL, NULL, 'Cangwuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450422', '藤县', NULL, NULL, 'Tengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450423', '蒙山县', NULL, NULL, 'Mengshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450481', '岑溪市', NULL, NULL, 'Cenxishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450500', '北海市', NULL, NULL, 'Beihaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450501', '北海市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450502', '海城区', NULL, NULL, 'Haichengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450503', '银海区', NULL, NULL, 'Yinhaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450512', '铁山港区', NULL, NULL, 'Tieshangangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450521', '合浦县', NULL, NULL, 'Hepuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450600', '防城港市', NULL, NULL, 'Fangchenggangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450601', '防城港市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450602', '港口区', NULL, NULL, 'Gangkouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450603', '防城区', NULL, NULL, 'Fangchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450621', '上思县', NULL, NULL, 'Shangsixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450681', '东兴市', NULL, NULL, 'Dongxingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450700', '钦州市', NULL, NULL, 'Qinzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450701', '钦州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450702', '钦南区', NULL, NULL, 'Qinnanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450703', '钦北区', NULL, NULL, 'Qinbeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450721', '灵山县', NULL, NULL, 'Lingshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450722', '浦北县', NULL, NULL, 'Pubeixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450800', '贵港市', NULL, NULL, 'Guigangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450801', '贵港市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450802', '港北区', NULL, NULL, 'Gangbeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450803', '港南区', NULL, NULL, 'Gangnanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450804', '覃塘区', NULL, NULL, 'Tantangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450821', '平南县', NULL, NULL, 'Pingnanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450881', '桂平市', NULL, NULL, 'Guipingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450900', '玉林市', NULL, NULL, 'Yulinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450901', '玉林市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450902', '玉州区', NULL, NULL, 'Yuzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450903', '福绵区', NULL, NULL, 'Fumianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450921', '容县', NULL, NULL, 'Rongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450922', '陆川县', NULL, NULL, 'Luchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450923', '博白县', NULL, NULL, 'Bobaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450924', '兴业县', NULL, NULL, 'Xingyexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('450981', '北流市', NULL, NULL, 'Beiliushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451000', '百色市', NULL, NULL, 'Baiseshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451001', '百色市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451002', '右江区', NULL, NULL, 'Youjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451021', '田阳县', NULL, NULL, 'Tianyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451022', '田东县', NULL, NULL, 'Tiandongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451023', '平果县', NULL, NULL, 'Pingguoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451024', '德保县', NULL, NULL, 'Debaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451026', '那坡县', NULL, NULL, 'Neipoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451027', '凌云县', NULL, NULL, 'Lingyunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451028', '乐业县', NULL, NULL, 'Leyexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451029', '田林县', NULL, NULL, 'Tianlinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451030', '西林县', NULL, NULL, 'Xilinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451031', '隆林各族自治县', NULL, NULL, 'Longlingezuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451081', '靖西市', NULL, NULL, 'Jingxishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451100', '贺州市', NULL, NULL, 'Hezhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451101', '贺州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451102', '八步区', NULL, NULL, 'Babuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451103', '平桂区', NULL, NULL, 'Pingguiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451121', '昭平县', NULL, NULL, 'Zhaopingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451122', '钟山县', NULL, NULL, 'Zhongshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451123', '富川瑶族自治县', NULL, NULL, 'Fuchuanyaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451200', '河池市', NULL, NULL, 'Hechishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451201', '河池市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451202', '金城江区', NULL, NULL, 'Jinchengjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451221', '南丹县', NULL, NULL, 'Nandanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451222', '天峨县', NULL, NULL, 'Tianexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451223', '凤山县', NULL, NULL, 'Fengshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451224', '东兰县', NULL, NULL, 'Donglanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451225', '罗城仫佬族自治县', NULL, NULL, 'Luochengmulaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451226', '环江毛南族自治县', NULL, NULL, 'Huanjiangmaonanzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451227', '巴马瑶族自治县', NULL, NULL, 'Bamayaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451228', '都安瑶族自治县', NULL, NULL, 'Douanyaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451229', '大化瑶族自治县', NULL, NULL, 'Dahuayaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451281', '宜州市', NULL, NULL, 'Yizhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451300', '来宾市', NULL, NULL, 'Laibinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451301', '来宾市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451302', '兴宾区', NULL, NULL, 'Xingbinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451321', '忻城县', NULL, NULL, 'Xinchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451322', '象州县', NULL, NULL, 'Xiangzhouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451323', '武宣县', NULL, NULL, 'Wuxuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451324', '金秀瑶族自治县', NULL, NULL, 'Jinxiuyaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451381', '合山市', NULL, NULL, 'Heshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451400', '崇左市', NULL, NULL, 'Chongzuoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451401', '崇左市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451402', '江州区', NULL, NULL, 'Jiangzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451421', '扶绥县', NULL, NULL, 'Fusuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451422', '宁明县', NULL, NULL, 'Ningmingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451423', '龙州县', NULL, NULL, 'Longzhouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451424', '大新县', NULL, NULL, 'Daxinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451425', '天等县', NULL, NULL, 'Tiandengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('451481', '凭祥市', NULL, NULL, 'Pingxiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460000', '海南省', NULL, NULL, 'Hainansheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460100', '海口市', NULL, NULL, 'Haikoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460101', '海口市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460105', '秀英区', NULL, NULL, 'Xiuyingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460106', '龙华区', NULL, NULL, 'Longhuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460107', '琼山区', NULL, NULL, 'Qiongshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460108', '美兰区', NULL, NULL, 'Meilanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460200', '三亚市', NULL, NULL, 'Sanyashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460201', '三亚市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460202', '海棠区', NULL, NULL, 'Haitangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460203', '吉阳区', NULL, NULL, 'Jiyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460204', '天涯区', NULL, NULL, 'Tianyaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460205', '崖州区', NULL, NULL, 'Yazhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460300', '三沙市', NULL, NULL, 'Sanshashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('460400', '儋州市', NULL, NULL, 'Danzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469000', '省直辖县级行政区划', NULL, NULL, 'Shengzhixiaxianjixingzhengquhua', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469001', '五指山市', NULL, NULL, 'Wuzhishanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469002', '琼海市', NULL, NULL, 'Qionghaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469005', '文昌市', NULL, NULL, 'Wenchangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469006', '万宁市', NULL, NULL, 'Wanningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469007', '东方市', NULL, NULL, 'Dongfangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469021', '定安县', NULL, NULL, 'Dinganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469022', '屯昌县', NULL, NULL, 'Tunchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469023', '澄迈县', NULL, NULL, 'Chengmaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469024', '临高县', NULL, NULL, 'Lingaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469025', '白沙黎族自治县', NULL, NULL, 'Baishalizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469026', '昌江黎族自治县', NULL, NULL, 'Changjianglizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469027', '乐东黎族自治县', NULL, NULL, 'Ledonglizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469028', '陵水黎族自治县', NULL, NULL, 'Lingshuilizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469029', '保亭黎族苗族自治县', NULL, NULL, 'Baotinglizumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('469030', '琼中黎族苗族自治县', NULL, NULL, 'Qiongzhonglizumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500000', '重庆市', NULL, NULL, 'Zhongqingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500100', '重庆市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500101', '万州区', NULL, NULL, 'Wanzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500102', '涪陵区', NULL, NULL, 'Fulingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500103', '渝中区', NULL, NULL, 'Yuzhongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500104', '大渡口区', NULL, NULL, 'Dadukouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500105', '江北区', NULL, NULL, 'Jiangbeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500106', '沙坪坝区', NULL, NULL, 'Shapingbaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500107', '九龙坡区', NULL, NULL, 'Jiulongpoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500108', '南岸区', NULL, NULL, 'Nananqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500109', '北碚区', NULL, NULL, 'Beibeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500110', '綦江区', NULL, NULL, 'Qijiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500111', '大足区', NULL, NULL, 'Dazuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500112', '渝北区', NULL, NULL, 'Yubeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500113', '巴南区', NULL, NULL, 'Bananqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500114', '黔江区', NULL, NULL, 'Qianjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500115', '长寿区', NULL, NULL, 'Zhangshouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500116', '江津区', NULL, NULL, 'Jiangjinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500117', '合川区', NULL, NULL, 'Hechuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500118', '永川区', NULL, NULL, 'Yongchuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500119', '南川区', NULL, NULL, 'Nanchuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500120', '璧山区', NULL, NULL, 'Bishanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500151', '铜梁区', NULL, NULL, 'Tongliangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500152', '潼南区', NULL, NULL, 'Tongnanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500153', '荣昌区', NULL, NULL, 'Rongchangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500154', '开州区', NULL, NULL, 'Kaizhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500200', '县', NULL, NULL, 'Xian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500228', '梁平县', NULL, NULL, 'Liangpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500229', '城口县', NULL, NULL, 'Chengkouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500230', '丰都县', NULL, NULL, 'Fengdouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500231', '垫江县', NULL, NULL, 'Dianjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500232', '武隆县', NULL, NULL, 'Wulongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500233', '忠县', NULL, NULL, 'Zhongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500235', '云阳县', NULL, NULL, 'Yunyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500236', '奉节县', NULL, NULL, 'Fengjiexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500237', '巫山县', NULL, NULL, 'Wushanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500238', '巫溪县', NULL, NULL, 'Wuxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500240', '石柱土家族自治县', NULL, NULL, 'Shizhutujiazuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500241', '秀山土家族苗族自治县', NULL, NULL, 'Xiushantujiazumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500242', '酉阳土家族苗族自治县', NULL, NULL, 'Youyangtujiazumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('500243', '彭水苗族土家族自治县', NULL, NULL, 'Pengshuimiaozutujiazuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510000', '四川省', NULL, NULL, 'Sichuansheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510100', '成都市', NULL, NULL, 'Chengdoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510101', '成都市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510104', '锦江区', NULL, NULL, 'Jinjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510105', '青羊区', NULL, NULL, 'Qingyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510106', '金牛区', NULL, NULL, 'Jinniuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510107', '武侯区', NULL, NULL, 'Wuhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510108', '成华区', NULL, NULL, 'Chenghuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510112', '龙泉驿区', NULL, NULL, 'Longquanyiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510113', '青白江区', NULL, NULL, 'Qingbaijiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510114', '新都区', NULL, NULL, 'Xindouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510115', '温江区', NULL, NULL, 'Wenjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510116', '双流区', NULL, NULL, 'Shuangliuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510121', '金堂县', NULL, NULL, 'Jintangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510124', '郫县', NULL, NULL, 'Pixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510129', '大邑县', NULL, NULL, 'Dayixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510131', '蒲江县', NULL, NULL, 'Pujiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510132', '新津县', NULL, NULL, 'Xinjinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510181', '都江堰市', NULL, NULL, 'Doujiangyanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510182', '彭州市', NULL, NULL, 'Pengzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510183', '邛崃市', NULL, NULL, 'Qionglaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510184', '崇州市', NULL, NULL, 'Chongzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510185', '简阳市', NULL, NULL, 'Jianyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510300', '自贡市', NULL, NULL, 'Zigongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510301', '自贡市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510302', '自流井区', NULL, NULL, 'Ziliujingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510303', '贡井区', NULL, NULL, 'Gongjingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510304', '大安区', NULL, NULL, 'Daanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510311', '沿滩区', NULL, NULL, 'Yantanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510321', '荣县', NULL, NULL, 'Rongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510322', '富顺县', NULL, NULL, 'Fushunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510400', '攀枝花市', NULL, NULL, 'Panzhihuashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510401', '攀枝花市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510402', '东区', NULL, NULL, 'Dongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510403', '西区', NULL, NULL, 'Xiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510411', '仁和区', NULL, NULL, 'Renhequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510421', '米易县', NULL, NULL, 'Miyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510422', '盐边县', NULL, NULL, 'Yanbianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510500', '泸州市', NULL, NULL, 'Luzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510501', '泸州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510502', '江阳区', NULL, NULL, 'Jiangyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510503', '纳溪区', NULL, NULL, 'Naxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510504', '龙马潭区', NULL, NULL, 'Longmatanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510521', '泸县', NULL, NULL, 'Luxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510522', '合江县', NULL, NULL, 'Hejiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510524', '叙永县', NULL, NULL, 'Xuyongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510525', '古蔺县', NULL, NULL, 'Gulinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510600', '德阳市', NULL, NULL, 'Deyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510601', '德阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510603', '旌阳区', NULL, NULL, 'Jingyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510623', '中江县', NULL, NULL, 'Zhongjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510626', '罗江县', NULL, NULL, 'Luojiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510681', '广汉市', NULL, NULL, 'Guanghanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510682', '什邡市', NULL, NULL, 'Shenfangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510683', '绵竹市', NULL, NULL, 'Mianzhushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510700', '绵阳市', NULL, NULL, 'Mianyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510701', '绵阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510703', '涪城区', NULL, NULL, 'Fuchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510704', '游仙区', NULL, NULL, 'Youxianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510705', '安州区', NULL, NULL, 'Anzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510722', '三台县', NULL, NULL, 'Santaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510723', '盐亭县', NULL, NULL, 'Yantingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510725', '梓潼县', NULL, NULL, 'Zitongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510726', '北川羌族自治县', NULL, NULL, 'Beichuanqiangzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510727', '平武县', NULL, NULL, 'Pingwuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510781', '江油市', NULL, NULL, 'Jiangyoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510800', '广元市', NULL, NULL, 'Guangyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510801', '广元市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510802', '利州区', NULL, NULL, 'Lizhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510811', '昭化区', NULL, NULL, 'Zhaohuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510812', '朝天区', NULL, NULL, 'Chaotianqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510821', '旺苍县', NULL, NULL, 'Wangcangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510822', '青川县', NULL, NULL, 'Qingchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510823', '剑阁县', NULL, NULL, 'Jiangexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510824', '苍溪县', NULL, NULL, 'Cangxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510900', '遂宁市', NULL, NULL, 'Suiningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510901', '遂宁市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510903', '船山区', NULL, NULL, 'Chuanshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510904', '安居区', NULL, NULL, 'Anjuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510921', '蓬溪县', NULL, NULL, 'Pengxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510922', '射洪县', NULL, NULL, 'Shehongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('510923', '大英县', NULL, NULL, 'Dayingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511000', '内江市', NULL, NULL, 'Neijiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511001', '内江市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511002', '市中区', NULL, NULL, 'Shizhongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511011', '东兴区', NULL, NULL, 'Dongxingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511024', '威远县', NULL, NULL, 'Weiyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511025', '资中县', NULL, NULL, 'Zizhongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511028', '隆昌县', NULL, NULL, 'Longchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511100', '乐山市', NULL, NULL, 'Leshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511101', '乐山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511102', '市中区', NULL, NULL, 'Shizhongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511111', '沙湾区', NULL, NULL, 'Shawanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511112', '五通桥区', NULL, NULL, 'Wutongqiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511113', '金口河区', NULL, NULL, 'Jinkouhequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511123', '犍为县', NULL, NULL, 'Jianweixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511124', '井研县', NULL, NULL, 'Jingyanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511126', '夹江县', NULL, NULL, 'Jiajiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511129', '沐川县', NULL, NULL, 'Muchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511132', '峨边彝族自治县', NULL, NULL, 'Ebianyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511133', '马边彝族自治县', NULL, NULL, 'Mabianyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511181', '峨眉山市', NULL, NULL, 'Emeishanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511300', '南充市', NULL, NULL, 'Nanchongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511301', '南充市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511302', '顺庆区', NULL, NULL, 'Shunqingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511303', '高坪区', NULL, NULL, 'Gaopingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511304', '嘉陵区', NULL, NULL, 'Jialingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511321', '南部县', NULL, NULL, 'Nanbuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511322', '营山县', NULL, NULL, 'Yingshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511323', '蓬安县', NULL, NULL, 'Penganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511324', '仪陇县', NULL, NULL, 'Yilongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511325', '西充县', NULL, NULL, 'Xichongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511381', '阆中市', NULL, NULL, 'Langzhongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511400', '眉山市', NULL, NULL, 'Meishanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511401', '眉山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511402', '东坡区', NULL, NULL, 'Dongpoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511403', '彭山区', NULL, NULL, 'Pengshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511421', '仁寿县', NULL, NULL, 'Renshouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511423', '洪雅县', NULL, NULL, 'Hongyaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511424', '丹棱县', NULL, NULL, 'Danlengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511425', '青神县', NULL, NULL, 'Qingshenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511500', '宜宾市', NULL, NULL, 'Yibinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511501', '宜宾市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511502', '翠屏区', NULL, NULL, 'Cuipingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511503', '南溪区', NULL, NULL, 'Nanxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511521', '宜宾县', NULL, NULL, 'Yibinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511523', '江安县', NULL, NULL, 'Jianganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511524', '长宁县', NULL, NULL, 'Zhangningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511525', '高县', NULL, NULL, 'Gaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511526', '珙县', NULL, NULL, 'Gongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511527', '筠连县', NULL, NULL, 'Yunlianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511528', '兴文县', NULL, NULL, 'Xingwenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511529', '屏山县', NULL, NULL, 'Pingshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511600', '广安市', NULL, NULL, 'Guanganshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511601', '广安市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511602', '广安区', NULL, NULL, 'Guanganqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511603', '前锋区', NULL, NULL, 'Qianfengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511621', '岳池县', NULL, NULL, 'Yuechixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511622', '武胜县', NULL, NULL, 'Wushengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511623', '邻水县', NULL, NULL, 'Linshuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511681', '华蓥市', NULL, NULL, 'Huayingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511700', '达州市', NULL, NULL, 'Dazhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511701', '达州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511702', '通川区', NULL, NULL, 'Tongchuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511703', '达川区', NULL, NULL, 'Dachuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511722', '宣汉县', NULL, NULL, 'Xuanhanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511723', '开江县', NULL, NULL, 'Kaijiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511724', '大竹县', NULL, NULL, 'Dazhuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511725', '渠县', NULL, NULL, 'Quxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511781', '万源市', NULL, NULL, 'Wanyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511800', '雅安市', NULL, NULL, 'Yaanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511801', '雅安市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511802', '雨城区', NULL, NULL, 'Yuchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511803', '名山区', NULL, NULL, 'Mingshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511822', '荥经县', NULL, NULL, 'Yingjingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511823', '汉源县', NULL, NULL, 'Hanyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511824', '石棉县', NULL, NULL, 'Shimianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511825', '天全县', NULL, NULL, 'Tianquanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511826', '芦山县', NULL, NULL, 'Lushanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511827', '宝兴县', NULL, NULL, 'Baoxingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511900', '巴中市', NULL, NULL, 'Bazhongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511901', '巴中市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511902', '巴州区', NULL, NULL, 'Bazhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511903', '恩阳区', NULL, NULL, 'Enyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511921', '通江县', NULL, NULL, 'Tongjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511922', '南江县', NULL, NULL, 'Nanjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('511923', '平昌县', NULL, NULL, 'Pingchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('512000', '资阳市', NULL, NULL, 'Ziyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('512001', '资阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('512002', '雁江区', NULL, NULL, 'Yanjiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('512021', '安岳县', NULL, NULL, 'Anyuexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('512022', '乐至县', NULL, NULL, 'Lezhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513200', '阿坝藏族羌族自治州', NULL, NULL, 'Abazangzuqiangzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513201', '马尔康市', NULL, NULL, 'Maerkangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513221', '汶川县', NULL, NULL, 'Wenchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513222', '理县', NULL, NULL, 'Lixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513223', '茂县', NULL, NULL, 'Maoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513224', '松潘县', NULL, NULL, 'Songpanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513225', '九寨沟县', NULL, NULL, 'Jiuzhaigouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513226', '金川县', NULL, NULL, 'Jinchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513227', '小金县', NULL, NULL, 'Xiaojinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513228', '黑水县', NULL, NULL, 'Heishuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513230', '壤塘县', NULL, NULL, 'Rangtangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513231', '阿坝县', NULL, NULL, 'Abaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513232', '若尔盖县', NULL, NULL, 'Ruoergaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513233', '红原县', NULL, NULL, 'Hongyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513300', '甘孜藏族自治州', NULL, NULL, 'Ganzizangzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513301', '康定市', NULL, NULL, 'Kangdingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513322', '泸定县', NULL, NULL, 'Ludingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513323', '丹巴县', NULL, NULL, 'Danbaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513324', '九龙县', NULL, NULL, 'Jiulongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513325', '雅江县', NULL, NULL, 'Yajiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513326', '道孚县', NULL, NULL, 'Daofuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513327', '炉霍县', NULL, NULL, 'Luhuoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513328', '甘孜县', NULL, NULL, 'Ganzixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513329', '新龙县', NULL, NULL, 'Xinlongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513330', '德格县', NULL, NULL, 'Degexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513331', '白玉县', NULL, NULL, 'Baiyuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513332', '石渠县', NULL, NULL, 'Shiquxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513333', '色达县', NULL, NULL, 'Sedaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513334', '理塘县', NULL, NULL, 'Litangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513335', '巴塘县', NULL, NULL, 'Batangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513336', '乡城县', NULL, NULL, 'Xiangchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513337', '稻城县', NULL, NULL, 'Daochengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513338', '得荣县', NULL, NULL, 'Derongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513400', '凉山彝族自治州', NULL, NULL, 'Liangshanyizuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513401', '西昌市', NULL, NULL, 'Xichangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513422', '木里藏族自治县', NULL, NULL, 'Mulizangzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513423', '盐源县', NULL, NULL, 'Yanyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513424', '德昌县', NULL, NULL, 'Dechangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513425', '会理县', NULL, NULL, 'Huilixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513426', '会东县', NULL, NULL, 'Huidongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513427', '宁南县', NULL, NULL, 'Ningnanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513428', '普格县', NULL, NULL, 'Pugexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513429', '布拖县', NULL, NULL, 'Butuoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513430', '金阳县', NULL, NULL, 'Jinyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513431', '昭觉县', NULL, NULL, 'Zhaojuexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513432', '喜德县', NULL, NULL, 'Xidexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513433', '冕宁县', NULL, NULL, 'Mianningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513434', '越西县', NULL, NULL, 'Yuexixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513435', '甘洛县', NULL, NULL, 'Ganluoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513436', '美姑县', NULL, NULL, 'Meiguxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('513437', '雷波县', NULL, NULL, 'Leiboxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520000', '贵州省', NULL, NULL, 'Guizhousheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520100', '贵阳市', NULL, NULL, 'Guiyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520101', '贵阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520102', '南明区', NULL, NULL, 'Nanmingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520103', '云岩区', NULL, NULL, 'Yunyanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520111', '花溪区', NULL, NULL, 'Huaxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520112', '乌当区', NULL, NULL, 'Wudangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520113', '白云区', NULL, NULL, 'Baiyunqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520115', '观山湖区', NULL, NULL, 'Guanshanhuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520121', '开阳县', NULL, NULL, 'Kaiyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520122', '息烽县', NULL, NULL, 'Xifengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520123', '修文县', NULL, NULL, 'Xiuwenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520181', '清镇市', NULL, NULL, 'Qingzhenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520200', '六盘水市', NULL, NULL, 'Liupanshuishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520201', '钟山区', NULL, NULL, 'Zhongshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520203', '六枝特区', NULL, NULL, 'Liuzhitequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520221', '水城县', NULL, NULL, 'Shuichengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520222', '盘县', NULL, NULL, 'Panxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520300', '遵义市', NULL, NULL, 'Zunyishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520301', '遵义市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520302', '红花岗区', NULL, NULL, 'Honghuagangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520303', '汇川区', NULL, NULL, 'Huichuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520304', '播州区', NULL, NULL, 'Bozhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520322', '桐梓县', NULL, NULL, 'Tongzixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520323', '绥阳县', NULL, NULL, 'Suiyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520324', '正安县', NULL, NULL, 'Zhenganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520325', '道真仡佬族苗族自治县', NULL, NULL, 'Daozhengelaozumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520326', '务川仡佬族苗族自治县', NULL, NULL, 'Wuchuangelaozumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520327', '凤冈县', NULL, NULL, 'Fenggangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520328', '湄潭县', NULL, NULL, 'Meitanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520329', '余庆县', NULL, NULL, 'Yuqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520330', '习水县', NULL, NULL, 'Xishuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520381', '赤水市', NULL, NULL, 'Chishuishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520382', '仁怀市', NULL, NULL, 'Renhuaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520400', '安顺市', NULL, NULL, 'Anshunshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520401', '安顺市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520402', '西秀区', NULL, NULL, 'Xixiuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520403', '平坝区', NULL, NULL, 'Pingbaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520422', '普定县', NULL, NULL, 'Pudingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520423', '镇宁布依族苗族自治县', NULL, NULL, 'Zhenningbuyizumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520424', '关岭布依族苗族自治县', NULL, NULL, 'Guanlingbuyizumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520425', '紫云苗族布依族自治县', NULL, NULL, 'Ziyunmiaozubuyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520500', '毕节市', NULL, NULL, 'Bijieshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520501', '毕节市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520502', '七星关区', NULL, NULL, 'Qixingguanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520521', '大方县', NULL, NULL, 'Dafangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520522', '黔西县', NULL, NULL, 'Qianxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520523', '金沙县', NULL, NULL, 'Jinshaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520524', '织金县', NULL, NULL, 'Zhijinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520525', '纳雍县', NULL, NULL, 'Nayongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520526', '威宁彝族回族苗族自治县', NULL, NULL, 'Weiningyizuhuizumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520527', '赫章县', NULL, NULL, 'Hezhangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520600', '铜仁市', NULL, NULL, 'Tongrenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520601', '铜仁市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520602', '碧江区', NULL, NULL, 'Bijiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520603', '万山区', NULL, NULL, 'Wanshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520621', '江口县', NULL, NULL, 'Jiangkouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520622', '玉屏侗族自治县', NULL, NULL, 'Yupingdongzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520623', '石阡县', NULL, NULL, 'Shiqianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520624', '思南县', NULL, NULL, 'Sinanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520625', '印江土家族苗族自治县', NULL, NULL, 'Yinjiangtujiazumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520626', '德江县', NULL, NULL, 'Dejiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520627', '沿河土家族自治县', NULL, NULL, 'Yanhetujiazuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('520628', '松桃苗族自治县', NULL, NULL, 'Songtaomiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522300', '黔西南布依族苗族自治州', NULL, NULL, 'Qianxinanbuyizumiaozuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522301', '兴义市', NULL, NULL, 'Xingyishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522322', '兴仁县', NULL, NULL, 'Xingrenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522323', '普安县', NULL, NULL, 'Puanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522324', '晴隆县', NULL, NULL, 'Qinglongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522325', '贞丰县', NULL, NULL, 'Zhenfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522326', '望谟县', NULL, NULL, 'Wangmoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522327', '册亨县', NULL, NULL, 'Cehengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522328', '安龙县', NULL, NULL, 'Anlongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522600', '黔东南苗族侗族自治州', NULL, NULL, 'Qiandongnanmiaozudongzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522601', '凯里市', NULL, NULL, 'Kailishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522622', '黄平县', NULL, NULL, 'Huangpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522623', '施秉县', NULL, NULL, 'Shibingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522624', '三穗县', NULL, NULL, 'Sansuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522625', '镇远县', NULL, NULL, 'Zhenyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522626', '岑巩县', NULL, NULL, 'Cengongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522627', '天柱县', NULL, NULL, 'Tianzhuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522628', '锦屏县', NULL, NULL, 'Jinpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522629', '剑河县', NULL, NULL, 'Jianhexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522630', '台江县', NULL, NULL, 'Taijiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522631', '黎平县', NULL, NULL, 'Lipingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522632', '榕江县', NULL, NULL, 'Rongjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522633', '从江县', NULL, NULL, 'Congjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522634', '雷山县', NULL, NULL, 'Leishanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522635', '麻江县', NULL, NULL, 'Majiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522636', '丹寨县', NULL, NULL, 'Danzhaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522700', '黔南布依族苗族自治州', NULL, NULL, 'Qiannanbuyizumiaozuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522701', '都匀市', NULL, NULL, 'Douyunshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522702', '福泉市', NULL, NULL, 'Fuquanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522722', '荔波县', NULL, NULL, 'Liboxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522723', '贵定县', NULL, NULL, 'Guidingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522725', '瓮安县', NULL, NULL, 'Wenganxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522726', '独山县', NULL, NULL, 'Dushanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522727', '平塘县', NULL, NULL, 'Pingtangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522728', '罗甸县', NULL, NULL, 'Luodianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522729', '长顺县', NULL, NULL, 'Zhangshunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522730', '龙里县', NULL, NULL, 'Longlixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522731', '惠水县', NULL, NULL, 'Huishuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('522732', '三都水族自治县', NULL, NULL, 'Sandoushuizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530000', '云南省', NULL, NULL, 'Yunnansheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530100', '昆明市', NULL, NULL, 'Kunmingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530101', '昆明市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530102', '五华区', NULL, NULL, 'Wuhuaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530103', '盘龙区', NULL, NULL, 'Panlongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530111', '官渡区', NULL, NULL, 'Guanduqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530112', '西山区', NULL, NULL, 'Xishanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530113', '东川区', NULL, NULL, 'Dongchuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530114', '呈贡区', NULL, NULL, 'Chenggongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530122', '晋宁县', NULL, NULL, 'Jinningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530124', '富民县', NULL, NULL, 'Fuminxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530125', '宜良县', NULL, NULL, 'Yiliangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530126', '石林彝族自治县', NULL, NULL, 'Shilinyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530127', '嵩明县', NULL, NULL, 'Songmingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530128', '禄劝彝族苗族自治县', NULL, NULL, 'Luquanyizumiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530129', '寻甸回族彝族自治县', NULL, NULL, 'Xundianhuizuyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530181', '安宁市', NULL, NULL, 'Anningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530300', '曲靖市', NULL, NULL, 'Qujingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530301', '曲靖市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530302', '麒麟区', NULL, NULL, 'Qilinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530303', '沾益区', NULL, NULL, 'Zhanyiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530321', '马龙县', NULL, NULL, 'Malongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530322', '陆良县', NULL, NULL, 'Luliangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530323', '师宗县', NULL, NULL, 'Shizongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530324', '罗平县', NULL, NULL, 'Luopingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530325', '富源县', NULL, NULL, 'Fuyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530326', '会泽县', NULL, NULL, 'Huizexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530381', '宣威市', NULL, NULL, 'Xuanweishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530400', '玉溪市', NULL, NULL, 'Yuxishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530401', '玉溪市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530402', '红塔区', NULL, NULL, 'Hongtaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530403', '江川区', NULL, NULL, 'Jiangchuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530422', '澄江县', NULL, NULL, 'Chengjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530423', '通海县', NULL, NULL, 'Tonghaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530424', '华宁县', NULL, NULL, 'Huaningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530425', '易门县', NULL, NULL, 'Yimenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530426', '峨山彝族自治县', NULL, NULL, 'Eshanyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530427', '新平彝族傣族自治县', NULL, NULL, 'Xinpingyizudaizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530428', '元江哈尼族彝族傣族自治县', NULL, NULL, 'Yuanjianghanizuyizudaizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530500', '保山市', NULL, NULL, 'Baoshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530501', '保山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530502', '隆阳区', NULL, NULL, 'Longyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530521', '施甸县', NULL, NULL, 'Shidianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530523', '龙陵县', NULL, NULL, 'Longlingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530524', '昌宁县', NULL, NULL, 'Changningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530581', '腾冲市', NULL, NULL, 'Tengchongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530600', '昭通市', NULL, NULL, 'Zhaotongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530601', '昭通市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530602', '昭阳区', NULL, NULL, 'Zhaoyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530621', '鲁甸县', NULL, NULL, 'Ludianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530622', '巧家县', NULL, NULL, 'Qiaojiaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530623', '盐津县', NULL, NULL, 'Yanjinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530624', '大关县', NULL, NULL, 'Daguanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530625', '永善县', NULL, NULL, 'Yongshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530626', '绥江县', NULL, NULL, 'Suijiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530627', '镇雄县', NULL, NULL, 'Zhenxiongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530628', '彝良县', NULL, NULL, 'Yiliangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530629', '威信县', NULL, NULL, 'Weixinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530630', '水富县', NULL, NULL, 'Shuifuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530700', '丽江市', NULL, NULL, 'Lijiangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530701', '丽江市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530702', '古城区', NULL, NULL, 'Guchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530721', '玉龙纳西族自治县', NULL, NULL, 'Yulongnaxizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530722', '永胜县', NULL, NULL, 'Yongshengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530723', '华坪县', NULL, NULL, 'Huapingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530724', '宁蒗彝族自治县', NULL, NULL, 'Ninglangyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530800', '普洱市', NULL, NULL, 'Puershi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530801', '普洱市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530802', '思茅区', NULL, NULL, 'Simaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530821', '宁洱哈尼族彝族自治县', NULL, NULL, 'Ningerhanizuyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530822', '墨江哈尼族自治县', NULL, NULL, 'Mojianghanizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530823', '景东彝族自治县', NULL, NULL, 'Jingdongyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530824', '景谷傣族彝族自治县', NULL, NULL, 'Jinggudaizuyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', NULL, NULL, 'Zhenyuanyizuhanizulahuzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530826', '江城哈尼族彝族自治县', NULL, NULL, 'Jiangchenghanizuyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530827', '孟连傣族拉祜族佤族自治县', NULL, NULL, 'Mengliandaizulahuzuwazuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530828', '澜沧拉祜族自治县', NULL, NULL, 'Lancanglahuzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530829', '西盟佤族自治县', NULL, NULL, 'Ximengwazuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530900', '临沧市', NULL, NULL, 'Lincangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530901', '临沧市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530902', '临翔区', NULL, NULL, 'Linxiangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530921', '凤庆县', NULL, NULL, 'Fengqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530922', '云县', NULL, NULL, 'Yunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530923', '永德县', NULL, NULL, 'Yongdexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530924', '镇康县', NULL, NULL, 'Zhenkangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', NULL, NULL, 'Shuangjianglahuzuwazubulangzudaizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530926', '耿马傣族佤族自治县', NULL, NULL, 'Gengmadaizuwazuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('530927', '沧源佤族自治县', NULL, NULL, 'Cangyuanwazuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532300', '楚雄彝族自治州', NULL, NULL, 'Chuxiongyizuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532301', '楚雄市', NULL, NULL, 'Chuxiongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532322', '双柏县', NULL, NULL, 'Shuangboxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532323', '牟定县', NULL, NULL, 'Moudingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532324', '南华县', NULL, NULL, 'Nanhuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532325', '姚安县', NULL, NULL, 'Yaoanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532326', '大姚县', NULL, NULL, 'Dayaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532327', '永仁县', NULL, NULL, 'Yongrenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532328', '元谋县', NULL, NULL, 'Yuanmouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532329', '武定县', NULL, NULL, 'Wudingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532331', '禄丰县', NULL, NULL, 'Lufengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532500', '红河哈尼族彝族自治州', NULL, NULL, 'Honghehanizuyizuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532501', '个旧市', NULL, NULL, 'Gejiushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532502', '开远市', NULL, NULL, 'Kaiyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532503', '蒙自市', NULL, NULL, 'Mengzishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532504', '弥勒市', NULL, NULL, 'Mileshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532523', '屏边苗族自治县', NULL, NULL, 'Pingbianmiaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532524', '建水县', NULL, NULL, 'Jianshuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532525', '石屏县', NULL, NULL, 'Shipingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532527', '泸西县', NULL, NULL, 'Luxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532528', '元阳县', NULL, NULL, 'Yuanyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532529', '红河县', NULL, NULL, 'Honghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532530', '金平苗族瑶族傣族自治县', NULL, NULL, 'Jinpingmiaozuyaozudaizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532531', '绿春县', NULL, NULL, 'Lvchunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532532', '河口瑶族自治县', NULL, NULL, 'Hekouyaozuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532600', '文山壮族苗族自治州', NULL, NULL, 'Wenshanzhuangzumiaozuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532601', '文山市', NULL, NULL, 'Wenshanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532622', '砚山县', NULL, NULL, 'Yanshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532623', '西畴县', NULL, NULL, 'Xichouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532624', '麻栗坡县', NULL, NULL, 'Malipoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532625', '马关县', NULL, NULL, 'Maguanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532626', '丘北县', NULL, NULL, 'Qiubeixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532627', '广南县', NULL, NULL, 'Guangnanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532628', '富宁县', NULL, NULL, 'Funingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532800', '西双版纳傣族自治州', NULL, NULL, 'Xishuangbannadaizuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532801', '景洪市', NULL, NULL, 'Jinghongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532822', '勐海县', NULL, NULL, 'Menghaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532823', '勐腊县', NULL, NULL, 'Menglaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532900', '大理白族自治州', NULL, NULL, 'Dalibaizuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532901', '大理市', NULL, NULL, 'Dalishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532922', '漾濞彝族自治县', NULL, NULL, 'Yangbiyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532923', '祥云县', NULL, NULL, 'Xiangyunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532924', '宾川县', NULL, NULL, 'Binchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532925', '弥渡县', NULL, NULL, 'Miduxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532926', '南涧彝族自治县', NULL, NULL, 'Nanjianyizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532927', '巍山彝族回族自治县', NULL, NULL, 'Weishanyizuhuizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532928', '永平县', NULL, NULL, 'Yongpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532929', '云龙县', NULL, NULL, 'Yunlongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532930', '洱源县', NULL, NULL, 'Eryuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532931', '剑川县', NULL, NULL, 'Jianchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('532932', '鹤庆县', NULL, NULL, 'Heqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533100', '德宏傣族景颇族自治州', NULL, NULL, 'Dehongdaizujingpozuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533102', '瑞丽市', NULL, NULL, 'Ruilishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533103', '芒市', NULL, NULL, 'Mangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533122', '梁河县', NULL, NULL, 'Lianghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533123', '盈江县', NULL, NULL, 'Yingjiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533124', '陇川县', NULL, NULL, 'Longchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533300', '怒江傈僳族自治州', NULL, NULL, 'Nujianglisuzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533301', '泸水市', NULL, NULL, 'Lushuishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533323', '福贡县', NULL, NULL, 'Fugongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533324', '贡山独龙族怒族自治县', NULL, NULL, 'Gongshandulongzunuzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533325', '兰坪白族普米族自治县', NULL, NULL, 'Lanpingbaizupumizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533400', '迪庆藏族自治州', NULL, NULL, 'Diqingzangzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533401', '香格里拉市', NULL, NULL, 'Xianggelilashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533422', '德钦县', NULL, NULL, 'Deqinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('533423', '维西傈僳族自治县', NULL, NULL, 'Weixilisuzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540000', '西藏自治区', NULL, NULL, 'Xizangzizhiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540100', '拉萨市', NULL, NULL, 'Lasashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540101', '拉萨市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540102', '城关区', NULL, NULL, 'Chengguanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540103', '堆龙德庆区', NULL, NULL, 'Duilongdeqingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540121', '林周县', NULL, NULL, 'Linzhouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540122', '当雄县', NULL, NULL, 'Dangxiongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540123', '尼木县', NULL, NULL, 'Nimuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540124', '曲水县', NULL, NULL, 'Qushuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540126', '达孜县', NULL, NULL, 'Dazixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540127', '墨竹工卡县', NULL, NULL, 'Mozhugongkaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540200', '日喀则市', NULL, NULL, 'Rikazeshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540202', '桑珠孜区', NULL, NULL, 'Sangzhuziqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540221', '南木林县', NULL, NULL, 'Nanmulinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540222', '江孜县', NULL, NULL, 'Jiangzixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540223', '定日县', NULL, NULL, 'Dingrixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540224', '萨迦县', NULL, NULL, 'Sajiaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540225', '拉孜县', NULL, NULL, 'Lazixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540226', '昂仁县', NULL, NULL, 'Angrenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540227', '谢通门县', NULL, NULL, 'Xietongmenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540228', '白朗县', NULL, NULL, 'Bailangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540229', '仁布县', NULL, NULL, 'Renbuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540230', '康马县', NULL, NULL, 'Kangmaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540231', '定结县', NULL, NULL, 'Dingjiexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540232', '仲巴县', NULL, NULL, 'Zhongbaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540233', '亚东县', NULL, NULL, 'Yadongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540234', '吉隆县', NULL, NULL, 'Jilongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540235', '聂拉木县', NULL, NULL, 'Nielamuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540236', '萨嘎县', NULL, NULL, 'Sagaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540237', '岗巴县', NULL, NULL, 'Gangbaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540300', '昌都市', NULL, NULL, 'Changdoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540302', '卡若区', NULL, NULL, 'Karuoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540321', '江达县', NULL, NULL, 'Jiangdaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540322', '贡觉县', NULL, NULL, 'Gongjuexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540323', '类乌齐县', NULL, NULL, 'Leiwuqixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540324', '丁青县', NULL, NULL, 'Dingqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540325', '察雅县', NULL, NULL, 'Chayaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540326', '八宿县', NULL, NULL, 'Basuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540327', '左贡县', NULL, NULL, 'Zuogongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540328', '芒康县', NULL, NULL, 'Mangkangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540329', '洛隆县', NULL, NULL, 'Luolongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540330', '边坝县', NULL, NULL, 'Bianbaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540400', '林芝市', NULL, NULL, 'Linzhishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540402', '巴宜区', NULL, NULL, 'Bayiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540421', '工布江达县', NULL, NULL, 'Gongbujiangdaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540422', '米林县', NULL, NULL, 'Milinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540423', '墨脱县', NULL, NULL, 'Motuoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540424', '波密县', NULL, NULL, 'Bomixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540425', '察隅县', NULL, NULL, 'Chayuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540426', '朗县', NULL, NULL, 'Langxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540500', '山南市', NULL, NULL, 'Shannanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540501', '山南市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540502', '乃东区', NULL, NULL, 'Naidongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540521', '扎囊县', NULL, NULL, 'Zhanangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540522', '贡嘎县', NULL, NULL, 'Gonggaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540523', '桑日县', NULL, NULL, 'Sangrixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540524', '琼结县', NULL, NULL, 'Qiongjiexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540525', '曲松县', NULL, NULL, 'Qusongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540526', '措美县', NULL, NULL, 'Cuomeixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540527', '洛扎县', NULL, NULL, 'Luozhaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540528', '加查县', NULL, NULL, 'Jiachaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540529', '隆子县', NULL, NULL, 'Longzixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540530', '错那县', NULL, NULL, 'Cuoneixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('540531', '浪卡子县', NULL, NULL, 'Langkazixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542400', '那曲地区', NULL, NULL, 'Neiqudiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542421', '那曲县', NULL, NULL, 'Neiquxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542422', '嘉黎县', NULL, NULL, 'Jialixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542423', '比如县', NULL, NULL, 'Biruxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542424', '聂荣县', NULL, NULL, 'Nierongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542425', '安多县', NULL, NULL, 'Anduoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542426', '申扎县', NULL, NULL, 'Shenzhaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542427', '索县', NULL, NULL, 'Suoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542428', '班戈县', NULL, NULL, 'Bangexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542429', '巴青县', NULL, NULL, 'Baqingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542430', '尼玛县', NULL, NULL, 'Nimaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542431', '双湖县', NULL, NULL, 'Shuanghuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542500', '阿里地区', NULL, NULL, 'Alidiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542521', '普兰县', NULL, NULL, 'Pulanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542522', '札达县', NULL, NULL, 'Zhadaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542523', '噶尔县', NULL, NULL, 'Gaerxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542524', '日土县', NULL, NULL, 'Rituxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542525', '革吉县', NULL, NULL, 'Gejixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542526', '改则县', NULL, NULL, 'Gaizexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('542527', '措勤县', NULL, NULL, 'Cuoqinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610000', '陕西省', NULL, NULL, 'Shanxisheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610100', '西安市', NULL, NULL, 'Xianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610101', '西安市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610102', '新城区', NULL, NULL, 'Xinchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610103', '碑林区', NULL, NULL, 'Beilinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610104', '莲湖区', NULL, NULL, 'Lianhuqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610111', '灞桥区', NULL, NULL, 'Baqiaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610112', '未央区', NULL, NULL, 'Weiyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610113', '雁塔区', NULL, NULL, 'Yantaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610114', '阎良区', NULL, NULL, 'Yanliangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610115', '临潼区', NULL, NULL, 'Lintongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610116', '长安区', NULL, NULL, 'Zhanganqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610117', '高陵区', NULL, NULL, 'Gaolingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610122', '蓝田县', NULL, NULL, 'Lantianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610124', '周至县', NULL, NULL, 'Zhouzhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610125', '户县', NULL, NULL, 'Huxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610200', '铜川市', NULL, NULL, 'Tongchuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610201', '铜川市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610202', '王益区', NULL, NULL, 'Wangyiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610203', '印台区', NULL, NULL, 'Yintaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610204', '耀州区', NULL, NULL, 'Yaozhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610222', '宜君县', NULL, NULL, 'Yijunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610300', '宝鸡市', NULL, NULL, 'Baojishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610301', '宝鸡市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610302', '渭滨区', NULL, NULL, 'Weibinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610303', '金台区', NULL, NULL, 'Jintaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610304', '陈仓区', NULL, NULL, 'Chencangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610322', '凤翔县', NULL, NULL, 'Fengxiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610323', '岐山县', NULL, NULL, 'Qishanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610324', '扶风县', NULL, NULL, 'Fufengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610326', '眉县', NULL, NULL, 'Meixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610327', '陇县', NULL, NULL, 'Longxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610328', '千阳县', NULL, NULL, 'Qianyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610329', '麟游县', NULL, NULL, 'Linyouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610330', '凤县', NULL, NULL, 'Fengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610331', '太白县', NULL, NULL, 'Taibaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610400', '咸阳市', NULL, NULL, 'Xianyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610401', '咸阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610402', '秦都区', NULL, NULL, 'Qindouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610403', '杨陵区', NULL, NULL, 'Yanglingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610404', '渭城区', NULL, NULL, 'Weichengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610422', '三原县', NULL, NULL, 'Sanyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610423', '泾阳县', NULL, NULL, 'Jingyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610424', '乾县', NULL, NULL, 'Qianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610425', '礼泉县', NULL, NULL, 'Liquanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610426', '永寿县', NULL, NULL, 'Yongshouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610427', '彬县', NULL, NULL, 'Binxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610428', '长武县', NULL, NULL, 'Zhangwuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610429', '旬邑县', NULL, NULL, 'Xunyixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610430', '淳化县', NULL, NULL, 'Chunhuaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610431', '武功县', NULL, NULL, 'Wugongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610481', '兴平市', NULL, NULL, 'Xingpingshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610500', '渭南市', NULL, NULL, 'Weinanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610501', '渭南市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610502', '临渭区', NULL, NULL, 'Linweiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610503', '华州区', NULL, NULL, 'Huazhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610522', '潼关县', NULL, NULL, 'Tongguanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610523', '大荔县', NULL, NULL, 'Dalixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610524', '合阳县', NULL, NULL, 'Heyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610525', '澄城县', NULL, NULL, 'Chengchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610526', '蒲城县', NULL, NULL, 'Puchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610527', '白水县', NULL, NULL, 'Baishuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610528', '富平县', NULL, NULL, 'Fupingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610581', '韩城市', NULL, NULL, 'Hanchengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610582', '华阴市', NULL, NULL, 'Huayinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610600', '延安市', NULL, NULL, 'Yananshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610601', '延安市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610602', '宝塔区', NULL, NULL, 'Baotaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610603', '安塞区', NULL, NULL, 'Ansaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610621', '延长县', NULL, NULL, 'Yanzhangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610622', '延川县', NULL, NULL, 'Yanchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610623', '子长县', NULL, NULL, 'Zizhangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610625', '志丹县', NULL, NULL, 'Zhidanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610626', '吴起县', NULL, NULL, 'Wuqixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610627', '甘泉县', NULL, NULL, 'Ganquanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610628', '富县', NULL, NULL, 'Fuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610629', '洛川县', NULL, NULL, 'Luochuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610630', '宜川县', NULL, NULL, 'Yichuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610631', '黄龙县', NULL, NULL, 'Huanglongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610632', '黄陵县', NULL, NULL, 'Huanglingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610700', '汉中市', NULL, NULL, 'Hanzhongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610701', '汉中市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610702', '汉台区', NULL, NULL, 'Hantaiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610721', '南郑县', NULL, NULL, 'Nanzhengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610722', '城固县', NULL, NULL, 'Chengguxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610723', '洋县', NULL, NULL, 'Yangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610724', '西乡县', NULL, NULL, 'Xixiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610725', '勉县', NULL, NULL, 'Mianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610726', '宁强县', NULL, NULL, 'Ningqiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610727', '略阳县', NULL, NULL, 'Lveyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610728', '镇巴县', NULL, NULL, 'Zhenbaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610729', '留坝县', NULL, NULL, 'Liubaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610730', '佛坪县', NULL, NULL, 'Fopingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610800', '榆林市', NULL, NULL, 'Yulinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610801', '榆林市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610802', '榆阳区', NULL, NULL, 'Yuyangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610803', '横山区', NULL, NULL, 'Hengshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610821', '神木县', NULL, NULL, 'Shenmuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610822', '府谷县', NULL, NULL, 'Fuguxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610824', '靖边县', NULL, NULL, 'Jingbianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610825', '定边县', NULL, NULL, 'Dingbianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610826', '绥德县', NULL, NULL, 'Suidexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610827', '米脂县', NULL, NULL, 'Mizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610828', '佳县', NULL, NULL, 'Jiaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610829', '吴堡县', NULL, NULL, 'Wubaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610830', '清涧县', NULL, NULL, 'Qingjianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610831', '子洲县', NULL, NULL, 'Zizhouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610900', '安康市', NULL, NULL, 'Ankangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610901', '安康市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610902', '汉滨区', NULL, NULL, 'Hanbinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610921', '汉阴县', NULL, NULL, 'Hanyinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610922', '石泉县', NULL, NULL, 'Shiquanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610923', '宁陕县', NULL, NULL, 'Ningshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610924', '紫阳县', NULL, NULL, 'Ziyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610925', '岚皋县', NULL, NULL, 'Langaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610926', '平利县', NULL, NULL, 'Pinglixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610927', '镇坪县', NULL, NULL, 'Zhenpingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610928', '旬阳县', NULL, NULL, 'Xunyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('610929', '白河县', NULL, NULL, 'Baihexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('611000', '商洛市', NULL, NULL, 'Shangluoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('611001', '商洛市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('611002', '商州区', NULL, NULL, 'Shangzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('611021', '洛南县', NULL, NULL, 'Luonanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('611022', '丹凤县', NULL, NULL, 'Danfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('611023', '商南县', NULL, NULL, 'Shangnanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('611024', '山阳县', NULL, NULL, 'Shanyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('611025', '镇安县', NULL, NULL, 'Zhenanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('611026', '柞水县', NULL, NULL, 'Zuoshuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620000', '甘肃省', NULL, NULL, 'Gansusheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620100', '兰州市', NULL, NULL, 'Lanzhoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620101', '兰州市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620102', '城关区', NULL, NULL, 'Chengguanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620103', '七里河区', NULL, NULL, 'Qilihequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620104', '西固区', NULL, NULL, 'Xiguqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620105', '安宁区', NULL, NULL, 'Anningqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620111', '红古区', NULL, NULL, 'Hongguqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620121', '永登县', NULL, NULL, 'Yongdengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620122', '皋兰县', NULL, NULL, 'Gaolanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620123', '榆中县', NULL, NULL, 'Yuzhongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620200', '嘉峪关市', NULL, NULL, 'Jiayuguanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620201', '嘉峪关市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620300', '金昌市', NULL, NULL, 'Jinchangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620301', '金昌市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620302', '金川区', NULL, NULL, 'Jinchuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620321', '永昌县', NULL, NULL, 'Yongchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620400', '白银市', NULL, NULL, 'Baiyinshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620401', '白银市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620402', '白银区', NULL, NULL, 'Baiyinqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620403', '平川区', NULL, NULL, 'Pingchuanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620421', '靖远县', NULL, NULL, 'Jingyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620422', '会宁县', NULL, NULL, 'Huiningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620423', '景泰县', NULL, NULL, 'Jingtaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620500', '天水市', NULL, NULL, 'Tianshuishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620501', '天水市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620502', '秦州区', NULL, NULL, 'Qinzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620503', '麦积区', NULL, NULL, 'Maijiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620521', '清水县', NULL, NULL, 'Qingshuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620522', '秦安县', NULL, NULL, 'Qinanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620523', '甘谷县', NULL, NULL, 'Ganguxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620524', '武山县', NULL, NULL, 'Wushanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620525', '张家川回族自治县', NULL, NULL, 'Zhangjiachuanhuizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620600', '武威市', NULL, NULL, 'Wuweishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620601', '武威市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620602', '凉州区', NULL, NULL, 'Liangzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620621', '民勤县', NULL, NULL, 'Minqinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620622', '古浪县', NULL, NULL, 'Gulangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620623', '天祝藏族自治县', NULL, NULL, 'Tianzhuzangzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620700', '张掖市', NULL, NULL, 'Zhangyeshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620701', '张掖市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620702', '甘州区', NULL, NULL, 'Ganzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620721', '肃南裕固族自治县', NULL, NULL, 'Sunanyuguzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620722', '民乐县', NULL, NULL, 'Minlexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620723', '临泽县', NULL, NULL, 'Linzexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620724', '高台县', NULL, NULL, 'Gaotaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620725', '山丹县', NULL, NULL, 'Shandanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620800', '平凉市', NULL, NULL, 'Pingliangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620801', '平凉市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620802', '崆峒区', NULL, NULL, 'Kongtongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620821', '泾川县', NULL, NULL, 'Jingchuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620822', '灵台县', NULL, NULL, 'Lingtaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620823', '崇信县', NULL, NULL, 'Chongxinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620824', '华亭县', NULL, NULL, 'Huatingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620825', '庄浪县', NULL, NULL, 'Zhuanglangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620826', '静宁县', NULL, NULL, 'Jingningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620900', '酒泉市', NULL, NULL, 'Jiuquanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620901', '酒泉市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620902', '肃州区', NULL, NULL, 'Suzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620921', '金塔县', NULL, NULL, 'Jintaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620922', '瓜州县', NULL, NULL, 'Guazhouxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620923', '肃北蒙古族自治县', NULL, NULL, 'Subeimengguzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620924', '阿克塞哈萨克族自治县', NULL, NULL, 'Akesaihasakezuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620981', '玉门市', NULL, NULL, 'Yumenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('620982', '敦煌市', NULL, NULL, 'Dunhuangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621000', '庆阳市', NULL, NULL, 'Qingyangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621001', '庆阳市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621002', '西峰区', NULL, NULL, 'Xifengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621021', '庆城县', NULL, NULL, 'Qingchengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621022', '环县', NULL, NULL, 'Huanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621023', '华池县', NULL, NULL, 'Huachixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621024', '合水县', NULL, NULL, 'Heshuixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621025', '正宁县', NULL, NULL, 'Zhengningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621026', '宁县', NULL, NULL, 'Ningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621027', '镇原县', NULL, NULL, 'Zhenyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621100', '定西市', NULL, NULL, 'Dingxishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621101', '定西市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621102', '安定区', NULL, NULL, 'Andingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621121', '通渭县', NULL, NULL, 'Tongweixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621122', '陇西县', NULL, NULL, 'Longxixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621123', '渭源县', NULL, NULL, 'Weiyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621124', '临洮县', NULL, NULL, 'Lintaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621125', '漳县', NULL, NULL, 'Zhangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621126', '岷县', NULL, NULL, 'Minxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621200', '陇南市', NULL, NULL, 'Longnanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621201', '陇南市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621202', '武都区', NULL, NULL, 'Wudouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621221', '成县', NULL, NULL, 'Chengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621222', '文县', NULL, NULL, 'Wenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621223', '宕昌县', NULL, NULL, 'Dangchangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621224', '康县', NULL, NULL, 'Kangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621225', '西和县', NULL, NULL, 'Xihexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621226', '礼县', NULL, NULL, 'Lixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621227', '徽县', NULL, NULL, 'Huixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('621228', '两当县', NULL, NULL, 'Liangdangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('622900', '临夏回族自治州', NULL, NULL, 'Linxiahuizuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('622901', '临夏市', NULL, NULL, 'Linxiashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('622921', '临夏县', NULL, NULL, 'Linxiaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('622922', '康乐县', NULL, NULL, 'Kanglexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('622923', '永靖县', NULL, NULL, 'Yongjingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('622924', '广河县', NULL, NULL, 'Guanghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('622925', '和政县', NULL, NULL, 'Hezhengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('622926', '东乡族自治县', NULL, NULL, 'Dongxiangzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', NULL, NULL, 'Jishishanbaoanzudongxiangzusalazuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('623000', '甘南藏族自治州', NULL, NULL, 'Gannanzangzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('623001', '合作市', NULL, NULL, 'Hezuoshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('623021', '临潭县', NULL, NULL, 'Lintanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('623022', '卓尼县', NULL, NULL, 'Zhuonixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('623023', '舟曲县', NULL, NULL, 'Zhouquxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('623024', '迭部县', NULL, NULL, 'Diebuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('623025', '玛曲县', NULL, NULL, 'Maquxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('623026', '碌曲县', NULL, NULL, 'Liuquxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('623027', '夏河县', NULL, NULL, 'Xiahexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630000', '青海省', NULL, NULL, 'Qinghaisheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630100', '西宁市', NULL, NULL, 'Xiningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630101', '西宁市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630102', '城东区', NULL, NULL, 'Chengdongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630103', '城中区', NULL, NULL, 'Chengzhongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630104', '城西区', NULL, NULL, 'Chengxiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630105', '城北区', NULL, NULL, 'Chengbeiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630121', '大通回族土族自治县', NULL, NULL, 'Datonghuizutuzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630122', '湟中县', NULL, NULL, 'Huangzhongxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630123', '湟源县', NULL, NULL, 'Huangyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630200', '海东市', NULL, NULL, 'Haidongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630202', '乐都区', NULL, NULL, 'Ledouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630203', '平安区', NULL, NULL, 'Pinganqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630222', '民和回族土族自治县', NULL, NULL, 'Minhehuizutuzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630223', '互助土族自治县', NULL, NULL, 'Huzhutuzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630224', '化隆回族自治县', NULL, NULL, 'Hualonghuizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('630225', '循化撒拉族自治县', NULL, NULL, 'Xunhuasalazuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632200', '海北藏族自治州', NULL, NULL, 'Haibeizangzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632221', '门源回族自治县', NULL, NULL, 'Menyuanhuizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632222', '祁连县', NULL, NULL, 'Qilianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632223', '海晏县', NULL, NULL, 'Haiyanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632224', '刚察县', NULL, NULL, 'Gangchaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632300', '黄南藏族自治州', NULL, NULL, 'Huangnanzangzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632321', '同仁县', NULL, NULL, 'Tongrenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632322', '尖扎县', NULL, NULL, 'Jianzhaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632323', '泽库县', NULL, NULL, 'Zekuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632324', '河南蒙古族自治县', NULL, NULL, 'Henanmengguzuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632500', '海南藏族自治州', NULL, NULL, 'Hainanzangzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632521', '共和县', NULL, NULL, 'Gonghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632522', '同德县', NULL, NULL, 'Tongdexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632523', '贵德县', NULL, NULL, 'Guidexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632524', '兴海县', NULL, NULL, 'Xinghaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632525', '贵南县', NULL, NULL, 'Guinanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632600', '果洛藏族自治州', NULL, NULL, 'Guoluozangzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632621', '玛沁县', NULL, NULL, 'Maqinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632622', '班玛县', NULL, NULL, 'Banmaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632623', '甘德县', NULL, NULL, 'Gandexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632624', '达日县', NULL, NULL, 'Darixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632625', '久治县', NULL, NULL, 'Jiuzhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632626', '玛多县', NULL, NULL, 'Maduoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632700', '玉树藏族自治州', NULL, NULL, 'Yushuzangzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632701', '玉树市', NULL, NULL, 'Yushushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632722', '杂多县', NULL, NULL, 'Zaduoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632723', '称多县', NULL, NULL, 'Chengduoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632724', '治多县', NULL, NULL, 'Zhiduoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632725', '囊谦县', NULL, NULL, 'Nangqianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632726', '曲麻莱县', NULL, NULL, 'Qumalaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632800', '海西蒙古族藏族自治州', NULL, NULL, 'Haiximengguzuzangzuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632801', '格尔木市', NULL, NULL, 'Geermushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632802', '德令哈市', NULL, NULL, 'Delinghashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632821', '乌兰县', NULL, NULL, 'Wulanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632822', '都兰县', NULL, NULL, 'Doulanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('632823', '天峻县', NULL, NULL, 'Tianjunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640000', '宁夏回族自治区', NULL, NULL, 'Ningxiahuizuzizhiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640100', '银川市', NULL, NULL, 'Yinchuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640101', '银川市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640104', '兴庆区', NULL, NULL, 'Xingqingqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640105', '西夏区', NULL, NULL, 'Xixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640106', '金凤区', NULL, NULL, 'Jinfengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640121', '永宁县', NULL, NULL, 'Yongningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640122', '贺兰县', NULL, NULL, 'Helanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640181', '灵武市', NULL, NULL, 'Lingwushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640200', '石嘴山市', NULL, NULL, 'Shizuishanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640201', '石嘴山市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640202', '大武口区', NULL, NULL, 'Dawukouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640205', '惠农区', NULL, NULL, 'Huinongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640221', '平罗县', NULL, NULL, 'Pingluoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640300', '吴忠市', NULL, NULL, 'Wuzhongshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640301', '吴忠市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640302', '利通区', NULL, NULL, 'Litongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640303', '红寺堡区', NULL, NULL, 'Hongsibaoqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640323', '盐池县', NULL, NULL, 'Yanchixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640324', '同心县', NULL, NULL, 'Tongxinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640381', '青铜峡市', NULL, NULL, 'Qingtongxiashi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640400', '固原市', NULL, NULL, 'Guyuanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640401', '固原市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640402', '原州区', NULL, NULL, 'Yuanzhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640422', '西吉县', NULL, NULL, 'Xijixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640423', '隆德县', NULL, NULL, 'Longdexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640424', '泾源县', NULL, NULL, 'Jingyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640425', '彭阳县', NULL, NULL, 'Pengyangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640500', '中卫市', NULL, NULL, 'Zhongweishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640501', '中卫市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640502', '沙坡头区', NULL, NULL, 'Shapotouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640521', '中宁县', NULL, NULL, 'Zhongningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('640522', '海原县', NULL, NULL, 'Haiyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650000', '新疆维吾尔自治区', NULL, NULL, 'Xinjiangweiwuerzizhiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650100', '乌鲁木齐市', NULL, NULL, 'Wulumuqishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650101', '乌鲁木齐市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650102', '天山区', NULL, NULL, 'Tianshanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650103', '沙依巴克区', NULL, NULL, 'Shayibakequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650104', '新市区', NULL, NULL, 'Xinshiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650105', '水磨沟区', NULL, NULL, 'Shuimogouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650106', '头屯河区', NULL, NULL, 'Toutunhequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650107', '达坂城区', NULL, NULL, 'Dabanchengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650109', '米东区', NULL, NULL, 'Midongqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650121', '乌鲁木齐县', NULL, NULL, 'Wulumuqixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650200', '克拉玛依市', NULL, NULL, 'Kelamayishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650201', '克拉玛依市', NULL, NULL, 'Shixiaqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650202', '独山子区', NULL, NULL, 'Dushanziqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650203', '克拉玛依区', NULL, NULL, 'Kelamayiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650204', '白碱滩区', NULL, NULL, 'Baijiantanqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650205', '乌尔禾区', NULL, NULL, 'Wuerhequ', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650400', '吐鲁番市', NULL, NULL, 'Tulufanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650402', '高昌区', NULL, NULL, 'Gaochangqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650421', '鄯善县', NULL, NULL, 'Shanshanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650422', '托克逊县', NULL, NULL, 'Tuokexunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650500', '哈密市', NULL, NULL, 'Hamishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650502', '伊州区', NULL, NULL, 'Yizhouqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650521', '巴里坤哈萨克自治县', NULL, NULL, 'Balikunhasakezizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('650522', '伊吾县', NULL, NULL, 'Yiwuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652300', '昌吉回族自治州', NULL, NULL, 'Changjihuizuzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652301', '昌吉市', NULL, NULL, 'Changjishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652302', '阜康市', NULL, NULL, 'Fukangshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652323', '呼图壁县', NULL, NULL, 'Hutubixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652324', '玛纳斯县', NULL, NULL, 'Manasixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652325', '奇台县', NULL, NULL, 'Qitaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652327', '吉木萨尔县', NULL, NULL, 'Jimusaerxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652328', '木垒哈萨克自治县', NULL, NULL, 'Muleihasakezizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652700', '博尔塔拉蒙古自治州', NULL, NULL, 'Boertalamengguzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652701', '博乐市', NULL, NULL, 'Boleshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652702', '阿拉山口市', NULL, NULL, 'Alashankoushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652722', '精河县', NULL, NULL, 'Jinghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652723', '温泉县', NULL, NULL, 'Wenquanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652800', '巴音郭楞蒙古自治州', NULL, NULL, 'Bayinguolengmengguzizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652801', '库尔勒市', NULL, NULL, 'Kuerleshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652822', '轮台县', NULL, NULL, 'Luntaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652823', '尉犁县', NULL, NULL, 'Weilixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652824', '若羌县', NULL, NULL, 'Ruoqiangxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652825', '且末县', NULL, NULL, 'Qiemoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652826', '焉耆回族自治县', NULL, NULL, 'Yanqihuizuzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652827', '和静县', NULL, NULL, 'Hejingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652828', '和硕县', NULL, NULL, 'Heshuoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652829', '博湖县', NULL, NULL, 'Bohuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652900', '阿克苏地区', NULL, NULL, 'Akesudiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652901', '阿克苏市', NULL, NULL, 'Akesushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652922', '温宿县', NULL, NULL, 'Wensuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652923', '库车县', NULL, NULL, 'Kuchexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652924', '沙雅县', NULL, NULL, 'Shayaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652925', '新和县', NULL, NULL, 'Xinhexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652926', '拜城县', NULL, NULL, 'Baichengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652927', '乌什县', NULL, NULL, 'Wushenxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652928', '阿瓦提县', NULL, NULL, 'Awatixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('652929', '柯坪县', NULL, NULL, 'Kepingxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653000', '克孜勒苏柯尔克孜自治州', NULL, NULL, 'Kezilesukeerkezizizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653001', '阿图什市', NULL, NULL, 'Atushenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653022', '阿克陶县', NULL, NULL, 'Aketaoxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653023', '阿合奇县', NULL, NULL, 'Aheqixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653024', '乌恰县', NULL, NULL, 'Wuqiaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653100', '喀什地区', NULL, NULL, 'Kashendiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653101', '喀什市', NULL, NULL, 'Kashenshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653121', '疏附县', NULL, NULL, 'Shufuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653122', '疏勒县', NULL, NULL, 'Shulexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653123', '英吉沙县', NULL, NULL, 'Yingjishaxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653124', '泽普县', NULL, NULL, 'Zepuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653125', '莎车县', NULL, NULL, 'Shachexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653126', '叶城县', NULL, NULL, 'Yechengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653127', '麦盖提县', NULL, NULL, 'Maigaitixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653128', '岳普湖县', NULL, NULL, 'Yuepuhuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653129', '伽师县', NULL, NULL, 'Jiashixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653130', '巴楚县', NULL, NULL, 'Bachuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653131', '塔什库尔干塔吉克自治县', NULL, NULL, 'Tashenkuergantajikezizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653200', '和田地区', NULL, NULL, 'Hetiandiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653201', '和田市', NULL, NULL, 'Hetianshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653221', '和田县', NULL, NULL, 'Hetianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653222', '墨玉县', NULL, NULL, 'Moyuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653223', '皮山县', NULL, NULL, 'Pishanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653224', '洛浦县', NULL, NULL, 'Luopuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653225', '策勒县', NULL, NULL, 'Celexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653226', '于田县', NULL, NULL, 'Yutianxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('653227', '民丰县', NULL, NULL, 'Minfengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654000', '伊犁哈萨克自治州', NULL, NULL, 'Yilihasakezizhizhou', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654002', '伊宁市', NULL, NULL, 'Yiningshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654003', '奎屯市', NULL, NULL, 'Kuitunshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654004', '霍尔果斯市', NULL, NULL, 'Huoerguosishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654021', '伊宁县', NULL, NULL, 'Yiningxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654022', '察布查尔锡伯自治县', NULL, NULL, 'Chabuchaerxibozizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654023', '霍城县', NULL, NULL, 'Huochengxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654024', '巩留县', NULL, NULL, 'Gongliuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654025', '新源县', NULL, NULL, 'Xinyuanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654026', '昭苏县', NULL, NULL, 'Zhaosuxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654027', '特克斯县', NULL, NULL, 'Tekesixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654028', '尼勒克县', NULL, NULL, 'Nilekexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654200', '塔城地区', NULL, NULL, 'Tachengdiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654201', '塔城市', NULL, NULL, 'Tachengshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654202', '乌苏市', NULL, NULL, 'Wusushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654221', '额敏县', NULL, NULL, 'Eminxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654223', '沙湾县', NULL, NULL, 'Shawanxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654224', '托里县', NULL, NULL, 'Tuolixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654225', '裕民县', NULL, NULL, 'Yuminxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654226', '和布克赛尔蒙古自治县', NULL, NULL, 'Hebukesaiermengguzizhixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654300', '阿勒泰地区', NULL, NULL, 'Aletaidiqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654301', '阿勒泰市', NULL, NULL, 'Aletaishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654321', '布尔津县', NULL, NULL, 'Buerjinxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654322', '富蕴县', NULL, NULL, 'Fuyunxian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654323', '福海县', NULL, NULL, 'Fuhaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654324', '哈巴河县', NULL, NULL, 'Habahexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654325', '青河县', NULL, NULL, 'Qinghexian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('654326', '吉木乃县', NULL, NULL, 'Jimunaixian', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('659000', '自治区直辖县级行政区划', NULL, NULL, 'Zizhiquzhixiaxianjixingzhengquhua', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('659001', '石河子市', NULL, NULL, 'Shihezishi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('659002', '阿拉尔市', NULL, NULL, 'Alaershi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('659003', '图木舒克市', NULL, NULL, 'Tumushukeshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('659004', '五家渠市', NULL, NULL, 'Wujiaqushi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('659006', '铁门关市', NULL, NULL, 'Tiemenguanshi', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('710000', '台湾省', NULL, NULL, 'Taiwansheng', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('810000', '香港特别行政区', NULL, NULL, 'Xianggangtebiexingzhengqu', NULL, NULL, NULL);
INSERT INTO `set_datacity` VALUES ('820000', '澳门特别行政区', NULL, NULL, 'Aomentebiexingzhengqu', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) COLLATE utf8_bin DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '是否开启注册用户功能');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) COLLATE utf8_bin DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) COLLATE utf8_bin DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '同意', '1', 'vaca_stauts', NULL, 'default', 'Y', '0', 'admin', '2020-06-07 10:26:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '不同意', '2', 'vaca_stauts', NULL, 'default', 'Y', '0', 'admin', '2020-06-07 10:26:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 1, '事假', '1', 'vaca_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:27:06', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 2, '病假', '2', 'vaca_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:27:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 1, '成功', '1', 'sign_stauts', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:27:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 2, '失败', '2', 'sign_stauts', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:28:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 1, '签到', '1', 'sign_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:28:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 2, '签退', '2', 'sign_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:28:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 1, '申请提现', '0', 'fin_cash_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:29:39', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 2, '提现成功', '2', 'fin_cash_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:29:53', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 3, '提现失败', '3', 'fin_cash_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:30:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 4, '取消提现', '4', 'fin_cash_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:30:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 1, '工资收入', '1', 'fin_flow_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:31:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 2, '提现支出', '2', 'fin_flow_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:31:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 3, '支付订单', '3', 'fin_flow_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:31:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 1, '手机验证码', '1', 'meb_login_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:32:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (116, 2, '手机密码', '2', 'meb_login_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:32:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (117, 3, '微信', '3', 'meb_login_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:32:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (118, 1, '失败', '0', 'meb_login_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:32:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (119, 2, '成功', '1', 'meb_login_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:32:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (120, 1, '待审核', '0', 'meb_auth_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:33:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (121, 2, '审核通过', '1', 'meb_auth_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:33:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (122, 3, '不通过', '2', 'meb_auth_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:33:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (123, 4, '未提交实名', '3', 'meb_auth_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:34:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (124, 1, '否', '0', 'meb_is_auth', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:34:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (125, 2, '是', '1', 'meb_is_auth', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:34:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (126, 1, '个人', '1', 'meb_idty_list', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:35:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (127, 1, '有效', '1', 'mbe_acc_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:35:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (128, 2, '失效', '0', 'mbe_acc_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:36:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (129, 1, 'wchat', '1', 'meb_acc_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:36:49', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (130, 1, '正常', '1', 'meb_acc_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:38:58', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (131, 2, '锁定', '2', 'meb_acc_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:39:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (132, 3, '注销', '3', 'meb_acc_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:39:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (133, 1, '小程序', '1', 'meb_reg_clt', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:40:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (134, 2, 'android', '2', 'meb_reg_clt', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:40:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (135, 3, 'ios', '3', 'meb_reg_clt', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:40:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (136, 1, '骑手', '1', 'meb_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:40:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (137, 2, '送货', '2', 'meb_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:41:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (138, 3, '分拣', '3', 'meb_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:41:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (139, 1, '有效', '1', 'bank_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:41:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (140, 2, '无效', '2', 'bank_type', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:41:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (141, 1, '有效', '1', 'price_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:42:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (142, 2, '未开始', '2', 'price_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:42:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (143, 3, '已结束', '3', 'price_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:42:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (144, 1, '支付中', '1', 'bus_pay_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:43:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (145, 2, '支付成功', '2', 'bus_pay_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:43:38', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (146, 3, '支付失败', '3', 'bus_pay_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:43:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (147, 4, '新建', '0', 'bus_pay_sta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:44:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (148, 1, '待支付', '1', 'ord_status', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:45:38', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (149, 2, '待分拣', '2', 'ord_status', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:45:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (150, 3, '配送中', '3', 'ord_status', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:46:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (151, 4, '已送达', '4', 'ord_status', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:46:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (152, 5, '已取消', '5', 'ord_status', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:46:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (153, 6, '退款中', '6', 'ord_status', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:46:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (154, 7, '已退款', '7', 'ord_status', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:46:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (155, 1, '正常', '1', 'addr_group_stauts', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:47:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (156, 2, '请假', '2', 'addr_group_stauts', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:47:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (157, 3, '缺勤', '3', 'addr_group_stauts', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:48:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (158, 4, '解除', '4', 'addr_group_stauts', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:48:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (159, 1, '正常营业', '1', 'addr_stauts', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:49:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (160, 2, '休息中', '2', 'addr_stauts', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:49:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (161, 3, '解除', '3', 'addr_stauts', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:49:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (162, 1, '待处理', '1', 'opinionsta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:49:58', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (163, 2, '处理中', '2', 'opinionsta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:50:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (164, 3, '已处理', '3', 'opinionsta', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:50:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (165, 1, '丢单', '1', 'opiniontype', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:50:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (166, 2, '损坏', '2', 'opiniontype', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:50:50', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (167, 1, '微信', '1', 'ord_pay_mode', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:51:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (168, 2, '支付宝', '2', 'ord_pay_mode', NULL, NULL, 'Y', '0', 'admin', '2020-06-07 10:51:27', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '楼宇分组成员状态', 'addr_group_stauts', '0', 'admin', '2020-06-07 09:45:11', 'admin', '2020-06-07 09:58:51', '1正常 2请假 3缺勤 4解除');
INSERT INTO `sys_dict_type` VALUES (101, '楼宇状态', 'addr_stauts', '0', 'admin', '2020-06-07 09:45:56', 'admin', '2020-06-07 09:58:05', '1正常营业 2休息中 3解除');
INSERT INTO `sys_dict_type` VALUES (102, '投诉处理状态', 'opinionsta', '0', 'admin', '2020-06-07 09:48:16', 'admin', '2020-06-07 09:57:47', '1待处理 2处理中 3已处理');
INSERT INTO `sys_dict_type` VALUES (103, '投诉类型', 'opiniontype', '0', 'admin', '2020-06-07 09:49:07', 'admin', '2020-06-07 09:57:29', '1丢单 2损坏');
INSERT INTO `sys_dict_type` VALUES (104, '支付方式', 'ord_pay_mode', '0', 'admin', '2020-06-07 09:50:42', 'admin', '2020-06-07 09:56:59', '1 微信 2支付宝');
INSERT INTO `sys_dict_type` VALUES (106, '订单状态', 'ord_status', '0', 'admin', '2020-06-07 09:51:41', 'admin', '2020-06-07 09:59:18', '1待支付 2待分拣 3配送中 4已送达 5已取消6退款中7已退款');
INSERT INTO `sys_dict_type` VALUES (107, '支付状态', 'bus_pay_sta', '0', 'admin', '2020-06-07 09:53:49', 'admin', '2020-06-07 09:55:35', '0新建 1支付中 2支付成功 3支付失败');
INSERT INTO `sys_dict_type` VALUES (108, '促销价格状态', 'price_sta', '0', 'admin', '2020-06-07 09:55:06', '', NULL, '1有效 2未开始 3已结束');
INSERT INTO `sys_dict_type` VALUES (109, '银行状态', 'bank_type', '0', 'admin', '2020-06-07 10:00:36', '', NULL, '1有效 2无效');
INSERT INTO `sys_dict_type` VALUES (110, '会员类型', 'meb_type', '0', 'admin', '2020-06-07 10:01:20', '', NULL, '1骑手  2送货 3分拣');
INSERT INTO `sys_dict_type` VALUES (111, '注册终端', 'meb_reg_clt', '0', 'admin', '2020-06-07 10:02:04', '', NULL, '1小程序 2android 3ios');
INSERT INTO `sys_dict_type` VALUES (112, '账户状态', 'meb_acc_sta', '0', 'admin', '2020-06-07 10:03:03', '', NULL, '1正常 2锁定  3注销');
INSERT INTO `sys_dict_type` VALUES (113, '关联第三方账号类型', 'meb_acc_type', '0', 'admin', '2020-06-07 10:05:50', '', NULL, '1wchat');
INSERT INTO `sys_dict_type` VALUES (114, '关联第三方账号状态', 'mbe_acc_sta', '0', 'admin', '2020-06-07 10:06:34', '', NULL, '1有效 0失效');
INSERT INTO `sys_dict_type` VALUES (115, '会员身份', 'meb_idty_list', '0', 'admin', '2020-06-07 10:08:56', '', NULL, '1个人');
INSERT INTO `sys_dict_type` VALUES (116, '是否通过实名认证', 'meb_is_auth', '0', 'admin', '2020-06-07 10:09:35', '', NULL, '0否 1是');
INSERT INTO `sys_dict_type` VALUES (117, '实名状态', 'meb_auth_sta', '0', 'admin', '2020-06-07 10:10:52', '', NULL, '0待审核 1审核通过 2不通过 3未提交实名');
INSERT INTO `sys_dict_type` VALUES (118, '登录状态', 'meb_login_sta', '0', 'admin', '2020-06-07 10:12:58', '', NULL, '0失败1成功');
INSERT INTO `sys_dict_type` VALUES (119, '登录方式', 'meb_login_type', '0', 'admin', '2020-06-07 10:13:56', '', NULL, '1手机验证码 2手机密码 3微信');
INSERT INTO `sys_dict_type` VALUES (120, '资金明细类型', 'fin_flow_type', '0', 'admin', '2020-06-07 10:16:32', '', NULL, '1工资收入 2提现支出 3支付订单');
INSERT INTO `sys_dict_type` VALUES (121, '提现状态', 'fin_cash_sta', '0', 'admin', '2020-06-07 10:18:07', '', NULL, '0申请提现 2提现成功 3提现失败 4取消提现');
INSERT INTO `sys_dict_type` VALUES (122, '打卡类型', 'sign_type', '0', 'admin', '2020-06-07 10:18:36', '', NULL, '1签到 2签退');
INSERT INTO `sys_dict_type` VALUES (123, '打卡状态', 'sign_stauts', '0', 'admin', '2020-06-07 10:18:59', '', NULL, '1成功 2失败');
INSERT INTO `sys_dict_type` VALUES (124, '请假类型', 'vaca_type', '0', 'admin', '2020-06-07 10:19:25', '', NULL, '1事假 2病假');
INSERT INTO `sys_dict_type` VALUES (125, '请假状态', 'vaca_stauts', '0', 'admin', '2020-06-07 10:19:44', '', NULL, '1同意 2不同意');
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) COLLATE utf8_bin DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '日志信息',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) COLLATE utf8_bin DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='定时任务调度日志表';

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '操作系统',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Safari', 'Mac OS X', '0', '登录成功', '2020-06-07 09:42:42');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Safari', 'Mac OS X', '0', '登录成功', '2020-06-07 10:20:13');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Safari', 'Mac OS X', '0', '登录成功', '2020-06-07 12:16:05');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Safari', 'Mac OS X', '0', '登录成功', '2020-06-08 14:29:07');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Safari', 'Mac OS X', '0', '登录成功', '2020-06-08 15:29:19');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) COLLATE utf8_bin DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) COLLATE utf8_bin DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) COLLATE utf8_bin DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2097 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 3, '#', 'menuItem', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2020-06-06 16:44:59', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 4, '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2020-06-06 16:44:50', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2000, '业务管理', 0, 2, '#', 'menuItem', 'M', '0', '', 'fa fa-bar-chart', 'admin', '2020-06-06 16:44:03', 'admin', '2020-06-06 16:44:12', '');
INSERT INTO `sys_menu` VALUES (2001, '会员账号管理', 2000, 1, '/kmps/account', '', 'C', '0', 'kmps:account:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '会员账号菜单');
INSERT INTO `sys_menu` VALUES (2002, '查询', 2001, 1, '#', '', 'F', '0', 'kmps:account:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2003, '新增', 2001, 2, '#', '', 'F', '0', 'kmps:account:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2004, '修改', 2001, 3, '#', '', 'F', '0', 'kmps:account:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2005, '删除', 2001, 4, '#', '', 'F', '0', 'kmps:account:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2006, '导出', 2001, 5, '#', '', 'F', '0', 'kmps:account:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2013, '实名认证记录', 2000, 1, '/kmps/authname', '', 'C', '0', 'kmps:authname:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '会员实名认证记录菜单');
INSERT INTO `sys_menu` VALUES (2014, '查询', 2013, 1, '#', '', 'F', '0', 'kmps:authname:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2015, '新增', 2013, 2, '#', '', 'F', '0', 'kmps:authname:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2016, '修改', 2013, 3, '#', '', 'F', '0', 'kmps:authname:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2017, '删除', 2013, 4, '#', '', 'F', '0', 'kmps:authname:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2018, '导出', 2013, 5, '#', '', 'F', '0', 'kmps:authname:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2019, '楼宇管理', 2000, 1, '/kmps/edifice', '', 'C', '0', 'kmps:edifice:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '楼宇菜单');
INSERT INTO `sys_menu` VALUES (2020, '查询', 2019, 1, '#', '', 'F', '0', 'kmps:edifice:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2021, '新增', 2019, 2, '#', '', 'F', '0', 'kmps:edifice:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2022, '修改', 2019, 3, '#', '', 'F', '0', 'kmps:edifice:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2023, '删除', 2019, 4, '#', '', 'F', '0', 'kmps:edifice:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2024, '导出', 2019, 5, '#', '', 'F', '0', 'kmps:edifice:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2025, '资金明细', 200, 1, '/kmps/financelrd', '', 'C', '0', 'kmps:financelrd:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '资金明细菜单');
INSERT INTO `sys_menu` VALUES (2026, '查询', 2025, 1, '#', '', 'F', '0', 'kmps:financelrd:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2027, '新增', 2025, 2, '#', '', 'F', '0', 'kmps:financelrd:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2028, '修改', 2025, 3, '#', '', 'F', '0', 'kmps:financelrd:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2029, '删除', 2025, 4, '#', '', 'F', '0', 'kmps:financelrd:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2030, '导出', 2025, 5, '#', '', 'F', '0', 'kmps:financelrd:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2031, '提现管理', 2000, 1, '/kmps/financelcash', '', 'C', '0', 'kmps:financelcash:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '提现菜单');
INSERT INTO `sys_menu` VALUES (2032, '查询', 2031, 1, '#', '', 'F', '0', 'kmps:financelcash:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2033, '新增', 2031, 2, '#', '', 'F', '0', 'kmps:financelcash:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2034, '修改', 2031, 3, '#', '', 'F', '0', 'kmps:financelcash:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2035, '删除', 2031, 4, '#', '', 'F', '0', 'kmps:financelcash:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2036, '导出', 2031, 5, '#', '', 'F', '0', 'kmps:financelcash:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2037, '楼宇分组管理', 2000, 1, '/kmps/group', '', 'C', '0', 'kmps:group:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '分组菜单');
INSERT INTO `sys_menu` VALUES (2038, '查询', 2037, 1, '#', '', 'F', '0', 'kmps:group:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2039, '新增', 2037, 2, '#', '', 'F', '0', 'kmps:group:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2040, '修改', 2037, 3, '#', '', 'F', '0', 'kmps:group:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2041, '删除', 2037, 4, '#', '', 'F', '0', 'kmps:group:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2042, '导出', 2037, 5, '#', '', 'F', '0', 'kmps:group:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2043, '会员打卡', 2000, 1, '/kmps/in', '', 'C', '0', 'kmps:in:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '会员打卡菜单');
INSERT INTO `sys_menu` VALUES (2044, '查询', 2043, 1, '#', '', 'F', '0', 'kmps:in:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2045, '新增', 2043, 2, '#', '', 'F', '0', 'kmps:in:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2046, '修改', 2043, 3, '#', '', 'F', '0', 'kmps:in:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2047, '删除', 2043, 4, '#', '', 'F', '0', 'kmps:in:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2048, '导出', 2043, 5, '#', '', 'F', '0', 'kmps:in:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2049, '楼宇价格', 2000, 1, '/kmps/price', '', 'C', '0', 'kmps:price:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '楼宇价格菜单');
INSERT INTO `sys_menu` VALUES (2050, '查询', 2049, 1, '#', '', 'F', '0', 'kmps:price:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2051, '新增', 2049, 2, '#', '', 'F', '0', 'kmps:price:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2052, '修改', 2049, 3, '#', '', 'F', '0', 'kmps:price:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2053, '删除', 2049, 4, '#', '', 'F', '0', 'kmps:price:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2054, '导出', 2049, 5, '#', '', 'F', '0', 'kmps:price:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2055, '积分明细', 2000, 1, '/kmps/pointsrd', '', 'C', '0', 'kmps:pointsrd:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '积分明细菜单');
INSERT INTO `sys_menu` VALUES (2056, '查询', 2055, 1, '#', '', 'F', '0', 'kmps:pointsrd:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2057, '新增', 2055, 2, '#', '', 'F', '0', 'kmps:pointsrd:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2058, '修改', 2055, 3, '#', '', 'F', '0', 'kmps:pointsrd:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2059, '删除', 2055, 4, '#', '', 'F', '0', 'kmps:pointsrd:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2060, '导出', 2055, 5, '#', '', 'F', '0', 'kmps:pointsrd:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2061, '手机号变更记录', 2000, 1, '/kmps/phonerd', '', 'C', '0', 'kmps:phonerd:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '手机号变更记录菜单');
INSERT INTO `sys_menu` VALUES (2062, '查询', 2061, 1, '#', '', 'F', '0', 'kmps:phonerd:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2063, '新增', 2061, 2, '#', '', 'F', '0', 'kmps:phonerd:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2064, '修改', 2061, 3, '#', '', 'F', '0', 'kmps:phonerd:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2065, '删除', 2061, 4, '#', '', 'F', '0', 'kmps:phonerd:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2066, '导出', 2061, 5, '#', '', 'F', '0', 'kmps:phonerd:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2067, '订单支付记录', 2000, 1, '/kmps/pay', '', 'C', '0', 'kmps:pay:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '订单支付记录菜单');
INSERT INTO `sys_menu` VALUES (2068, '查询', 2067, 1, '#', '', 'F', '0', 'kmps:pay:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2069, '新增', 2067, 2, '#', '', 'F', '0', 'kmps:pay:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2070, '修改', 2067, 3, '#', '', 'F', '0', 'kmps:pay:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2071, '删除', 2067, 4, '#', '', 'F', '0', 'kmps:pay:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2072, '导出', 2067, 5, '#', '', 'F', '0', 'kmps:pay:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2073, '订单管理', 2000, 1, '/kmps/order', '', 'C', '0', 'kmps:order:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '订单菜单');
INSERT INTO `sys_menu` VALUES (2074, '查询', 2073, 1, '#', '', 'F', '0', 'kmps:order:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2075, '新增', 2073, 2, '#', '', 'F', '0', 'kmps:order:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2076, '修改', 2073, 3, '#', '', 'F', '0', 'kmps:order:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2077, '删除', 2073, 4, '#', '', 'F', '0', 'kmps:order:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2078, '导出', 2073, 5, '#', '', 'F', '0', 'kmps:order:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2079, '用户投诉管理', 2000, 1, '/kmps/opinion', '', 'C', '0', 'kmps:opinion:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '投诉菜单');
INSERT INTO `sys_menu` VALUES (2080, '查询', 2079, 1, '#', '', 'F', '0', 'kmps:opinion:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2081, '新增', 2079, 2, '#', '', 'F', '0', 'kmps:opinion:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2082, '修改', 2079, 3, '#', '', 'F', '0', 'kmps:opinion:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2083, '删除', 2079, 4, '#', '', 'F', '0', 'kmps:opinion:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2084, '导出', 2079, 5, '#', '', 'F', '0', 'kmps:opinion:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2085, '会员休假管理', 2000, 1, '/kmps/vacation', '', 'C', '0', 'kmps:vacation:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '会员休假菜单');
INSERT INTO `sys_menu` VALUES (2086, '查询', 2085, 1, '#', '', 'F', '0', 'kmps:vacation:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2087, '新增', 2085, 2, '#', '', 'F', '0', 'kmps:vacation:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2088, '修改', 2085, 3, '#', '', 'F', '0', 'kmps:vacation:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2089, '删除', 2085, 4, '#', '', 'F', '0', 'kmps:vacation:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2090, '导出', 2085, 5, '#', '', 'F', '0', 'kmps:vacation:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2091, '投诉操作记录', 2000, 1, '/kmps/saleafteropr', '', 'C', '0', 'kmps:saleafteropr:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '售后单操作记录菜单');
INSERT INTO `sys_menu` VALUES (2092, '查询', 2091, 1, '#', '', 'F', '0', 'kmps:saleafteropr:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2093, '新增', 2091, 2, '#', '', 'F', '0', 'kmps:saleafteropr:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2094, '修改', 2091, 3, '#', '', 'F', '0', 'kmps:saleafteropr:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2095, '删除', 2091, 4, '#', '', 'F', '0', 'kmps:saleafteropr:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2096, '导出', 2091, 5, '#', '', 'F', '0', 'kmps:saleafteropr:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) COLLATE utf8_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '公告内容',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) COLLATE utf8_bin DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) COLLATE utf8_bin DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) COLLATE utf8_bin DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) COLLATE utf8_bin DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"业务管理\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"fa fa-bar-chart\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-06 16:44:03');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  \"menuId\" : [ \"2000\" ],\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"业务管理\" ],\n  \"url\" : [ \"#\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"fa fa-bar-chart\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-06 16:44:12');
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  \"menuId\" : [ \"3\" ],\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"系统工具\" ],\n  \"url\" : [ \"#\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"4\" ],\n  \"icon\" : [ \"fa fa-bars\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-06 16:44:50');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  \"menuId\" : [ \"2\" ],\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"系统监控\" ],\n  \"url\" : [ \"#\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"3\" ],\n  \"icon\" : [ \"fa fa-video-camera\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-06 16:44:59');
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  \"tables\" : [ \"ord_pay,meb_authname,meb_opinion_saleafteropr,meb_phonerd,addr_edifice,meb_opinion,meb_financelcash,meb_pointsrd,addr_edifice_group,meb_financelrd,meb_sigin_in,meb_account,meb_vacation,ord_activity_price,ord_order\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-06 17:21:11');
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  \"tables\" : [ \"addr_edifice,addr_edifice_group,meb_account,meb_authname,meb_financelcash,meb_financelrd,meb_opinion,meb_opinion_saleafteropr,meb_phonerd,meb_pointsrd,meb_sigin_in,meb_vacation,ord_activity_price,ord_order,ord_pay\" ]\n}', 'null', 0, NULL, '2020-06-06 17:21:31');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2007', '127.0.0.1', '内网IP', '{ }', '{\n  \"msg\" : \"存在子菜单,不允许删除\",\n  \"code\" : 301\n}', 0, NULL, '2020-06-06 17:27:48');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2008', '127.0.0.1', '内网IP', '{ }', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-06 17:28:09');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2009', '127.0.0.1', '内网IP', '{ }', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-06 17:28:25');
INSERT INTO `sys_oper_log` VALUES (109, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"楼宇分组成员状态\" ],\n  \"dictType\" : [ \"addr_group_stauts\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:45:11');
INSERT INTO `sys_oper_log` VALUES (110, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"100\" ],\n  \"dictName\" : [ \"楼宇分组成员状态\" ],\n  \"dictType\" : [ \"addr_group_stauts\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"成员状态\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:45:25');
INSERT INTO `sys_oper_log` VALUES (111, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"楼宇状态\" ],\n  \"dictType\" : [ \"addr_stauts\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"楼宇状态\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:45:56');
INSERT INTO `sys_oper_log` VALUES (112, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"投诉处理状态\" ],\n  \"dictType\" : [ \"opinionsta\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"处理状态\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:48:16');
INSERT INTO `sys_oper_log` VALUES (113, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"投诉类型\" ],\n  \"dictType\" : [ \"opiniontype\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"投诉类型\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:49:07');
INSERT INTO `sys_oper_log` VALUES (114, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"支付方式\" ],\n  \"dictType\" : [ \"ord_pay_mode\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"支付方式\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:50:42');
INSERT INTO `sys_oper_log` VALUES (115, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"下单终端\" ],\n  \"dictType\" : [ \"ord_clt\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"下单终端\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:51:14');
INSERT INTO `sys_oper_log` VALUES (116, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"订单状态\" ],\n  \"dictType\" : [ \"ord_status\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"订单状态\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:51:41');
INSERT INTO `sys_oper_log` VALUES (117, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"支付状态\" ],\n  \"dictType\" : [ \"bus_pay_sta\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"支付状态\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:53:49');
INSERT INTO `sys_oper_log` VALUES (118, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"促销价格状态\" ],\n  \"dictType\" : [ \"price_sta\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1有效 2未开始 3已结束\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:55:06');
INSERT INTO `sys_oper_log` VALUES (119, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"107\" ],\n  \"dictName\" : [ \"支付状态\" ],\n  \"dictType\" : [ \"bus_pay_sta\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"0新建 1支付中 2支付成功 3支付失败\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:55:35');
INSERT INTO `sys_oper_log` VALUES (120, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"106\" ],\n  \"dictName\" : [ \"订单状态\" ],\n  \"dictType\" : [ \"ord_status\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1待支付 2待分拣 3配送中 4已送达 5已取消6退款中7已退款\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:56:12');
INSERT INTO `sys_oper_log` VALUES (121, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"105\" ],\n  \"dictName\" : [ \"下单终端\" ],\n  \"dictType\" : [ \"ord_clt\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1小程序 2Android 3IOS\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:56:42');
INSERT INTO `sys_oper_log` VALUES (122, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"104\" ],\n  \"dictName\" : [ \"支付方式\" ],\n  \"dictType\" : [ \"ord_pay_mode\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1 微信 2支付宝\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:56:59');
INSERT INTO `sys_oper_log` VALUES (123, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"103\" ],\n  \"dictName\" : [ \"投诉类型\" ],\n  \"dictType\" : [ \"opiniontype\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1丢单 2损坏\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:57:29');
INSERT INTO `sys_oper_log` VALUES (124, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"102\" ],\n  \"dictName\" : [ \"投诉处理状态\" ],\n  \"dictType\" : [ \"opinionsta\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1待处理 2处理中 3已处理 \" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:57:47');
INSERT INTO `sys_oper_log` VALUES (125, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"101\" ],\n  \"dictName\" : [ \"楼宇状态\" ],\n  \"dictType\" : [ \"addr_stauts\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1正常营业 2休息中 3解除\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:58:05');
INSERT INTO `sys_oper_log` VALUES (126, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"100\" ],\n  \"dictName\" : [ \"楼宇分组成员状态\" ],\n  \"dictType\" : [ \"addr_group_stauts\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1正常 2请假 3缺勤 4解除\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:58:51');
INSERT INTO `sys_oper_log` VALUES (127, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"106\" ],\n  \"dictName\" : [ \"订单状态\" ],\n  \"dictType\" : [ \"ord_status\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1待支付 2待分拣 3配送中 4已送达 5已取消6退款中7已退款\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 09:59:18');
INSERT INTO `sys_oper_log` VALUES (128, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"银行状态\" ],\n  \"dictType\" : [ \"bank_type\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \" 1有效 2无效\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:00:36');
INSERT INTO `sys_oper_log` VALUES (129, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"会员类型\" ],\n  \"dictType\" : [ \"meb_type\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1骑手  2送货 3分拣\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:01:20');
INSERT INTO `sys_oper_log` VALUES (130, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"注册终端\" ],\n  \"dictType\" : [ \"meb_reg_clt\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1小程序 2android 3ios\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:02:04');
INSERT INTO `sys_oper_log` VALUES (131, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"账户状态\" ],\n  \"dictType\" : [ \"meb_acc_sta\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1正常 2锁定  3注销\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:03:03');
INSERT INTO `sys_oper_log` VALUES (132, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"关联第三方账号类型\" ],\n  \"dictType\" : [ \"meb_acc_type\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1wchat\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:05:50');
INSERT INTO `sys_oper_log` VALUES (133, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"关联第三方账号状态\" ],\n  \"dictType\" : [ \"mbe_acc_sta\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1有效 0失效\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:06:34');
INSERT INTO `sys_oper_log` VALUES (134, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"会员身份\" ],\n  \"dictType\" : [ \"meb_idty_list\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1个人\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:08:56');
INSERT INTO `sys_oper_log` VALUES (135, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"是否通过实名认证\" ],\n  \"dictType\" : [ \"meb_is_auth\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"0否 1是\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:09:35');
INSERT INTO `sys_oper_log` VALUES (136, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"实名状态\" ],\n  \"dictType\" : [ \"meb_auth_sta\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"0待审核 1审核通过 2不通过 3未提交实名\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:10:52');
INSERT INTO `sys_oper_log` VALUES (137, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"登录状态\" ],\n  \"dictType\" : [ \"meb_login_sta\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"0失败1成功\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:12:58');
INSERT INTO `sys_oper_log` VALUES (138, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"登录方式\" ],\n  \"dictType\" : [ \"meb_login_type\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1手机验证码 2手机密码 3微信\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:13:56');
INSERT INTO `sys_oper_log` VALUES (139, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"资金明细类型\" ],\n  \"dictType\" : [ \"fin_flow_type\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1工资收入 2提现支出 3支付订单\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:16:32');
INSERT INTO `sys_oper_log` VALUES (140, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"提现状态\" ],\n  \"dictType\" : [ \"fin_cash_sta\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"0申请提现 2提现成功 3提现失败 4取消提现\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:18:07');
INSERT INTO `sys_oper_log` VALUES (141, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"打卡类型\" ],\n  \"dictType\" : [ \"sign_type\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1签到 2签退\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:18:36');
INSERT INTO `sys_oper_log` VALUES (142, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"打卡状态\" ],\n  \"dictType\" : [ \"sign_stauts\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1成功 2失败\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:18:59');
INSERT INTO `sys_oper_log` VALUES (143, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"请假类型\" ],\n  \"dictType\" : [ \"vaca_type\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1事假 2病假\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:19:25');
INSERT INTO `sys_oper_log` VALUES (144, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"请假状态\" ],\n  \"dictType\" : [ \"vaca_stauts\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"1同意 2不同意\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:19:44');
INSERT INTO `sys_oper_log` VALUES (145, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"同意\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"vaca_stauts\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"default\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:26:05');
INSERT INTO `sys_oper_log` VALUES (146, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"不同意\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"vaca_stauts\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"default\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:26:32');
INSERT INTO `sys_oper_log` VALUES (147, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"事假\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"vaca_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:27:06');
INSERT INTO `sys_oper_log` VALUES (148, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"病假\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"vaca_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:27:21');
INSERT INTO `sys_oper_log` VALUES (149, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"成功\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sign_stauts\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:27:40');
INSERT INTO `sys_oper_log` VALUES (150, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"失败\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"sign_stauts\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:28:08');
INSERT INTO `sys_oper_log` VALUES (151, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"签到\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sign_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:28:33');
INSERT INTO `sys_oper_log` VALUES (152, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"签退\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"sign_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:28:42');
INSERT INTO `sys_oper_log` VALUES (153, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"申请提现\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"fin_cash_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:29:39');
INSERT INTO `sys_oper_log` VALUES (154, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"提现成功\" ],\n  \"dictValue\" : [ \" 2\" ],\n  \"dictType\" : [ \"fin_cash_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:29:53');
INSERT INTO `sys_oper_log` VALUES (155, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"提现失败\" ],\n  \"dictValue\" : [ \" 3\" ],\n  \"dictType\" : [ \"fin_cash_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:30:08');
INSERT INTO `sys_oper_log` VALUES (156, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"取消提现\" ],\n  \"dictValue\" : [ \"4\" ],\n  \"dictType\" : [ \"fin_cash_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"4\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:30:42');
INSERT INTO `sys_oper_log` VALUES (157, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"工资收入\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"fin_flow_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:31:09');
INSERT INTO `sys_oper_log` VALUES (158, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"提现支出\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"fin_flow_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:31:23');
INSERT INTO `sys_oper_log` VALUES (159, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"支付订单\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"fin_flow_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:31:33');
INSERT INTO `sys_oper_log` VALUES (160, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"手机验证码\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"meb_login_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:32:00');
INSERT INTO `sys_oper_log` VALUES (161, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 手机密码\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"meb_login_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:32:11');
INSERT INTO `sys_oper_log` VALUES (162, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 微信\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"meb_login_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:32:21');
INSERT INTO `sys_oper_log` VALUES (163, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"失败\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"meb_login_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:32:45');
INSERT INTO `sys_oper_log` VALUES (164, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"成功\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"meb_login_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:32:54');
INSERT INTO `sys_oper_log` VALUES (165, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"待审核\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"meb_auth_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:33:33');
INSERT INTO `sys_oper_log` VALUES (166, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 审核通过\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"meb_auth_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:33:44');
INSERT INTO `sys_oper_log` VALUES (167, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 不通过\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"meb_auth_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:33:57');
INSERT INTO `sys_oper_log` VALUES (168, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"未提交实名\" ],\n  \"dictValue\" : [ \" 3\" ],\n  \"dictType\" : [ \"meb_auth_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"4\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:34:15');
INSERT INTO `sys_oper_log` VALUES (169, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"否\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"meb_is_auth\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:34:37');
INSERT INTO `sys_oper_log` VALUES (170, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"是\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"meb_is_auth\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:34:46');
INSERT INTO `sys_oper_log` VALUES (171, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"个人\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"meb_idty_list\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:35:20');
INSERT INTO `sys_oper_log` VALUES (172, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"有效\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"mbe_acc_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:35:52');
INSERT INTO `sys_oper_log` VALUES (173, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"失效\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"mbe_acc_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:36:17');
INSERT INTO `sys_oper_log` VALUES (174, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"wchat\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"meb_acc_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:36:49');
INSERT INTO `sys_oper_log` VALUES (175, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"正常\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"meb_acc_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:38:58');
INSERT INTO `sys_oper_log` VALUES (176, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 锁定\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"meb_acc_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:39:13');
INSERT INTO `sys_oper_log` VALUES (177, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"注销\" ],\n  \"dictValue\" : [ \" 3\" ],\n  \"dictType\" : [ \"meb_acc_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:39:31');
INSERT INTO `sys_oper_log` VALUES (178, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"小程序\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"meb_reg_clt\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:40:01');
INSERT INTO `sys_oper_log` VALUES (179, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" android\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"meb_reg_clt\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:40:13');
INSERT INTO `sys_oper_log` VALUES (180, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" ios\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"meb_reg_clt\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:40:27');
INSERT INTO `sys_oper_log` VALUES (181, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"骑手\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"meb_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:40:51');
INSERT INTO `sys_oper_log` VALUES (182, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 送货\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"meb_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:41:05');
INSERT INTO `sys_oper_log` VALUES (183, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"分拣\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"meb_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:41:15');
INSERT INTO `sys_oper_log` VALUES (184, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"有效\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"bank_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:41:37');
INSERT INTO `sys_oper_log` VALUES (185, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"无效\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"bank_type\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:41:47');
INSERT INTO `sys_oper_log` VALUES (186, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"有效\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"price_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:42:15');
INSERT INTO `sys_oper_log` VALUES (187, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 未开始\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"price_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:42:37');
INSERT INTO `sys_oper_log` VALUES (188, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 已结束\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"price_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:42:47');
INSERT INTO `sys_oper_log` VALUES (189, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"支付中\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"bus_pay_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:43:22');
INSERT INTO `sys_oper_log` VALUES (190, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 支付成功\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"bus_pay_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:43:38');
INSERT INTO `sys_oper_log` VALUES (191, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 支付失败\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"bus_pay_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:43:51');
INSERT INTO `sys_oper_log` VALUES (192, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"新建 \" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"bus_pay_sta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"4\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:44:01');
INSERT INTO `sys_oper_log` VALUES (193, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"待支付\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"ord_status\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:45:38');
INSERT INTO `sys_oper_log` VALUES (194, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 待分拣\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"ord_status\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:45:52');
INSERT INTO `sys_oper_log` VALUES (195, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 配送中\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"ord_status\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:46:05');
INSERT INTO `sys_oper_log` VALUES (196, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 已送达\" ],\n  \"dictValue\" : [ \"4\" ],\n  \"dictType\" : [ \"ord_status\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"4\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:46:17');
INSERT INTO `sys_oper_log` VALUES (197, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 已取消\" ],\n  \"dictValue\" : [ \"5\" ],\n  \"dictType\" : [ \"ord_status\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"5\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:46:31');
INSERT INTO `sys_oper_log` VALUES (198, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"退款中\" ],\n  \"dictValue\" : [ \"6\" ],\n  \"dictType\" : [ \"ord_status\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"6\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:46:45');
INSERT INTO `sys_oper_log` VALUES (199, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"已退款\" ],\n  \"dictValue\" : [ \"7\" ],\n  \"dictType\" : [ \"ord_status\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"7\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:46:54');
INSERT INTO `sys_oper_log` VALUES (200, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"正常\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"addr_group_stauts\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:47:42');
INSERT INTO `sys_oper_log` VALUES (201, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 请假\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"addr_group_stauts\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:47:54');
INSERT INTO `sys_oper_log` VALUES (202, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 缺勤\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"addr_group_stauts\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:48:05');
INSERT INTO `sys_oper_log` VALUES (203, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 解除\" ],\n  \"dictValue\" : [ \"4\" ],\n  \"dictType\" : [ \"addr_group_stauts\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"4\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:48:16');
INSERT INTO `sys_oper_log` VALUES (204, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"正常营业\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"addr_stauts\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:49:09');
INSERT INTO `sys_oper_log` VALUES (205, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 休息中\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"addr_stauts\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:49:23');
INSERT INTO `sys_oper_log` VALUES (206, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 解除\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"addr_stauts\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:49:32');
INSERT INTO `sys_oper_log` VALUES (207, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"待处理\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"opinionsta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:49:58');
INSERT INTO `sys_oper_log` VALUES (208, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 处理中\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"opinionsta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:50:09');
INSERT INTO `sys_oper_log` VALUES (209, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 已处理\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"opinionsta\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:50:18');
INSERT INTO `sys_oper_log` VALUES (210, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"丢单\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"opiniontype\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:50:41');
INSERT INTO `sys_oper_log` VALUES (211, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 损坏\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"opiniontype\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:50:50');
INSERT INTO `sys_oper_log` VALUES (212, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 微信\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"ord_pay_mode\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:51:17');
INSERT INTO `sys_oper_log` VALUES (213, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \" 支付宝\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"ord_pay_mode\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:51:27');
INSERT INTO `sys_oper_log` VALUES (214, '字典类型', 3, 'com.ruoyi.web.controller.system.SysDictTypeController.remove()', 'POST', 1, 'admin', '研发部门', '/system/dict/remove', '127.0.0.1', '内网IP', '{\n  \"ids\" : [ \"105\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-07 10:51:37');
INSERT INTO `sys_oper_log` VALUES (215, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/meb_authname', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-06-07 12:29:23');
INSERT INTO `sys_oper_log` VALUES (216, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\n  \"ids\" : [ \"1,2,3,4,5,6,7,8,9,10\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-08 14:39:04');
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\n  \"ids\" : [ \"11,12,13,14,15\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-08 14:39:08');
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  \"tables\" : [ \"meb_opinion_saleafteropr,meb_opinion\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-06-08 14:39:29');
INSERT INTO `sys_oper_log` VALUES (219, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  \"tables\" : [ \"meb_opinion,meb_opinion_saleafteropr\" ]\n}', 'null', 0, NULL, '2020-06-08 14:39:34');
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) COLLATE utf8_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) COLLATE utf8_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) COLLATE utf8_bin DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) COLLATE utf8_bin DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) COLLATE utf8_bin DEFAULT '' COMMENT '手机号码',
  `sex` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '密码',
  `salt` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '盐加密',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-06-08 15:29:19', 'admin', '2018-03-16 11:33:00', 'ry', '2020-06-08 15:29:19', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) COLLATE utf8_bin DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='在线用户记录';

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
