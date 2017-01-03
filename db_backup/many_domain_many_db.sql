/*
Navicat MySQL Data Transfer

Source Server         : Homestead
Source Server Version : 50712
Source Host           : localhost:33060
Source Database       : laravel_test_hanoi

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-01-03 14:36:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sites
-- ----------------------------
DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sites
-- ----------------------------
INSERT INTO `sites` VALUES ('1', '626cf5ea38508c38c9007cd0bcda9b70', '4', 'http://www.yahoo.co.jp/', '11112222', null, '2016-07-22 16:27:20', '2016-07-22 17:38:26', '2016-07-22 17:38:26');
INSERT INTO `sites` VALUES ('2', '64d7080b2ff612bae2cc8925c464020e', '4', 'http://www.yahoo.co.jp/', 'dsdadas', null, '2016-07-22 16:32:57', '2016-07-22 17:38:29', '2016-07-22 17:38:29');
INSERT INTO `sites` VALUES ('3', '5a0ac3a271d237b0382726dc45ae8a89', '4', 'http://www.yahoo.co.jp/', '222', null, '2016-07-22 17:40:54', '2016-07-22 17:40:58', '2016-07-22 17:40:58');
INSERT INTO `sites` VALUES ('4', '0348469ac1f9b27f7241e2cf723eda52', '4', 'http://lpo-client1.wevnal.co.jp/', 'SNS', '5b555905f5bd111e332544d08db55c3d.jpg', '2016-07-22 17:42:36', '2016-09-05 10:31:21', null);
INSERT INTO `sites` VALUES ('5', 'ecf1d288ffc71b2f6ce0ab7563b12f34', '4', 'http://www.yahoo.co.jp/', 'yahoo', 'ba979dab2f6f781059b09d7c8f4475cf.jpg', '2016-07-25 17:10:31', '2016-08-30 11:34:45', '2016-08-30 11:34:45');
INSERT INTO `sites` VALUES ('6', '2398cbdcb6a5dac54a0f37a32ac12123', '4', 'http://gar.wevnal.co.jp/reports/history', 'tool1', null, '2016-08-16 03:42:00', '2016-08-30 11:33:15', '2016-08-30 11:33:15');
INSERT INTO `sites` VALUES ('7', '4fecfa84064ff559aca9165a0ca24ce9', '8', 'http://vnexpress.net/', 'news', 'a8828216b625c3bf1c4fb137ca8ef10a.jpg', '2016-08-24 03:25:14', '2016-08-24 03:25:14', null);
INSERT INTO `sites` VALUES ('8', '7d0036228c050fbf8aba16b5d7583922', '4', 'http://shopdemo.tk/test.php', 'test', 'e8b486ede2675f270b12cdeb32a155ae.jpg', '2016-08-24 06:03:49', '2016-08-30 11:34:30', '2016-08-30 11:34:30');
INSERT INTO `sites` VALUES ('9', '117f75e751ccf46d99a9150a824caa12', '9', 'http://lpo-client1.wevnal.co.jp/', 'tool1', '508e6d237725a57667afed713ebfa1b1.jpg', '2016-08-29 04:25:15', '2016-08-31 09:20:24', '2016-08-31 09:20:24');
INSERT INTO `sites` VALUES ('10', 'f95a088508b3f4881db18ccebe2eed9a', '9', 'http://www.yahoo.co.jp/', 'Yahoo', '69f8beb91f9863f2984fa1dc53470428.jpg', '2016-08-29 04:26:08', '2016-09-05 01:57:27', '2016-09-05 01:57:27');
INSERT INTO `sites` VALUES ('11', 'a2b9d439fbf6a5a82ee420977ed9e57f', '4', 'http://khactung.com/', 'd', '01c545249c1116305f2cccfd675e3920.jpg', '2016-08-31 01:46:28', '2016-08-31 01:46:33', '2016-08-31 01:46:33');
INSERT INTO `sites` VALUES ('12', '963481f593aafbd2bfea87aadbca94d0', '4', 'http://www.yahoo.co.jp/', 'weqweqw', 'd522cf89ab3e17eabf82114f2c9c93fa.jpg', '2016-09-05 01:57:01', '2016-09-05 01:57:01', null);
INSERT INTO `sites` VALUES ('13', '9d9bbec3b046e12cfa391f409787f742', '10', 'http://tagtoru.tokyo/', 'タグトル', '48242ed589039d4677917bd7bed2eef5.jpg', '2016-09-13 10:06:12', '2016-09-13 10:06:12', null);
INSERT INTO `sites` VALUES ('14', '217f1b1d4aa2a3ce9fbfe5f28322bdc0', '10', 'http://tagtoru.tokyo/index2.php', 'タグトル新LP', '9700c7fcc35a831547fa28f0fb2866f4.jpg', '2016-10-05 09:01:27', '2016-10-05 09:01:27', null);

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
INSERT INTO `users` VALUES ('8', 'admin@wevnal.co.jp', 'admin', '株式会社WevNAL', '$2y$10$YOiTz59UyaAS.TsxFHCIM.pjFDkDXyFsiWh1gbJdFNR.I70JColJC', '2', 'TM8ibE5OzjUr6REdLZRnI9jvLjyAsIzyxtHBSGZSizcdaez0BHhpm17sLlZx', null, null, '2016-12-29 17:03:16');
INSERT INTO `users` VALUES ('9', 'vu.thi.my.linh@wevnal.co.jp', 'vu linh', 'wevnal', '$2y$10$S6pKTjgHiFoemfx7AFL.pOIdhsHsVh/FBzOD9MShqp7UC8ZoPQnpi', '1', 'DLK34PFN5Xx2icRSFvSDddPwaX9Rwe1VzW6SaxoI8DPSpN6Xuz5BLpsKXpih', null, '2016-06-10 17:15:43', '2016-06-16 17:22:43');
INSERT INTO `users` VALUES ('10', 'test1@wevnal.co.jp', 'test1', 'wevnal', '$2y$10$5v52sM9SZhhfEN82OghJteJem51pcwr7/ldkJQ2YjDe9OlGCCfdpS', '2', null, '2016-06-16 12:26:40', '2016-06-15 17:37:16', '2016-06-16 12:26:40');
INSERT INTO `users` VALUES ('11', 'y-maeda@wevnal.co.jp', 'Yasunori Maeda', '株式会社WevNAL', '$2y$10$d6zNi6oFOOuSq0A4tUFG6OOggXtalAF39f/dnEttOijkcqlbjgDCG', '1', 'jbHWQg3rTCvCRntFhhk8XrO2iKFLBFR9P7qLtym2e9PQhl0smJYarv70iT2s', '2016-07-13 18:35:23', '2016-07-13 18:34:18', '2016-07-13 18:35:23');
INSERT INTO `users` VALUES ('12', 'y-maeda@wevnal.co.jp', 'Yasunori Maeda', 'WevNAL', '$2y$10$CYEuvG7C7BKrewP36ThwaOFUOoeIXkeLk.PbLuJoMCvFKT4a9XKBe', '1', null, '2016-07-13 18:35:52', '2016-07-13 18:35:47', '2016-07-13 18:35:52');
INSERT INTO `users` VALUES ('13', 'k-akamine@huvrid.co.jp', '赤嶺謙一郎', '株式会社HUVRID', '$2y$10$qvpyPWQmfnhrV48.SiitWultTf0QIODy28.BTGwgz.z7MOmlGJ75i', '2', '8rfpp1BaXTYUaoYTEabJz0EUCT9Jo3Ks3COEVNdQg1RAKtjNkascdYJNew4v', null, '2016-09-13 12:46:17', '2016-09-14 12:26:16');
