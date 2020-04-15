/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : febs_base

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 14/04/2020 16:45:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept`  (
  `DEPT_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint(0) NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `ORDER_NUM` bigint(0) NULL DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DEPT_ID`) USING BTREE,
  INDEX `t_dept_parent_id`(`PARENT_ID`) USING BTREE,
  INDEX `t_dept_dept_name`(`DEPT_NAME`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES (1, 0, '开发部', 1, '2019-06-14 20:56:41', NULL);
INSERT INTO `t_dept` VALUES (2, 1, '开发一部', 1, '2019-06-14 20:58:46', NULL);
INSERT INTO `t_dept` VALUES (3, 1, '开发二部', 2, '2019-06-14 20:58:56', NULL);
INSERT INTO `t_dept` VALUES (4, 0, '采购部', 2, '2019-06-14 20:59:56', NULL);
INSERT INTO `t_dept` VALUES (5, 0, '财务部', 3, '2019-06-14 21:00:08', NULL);
INSERT INTO `t_dept` VALUES (6, 0, '销售部', 4, '2019-06-14 21:00:15', NULL);
INSERT INTO `t_dept` VALUES (7, 0, '工程部', 5, '2019-06-14 21:00:42', NULL);
INSERT INTO `t_dept` VALUES (8, 0, '行政部', 6, '2019-06-14 21:00:49', NULL);
INSERT INTO `t_dept` VALUES (9, 0, '人力资源部', 8, '2019-06-14 21:01:14', '2019-06-14 21:01:34');
INSERT INTO `t_dept` VALUES (10, 0, '系统部', 7, '2019-06-14 21:01:31', NULL);

-- ----------------------------
-- Table structure for t_eximport
-- ----------------------------
DROP TABLE IF EXISTS `t_eximport`;
CREATE TABLE `t_eximport`  (
  `FIELD1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段1',
  `FIELD2` int(0) NOT NULL COMMENT '字段2',
  `FIELD3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段3',
  `CREATE_TIME` datetime(0) NOT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Excel导入导出测试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_eximport
-- ----------------------------
INSERT INTO `t_eximport` VALUES ('字段1', 1, 'mrbird0@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 2, 'mrbird1@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 3, 'mrbird2@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 4, 'mrbird3@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 5, 'mrbird4@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 6, 'mrbird5@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 7, 'mrbird6@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 8, 'mrbird7@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 9, 'mrbird8@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 10, 'mrbird9@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 11, 'mrbird10@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 12, 'mrbird11@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 13, 'mrbird12@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 14, 'mrbird13@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 15, 'mrbird14@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 16, 'mrbird15@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 17, 'mrbird16@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 18, 'mrbird17@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 19, 'mrbird18@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', 20, 'mrbird19@gmail.com', '2019-06-13 03:14:06');

-- ----------------------------
-- Table structure for t_generator_config
-- ----------------------------
DROP TABLE IF EXISTS `t_generator_config`;
CREATE TABLE `t_generator_config`  (
  `id` int(0) NOT NULL COMMENT '主键',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者',
  `base_package` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '基础包名',
  `entity_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'entity文件存放路径',
  `mapper_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mapper文件存放路径',
  `mapper_xml_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mapper xml文件存放路径',
  `service_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'servcie文件存放路径',
  `service_impl_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'serviceImpl文件存放路径',
  `controller_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'controller文件存放路径',
  `is_trim` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否去除前缀 1是 0否',
  `trim_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前缀内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_generator_config
-- ----------------------------
INSERT INTO `t_generator_config` VALUES (1, 'MrBird', 'xd.cyan.febs.gen', 'entity', 'mapper', 'mapper', 'service', 'service.impl', 'controller', '1', 't_');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job`  (
  `JOB_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `BEAN_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法名',
  `PARAMS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `CRON_EXPRESSION` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务状态  0：正常  1：暂停',
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`JOB_ID`) USING BTREE,
  INDEX `t_job_create_time`(`CREATE_TIME`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_job
-- ----------------------------
INSERT INTO `t_job` VALUES (1, 'scheduleTask', 'test', 'mrbird', '0/1 * * * * ?', '1', '有参任务调度测试~~', '2018-02-24 16:26:14');
INSERT INTO `t_job` VALUES (2, 'scheduleTask', 'test1', '', '0/10 * * * * ?', '1', '无参任务调度测试', '2018-02-24 17:06:23');
INSERT INTO `t_job` VALUES (3, 'scheduleTask', 'test', 'hello world', '0/1 * * * * ?', '1', '有参任务调度测试,每隔一秒触发', '2018-02-26 09:28:26');
INSERT INTO `t_job` VALUES (11, 'scheduleTask', 'test2', '', '0/5 * * * * ?', '1', '测试异常', '2018-02-26 11:15:30');

-- ----------------------------
-- Table structure for t_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_job_log`;
CREATE TABLE `t_job_log`  (
  `LOG_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `JOB_ID` bigint(0) NOT NULL COMMENT '任务id',
  `BEAN_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `ERROR` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '失败信息',
  `TIMES` decimal(11, 0) NULL DEFAULT NULL COMMENT '耗时(单位：毫秒)',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`) USING BTREE,
  INDEX `t_job_log_create_time`(`CREATE_TIME`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2562 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_job_log
-- ----------------------------
INSERT INTO `t_job_log` VALUES (2562, 11, 'testTask', 'test2', NULL, '1', 'java.lang.NoSuchMethodException: xd.cyan.febs.job.task.TestTask.test2()', 9, '2020-04-14 12:27:34');
INSERT INTO `t_job_log` VALUES (2563, 3, 'testTask', 'test', 'hello world', '0', NULL, 3, '2020-04-14 12:27:34');
INSERT INTO `t_job_log` VALUES (2564, 2, 'testTask', 'test1', NULL, '0', NULL, 2, '2020-04-14 12:27:34');
INSERT INTO `t_job_log` VALUES (2565, 1, 'testTask', 'test', 'mrbird', '0', NULL, 1, '2020-04-14 12:27:35');
INSERT INTO `t_job_log` VALUES (2566, 1, 'testTask', 'test', 'mrbird', '0', NULL, 6, '2020-04-14 12:50:22');
INSERT INTO `t_job_log` VALUES (2567, 3, 'testTask', 'test', 'hello world', '0', NULL, 2, '2020-04-14 12:51:01');
INSERT INTO `t_job_log` VALUES (2568, 3, 'testTask', 'test', 'hello world', '0', NULL, 1, '2020-04-14 12:51:53');
INSERT INTO `t_job_log` VALUES (2569, 1, 'testTask', 'test', 'mrbird', '0', NULL, 1, '2020-04-14 12:55:17');
INSERT INTO `t_job_log` VALUES (2570, 1, 'testTask', 'test', 'mrbird', '0', NULL, 3, '2020-04-14 12:56:06');
INSERT INTO `t_job_log` VALUES (2571, 1, 'ScheduleTask', 'test', 'mrbird', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'ScheduleTask\' available', 7, '2020-04-14 12:59:34');
INSERT INTO `t_job_log` VALUES (2572, 1, 'scheduleTask', 'test', 'mrbird', '0', NULL, 1, '2020-04-14 13:00:01');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作内容',
  `TIME` decimal(11, 0) NULL DEFAULT NULL COMMENT '耗时',
  `METHOD` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作方法',
  `PARAMS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '方法参数',
  `IP` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `t_log_create_time`(`CREATE_TIME`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1011 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (1011, 'MrBird', '新增菜单/按钮', 18, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=178, parentId=0, menuName=test, url=/monitor/online, perms=, icon=layui-icon-timeout, type=0, orderNum=null, createTime=Mon Apr 13 20:43:18 CST 2020, modifyTime=null)\"', '192.168.138.1', '2020-04-13 20:43:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1012, 'MrBird', '修改菜单/按钮', 17, 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=178, parentId=0, menuName=test, url=/monitor/online, perms=, icon=layui-icon-timeout, type=0, orderNum=6, createTime=null, modifyTime=Mon Apr 13 20:44:06 CST 2020)\"', '192.168.138.1', '2020-04-13 20:44:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1013, 'MrBird', '新增菜单/按钮', 11, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=179, parentId=0, menuName=hh, url=, perms=, icon=, type=0, orderNum=null, createTime=Mon Apr 13 20:44:38 CST 2020, modifyTime=null)\"', '192.168.138.1', '2020-04-13 20:44:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1014, 'MrBird', '删除菜单/按钮', 32, 'cc.mrbird.febs.system.controller.MenuController.deleteMenus()', ' menuIds: \"179\"', '192.168.138.1', '2020-04-13 20:44:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1015, 'MrBird', '新增菜单/按钮', 11, 'cc.mrbird.febs.system.controller.MenuController.addMenu()', ' menu: \"Menu(menuId=180, parentId=178, menuName=sdc, url=, perms=, icon=, type=0, orderNum=null, createTime=Mon Apr 13 20:45:14 CST 2020, modifyTime=null)\"', '192.168.138.1', '2020-04-13 20:45:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1016, 'MrBird', '修改菜单/按钮', 10, 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=178, parentId=0, menuName=test, url=, perms=, icon=layui-icon-timeout, type=0, orderNum=6, createTime=null, modifyTime=Mon Apr 13 20:47:04 CST 2020)\"', '192.168.138.1', '2020-04-13 20:47:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1017, 'MrBird', '新增用户', 31, 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=9, username=admin, password=470263a5622b6153be9e681545233f55, deptId=2, email=qq@qq.com, mobile=18888888888, status=1, createTime=Tue Apr 14 10:13:45 CST 2020, modifyTime=null, lastLoginTime=null, sex=0, avatar=default.jpg, theme=black, isTab=1, description=系统管理员, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=80,1, roleName=null)\"', '192.168.138.1', '2020-04-14 10:13:45', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1018, 'MrBird', '删除用户', 28, 'cc.mrbird.febs.system.controller.UserController.deleteUsers()', ' userIds: \"8\"', '192.168.138.1', '2020-04-14 10:14:30', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1019, 'MrBird', '修改用户', 16, 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=9, username=null, password=null, deptId=1, email=qq@qq.com, mobile=18888888888, status=1, createTime=null, modifyTime=Tue Apr 14 10:15:11 CST 2020, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=系统管理员, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=80, roleName=null)\"', '192.168.138.1', '2020-04-14 10:15:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1020, 'admin', '删除用户', 37, 'xd.cyan.febs.system.controller.UserController.deleteUsers()', ' userIds: \"6\"', '192.168.138.1', '2020-04-14 11:31:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1021, 'admin', 'llll', 94, 'xd.cyan.febs.system.controller.UserController.deleteUsers()', ' userIds: \"4\"', '192.168.138.1', '2020-04-14 12:01:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1022, 'admin', '执行定时任务', 78, 'xd.cyan.febs.job.controller.JobController.runJob()', ' jobIds: \"11,3,2,1\"', '192.168.138.1', '2020-04-14 12:27:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1023, 'admin', '执行定时任务', 76, 'xd.cyan.febs.job.controller.JobController.runJob()', ' jobIds: \"1\"', '192.168.138.1', '2020-04-14 12:50:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1024, 'admin', '执行定时任务', 30, 'xd.cyan.febs.job.controller.JobController.runJob()', ' jobIds: \"3\"', '192.168.138.1', '2020-04-14 12:51:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1025, 'admin', '执行定时任务', 96, 'xd.cyan.febs.job.controller.JobController.runJob()', ' jobIds: \"1\"', '192.168.138.1', '2020-04-14 12:56:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1026, 'admin', '修改定时任务', 114, 'xd.cyan.febs.job.controller.JobController.updateJob()', ' job: \"Job(jobId=1, beanName=ScheduleTask, methodName=test, params=mrbird, cronExpression=0/1 * * * * ?, status=1, remark=有参任务调度测试~~, createTime=null, createTimeFrom=null, createTimeTo=null)\"', '192.168.138.1', '2020-04-14 12:59:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1027, 'admin', '执行定时任务', 25, 'xd.cyan.febs.job.controller.JobController.runJob()', ' jobIds: \"1\"', '192.168.138.1', '2020-04-14 12:59:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1028, 'admin', '修改定时任务', 65, 'xd.cyan.febs.job.controller.JobController.updateJob()', ' job: \"Job(jobId=1, beanName=scheduleTask, methodName=test, params=mrbird, cronExpression=0/1 * * * * ?, status=1, remark=有参任务调度测试~~, createTime=null, createTimeFrom=null, createTimeTo=null)\"', '192.168.138.1', '2020-04-14 12:59:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1029, 'admin', '执行定时任务', 29, 'xd.cyan.febs.job.controller.JobController.runJob()', ' jobIds: \"1\"', '192.168.138.1', '2020-04-14 13:00:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1030, 'admin', '修改定时任务', 37, 'xd.cyan.febs.job.controller.JobController.updateJob()', ' job: \"Job(jobId=11, beanName=scheduleTask, methodName=test2, params=, cronExpression=0/5 * * * * ?, status=1, remark=测试异常, createTime=null, createTimeFrom=null, createTimeTo=null)\"', '192.168.138.1', '2020-04-14 13:07:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1031, 'admin', '修改定时任务', 40, 'xd.cyan.febs.job.controller.JobController.updateJob()', ' job: \"Job(jobId=2, beanName=scheduleTask, methodName=test1, params=, cronExpression=0/10 * * * * ?, status=1, remark=无参任务调度测试, createTime=null, createTimeFrom=null, createTimeTo=null)\"', '192.168.138.1', '2020-04-14 13:07:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1045, 'admin', '删除菜单/按钮', 69, 'xd.cyan.febs.system.controller.MenuController.deleteMenus()', ' menuIds: \"137\"', '192.168.138.1', '2020-04-14 16:39:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES (1046, 'admin', '删除菜单/按钮', 87, 'xd.cyan.febs.system.controller.MenuController.deleteMenus()', ' menuIds: \"115\"', '192.168.138.1', '2020-04-14 16:40:41', '内网IP|0|0|内网IP|内网IP');

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log`  (
  `ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime(0) NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `SYSTEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `BROWSER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `t_login_log_login_time`(`LOGIN_TIME`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES (70, 'mrbird', '2020-04-13 20:06:14', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (71, 'hh', '2020-04-13 20:52:04', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (72, 'MrBird', '2020-04-13 20:55:15', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (73, 'mrbird', '2020-04-13 20:55:56', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (74, 'hh', '2020-04-13 20:57:14', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (75, 'mrbird', '2020-04-13 20:59:58', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (76, 'mrbird', '2020-04-14 10:08:39', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (77, 'mrbird', '2020-04-14 10:11:05', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (78, '米奇罗', '2020-04-14 10:18:47', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (79, 'admin', '2020-04-14 10:19:35', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (80, 'admin', '2020-04-14 10:20:01', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (81, 'admin', '2020-04-14 10:36:14', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (82, 'admin', '2020-04-14 10:40:43', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (83, 'admin', '2020-04-14 11:21:31', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (84, 'admin', '2020-04-14 11:30:18', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (85, 'admin', '2020-04-14 11:41:16', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (86, 'admin', '2020-04-14 11:55:58', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (87, 'Micaela', '2020-04-14 11:56:40', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (88, 'admin', '2020-04-14 11:56:58', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (89, 'admin', '2020-04-14 12:51:39', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (90, 'admin', '2020-04-14 13:11:09', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (91, 'admin', '2020-04-14 15:47:19', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES (92, 'admin', '2020-04-14 15:59:00', '内网IP|0|0|内网IP|内网IP', '192.168.138.1', 'Windows 10', 'Chrome 80');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `MENU_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(0) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `PERMS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限标识',
  `ICON` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` bigint(0) NULL DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`) USING BTREE,
  INDEX `t_menu_parent_id`(`PARENT_ID`) USING BTREE,
  INDEX `t_menu_menu_id`(`MENU_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, 0, '系统管理', NULL, NULL, 'layui-icon-setting', '0', 1, '2017-12-27 16:39:07', NULL);
INSERT INTO `t_menu` VALUES (2, 0, '系统监控', '', '', 'layui-icon-alert', '0', 2, '2017-12-27 16:45:51', '2019-06-13 11:20:40');
INSERT INTO `t_menu` VALUES (3, 1, '用户管理', '/system/user', 'user:view', '', '0', 1, '2017-12-27 16:47:13', '2019-12-04 16:46:50');
INSERT INTO `t_menu` VALUES (4, 1, '角色管理', '/system/role', 'role:view', '', '0', 2, '2017-12-27 16:48:09', '2019-06-13 08:57:19');
INSERT INTO `t_menu` VALUES (5, 1, '菜单管理', '/system/menu', 'menu:view', '', '0', 3, '2017-12-27 16:48:57', '2019-06-13 08:57:34');
INSERT INTO `t_menu` VALUES (6, 1, '部门管理', '/system/dept', 'dept:view', '', '0', 4, '2017-12-27 16:57:33', '2019-06-14 19:56:00');
INSERT INTO `t_menu` VALUES (8, 2, '在线用户', '/monitor/online', 'online:view', '', '0', 1, '2017-12-27 16:59:33', '2019-06-13 14:30:31');
INSERT INTO `t_menu` VALUES (10, 2, '系统日志', '/monitor/log', 'log:view', '', '0', 2, '2017-12-27 17:00:50', '2019-06-13 14:30:37');
INSERT INTO `t_menu` VALUES (11, 3, '新增用户', NULL, 'user:add', NULL, '1', NULL, '2017-12-27 17:02:58', NULL);
INSERT INTO `t_menu` VALUES (12, 3, '修改用户', NULL, 'user:update', NULL, '1', NULL, '2017-12-27 17:04:07', NULL);
INSERT INTO `t_menu` VALUES (13, 3, '删除用户', NULL, 'user:delete', NULL, '1', NULL, '2017-12-27 17:04:58', NULL);
INSERT INTO `t_menu` VALUES (14, 4, '新增角色', NULL, 'role:add', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (15, 4, '修改角色', NULL, 'role:update', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (16, 4, '删除角色', NULL, 'role:delete', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (17, 5, '新增菜单', NULL, 'menu:add', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (18, 5, '修改菜单', NULL, 'menu:update', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (19, 5, '删除菜单', NULL, 'menu:delete', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (20, 6, '新增部门', NULL, 'dept:add', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (21, 6, '修改部门', NULL, 'dept:update', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (22, 6, '删除部门', NULL, 'dept:delete', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (23, 8, '踢出用户', NULL, 'user:kickout', NULL, '1', NULL, '2017-12-27 17:11:13', NULL);
INSERT INTO `t_menu` VALUES (24, 10, '删除日志', NULL, 'log:delete', NULL, '1', NULL, '2017-12-27 17:11:45', '2019-06-06 05:56:40');
INSERT INTO `t_menu` VALUES (101, 0, '任务调度', NULL, NULL, 'layui-icon-time-circle', '0', 3, '2018-02-24 15:52:57', NULL);
INSERT INTO `t_menu` VALUES (102, 101, '定时任务', '/job/job', 'job:view', '', '0', 1, '2018-02-24 15:53:53', '2018-04-25 09:05:12');
INSERT INTO `t_menu` VALUES (103, 102, '新增任务', NULL, 'job:add', NULL, '1', NULL, '2018-02-24 15:55:10', NULL);
INSERT INTO `t_menu` VALUES (104, 102, '修改任务', NULL, 'job:update', NULL, '1', NULL, '2018-02-24 15:55:53', NULL);
INSERT INTO `t_menu` VALUES (105, 102, '删除任务', NULL, 'job:delete', NULL, '1', NULL, '2018-02-24 15:56:18', NULL);
INSERT INTO `t_menu` VALUES (106, 102, '暂停任务', NULL, 'job:pause', NULL, '1', NULL, '2018-02-24 15:57:08', NULL);
INSERT INTO `t_menu` VALUES (107, 102, '恢复任务', NULL, 'job:resume', NULL, '1', NULL, '2018-02-24 15:58:21', NULL);
INSERT INTO `t_menu` VALUES (108, 102, '立即执行任务', NULL, 'job:run', NULL, '1', NULL, '2018-02-24 15:59:45', NULL);
INSERT INTO `t_menu` VALUES (109, 101, '调度日志', '/job/log', 'job:log:view', '', '0', 2, '2018-02-24 16:00:45', '2019-06-09 02:48:19');
INSERT INTO `t_menu` VALUES (110, 109, '删除日志', NULL, 'job:log:delete', NULL, '1', NULL, '2018-02-24 16:01:21', NULL);
INSERT INTO `t_menu` VALUES (127, 2, '请求追踪', '/monitor/httptrace', 'httptrace:view', '', '0', 6, '2019-05-27 19:06:38', '2019-06-13 14:36:43');
INSERT INTO `t_menu` VALUES (128, 2, '系统信息', NULL, NULL, NULL, '0', 7, '2019-05-27 19:08:23', NULL);
INSERT INTO `t_menu` VALUES (129, 128, 'JVM信息', '/monitor/jvm', 'jvm:view', '', '0', 1, '2019-05-27 19:08:50', '2019-06-13 14:36:51');
INSERT INTO `t_menu` VALUES (131, 128, '服务器信息', '/monitor/server', 'server:view', '', '0', 3, '2019-05-27 19:10:07', '2019-06-13 14:37:04');
INSERT INTO `t_menu` VALUES (136, 2, '登录日志', '/monitor/loginlog', 'loginlog:view', '', '0', 3, '2019-05-29 15:56:15', '2019-06-13 14:35:56');
INSERT INTO `t_menu` VALUES (160, 3, '密码重置', NULL, 'user:password:reset', NULL, '1', NULL, '2019-06-13 08:40:13', NULL);
INSERT INTO `t_menu` VALUES (161, 3, '导出Excel', NULL, 'user:export', NULL, '1', NULL, '2019-06-13 08:40:34', NULL);
INSERT INTO `t_menu` VALUES (162, 4, '导出Excel', NULL, 'role:export', NULL, '1', NULL, '2019-06-13 14:29:00', '2019-06-13 14:29:11');
INSERT INTO `t_menu` VALUES (163, 5, '导出Excel', NULL, 'menu:export', NULL, '1', NULL, '2019-06-13 14:29:32', NULL);
INSERT INTO `t_menu` VALUES (164, 6, '导出Excel', NULL, 'dept:export', NULL, '1', NULL, '2019-06-13 14:29:59', NULL);
INSERT INTO `t_menu` VALUES (170, 10, '导出Excel', NULL, 'log:export', NULL, '1', NULL, '2019-06-13 14:34:55', NULL);
INSERT INTO `t_menu` VALUES (171, 136, '删除日志', NULL, 'loginlog:delete', NULL, '1', NULL, '2019-06-13 14:35:27', '2019-06-13 14:36:08');
INSERT INTO `t_menu` VALUES (172, 136, '导出Excel', NULL, 'loginlog:export', NULL, '1', NULL, '2019-06-13 14:36:26', NULL);
INSERT INTO `t_menu` VALUES (173, 102, '导出Excel', NULL, 'job:export', NULL, '1', NULL, '2019-06-13 14:37:25', NULL);
INSERT INTO `t_menu` VALUES (174, 109, '导出Excel', NULL, 'job:log:export', NULL, '1', NULL, '2019-06-13 14:37:46', '2019-06-13 14:38:02');
INSERT INTO `t_menu` VALUES (175, 2, 'Swagger文档', '/monitor/swagger', 'swagger:view', '', '0', 8, '2019-08-18 17:25:36', '2019-08-18 17:25:59');
INSERT INTO `t_menu` VALUES (183, 0, '开发测试', '', '', 'layui-icon-deploymentunit', '0', 6, '2020-04-14 16:05:04', '2020-04-14 16:05:11');
INSERT INTO `t_menu` VALUES (184, 183, '开发', '/test/map2', 'test:map', '', '0', NULL, '2020-04-14 16:05:39', '2020-04-14 16:10:03');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `ROLE_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '系统管理员', '系统管理员，拥有所有操作权限 ^_^', '2019-06-14 16:23:11', '2019-08-18 17:26:19');
INSERT INTO `t_role` VALUES (2, '注册账户', '注册账户，拥有查看，导出Excel权限', '2019-06-14 16:00:15', '2020-04-13 21:02:05');
INSERT INTO `t_role` VALUES (77, 'Redis监控员', '负责Redis模块', '2019-06-14 20:49:22', NULL);
INSERT INTO `t_role` VALUES (78, '系统监控员', '负责整个系统监控模块', '2019-06-14 20:50:07', NULL);
INSERT INTO `t_role` VALUES (79, '跑批人员', '负责任务调度跑批模块', '2019-06-14 20:51:02', NULL);
INSERT INTO `t_role` VALUES (80, '开发人员', '拥有代码生成模块的权限', '2019-06-14 20:51:26', '2020-04-14 16:06:05');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `ROLE_ID` bigint(0) NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint(0) NOT NULL COMMENT '菜单/按钮ID',
  INDEX `t_role_menu_menu_id`(`MENU_ID`) USING BTREE,
  INDEX `t_role_menu_role_id`(`ROLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (77, 2);
INSERT INTO `t_role_menu` VALUES (78, 2);
INSERT INTO `t_role_menu` VALUES (78, 8);
INSERT INTO `t_role_menu` VALUES (78, 23);
INSERT INTO `t_role_menu` VALUES (78, 10);
INSERT INTO `t_role_menu` VALUES (78, 24);
INSERT INTO `t_role_menu` VALUES (78, 170);
INSERT INTO `t_role_menu` VALUES (78, 136);
INSERT INTO `t_role_menu` VALUES (78, 171);
INSERT INTO `t_role_menu` VALUES (78, 172);
INSERT INTO `t_role_menu` VALUES (78, 127);
INSERT INTO `t_role_menu` VALUES (78, 128);
INSERT INTO `t_role_menu` VALUES (78, 129);
INSERT INTO `t_role_menu` VALUES (78, 131);
INSERT INTO `t_role_menu` VALUES (79, 101);
INSERT INTO `t_role_menu` VALUES (79, 102);
INSERT INTO `t_role_menu` VALUES (79, 103);
INSERT INTO `t_role_menu` VALUES (79, 104);
INSERT INTO `t_role_menu` VALUES (79, 105);
INSERT INTO `t_role_menu` VALUES (79, 106);
INSERT INTO `t_role_menu` VALUES (79, 107);
INSERT INTO `t_role_menu` VALUES (79, 108);
INSERT INTO `t_role_menu` VALUES (79, 173);
INSERT INTO `t_role_menu` VALUES (79, 109);
INSERT INTO `t_role_menu` VALUES (79, 110);
INSERT INTO `t_role_menu` VALUES (79, 174);
INSERT INTO `t_role_menu` VALUES (1, 1);
INSERT INTO `t_role_menu` VALUES (1, 3);
INSERT INTO `t_role_menu` VALUES (1, 11);
INSERT INTO `t_role_menu` VALUES (1, 12);
INSERT INTO `t_role_menu` VALUES (1, 13);
INSERT INTO `t_role_menu` VALUES (1, 160);
INSERT INTO `t_role_menu` VALUES (1, 161);
INSERT INTO `t_role_menu` VALUES (1, 4);
INSERT INTO `t_role_menu` VALUES (1, 14);
INSERT INTO `t_role_menu` VALUES (1, 15);
INSERT INTO `t_role_menu` VALUES (1, 16);
INSERT INTO `t_role_menu` VALUES (1, 162);
INSERT INTO `t_role_menu` VALUES (1, 5);
INSERT INTO `t_role_menu` VALUES (1, 17);
INSERT INTO `t_role_menu` VALUES (1, 18);
INSERT INTO `t_role_menu` VALUES (1, 19);
INSERT INTO `t_role_menu` VALUES (1, 163);
INSERT INTO `t_role_menu` VALUES (1, 6);
INSERT INTO `t_role_menu` VALUES (1, 20);
INSERT INTO `t_role_menu` VALUES (1, 21);
INSERT INTO `t_role_menu` VALUES (1, 22);
INSERT INTO `t_role_menu` VALUES (1, 164);
INSERT INTO `t_role_menu` VALUES (1, 2);
INSERT INTO `t_role_menu` VALUES (1, 8);
INSERT INTO `t_role_menu` VALUES (1, 23);
INSERT INTO `t_role_menu` VALUES (1, 10);
INSERT INTO `t_role_menu` VALUES (1, 24);
INSERT INTO `t_role_menu` VALUES (1, 170);
INSERT INTO `t_role_menu` VALUES (1, 136);
INSERT INTO `t_role_menu` VALUES (1, 171);
INSERT INTO `t_role_menu` VALUES (1, 172);
INSERT INTO `t_role_menu` VALUES (1, 127);
INSERT INTO `t_role_menu` VALUES (1, 128);
INSERT INTO `t_role_menu` VALUES (1, 129);
INSERT INTO `t_role_menu` VALUES (1, 131);
INSERT INTO `t_role_menu` VALUES (1, 175);
INSERT INTO `t_role_menu` VALUES (1, 101);
INSERT INTO `t_role_menu` VALUES (1, 102);
INSERT INTO `t_role_menu` VALUES (1, 103);
INSERT INTO `t_role_menu` VALUES (1, 104);
INSERT INTO `t_role_menu` VALUES (1, 105);
INSERT INTO `t_role_menu` VALUES (1, 106);
INSERT INTO `t_role_menu` VALUES (1, 107);
INSERT INTO `t_role_menu` VALUES (1, 108);
INSERT INTO `t_role_menu` VALUES (1, 173);
INSERT INTO `t_role_menu` VALUES (1, 109);
INSERT INTO `t_role_menu` VALUES (1, 110);
INSERT INTO `t_role_menu` VALUES (1, 174);
INSERT INTO `t_role_menu` VALUES (2, 1);
INSERT INTO `t_role_menu` VALUES (2, 3);
INSERT INTO `t_role_menu` VALUES (2, 161);
INSERT INTO `t_role_menu` VALUES (2, 4);
INSERT INTO `t_role_menu` VALUES (2, 162);
INSERT INTO `t_role_menu` VALUES (2, 5);
INSERT INTO `t_role_menu` VALUES (2, 163);
INSERT INTO `t_role_menu` VALUES (2, 6);
INSERT INTO `t_role_menu` VALUES (2, 164);
INSERT INTO `t_role_menu` VALUES (2, 2);
INSERT INTO `t_role_menu` VALUES (2, 8);
INSERT INTO `t_role_menu` VALUES (2, 10);
INSERT INTO `t_role_menu` VALUES (2, 170);
INSERT INTO `t_role_menu` VALUES (2, 136);
INSERT INTO `t_role_menu` VALUES (2, 172);
INSERT INTO `t_role_menu` VALUES (2, 127);
INSERT INTO `t_role_menu` VALUES (2, 128);
INSERT INTO `t_role_menu` VALUES (2, 129);
INSERT INTO `t_role_menu` VALUES (2, 131);
INSERT INTO `t_role_menu` VALUES (2, 175);
INSERT INTO `t_role_menu` VALUES (2, 101);
INSERT INTO `t_role_menu` VALUES (2, 173);
INSERT INTO `t_role_menu` VALUES (2, 109);
INSERT INTO `t_role_menu` VALUES (2, 174);
INSERT INTO `t_role_menu` VALUES (80, 183);
INSERT INTO `t_role_menu` VALUES (80, 184);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `USER_ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime(0) NULL DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `IS_TAB` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否开启tab，0关闭 1开启',
  `THEME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`USER_ID`) USING BTREE,
  INDEX `t_user_username`(`USERNAME`) USING BTREE,
  INDEX `t_user_mobile`(`MOBILE`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'MrBird', 'b9a81e45893e814679a13d79e4617dfd', 1, 'mrbird@qq.com', '17788888888', '1', '2019-06-14 20:39:22', '2020-04-14 10:10:38', '2020-04-14 10:11:06', '0', '1', 'black', 'cnrhVkzwxjPwAaCfPbdc.png', '我是帅比作者。');
INSERT INTO `t_user` VALUES (2, 'Scott', '1d685729d113cfd03872f154939bee1c', 10, 'scott@gmail.com', '17722222222', '1', '2019-06-14 20:55:53', '2019-06-14 21:05:43', '2019-08-18 17:36:18', '0', '1', 'black', 'gaOngJwsRYRaVAuXXcmB.png', '我是scott。');
INSERT INTO `t_user` VALUES (3, 'Reina', '1461afff857c02afbfb768aa3771503d', 4, 'Reina@hotmail.com', '17711111111', '0', '2019-06-14 21:07:38', '2019-06-14 21:09:06', '2019-06-14 21:08:26', '1', '1', 'black', '5997fedcc7bd4cffbd350b40d1b5b987.jpg', '由于公款私用，已被封禁。');
INSERT INTO `t_user` VALUES (5, 'Jana', '176679b77b3c3e352bd3b30ddc81083e', 8, 'Jana@126.com', '17744444444', '1', '2019-06-14 21:12:16', '2019-06-14 21:12:52', '2019-06-14 21:12:32', '1', '1', 'white', '20180414165821.jpg', '大家好，我叫简娜');
INSERT INTO `t_user` VALUES (7, 'Margot', '31379841b9f4bfde22b8b40471e9a6ce', 9, 'Margot@qq.com', '13444444444', '1', '2019-06-14 21:17:53', '2019-06-14 21:18:59', '2019-06-14 21:18:07', '1', '1', 'white', '20180414165834.jpg', '大家好我叫玛戈');
INSERT INTO `t_user` VALUES (9, 'admin', '856aea89ad509f163284abb75579dcfc', 1, 'qq@qq.com', '18888888888', '1', '2020-04-14 10:13:45', '2020-04-14 10:19:50', '2020-04-14 15:59:12', '0', '1', 'black', 'default.jpg', '系统管理员');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `USER_ID` bigint(0) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(0) NOT NULL COMMENT '角色ID',
  INDEX `t_user_role_user_id`(`USER_ID`) USING BTREE,
  INDEX `t_user_role_role_id`(`ROLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1);
INSERT INTO `t_user_role` VALUES (2, 2);
INSERT INTO `t_user_role` VALUES (3, 77);
INSERT INTO `t_user_role` VALUES (5, 79);
INSERT INTO `t_user_role` VALUES (7, 78);
INSERT INTO `t_user_role` VALUES (7, 79);
INSERT INTO `t_user_role` VALUES (7, 80);
INSERT INTO `t_user_role` VALUES (9, 80);
INSERT INTO `t_user_role` VALUES (9, 1);

SET FOREIGN_KEY_CHECKS = 1;
