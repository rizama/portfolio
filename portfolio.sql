/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100213
 Source Host           : localhost:3306
 Source Schema         : portfolio

 Target Server Type    : MariaDB
 Target Server Version : 100213
 File Encoding         : 65001

 Date: 24/06/2019 08:42:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permalink` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tabel` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `aksi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kolom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `orderby` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sub_query_1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sql_where` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keterangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `method_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `responses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hit` int(11) NULL DEFAULT NULL,
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_at` datetime(0) NULL DEFAULT NULL,
  `email_recipient` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_cc_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_sent` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cc_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES (1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-06-16 10:24:59', NULL);

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `useragent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_users` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
INSERT INTO `cms_logs` VALUES (1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-06-16 10:25:27', NULL);
INSERT INTO `cms_logs` VALUES (2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-06-16 10:26:16', NULL);
INSERT INTO `cms_logs` VALUES (3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-06-16 10:27:11', NULL);
INSERT INTO `cms_logs` VALUES (4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-06/profile_job.jpg</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>admin@rizkysamp.site</td></tr><tr><td>password</td><td>$2y$10$AW7mLUpAG9Ie.r87r18q1uiqzS0n9paVNtl7B6HNfBtwTsyeVMfVS</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-06-16 10:27:40', NULL);
INSERT INTO `cms_logs` VALUES (5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@rizkysamp.site logout', '', 1, '2019-06-16 10:27:46', NULL);
INSERT INTO `cms_logs` VALUES (6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@rizkysamp.site login with IP Address 127.0.0.1', '', 1, '2019-06-16 10:27:55', NULL);
INSERT INTO `cms_logs` VALUES (7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Educations at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>educations</td><td>Educations</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2019-06-16 10:31:40', NULL);
INSERT INTO `cms_logs` VALUES (8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Educations at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminEducations1ControllerGetIndex</td><td>educations</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2019-06-16 10:32:07', NULL);
INSERT INTO `cms_logs` VALUES (9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Educations at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-06-16 10:32:22', NULL);
INSERT INTO `cms_logs` VALUES (10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Experiences at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminExperiencesControllerGetIndex</td><td>experiences</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-06-16 10:36:12', NULL);
INSERT INTO `cms_logs` VALUES (11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Profiles at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminProfiles1ControllerGetIndex</td><td>profiles</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-06-16 11:53:41', NULL);
INSERT INTO `cms_logs` VALUES (12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Skills at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminSkillsControllerGetIndex</td><td>skills</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-06-16 11:54:01', NULL);
INSERT INTO `cms_logs` VALUES (13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Works at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminWorksControllerGetIndex</td><td>works</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-06-16 11:55:09', NULL);
INSERT INTO `cms_logs` VALUES (14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/profiles/add-save', 'Add New Data Rizky at profiles', '', 1, '2019-06-16 11:56:16', NULL);
INSERT INTO `cms_logs` VALUES (15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/educations/add-save', 'Add New Data BACHELOR DEGREE - UNIVERSITAS ISLAM NEGERI SGD BANDUNG at educations', '', 1, '2019-06-16 11:57:53', NULL);
INSERT INTO `cms_logs` VALUES (16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/educations/add-save', 'Add New Data Sekolah Menengah Kejuruan Negeri 4 Bandung at educations', '', 1, '2019-06-16 11:59:13', NULL);
INSERT INTO `cms_logs` VALUES (17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/experiences/add-save', 'Add New Data Web Developer - Technoline Indonesia at experiences', '', 1, '2019-06-16 12:45:33', NULL);
INSERT INTO `cms_logs` VALUES (18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data Python at skills', '', 1, '2019-06-16 13:15:07', NULL);
INSERT INTO `cms_logs` VALUES (19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data PHP at skills', '', 1, '2019-06-16 13:15:23', NULL);
INSERT INTO `cms_logs` VALUES (20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data Javascipt at skills', '', 1, '2019-06-16 13:15:48', NULL);
INSERT INTO `cms_logs` VALUES (21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data CSS at skills', '', 1, '2019-06-16 13:16:01', NULL);
INSERT INTO `cms_logs` VALUES (22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data HTML at skills', '', 1, '2019-06-16 13:16:16', NULL);
INSERT INTO `cms_logs` VALUES (23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data Laravel at skills', '', 1, '2019-06-16 13:18:56', NULL);
INSERT INTO `cms_logs` VALUES (24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data Django at skills', '', 1, '2019-06-16 13:19:03', NULL);
INSERT INTO `cms_logs` VALUES (25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data SQL Database at skills', '', 1, '2019-06-16 13:19:21', NULL);
INSERT INTO `cms_logs` VALUES (26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data Ajax at skills', '', 1, '2019-06-16 13:19:30', NULL);
INSERT INTO `cms_logs` VALUES (27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data Boostrap at skills', '', 1, '2019-06-16 13:19:40', NULL);
INSERT INTO `cms_logs` VALUES (28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data GIT at skills', '', 1, '2019-06-16 13:19:59', NULL);
INSERT INTO `cms_logs` VALUES (29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/1', 'Update data Python at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>4</td><td>3</td></tr></tbody></table>', 1, '2019-06-16 13:21:49', NULL);
INSERT INTO `cms_logs` VALUES (30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/1', 'Update data Python at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>3</td><td>3.5</td></tr></tbody></table>', 1, '2019-06-16 13:23:42', NULL);
INSERT INTO `cms_logs` VALUES (31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/1', 'Update data Python at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>3</td><td>3.5</td></tr></tbody></table>', 1, '2019-06-16 13:24:59', NULL);
INSERT INTO `cms_logs` VALUES (32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/1', 'Update data Python at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>3</td><td>3.5</td></tr></tbody></table>', 1, '2019-06-16 13:28:44', NULL);
INSERT INTO `cms_logs` VALUES (33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/2', 'Update data PHP at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>4</td><td>3.5</td></tr></tbody></table>', 1, '2019-06-16 13:29:02', NULL);
INSERT INTO `cms_logs` VALUES (34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/6', 'Update data Laravel at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>3</td><td>3.5</td></tr></tbody></table>', 1, '2019-06-16 13:29:12', NULL);
INSERT INTO `cms_logs` VALUES (35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/2', 'Update data PHP at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>3.5</td><td>3</td></tr></tbody></table>', 1, '2019-06-16 13:30:29', NULL);
INSERT INTO `cms_logs` VALUES (36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/add-save', 'Add New Data Codeigniter at skills', '', 1, '2019-06-16 13:30:54', NULL);
INSERT INTO `cms_logs` VALUES (37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/profiles/edit-save/1', 'Update data Rizky at profiles', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td><p style=\"margin-top: 0pt; margin-bottom: 0pt; direction: ltr; unicode-bidi: embed; vertical-align: baseline;\"><span style=\"font-size: 10.5pt; font-family: Calibri;\">I am\r\nfamiliar with PHP and Python. I&nbsp; always\r\nkeen deep learn into the fundamentals of the language and moving forward into\r\nweb development with the latest technologies required to work with it.</span></p></td><td>I\'m a Web Develooper  based in Bandung, Indonesia. I am familiar with PHP and Python. I always\r\nkeen deep learn into the fundamentals of the language and moving forward into\r\nweb development with the latest technologies required to work with it</td></tr></tbody></table>', 1, '2019-06-16 23:42:59', NULL);
INSERT INTO `cms_logs` VALUES (38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', 'http://127.0.0.1:8000/admin/profiles/edit-save/1', 'Update data Rizky at profiles', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>I\'m a Web Develooper  based in Bandung, Indonesia. I am familiar with PHP and Python. I always\r\nkeen deep learn into the fundamentals of the language and moving forward into\r\nweb development with the latest technologies required to work with it</td><td>I\'m a Web Developer  based in Bandung, Indonesia. I am familiar with PHP and Python. I always\r\nkeen deep learn into the fundamentals of the language and moving forward into\r\nweb development with the latest technologies required to work with it</td></tr></tbody></table>', 1, '2019-06-16 23:44:14', NULL);
INSERT INTO `cms_logs` VALUES (39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@rizkysamp.site login with IP Address 127.0.0.1', '', 1, '2019-06-20 01:32:33', NULL);
INSERT INTO `cms_logs` VALUES (40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/profiles/edit-save/1', 'Update data Rizky at profiles', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-06-20 01:35:42', NULL);
INSERT INTO `cms_logs` VALUES (41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/educations/edit-save/2', 'Update data Sekolah Menengah Kejuruan - SMKN 4 Bandung at educations', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title</td><td>Sekolah Menengah Kejuruan Negeri 4 Bandung</td><td>Sekolah Menengah Kejuruan - SMKN 4 Bandung</td></tr></tbody></table>', 1, '2019-06-20 03:04:38', NULL);
INSERT INTO `cms_logs` VALUES (42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@rizkysamp.site login with IP Address 127.0.0.1', '', 1, '2019-06-20 13:52:18', NULL);
INSERT INTO `cms_logs` VALUES (43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/1', 'Update data Python at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>3.5</td><td>3</td></tr></tbody></table>', 1, '2019-06-20 13:53:50', NULL);
INSERT INTO `cms_logs` VALUES (44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/6', 'Update data Laravel at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>3.5</td><td>3</td></tr></tbody></table>', 1, '2019-06-20 13:53:59', NULL);
INSERT INTO `cms_logs` VALUES (45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/5', 'Update data HTML at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>4</td><td>3.5</td></tr></tbody></table>', 1, '2019-06-20 13:54:09', NULL);
INSERT INTO `cms_logs` VALUES (46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/4', 'Update data CSS at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>4</td><td>3.5</td></tr></tbody></table>', 1, '2019-06-20 13:54:17', NULL);
INSERT INTO `cms_logs` VALUES (47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/4', 'Update data CSS at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>3.5</td><td>3</td></tr></tbody></table>', 1, '2019-06-20 13:54:24', NULL);
INSERT INTO `cms_logs` VALUES (48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/skills/edit-save/3', 'Update data Javascipt at skills', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>value</td><td>3</td><td>2.5</td></tr></tbody></table>', 1, '2019-06-20 14:51:19', NULL);
INSERT INTO `cms_logs` VALUES (49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/educations/edit-save/2', 'Update data Vocational High School - SMKN 4 Bandung at educations', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title</td><td>Sekolah Menengah Kejuruan - SMKN 4 Bandung</td><td>Vocational High School - SMKN 4 Bandung</td></tr><tr><td>description</td><td>Jurusan Teknik Komputer dan Jaringan</td><td>Computer and Network Engineering</td></tr></tbody></table>', 1, '2019-06-20 14:53:28', NULL);
INSERT INTO `cms_logs` VALUES (50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/educations/edit-save/1', 'Update data BACHELOR DEGREE - UNIVERSITAS ISLAM NEGERI SGD BANDUNG at educations', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>Sarjana Teknik, Teknik Informatika (3.86) - (Thesis title: Perbandingan analisis algoritma K-Means dan Fuzzy C-Means untuk pengelompokan Hadits terjemahan bahasa Indonesia.) (Python –  Web Framework Flask)</td><td>Bachelor of Engineering, Informatic Engineering (3.86) - (Thesis title: Perbandingan analisis algoritma K-Means dan Fuzzy C-Means untuk pengelompokan Hadits terjemahan bahasa Indonesia.) (Python –  Web Framework Flask)</td></tr></tbody></table>', 1, '2019-06-20 14:54:04', NULL);
INSERT INTO `cms_logs` VALUES (51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/educations/add-save', 'Add New Data Junior High School - SMPN 3 Bandung at educations', '', 1, '2019-06-20 15:08:17', NULL);
INSERT INTO `cms_logs` VALUES (52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@rizkysamp.site login with IP Address 127.0.0.1', '', 1, '2019-06-21 12:11:19', NULL);
INSERT INTO `cms_logs` VALUES (53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/works/add-save', 'Add New Data Hak Kekayaan Intelektual UIN SGD Bandung at works', '', 1, '2019-06-21 15:23:00', NULL);
INSERT INTO `cms_logs` VALUES (54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@rizkysamp.site login with IP Address 127.0.0.1', '', 1, '2019-06-21 23:50:56', NULL);
INSERT INTO `cms_logs` VALUES (55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/works/add-save', 'Add New Data Website Pusat Penelitian dan Penerbitan UIN SGD Bandung at works', '', 1, '2019-06-22 00:06:52', NULL);
INSERT INTO `cms_logs` VALUES (56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/works/add-save', 'Add New Data Website Persatuan Olahraga Selam Seluruh Indonesia at works', '', 1, '2019-06-22 00:28:56', NULL);
INSERT INTO `cms_logs` VALUES (57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/works/add-save', 'Add New Data Infinite System at works', '', 1, '2019-06-22 01:12:22', NULL);
INSERT INTO `cms_logs` VALUES (58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/works/add-save', 'Add New Data Hak Kekayaan Intelektual UIN SGD Bandung at works', '', 1, '2019-06-22 01:27:18', NULL);
INSERT INTO `cms_logs` VALUES (59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/works/add-save', 'Add New Data Website Pusat Penelitian dan Penerbitan UIN SGD Bandung at works', '', 1, '2019-06-22 01:31:00', NULL);
INSERT INTO `cms_logs` VALUES (60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/works/add-save', 'Add New Data Website Persatuan Olahraga Selam Seluruh Indonesia at works', '', 1, '2019-06-22 01:32:23', NULL);
INSERT INTO `cms_logs` VALUES (61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/works/add-save', 'Add New Data Infinite System at works', '', 1, '2019-06-22 01:33:18', NULL);
INSERT INTO `cms_logs` VALUES (62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/works/edit-save/2', 'Update data Website Pusat Penelitian dan Penerbitan UIN SGD Bandung at works', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>work_as</td><td>Developer</td><td>Developer | Personal</td></tr></tbody></table>', 1, '2019-06-22 01:33:34', NULL);
INSERT INTO `cms_logs` VALUES (63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/works/edit-save/1', 'Update data Hak Kekayaan Intelektual UIN SGD Bandung at works', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>work_as</td><td>Fullstack Developer</td><td>Fullstack Developer | Personal</td></tr></tbody></table>', 1, '2019-06-22 01:33:53', NULL);
INSERT INTO `cms_logs` VALUES (64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/works/edit-save/3', 'Update data Website Persatuan Olahraga Selam Seluruh Indonesia at works', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>Build Information Systems and Data Banks for POSSI organizations. the website accommodates all data divers including instructors, students, coaches, referees, etc. and used to register diving certification for students. The website is divided into two parts. First, the Company Profile is used for the front page of the website and displays the latest news about POSSI. Second, ProSys (Professional System) is used to manage all website content including the Company Profile and the certification registration process for students by instructors.</td><td>Build Information Systems and Data Banks for POSSI organizations. the website accommodates all data divers including instructors, students, coaches, referees, etc. and used to register diving certification for students. The website is divided into two parts. First, the Company Profile and ProSys (Professional System) is used to manage all website content including the Company Profile and the certification registration process for students by instructors.</td></tr></tbody></table>', 1, '2019-06-22 01:53:33', NULL);
INSERT INTO `cms_logs` VALUES (65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/experiences/edit-save/1', 'Update data Web Developer - Technoline Indonesia at experiences', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-06-22 01:59:27', NULL);
INSERT INTO `cms_logs` VALUES (66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/experiences/edit-save/1', 'Update data Web Developer - Technoline Indonesia at experiences', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-06-22 01:59:27', NULL);
INSERT INTO `cms_logs` VALUES (67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/experiences/edit-save/1', 'Update data Web Developer - Technoline Indonesia at experiences', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>Build website-based applications using PHP (Codeigniter / Laravel) programming languages, SQL, Javascript, HTML, CSS etc. Usually working in teams.</td><td>The startup company that provides consulting services in all areas of information technology issues such as consulting, information system design, application development, and planning design using augmented reality technology or virtual reality.\r\nWorking as Staff Developer. Specifically in the areas of backend developer and web-oriented application including design, development, and system analysis that will optimally utilize a strong logical and analytical skill as well as Web-based programming skills, in order to work individually or teamwork.</td></tr></tbody></table>', 1, '2019-06-22 02:03:00', NULL);
INSERT INTO `cms_logs` VALUES (68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@rizkysamp.site login with IP Address 127.0.0.1', '', 1, '2019-06-23 23:10:24', NULL);
INSERT INTO `cms_logs` VALUES (69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@rizkysamp.site logout', '', 1, '2019-06-24 01:21:36', NULL);
INSERT INTO `cms_logs` VALUES (70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@rizkysamp.site login with IP Address 127.0.0.1', '', 1, '2019-06-24 01:22:07', NULL);

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `sorting` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES (1, 'Educations', 'Module', 'educations', 'normal', 'fa fa-book', 0, 1, 0, 1, 2, '2019-06-16 10:28:47', '2019-06-16 10:32:22');
INSERT INTO `cms_menus` VALUES (2, 'Experiences', 'Module', 'experiences', 'normal', 'fa fa-trophy', 0, 1, 0, 1, 3, '2019-06-16 10:34:08', '2019-06-16 10:36:12');
INSERT INTO `cms_menus` VALUES (3, 'Profiles', 'Module', 'profiles', 'normal', 'fa fa-user', 0, 1, 0, 1, 1, '2019-06-16 10:37:10', '2019-06-16 11:53:41');
INSERT INTO `cms_menus` VALUES (4, 'Skills', 'Module', 'skills', 'normal', 'fa fa-star', 0, 1, 0, 1, 4, '2019-06-16 11:45:11', '2019-06-16 11:54:01');
INSERT INTO `cms_menus` VALUES (5, 'Works', 'Module', 'works', 'normal', 'fa fa-shield', 0, 1, 0, 1, 5, '2019-06-16 11:46:27', '2019-06-16 11:55:09');
INSERT INTO `cms_menus` VALUES (6, 'Contact', 'Route', 'AdminContactsControllerGetIndex', NULL, 'fa fa-users', 0, 1, 0, 1, 6, '2019-06-23 23:11:00', NULL);

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------
INSERT INTO `cms_menus_privileges` VALUES (4, 1, 1);
INSERT INTO `cms_menus_privileges` VALUES (6, 2, 1);
INSERT INTO `cms_menus_privileges` VALUES (10, 3, 1);
INSERT INTO `cms_menus_privileges` VALUES (11, 4, 1);
INSERT INTO `cms_menus_privileges` VALUES (12, 5, 1);
INSERT INTO `cms_menus_privileges` VALUES (13, 6, 1);

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `controller` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
INSERT INTO `cms_moduls` VALUES (1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-06-16 10:24:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-06-16 10:24:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-06-16 10:24:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-06-16 10:24:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-06-16 10:24:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-06-16 10:24:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-06-16 10:24:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-06-16 10:24:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-06-16 10:24:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-06-16 10:24:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-06-16 10:24:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (12, 'educations', 'fa fa-book', 'educations', 'educations', 'AdminEducations1Controller', 0, 0, '2019-06-16 10:28:47', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (13, 'experiences', 'fa fa-trophy', 'experiences', 'experiences', 'AdminExperiencesController', 0, 0, '2019-06-16 10:34:08', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (14, 'profiles', 'fa fa-user', 'profiles', 'profiles', 'AdminProfiles1Controller', 0, 0, '2019-06-16 10:37:10', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (15, 'skills', 'fa fa-star', 'skills', 'skills', 'AdminSkillsController', 0, 0, '2019-06-16 11:45:11', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (16, 'works', 'fa fa-shield', 'works', 'works', 'AdminWorksController', 0, 0, '2019-06-16 11:46:27', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (17, 'Contact', 'fa fa-newspaper-o', 'contacts', 'contacts', 'AdminContactsController', 0, 0, '2019-06-23 23:11:00', NULL, NULL);

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) NULL DEFAULT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_superadmin` tinyint(1) NULL DEFAULT NULL,
  `theme_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
INSERT INTO `cms_privileges` VALUES (1, 'Super Administrator', 1, 'skin-red', '2019-06-16 10:24:59', NULL);

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) NULL DEFAULT NULL,
  `is_create` tinyint(1) NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `is_edit` tinyint(1) NULL DEFAULT NULL,
  `is_delete` tinyint(1) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `id_cms_moduls` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES (1, 1, 0, 0, 0, 0, 1, 1, '2019-06-16 10:24:59', NULL);
INSERT INTO `cms_privileges_roles` VALUES (2, 1, 1, 1, 1, 1, 1, 2, '2019-06-16 10:24:59', NULL);
INSERT INTO `cms_privileges_roles` VALUES (3, 0, 1, 1, 1, 1, 1, 3, '2019-06-16 10:24:59', NULL);
INSERT INTO `cms_privileges_roles` VALUES (4, 1, 1, 1, 1, 1, 1, 4, '2019-06-16 10:24:59', NULL);
INSERT INTO `cms_privileges_roles` VALUES (5, 1, 1, 1, 1, 1, 1, 5, '2019-06-16 10:24:59', NULL);
INSERT INTO `cms_privileges_roles` VALUES (6, 1, 1, 1, 1, 1, 1, 6, '2019-06-16 10:24:59', NULL);
INSERT INTO `cms_privileges_roles` VALUES (7, 1, 1, 1, 1, 1, 1, 7, '2019-06-16 10:24:59', NULL);
INSERT INTO `cms_privileges_roles` VALUES (8, 1, 1, 1, 1, 1, 1, 8, '2019-06-16 10:24:59', NULL);
INSERT INTO `cms_privileges_roles` VALUES (9, 1, 1, 1, 1, 1, 1, 9, '2019-06-16 10:24:59', NULL);
INSERT INTO `cms_privileges_roles` VALUES (10, 1, 1, 1, 1, 1, 1, 10, '2019-06-16 10:24:59', NULL);
INSERT INTO `cms_privileges_roles` VALUES (11, 1, 0, 1, 0, 1, 1, 11, '2019-06-16 10:24:59', NULL);
INSERT INTO `cms_privileges_roles` VALUES (12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL);

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content_input_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dataenum` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `helper` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `group_setting` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
INSERT INTO `cms_settings` VALUES (1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2019-06-16 10:24:59', NULL, 'Login Register Style', 'Login Background Color');
INSERT INTO `cms_settings` VALUES (2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2019-06-16 10:24:59', NULL, 'Login Register Style', 'Login Font Color');
INSERT INTO `cms_settings` VALUES (3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2019-06-16 10:24:59', NULL, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` VALUES (4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-06-16 10:24:59', NULL, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` VALUES (5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-06-16 10:24:59', NULL, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` VALUES (6, 'smtp_host', '', 'text', NULL, NULL, '2019-06-16 10:24:59', NULL, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` VALUES (7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-06-16 10:24:59', NULL, 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` VALUES (8, 'smtp_username', '', 'text', NULL, NULL, '2019-06-16 10:24:59', NULL, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` VALUES (9, 'smtp_password', '', 'text', NULL, NULL, '2019-06-16 10:24:59', NULL, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` VALUES (10, 'appname', 'rizkysamp.site', 'text', NULL, NULL, '2019-06-16 10:24:59', NULL, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` VALUES (11, 'default_paper_size', 'A4', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-06-16 10:24:59', NULL, 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES (12, 'logo', 'uploads/2019-06/609b74e6294b3fd2df03a44e510652e7.png', 'upload_image', NULL, NULL, '2019-06-16 10:24:59', NULL, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` VALUES (13, 'favicon', 'uploads/2019-06/7610fa33712bba19465d4a59628ceabf.png', 'upload_image', NULL, NULL, '2019-06-16 10:24:59', NULL, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` VALUES (14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-06-16 10:24:59', NULL, 'Application Setting', 'API Debug Mode');
INSERT INTO `cms_settings` VALUES (15, 'google_api_key', NULL, 'text', NULL, NULL, '2019-06-16 10:24:59', NULL, 'Application Setting', 'Google API Key');
INSERT INTO `cms_settings` VALUES (16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2019-06-16 10:24:59', NULL, 'Application Setting', 'Google FCM Key');

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) NULL DEFAULT NULL,
  `componentID` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `component_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `area_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sorting` int(11) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES (1, 'Super Admin', 'uploads/1/2019-06/profile_job.jpg', 'admin@rizkysamp.site', '$2y$10$AW7mLUpAG9Ie.r87r18q1uiqzS0n9paVNtl7B6HNfBtwTsyeVMfVS', 1, '2019-06-16 10:24:59', '2019-06-16 10:27:40', 'Active');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES (1, 'Rizky Sam Pratama', 'technoline@grutty.co.id', 'www', '2019-06-22 04:40:30', '2019-06-22 04:40:30');
INSERT INTO `contacts` VALUES (2, 'Rizky Sam Pratama', 'pb@possi.or.id', '1212', '2019-06-22 04:43:58', '2019-06-22 04:43:58');
INSERT INTO `contacts` VALUES (3, 'Rizky Sam Pratama', 'rizkysampratama@gmail.com', 'dada', '2019-06-22 04:44:45', '2019-06-22 04:44:45');
INSERT INTO `contacts` VALUES (4, 'Rizky Sam Pratama', 'technoline@grutty.co.id', NULL, '2019-06-22 04:45:29', '2019-06-22 04:45:29');
INSERT INTO `contacts` VALUES (5, 'Rizky Sam Pratama', NULL, NULL, '2019-06-22 04:46:37', '2019-06-22 04:46:37');
INSERT INTO `contacts` VALUES (6, 'wewe', 'rizkysp07@gmail.com', 'qwqwqw', '2019-06-22 05:03:05', '2019-06-22 05:03:05');

-- ----------------------------
-- Table structure for educations
-- ----------------------------
DROP TABLE IF EXISTS `educations`;
CREATE TABLE `educations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of educations
-- ----------------------------
INSERT INTO `educations` VALUES (1, 'BACHELOR DEGREE - UNIVERSITAS ISLAM NEGERI SGD BANDUNG', '2014 - 2018', 'Bachelor of Engineering, Informatic Engineering (3.86) - (Thesis title: Perbandingan analisis algoritma K-Means dan Fuzzy C-Means untuk pengelompokan Hadits terjemahan bahasa Indonesia.) (Python –  Web Framework Flask)', '2019-06-16 11:57:53', '2019-06-20 14:54:04');
INSERT INTO `educations` VALUES (2, 'Vocational High School - SMKN 4 Bandung', '2011 - 2014', 'Computer and Network Engineering', '2019-06-16 11:59:13', '2019-06-20 14:53:28');
INSERT INTO `educations` VALUES (3, 'Junior High School - SMPN 3 Bandung', '2008 - 2011', '-', '2019-06-20 15:08:17', NULL);

-- ----------------------------
-- Table structure for experiences
-- ----------------------------
DROP TABLE IF EXISTS `experiences`;
CREATE TABLE `experiences`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of experiences
-- ----------------------------
INSERT INTO `experiences` VALUES (1, 'Web Developer - Technoline Indonesia', '2017 - Current', 'The startup company that provides consulting services in all areas of information technology issues such as consulting, information system design, application development, and planning design using augmented reality technology or virtual reality.\r\nWorking as Staff Developer. Specifically in the areas of backend developer and web-oriented application including design, development, and system analysis that will optimally utilize a strong logical and analytical skill as well as Web-based programming skills, in order to work individually or teamwork.', '2019-06-16 12:45:33', '2019-06-22 02:03:00');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2016_08_07_145904_add_table_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (2, '2016_08_07_150834_add_table_cms_dashboard', 1);
INSERT INTO `migrations` VALUES (3, '2016_08_07_151210_add_table_cms_logs', 1);
INSERT INTO `migrations` VALUES (4, '2016_08_07_151211_add_details_cms_logs', 1);
INSERT INTO `migrations` VALUES (5, '2016_08_07_152014_add_table_cms_privileges', 1);
INSERT INTO `migrations` VALUES (6, '2016_08_07_152214_add_table_cms_privileges_roles', 1);
INSERT INTO `migrations` VALUES (7, '2016_08_07_152320_add_table_cms_settings', 1);
INSERT INTO `migrations` VALUES (8, '2016_08_07_152421_add_table_cms_users', 1);
INSERT INTO `migrations` VALUES (9, '2016_08_07_154624_add_table_cms_menus_privileges', 1);
INSERT INTO `migrations` VALUES (10, '2016_08_07_154624_add_table_cms_moduls', 1);
INSERT INTO `migrations` VALUES (11, '2016_08_17_225409_add_status_cms_users', 1);
INSERT INTO `migrations` VALUES (12, '2016_08_20_125418_add_table_cms_notifications', 1);
INSERT INTO `migrations` VALUES (13, '2016_09_04_033706_add_table_cms_email_queues', 1);
INSERT INTO `migrations` VALUES (14, '2016_09_16_035347_add_group_setting', 1);
INSERT INTO `migrations` VALUES (15, '2016_09_16_045425_add_label_setting', 1);
INSERT INTO `migrations` VALUES (16, '2016_09_17_104728_create_nullable_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (17, '2016_10_01_141740_add_method_type_apicustom', 1);
INSERT INTO `migrations` VALUES (18, '2016_10_01_141846_add_parameters_apicustom', 1);
INSERT INTO `migrations` VALUES (19, '2016_10_01_141934_add_responses_apicustom', 1);
INSERT INTO `migrations` VALUES (20, '2016_10_01_144826_add_table_apikey', 1);
INSERT INTO `migrations` VALUES (21, '2016_11_14_141657_create_cms_menus', 1);
INSERT INTO `migrations` VALUES (22, '2016_11_15_132350_create_cms_email_templates', 1);
INSERT INTO `migrations` VALUES (23, '2016_11_15_190410_create_cms_statistics', 1);
INSERT INTO `migrations` VALUES (24, '2016_11_17_102740_create_cms_statistic_components', 1);
INSERT INTO `migrations` VALUES (25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);
INSERT INTO `migrations` VALUES (26, '2019_06_12_104114_add_table_profiles', 1);
INSERT INTO `migrations` VALUES (27, '2019_06_12_160850_add_table_experiences', 1);
INSERT INTO `migrations` VALUES (28, '2019_06_12_161236_add_table_educations', 1);
INSERT INTO `migrations` VALUES (29, '2019_06_12_161251_add_table_skills', 1);
INSERT INTO `migrations` VALUES (32, '2019_06_12_164527_add_table_works', 2);
INSERT INTO `migrations` VALUES (33, '2019_06_22_011508_add_work_as_to_works', 2);
INSERT INTO `migrations` VALUES (34, '2019_06_22_020429_create_contacts_table', 3);

-- ----------------------------
-- Table structure for profiles
-- ----------------------------
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lastname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `date_of_birth` date NULL DEFAULT NULL,
  `nationality` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `freelance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `social` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profiles
-- ----------------------------
INSERT INTO `profiles` VALUES (1, 'Rizky', 'Sam Pratama', 'I\'m a Web Developer  based in Bandung, Indonesia. I am familiar with PHP and Python. I always\r\nkeen deep learn into the fundamentals of the language and moving forward into\r\nweb development with the latest technologies required to work with it', 'uploads/1/2019-06/sam_600x810.jpg', '1995-09-07', 'Indonesia', 'Available', '085659122410', 'Jl. Embah Jaksa No A66 RT/RW 001/011 Cipadung', 'rizkysampratama@gmail.com', 'Indonesia - English', 'Rizky Sam Pratama', '2019-06-16 11:56:16', '2019-06-20 01:35:42');

-- ----------------------------
-- Table structure for skills
-- ----------------------------
DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skills
-- ----------------------------
INSERT INTO `skills` VALUES (1, 'Python', '3', '2019-06-16 13:15:07', '2019-06-20 13:53:50');
INSERT INTO `skills` VALUES (2, 'PHP', '3', '2019-06-16 13:15:23', '2019-06-16 13:30:29');
INSERT INTO `skills` VALUES (3, 'Javascipt', '2.5', '2019-06-16 13:15:48', '2019-06-20 14:51:19');
INSERT INTO `skills` VALUES (4, 'CSS', '3', '2019-06-16 13:16:01', '2019-06-20 13:54:24');
INSERT INTO `skills` VALUES (5, 'HTML', '3.5', '2019-06-16 13:16:16', '2019-06-20 13:54:09');
INSERT INTO `skills` VALUES (6, 'Laravel', '3', '2019-06-16 13:18:56', '2019-06-20 13:53:59');
INSERT INTO `skills` VALUES (7, 'Django', '2', '2019-06-16 13:19:03', NULL);
INSERT INTO `skills` VALUES (8, 'SQL Database', '3', '2019-06-16 13:19:21', NULL);
INSERT INTO `skills` VALUES (9, 'Ajax', '2', '2019-06-16 13:19:30', NULL);
INSERT INTO `skills` VALUES (10, 'Boostrap', '3', '2019-06-16 13:19:40', NULL);
INSERT INTO `skills` VALUES (11, 'GIT', '3', '2019-06-16 13:19:59', NULL);
INSERT INTO `skills` VALUES (12, 'Codeigniter', '3', '2019-06-16 13:30:54', NULL);

-- ----------------------------
-- Table structure for works
-- ----------------------------
DROP TABLE IF EXISTS `works`;
CREATE TABLE `works`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `work_as` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `client` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `date_project` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `technologies` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of works
-- ----------------------------
INSERT INTO `works` VALUES (1, 'uploads/1/2019-06/hki.jpg', 'Hak Kekayaan Intelektual UIN SGD Bandung', 'Fullstack Developer | Personal', 'Pusat Penelitian dan Penerbitan UIN SGD Bandung', '01/12/2018 - 03/02/2019', 'HTML, CSS, PHP, LARAVEL, JAVASCRIPT, MYSQL', 'Worked as a fullstack developer to build information websites as well as for registering HKI (Hak Kekayaan Intelektual) for lecturers UIN Sunan Gunung Djati Bandung. (puslitpen.uinsgd.ac.id/hki)', 'https://puslitpen.uinsgd.ac.id/hki/', '2019-06-22 01:27:18', '2019-06-22 01:33:53');
INSERT INTO `works` VALUES (2, 'uploads/1/2019-06/puslit.jpg', 'Website Pusat Penelitian dan Penerbitan UIN SGD Bandung', 'Developer | Personal', 'Pusat Penelitian dan Penerbitan UIN SGD Bandung', '01/04/2019 - 15/05/2019', 'WORDPRESS', 'Build a website for research centers as a gateway to news about research activities and the latest news regarding research and publication of scientific work by lecturers at UIN SGD Bandung', 'https://puslitpen.uinsgd.ac.id', '2019-06-22 01:31:00', '2019-06-22 01:33:34');
INSERT INTO `works` VALUES (3, 'uploads/1/2019-06/possi.png', 'Website Persatuan Olahraga Selam Seluruh Indonesia', 'Project Manager & Backend Developer | Technoline Indonesia', 'Persatuan Olahraga Selam Seluruh Indonesia (POSSI)', '01/04/2017 - 01/01/2019', 'HTML, CSS, PHP, LARAVEL, JAVASCRIPT, MYSQL', 'Build Information Systems and Data Banks for POSSI organizations. the website accommodates all data divers including instructors, students, coaches, referees, etc. and used to register diving certification for students. The website is divided into two parts. First, the Company Profile and ProSys (Professional System) is used to manage all website content including the Company Profile and the certification registration process for students by instructors.', 'https://possi.or.id', '2019-06-22 01:32:23', '2019-06-22 01:53:33');
INSERT INTO `works` VALUES (4, 'uploads/1/2019-06/infinite.png', 'Infinite System', 'System Analyst | Technoline Indonesia', 'Grutty Shoes', '01/07/2017 - 01/05/2019', 'HTML, CSS, PHP, LARAVEL, JAVASCRIPT, MYSQL', 'Building an information system for shoe and accessories retail companies in Bandung. ranging from managing raw material purchases to entering showrooms, POS systems, and HRD systems', 'http://career.gruttyshoes.co.id', '2019-06-22 01:33:18', NULL);

SET FOREIGN_KEY_CHECKS = 1;
