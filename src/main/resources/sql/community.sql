/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : community

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 04/06/2020 17:55:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activit
-- ----------------------------
DROP TABLE IF EXISTS `activit`;
CREATE TABLE `activit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NOT NULL COMMENT '社团id',
  `date` datetime(6) NOT NULL,
  `fist_date` datetime(6) NOT NULL,
  `intros` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `know` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_date` datetime(6) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` int(11) UNSIGNED ZEROFILL NOT NULL,
  `peo_id` int(11) NOT NULL,
  `pla_id` int(11) NOT NULL COMMENT '地址id',
  `plan_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rates` int(11) DEFAULT NULL,
  `sum_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动总结',
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `com_id`(`com_id`) USING BTREE,
  INDEX `peo_id`(`peo_id`) USING BTREE,
  INDEX `pla_id`(`pla_id`) USING BTREE,
  CONSTRAINT `activit_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `comm` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `activit_ibfk_2` FOREIGN KEY (`peo_id`) REFERENCES `people` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `activit_ibfk_3` FOREIGN KEY (`pla_id`) REFERENCES `place` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_date` datetime(6) NOT NULL,
  `goo_id` int(11) NOT NULL,
  `last_date` datetime(6) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` int(11) NOT NULL,
  `peo_id` int(11) NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goo_id`(`goo_id`) USING BTREE,
  INDEX `peo_id`(`peo_id`) USING BTREE,
  CONSTRAINT `borrow_ibfk_1` FOREIGN KEY (`goo_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `borrow_ibfk_2` FOREIGN KEY (`peo_id`) REFERENCES `people` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comm
-- ----------------------------
DROP TABLE IF EXISTS `comm`;
CREATE TABLE `comm`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `collage` int(11) NOT NULL COMMENT '学院id',
  `date` datetime(6) NOT NULL,
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `lever` int(11) DEFAULT NULL,
  `money` decimal(19, 2) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sum` int(11) NOT NULL DEFAULT 0 COMMENT '总人数',
  `teacher_id` int(11) NOT NULL COMMENT '指导教师',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '1 社团中心  0其余社团',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `collage`(`collage`) USING BTREE,
  INDEX `teacher_id`(`teacher_id`) USING BTREE,
  CONSTRAINT `comm_ibfk_1` FOREIGN KEY (`collage`) REFERENCES `college` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comm_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `people` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peo_id` int(11) NOT NULL,
  `date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `peo_id`(`peo_id`) USING BTREE,
  CONSTRAINT `files_ibfk_1` FOREIGN KEY (`peo_id`) REFERENCES `people` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物品名',
  `number` int(11) NOT NULL,
  `peo_id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `com_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `peo_id`(`peo_id`) USING BTREE,
  INDEX `com_id`(`com_id`) USING BTREE,
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`peo_id`) REFERENCES `people` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`com_id`) REFERENCES `comm` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for meets
-- ----------------------------
DROP TABLE IF EXISTS `meets`;
CREATE TABLE `meets`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `persion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `com_id` int(11) NOT NULL COMMENT '社团id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `com_id`(`com_id`) USING BTREE,
  CONSTRAINT `meets_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `comm` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '班级名称',
  `comm_id` int(11) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `grad` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `number`(`number`) USING BTREE,
  INDEX `comm_id`(`comm_id`) USING BTREE,
  CONSTRAINT `members_ibfk_1` FOREIGN KEY (`comm_id`) REFERENCES `comm` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for money
-- ----------------------------
DROP TABLE IF EXISTS `money`;
CREATE TABLE `money`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `in_out` int(11) NOT NULL,
  `money` decimal(19, 2) NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `peo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `com_id`(`com_id`) USING BTREE,
  INDEX `peo_id`(`peo_id`) USING BTREE,
  CONSTRAINT `money_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `comm` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `money_ibfk_2` FOREIGN KEY (`peo_id`) REFERENCES `people` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for office
-- ----------------------------
DROP TABLE IF EXISTS `office`;
CREATE TABLE `office`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NOT NULL,
  `peo_id` int(11) NOT NULL,
  `perm` int(11) DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `com_id`(`com_id`) USING BTREE,
  INDEX `peo_id`(`peo_id`) USING BTREE,
  CONSTRAINT `office_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `comm` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `office_ibfk_2` FOREIGN KEY (`peo_id`) REFERENCES `people` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for people
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `adress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `college` int(11) NOT NULL COMMENT '学院id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '4 保卫科  3学院   2指导教师    1会长     0部长',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `number`(`number`) USING BTREE,
  UNIQUE INDEX `number_2`(`number`) USING BTREE,
  INDEX `college`(`college`) USING BTREE,
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`college`) REFERENCES `college` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for verity
-- ----------------------------
DROP TABLE IF EXISTS `verity`;
CREATE TABLE `verity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peo_id` int(11) NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `act_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `peo_id`(`peo_id`) USING BTREE,
  INDEX `act_id`(`act_id`) USING BTREE,
  CONSTRAINT `verity_ibfk_1` FOREIGN KEY (`peo_id`) REFERENCES `people` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `verity_ibfk_2` FOREIGN KEY (`act_id`) REFERENCES `activit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
