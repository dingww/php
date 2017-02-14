-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-01-20 14:31:51
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--
--
-- Database: `guestbook`
--

-- --------------------------------------------------------

--
-- 表的结构 `lyb`
--

CREATE TABLE IF NOT EXISTS `lyb` (
  `ID` int(11) NOT NULL,
  `title` varchar(60) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET gb2312 NOT NULL,
  `author` varchar(40) CHARACTER SET gb2312 NOT NULL,
  `email` varchar(30) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `addtime` datetime NOT NULL,
  `sex` char(2) CHARACTER SET gb2312 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `lyb`
--

INSERT INTO `lyb` (`ID`, `title`, `content`, `author`, `email`, `ip`, `addtime`, `sex`) VALUES
(3, '这是一天留言', '哈哈哈哈哈哈', '小明', 'xming@163.com', '111.22.52.11', '2016-12-22 18:00:00', '男'),
(0, '今天很开心', '哈哈哈哈', 'dww', 'dww@163.com', '122.23.22.52', '2016-12-23 08:23:42', '女'),
(1, '如果有来生', '我们去大草原的湖边，看候鸟飞回来', '谭维维', 'tww@163.com', '111.11.222.2', '2016-12-23 10:32:21', '女'),
(2, '双色茉莉', '我们去大草原的湖边，看候鸟飞回来', '曹方', 'cf@163.com', '111.112.45.141', '0000-00-00 00:00:00', '女'),
(4, '你是我的风景', '你就是我的风景，云高风清', '何洁', 'hjie@163.com', '111.111.11.2', '2016-12-23 12:29:18', '女'),
(5, 'shall we talk', '小叮当，不回家吃饭', '黄雅莉', 'hyl@163.com', '124.123.123.11', '2016-12-06 04:13:15', '女'),
(6, '长大的童话', '童年时折的飞机，是否还在你的口袋', '林宥嘉', 'yoga@163.com', '12.12.12.12', '2016-12-21 08:19:15', '男'),
(7, '大鱼', '海浪无声将夜幕深深淹没，漫过天空无边的角落', '周深', 'zshen@163.com', '124.123.123.11', '2016-12-22 14:15:27', '男'),
(8, '孤独患者', '活像个孤独患者自我拉扯', '陈奕迅', 'eason@163.com', '59.51.24.37', '2016-12-15 08:23:15', '男'),
(9, 'K歌之王', '期待你感动，真实的我们难相处', '陈奕迅', 'eason@163.com', '124.123.123.11', '2016-12-06 13:35:14', '男'),
(10, '哈哈哈', '是事实', '呵呵', '15522325358', '111.12.12.24', '2016-12-23 15:12:36', '男');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(40) CHARACTER SET utf8 NOT NULL,
  `director` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `actors` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `addtime` year(4) NOT NULL,
  `country` varchar(20) CHARACTER SET gb2312 NOT NULL,
  `type` varchar(20) CHARACTER SET gb2312 NOT NULL,
  `scores` float NOT NULL,
  `comment` int(11) NOT NULL,
  `dig` int(11) NOT NULL,
  `url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `title`, `director`, `actors`, `addtime`, `country`, `type`, `scores`, `comment`, `dig`, `url`) VALUES
(1, '肖克申的救赎', '弗兰克·德拉邦特', '蒂姆·罗宾斯 、摩根·弗里曼、 鲍勃·冈顿、 威廉姆·赛德勒等', 1994, '美国', '剧情、犯罪', 9.6, 1254, 12, 'https://movie.douban.com/subject/1292052/'),
(2, '霸王别姬', '陈凯歌', '张国荣、张丰毅、巩俐、 葛优、英达', 1993, '中国香港', '剧情、爱情', 9.5, 54485, 11, 'https://movie.douban.com/subject/1291546/'),
(3, '阿甘正传', '罗伯特·泽米吉斯', '汤姆汉·克斯、罗宾·怀特、加里·西尼斯', 1994, '美国', '剧情、爱情', 9.4, 524788, 12, 'https://movie.douban.com/subject/1292720/'),
(5, '千与千寻', '宫崎骏', '柊瑠美 、入野自由、夏木真理 、菅原文太', 2001, '日本', '剧情、动画', 9.2, 54572, 4, 'https://movie.douban.com/subject/1291561/'),
(4, '美丽人生', '罗伯托·贝尼尼', '罗伯托·贝尼尼、尼可莱塔·布拉斯基 、乔治·坎塔里尼', 1997, '意大利', '剧情、喜剧、爱情', 9.5, 54485, 6, 'https://movie.douban.com/subject/1292063/');

-- --------------------------------------------------------

--
-- 表的结构 `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `register`
--

INSERT INTO `register` (`username`, `password`, `email`) VALUES
('dww', '19911204dw', '1067061570@qq.com'),
('dww', '19911204dw', '1067061570@qq.com'),
('dingww', '19911204dw', '15521273128@163.com'),
('dzq', '123', 'dzq1993@163.com'),
('della', '123456', 'della91@163.com');
--
-- Database: `test`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
