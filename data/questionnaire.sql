/*
 Navicat Premium Data Transfer

 Source Server         : 人事root
 Source Server Type    : MySQL
 Source Server Version : 50649
 Source Host           : 39.101.134.203:3306
 Source Schema         : questionnaire

 Target Server Type    : MySQL
 Target Server Version : 50649
 File Encoding         : 65001

 Date: 19/03/2021 13:13:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登录IP',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES (1, 'admin', 'Admin', 'f029eee832a4b160484f58473b036b3a', 'c9e77d', '/assets/img/avatar.png', 'admin@admin.com', 0, 1615947328, '120.41.171.129', 1492186163, 1615976066, '', 'normal');

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES (1, 1, 'admin', '/vLehKQwmZo.php/addon/install', '插件管理', '{\"name\":\"command\",\"force\":\"0\",\"uid\":\"28140\",\"token\":\"a85e890c-73c6-477c-bcea-51de7e1832f6\",\"version\":\"1.0.6\",\"faversion\":\"1.0.0.20200920_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879285);
INSERT INTO `fa_admin_log` VALUES (2, 1, 'admin', '/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879287);
INSERT INTO `fa_admin_log` VALUES (3, 1, 'admin', '/vLehKQwmZo.php/command/get_field_list', '在线命令管理', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879342);
INSERT INTO `fa_admin_log` VALUES (4, 1, 'admin', '/vLehKQwmZo.php/command/get_field_list', '在线命令管理', '{\"table\":\"question\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879345);
INSERT INTO `fa_admin_log` VALUES (5, 1, 'admin', '/vLehKQwmZo.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"question\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879352);
INSERT INTO `fa_admin_log` VALUES (6, 1, 'admin', '/vLehKQwmZo.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"question\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879354);
INSERT INTO `fa_admin_log` VALUES (7, 1, 'admin', '/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879356);
INSERT INTO `fa_admin_log` VALUES (8, 1, 'admin', '/vLehKQwmZo.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879358);
INSERT INTO `fa_admin_log` VALUES (9, 1, 'admin', '/vLehKQwmZo.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879363);
INSERT INTO `fa_admin_log` VALUES (10, 1, 'admin', '/vLehKQwmZo.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879366);
INSERT INTO `fa_admin_log` VALUES (11, 1, 'admin', '/vLehKQwmZo.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Question.php\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879368);
INSERT INTO `fa_admin_log` VALUES (12, 1, 'admin', '/vLehKQwmZo.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"Question.php\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879371);
INSERT INTO `fa_admin_log` VALUES (13, 1, 'admin', '/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615879372);
INSERT INTO `fa_admin_log` VALUES (14, 1, 'admin', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"150a17aa85eabf9d051ab1932cb99347\",\"username\":\"admin\",\"captcha\":\"zw48\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893148);
INSERT INTO `fa_admin_log` VALUES (15, 1, 'admin', '/public/vLehKQwmZo.php/auth/rule/multi/ids/1', '权限管理 菜单规则', '{\"action\":\"\",\"ids\":\"1\",\"params\":\"ismenu=0\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893199);
INSERT INTO `fa_admin_log` VALUES (16, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893199);
INSERT INTO `fa_admin_log` VALUES (17, 1, 'admin', '/public/vLehKQwmZo.php/auth/rule/multi/ids/2', '权限管理 菜单规则', '{\"action\":\"\",\"ids\":\"2\",\"params\":\"ismenu=0\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893201);
INSERT INTO `fa_admin_log` VALUES (18, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893201);
INSERT INTO `fa_admin_log` VALUES (19, 1, 'admin', '/public/vLehKQwmZo.php/auth/rule/multi/ids/4', '权限管理 菜单规则', '{\"action\":\"\",\"ids\":\"4\",\"params\":\"ismenu=0\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893209);
INSERT INTO `fa_admin_log` VALUES (20, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893209);
INSERT INTO `fa_admin_log` VALUES (21, 1, 'admin', '/public/vLehKQwmZo.php/auth/rule/multi/ids/66', '权限管理 菜单规则', '{\"action\":\"\",\"ids\":\"66\",\"params\":\"ismenu=0\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893215);
INSERT INTO `fa_admin_log` VALUES (22, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893215);
INSERT INTO `fa_admin_log` VALUES (23, 1, 'admin', '/public/vLehKQwmZo.php/auth/rule/multi/ids/3', '权限管理 菜单规则', '{\"action\":\"\",\"ids\":\"3\",\"params\":\"ismenu=0\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893220);
INSERT INTO `fa_admin_log` VALUES (24, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893220);
INSERT INTO `fa_admin_log` VALUES (25, 1, 'admin', '/public/vLehKQwmZo.php/auth/rule/multi/ids/85', '权限管理 菜单规则', '{\"action\":\"\",\"ids\":\"85\",\"params\":\"ismenu=0\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893228);
INSERT INTO `fa_admin_log` VALUES (26, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893228);
INSERT INTO `fa_admin_log` VALUES (27, 1, 'admin', '/public/vLehKQwmZo.php/auth/rule/edit/ids/92?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"d9b5c2146c3434af558241ddc8c3a050\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"question\",\"title\":\"\\u95ee\\u5377\\u8c03\\u67e5\",\"icon\":\"fa fa-question\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"92\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893248);
INSERT INTO `fa_admin_log` VALUES (28, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615893248);
INSERT INTO `fa_admin_log` VALUES (29, 1, 'admin', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"070fc6899cb7adbb4f9c8e1d65343aea\",\"username\":\"admin\",\"captcha\":\"2FXT\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', 1615894964);
INSERT INTO `fa_admin_log` VALUES (30, 1, 'admin', '/public/vLehKQwmZo.php/auth/rule/multi/ids/85', '权限管理 菜单规则', '{\"action\":\"\",\"ids\":\"85\",\"params\":\"ismenu=1\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895258);
INSERT INTO `fa_admin_log` VALUES (31, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895258);
INSERT INTO `fa_admin_log` VALUES (32, 1, 'admin', '/public/vLehKQwmZo.php/command/get_field_list', '在线命令管理', '{\"table\":\"fa_admin\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895269);
INSERT INTO `fa_admin_log` VALUES (33, 1, 'admin', '/public/vLehKQwmZo.php/command/get_field_list', '在线命令管理', '{\"table\":\"question\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895273);
INSERT INTO `fa_admin_log` VALUES (34, 1, 'admin', '/public/vLehKQwmZo.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"question\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895277);
INSERT INTO `fa_admin_log` VALUES (35, 1, 'admin', '/public/vLehKQwmZo.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"question\",\"controller\":\"\",\"model\":\"\",\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895278);
INSERT INTO `fa_admin_log` VALUES (36, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895278);
INSERT INTO `fa_admin_log` VALUES (37, 1, 'admin', '/public/vLehKQwmZo.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895282);
INSERT INTO `fa_admin_log` VALUES (38, 1, 'admin', '/public/vLehKQwmZo.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895285);
INSERT INTO `fa_admin_log` VALUES (39, 1, 'admin', '/public/vLehKQwmZo.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895288);
INSERT INTO `fa_admin_log` VALUES (40, 1, 'admin', '/public/vLehKQwmZo.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Question.php\",\"action\":\"command\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895291);
INSERT INTO `fa_admin_log` VALUES (41, 1, 'admin', '/public/vLehKQwmZo.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Question.php\",\"action\":\"execute\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895292);
INSERT INTO `fa_admin_log` VALUES (42, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615895292);
INSERT INTO `fa_admin_log` VALUES (43, 1, 'admin', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"d5085e3ab06bfc1ec5967ea6991735f4\",\"username\":\"admin\",\"captcha\":\"xswe\"}', '110.87.84.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615944158);
INSERT INTO `fa_admin_log` VALUES (44, 0, 'Unknown', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"a4f0eb804a2f8bf4af3a23a390c08d15\",\"username\":\"admin\",\"captcha\":\"282T\",\"keeplogin\":\"1\"}', '117.30.217.117', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36 SE 2.X MetaSr 1.0', 1615944188);
INSERT INTO `fa_admin_log` VALUES (45, 1, 'admin', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"f1021213ebf1c1b4e3162babc7c833fb\",\"username\":\"admin\",\"captcha\":\"3uxw\"}', '117.30.217.117', 'Mozilla/5.0 (Linux; Android 10; YAL-AL10 Build/HUAWEIYAL-AL10; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/77.0.3865.120 MQQBrowser/6.2 TBS/045513 Mobile Safari/537.36 MMWEBID/2689 MicroMessenger/8.0.1.1841(0x2800015D) Process/tools WeCh', 1615944190);
INSERT INTO `fa_admin_log` VALUES (46, 1, 'admin', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"c320912557c5548a68544c43629d3e63\",\"username\":\"admin\",\"captcha\":\"zyvg\",\"keeplogin\":\"1\"}', '117.30.217.117', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36 SE 2.X MetaSr 1.0', 1615944197);
INSERT INTO `fa_admin_log` VALUES (47, 1, 'admin', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"6d3e63b17365d6ddbcce5061993fcd62\",\"username\":\"admin\",\"captcha\":\"SVFV\",\"keeplogin\":\"1\"}', '117.30.217.117', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36 QBCore/4.0.1316.400 QQBrowser/9.0.2524.400 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2875.116 Safari', 1615944207);
INSERT INTO `fa_admin_log` VALUES (48, 1, 'admin', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"81f411668d23586b5ba7e0318ad6bef3\",\"username\":\"Admin\",\"captcha\":\"T7Nj\",\"keeplogin\":\"1\"}', '117.30.217.117', 'Mozilla/5.0 (Linux; Android 10; OXF-AN10 Build/HUAWEIOXF-AN10; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/77.0.3865.120 MQQBrowser/6.2 TBS/045513 Mobile Safari/537.36 MMWEBID/8366 MicroMessenger/8.0.1.1841(0x2800015D) Process/tools WeCh', 1615944274);
INSERT INTO `fa_admin_log` VALUES (49, 1, 'admin', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"f453434c71a36781d951d2347112f238\",\"username\":\"admin\",\"captcha\":\"lapd\"}', '117.30.217.117', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36 QBCore/4.0.1320.400 QQBrowser/9.0.2524.400 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2875.116 Safari', 1615944818);
INSERT INTO `fa_admin_log` VALUES (50, 1, 'admin', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"6da93c9560d720f5a1730201c372265d\",\"username\":\"admin\",\"captcha\":\"EKQC\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', 1615945665);
INSERT INTO `fa_admin_log` VALUES (51, 0, 'Unknown', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"4f25205ea096872b880619a28d4c8908\",\"username\":\"admin\",\"captcha\":\"xaoa\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947317);
INSERT INTO `fa_admin_log` VALUES (52, 1, 'admin', '/public/vLehKQwmZo.php/index/login?url=%2Fpublic%2FvLehKQwmZo.php%2Fquestion%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/public\\/vLehKQwmZo.php\\/question?ref=addtabs\",\"__token__\":\"525d96c79d36c6876e4cf211ae03e4aa\",\"username\":\"admin\",\"captcha\":\"trn3\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947328);
INSERT INTO `fa_admin_log` VALUES (53, 1, 'admin', '/public/vLehKQwmZo.php/command/get_field_list', '在线命令管理', '{\"table\":\"fa_admin\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947340);
INSERT INTO `fa_admin_log` VALUES (54, 1, 'admin', '/public/vLehKQwmZo.php/command/get_field_list', '在线命令管理', '{\"table\":\"question\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947343);
INSERT INTO `fa_admin_log` VALUES (55, 1, 'admin', '/public/vLehKQwmZo.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"question\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"name\",\"tel\",\"one\",\"two\",\"three\",\"four\",\"five\",\"six\",\"seven\",\"eight\",\"nine\",\"ten\",\"eleven\",\"twelve\",\"thirteen\",\"fourteen\",\"fifteen\",\"sixteen\",\"seventeen\",\"eighteen\",\"nineteen\",\"twenty\",\"twenty_one\",\"twenty_two\",\"twenty_three\",\"grade\",\"add_time\"],\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947365);
INSERT INTO `fa_admin_log` VALUES (56, 1, 'admin', '/public/vLehKQwmZo.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"question\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"name\",\"tel\",\"one\",\"two\",\"three\",\"four\",\"five\",\"six\",\"seven\",\"eight\",\"nine\",\"ten\",\"eleven\",\"twelve\",\"thirteen\",\"fourteen\",\"fifteen\",\"sixteen\",\"seventeen\",\"eighteen\",\"nineteen\",\"twenty\",\"twenty_one\",\"twenty_two\",\"twenty_three\",\"grade\",\"add_time\"],\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947369);
INSERT INTO `fa_admin_log` VALUES (57, 1, 'admin', '/public/vLehKQwmZo.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"crud\",\"isrelation\":\"0\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"question\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"name\",\"tel\",\"one\",\"two\",\"three\",\"four\",\"five\",\"six\",\"seven\",\"eight\",\"nine\",\"ten\",\"eleven\",\"twelve\",\"thirteen\",\"fourteen\",\"fifteen\",\"sixteen\",\"seventeen\",\"eighteen\",\"nineteen\",\"twenty\",\"twenty_one\",\"twenty_two\",\"twenty_three\",\"grade\",\"add_time\"],\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947370);
INSERT INTO `fa_admin_log` VALUES (58, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947370);
INSERT INTO `fa_admin_log` VALUES (59, 1, 'admin', '/public/vLehKQwmZo.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947374);
INSERT INTO `fa_admin_log` VALUES (60, 1, 'admin', '/public/vLehKQwmZo.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947376);
INSERT INTO `fa_admin_log` VALUES (61, 1, 'admin', '/public/vLehKQwmZo.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947377);
INSERT INTO `fa_admin_log` VALUES (62, 1, 'admin', '/public/vLehKQwmZo.php/command/get_controller_list', '在线命令管理', '{\"q_word\":[\"\"],\"pageNumber\":\"2\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947380);
INSERT INTO `fa_admin_log` VALUES (63, 1, 'admin', '/public/vLehKQwmZo.php/command/command/action/command', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Question.php\",\"action\":\"command\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947382);
INSERT INTO `fa_admin_log` VALUES (64, 1, 'admin', '/public/vLehKQwmZo.php/command/command/action/execute', '在线命令管理', '{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"1\",\"controllerfile_text\":\"\",\"controllerfile\":\"Question.php\",\"action\":\"execute\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947383);
INSERT INTO `fa_admin_log` VALUES (65, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947383);
INSERT INTO `fa_admin_log` VALUES (66, 1, 'admin', '/public/vLehKQwmZo.php/auth/rule/multi/ids/85', '权限管理 菜单规则', '{\"action\":\"\",\"ids\":\"85\",\"params\":\"ismenu=0\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947447);
INSERT INTO `fa_admin_log` VALUES (67, 1, 'admin', '/public/vLehKQwmZo.php/index/index', '', '{\"action\":\"refreshmenu\"}', '120.41.171.129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 1615947448);

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '图片帧数',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小',
  `mimetype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) NULL DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '附件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES (1, 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 21859, 'image/png', '', 1499681848, 1499681848, 1499681848, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父组别',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES (1, 0, 'Admin group', '*', 1490883540, 149088354, 'normal');
INSERT INTO `fa_auth_group` VALUES (2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1490883540, 1505465692, 'normal');
INSERT INTO `fa_auth_group` VALUES (3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1490883540, 1502205322, 'normal');
INSERT INTO `fa_auth_group` VALUES (4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1490883540, 1502205350, 'normal');
INSERT INTO `fa_auth_group` VALUES (5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1490883540, 1502205344, 'normal');

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access`  (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID',
  UNIQUE INDEX `uid_group_id`(`uid`, `group_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '权限分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES (1, 1);

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `weigh`(`weigh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '节点表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES (1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', 0, 1497429920, 1615893199, 143, 'normal');
INSERT INTO `fa_auth_rule` VALUES (2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', 0, 1497429920, 1615893201, 137, 'normal');
INSERT INTO `fa_auth_rule` VALUES (3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', 'Category tips', 0, 1497429920, 1615893220, 119, 'normal');
INSERT INTO `fa_auth_rule` VALUES (4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', 0, 1502035509, 1615893209, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', 1, 1497429920, 1497430092, 99, 'normal');
INSERT INTO `fa_auth_rule` VALUES (6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', 1, 1497429920, 1497430683, 60, 'normal');
INSERT INTO `fa_auth_rule` VALUES (7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', 1, 1497429920, 1497430699, 53, 'normal');
INSERT INTO `fa_auth_rule` VALUES (8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', 1, 1497429920, 1497429920, 34, 'normal');
INSERT INTO `fa_auth_rule` VALUES (9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', 1, 1497429920, 1497430320, 118, 'normal');
INSERT INTO `fa_auth_rule` VALUES (10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', 1, 1497429920, 1497430307, 113, 'normal');
INSERT INTO `fa_auth_rule` VALUES (11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', 1, 1497429920, 1497429920, 109, 'normal');
INSERT INTO `fa_auth_rule` VALUES (12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', 1, 1497429920, 1497430581, 104, 'normal');
INSERT INTO `fa_auth_rule` VALUES (13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 136, 'normal');
INSERT INTO `fa_auth_rule` VALUES (14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 135, 'normal');
INSERT INTO `fa_auth_rule` VALUES (15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 133, 'normal');
INSERT INTO `fa_auth_rule` VALUES (16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 134, 'normal');
INSERT INTO `fa_auth_rule` VALUES (17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 132, 'normal');
INSERT INTO `fa_auth_rule` VALUES (18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 52, 'normal');
INSERT INTO `fa_auth_rule` VALUES (19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 51, 'normal');
INSERT INTO `fa_auth_rule` VALUES (20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 50, 'normal');
INSERT INTO `fa_auth_rule` VALUES (21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 49, 'normal');
INSERT INTO `fa_auth_rule` VALUES (22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 48, 'normal');
INSERT INTO `fa_auth_rule` VALUES (23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', 0, 1497429920, 1497429920, 59, 'normal');
INSERT INTO `fa_auth_rule` VALUES (24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 58, 'normal');
INSERT INTO `fa_auth_rule` VALUES (25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 57, 'normal');
INSERT INTO `fa_auth_rule` VALUES (26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 56, 'normal');
INSERT INTO `fa_auth_rule` VALUES (27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 55, 'normal');
INSERT INTO `fa_auth_rule` VALUES (28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 54, 'normal');
INSERT INTO `fa_auth_rule` VALUES (29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 33, 'normal');
INSERT INTO `fa_auth_rule` VALUES (30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 32, 'normal');
INSERT INTO `fa_auth_rule` VALUES (31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 31, 'normal');
INSERT INTO `fa_auth_rule` VALUES (32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 30, 'normal');
INSERT INTO `fa_auth_rule` VALUES (33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 29, 'normal');
INSERT INTO `fa_auth_rule` VALUES (34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 28, 'normal');
INSERT INTO `fa_auth_rule` VALUES (35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', 0, 1497429920, 1497429920, 142, 'normal');
INSERT INTO `fa_auth_rule` VALUES (36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 141, 'normal');
INSERT INTO `fa_auth_rule` VALUES (37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 140, 'normal');
INSERT INTO `fa_auth_rule` VALUES (38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 139, 'normal');
INSERT INTO `fa_auth_rule` VALUES (39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 138, 'normal');
INSERT INTO `fa_auth_rule` VALUES (40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', 0, 1497429920, 1497429920, 117, 'normal');
INSERT INTO `fa_auth_rule` VALUES (41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 116, 'normal');
INSERT INTO `fa_auth_rule` VALUES (42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 115, 'normal');
INSERT INTO `fa_auth_rule` VALUES (43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 114, 'normal');
INSERT INTO `fa_auth_rule` VALUES (44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', 0, 1497429920, 1497429920, 112, 'normal');
INSERT INTO `fa_auth_rule` VALUES (45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 111, 'normal');
INSERT INTO `fa_auth_rule` VALUES (46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 110, 'normal');
INSERT INTO `fa_auth_rule` VALUES (47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', 0, 1497429920, 1497429920, 108, 'normal');
INSERT INTO `fa_auth_rule` VALUES (48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 107, 'normal');
INSERT INTO `fa_auth_rule` VALUES (49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 106, 'normal');
INSERT INTO `fa_auth_rule` VALUES (50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 105, 'normal');
INSERT INTO `fa_auth_rule` VALUES (51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', 0, 1497429920, 1497429920, 103, 'normal');
INSERT INTO `fa_auth_rule` VALUES (52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 102, 'normal');
INSERT INTO `fa_auth_rule` VALUES (53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 101, 'normal');
INSERT INTO `fa_auth_rule` VALUES (54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 100, 'normal');
INSERT INTO `fa_auth_rule` VALUES (55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (59, 'file', 4, 'addon/downloaded', 'Local addon', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (66, 'file', 0, 'user', 'User', 'fa fa-list', '', '', 0, 1516374729, 1615893215, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (85, 'file', 0, 'command', '在线命令管理', 'fa fa-terminal', '', '', 0, 1615879284, 1615947447, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (86, 'file', 85, 'command/index', '查看', 'fa fa-circle-o', '', '', 0, 1615879284, 1615879284, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (87, 'file', 85, 'command/add', '添加', 'fa fa-circle-o', '', '', 0, 1615879284, 1615879284, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (88, 'file', 85, 'command/detail', '详情', 'fa fa-circle-o', '', '', 0, 1615879285, 1615879285, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (89, 'file', 85, 'command/execute', '运行', 'fa fa-circle-o', '', '', 0, 1615879285, 1615879285, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (90, 'file', 85, 'command/del', '删除', 'fa fa-circle-o', '', '', 0, 1615879285, 1615879285, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (91, 'file', 85, 'command/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1615879285, 1615879285, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (92, 'file', 0, 'question', '问卷调查', 'fa fa-question', '', '', 1, 1615879369, 1615893248, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (93, 'file', 92, 'question/index', '查看', 'fa fa-circle-o', '', '', 0, 1615879370, 1615947383, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (94, 'file', 92, 'question/add', '添加', 'fa fa-circle-o', '', '', 0, 1615879370, 1615947383, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (95, 'file', 92, 'question/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1615879370, 1615947383, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (96, 'file', 92, 'question/del', '删除', 'fa fa-circle-o', '', '', 0, 1615879370, 1615947383, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (97, 'file', 92, 'question/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1615879371, 1615947383, 0, 'normal');

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `weigh`(`weigh`, `id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES (1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1495262190, 1495262190, 1, 'normal');
INSERT INTO `fa_category` VALUES (2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1495262244, 1495262244, 2, 'normal');
INSERT INTO `fa_category` VALUES (3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1495262288, 1495262288, 3, 'normal');
INSERT INTO `fa_category` VALUES (4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1495262317, 1495262317, 4, 'normal');
INSERT INTO `fa_category` VALUES (5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1495262336, 1499681850, 5, 'normal');
INSERT INTO `fa_category` VALUES (6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1495262357, 1495262357, 6, 'normal');
INSERT INTO `fa_category` VALUES (7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1495262391, 1495262391, 7, 'normal');
INSERT INTO `fa_category` VALUES (8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1495262424, 1495262424, 8, 'normal');
INSERT INTO `fa_category` VALUES (9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1495262456, 1495262456, 9, 'normal');
INSERT INTO `fa_category` VALUES (10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1495262487, 1495262487, 10, 'normal');
INSERT INTO `fa_category` VALUES (11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1495262515, 1495262515, 11, 'normal');
INSERT INTO `fa_category` VALUES (12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1497015727, 1497015727, 12, 'normal');
INSERT INTO `fa_category` VALUES (13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1497015738, 1497015738, 13, 'normal');

-- ----------------------------
-- Table structure for fa_command
-- ----------------------------
DROP TABLE IF EXISTS `fa_command`;
CREATE TABLE `fa_command`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型',
  `params` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参数',
  `command` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '命令',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '返回结果',
  `executetime` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '执行时间',
  `createtime` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('successed','failured') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'failured' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线命令表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_command
-- ----------------------------
INSERT INTO `fa_command` VALUES (1, 'crud', '[\"--table=question\"]', 'php think crud --table=question', 'Build Successed', 1615879353, 1615879353, 1615879354, 'successed');
INSERT INTO `fa_command` VALUES (2, 'menu', '[\"--controller=Question\"]', 'php think menu --controller=Question', 'Build Successed!', 1615879369, 1615879369, 1615879371, 'successed');
INSERT INTO `fa_command` VALUES (3, 'crud', '[\"--force=1\",\"--table=question\"]', 'php think crud --force=1 --table=question', 'Build Successed', 1615895278, 1615895278, 1615895278, 'successed');
INSERT INTO `fa_command` VALUES (4, 'menu', '[\"--controller=Question\"]', 'php think menu --controller=Question', 'Build Successed!', 1615895292, 1615895292, 1615895292, 'successed');
INSERT INTO `fa_command` VALUES (5, 'crud', '[\"--force=1\",\"--table=question\",\"--fields=id,name,tel,one,two,three,four,five,six,seven,eight,nine,ten,eleven,twelve,thirteen,fourteen,fifteen,sixteen,seventeen,eighteen,nineteen,twenty,twenty_one,twenty_two,twenty_three,grade,add_time\"]', 'php think crud --force=1 --table=question --fields=id,name,tel,one,two,three,four,five,six,seven,eight,nine,ten,eleven,twelve,thirteen,fourteen,fifteen,sixteen,seventeen,eighteen,nineteen,twenty,twenty_one,twenty_two,twenty_three,grade,add_time', 'Build Successed', 1615947370, 1615947370, 1615947370, 'successed');
INSERT INTO `fa_command` VALUES (6, 'menu', '[\"--controller=Question\"]', 'php think menu --controller=Question', 'Build Successed!', 1615947383, 1615947383, 1615947383, 'successed');

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '变量值',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES (1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', '问卷调查', '', 'required', '');
INSERT INTO `fa_config` VALUES (2, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES (3, 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES (4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES (5, 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES (6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES (7, 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES (8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES (9, 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES (10, 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_config` VALUES (11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES (12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES (13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES (14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES (15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES (16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES (17, 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for fa_ems
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '邮箱验证码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_ems
-- ----------------------------

-- ----------------------------
-- Table structure for fa_sms
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '短信验证码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_sms
-- ----------------------------

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类ID(单选)',
  `category_ids` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '价格',
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击',
  `startdate` date NULL DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime(0) NULL DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year NULL DEFAULT NULL COMMENT '年',
  `times` time(0) NULL DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) NULL DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) NULL DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '开关',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '测试表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES (1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1499682285, 1499682526, 1499682526, NULL, 0, 1, 'normal', '1');

-- ----------------------------
-- Table structure for fa_user
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组别ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '余额',
  `score` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '最大连续登录天数',
  `prevtime` int(10) NULL DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `joinip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) NULL DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES (1, 1, 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '', 0, 0, '2017-04-15', '', 0.00, 0, 1, 1, 1516170492, 1516171614, '127.0.0.1', 0, '127.0.0.1', 1491461418, 0, 1516171614, '', 'normal', '');

-- ----------------------------
-- Table structure for fa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '权限节点',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES (1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1515386468, 1516168298, 'normal');

-- ----------------------------
-- Table structure for fa_user_money_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_money_log`;
CREATE TABLE `fa_user_money_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更余额',
  `before` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更前余额',
  `after` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更后余额',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员余额变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for fa_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '标题',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) NULL DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NULL DEFAULT 0 COMMENT '权重',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员规则表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES (1, 0, 'index', '前台', '', 1, 1516168079, 1516168079, 1, 'normal');
INSERT INTO `fa_user_rule` VALUES (2, 0, 'api', 'API接口', '', 1, 1516168062, 1516168062, 2, 'normal');
INSERT INTO `fa_user_rule` VALUES (3, 1, 'user', '会员模块', '', 1, 1515386221, 1516168103, 12, 'normal');
INSERT INTO `fa_user_rule` VALUES (4, 2, 'user', '会员模块', '', 1, 1515386221, 1516168092, 11, 'normal');
INSERT INTO `fa_user_rule` VALUES (5, 3, 'index/user/login', '登录', '', 0, 1515386247, 1515386247, 5, 'normal');
INSERT INTO `fa_user_rule` VALUES (6, 3, 'index/user/register', '注册', '', 0, 1515386262, 1516015236, 7, 'normal');
INSERT INTO `fa_user_rule` VALUES (7, 3, 'index/user/index', '会员中心', '', 0, 1516015012, 1516015012, 9, 'normal');
INSERT INTO `fa_user_rule` VALUES (8, 3, 'index/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 4, 'normal');
INSERT INTO `fa_user_rule` VALUES (9, 4, 'api/user/login', '登录', '', 0, 1515386247, 1515386247, 6, 'normal');
INSERT INTO `fa_user_rule` VALUES (10, 4, 'api/user/register', '注册', '', 0, 1515386262, 1516015236, 8, 'normal');
INSERT INTO `fa_user_rule` VALUES (11, 4, 'api/user/index', '会员中心', '', 0, 1516015012, 1516015012, 10, 'normal');
INSERT INTO `fa_user_rule` VALUES (12, 4, 'api/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 3, 'normal');

-- ----------------------------
-- Table structure for fa_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT 0 COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT 0 COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT 0 COMMENT '变更后积分',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员积分变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for fa_user_token
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token`  (
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员Token表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_token
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `tel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `one` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第一题',
  `two` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第二题',
  `three` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第三题',
  `four` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第四题',
  `five` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第五题',
  `six` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第六题',
  `seven` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第七题',
  `eight` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第八题',
  `nine` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第九题',
  `ten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第十题',
  `eleven` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第十一题',
  `twelve` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第十二题',
  `thirteen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第十三题',
  `fourteen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第十四题',
  `fifteen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第十五题',
  `sixteen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第十六题',
  `seventeen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第十七题',
  `eighteen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第十八题',
  `nineteen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第十九题',
  `twenty` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第二十题',
  `twenty_one` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第二十一题',
  `twenty_two` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第二十二题',
  `twenty_three` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第二十三题',
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `grade` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评估等级',
  `add_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (2, '测试', '15260033666', '利息、股息、转让证券等金融性资产收入', '5万-20万元（不含）人民币', '70%以上', '有，亲朋之间借款', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '一般：对证券期货产品及相关风险具有基本的知识和理解', '除银行活期和定期存款外，我基本没有其他投资经验', '正常', '11至15个', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,复杂金融产品、其它产品或服务', '100万元以上', '1-5年', '0到1年', '融资融券,期货', '大部分投资于A', '产生一定的收益，可以承担一定的投资风险', '一定的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '1-2人', '硕士及以上', '您与配偶均有稳定收入的工作', 'http://localhost/public/img/20210316/1615875066.png', NULL, '2021-03-16 14:11:06');
INSERT INTO `question` VALUES (3, '测试', '15260033666', '利息、股息、转让证券等金融性资产收入', '5万-20万元（不含）人民币', '70%以上', '有，亲朋之间借款', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '一般：对证券期货产品及相关风险具有基本的知识和理解', '除银行活期和定期存款外，我基本没有其他投资经验', '正常', '11至15个', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,复杂金融产品、其它产品或服务', '100万元以上', '1-5年', '0到1年', '融资融券,期货', '大部分投资于A', '产生一定的收益，可以承担一定的投资风险', '一定的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '1-2人', '硕士及以上', '您与配偶均有稳定收入的工作', 'http://localhost/public/img/20210316/1615875254.png', NULL, '2021-03-16 14:14:14');
INSERT INTO `question` VALUES (4, '测试', '15260033666', '利息、股息、转让证券等金融性资产收入', '5万-20万元（不含）人民币', '70%以上', '有，亲朋之间借款', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '一般：对证券期货产品及相关风险具有基本的知识和理解', '除银行活期和定期存款外，我基本没有其他投资经验', '正常', '11至15个', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,复杂金融产品、其它产品或服务', '100万元以上', '1-5年', '0到1年', '融资融券,期货', '大部分投资于A', '产生一定的收益，可以承担一定的投资风险', '一定的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '1-2人', '硕士及以上', '您与配偶均有稳定收入的工作', 'http://localhost/public/img/20210316/1615875369.png', NULL, '2021-03-16 14:16:09');
INSERT INTO `question` VALUES (5, '我的', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '100万-300万元（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,复杂金融产品、其它产品或服务', '30万元-100万元', '10年以上', '无特别要求', '期货,其他产品或服务', '大部分投资于B', '实现资产大幅增长，愿意承担很大的投资风险', '尽可能保证本金安全', '偿付债务', '41-50岁', '5人以上', '大学本科', '有配偶，其中一人有稳定收入的工作', 'http://localhost/public/img/20210316/1615879671.png', NULL, '2021-03-16 15:27:51');
INSERT INTO `question` VALUES (6, '我的', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '100万-300万元（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,复杂金融产品、其它产品或服务', '30万元-100万元', '10年以上', '无特别要求', '期货,其他产品或服务', '大部分投资于B', '实现资产大幅增长，愿意承担很大的投资风险', '尽可能保证本金安全', '偿付债务', '41-50岁', '5人以上', '大学本科', '有配偶，其中一人有稳定收入的工作', 'http://localhost/public/img/20210316/1615879783.png', NULL, '2021-03-16 15:29:43');
INSERT INTO `question` VALUES (7, '我的', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '100万-300万元（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,复杂金融产品、其它产品或服务', '30万元-100万元', '10年以上', '无特别要求', '期货,其他产品或服务', '大部分投资于B', '实现资产大幅增长，愿意承担很大的投资风险', '尽可能保证本金安全', '偿付债务', '41-50岁', '5人以上', '大学本科', '有配偶，其中一人有稳定收入的工作', 'http://localhost/public/img/20210316/1615879821.png', NULL, '2021-03-16 15:30:21');
INSERT INTO `question` VALUES (8, 'ceshi', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元以内', '1-5年', '1到5年', '债券、货币市场基金、债券基金等固定收益类投资品种', '大部分投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '3-4人', '硕士及以上', '单身，但有稳定收入的工作', 'http://39.101.134.203public/img/20210316/1615889609.png', NULL, '2021-03-16 18:13:29');
INSERT INTO `question` VALUES (9, '你是', '18960189610', '工资、劳务报酬', '不超过5万元人民币', '70%以上', '没有', '不超过10万人民币', '现在或此前曾从事金融、经济或财会等与金融产品投资相关的工作超过两年', '有限：基本没有证券期货投资知识', '除银行活期和定期存款外，我基本没有其他投资经验', '太高了', '5个以下', '银行存款,债券、货币市场基金、债券型基金或其它固定收益类产品等', '10万元-30万元', '1年以下', '0到1年', '债券、货币市场基金、债券基金等固定收益类投资品种', '全部投资于A', '资产保值，我不愿意承担任何投资风险', '一定的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '31-40岁', '3-4人', '大学专科', '有配偶，均没有稳定收入的工作或者已退休', 'http://39.101.134.203public/img/20210316/1615889633.png', NULL, '2021-03-16 18:13:53');
INSERT INTO `question` VALUES (10, 'ceshi', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元以内', '1-5年', '1到5年', '债券、货币市场基金、债券基金等固定收益类投资品种', '大部分投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '3-4人', '硕士及以上', '单身，但有稳定收入的工作', 'http://39.101.134.203public/img/20210316/1615889644.png', NULL, '2021-03-16 18:14:04');
INSERT INTO `question` VALUES (11, 'ceshi', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元以内', '1-5年', '1到5年', '债券、货币市场基金、债券基金等固定收益类投资品种', '大部分投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '3-4人', '硕士及以上', '单身，但有稳定收入的工作', 'http://39.101.134.203public/img/20210316/1615889697.png', NULL, '2021-03-16 18:14:57');
INSERT INTO `question` VALUES (12, 'ceshi', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元以内', '1-5年', '1到5年', '债券、货币市场基金、债券基金等固定收益类投资品种', '大部分投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '3-4人', '硕士及以上', '单身，但有稳定收入的工作', 'http://39.101.134.203public/img/20210316/1615889834.png', NULL, '2021-03-16 18:17:14');
INSERT INTO `question` VALUES (13, 'ceshi', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元以内', '1-5年', '1到5年', '债券、货币市场基金、债券基金等固定收益类投资品种', '大部分投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '3-4人', '硕士及以上', '单身，但有稳定收入的工作', 'http://39.101.134.203public/img/20210316/1615889847.png', NULL, '2021-03-16 18:17:27');
INSERT INTO `question` VALUES (14, 'ceshi', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元以内', '1-5年', '1到5年', '债券、货币市场基金、债券基金等固定收益类投资品种', '大部分投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '3-4人', '硕士及以上', '单身，但有稳定收入的工作', 'http://39.101.134.203public/img/20210316/1615889866.png', NULL, '2021-03-16 18:17:46');
INSERT INTO `question` VALUES (15, 'ceshi', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元以内', '1-5年', '1到5年', '债券、货币市场基金、债券基金等固定收益类投资品种', '大部分投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '3-4人', '硕士及以上', '单身，但有稳定收入的工作', 'http://39.101.134.203public/img/20210316/1615890116.png', NULL, '2021-03-16 18:21:56');
INSERT INTO `question` VALUES (16, 'ceshi', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元以内', '1-5年', '1到5年', '债券、货币市场基金、债券基金等固定收益类投资品种', '大部分投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '3-4人', '硕士及以上', '单身，但有稳定收入的工作', 'http://39.101.134.203public/img/20210316/1615890123.png', NULL, '2021-03-16 18:22:03');
INSERT INTO `question` VALUES (17, 'ceshi', '15260032565', '生产经营所得', '20万-70万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '6至10个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元以内', '1-5年', '1到5年', '债券、货币市场基金、债券基金等固定收益类投资品种', '大部分投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '51-60岁', '3-4人', '硕士及以上', '单身，但有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615890285.png', NULL, '2021-03-16 18:24:45');
INSERT INTO `question` VALUES (18, '测试', '15260032555', '无收入来源，生活主要依靠积蓄或社会保障', '20万-70万元（不含）人民币', '70%以上', '有，住房抵押贷款等长期定额债务', '不超过10万人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我基本没有其他投资经验', '偏低', '11至15个', '融资融券,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元-30万元', '1-5年', '无特别要求', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '大部分投资于A', '产生一定的收益，可以承担一定的投资风险', '较大的投资损失', '履行抚养、抚育或赡养义务', '41-50岁', '1-2人', '大学本科', '有配偶，其中一人有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615891616.png', NULL, '2021-03-16 18:46:56');
INSERT INTO `question` VALUES (19, '的s', '15260032555', '生产经营所得', '5万-20万元（不含）人民币', '70%以上', '有，亲朋之间借款', '10万-100万（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '一般：对证券期货产品及相关风险具有基本的知识和理解', '除银行活期和定期存款外，我基本没有其他投资经验', '偏低', '6至10个', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,融资融券', '100万元以上', '5-10年', '无特别要求', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,期货', '全部投资于A', '资产保值，我不愿意承担任何投资风险', '较大的投资损失', '履行抚养、抚育或赡养义务', '31-40岁', '5人以上', '大学专科', '有配偶，均没有稳定收入的工作或者已退休', 'http://39.101.134.203:83/public/public/img/20210316/1615891897.png', NULL, '2021-03-16 18:51:37');
INSERT INTO `question` VALUES (20, '测试', '15260032555', '生产经营所得', '不超过5万元人民币', '30-50%', '有，住房抵押贷款等长期定额债务', '100万-300万元（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '我是一位有经验的投资者，参与过股票、基金等产品的交易，并倾向于自己做出投资决策', '偏高', '6至10个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,期货、期权', '10万元-30万元', '5-10年', '无特别要求', '债券、货币市场基金、债券基金等固定收益类投资品种,期货', '大部分投资于A', '产生较多的收益，可以承担较大的投资风险', '损失可能超过本金', '个体生产经营或证券、期货投资以外的投资行为', '41-50岁', '3-4人', '大学本科', '您与配偶均有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615893060.png', NULL, '2021-03-16 19:11:00');
INSERT INTO `question` VALUES (21, '测试', '15260032565', '利息、股息、转让证券等金融性资产收入', '20万-70万元（不含）人民币', '10%-30%', '没有', '10万-100万（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '我是一位有经验的投资者，参与过股票、基金等产品的交易，并倾向于自己做出投资决策', '偏高', '11至15个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元-30万元', '5-10年', '1到5年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '两种投资各一半', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '41-50岁', '3-4人', '大学本科', '您与配偶均有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615893462.png', NULL, '2021-03-16 19:17:42');
INSERT INTO `question` VALUES (22, '测试', '15260032565', '利息、股息、转让证券等金融性资产收入', '20万-70万元（不含）人民币', '10%-30%', '没有', '10万-100万（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '我是一位有经验的投资者，参与过股票、基金等产品的交易，并倾向于自己做出投资决策', '偏高', '11至15个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元-30万元', '5-10年', '1到5年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '两种投资各一半', '产生较多的收益，可以承担较大的投资风险', '损失可能超过本金', '个体生产经营或证券、期货投资以外的投资行为', '41-50岁', '3-4人', '大学本科', '您与配偶均有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615893474.png', NULL, '2021-03-16 19:17:54');
INSERT INTO `question` VALUES (23, '测试', '15260032565', '利息、股息、转让证券等金融性资产收入', '20万-70万元（不含）人民币', '10%-30%', '没有', '10万-100万（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '我是一位有经验的投资者，参与过股票、基金等产品的交易，并倾向于自己做出投资决策', '偏高', '11至15个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元-30万元', '5-10年', '1到5年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '两种投资各一半', '产生较多的收益，可以承担较大的投资风险', '一定的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '41-50岁', '3-4人', '大学本科', '您与配偶均有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615893489.png', NULL, '2021-03-16 19:18:09');
INSERT INTO `question` VALUES (24, '测试', '15260032565', '利息、股息、转让证券等金融性资产收入', '20万-70万元（不含）人民币', '10%-30%', '没有', '10万-100万（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '我是一位有经验的投资者，参与过股票、基金等产品的交易，并倾向于自己做出投资决策', '偏高', '11至15个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元-30万元', '5-10年', '1到5年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '两种投资各一半', '产生较多的收益，可以承担较大的投资风险', '尽可能保证本金安全', '个体生产经营或证券、期货投资以外的投资行为', '41-50岁', '3-4人', '大学本科', '您与配偶均有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615893496.png', NULL, '2021-03-16 19:18:16');
INSERT INTO `question` VALUES (25, '测试', '15260032565', '利息、股息、转让证券等金融性资产收入', '20万-70万元（不含）人民币', '70%以上', '没有', '10万-100万（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '我是一位有经验的投资者，参与过股票、基金等产品的交易，并倾向于自己做出投资决策', '偏高', '11至15个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元-30万元', '5-10年', '1到5年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '两种投资各一半', '产生较多的收益，可以承担较大的投资风险', '一定的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '41-50岁', '3-4人', '大学本科', '您与配偶均有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615893516.png', NULL, '2021-03-16 19:18:36');
INSERT INTO `question` VALUES (26, '测试', '15260032565', '利息、股息、转让证券等金融性资产收入', '5万-20万元（不含）人民币', '30-50%', '有，住房抵押贷款等长期定额债务', '100万-300万元（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '我是一位有经验的投资者，参与过股票、基金等产品的交易，并倾向于自己做出投资决策', '正常', '6至10个', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '30万元-100万元', '10年以上', '无特别要求', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种', '大部分投资于A', '产生一定的收益，可以承担一定的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '41-50岁', '5人以上', '大学本科', '单身，但有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615893710.png', NULL, '2021-03-16 19:21:50');
INSERT INTO `question` VALUES (27, '陈晓东', '18960189610', '工资、劳务报酬', '不超过5万元人民币', '70%以上', '没有', '不超过10万人民币', '现在或此前曾从事金融、经济或财会等与金融产品投资相关的工作超过两年', '有限：基本没有证券期货投资知识', '除银行活期和定期存款外，我基本没有其他投资经验', '太高了', '5个以下', '银行存款,债券、货币市场基金、债券型基金或其它固定收益类产品等', '10万元以内', '1年以下', '1到5年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种', '大部分投资于A', '资产保值，我不愿意承担任何投资风险', '尽可能保证本金安全', '改善生活', '18-30岁', '1-2人', '高中或以下', '有配偶，其中一人有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615893838.png', NULL, '2021-03-16 19:23:58');
INSERT INTO `question` VALUES (28, '测试', '15260032565', '工资、劳务报酬', '20万-70万元（不含）人民币', '10%-30%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '一般：对证券期货产品及相关风险具有基本的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '11至15个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '30万元-100万元', '5-10年', '无特别要求', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,期货', '两种投资各一半', '产生一定的收益，可以承担一定的投资风险', '一定的投资损失', '履行抚养、抚育或赡养义务', '31-40岁', '5人以上', '大学本科', '您与配偶均有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615894191.png', NULL, '2021-03-16 19:29:51');
INSERT INTO `question` VALUES (29, '测试', '15260032565', '工资、劳务报酬', '20万-70万元（不含）人民币', '10%-30%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '一般：对证券期货产品及相关风险具有基本的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '11至15个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '30万元-100万元', '5-10年', '无特别要求', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,期货', '两种投资各一半', '产生一定的收益，可以承担一定的投资风险', '一定的投资损失', '履行抚养、抚育或赡养义务', '31-40岁', '5人以上', '大学本科', '您与配偶均有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615894224.png', NULL, '2021-03-16 19:30:24');
INSERT INTO `question` VALUES (30, '测试', '15260032565', '工资、劳务报酬', '20万-70万元（不含）人民币', '10%-30%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '一般：对证券期货产品及相关风险具有基本的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '11至15个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '30万元-100万元', '5-10年', '无特别要求', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,期货', '两种投资各一半', '产生一定的收益，可以承担一定的投资风险', '一定的投资损失', '履行抚养、抚育或赡养义务', '31-40岁', '5人以上', '大学本科', '您与配偶均有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210316/1615894226.png', NULL, '2021-03-16 19:30:26');
INSERT INTO `question` VALUES (31, '测试', '15260032565', '工资、劳务报酬', '20万-70万元（不含）人民币', '50-70%', '没有', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '有限：基本没有证券期货投资知识', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '太高了', '16个以上', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,融资融券', '10万元-30万元', '5-10年', '无特别要求', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '全部投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '偿付债务', '51-60岁', '3-4人', '大学专科', '有配偶，均没有稳定收入的工作或者已退休', 'http://39.101.134.203:83/public/public/img/20210316/1615894301.png', NULL, '2021-03-16 19:31:41');
INSERT INTO `question` VALUES (32, '测试', '15260032565', '工资、劳务报酬', '20万-70万元（不含）人民币', '50-70%', '没有', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '有限：基本没有证券期货投资知识', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '太高了', '16个以上', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,融资融券', '10万元-30万元', '5-10年', '无特别要求', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '全部投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '偿付债务', '51-60岁', '3-4人', '大学专科', '有配偶，均没有稳定收入的工作或者已退休', 'http://39.101.134.203:83/public/public/img/20210316/1615894308.png', NULL, '2021-03-16 19:31:48');
INSERT INTO `question` VALUES (33, '测试', '15260032565', '工资、劳务报酬', '20万-70万元（不含）人民币', '50-70%', '没有', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '有限：基本没有证券期货投资知识', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '太高了', '16个以上', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,融资融券', '10万元-30万元', '5-10年', '无特别要求', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '全部投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '偿付债务', '51-60岁', '3-4人', '大学专科', '有配偶，均没有稳定收入的工作或者已退休', 'http://39.101.134.203:83/public/public/img/20210316/1615894378.png', NULL, '2021-03-16 19:32:58');
INSERT INTO `question` VALUES (34, '测试', '15260032565', '出租、出售房地产等非金融性资产收入', '20万-70万元（不含）人民币', '10%以下', '有，信用卡欠款、消费信贷等短期信用债务', '10万-100万（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '偏低', '5个以下', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,融资融券', '10万元-30万元', '10年以上', '1到5年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '大部分投资于B', '产生一定的收益，可以承担一定的投资风险', '较大的投资损失', '改善生活', '41-50岁', '3-4人', '高中或以下', '有配偶，均没有稳定收入的工作或者已退休', 'http://39.101.134.203:83/public/public/img/20210316/1615894426.png', NULL, '2021-03-16 19:33:46');
INSERT INTO `question` VALUES (35, '测试', '15260032565', '出租、出售房地产等非金融性资产收入', '20万-70万元（不含）人民币', '10%以下', '有，信用卡欠款、消费信贷等短期信用债务', '10万-100万（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '偏低', '5个以下', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,融资融券', '10万元-30万元', '10年以上', '1到5年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '大部分投资于B', '产生一定的收益，可以承担一定的投资风险', '较大的投资损失', '改善生活', '41-50岁', '3-4人', '高中或以下', '有配偶，均没有稳定收入的工作或者已退休', 'http://39.101.134.203:83/public/public/img/20210316/1615894439.png', NULL, '2021-03-16 19:33:59');
INSERT INTO `question` VALUES (36, '测试', '15260032565', '出租、出售房地产等非金融性资产收入', '20万-70万元（不含）人民币', '10%以下', '有，信用卡欠款、消费信贷等短期信用债务', '10万-100万（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '偏低', '5个以下', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,融资融券', '10万元-30万元', '10年以上', '1到5年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '大部分投资于B', '产生一定的收益，可以承担一定的投资风险', '较大的投资损失', '改善生活', '41-50岁', '3-4人', '高中或以下', '有配偶，均没有稳定收入的工作或者已退休', 'http://39.101.134.203:83/public/public/img/20210316/1615894462.png', NULL, '2021-03-16 19:34:22');
INSERT INTO `question` VALUES (37, '测试', '15260032565', '出租、出售房地产等非金融性资产收入', '20万-70万元（不含）人民币', '10%以下', '有，信用卡欠款、消费信贷等短期信用债务', '10万-100万（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '偏低', '5个以下', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等,融资融券', '10万元-30万元', '10年以上', '1到5年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,融资融券', '大部分投资于B', '产生一定的收益，可以承担一定的投资风险', '较大的投资损失', '改善生活', '41-50岁', '3-4人', '高中或以下', '有配偶，均没有稳定收入的工作或者已退休', 'http://39.101.134.203:83/public/public/img/20210316/1615894590.png', NULL, '2021-03-16 19:36:30');
INSERT INTO `question` VALUES (38, '范德萨', '15260032555', '利息、股息、转让证券等金融性资产收入', '5万-20万元（不含）人民币', '70%以上', '没有', '300万元人民币以上', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '我是一位有经验的投资者，参与过股票、基金等产品的交易，并倾向于自己做出投资决策', '正常', '5个以下', '债券、货币市场基金、债券型基金或其它固定收益类产品等,复杂金融产品、其它产品或服务', '10万元-30万元', '1-5年', '0到1年', '债券、货币市场基金、债券基金等固定收益类投资品种', '大部分投资于B', '资产保值，我不愿意承担任何投资风险', '损失可能超过本金', '改善生活', '51-60岁', '5人以上', '大学本科', '有配偶，均没有稳定收入的工作或者已退休', 'http://39.101.134.203:83/public/public/img/20210316/1615895436.png', 'C1', '2021-03-16 19:50:36');
INSERT INTO `question` VALUES (39, '张洁', '18606007272', '工资、劳务报酬', '5万-20万元（不含）人民币', '10%以下', '有，住房抵押贷款等长期定额债务', '不超过10万人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '我是一位有经验的投资者，参与过股票、基金等产品的交易，并倾向于自己做出投资决策', '偏低', '5个以下', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元以内', '1年以下', '0到1年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种', '大部分投资于A', '产生一定的收益，可以承担一定的投资风险', '一定的投资损失', '改善生活', '31-40岁', '3-4人', '大学专科', '您与配偶均有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210317/1615944110.png', 'C3', '2021-03-17 09:21:50');
INSERT INTO `question` VALUES (40, '林毅悦', '18250782017', '工资、劳务报酬', '不超过5万元人民币', '10%以下', '没有', '不超过10万人民币', '我不符合以上任何一项描述', '有限：基本没有证券期货投资知识', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '正常', '5个以下', '银行存款,债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '10万元以内', '1-5年', '无特别要求', '债券、货币市场基金、债券基金等固定收益类投资品种,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种', '两种投资各一半', '产生一定的收益，可以承担一定的投资风险', '损失可能超过本金', '改善生活', '18-30岁', '1-2人', '大学专科', '单身，但有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210317/1615944572.png', 'C2', '2021-03-17 09:29:32');
INSERT INTO `question` VALUES (41, '胖虎', '19959304740', '无收入来源，生活主要依靠积蓄或社会保障', '5万-20万元（不含）人民币', '70%以上', '有，信用卡欠款、消费信贷等短期信用债务', '不超过10万人民币', '我不符合以上任何一项描述', '一般：对证券期货产品及相关风险具有基本的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '偏高', '6至10个', '银行存款,债券、货币市场基金、债券型基金或其它固定收益类产品等', '30万元-100万元', '1年以下', '无特别要求', '债券、货币市场基金、债券基金等固定收益类投资品种,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种', '大部分投资于A', '产生一定的收益，可以承担一定的投资风险', '一定的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '18-30岁', '1-2人', '大学专科', '单身，但有稳定收入的工作', 'http://39.101.134.203:83/public/public/img/20210317/1615944693.png', 'C1', '2021-03-17 09:31:33');
INSERT INTO `question` VALUES (42, 'aa', '18259268555', '出租、出售房地产等非金融性资产收入', '70万元人民币以上', '30-50%', '有，信用卡欠款、消费信贷等短期信用债务', '100万-300万元（不含）人民币', '取得证券从业资格、期货从业资格、基金从业资格、注册会计师证书(CPA)或注册金融分析师证书(CFA)中的一项及以上', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '我是一位有经验的投资者，参与过股票、基金等产品的交易，并倾向于自己做出投资决策', '太高了', '6至10个', '债券、货币市场基金、债券型基金或其它固定收益类产品等,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '100万元以上', '1-5年', '无特别要求', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,其他产品或服务', '两种投资各一半', '实现资产大幅增长，愿意承担很大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '41-50岁', '3-4人', '大学专科', '单身，但有稳定收入的工作', NULL, 'C2', '2021-03-17 10:03:50');
INSERT INTO `question` VALUES (43, '韦亮', '18164684540', '工资、劳务报酬', '不超过5万元人民币', '10%-30%', '没有', '不超过10万人民币', '我不符合以上任何一项描述', '有限：基本没有证券期货投资知识', '除银行活期和定期存款外，我基本没有其他投资经验', '正常', '5个以下', '银行存款', '从未从事过金融市场投资', '1年以下', '无特别要求', '期货,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种,其他产品或服务', '大部分投资于B', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '改善生活', '18-30岁', '1-2人', '大学本科', '单身，但有稳定收入的工作', NULL, 'C2', '2021-03-17 19:21:44');
INSERT INTO `question` VALUES (44, '拜拜', '18465655987', '生产经营所得', '20万-70万元（不含）人民币', '30-50%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '已取得金融、经济或财会等与金融产品投资相关专业学士以上学位', '一般：对证券期货产品及相关风险具有基本的知识和理解', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '偏高', '11至15个', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种等', '30万元-100万元', '5-10年', '无特别要求', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种', '全部投资于B', '产生较多的收益，可以承担较大的投资风险', '一定的投资损失', '偿付债务', '41-50岁', '1-2人', '硕士及以上', '单身，但有稳定收入的工作', NULL, 'C1', '2021-03-17 19:28:26');
INSERT INTO `question` VALUES (45, '测试', '18606007272', '工资、劳务报酬', '5万-20万元（不含）人民币', '50-70%', '有，住房抵押贷款等长期定额债务', '10万-100万（不含）人民币', '我不符合以上任何一项描述', '丰富：对证券期货产品及相关风险具有丰富的知识和理解', '我是一位有经验的投资者，参与过股票、基金等产品的交易，并倾向于自己做出投资决策', '偏低', '11至15个', '融资融券', '10万元-30万元', '1-5年', '1到5年', '股票、混合型基金、偏股型基金、股票型基金等权益类投资品种', '两种投资各一半', '产生较多的收益，可以承担较大的投资风险', '较大的投资损失', '个体生产经营或证券、期货投资以外的投资行为', '31-40岁', '3-4人', '大学本科', '您与配偶均有稳定收入的工作', NULL, 'C3', '2021-03-18 10:13:45');
INSERT INTO `question` VALUES (46, '张晶晶', '13682380415', '工资、劳务报酬', '不超过5万元人民币', '10%以下', '没有', '不超过10万人民币', '我不符合以上任何一项描述', '有限：基本没有证券期货投资知识', '除银行活期和定期存款外，我购买过基金、保险等理财产品，但还需要进一步的指导', '太高了', '5个以下', '银行存款,债券、货币市场基金、债券型基金或其它固定收益类产品等', '10万元以内', '1年以下', '无特别要求', '债券、货币市场基金、债券基金等固定收益类投资品种,其他产品或服务,股票、混合型基金、偏股型基金、股票型基金等权益类投资品种', '大部分投资于A', '产生一定的收益，可以承担一定的投资风险', '尽可能保证本金安全', '改善生活', '18-30岁', '1-2人', '大学专科', '有配偶，其中一人有稳定收入的工作', NULL, 'C1', '2021-03-18 15:33:18');

SET FOREIGN_KEY_CHECKS = 1;
