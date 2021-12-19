-- --------------------------------------------------------
-- 主机:                           47.101.198.61
-- Server version:               10.3.21-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL 版本:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ssh_hw_manage
CREATE DATABASE IF NOT EXISTS `ssh_hw_manage` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ssh_hw_manage`;

-- Dumping structure for table ssh_hw_manage.checkwork
DROP TABLE IF EXISTS `checkwork`;
CREATE TABLE IF NOT EXISTS `checkwork` (
  `ch_id` int(11) NOT NULL AUTO_INCREMENT,
  `ch_s_account` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ch_c_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ch_w_id` int(11) DEFAULT NULL,
  `ch_score` int(11) DEFAULT NULL,
  `ch_mark` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ch_checkTime` datetime DEFAULT NULL,
  `ch_upTime` datetime DEFAULT NULL,
  `ch_path` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ssh_hw_manage.checkwork: ~7 rows (approximately)
/*!40000 ALTER TABLE `checkwork` DISABLE KEYS */;
INSERT INTO `checkwork` (`ch_id`, `ch_s_account`, `ch_c_id`, `ch_w_id`, `ch_score`, `ch_mark`, `ch_checkTime`, `ch_upTime`, `ch_path`) VALUES
	(11, '14201101', '142011', 7, 100, '不错', '2020-02-08 13:31:21', '2020-02-08 11:16:46', '/upload/'),
	(12, '14201101', '142011', 3, 0, NULL, NULL, '2020-02-08 13:33:01', '/upload/');
/*!40000 ALTER TABLE `checkwork` ENABLE KEYS */;

-- Dumping structure for table ssh_hw_manage.clazz
DROP TABLE IF EXISTS `clazz`;
CREATE TABLE IF NOT EXISTS `clazz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ssh_hw_manage.clazz: ~3 rows (approximately)
/*!40000 ALTER TABLE `clazz` DISABLE KEYS */;
INSERT INTO `clazz` (`id`, `c_id`, `c_count`) VALUES
	(1, '142011', 15),
	(2, '142012', 3),
	(3, '142013', 3);
/*!40000 ALTER TABLE `clazz` ENABLE KEYS */;

-- Dumping structure for table ssh_hw_manage.course
DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ssh_hw_manage.course: ~6 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`c_id`, `c_name`, `c_credit`) VALUES
	(1, '软件工程', 2),
	(2, '数据结构', 2),
	(3, '软件建模', 2),
	(4, 'web网络编程', 2),
	(5, '操作系统', 2),
	(6, 'Android', 2);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

-- Dumping structure for table ssh_hw_manage.manager
DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_account` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_password` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ssh_hw_manage.manager: ~4 rows (approximately)
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` (`id`, `m_account`, `m_name`, `m_password`) VALUES
	(1, 'admin', 'admin', 'admin'),
	(2, '1111', '张琦', 'admin'),
	(3, '2222', '何昶源', 'admin'),
	(4, '3333', '任孟凯', 'admin');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;

-- Dumping structure for table ssh_hw_manage.notice
DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `nt_id` int(11) NOT NULL AUTO_INCREMENT,
  `nt_title` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nt_content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nt_time` datetime DEFAULT NULL,
  `nt_t_account` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nt_c_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`nt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ssh_hw_manage.notice: ~4 rows (approximately)
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` (`nt_id`, `nt_title`, `nt_content`, `nt_time`, `nt_t_account`, `nt_c_id`) VALUES
	(1, '调课通知', '明天的课星期六补', '2017-03-08 00:00:00', '140001', '142011'),
	(4, '调课通知3', '明天的课星期日补', '2017-04-08 00:00:00', '140003', '142011'),
	(5, '调课通知3', '明天的课星期日补', '2017-04-08 00:00:00', '140003', '142012'),
	(6, '明天休息，课程调到下周一', '明天休息，课程调到下周一', '2020-02-16 00:00:00', '140001', '142011');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;

-- Dumping structure for table ssh_hw_manage.student
DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_account` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_sex` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_c_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_password` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_dept` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ssh_hw_manage.student: ~21 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`, `s_account`, `s_name`, `s_sex`, `s_c_id`, `s_password`, `s_dept`) VALUES
	(1, '14201101', '王嫣兰', '女', '142011', '123456', '软件学院'),
	(2, '14201102', '赵雯楚', '女', '142011', 'cccccc', '软件学院'),
	(3, '14201103', '李嘉丽', '女', '142011', 'cccccc', '软件学院'),
	(4, '14201104', '廖美欢', '女', '142011', 'cccccc', '软件学院'),
	(5, '14201105', '卢超素', '女', '142011', 'cccccc', '软件学院'),
	(6, '14201106', '张琦', '男', '142011', 'cccccc', '软件学院'),
	(7, '14201107', '何昶源', '男', '142011', 'cccccc', '软件学院'),
	(8, '14201108', '王启宁', '男', '142011', 'cccccc', '软件学院'),
	(9, '14201109', '任孟凯', '男', '142011', 'cccccc', '软件学院'),
	(10, '14201110', '孙明峰', '男', '142011', 'cccccc', '软件学院'),
	(11, '14201111', '崔平平', '男', '142011', 'cccccc', '软件学院'),
	(12, '14201112', '高晨阳', '男', '142011', 'cccccc', '软件学院'),
	(13, '14201113', '胡烨', '男', '142011', 'cccccc', '软件学院'),
	(14, '14201114', '黄帅英', '男', '142011', 'cccccc', '软件学院'),
	(15, '14201115', '廖亮', '男', '142011', 'cccccc', '软件学院'),
	(16, '14201201', '陆亦可', '女', '142012', 'cccccc', '软件学院'),
	(17, '14201202', '侯亮平', '男', '142012', 'cccccc', '软件学院'),
	(18, '14201203', '沙瑞金', '男', '142012', 'cccccc', '软件学院'),
	(19, '14201301', '高小琴', '女', '142013', 'cccccc', '软件学院'),
	(20, '14201302', '李达康', '男', '142013', 'cccccc', '软件学院'),
	(21, '14201303', '易学习', '男', '142013', 'cccccc', '软件学院');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- Dumping structure for table ssh_hw_manage.teacher
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_account` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_sex` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_dept` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_password` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ssh_hw_manage.teacher: ~6 rows (approximately)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` (`id`, `t_account`, `t_name`, `t_sex`, `t_dept`, `t_password`) VALUES
	(1, '140001', '舒坚', '男', '软件学院', '123456'),
	(2, '140002', '严赢富', '男', '软件学院', 'bbbbbb'),
	(3, '140003', '罗海平', '男', '软件学院', 'bbbbbb'),
	(4, '140004', '梁旗军', '男', '软件学院', 'bbbbbb'),
	(5, '140005', '苏曦', '男', '软件学院', 'bbbbbb'),
	(6, '140006', '刘琳岚', '女', '信工学院', 'bbbbbb');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;

-- Dumping structure for table ssh_hw_manage.work
DROP TABLE IF EXISTS `work`;
CREATE TABLE IF NOT EXISTS `work` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `w_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_deadline` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_course` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_t_account` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ssh_hw_manage.work: ~6 rows (approximately)
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` (`w_id`, `w_title`, `w_content`, `w_deadline`, `w_course`, `w_t_account`, `w_c_id`) VALUES
	(1, '操作系统课后作业', '把书抄十遍！！！！！！！！！', '2017-5-12', '操作系统', '140003', '142011'),
	(2, '数据结构课后作业', '把书抄二十遍！！！！！！！！！', '2017-5-21', '数据结构', '140006', '142013'),
	(3, '软件工程后作业', '没作业！！！！！！！！！', '2017-5-1', '软件工程', '140001', '142011'),
	(4, 'UML课后作业', '把书抄五十遍！！！', '2017-5-12', '软件建模', '140002', '142012'),
	(5, '操作系统课后作业', '把书抄十遍！！！！！！！！！', '2017-5-22', '操作系统', '140003', '142011'),
	(7, '关于JAVA变量的作业', 'JAVA变量的使用同学们回去好好复习一下。', '2022-11-25', '软件工程', '140001', '142011');
/*!40000 ALTER TABLE `work` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
