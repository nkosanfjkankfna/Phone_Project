-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmnn8z9
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614226639990 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-02-25 03:58:36',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-02-25 03:58:36',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-02-25 03:58:36',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-02-25 03:58:36',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-02-25 03:58:36',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-02-25 03:58:36',6,'宇宙银河系月球1号','月某','13823888886','是'),(1614226639989,'2021-02-25 04:17:19',1614226333862,'广东省梅州市梅江区城北镇120乡道','张三','13800000000','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shoujishangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmnn8z9/upload/1614226517524.jpg'),(2,'picture2','http://localhost:8080/jspmnn8z9/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmnn8z9/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshoujishangcheng`
--

DROP TABLE IF EXISTS `discussshoujishangcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshoujishangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614226666816 DEFAULT CHARSET=utf8 COMMENT='手机商城评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshoujishangcheng`
--

LOCK TABLES `discussshoujishangcheng` WRITE;
/*!40000 ALTER TABLE `discussshoujishangcheng` DISABLE KEYS */;
INSERT INTO `discussshoujishangcheng` VALUES (111,'2021-02-25 03:58:36',1,1,'评论内容1','回复内容1'),(112,'2021-02-25 03:58:36',2,2,'评论内容2','回复内容2'),(113,'2021-02-25 03:58:36',3,3,'评论内容3','回复内容3'),(114,'2021-02-25 03:58:36',4,4,'评论内容4','回复内容4'),(115,'2021-02-25 03:58:36',5,5,'评论内容5','回复内容5'),(116,'2021-02-25 03:58:36',6,6,'评论内容6','回复内容6'),(1614226666815,'2021-02-25 04:17:46',1614226601628,1614226333862,'测试',NULL);
/*!40000 ALTER TABLE `discussshoujishangcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614226548270 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-02-25 03:58:36','标题1','简介1','http://localhost:8080/jspmnn8z9/upload/news_picture1.jpg','内容1'),(102,'2021-02-25 03:58:36','标题2','简介2','http://localhost:8080/jspmnn8z9/upload/news_picture2.jpg','内容2'),(103,'2021-02-25 03:58:36','标题3','简介3','http://localhost:8080/jspmnn8z9/upload/news_picture3.jpg','内容3'),(104,'2021-02-25 03:58:36','标题4','简介4','http://localhost:8080/jspmnn8z9/upload/news_picture4.jpg','内容4'),(105,'2021-02-25 03:58:36','标题5','简介5','http://localhost:8080/jspmnn8z9/upload/news_picture5.jpg','内容5'),(106,'2021-02-25 03:58:36','标题6','简介6','http://localhost:8080/jspmnn8z9/upload/news_picture6.jpg','内容6'),(1614226548269,'2021-02-25 04:15:47','网站资讯','成色测试常识成色','http://localhost:8080/jspmnn8z9/upload/1614226533115.jpg','编辑器可传文字/图片<img src=\"http://localhost:8080/jspmnn8z9/upload/1614226546342.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmnn8z9/upload/1614226546342.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shoujishangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614226679658 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1614226679657,'2021-02-25 04:17:59','202122512175391138433','shoujishangcheng',1614226333862,1614226601628,'iphone12','http://localhost:8080/jspmnn8z9/upload/1614226585880.jpg',1,3888,3888,3888,3888,1,'已完成','广东省梅州市梅江区城北镇120乡道');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoujigujia`
--

DROP TABLE IF EXISTS `shoujigujia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoujigujia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `neicun` varchar(200) DEFAULT NULL COMMENT '内存',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiance` varchar(200) DEFAULT NULL COMMENT '检测',
  `gujia` int(11) DEFAULT NULL COMMENT '估价',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614226483656 DEFAULT CHARSET=utf8 COMMENT='手机估价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoujigujia`
--

LOCK TABLES `shoujigujia` WRITE;
/*!40000 ALTER TABLE `shoujigujia` DISABLE KEYS */;
INSERT INTO `shoujigujia` VALUES (51,'2021-02-25 03:58:36','账号1','姓名1','品牌1','成色1','内存1','http://localhost:8080/jspmnn8z9/upload/shoujigujia_tupian1.jpg','',1,'13823888881','地址1','2021-02-25','未上门','未支付'),(52,'2021-02-25 03:58:36','账号2','姓名2','品牌2','成色2','内存2','http://localhost:8080/jspmnn8z9/upload/shoujigujia_tupian2.jpg','',2,'13823888882','地址2','2021-02-25','未上门','未支付'),(53,'2021-02-25 03:58:36','账号3','姓名3','品牌3','成色3','内存3','http://localhost:8080/jspmnn8z9/upload/shoujigujia_tupian3.jpg','',3,'13823888883','地址3','2021-02-25','未上门','未支付'),(54,'2021-02-25 03:58:36','账号4','姓名4','品牌4','成色4','内存4','http://localhost:8080/jspmnn8z9/upload/shoujigujia_tupian4.jpg','',4,'13823888884','地址4','2021-02-25','未上门','未支付'),(55,'2021-02-25 03:58:36','账号5','姓名5','品牌5','成色5','内存5','http://localhost:8080/jspmnn8z9/upload/shoujigujia_tupian5.jpg','',5,'13823888885','地址5','2021-02-25','未上门','未支付'),(56,'2021-02-25 03:58:36','账号6','姓名6','品牌6','成色6','内存6','http://localhost:8080/jspmnn8z9/upload/shoujigujia_tupian6.jpg','',6,'13823888886','地址6','2021-02-25','未上门','未支付'),(1614226483655,'2021-02-25 04:14:43','001','张三','苹果','八成新','128G','http://localhost:8080/jspmnn8z9/upload/1614226399026.jpg','http://localhost:8080/jspmnn8z9/file/download?fileName=1614226475716.docx',2888,'13800000000','xx省xx市xx县','2021-02-25','回收完成','未支付');
/*!40000 ALTER TABLE `shoujigujia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoujihuishou`
--

DROP TABLE IF EXISTS `shoujihuishou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoujihuishou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `neicun` varchar(200) DEFAULT NULL COMMENT '内存',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `shuoming` longtext COMMENT '说明',
  `gengduo` longtext COMMENT '更多',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614226421843 DEFAULT CHARSET=utf8 COMMENT='手机回收';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoujihuishou`
--

LOCK TABLES `shoujihuishou` WRITE;
/*!40000 ALTER TABLE `shoujihuishou` DISABLE KEYS */;
INSERT INTO `shoujihuishou` VALUES (41,'2021-02-25 03:58:36','账号1','姓名1','标题1','品牌1','全新','内存1','http://localhost:8080/jspmnn8z9/upload/shoujihuishou_tupian1.jpg','2021-02-25','说明1','更多1','是',''),(42,'2021-02-25 03:58:36','账号2','姓名2','标题2','品牌2','全新','内存2','http://localhost:8080/jspmnn8z9/upload/shoujihuishou_tupian2.jpg','2021-02-25','说明2','更多2','是',''),(43,'2021-02-25 03:58:36','账号3','姓名3','标题3','品牌3','全新','内存3','http://localhost:8080/jspmnn8z9/upload/shoujihuishou_tupian3.jpg','2021-02-25','说明3','更多3','是',''),(44,'2021-02-25 03:58:36','账号4','姓名4','标题4','品牌4','全新','内存4','http://localhost:8080/jspmnn8z9/upload/shoujihuishou_tupian4.jpg','2021-02-25','说明4','更多4','是',''),(45,'2021-02-25 03:58:36','账号5','姓名5','标题5','品牌5','全新','内存5','http://localhost:8080/jspmnn8z9/upload/shoujihuishou_tupian5.jpg','2021-02-25','说明5','更多5','是',''),(46,'2021-02-25 03:58:36','账号6','姓名6','标题6','品牌6','全新','内存6','http://localhost:8080/jspmnn8z9/upload/shoujihuishou_tupian6.jpg','2021-02-25','说明6','更多6','是',''),(1614226421842,'2021-02-25 04:13:41','001','张三','iphone12','苹果','八成新','128G','http://localhost:8080/jspmnn8z9/upload/1614226399026.jpg','2021-02-25','手机说明，就亿点点磕碰','<img src=\"http://localhost:8080/jspmnn8z9/upload/1614226419641.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmnn8z9/upload/1614226419641.jpg\">\r\n','是','收了');
/*!40000 ALTER TABLE `shoujihuishou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoujipinpai`
--

DROP TABLE IF EXISTS `shoujipinpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoujipinpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614226444714 DEFAULT CHARSET=utf8 COMMENT='手机品牌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoujipinpai`
--

LOCK TABLES `shoujipinpai` WRITE;
/*!40000 ALTER TABLE `shoujipinpai` DISABLE KEYS */;
INSERT INTO `shoujipinpai` VALUES (1614226281158,'2021-02-25 04:11:20','苹果'),(1614226284336,'2021-02-25 04:11:24','三星'),(1614226288190,'2021-02-25 04:11:27','小米'),(1614226444713,'2021-02-25 04:14:03','华为');
/*!40000 ALTER TABLE `shoujipinpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoujishangcheng`
--

DROP TABLE IF EXISTS `shoujishangcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoujishangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `neicun` varchar(200) DEFAULT NULL COMMENT '内存',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614226601629 DEFAULT CHARSET=utf8 COMMENT='手机商城';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoujishangcheng`
--

LOCK TABLES `shoujishangcheng` WRITE;
/*!40000 ALTER TABLE `shoujishangcheng` DISABLE KEYS */;
INSERT INTO `shoujishangcheng` VALUES (31,'2021-02-25 03:58:36','名称1','品牌1','全新','内存1','颜色1','http://localhost:8080/jspmnn8z9/upload/shoujishangcheng_tupian1.jpg','详情1',1,1,'2021-02-25 11:58:36',1,99.9,1,99),(32,'2021-02-25 03:58:36','名称2','品牌2','全新','内存2','颜色2','http://localhost:8080/jspmnn8z9/upload/shoujishangcheng_tupian2.jpg','详情2',2,2,'2021-02-25 11:58:36',2,99.9,2,99),(33,'2021-02-25 03:58:36','名称3','品牌3','全新','内存3','颜色3','http://localhost:8080/jspmnn8z9/upload/shoujishangcheng_tupian3.jpg','详情3',3,3,'2021-02-25 11:58:36',3,99.9,3,99),(34,'2021-02-25 03:58:36','名称4','品牌4','全新','内存4','颜色4','http://localhost:8080/jspmnn8z9/upload/shoujishangcheng_tupian4.jpg','详情4',4,4,'2021-02-25 11:58:36',4,99.9,4,99),(35,'2021-02-25 03:58:36','名称5','品牌5','全新','内存5','颜色5','http://localhost:8080/jspmnn8z9/upload/shoujishangcheng_tupian5.jpg','详情5',5,5,'2021-02-25 11:58:36',5,99.9,5,99),(36,'2021-02-25 03:58:36','名称6','品牌6','全新','内存6','颜色6','http://localhost:8080/jspmnn8z9/upload/shoujishangcheng_tupian6.jpg','详情6',6,6,'2021-02-25 11:58:36',6,99.9,6,99),(1614226601628,'2021-02-25 04:16:40','iphone12','苹果','九成新','128G','磨砂黑','http://localhost:8080/jspmnn8z9/upload/1614226585880.jpg','<img src=\"http://localhost:8080/jspmnn8z9/upload/1614226599615.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmnn8z9/upload/1614226599615.jpg\">\r\n',1,0,'2021-02-25 12:18:07',4,3888,1,8);
/*!40000 ALTER TABLE `shoujishangcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614226661600 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614226661599,'2021-02-25 04:17:41',1614226333862,1614226601628,'shoujishangcheng','iphone12','http://localhost:8080/jspmnn8z9/upload/1614226585880.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','oo2waklxekccdgp6sx3cbjef653vfny8','2021-02-25 04:10:56','2021-02-25 05:18:25'),(2,1614226333862,'001','yonghu','用户','1tpvqa2nrxqw4ru3vtbvakei3dylmfqi','2021-02-25 04:12:19','2021-02-25 05:16:53');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-25 03:58:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614226333863 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-25 03:58:36','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/jspmnn8z9/upload/yonghu_zhaopian1.jpg','地址1',100),(12,'2021-02-25 03:58:36','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/jspmnn8z9/upload/yonghu_zhaopian2.jpg','地址2',100),(13,'2021-02-25 03:58:36','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/jspmnn8z9/upload/yonghu_zhaopian3.jpg','地址3',100),(14,'2021-02-25 03:58:36','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/jspmnn8z9/upload/yonghu_zhaopian4.jpg','地址4',100),(15,'2021-02-25 03:58:36','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/jspmnn8z9/upload/yonghu_zhaopian5.jpg','地址5',100),(16,'2021-02-25 03:58:36','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/jspmnn8z9/upload/yonghu_zhaopian6.jpg','地址6',100),(1614226333862,'2021-02-25 04:12:13','001','001','张三','男',23,'13800000000','123@qq.com','http://localhost:8080/jspmnn8z9/upload/1614226356748.png','xx省xx市xx县',6111);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-25 15:11:57
