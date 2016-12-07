/*
Navicat MySQL Data Transfer

Source Server         : Homestead
Source Server Version : 50712
Source Host           : localhost:33060
Source Database       : laravel_test

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-12-07 12:04:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chats
-- ----------------------------
DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `creater` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `read_flg` varchar(1000) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chats
-- ----------------------------
INSERT INTO `chats` VALUES ('36', null, '1481082725', 'fuck all', '_1481083000__1481086812__1481082933__1481082725_', '2016-12-07 05:03:20', '2016-12-07 05:03:19');
INSERT INTO `chats` VALUES ('37', null, '1481086812', 'fuck you', '_1481082725__1481083000__1481086812__1481082933_', '2016-12-07 05:03:28', '2016-12-07 05:03:26');
INSERT INTO `chats` VALUES ('38', null, '1481082933', 'what the hell??', '_1481086812__1481083000__1481082933__1481082725_', '2016-12-07 05:03:35', '2016-12-07 05:03:35');
