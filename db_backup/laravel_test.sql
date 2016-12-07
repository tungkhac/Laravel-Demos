/*
Navicat MySQL Data Transfer

Source Server         : Homestead
Source Server Version : 50712
Source Host           : localhost:33060
Source Database       : laravel_test

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-12-07 11:07:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chats
-- ----------------------------
DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `read_flg` varchar(1000) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chats
-- ----------------------------
INSERT INTO `chats` VALUES ('26', null, 'alo', '_1481082933__1481082725__1481083000_', '2016-12-07 03:56:40', '2016-12-07 03:56:05');
INSERT INTO `chats` VALUES ('27', null, 'blo', '_1481082933__1481082725__1481083000_', '2016-12-07 03:56:40', '2016-12-07 03:56:09');
INSERT INTO `chats` VALUES ('28', null, 'clo', '_1481082933__1481082725__1481083000_', '2016-12-07 03:56:44', '2016-12-07 03:56:44');
INSERT INTO `chats` VALUES ('29', null, '123123', '_1481083000__1481082933__1481082725_', '2016-12-07 03:59:43', '2016-12-07 03:59:17');
INSERT INTO `chats` VALUES ('30', null, 'jkl', '_1481083000__1481082933__1481082725_', '2016-12-07 04:00:19', '2016-12-07 04:00:05');
INSERT INTO `chats` VALUES ('31', null, '\'\\', '_1481082725__1481083000__1481082933_', '2016-12-07 04:00:22', '2016-12-07 04:00:21');
INSERT INTO `chats` VALUES ('32', null, 'gfh', '_1481082933__1481082725__1481083000_', '2016-12-07 04:01:51', '2016-12-07 04:01:50');
INSERT INTO `chats` VALUES ('33', null, ';l;l;', '_1481083000__1481082933__1481082725_', '2016-12-07 04:02:15', '2016-12-07 04:02:14');
INSERT INTO `chats` VALUES ('34', null, 'clo;;;;', '_1481083000__1481082725__1481082933_', '2016-12-07 04:04:42', '2016-12-07 04:04:41');
