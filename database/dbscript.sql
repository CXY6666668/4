CREATE DATABASE if not exists `bookstore` DEFAULT CHARSET=gbk;
USE `bookstore`;
CREATE TABLE `adminuser` (
  `adminuser` varchar(16) NOT NULL default '',
  `adminpass` varchar(16) NOT NULL default '',
  PRIMARY KEY  (`adminuser`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
INSERT INTO `adminuser` (`adminuser`,`adminpass`) VALUES 
 ('admin','1');
CREATE TABLE `bookinfo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `categoryid` int(10) unsigned NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `price` float NOT NULL default '0',
  `saleprice` float NOT NULL default '0',
  `press` varchar(50) NOT NULL default '',
  `author` varchar(50) NOT NULL default '',
  `content` text NOT NULL,
  `descript` text NOT NULL,
  `regdate` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
INSERT INTO `bookinfo` (`id`,`categoryid`,`name`,`price`,`saleprice`,`press`,`author`,`content`,`descript`,`regdate`) VALUES 
 (1,1,'数据库原理',15,10,'武汉大学出版社','mmx','数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理','数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理数据库原理','2006-02-10 22:06:47'),
 (2,1,'计算机基础',26,21,'武汉大学出版社','dr','计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础','计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础计算机基础','2006-02-10 22:07:33');
INSERT INTO `bookinfo` (`id`,`categoryid`,`name`,`price`,`saleprice`,`press`,`author`,`content`,`descript`,`regdate`) VALUES 
 (3,1,'Java学习指南',45,31,'清华大学出版社','mmxbb','Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南','Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南Java学习指南','2006-02-10 22:08:13'),
 (4,2,'管理信息系统',34,23,'交大出版社','张三','管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统','管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统管理信息系统','2006-02-10 22:16:47');
INSERT INTO `bookinfo` (`id`,`categoryid`,`name`,`price`,`saleprice`,`press`,`author`,`content`,`descript`,`regdate`) VALUES 
 (5,1,'J2EE指南',35,21,'机械出版社','mmx','J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南','J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南J2EE指南','2006-02-10 22:09:48'),
 (6,1,'数据结构',56,23,'武大出版社','mmx','数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构','数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构数据结构','2006-02-10 22:10:29'),
 (7,1,'管理学原理',34,23,'武汉大学出版社','mmx','管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理','管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理管理学原理','2006-02-10 22:15:03');
INSERT INTO `bookinfo` (`id`,`categoryid`,`name`,`price`,`saleprice`,`press`,`author`,`content`,`descript`,`regdate`) VALUES 
 (8,2,'西方经济学',56,50,'清华大学出版社','mmxbb','西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学','西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学西方经济学','2006-02-10 22:15:53'),
 (9,1,'微机原理',67,34,'武大出版社','mmx','微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理','微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理微机原理','2006-02-10 22:16:37');
INSERT INTO `bookinfo` (`id`,`categoryid`,`name`,`price`,`saleprice`,`press`,`author`,`content`,`descript`,`regdate`) VALUES 
 (10,1,'计算机组成原理',45,34,'哈哈出版社','mmxbb','计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理','计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理计算机组成原理','2006-02-10 22:17:30'),
 (11,1,'少儿成长指北',34,23,'3A出版社','mmxbb','少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北','少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北少儿成长指北','2006-02-12 13:30:02');
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `categoryname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
INSERT INTO `category` (`id`,`categoryname`) VALUES 
 (1,'计算机类'),
 (2,'社会科学'),
 (3,'少儿类');
CREATE TABLE `orderdetail` (
  `orderid` varchar(32) character set gbk NOT NULL default '',
  `bookid` int(10) unsigned NOT NULL default '0',
  `amout` int(10) unsigned NOT NULL default '0',
  `id` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB';
INSERT INTO `orderdetail` (`orderid`,`bookid`,`amout`,`id`) VALUES 
 ('5e9473540958c249010958d0499d0005',11,1,11),
 ('5e9473540958c249010958d0d4f50006',4,1,12),
 ('5e9473540958c249010958d0d4f50006',7,1,13),
 ('5e947354095c942c01095cae96f20001',9,1,14),
 ('5e947354095c942c01095cae96f20001',7,1,15),
 ('5e947354095d3f9701095d4154fd0001',10,1,16),
 ('5e947354095d3f9701095d4154fd0001',8,1,17),
 ('5e947354095d3f9701095d4154fd0001',7,1,18),
 ('5e94735409624f70010962511eab0001',11,1,19),
 ('5e94735409624f70010962511eab0001',5,1,20),
 ('5e94735409624f70010962511eab0001',1,1,21);
CREATE TABLE `orderinfo` (
  `id` varchar(32) NOT NULL default '',
  `userid` int(10) unsigned NOT NULL default '0',
  `submittime` datetime NOT NULL default '0000-00-00 00:00:00',
  `totalprice` float NOT NULL default '0',
  `content` varchar(200) character set gbk default NULL,
  `ispay` int(10) unsigned NOT NULL default '0',
  `isdeliver` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `orderinfo` (`id`,`userid`,`submittime`,`totalprice`,`content`,`ispay`,`isdeliver`) VALUES 
 ('5e9473540958c249010958d0499d0005',11,'2006-02-11 19:12:58',23,NULL,0,0),
 ('5e9473540958c249010958d0d4f50006',11,'2006-02-11 19:13:34',46,NULL,0,0),
 ('5e947354095c942c01095cae96f20001',11,'2006-02-12 13:14:39',57,NULL,0,0),
 ('5e947354095d3f9701095d4154fd0001',11,'2006-02-12 15:54:56',107,NULL,0,0),
 ('5e94735409624f70010962511eab0001',11,'2006-02-13 15:30:16',54,NULL,0,0);
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `loginname` varchar(20) NOT NULL default '',
  `realname` varchar(20) NOT NULL default '',
  `password` varchar(16) NOT NULL default '',
  `phone` varchar(16) NOT NULL default '',
  `address` varchar(150) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `regtime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
INSERT INTO `user` (`id`,`loginname`,`realname`,`password`,`phone`,`address`,`email`,`regtime`) VALUES 
 (7,'bb','bb','1','1','1','1','2006-02-04 13:11:38'),
 (11,'dingren','张三','1','1','1','1','2006-02-10 23:41:13'),
 (12,'mmxbb','李四','1','1','1','1','2006-02-10 23:57:38');
