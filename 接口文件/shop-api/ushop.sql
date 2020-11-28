/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : ushop

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-11-21 13:11:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图id',
  `title` varchar(50) NOT NULL COMMENT '轮播图标题',
  `img` varchar(255) NOT NULL COMMENT '轮播图图片地址',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图表';

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('5', 'banner1', '/uploads/banner/a08f78d0-29a2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `banner` VALUES ('13', 'banner2', '/uploads/banner/c13cf350-29a2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `banner` VALUES ('14', 'banner3', '/uploads/banner/c6e5c5c0-29a2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `banner` VALUES ('15', 'banner4', '/uploads/banner/cbe1b660-29a2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `banner` VALUES ('16', 'banner5', '/uploads/banner/e38d6f70-29a2-11eb-845c-3f52349dd5f5.jpg', '1');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车主键',
  `uid` varchar(50) NOT NULL COMMENT '用户id',
  `goodsid` int(11) NOT NULL COMMENT '商品编号',
  `num` tinyint(3) NOT NULL COMMENT '数量',
  `status` tinyint(1) NOT NULL COMMENT '选中状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid` (`uid`,`goodsid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='购物车表';

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '1', '10', '15', '1');
INSERT INTO `cart` VALUES ('2', 'bb2acd10-2b29-11eb-a232-f722e50dd792', '10', '2', '1');
INSERT INTO `cart` VALUES ('3', '1', '18', '1', '1');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级分类编号',
  `catename` varchar(50) NOT NULL COMMENT '分类名称',
  `img` varchar(255) NOT NULL COMMENT '分类图片',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品分类表';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('20', '0', '家用电器', '/uploads/category/2a5a4a90-29b2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('21', '0', '家居', '/uploads/category/4a0a2b30-29b2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('22', '0', '服装', '/uploads/category/98e4c8a0-29b2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('23', '0', '美妆', '/uploads/category/1eba6930-29b3-11eb-845c-3f52349dd5f5.png', '1');
INSERT INTO `category` VALUES ('24', '0', '食品', '/uploads/category/b9c878e0-29b3-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('25', '0', '日用品', '/uploads/category/33288e00-29b4-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('27', '20', '电视', '/uploads/category/863320e0-29b1-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('28', '20', '冰箱', '/uploads/category/c8f5bc30-29b1-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('29', '20', '洗衣机', '/uploads/category/d2289fc0-29b1-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('31', '21', '沙发', '/uploads/category/547603f0-29b2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('32', '21', '茶几', '/uploads/category/5bc9a030-29b2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('33', '22', '男装', '/uploads/category/a1155760-29b2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('34', '22', '女装', '/uploads/category/a91ba1d0-29b2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('35', '22', '童装', '/uploads/category/b0dcccf0-29b2-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('36', '23', '口红', '/uploads/category/303f9450-29b3-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('37', '23', '眼影', '/uploads/category/38e022f0-29b3-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('38', '23', '气垫', '/uploads/category/41d0cd60-29b3-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('39', '23', '防晒', '/uploads/category/48e71280-29b3-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('40', '24', '饼干', '/uploads/category/c6695a10-29b3-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('41', '24', '方便面', '/uploads/category/cf1ed040-29b3-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('42', '24', '饮料', '/uploads/category/d92dbbf0-29b3-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('43', '24', '辣条', '/uploads/category/e253a730-29b3-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('44', '25', '牙刷', '/uploads/category/40069f40-29b4-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('45', '25', '牙膏', '/uploads/category/471c2110-29b4-11eb-845c-3f52349dd5f5.jpg', '1');
INSERT INTO `category` VALUES ('46', '25', '洗发水', '/uploads/category/5744a260-29b4-11eb-845c-3f52349dd5f5.jpg', '1');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `first_cateid` smallint(5) unsigned NOT NULL COMMENT '一级分类编号',
  `second_cateid` smallint(6) NOT NULL COMMENT '二级分类编号',
  `goodsname` varchar(100) NOT NULL COMMENT '商品名称',
  `price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `market_price` decimal(10,2) NOT NULL COMMENT '市场价格',
  `img` varchar(255) NOT NULL COMMENT '商品图片',
  `description` text COMMENT '商品描述',
  `specsid` int(11) NOT NULL COMMENT '规格id',
  `specsattr` varchar(255) NOT NULL COMMENT '规则属性值',
  `isnew` tinyint(1) NOT NULL COMMENT '是否新品1是2不是',
  `ishot` tinyint(1) NOT NULL COMMENT '是否热卖1是2不是',
  `status` tinyint(1) NOT NULL COMMENT '状态1启用2禁用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品表';

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('10', '20', '27', 'TCL液晶电视', '1399.00', '1588.00', '/uploads/e96175f0-29b5-11eb-845c-3f52349dd5f5.jpg', '<p>good</p>', '28', '24寸,26寸,28寸', '1', '1', '1');
INSERT INTO `goods` VALUES ('11', '20', '28', '荣盛冰箱', '5678.00', '4567.00', '/uploads/164e77c0-29b6-11eb-845c-3f52349dd5f5.jpg', '<p>共同热</p>', '30', '双开门,单开门', '2', '1', '1');
INSERT INTO `goods` VALUES ('12', '20', '29', '海尔洗衣机', '1234.00', '1235.00', '/uploads/3ba296f0-29b6-11eb-845c-3f52349dd5f5.jpg', '<p>容易好吧</p>', '31', '滚筒,自动', '2', '2', '1');
INSERT INTO `goods` VALUES ('13', '21', '31', '贼舒服牌沙发', '3456.00', '2345.00', '/uploads/5cbd7940-29b6-11eb-845c-3f52349dd5f5.jpg', '<p>热热热热热</p>', '29', '单人,多人', '2', '1', '1');
INSERT INTO `goods` VALUES ('14', '21', '32', '单人小茶几', '345.00', '456.00', '/uploads/80b786b0-29b6-11eb-845c-3f52349dd5f5.jpg', '<p>555555</p>', '29', '单人', '2', '2', '1');
INSERT INTO `goods` VALUES ('15', '22', '33', '七匹狼', '34.00', '23.00', '/uploads/97d04e90-29b6-11eb-845c-3f52349dd5f5.jpg', '<p>666</p>', '32', 'L,XL,XXL', '1', '2', '1');
INSERT INTO `goods` VALUES ('16', '22', '34', '艾莱依', '5678.00', '5679.00', '/uploads/b1cb4ed0-29b6-11eb-845c-3f52349dd5f5.jpg', '<p>66666666666</p>', '32', 'S,M,L,XL', '1', '1', '1');
INSERT INTO `goods` VALUES ('17', '24', '41', '浪师傅', '34.00', '56.00', '/uploads/cf554230-29b6-11eb-845c-3f52349dd5f5.jpg', '<p>体育in不不错</p>', '26', '香辣,红烧,酸菜,小鸡炖蘑菇', '1', '1', '1');
INSERT INTO `goods` VALUES ('18', '20', '27', '海尔电视', '1234.00', '2345.00', '/uploads/6e7604c0-2b48-11eb-a232-f722e50dd792.jpg', '<p>真的特别<img class=\"eleImg\" style=\"\" src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[[舔屏]]\">好用<br></p>', '28', '24寸,26寸,28寸', '1', '1', '1');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL COMMENT '用户编号',
  `phone` char(11) NOT NULL COMMENT '手机号',
  `nickname` varchar(50) NOT NULL COMMENT '昵称',
  `password` char(32) NOT NULL COMMENT '密码',
  `randstr` char(5) NOT NULL COMMENT '密码随机串',
  `addtime` char(13) NOT NULL COMMENT '注册时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员表';

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', '1', '17610097507', '试试1', '202de405023be9ccbee1839d67230416', 'cQO0b', '123456', '2');
INSERT INTO `member` VALUES ('2', 'bb2acd10-2b29-11eb-a232-f722e50dd792', '12345678909', 'wer', '652514af4e5618490af72d6d290b1291', 'nZQLv', '1605874379873', '1');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `pid` smallint(6) NOT NULL COMMENT '上级菜单编号',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(100) NOT NULL COMMENT '菜单图标',
  `type` tinyint(1) NOT NULL COMMENT '菜单类型1目录2菜单',
  `url` varchar(100) NOT NULL COMMENT '菜单地址',
  `status` tinyint(1) NOT NULL COMMENT '菜单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='后台菜单权限表';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('11', '0', '系统管理', 'el-icon-setting', '1', '', '1');
INSERT INTO `menu` VALUES ('12', '0', '商城管理', 'el-icon-goods', '1', '', '1');
INSERT INTO `menu` VALUES ('13', '11', '菜单管理', '', '2', '/menu', '1');
INSERT INTO `menu` VALUES ('14', '11', '角色管理', '', '2', '/role', '1');
INSERT INTO `menu` VALUES ('15', '11', '管理员管理', '', '2', '/user', '1');
INSERT INTO `menu` VALUES ('16', '12', '商品分类', '', '2', '/cate', '1');
INSERT INTO `menu` VALUES ('17', '12', '商品规格', '', '2', '/specs', '1');
INSERT INTO `menu` VALUES ('18', '12', '商品管理', '', '2', '/goods', '1');
INSERT INTO `menu` VALUES ('19', '12', '会员管理', '', '2', '/member', '1');
INSERT INTO `menu` VALUES ('20', '12', '轮播图管理', '', '2', '/banner', '1');
INSERT INTO `menu` VALUES ('21', '12', '活动列表', '', '2', '/seck', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `rolename` varchar(100) NOT NULL COMMENT '角色名称',
  `menus` varchar(255) NOT NULL COMMENT '菜单权限 存放的是菜单编号，用逗号隔开',
  `status` tinyint(1) NOT NULL COMMENT '角色状态1正常2禁用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='后台用户角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('4', '普通管理员', '12,16,19,20', '1');
INSERT INTO `role` VALUES ('5', '超级管理员', '11,13,14,15,12,16,17,18,19,20,21', '1');

-- ----------------------------
-- Table structure for seckill
-- ----------------------------
DROP TABLE IF EXISTS `seckill`;
CREATE TABLE `seckill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '秒杀表id',
  `title` varchar(100) NOT NULL COMMENT '活动名称',
  `begintime` char(13) NOT NULL COMMENT '秒杀开始时间',
  `endtime` char(13) NOT NULL COMMENT '秒杀结束时间',
  `first_cateid` smallint(5) NOT NULL COMMENT '商品一级分类编号',
  `second_cateid` smallint(5) NOT NULL COMMENT '商品二级分类编号',
  `goodsid` int(11) NOT NULL COMMENT '商品编号',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='限时秒杀活动表';

-- ----------------------------
-- Records of seckill
-- ----------------------------

-- ----------------------------
-- Table structure for specs
-- ----------------------------
DROP TABLE IF EXISTS `specs`;
CREATE TABLE `specs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格id',
  `specsname` varchar(50) NOT NULL COMMENT '规格名称',
  `status` tinyint(1) NOT NULL COMMENT '规格状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品规格表';

-- ----------------------------
-- Records of specs
-- ----------------------------
INSERT INTO `specs` VALUES ('25', '软硬程度', '1');
INSERT INTO `specs` VALUES ('26', '口味', '1');
INSERT INTO `specs` VALUES ('27', '洗发作用', '1');
INSERT INTO `specs` VALUES ('28', '电视型号', '1');
INSERT INTO `specs` VALUES ('29', '沙发型号', '1');
INSERT INTO `specs` VALUES ('30', '冰箱型号', '1');
INSERT INTO `specs` VALUES ('31', '洗衣机规格', '1');
INSERT INTO `specs` VALUES ('32', '服装型号', '1');
INSERT INTO `specs` VALUES ('33', '口红颜色', '1');
INSERT INTO `specs` VALUES ('34', '眼影规格', '1');
INSERT INTO `specs` VALUES ('35', '饮料规格', '1');

-- ----------------------------
-- Table structure for specs_attr
-- ----------------------------
DROP TABLE IF EXISTS `specs_attr`;
CREATE TABLE `specs_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格项编号',
  `specsid` int(11) NOT NULL COMMENT '规格的specsid',
  `specsval` varchar(50) NOT NULL COMMENT '规格值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品规格明细表';

-- ----------------------------
-- Records of specs_attr
-- ----------------------------
INSERT INTO `specs_attr` VALUES ('80', '25', '软毛');
INSERT INTO `specs_attr` VALUES ('81', '25', '硬毛');
INSERT INTO `specs_attr` VALUES ('82', '26', '香辣');
INSERT INTO `specs_attr` VALUES ('83', '26', '红烧');
INSERT INTO `specs_attr` VALUES ('84', '26', '酸菜');
INSERT INTO `specs_attr` VALUES ('85', '26', '小鸡炖蘑菇');
INSERT INTO `specs_attr` VALUES ('86', '27', '去屑');
INSERT INTO `specs_attr` VALUES ('87', '27', '柔顺');
INSERT INTO `specs_attr` VALUES ('88', '28', '24寸');
INSERT INTO `specs_attr` VALUES ('89', '28', '26寸');
INSERT INTO `specs_attr` VALUES ('90', '28', '28寸');
INSERT INTO `specs_attr` VALUES ('91', '29', '双人');
INSERT INTO `specs_attr` VALUES ('92', '29', '单人');
INSERT INTO `specs_attr` VALUES ('93', '29', '多人');
INSERT INTO `specs_attr` VALUES ('94', '30', '双开门');
INSERT INTO `specs_attr` VALUES ('95', '30', '单开门');
INSERT INTO `specs_attr` VALUES ('96', '30', '大冰柜');
INSERT INTO `specs_attr` VALUES ('97', '31', '滚筒');
INSERT INTO `specs_attr` VALUES ('98', '31', '自动');
INSERT INTO `specs_attr` VALUES ('99', '32', 'S');
INSERT INTO `specs_attr` VALUES ('100', '32', 'M');
INSERT INTO `specs_attr` VALUES ('101', '32', 'L');
INSERT INTO `specs_attr` VALUES ('102', '32', 'XL');
INSERT INTO `specs_attr` VALUES ('103', '32', 'XXL');
INSERT INTO `specs_attr` VALUES ('104', '33', '姨妈红');
INSERT INTO `specs_attr` VALUES ('105', '33', '芭比粉');
INSERT INTO `specs_attr` VALUES ('106', '33', '橙色');
INSERT INTO `specs_attr` VALUES ('107', '33', '紫色');
INSERT INTO `specs_attr` VALUES ('108', '34', '24色');
INSERT INTO `specs_attr` VALUES ('109', '34', '12色');
INSERT INTO `specs_attr` VALUES ('110', '34', '6色');
INSERT INTO `specs_attr` VALUES ('111', '35', '150ml');
INSERT INTO `specs_attr` VALUES ('112', '35', '560ml');
INSERT INTO `specs_attr` VALUES ('113', '35', '1L');
INSERT INTO `specs_attr` VALUES ('114', '35', '2L');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '住建',
  `uid` varchar(50) NOT NULL COMMENT '管理员编号',
  `roleid` smallint(5) NOT NULL COMMENT '角色编号',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `randstr` char(5) NOT NULL COMMENT '随机加密串',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='后台管理员用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8', '9bfdb340-2803-11eb-a01a-7318d74d4e17', '4', 'root', '19c8cd7e772d58d8899e1e53e158ce3e', 'fzHrG', '1');
INSERT INTO `user` VALUES ('9', 'a2cb7db0-2803-11eb-a01a-7318d74d4e17', '5', 'admin', '6d6185c2923452d4cfe030cf1dd3f6c9', 'DLE9F', '1');
