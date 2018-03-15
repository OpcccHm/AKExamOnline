/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : db_exam

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2018-03-15 14:29:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for paper_class
-- ----------------------------
DROP TABLE IF EXISTS `paper_class`;
CREATE TABLE `paper_class` (
  `pcId` int(11) NOT NULL AUTO_INCREMENT,
  `pId` int(11) NOT NULL,
  `cCode` varchar(20) NOT NULL,
  `examDate` date NOT NULL,
  `endDate` date NOT NULL,
  PRIMARY KEY (`pcId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper_class
-- ----------------------------
INSERT INTO `paper_class` VALUES ('1', '1', '16GR1', '2018-03-06', '2018-03-06');

-- ----------------------------
-- Table structure for paper_wquestion
-- ----------------------------
DROP TABLE IF EXISTS `paper_wquestion`;
CREATE TABLE `paper_wquestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pId` int(11) NOT NULL,
  `qId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper_wquestion
-- ----------------------------
INSERT INTO `paper_wquestion` VALUES ('1', '3', '1003');
INSERT INTO `paper_wquestion` VALUES ('2', '3', '1004');
INSERT INTO `paper_wquestion` VALUES ('3', '3', '1002');
INSERT INTO `paper_wquestion` VALUES ('4', '3', '1001');
INSERT INTO `paper_wquestion` VALUES ('5', '3', '1005');
INSERT INTO `paper_wquestion` VALUES ('6', '3', '1006');
INSERT INTO `paper_wquestion` VALUES ('7', '4', '1004');
INSERT INTO `paper_wquestion` VALUES ('8', '4', '1002');
INSERT INTO `paper_wquestion` VALUES ('9', '4', '1005');
INSERT INTO `paper_wquestion` VALUES ('10', '4', '1001');
INSERT INTO `paper_wquestion` VALUES ('11', '4', '1003');
INSERT INTO `paper_wquestion` VALUES ('12', '4', '1006');
INSERT INTO `paper_wquestion` VALUES ('13', '5', '1001');
INSERT INTO `paper_wquestion` VALUES ('14', '5', '1004');
INSERT INTO `paper_wquestion` VALUES ('15', '5', '1006');
INSERT INTO `paper_wquestion` VALUES ('16', '5', '1002');
INSERT INTO `paper_wquestion` VALUES ('17', '5', '1005');
INSERT INTO `paper_wquestion` VALUES ('18', '5', '1003');
INSERT INTO `paper_wquestion` VALUES ('19', '6', '1003');
INSERT INTO `paper_wquestion` VALUES ('20', '6', '1001');
INSERT INTO `paper_wquestion` VALUES ('21', '6', '1002');
INSERT INTO `paper_wquestion` VALUES ('22', '6', '1004');
INSERT INTO `paper_wquestion` VALUES ('23', '7', '1004');
INSERT INTO `paper_wquestion` VALUES ('24', '7', '1006');
INSERT INTO `paper_wquestion` VALUES ('25', '7', '1003');
INSERT INTO `paper_wquestion` VALUES ('26', '7', '1005');
INSERT INTO `paper_wquestion` VALUES ('27', '7', '1001');

-- ----------------------------
-- Table structure for t_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_answer`;
CREATE TABLE `t_answer` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `answer` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_answer
-- ----------------------------

-- ----------------------------
-- Table structure for t_classinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_classinfo`;
CREATE TABLE `t_classinfo` (
  `cCode` varchar(20) NOT NULL,
  `cName` varchar(20) NOT NULL,
  `major` varchar(10) NOT NULL,
  `insId` varchar(20) NOT NULL,
  `iecId` varchar(20) NOT NULL,
  `cDate` date NOT NULL,
  `g1Num` int(11) DEFAULT NULL,
  `g2Num` int(11) DEFAULT NULL,
  `g3Num` int(11) DEFAULT NULL,
  `csId` int(11) DEFAULT NULL,
  `cRemark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_classinfo
-- ----------------------------
INSERT INTO `t_classinfo` VALUES ('16GR1', '16级高软1班', 'SCME', 'g17719100357', 'g13353952929', '2016-09-01', null, null, null, '0', null);

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `csId` int(11) NOT NULL AUTO_INCREMENT,
  `csName` varchar(20) NOT NULL,
  `stage` varchar(2) NOT NULL,
  `major` varchar(10) NOT NULL,
  PRIMARY KEY (`csId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('1', '计算机基础', 'G1', 'SCME');
INSERT INTO `t_course` VALUES ('2', 'PS', 'G1', 'SCME');
INSERT INTO `t_course` VALUES ('3', 'SQLServer', 'G1', 'SCME');
INSERT INTO `t_course` VALUES ('4', 'Java', 'G1', 'SCME');
INSERT INTO `t_course` VALUES ('5', 'JSP', 'G2', 'SCME');
INSERT INTO `t_course` VALUES ('6', 'JavaScript', 'G2', 'SCME');
INSERT INTO `t_course` VALUES ('7', 'Struts2', 'G2', 'SCME');
INSERT INTO `t_course` VALUES ('8', 'Hibernate', 'G2', 'SCME');
INSERT INTO `t_course` VALUES ('9', 'Spring', 'G3', 'SCME');
INSERT INTO `t_course` VALUES ('10', 'MyBatis', 'G3', 'SCME');
INSERT INTO `t_course` VALUES ('11', 'Liunx', 'G3', 'SCCE');
INSERT INTO `t_course` VALUES ('12', 'QT', 'G3', 'SCCE');
INSERT INTO `t_course` VALUES ('13', 'MySQL', 'G3', 'SCCE');

-- ----------------------------
-- Table structure for t_machinequestion
-- ----------------------------
DROP TABLE IF EXISTS `t_machinequestion`;
CREATE TABLE `t_machinequestion` (
  `qId` int(11) NOT NULL AUTO_INCREMENT,
  `qTitle` varchar(100) NOT NULL,
  `degree` varchar(4) NOT NULL,
  `csId` int(11) NOT NULL,
  `chapter` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`qId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_machinequestion
-- ----------------------------

-- ----------------------------
-- Table structure for t_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_paper`;
CREATE TABLE `t_paper` (
  `pId` int(11) NOT NULL AUTO_INCREMENT,
  `pName` varchar(20) NOT NULL,
  `pTime` int(11) NOT NULL,
  `pTotalScore` int(11) NOT NULL,
  `csId` int(11) NOT NULL,
  `qTotal` double DEFAULT NULL,
  `qScore` int(11) NOT NULL,
  `pType` varchar(10) NOT NULL,
  `pState` varchar(10) NOT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_paper
-- ----------------------------
INSERT INTO `t_paper` VALUES ('1', '计算机基础考试01', '60', '100', '1', '50', '2', '笔试', '未开考');
INSERT INTO `t_paper` VALUES ('3', '计算机二级考试01', '60', '100', '1', '6', '16', '笔试', '未开考');
INSERT INTO `t_paper` VALUES ('4', '计算机一级考试01', '60', '100', '1', '6', '16', '笔试', '未开考');
INSERT INTO `t_paper` VALUES ('5', '计算机四级考试', '60', '100', '1', '6', '16', '笔试', '未开考');
INSERT INTO `t_paper` VALUES ('6', '计算机06', '60', '100', '1', '4', '25', '笔试', '未开考');
INSERT INTO `t_paper` VALUES ('7', '计算机选题01', '60', '100', '1', '5', '20', '笔试', '未开考');

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score` (
  `scid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(15) NOT NULL,
  `pid` int(11) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`scid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_score
-- ----------------------------

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `sid` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `enterSchool` varchar(10) NOT NULL,
  `cCode` varchar(20) NOT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `IDCard` varchar(18) DEFAULT NULL,
  `pOutlook` varchar(10) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `ptel` varchar(11) DEFAULT NULL,
  `pRelation` varchar(10) DEFAULT NULL,
  `hostelBuil` varchar(10) DEFAULT NULL,
  `hostelNo` varchar(10) DEFAULT NULL,
  `baseInfo` varchar(50) DEFAULT NULL,
  `eduBg` varchar(20) DEFAULT NULL,
  `remarks` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('s18339401079', '秦大帅', '男', '2016', '16GR1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `tid` varchar(20) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `birthday` date DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `post` varchar(10) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('g13353952929', '刘文甫', '男', '1989-06-12', '本科', '13353952929', '讲师', '');
INSERT INTO `t_teacher` VALUES ('g17719100357', '李佳', '男', '1989-01-09', '本科', '17719100357', '班主任', '');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `name` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('admin', '123456', '4');
INSERT INTO `t_user` VALUES ('g13353952929', '123456', '2');
INSERT INTO `t_user` VALUES ('g17719100357', '123456', '2');
INSERT INTO `t_user` VALUES ('s18339401079', '123456', '1');

-- ----------------------------
-- Table structure for t_writtenquestion
-- ----------------------------
DROP TABLE IF EXISTS `t_writtenquestion`;
CREATE TABLE `t_writtenquestion` (
  `qId` int(11) NOT NULL AUTO_INCREMENT,
  `qType` varchar(10) NOT NULL,
  `qTitle` varchar(100) NOT NULL,
  `optionA` varchar(100) NOT NULL,
  `optionB` varchar(100) NOT NULL,
  `optionC` varchar(100) NOT NULL,
  `optionD` varchar(100) NOT NULL,
  `answer` varchar(4) DEFAULT NULL,
  `degree` varchar(4) NOT NULL,
  `csId` int(11) NOT NULL,
  `chapter` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`qId`)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_writtenquestion
-- ----------------------------
INSERT INTO `t_writtenquestion` VALUES ('1001', '单选', 'ss1', '1', '1', '1', '1', 'A', '简单', '1', 'T1');
INSERT INTO `t_writtenquestion` VALUES ('1002', '单选', 'ss1', '1', '1', '1', '1', 'A', '一般', '1', 'T2');
INSERT INTO `t_writtenquestion` VALUES ('1003', '单选', 'ss2', '1', '1', '1', '1', 'A', '困难', '1', 'T3');
INSERT INTO `t_writtenquestion` VALUES ('1004', '多选', 'ss3', '1', '1', '1', '1', 'A', '简单', '1', 'T4');
INSERT INTO `t_writtenquestion` VALUES ('1005', '多选', 'ss4', '1', '1', '1', '1', 'A', '一般', '1', 'T5');
INSERT INTO `t_writtenquestion` VALUES ('1006', '多选', 'ss5', '1', '1', '1', '1', 'A', '困难', '1', 'T6');
