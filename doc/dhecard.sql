/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : dhecard

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 21/11/2020 23:32:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_blog
-- ----------------------------
DROP TABLE IF EXISTS `cms_blog`;
CREATE TABLE `cms_blog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user_id` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_blog
-- ----------------------------
INSERT INTO `cms_blog` VALUES (1, 'hello', '我的博客，内容是。。。', '2018-02-22 09:53:05', 1, 'F0');
INSERT INTO `cms_blog` VALUES (2, 'cccc', '过年回家', '2018-02-13 10:30:01', 1, 'F0');

-- ----------------------------
-- Table structure for core_audit
-- ----------------------------
DROP TABLE IF EXISTS `core_audit`;
CREATE TABLE `core_audit`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FUNCTION_CODE` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FUNCTION_NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_ID` int(11) NULL DEFAULT NULL,
  `USER_NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IP` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` datetime(6) NULL DEFAULT NULL,
  `SUCCESS` tinyint(4) NULL DEFAULT NULL,
  `MESSAGE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ORG_ID` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_audit
-- ----------------------------
INSERT INTO `core_audit` VALUES (1, 'org.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-06 19:58:50.876000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (2, 'org.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-06 19:58:51.377000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (3, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:00:10.972000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (4, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:00:11.130000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (5, 'user.add', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:00:39.562000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (6, 'user.edit', '用户编辑', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:10:15.399000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (7, 'user.query', '用户列表', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:10:15.846000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (8, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:10:16.882000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (9, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:10:17.056000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (10, 'user.edit', '用户编辑', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:14:46.789000', 0, 'java.sql.SQLException: Error on delete of \'C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\#sql978_2c3_6.MYI\' (Errcode: 13 - Permission denied)', NULL);
INSERT INTO `core_audit` VALUES (11, 'user.edit', '用户编辑', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:15:12.861000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (12, 'user.query', '用户列表', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:15:13.294000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (13, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:15:14.636000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (14, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:15:14.876000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (15, 'audit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-06 20:16:23.824000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (16, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:42:58.091000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (17, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:42:58.394000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (18, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:53:11.745000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (19, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:53:11.943000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (20, 'user.add', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:53:13.058000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (21, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:53:28.999000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (22, 'role.add', '角色添加', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:53:29.162000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (23, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:53:43.017000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (24, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:53:43.148000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (25, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:53:45.338000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (26, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:56:03.185000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (27, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:56:03.646000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (28, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:56:06.264000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (29, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:56:07.508000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (30, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:56:09.524000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (31, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 09:56:10.738000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (32, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:02:00.590000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (33, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:02:00.803000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (34, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:02:02.991000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (35, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:05:40.367000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (36, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:05:40.496000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (37, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:05:42.173000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (38, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:06:02.218000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (39, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:07:45.273000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (40, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:07:45.943000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (41, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:07:47.715000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (42, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:08:03.378000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (43, 'role.update', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:08:03.484000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (44, 'role.edit', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:08:16.535000', 1, '', NULL);
INSERT INTO `core_audit` VALUES (45, 'role.query', '未定义', 1, '超级管理员', '172.16.49.65', '2018-02-07 10:08:16.691000', 1, '', NULL);

-- ----------------------------
-- Table structure for core_dict
-- ----------------------------
DROP TABLE IF EXISTS `core_dict`;
CREATE TABLE `core_dict`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VALUE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `TYPE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典编码',
  `TYPE_NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型描述',
  `SORT` int(6) NULL DEFAULT NULL COMMENT '排序',
  `PARENT` int(64) NULL DEFAULT NULL COMMENT '父id',
  `DEL_FLAG` int(6) NULL DEFAULT NULL COMMENT '删除标记',
  `REMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `idx_code`(`TYPE`) USING BTREE,
  INDEX `idx_pid`(`PARENT`) USING BTREE,
  INDEX `idx_value`(`VALUE`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_dict
-- ----------------------------
INSERT INTO `core_dict` VALUES (1, 'DA0', '查看自己', 'data_access_type', '数据权限', 1, NULL, 0, '11111111111111111123', NULL);
INSERT INTO `core_dict` VALUES (2, 'DA1', '查看本公司', 'data_access_type', '数据权限', 3, NULL, 0, 'hello,go', NULL);
INSERT INTO `core_dict` VALUES (3, 'DA2', '查看同机构', 'data_access_type', '数据权限', 3, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (4, 'DA3', '查看本部门', 'data_access_type', '数据权限', 4, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (5, 'DA4', '查看集团', 'data_access_type', '数据权限', 5, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (6, 'DA5', '查看母公司', 'data_access_type', '数据权限', 6, NULL, 0, NULL, '2017-10-14 11:45:02.000000');
INSERT INTO `core_dict` VALUES (7, 'FN0', '普通功能', 'function_type', '功能点类型', 2, NULL, 0, NULL, '2017-10-23 10:18:03.000000');
INSERT INTO `core_dict` VALUES (8, 'FN1', '含数据权限', 'function_type', '功能点类型', 1, NULL, 0, NULL, '2017-10-23 10:20:05.000000');
INSERT INTO `core_dict` VALUES (9, 'JT_01', '管理岗位', 'job_type', '岗位类型', 1, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (10, 'JT_02', '技术岗位', 'job_type', '岗位类型', 2, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (11, 'JT_S_01', '董事会', 'job_sub_managment_type', '管理岗位子类型', 1, 9, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (12, 'JT_S_02', '秘书', 'job_sub_managment_type', '管理岗位子类型', 2, 9, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (13, 'JT_S_03', '技术经理', 'job_dev_sub_type', '技术岗位子类型', 1, 10, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (14, 'JT_S_04', '程序员', 'job_dev_sub_type', '技术岗位子类型', 2, 10, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (15, 'MENU_M', '菜单', 'menu_type', '菜单类型', 3, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (16, 'MENU_N', '导航', 'menu_type', '菜单类型', 2, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (17, 'MENU_S', '系统', 'menu_type', '菜单类型', 1, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (18, 'ORGT0', '集团总部', 'org_type', '机构类型', 1, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (19, 'ORGT1', '分公司', 'org_type', '机构类型', 2, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (20, 'ORGT2', '部门', 'org_type', '机构类型', 3, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (21, 'ORGT3', '小组', 'org_type', '机构类型', 4, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (22, 'R0', '操作角色', 'role_type', '数据权限', 1, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (23, 'R1', '工作流角色', 'role_type', '用户角色', 2, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (24, 'S0', '禁用', 'user_state', '用户状态', 2, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (25, 'S1', '启用', 'user_state', '用户状态', 1, NULL, 0, NULL, NULL);
INSERT INTO `core_dict` VALUES (26, '昂按', '随碟附送分', 'kkkk', '水电费水电费', NULL, NULL, 0, '', '2018-02-28 15:43:34.447000');
INSERT INTO `core_dict` VALUES (27, '昂按', '随碟附送分', 'kkkk', '水电费水电费', NULL, NULL, 0, '', '2018-02-28 15:46:08.035000');
INSERT INTO `core_dict` VALUES (28, 'sdf', 'sdfsdf', 'sfsdf', 'sdfsdf', 1, NULL, 1, '', '2018-02-28 15:47:56.384000');
INSERT INTO `core_dict` VALUES (29, 'asas', 'sdfsd', 'sd', 'sd', NULL, NULL, 1, '', '2018-02-28 15:50:32.214000');
INSERT INTO `core_dict` VALUES (30, 'asas', 'sdfsd', 'sd', 'sd', NULL, NULL, 1, '', '2018-02-28 15:50:50.241000');
INSERT INTO `core_dict` VALUES (31, '1', '男', 'gender', '性别', NULL, NULL, 0, '', '2018-03-10 11:36:19.930000');
INSERT INTO `core_dict` VALUES (32, '2', '女', 'gender', '性别', NULL, NULL, 0, NULL, '2018-03-10 11:36:20.001000');
INSERT INTO `core_dict` VALUES (33, 'S', '学生', 'user_type', '用户类型', 1, NULL, 0, '', '2020-11-21 13:40:33.946000');
INSERT INTO `core_dict` VALUES (34, 'T', '教师', 'user_type', '用户类型', 2, NULL, 0, '', '2020-11-21 13:40:49.726000');
INSERT INTO `core_dict` VALUES (35, '1', '可用', 'enable', '是否可用', 1, NULL, 0, '', NULL);
INSERT INTO `core_dict` VALUES (36, '0', '不可用', 'enable', '是否可用', 2, NULL, 0, '', NULL);

-- ----------------------------
-- Table structure for core_file
-- ----------------------------
DROP TABLE IF EXISTS `core_file`;
CREATE TABLE `core_file`  (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `PATH` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `BIZ_ID` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务ID',
  `USER_ID` int(20) NULL DEFAULT NULL COMMENT '上传人id',
  `CREATE_TIME` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `ORG_ID` int(20) NULL DEFAULT NULL,
  `BIZ_TYPE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FILE_BATCH_ID` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_file
-- ----------------------------
INSERT INTO `core_file` VALUES (19, 'dict_upload_template.xls', '20180311/dict_upload_template.xls.8caa38fb-52ef-4c73-85ea-abfb1f5c5dc4', NULL, 1, '2018-03-11 15:36:58.906000', 1, NULL, '18c0dd67-e334-47ba-8969-915bcf77c544');
INSERT INTO `core_file` VALUES (20, 'dict_upload_template.xls', '20180311/dict_upload_template.xls.f50b7f0f-d376-4a95-be6a-14f5aa4a81e6', NULL, 1, '2018-03-11 15:37:15.884000', 1, NULL, '335a583a-9c74-462d-be0a-5a82d427b1aa');
INSERT INTO `core_file` VALUES (21, 'dict_upload_template.xls', '20180311/dict_upload_template.xls.b0b9434d-e367-43ef-b8ac-366cf7b018b6', NULL, 1, '2018-03-11 15:38:52.600000', 1, NULL, 'a5b887c6-101c-46e8-b9e2-b3b448edff34');
INSERT INTO `core_file` VALUES (22, 'dict_upload_template.xls', '20180311/dict_upload_template.xls.15f02d15-2dd0-4cb7-b2e5-4f7d72fb497d', NULL, 1, '2018-03-11 15:39:02.091000', 1, NULL, '833d96bc-797c-403f-aa2e-00e2b5a3cd71');
INSERT INTO `core_file` VALUES (23, 'dict_upload_template.xls', '20180311/dict_upload_template.xls.f12350bc-31da-4875-a78e-0135f512fb4c', NULL, 1, '2018-03-11 15:41:52.323000', 1, NULL, '0b2a66a3-8aa8-46b7-8bf0-ce9f68041cd8');
INSERT INTO `core_file` VALUES (24, 'dict_upload_template.xls', '20180311/dict_upload_template.xls.5bf626e5-2152-45a5-a432-fc2e9fcb7903', NULL, 1, '2018-03-11 15:43:18.066000', 1, NULL, '813725ab-2c07-4e48-a766-7ebbe3083212');
INSERT INTO `core_file` VALUES (25, 'dict_upload_template.xls', '20180311/dict_upload_template.xls.3cd3eb95-aab9-4105-8d28-76a723274709', NULL, 1, '2018-03-11 15:43:58.096000', 1, NULL, '4216455c-20d7-4912-bfc8-c8cca7e70e9f');
INSERT INTO `core_file` VALUES (26, 'dict_upload_template.xls', '20180311/dict_upload_template.xls.d3dc557b-1e77-4955-a3be-7a8b4f86407c', NULL, 1, '2018-03-11 15:45:02.882000', 1, NULL, 'e42dc975-edd5-4d16-8529-fa69b56a5eb5');
INSERT INTO `core_file` VALUES (34, 'dict_upload_template.xls', '20180311/dict_upload_template.xls.d50f8245-ec3e-4de1-9742-0c5c12105f27', '175', 1, '2018-03-11 16:30:36.191000', 1, NULL, '79b294da-8792-4bfd-9d84-e3f989b88cdf');
INSERT INTO `core_file` VALUES (37, '副本 功能列表.xlsx', '20180311/副本 功能列表.xlsx.bc7554e3-2a30-4667-aa61-0e280340b2be', '175', 1, '2018-03-11 18:53:41.504000', 1, 'User', '79b294da-8792-4bfd-9d84-e3f989b88cdf');
INSERT INTO `core_file` VALUES (38, '副本 功能列表.xlsx', '20180311/副本 功能列表.xlsx.d991eb1f-24a9-4db1-87c1-7ef9d2b8a40a', '175', 1, '2018-03-11 22:10:57.873000', 1, 'User', '79b294da-8792-4bfd-9d84-e3f989b88cdf');

-- ----------------------------
-- Table structure for core_file_tag
-- ----------------------------
DROP TABLE IF EXISTS `core_file_tag`;
CREATE TABLE `core_file_tag`  (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `KEY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'key，关键字',
  `VALUE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键字对应的值',
  `FILE_ID` int(20) NOT NULL COMMENT 'sys_file的id，文件id',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件标签' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_file_tag
-- ----------------------------
INSERT INTO `core_file_tag` VALUES (1, 'customer', '12332', 1);
INSERT INTO `core_file_tag` VALUES (2, 'type', 'crdit', 2);

-- ----------------------------
-- Table structure for core_function
-- ----------------------------
DROP TABLE IF EXISTS `core_function`;
CREATE TABLE `core_function`  (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `CODE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NAME` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` datetime(6) NULL DEFAULT NULL,
  `ACCESS_URL` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PARENT_ID` int(65) NULL DEFAULT NULL,
  `TYPE` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 186 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_function
-- ----------------------------
INSERT INTO `core_function` VALUES (1, 'user', '用户功能', NULL, '/admin/user/index.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (2, 'user.query', '用户列表', NULL, NULL, 1, 'FN1');
INSERT INTO `core_function` VALUES (3, 'user.edit', '用户编辑', NULL, NULL, 1, 'FN0');
INSERT INTO `core_function` VALUES (6, 'org', '组织机构', NULL, '/admin/org/index.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (7, 'role', '角色管理', NULL, '/admin/role/index.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (8, 'menu', '菜单管理', NULL, '/admin/menu/index.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (9, 'function', '功能点管理', NULL, '/admin/function/index.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (10, 'roleFunction', '角色功能授权', NULL, '/admin/role/function.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (11, 'roleDataAccess', '角色数据授权', NULL, '/admin/role/data.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (12, 'code', '代码生成', NULL, '/core/codeGen/index.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (13, 'dict', '字典管理', NULL, '/admin/dict/index.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (18, 'trace', '审计查询', NULL, '/admin/audit/index.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (19, 'file', '相关文档', NULL, '/trade/interAndRelate/file.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (91, 'test', '测试', '2017-10-11 16:59:01.000000', '/test/test.do', 6, 'FN0');
INSERT INTO `core_function` VALUES (161, 'role.add', '角色添加', '2017-10-23 09:45:05.000000', NULL, 7, 'FN0');
INSERT INTO `core_function` VALUES (167, 'workflow.admin', '工作流监控', NULL, '/admin/workflow/index.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (180, 'code.query', '代码生成测试', NULL, NULL, 12, 'FN0');
INSERT INTO `core_function` VALUES (181, 'blog.query', '博客查询功能', NULL, '', 182, 'FN0');
INSERT INTO `core_function` VALUES (182, 'blog', '博客测试', NULL, '/admin/blog/index.do', 0, 'FN0');
INSERT INTO `core_function` VALUES (183, 'code.project', '项目生成', '2018-03-01 09:38:17.068000', '/core/codeGen/project.do', 12, 'FN0');
INSERT INTO `core_function` VALUES (185, '用户管理', '用户管理', '2020-11-21 14:41:08.999000', '/dhecard/user/index.do', 0, 'FN0');

-- ----------------------------
-- Table structure for core_menu
-- ----------------------------
DROP TABLE IF EXISTS `core_menu`;
CREATE TABLE `core_menu`  (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` datetime(6) NULL DEFAULT NULL,
  `FUNCTION_ID` int(6) NULL DEFAULT NULL,
  `TYPE` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1,系统，2 导航 3 菜单项（对应某个功能点）',
  `PARENT_MENU_ID` int(65) NULL DEFAULT NULL,
  `SEQ` int(65) NULL DEFAULT NULL,
  `ICON` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_menu
-- ----------------------------
INSERT INTO `core_menu` VALUES (8, '系统管理', '系统管理', NULL, NULL, 'MENU_S', 0, 1, NULL);
INSERT INTO `core_menu` VALUES (10, '用户管理', '用户管理', NULL, 1, 'MENU_M', 18, 1, NULL);
INSERT INTO `core_menu` VALUES (11, '组织机构管理', '组织机构管理', NULL, 6, 'MENU_M', 18, 2, NULL);
INSERT INTO `core_menu` VALUES (12, '角色管理', '角色管理', NULL, 7, 'MENU_M', 18, 3, NULL);
INSERT INTO `core_menu` VALUES (13, '菜单项', '菜单项', NULL, 8, 'MENU_M', 18, 4, NULL);
INSERT INTO `core_menu` VALUES (14, '功能点管理', '功能点管理', NULL, 9, 'MENU_M', 18, 5, NULL);
INSERT INTO `core_menu` VALUES (15, '字典数据管理', '字典数据管理', NULL, 13, 'MENU_M', 18, 6, NULL);
INSERT INTO `core_menu` VALUES (16, '审计查询', '审计查询', NULL, 18, 'MENU_M', 19, 7, NULL);
INSERT INTO `core_menu` VALUES (17, '代码生成', '代码生成', NULL, 12, 'MENU_M', 24, 8, '');
INSERT INTO `core_menu` VALUES (18, '基础管理', '基础管理', NULL, NULL, 'MENU_N', 8, 1, NULL);
INSERT INTO `core_menu` VALUES (19, '监控管理', '监控管理', NULL, NULL, 'MENU_N', 8, 2, NULL);
INSERT INTO `core_menu` VALUES (20, '流程监控', '流程监控', NULL, 167, 'MENU_M', 19, 3, NULL);
INSERT INTO `core_menu` VALUES (21, '角色功能授权', '角色功能授权', NULL, 10, 'MENU_M', 18, 8, NULL);
INSERT INTO `core_menu` VALUES (22, '角色数据授权', '角色数据授权', NULL, 11, 'MENU_M', 18, 9, NULL);
INSERT INTO `core_menu` VALUES (23, '博客测试', '博客测试1', NULL, 182, 'MENU_M', 19, 9, '');
INSERT INTO `core_menu` VALUES (24, '代码生成导航', '代码生成', '2018-03-01 09:39:31.096000', NULL, 'MENU_N', 8, 1, '');
INSERT INTO `core_menu` VALUES (25, '子系统生成', '子系统生成', '2018-03-01 09:42:35.839000', 183, 'MENU_M', 24, 1, '');
INSERT INTO `core_menu` VALUES (26, 'base_manager', '基础管理', '2020-11-21 12:21:23.902000', NULL, 'MENU_S', 0, 1, '');
INSERT INTO `core_menu` VALUES (27, 'base_user', '用户管理', '2020-11-21 13:32:01.606000', NULL, 'MENU_N', 26, 1, '');
INSERT INTO `core_menu` VALUES (28, 'base_stu', '用户管理', '2020-11-21 13:33:06.759000', 185, 'MENU_M', 27, 1, '');

-- ----------------------------
-- Table structure for core_org
-- ----------------------------
DROP TABLE IF EXISTS `core_org`;
CREATE TABLE `core_org`  (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CREATE_TIME` datetime(6) NULL DEFAULT NULL,
  `PARENT_ORG_ID` int(20) NULL DEFAULT NULL,
  `TYPE` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '1 公司，2 部门，3 小组',
  `DEL_FLAG` tinyint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_org
-- ----------------------------
INSERT INTO `core_org` VALUES (1, '集团公司', '集团', '2018-02-02 17:18:50.000000', NULL, 'ORGT0', 0);
INSERT INTO `core_org` VALUES (3, '信息科技部门', '信息科技部门', NULL, 1, 'ORGT2', 0);
INSERT INTO `core_org` VALUES (4, '贵州银行', '贵州银行', '2018-02-02 17:18:56.000000', 1, 'ORGT1', 0);
INSERT INTO `core_org` VALUES (5, '贵州银行金科', '贵州银行金融科技开发公司', NULL, 4, 'ORGT1', 0);
INSERT INTO `core_org` VALUES (6, '金科研发', '金科研发', NULL, 5, 'ORGT2', 0);
INSERT INTO `core_org` VALUES (7, '金科研发部门', '金科研发部门', '2018-02-05 13:49:52.754000', 6, 'ORGT2', 0);
INSERT INTO `core_org` VALUES (8, '金科研发2部', '金科研发2部', '2018-02-05 13:50:43.901000', 6, 'ORGT2', 0);

-- ----------------------------
-- Table structure for core_role
-- ----------------------------
DROP TABLE IF EXISTS `core_role`;
CREATE TABLE `core_role`  (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `CREATE_TIME` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `TYPE` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1 可以配置 2 固定权限角色',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `code_idx`(`CODE`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_role
-- ----------------------------
INSERT INTO `core_role` VALUES (1, 'DEPT_MANAGER', '部门管理员', NULL, 'R0');
INSERT INTO `core_role` VALUES (2, 'CEO', '公司CEO', NULL, 'R0');
INSERT INTO `core_role` VALUES (3, 'ASSIST', '助理', NULL, 'R0');
INSERT INTO `core_role` VALUES (173, 'dept.admin', '部门辅助管理员', NULL, 'R0');

-- ----------------------------
-- Table structure for core_role_function
-- ----------------------------
DROP TABLE IF EXISTS `core_role_function`;
CREATE TABLE `core_role_function`  (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(65) NULL DEFAULT NULL,
  `FUNCTION_ID` int(65) NULL DEFAULT NULL,
  `DATA_ACCESS_TYPE` tinyint(65) NULL DEFAULT NULL,
  `DATA_ACCESS_POLICY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 207 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_role_function
-- ----------------------------
INSERT INTO `core_role_function` VALUES (1, 1, 1, 5, NULL);
INSERT INTO `core_role_function` VALUES (2, 1, 2, 4, NULL);
INSERT INTO `core_role_function` VALUES (3, 1, 3, 5, NULL);
INSERT INTO `core_role_function` VALUES (4, 2, 2, 2, NULL);
INSERT INTO `core_role_function` VALUES (5, 3, 2, 5, NULL);
INSERT INTO `core_role_function` VALUES (6, 3, 3, 5, NULL);
INSERT INTO `core_role_function` VALUES (162, 1, 6, NULL, NULL);
INSERT INTO `core_role_function` VALUES (164, 1, 91, NULL, NULL);
INSERT INTO `core_role_function` VALUES (174, 173, 1, NULL, NULL);
INSERT INTO `core_role_function` VALUES (176, 173, 2, 5, NULL);
INSERT INTO `core_role_function` VALUES (177, 173, 3, NULL, NULL);
INSERT INTO `core_role_function` VALUES (178, 173, 167, NULL, NULL);
INSERT INTO `core_role_function` VALUES (192, 3, 1, NULL, NULL);
INSERT INTO `core_role_function` VALUES (194, 3, 12, NULL, NULL);
INSERT INTO `core_role_function` VALUES (196, 3, 180, 3, NULL);
INSERT INTO `core_role_function` VALUES (197, NULL, 1, NULL, NULL);
INSERT INTO `core_role_function` VALUES (198, NULL, 2, NULL, NULL);
INSERT INTO `core_role_function` VALUES (199, NULL, 3, NULL, NULL);
INSERT INTO `core_role_function` VALUES (200, NULL, 6, NULL, NULL);
INSERT INTO `core_role_function` VALUES (201, NULL, 91, NULL, NULL);
INSERT INTO `core_role_function` VALUES (202, NULL, 8, NULL, NULL);
INSERT INTO `core_role_function` VALUES (205, 1, 182, NULL, NULL);
INSERT INTO `core_role_function` VALUES (206, 1, 181, NULL, NULL);

-- ----------------------------
-- Table structure for core_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `core_role_menu`;
CREATE TABLE `core_role_menu`  (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(65) NULL DEFAULT NULL,
  `MENU_ID` int(65) NULL DEFAULT NULL,
  `CREATE_TIME` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_role_menu
-- ----------------------------
INSERT INTO `core_role_menu` VALUES (1, 1, 10, NULL);
INSERT INTO `core_role_menu` VALUES (163, 1, 11, NULL);
INSERT INTO `core_role_menu` VALUES (175, 173, 10, NULL);
INSERT INTO `core_role_menu` VALUES (193, 3, 10, NULL);
INSERT INTO `core_role_menu` VALUES (195, 3, 17, NULL);
INSERT INTO `core_role_menu` VALUES (196, NULL, 10, NULL);
INSERT INTO `core_role_menu` VALUES (197, NULL, 11, NULL);
INSERT INTO `core_role_menu` VALUES (198, NULL, 13, NULL);
INSERT INTO `core_role_menu` VALUES (200, 1, 23, NULL);

-- ----------------------------
-- Table structure for core_user
-- ----------------------------
DROP TABLE IF EXISTS `core_user`;
CREATE TABLE `core_user`  (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` datetime(6) NULL DEFAULT NULL,
  `ORG_ID` int(65) NULL DEFAULT NULL,
  `STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户状态 1:启用 0:停用',
  `JOB_TYPE1` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DEL_FLAG` tinyint(6) NULL DEFAULT NULL COMMENT '用户删除标记 0:未删除 1:已删除',
  `update_Time` datetime(0) NULL DEFAULT NULL,
  `JOB_TYPE0` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attachment_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 176 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_user
-- ----------------------------
INSERT INTO `core_user` VALUES (1, 'admin', '超级管理员1', '123456', '2017-09-13 09:21:03.000000', 1, 'S1', 'JT_S_01', 0, '2017-09-13 09:21:03', 'JT_01', NULL);
INSERT INTO `core_user` VALUES (171, 'lixx', '李小小', NULL, '2018-01-28 11:21:20.914000', 3, 'S1', 'JT_S_04', 0, NULL, 'JT_02', NULL);
INSERT INTO `core_user` VALUES (172, 'lixx2', '李xx2', '123456', '2018-01-28 11:22:38.814000', 4, 'S1', 'JT_S_02', 0, NULL, 'JT_01', NULL);
INSERT INTO `core_user` VALUES (173, 'test1', 'test1', '123', '2018-01-28 14:44:55.407000', 5, 'S1', 'JT_S_04', 0, NULL, 'JT_02', NULL);
INSERT INTO `core_user` VALUES (174, 'hank250', '李小熊', NULL, '2018-02-16 11:36:41.438000', 4, 'S1', 'JT_S_04', 0, NULL, 'JT_02', NULL);
INSERT INTO `core_user` VALUES (175, 'test123', 'test12344', NULL, '2018-03-11 16:19:21.675000', 3, 'S1', 'JT_S_04', 0, NULL, 'JT_02', '79b294da-8792-4bfd-9d84-e3f989b88cdf');

-- ----------------------------
-- Table structure for core_user_role
-- ----------------------------
DROP TABLE IF EXISTS `core_user_role`;
CREATE TABLE `core_user_role`  (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(20) NULL DEFAULT NULL,
  `ROLE_ID` int(20) NULL DEFAULT NULL,
  `ORG_ID` int(20) NULL DEFAULT NULL,
  `CREATE_TIME` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 173 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core_user_role
-- ----------------------------
INSERT INTO `core_user_role` VALUES (1, 3, 1, 4, NULL);
INSERT INTO `core_user_role` VALUES (2, 4, 2, 5, NULL);
INSERT INTO `core_user_role` VALUES (3, 75, 3, 6, '2017-09-21 18:03:05.000000');
INSERT INTO `core_user_role` VALUES (35, 1, 1, 1, '2017-09-06 01:12:02.000000');
INSERT INTO `core_user_role` VALUES (36, 1, 3, 6, '2017-09-06 03:33:05.000000');
INSERT INTO `core_user_role` VALUES (38, 1, 1, 3, '2017-09-06 03:35:02.000000');
INSERT INTO `core_user_role` VALUES (41, 1, 1, 5, '2017-09-06 03:58:02.000000');
INSERT INTO `core_user_role` VALUES (42, 3, 3, 1, '2017-09-06 04:01:00.000000');
INSERT INTO `core_user_role` VALUES (47, 47, 3, 1, '2017-09-06 22:00:01.000000');
INSERT INTO `core_user_role` VALUES (49, 5, 3, 4, '2017-09-06 22:01:00.000000');
INSERT INTO `core_user_role` VALUES (52, 47, 2, 1, '2017-09-07 01:12:02.000000');
INSERT INTO `core_user_role` VALUES (53, 48, 3, 4, '2017-09-07 01:14:04.000000');
INSERT INTO `core_user_role` VALUES (55, 68, 2, 3, '2017-09-07 21:42:03.000000');
INSERT INTO `core_user_role` VALUES (125, 74, 1, 4, '2017-10-17 09:37:02.000000');
INSERT INTO `core_user_role` VALUES (144, 74, 3, NULL, '2017-10-17 16:55:00.000000');
INSERT INTO `core_user_role` VALUES (145, 67, 3, NULL, '2017-10-17 16:55:01.000000');
INSERT INTO `core_user_role` VALUES (146, 73, 3, NULL, '2017-10-17 16:55:02.000000');
INSERT INTO `core_user_role` VALUES (147, 22, 3, NULL, '2017-10-17 16:55:04.000000');
INSERT INTO `core_user_role` VALUES (148, 68, 3, NULL, '2017-10-17 16:56:00.000000');
INSERT INTO `core_user_role` VALUES (168, 72, 1, 3, '2017-10-24 14:40:04.000000');
INSERT INTO `core_user_role` VALUES (169, 41, 1, NULL, '2017-10-25 08:58:01.000000');
INSERT INTO `core_user_role` VALUES (171, 170, 1, 5, '2017-10-25 09:08:05.000000');
INSERT INTO `core_user_role` VALUES (172, 171, 1, 4, '2018-02-02 09:36:40.967000');

-- ----------------------------
-- Table structure for dh_card
-- ----------------------------
DROP TABLE IF EXISTS `dh_card`;
CREATE TABLE `dh_card`  (
  `ID` int(20) NOT NULL,
  `CARD_NUMBER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `MONEY` double(255, 0) NOT NULL COMMENT '余额',
  `STATUS` int(2) NOT NULL COMMENT '状态：1：可用，2：挂失，3：销卡',
  `CREATE_TIME` datetime(0) NULL,
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dh_user
-- ----------------------------
DROP TABLE IF EXISTS `dh_user`;
CREATE TABLE `dh_user`  (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '项目',
  `NUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '学号\\工号',
  `CARD_NUMBER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '卡号',
  `TYPE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'T:教师，S：学生',
  `GENDER` int(1) NOT NULL COMMENT '1：男，2：女',
  `ENABLE` int(1) NOT NULL COMMENT '1:可用，0：不可用',
  `ClASS_ID` int(20) NULL DEFAULT NULL COMMENT '班级ID',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dh_user
-- ----------------------------
INSERT INTO `dh_user` VALUES (1, '对方是否', '123', NULL, 'S', 1, 1, NULL, '2020-11-21 13:57:00', '2020-11-21 13:57:00');
INSERT INTO `dh_user` VALUES (2, '啊实打实的', '123123123', NULL, 'T', 2, 1, NULL, '2020-11-21 22:20:31', '2020-11-21 22:20:31');

SET FOREIGN_KEY_CHECKS = 1;
