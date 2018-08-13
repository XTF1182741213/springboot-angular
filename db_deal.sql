/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : db_deal

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-08-13 23:07:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for deal_item
-- ----------------------------
DROP TABLE IF EXISTS `deal_item`;
CREATE TABLE `deal_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `item_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `item_price` varchar(50) DEFAULT NULL COMMENT '商品价格',
  `store_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  `del_flg` int(1) DEFAULT NULL COMMENT '删除FLG',
  `create_time` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT NULL COMMENT '创建者ID',
  `update_time` varchar(50) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新者ID',
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal_item
-- ----------------------------
INSERT INTO `deal_item` VALUES ('5', 'a', '22', '1', '1', '2018-08-16', '1', '2018-09-12', '0');
INSERT INTO `deal_item` VALUES ('6', 'xxx', '23', '1', '0', '2018-08-13 21:10:26', '1', '2018-08-13 21:10:26', '1');
INSERT INTO `deal_item` VALUES ('7', 'gggg', '2343', '1', '0', '2018-08-13 21:10:26', '1', '2018-08-13 21:10:26', '1');

-- ----------------------------
-- Table structure for deal_order
-- ----------------------------
DROP TABLE IF EXISTS `deal_order`;
CREATE TABLE `deal_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `item_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `item_name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `item_price` varchar(50) DEFAULT NULL COMMENT '商品价格',
  `store_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  `store_name` varchar(50) DEFAULT NULL COMMENT '店铺名称',
  `payment_state` int(1) DEFAULT NULL COMMENT '支付状态',
  `send_state` int(1) DEFAULT NULL COMMENT '发货状态',
  `save_state` int(1) DEFAULT NULL COMMENT '收获状态',
  `order_state` int(1) DEFAULT NULL COMMENT '订单状态',
  `del_flg` int(1) DEFAULT NULL COMMENT '删除FLG',
  `create_time` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT NULL COMMENT '创建者ID',
  `update_time` varchar(50) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新者ID',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal_order
-- ----------------------------
INSERT INTO `deal_order` VALUES ('5', '3', 'b', '34', '0', 'a', '3', '3', '3', '3', '0', '2018-08-12', '1', '2018-08-12', '0');
INSERT INTO `deal_order` VALUES ('6', '6', 'xxx', '23', '1', '店铺111', '1', '1', '1', '1', '1', '2018-08-13 21:10:26', '1', '2018-08-13 21:10:26', '1');
INSERT INTO `deal_order` VALUES ('7', '6', 'xxx', '23', '1', '店铺111', '1', '0', '0', '0', '0', '2018-08-13 21:10:26', '1', '2018-08-13 21:10:26', '1');
INSERT INTO `deal_order` VALUES ('8', '6', 'xxx', '23', '1', '店铺111', '0', '0', '0', '0', '0', '2018-08-13 21:10:26', '1', '2018-08-13 21:10:26', '1');

-- ----------------------------
-- Table structure for deal_store
-- ----------------------------
DROP TABLE IF EXISTS `deal_store`;
CREATE TABLE `deal_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺ID',
  `store_name` varchar(50) DEFAULT NULL COMMENT '店铺名称',
  `money` varchar(255) DEFAULT NULL COMMENT '余额',
  `road_money` varchar(255) DEFAULT NULL COMMENT '未到账的余额',
  `del_flg` int(1) DEFAULT NULL COMMENT '删除FLG',
  `create_time` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT NULL COMMENT '创建者ID',
  `update_time` varchar(50) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新者ID',
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal_store
-- ----------------------------
INSERT INTO `deal_store` VALUES ('1', '店铺111', '10023', '12368', '0', '2016-03-25 17:16:00', '1', '2016-03-25 17:16:00', '1');
INSERT INTO `deal_store` VALUES ('2', '店铺222', '10000', '12345', '0', '2016-03-25 17:16:00', '1', '2016-03-25 17:16:00', '1');
INSERT INTO `deal_store` VALUES ('3', '店铺333', '10000', '12345', '0', '2016-03-25 17:16:00', '1', '2016-03-25 17:16:00', '1');

-- ----------------------------
-- Table structure for deal_user
-- ----------------------------
DROP TABLE IF EXISTS `deal_user`;
CREATE TABLE `deal_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `money` varchar(255) DEFAULT NULL COMMENT '余额',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `status` int(1) DEFAULT NULL COMMENT '身份标识',
  `store_id` int(11) DEFAULT NULL COMMENT '店铺ID',
  `del_flg` int(1) DEFAULT NULL COMMENT '删除FLG',
  `create_time` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT NULL COMMENT '创建者ID',
  `update_time` varchar(50) DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新者ID',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal_user
-- ----------------------------
INSERT INTO `deal_user` VALUES ('1', '99954', 'admin', 'admin', 'admin', '1', '1', '0', '2016-03-25 17:16:00', '1', '2016-03-25 17:16:00', '1');
INSERT INTO `deal_user` VALUES ('2', '100000', 'auqf', 'auqf', 'auqf', '1', '2', '0', '2016-03-25 17:16:00', '1', '2016-03-25 17:16:00', '1');
INSERT INTO `deal_user` VALUES ('3', '100000', 'psz', 'psz', 'psz', '1', '3', '0', '2016-03-25 17:16:00', '1', '2016-03-25 17:16:00', '1');
INSERT INTO `deal_user` VALUES ('4', '100000', 'wx', 'wx', 'wx', '0', null, '0', '2016-03-25 17:16:00', '1', '2016-03-25 17:16:00', '1');
INSERT INTO `deal_user` VALUES ('5', null, 'admin', 'admin', null, null, null, null, null, null, null, null);
