/*
Navicat MySQL Data Transfer

Source Server         : Homestead
Source Server Version : 50712
Source Host           : localhost:33060
Source Database       : laravel_test

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-01-03 16:24:14
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chats
-- ----------------------------
INSERT INTO `chats` VALUES ('36', null, '1481082725', 'fuck all', '_1481083000__1481086812__1481082933__1481082725__1481091269__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 05:03:19');
INSERT INTO `chats` VALUES ('37', null, '1481086812', 'fuck you', '_1481082725__1481083000__1481086812__1481082933__1481091269__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 05:03:26');
INSERT INTO `chats` VALUES ('38', null, '1481082933', 'what the hell??', '_1481086812__1481083000__1481082933__1481082725__1481091269__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 05:03:35');
INSERT INTO `chats` VALUES ('39', null, '1481082725', 'anh yêu em!!', '_1481086812__1481082725__1481082933__1481083000__1481091269__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 05:05:21');
INSERT INTO `chats` VALUES ('40', null, '1481086812', 'em cũng yêu anh', '_1481083000__1481082933__1481082725__1481086812__1481091269__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 05:05:28');
INSERT INTO `chats` VALUES ('41', null, '1481082933', 't bị gay...', '_1481083000__1481086812__1481082725__1481082933__1481091269__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 05:05:34');
INSERT INTO `chats` VALUES ('42', null, '1481086812', 'd', '_1481086812__1481083000__1481082933__1481082725__1481091269__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 06:13:34');
INSERT INTO `chats` VALUES ('43', null, '1481083000', ':P', '_1481082725__1481082933__1481083000__1481091269__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 06:13:55');
INSERT INTO `chats` VALUES ('44', null, '1481082725', 's', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 06:14:47');
INSERT INTO `chats` VALUES ('45', null, '1481082725', 'g', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 06:14:49');
INSERT INTO `chats` VALUES ('46', null, '1481082725', 'g', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 06:14:53');
INSERT INTO `chats` VALUES ('47', null, '1481082725', 'd', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:29:31');
INSERT INTO `chats` VALUES ('48', null, '1481082725', 'd', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:33:00');
INSERT INTO `chats` VALUES ('49', null, '1481082725', 'k', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:34:30');
INSERT INTO `chats` VALUES ('50', null, '1481082725', 'sdf', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:39:10');
INSERT INTO `chats` VALUES ('51', null, '1481082725', 'đ', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:39:54');
INSERT INTO `chats` VALUES ('52', null, '1481082725', 'đ', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:39:56');
INSERT INTO `chats` VALUES ('53', null, '1481082725', 'bb', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:41:08');
INSERT INTO `chats` VALUES ('54', null, '1481082725', 'ff', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:50:52');
INSERT INTO `chats` VALUES ('55', null, '1481097072', 'ss', '_1481082725__1481097072__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:51:17');
INSERT INTO `chats` VALUES ('56', null, '1481082725', 'ád', '_1481097072__1481082725__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:51:19');
INSERT INTO `chats` VALUES ('57', null, '1481097072', '23424', '_1481097072__1481082725__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:51:24');
INSERT INTO `chats` VALUES ('58', null, '1481097072', 'hà nội', '_1481097072__1481082725__1482897499__1482897511_', '2016-12-28 03:58:32', '2016-12-07 07:52:42');
INSERT INTO `chats` VALUES ('59', null, '1482897499', 'hi', '_1482897499__1482897511_', '2016-12-28 03:58:36', '2016-12-28 03:58:35');
INSERT INTO `chats` VALUES ('60', null, '1482897511', 'im', '_1482897511__1482897499_', '2016-12-28 03:58:42', '2016-12-28 03:58:41');
INSERT INTO `chats` VALUES ('61', null, '1482897499', 'ghj', '_1482897511__1482897499_', '2016-12-28 03:58:47', '2016-12-28 03:58:46');
INSERT INTO `chats` VALUES ('62', null, '1482897511', 'hhh', '_1482897499__1482897511_', '2016-12-28 03:58:51', '2016-12-28 03:58:50');
INSERT INTO `chats` VALUES ('63', null, '1482897499', 'hú hú', '_1482897511__1482897499_', '2016-12-28 03:58:59', '2016-12-28 03:58:59');
INSERT INTO `chats` VALUES ('64', null, '1482897511', 'há há', '_1482897499__1482897511_', '2016-12-28 03:59:05', '2016-12-28 03:59:05');
INSERT INTO `chats` VALUES ('65', null, '1482897499', '122', '_1482897499_', '2016-12-28 07:05:50', '2016-12-28 07:05:49');
INSERT INTO `chats` VALUES ('66', null, '1482897499', '456', '_1482897499_', '2016-12-28 07:05:57', '2016-12-28 07:05:56');
INSERT INTO `chats` VALUES ('67', null, '1482897499', '4rf', '_1482897499_', '2016-12-28 07:06:20', '2016-12-28 07:06:20');
INSERT INTO `chats` VALUES ('68', null, '1482897499', 'kl;kl', '_1482897499_', '2016-12-28 07:06:45', '2016-12-28 07:06:45');
INSERT INTO `chats` VALUES ('69', null, '1482897499', 'kl;', '_1482897499_', '2016-12-28 07:07:23', '2016-12-28 07:07:23');
INSERT INTO `chats` VALUES ('70', null, '1482897499', 'l;l; ươ ô', '_1482897499_', '2016-12-28 07:07:29', '2016-12-28 07:07:28');
INSERT INTO `chats` VALUES ('71', null, '1482897499', 'gh', '_1482897499_', '2016-12-29 02:46:51', '2016-12-29 02:46:51');
INSERT INTO `chats` VALUES ('72', null, '1482897499', 'd', '_1482897499_', '2016-12-29 14:13:48', '2016-12-29 14:13:48');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `authority` int(2) NOT NULL DEFAULT '1',
  `remember_token` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('8', 'admin@wevnal.co.jp', 'admin', '株式会社WevNAL', '$2y$10$YOiTz59UyaAS.TsxFHCIM.pjFDkDXyFsiWh1gbJdFNR.I70JColJC', '2', 'VnbfBtNQCapk6bvXYht6AgGGQoKdjQWs6Zjas3j63ZRPxSaSkyFS287P6VHW', null, null, '2017-01-03 16:09:10');
INSERT INTO `users` VALUES ('9', 'vu.thi.my.linh@wevnal.co.jp', 'vu linh', 'wevnal', '$2y$10$S6pKTjgHiFoemfx7AFL.pOIdhsHsVh/FBzOD9MShqp7UC8ZoPQnpi', '1', 'DLK34PFN5Xx2icRSFvSDddPwaX9Rwe1VzW6SaxoI8DPSpN6Xuz5BLpsKXpih', null, '2016-06-10 17:15:43', '2016-06-16 17:22:43');
INSERT INTO `users` VALUES ('10', 'test1@wevnal.co.jp', 'test1', 'wevnal', '$2y$10$5v52sM9SZhhfEN82OghJteJem51pcwr7/ldkJQ2YjDe9OlGCCfdpS', '2', null, '2016-06-16 12:26:40', '2016-06-15 17:37:16', '2016-06-16 12:26:40');
INSERT INTO `users` VALUES ('11', 'y-maeda@wevnal.co.jp', 'Yasunori Maeda', '株式会社WevNAL', '$2y$10$d6zNi6oFOOuSq0A4tUFG6OOggXtalAF39f/dnEttOijkcqlbjgDCG', '1', 'jbHWQg3rTCvCRntFhhk8XrO2iKFLBFR9P7qLtym2e9PQhl0smJYarv70iT2s', '2016-07-13 18:35:23', '2016-07-13 18:34:18', '2016-07-13 18:35:23');
INSERT INTO `users` VALUES ('12', 'y-maeda@wevnal.co.jp', 'Yasunori Maeda', 'WevNAL', '$2y$10$CYEuvG7C7BKrewP36ThwaOFUOoeIXkeLk.PbLuJoMCvFKT4a9XKBe', '1', null, '2016-07-13 18:35:52', '2016-07-13 18:35:47', '2016-07-13 18:35:52');
INSERT INTO `users` VALUES ('13', 'k-akamine@huvrid.co.jp', '赤嶺謙一郎', '株式会社HUVRID', '$2y$10$qvpyPWQmfnhrV48.SiitWultTf0QIODy28.BTGwgz.z7MOmlGJ75i', '2', '8rfpp1BaXTYUaoYTEabJz0EUCT9Jo3Ks3COEVNdQg1RAKtjNkascdYJNew4v', null, '2016-09-13 12:46:17', '2016-09-14 12:26:16');