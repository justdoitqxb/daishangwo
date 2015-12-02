-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.24 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 lecappdb 的数据库结构
CREATE DATABASE IF NOT EXISTS `lecappdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lecappdb`;


-- 导出  表 lecappdb.h1 结构
CREATE TABLE IF NOT EXISTS `h1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类level 1';

-- 正在导出表  lecappdb.h1 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `h1` DISABLE KEYS */;
INSERT INTO `h1` (`id`, `Name`) VALUES
	(1, '艺术'),
	(2, '体育'),
	(3, '生活'),
	(4, '商务'),
	(5, '学科');
/*!40000 ALTER TABLE `h1` ENABLE KEYS */;


-- 导出  表 lecappdb.h2 结构
CREATE TABLE IF NOT EXISTS `h2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(50) NOT NULL,
  `ParentId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `H2Parent` (`ParentId`),
  CONSTRAINT `H2Parent` FOREIGN KEY (`ParentId`) REFERENCES `h1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- 正在导出表  lecappdb.h2 的数据：~23 rows (大约)
/*!40000 ALTER TABLE `h2` DISABLE KEYS */;
INSERT INTO `h2` (`id`, `Name`, `ParentId`) VALUES
	(1, '器乐', 1),
	(2, '声乐', 1),
	(3, '舞蹈', 1),
	(4, '美术', 1),
	(5, '书法', 1),
	(6, '戏曲', 1),
	(7, '球类', 2),
	(8, '武术', 2),
	(9, '棋类', 2),
	(10, '健身', 3),
	(11, '烹饪', 3),
	(12, '摄影', 3),
	(13, '户外', 3),
	(14, '早教', 3),
	(15, '其他', 3),
	(16, '技能', 4),
	(17, '语言', 4),
	(18, '管理', 4),
	(19, '社会', 4),
	(20, '哲学', 4),
	(21, '基础科', 5),
	(22, '理科', 5),
	(23, '文科', 5);
/*!40000 ALTER TABLE `h2` ENABLE KEYS */;


-- 导出  表 lecappdb.h3 结构
CREATE TABLE IF NOT EXISTS `h3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `ParentId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `H3Parent` (`ParentId`),
  CONSTRAINT `H3Parent` FOREIGN KEY (`ParentId`) REFERENCES `h2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- 正在导出表  lecappdb.h3 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `h3` DISABLE KEYS */;
INSERT INTO `h3` (`id`, `Name`, `ParentId`) VALUES
	(1, '小提琴', 1),
	(2, '吉他', 1),
	(3, '钢琴', 1),
	(5, '古筝', 1),
	(6, '架子鼓', 1),
	(7, '二胡', 1),
	(8, '大提琴', 1),
	(10, '琵琶', 1),
	(11, '长笛', 1),
	(12, '竹笛', 1),
	(13, '小号', 1),
	(14, '圆号', 1),
	(15, '次中音号', 1),
	(16, '长号', 1),
	(17, '小军鼓', 1),
	(18, '马林巴', 1),
	(19, '民族打击乐', 1),
	(20, '萨克斯', 1),
	(21, '流行音乐', 2),
	(22, '美声', 2),
	(23, '民族声乐', 2),
	(24, '少儿声乐', 2),
	(25, '民族民间舞', 3),
	(26, '古典', 3),
	(27, '拉丁', 3),
	(28, '现代舞', 3),
	(29, '摩登', 3),
	(30, '肚皮舞', 3),
	(31, '芭蕾', 3),
	(32, '街舞', 3),
	(33, '踢踏舞', 3),
	(34, '爵士舞', 3),
	(35, '摇摆舞', 3),
	(36, '流行舞', 3),
	(37, '杂技', 3),
	(38, '素描', 4),
	(39, '水彩', 4),
	(40, '国画', 4),
	(41, '速写', 4),
	(42, '油画', 4),
	(43, '色彩', 4),
	(44, '雕塑', 4),
	(45, '陶艺', 4),
	(46, '硬笔书法', 5),
	(47, '软笔书法', 5),
	(48, '曲剧', 6),
	(49, '教育戏剧', 6),
	(50, '儿童戏剧', 6),
	(51, '羽毛球', 7),
	(54, '乒乓球', 7),
	(55, '网球', 7),
	(58, '排球', 7),
	(59, '篮球', 7),
	(60, '足球', 7),
	(61, '台球', 7),
	(62, '跆拳道', 8),
	(63, '太极', 8),
	(64, '散打', 8),
	(65, '拳击', 8),
	(67, '空手道', 8),
	(68, '中国武术', 8),
	(69, '剑道', 8),
	(70, '象棋', 9),
	(71, '围棋', 9),
	(72, '国际象棋', 9),
	(73, '瑜伽', 10),
	(74, '游泳', 10),
	(75, '健美操', 10),
	(76, '塑形', 10),
	(77, '养生保健', 10),
	(78, '烘焙', 11),
	(80, '中餐', 11),
	(81, '西餐', 11),
	(82, '人物摄影', 12),
	(83, '风光摄影', 12),
	(84, '跑酷', 13),
	(85, '轮滑', 13),
	(87, '攀岩', 13),
	(88, '语言早教', 14),
	(89, '亲子早教', 14),
	(90, '艺术早教', 14),
	(91, '体能早教', 14),
	(92, '茶艺', 15),
	(94, '身心灵', 15),
	(95, '花道', 15),
	(97, '汽车驾驶', 16),
	(98, '摩托车驾驶', 16),
	(99, '设计软件', 16),
	(100, '英语', 17),
	(101, '粤语', 17),
	(102, '普通话', 17),
	(103, '葡萄牙语', 17),
	(104, '法语', 17),
	(105, '商业和管理', 18),
	(106, '社会工作', 18),
	(108, '工程学', 18),
	(109, '统计', 18),
	(110, '法律', 19),
	(111, '旅游', 19),
	(112, '会展', 19),
	(113, '新闻学', 19),
	(114, '自然科学', 19),
	(115, '社会照料', 19),
	(116, '餐饮', 19),
	(117, '医疗服务', 19),
	(118, '电脑科学', 19),
	(119, '宗教', 20),
	(120, '神学', 20),
	(121, '语文', 21),
	(122, '数学', 21),
	(123, '英语', 21),
	(124, '葡萄牙语', 21),
	(125, '物理', 22),
	(126, '化学', 22),
	(127, '生物', 22),
	(128, '历史', 23),
	(129, '地理', 23),
	(130, '政治', 23);
/*!40000 ALTER TABLE `h3` ENABLE KEYS */;


-- 导出  表 lecappdb.lec 结构
CREATE TABLE IF NOT EXISTS `lec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `ParentId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LecParent` (`ParentId`),
  CONSTRAINT `LecParent` FOREIGN KEY (`ParentId`) REFERENCES `h3` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  lecappdb.lec 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `lec` DISABLE KEYS */;
/*!40000 ALTER TABLE `lec` ENABLE KEYS */;


-- 导出  表 lecappdb.studentandlec 结构
CREATE TABLE IF NOT EXISTS `studentandlec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `LecId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `StudentLecId` (`LecId`),
  KEY `StudentUserId` (`UserId`),
  CONSTRAINT `StudentLecId` FOREIGN KEY (`LecId`) REFERENCES `lec` (`id`),
  CONSTRAINT `StudentUserId` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  lecappdb.studentandlec 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `studentandlec` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentandlec` ENABLE KEYS */;


-- 导出  表 lecappdb.teacherandlec 结构
CREATE TABLE IF NOT EXISTS `teacherandlec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `LecId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TeacherUserId` (`UserId`),
  KEY `TeacherLecId` (`LecId`),
  CONSTRAINT `TeacherLecId` FOREIGN KEY (`LecId`) REFERENCES `lec` (`id`),
  CONSTRAINT `TeacherUserId` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  lecappdb.teacherandlec 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `teacherandlec` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacherandlec` ENABLE KEYS */;


-- 导出  表 lecappdb.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telephone` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息';

-- 正在导出表  lecappdb.user 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
