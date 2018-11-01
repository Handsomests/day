/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : web

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 01/11/2018 16:19:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `number` int(10) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 195 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 'java从入门到放弃', 88.88, 10, '\n程序员高薪是高技术的人高薪。照着代码敲几个模板，不去探究语言深层次的东西。你永远也写不出优秀的代码。况且学习是没有止境的。第三方的开源库，公司的sdk，同事的代码，这些东西都要去看去学。像培训机构那样硬背，你去入职几天要么放弃，要么累成狗。');
INSERT INTO `book` VALUES (2, 'MySQL从删库到跑路', 108.90, 10, '现在我们使用关系型数据库管理系统（RDBMS）来存储和管理的大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。');
INSERT INTO `book` VALUES (105, 'java从入门到放弃', 88.88, 10, '\n程序员高薪是高技术的人高薪。照着代码敲几个模板，不去探究语言深层次的东西。你永远也写不出优秀的代码。况且学习是没有止境的。第三方的开源库，公司的sdk，同事的代码，这些东西都要去看去学。像培训机构那样硬背，你去入职几天要么放弃，要么累成狗。');
INSERT INTO `book` VALUES (106, 'MySQL从删库到跑路', 108.90, 10, '现在我们使用关系型数据库管理系统（RDBMS）来存储和管理的大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。');
INSERT INTO `book` VALUES (109, 'html', 14.00, 14, 'dd');
INSERT INTO `book` VALUES (110, 'jquery', 15.00, 15, 'ee');
INSERT INTO `book` VALUES (111, 'mybatis', 16.00, 16, 'ff');
INSERT INTO `book` VALUES (112, 'spring', 17.00, 17, 'gg');
INSERT INTO `book` VALUES (113, 'spring mvc', 18.00, 18, 'hh');
INSERT INTO `book` VALUES (114, 'spring boot', 19.00, 19, 'jj');
INSERT INTO `book` VALUES (115, 'java从入门到放弃', 88.88, 10, '\n程序员高薪是高技术的人高薪。照着代码敲几个模板，不去探究语言深层次的东西。你永远也写不出优秀的代码。况且学习是没有止境的。第三方的开源库，公司的sdk，同事的代码，这些东西都要去看去学。像培训机构那样硬背，你去入职几天要么放弃，要么累成狗。');
INSERT INTO `book` VALUES (116, 'MySQL从删库到跑路', 108.90, 10, '现在我们使用关系型数据库管理系统（RDBMS）来存储和管理的大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。');
INSERT INTO `book` VALUES (117, '大数据', 10.00, 1, 'aa');
INSERT INTO `book` VALUES (118, '云计算', 13.00, 13, 'cc');
INSERT INTO `book` VALUES (119, 'html', 14.00, 14, 'dd');
INSERT INTO `book` VALUES (120, 'jquery', 15.00, 15, 'ee');
INSERT INTO `book` VALUES (121, 'mybatis', 16.00, 16, 'ff');
INSERT INTO `book` VALUES (122, 'spring', 17.00, 17, 'gg');
INSERT INTO `book` VALUES (123, 'spring mvc', 18.00, 18, 'hh');
INSERT INTO `book` VALUES (124, 'spring boot', 19.00, 19, 'jj');
INSERT INTO `book` VALUES (125, 'java从入门到放弃', 88.88, 10, '\n程序员高薪是高技术的人高薪。照着代码敲几个模板，不去探究语言深层次的东西。你永远也写不出优秀的代码。况且学习是没有止境的。第三方的开源库，公司的sdk，同事的代码，这些东西都要去看去学。像培训机构那样硬背，你去入职几天要么放弃，要么累成狗。');
INSERT INTO `book` VALUES (126, 'MySQL从删库到跑路', 108.90, 10, '现在我们使用关系型数据库管理系统（RDBMS）来存储和管理的大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。');
INSERT INTO `book` VALUES (127, '大数据', 10.00, 1, 'aa');
INSERT INTO `book` VALUES (128, '云计算', 13.00, 13, 'cc');
INSERT INTO `book` VALUES (129, 'html', 14.00, 14, 'dd');
INSERT INTO `book` VALUES (130, 'jquery', 15.00, 15, 'ee');
INSERT INTO `book` VALUES (131, 'mybatis', 16.00, 16, 'ff');
INSERT INTO `book` VALUES (132, 'spring', 17.00, 17, 'gg');
INSERT INTO `book` VALUES (133, 'spring mvc', 18.00, 18, 'hh');
INSERT INTO `book` VALUES (134, 'spring boot', 19.00, 19, 'jj');
INSERT INTO `book` VALUES (135, 'java从入门到放弃', 88.88, 10, '\n程序员高薪是高技术的人高薪。照着代码敲几个模板，不去探究语言深层次的东西。你永远也写不出优秀的代码。况且学习是没有止境的。第三方的开源库，公司的sdk，同事的代码，这些东西都要去看去学。像培训机构那样硬背，你去入职几天要么放弃，要么累成狗。');
INSERT INTO `book` VALUES (136, 'MySQL从删库到跑路', 108.90, 10, '现在我们使用关系型数据库管理系统（RDBMS）来存储和管理的大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。');
INSERT INTO `book` VALUES (137, '大数据', 10.00, 1, 'aa');
INSERT INTO `book` VALUES (138, '云计算', 13.00, 13, 'cc');
INSERT INTO `book` VALUES (139, 'html', 14.00, 14, 'dd');
INSERT INTO `book` VALUES (140, 'jquery', 15.00, 15, 'ee');
INSERT INTO `book` VALUES (141, 'mybatis', 16.00, 16, 'ff');
INSERT INTO `book` VALUES (142, 'spring', 17.00, 17, 'gg');
INSERT INTO `book` VALUES (143, 'spring mvc', 18.00, 18, 'hh');
INSERT INTO `book` VALUES (144, 'spring boot', 19.00, 19, 'jj');
INSERT INTO `book` VALUES (145, 'java从入门到放弃', 88.88, 10, '\n程序员高薪是高技术的人高薪。照着代码敲几个模板，不去探究语言深层次的东西。你永远也写不出优秀的代码。况且学习是没有止境的。第三方的开源库，公司的sdk，同事的代码，这些东西都要去看去学。像培训机构那样硬背，你去入职几天要么放弃，要么累成狗。');
INSERT INTO `book` VALUES (146, 'MySQL从删库到跑路', 108.90, 10, '现在我们使用关系型数据库管理系统（RDBMS）来存储和管理的大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。');
INSERT INTO `book` VALUES (147, '大数据', 10.00, 1, 'aa');
INSERT INTO `book` VALUES (148, '云计算', 13.00, 13, 'cc');
INSERT INTO `book` VALUES (149, 'html', 14.00, 14, 'dd');
INSERT INTO `book` VALUES (150, 'jquery', 15.00, 15, 'ee');
INSERT INTO `book` VALUES (151, 'mybatis', 16.00, 16, 'ff');
INSERT INTO `book` VALUES (152, 'spring', 17.00, 17, 'gg');
INSERT INTO `book` VALUES (153, 'spring mvc', 18.00, 18, 'hh');
INSERT INTO `book` VALUES (154, 'spring boot', 19.00, 19, 'jj');
INSERT INTO `book` VALUES (155, 'java从入门到放弃', 88.88, 10, '\n程序员高薪是高技术的人高薪。照着代码敲几个模板，不去探究语言深层次的东西。你永远也写不出优秀的代码。况且学习是没有止境的。第三方的开源库，公司的sdk，同事的代码，这些东西都要去看去学。像培训机构那样硬背，你去入职几天要么放弃，要么累成狗。');
INSERT INTO `book` VALUES (156, 'MySQL从删库到跑路', 108.90, 10, '现在我们使用关系型数据库管理系统（RDBMS）来存储和管理的大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。');
INSERT INTO `book` VALUES (157, '大数据', 10.00, 1, 'aa');
INSERT INTO `book` VALUES (158, '云计算', 13.00, 13, 'cc');
INSERT INTO `book` VALUES (159, 'html', 14.00, 14, 'dd');
INSERT INTO `book` VALUES (160, 'jquery', 15.00, 15, 'ee');
INSERT INTO `book` VALUES (161, 'mybatis', 16.00, 16, 'ff');
INSERT INTO `book` VALUES (162, 'spring', 17.00, 17, 'gg');
INSERT INTO `book` VALUES (163, 'spring mvc', 18.00, 18, 'hh');
INSERT INTO `book` VALUES (164, 'spring boot', 19.00, 19, 'jj');
INSERT INTO `book` VALUES (165, 'java从入门到放弃', 88.88, 10, '\n程序员高薪是高技术的人高薪。照着代码敲几个模板，不去探究语言深层次的东西。你永远也写不出优秀的代码。况且学习是没有止境的。第三方的开源库，公司的sdk，同事的代码，这些东西都要去看去学。像培训机构那样硬背，你去入职几天要么放弃，要么累成狗。');
INSERT INTO `book` VALUES (166, 'MySQL从删库到跑路', 108.90, 10, '现在我们使用关系型数据库管理系统（RDBMS）来存储和管理的大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。');
INSERT INTO `book` VALUES (167, '大数据', 10.00, 1, 'aa');
INSERT INTO `book` VALUES (168, '云计算', 13.00, 13, 'cc');
INSERT INTO `book` VALUES (169, 'html', 14.00, 14, 'dd');
INSERT INTO `book` VALUES (170, 'jquery', 15.00, 15, 'ee');
INSERT INTO `book` VALUES (172, 'spring', 17.00, 17, 'gg');
INSERT INTO `book` VALUES (173, 'spring mvc', 18.00, 18, 'hh');
INSERT INTO `book` VALUES (174, 'spring boot', 19.00, 19, 'jj');
INSERT INTO `book` VALUES (175, 'java从入门到放弃', 88.88, 10, '\n程序员高薪是高技术的人高薪。照着代码敲几个模板，不去探究语言深层次的东西。你永远也写不出优秀的代码。况且学习是没有止境的。第三方的开源库，公司的sdk，同事的代码，这些东西都要去看去学。像培训机构那样硬背，你去入职几天要么放弃，要么累成狗。');
INSERT INTO `book` VALUES (176, 'MySQL从删库到跑路', 108.90, 10, '现在我们使用关系型数据库管理系统（RDBMS）来存储和管理的大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。');
INSERT INTO `book` VALUES (177, '大数据', 10.00, 1, 'aa');
INSERT INTO `book` VALUES (178, '云计算', 13.00, 13, 'cc');
INSERT INTO `book` VALUES (179, 'html', 14.00, 14, 'dd');
INSERT INTO `book` VALUES (180, 'jquery', 15.00, 15, 'ee');
INSERT INTO `book` VALUES (181, 'mybatis', 16.00, 16, 'ff');
INSERT INTO `book` VALUES (182, 'spring', 17.00, 17, 'gg');
INSERT INTO `book` VALUES (183, 'spring mvc', 18.00, 18, 'hh');
INSERT INTO `book` VALUES (184, 'spring boot', 19.00, 19, 'jj');
INSERT INTO `book` VALUES (185, 'java从入门到放弃', 88.88, 10, '\n程序员高薪是高技术的人高薪。照着代码敲几个模板，不去探究语言深层次的东西。你永远也写不出优秀的代码。况且学习是没有止境的。第三方的开源库，公司的sdk，同事的代码，这些东西都要去看去学。像培训机构那样硬背，你去入职几天要么放弃，要么累成狗。');
INSERT INTO `book` VALUES (186, 'MySQL从删库到跑路', 108.90, 10, '现在我们使用关系型数据库管理系统（RDBMS）来存储和管理的大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。');
INSERT INTO `book` VALUES (187, '大数据', 10.00, 1, 'aa');
INSERT INTO `book` VALUES (188, '云计算', 13.00, 13, 'cc');
INSERT INTO `book` VALUES (189, 'html', 14.00, 14, 'dd');
INSERT INTO `book` VALUES (190, 'jquery', 15.00, 15, 'ee');
INSERT INTO `book` VALUES (191, 'mybatis', 16.00, 16, 'ff');
INSERT INTO `book` VALUES (192, 'spring', 17.00, 17, 'gg');
INSERT INTO `book` VALUES (193, 'spring mvc', 18.00, 18, 'hh');
INSERT INTO `book` VALUES (194, 'spring boot', 19.00, 19, 'jj');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good`  (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `goodName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `newPrice` decimal(10, 2) NOT NULL,
  `amount` double(10, 0) NOT NULL,
  `date` datetime(0) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1848 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES (1830, '华为p20', 3088.00, 3048.00, 10, '2018-10-09 00:00:00', '这是发现美的眼睛，这是深藏智慧的目光不只契合你的向往更能创造你的惊叹 HUAWEI P20系列，为你而来');
INSERT INTO `good` VALUES (1844, '魅族16th', 3188.00, 3188.00, 10, '2018-10-09 00:00:00', '魅族 16th 系列简直是全面屏阵营的典范。窄至 1.43mm 的左右边框，是自我的颠覆。我们所采用的三星 AMOLED COF 屏幕，其量产宽度直接下探至 40mm。这是一块足够纯粹的全面屏，仅 7mm 的上边框，被我们丧心病狂的塞进多个定制化分离式传感器、隐藏式听筒、超线性扬声器和 2000 万像素摄像头。眼见不一定为实，我们还做了件棘手的事情：白色前面板被完好保留下来，并只有一个摄像头开孔。');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `themes` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '==========', '体育');
INSERT INTO `news` VALUES (2, '---------------------', '游戏');
INSERT INTO `news` VALUES (3, 'eeeee', '凉凉');
INSERT INTO `news` VALUES (4, 'wwww', 'wwww');

-- ----------------------------
-- Table structure for news_comment
-- ----------------------------
DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE `news_comment`  (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for news_plate
-- ----------------------------
DROP TABLE IF EXISTS `news_plate`;
CREATE TABLE `news_plate`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `Id`(`Id`) USING BTREE,
  INDEX `Id_2`(`Id`) USING BTREE,
  INDEX `Id_3`(`Id`) USING BTREE,
  INDEX `Id_4`(`Id`) USING BTREE,
  INDEX `Id_5`(`Id`) USING BTREE,
  INDEX `Id_6`(`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ADMIN');
INSERT INTO `role` VALUES (2, 'USER');

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (1, 1, 1);
INSERT INTO `role_user` VALUES (2, 1, 2);
INSERT INTO `role_user` VALUES (3, 2, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPass` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPassEnter` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `regDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `Id`(`Id`) USING BTREE,
  INDEX `Id_2`(`Id`) USING BTREE,
  INDEX `Id_3`(`Id`) USING BTREE,
  INDEX `Id_4`(`Id`) USING BTREE,
  INDEX `Id_5`(`Id`) USING BTREE,
  INDEX `Id_6`(`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123', '123', '123@qq.com', '2018-01-01 00:00:00');
INSERT INTO `user` VALUES (2, '李四', '123', '123', '123@qq.com', '2018-03-06 00:00:00');
INSERT INTO `user` VALUES (13, 'test', 'zxc123', 'zxc123', '502123065@qq.com', '2018-10-26 16:26:50');

SET FOREIGN_KEY_CHECKS = 1;
