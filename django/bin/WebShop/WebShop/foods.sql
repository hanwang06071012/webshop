-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: food
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Current Database: `food`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `food` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `food`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add userpwd',8,'add_userpwd'),(23,'Can change userpwd',8,'change_userpwd'),(24,'Can delete userpwd',8,'delete_userpwd'),(25,'Can add foodinfo',9,'add_foodinfo'),(26,'Can change foodinfo',9,'change_foodinfo'),(27,'Can delete foodinfo',9,'delete_foodinfo'),(28,'Can add shoplistinfo',10,'add_shoplistinfo'),(29,'Can change shoplistinfo',10,'change_shoplistinfo'),(30,'Can delete shoplistinfo',10,'delete_shoplistinfo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$eyh0fOVW0lLl$Px1Secx5aGwQuwYHqfMcLp70fI904GQiSAH2UhJoCeg=','2016-03-16 05:23:36',1,'root','','','',1,1,'2016-03-16 05:23:36');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'userpwd','foodshop','userpwd'),(9,'foodinfo','foodshop','foodinfo'),(10,'shoplistinfo','foodshop','shoplistinfo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodshop_foodinfo`
--

DROP TABLE IF EXISTS `foodshop_foodinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foodshop_foodinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shoppagetitle` varchar(50) NOT NULL,
  `shoptitle` varchar(50) NOT NULL,
  `shoptitledetail` varchar(300) NOT NULL,
  `price` varchar(20) NOT NULL,
  `pricep` varchar(20) NOT NULL,
  `priceph` varchar(20) NOT NULL,
  `height` varchar(20) NOT NULL,
  `commentnum` varchar(20) NOT NULL,
  `scuoftranum` varchar(20) NOT NULL,
  `shipintime` varchar(50) NOT NULL,
  `inventorynum` varchar(20) NOT NULL,
  `deposit` varchar(20) NOT NULL,
  `desscores` varchar(20) NOT NULL,
  `sevscores` varchar(20) NOT NULL,
  `logisticsscores` varchar(20) NOT NULL,
  `costscores` varchar(20) NOT NULL,
  `width445px` varchar(20) NOT NULL,
  `commodityencoding` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodshop_foodinfo`
--

LOCK TABLES `foodshop_foodinfo` WRITE;
/*!40000 ALTER TABLE `foodshop_foodinfo` DISABLE KEYS */;
INSERT INTO `foodshop_foodinfo` VALUES (1,'zi shu xiaomb2','zi shu mbao','hao chi de zi shu xiao mian bao ,jin hang jia huang de ,shi song ren jia ping ,zhi shang de xuan ze,bao zhuang jing mei,shou ren haung yin','30','25.56','500','3560','895','567','traved 24 hour','7365','7500','4.3','4.6','4.7','4.5','445',''),(2,'紫薯小面包详情页','zi shu mbao','hao chi de zi shu xiao mian bao ,jin hang jia huang de ,shi song ren jia ping ,zhi shang de xuan ze,bao zhuang jing mei,shou ren haung yin','30','25.56','500','3560','895','567','traved 24 hour','7365','7500','4.3','4.6','4.7','4.5','445',''),(3,'紫薯小面包详情页','','好吃的零食大礼包，一包里面有很多，三十几样食品，只要你喜欢，送人还是比较高大上的，有礼盒的，包装精美，质量上等是送女孩的礼，可以随时加一点送你心爱的人，欢迎选购，全国包邮，偏远地区除外，详情见商品，谢谢','30','25.56','500','3560','895','567','卖家承诺27小时内发货','7365','7500','4.3','4.6','4.7','4.5','445',''),(4,'友臣肉松饼详情页','好吃的友臣肉松饼','金黄，金黄的，你知道的','28','12','500','5000','0','0','17小时内发货','5641','10000','5.0','5.0','5.0','5.0','445','98746512'),(9,'一品蛋苏松饼详情页','好吃的一口蛋苏','香甜可口，吃一下就得倒，金黄，金黄的，你知道的','28','12','500','5000','0','0','17小时内发货','5641','10000','5.0','5.0','5.0','5.0','445','66666668'),(8,'一品蛋苏松饼详情页','好吃的一口蛋苏','香甜可口，吃一下就得倒，金黄，金黄的，你知道的','28','12','500','5000','0','0','17小时内发货','5641','10000','5.0','5.0','5.0','5.0','445','66666668'),(10,'一品蛋苏松饼详情页','好吃的一口蛋苏','香甜可口，吃一下就得倒，金黄，金黄的，你知道的','28','12','500','5000','0','0','17小时内发货','5641','10000','5.0','5.0','5.0','5.0','445','66666668'),(14,'紫薯小面包详情页','味美早点紫薯小面包','一包里面有很多，三十几样食品，只要你喜欢，送人还是比较高大上的，有礼盒的，包装精美，质量上等是送女孩的礼，可以随时加一点送你心爱的人，欢迎选购，全国包邮，偏远地区除外，详情见商品，谢谢','48','24','24','2000','0','0','24小时内发货','10000','10000','5.0','5.0','5.0','5.0','445','80060001'),(15,'鳕鱼肠详情页','韩国进口鳕鱼肠','鳕鱼肠，外表漂亮，美味可口，只要你喜欢，送人还是比较高大上的，有礼盒的，包装精美，质量上等是送女孩的礼，可以随时加一点送你心爱的人，欢迎选购，全国包邮，偏远地区除外，详情见商品，谢谢 ','27','3','500','500','0','0','24小时内发货','9985','10000','5.0','5.0','5.0','5.0','445','80060002'),(16,'北田99能量棒详情页','北田99能量棒','台湾进口 正品北田99能量棒 实体店可批发 有3个味道 芋头味 南瓜味 蛋黄味','9.40','47','500','180','0','0','24小时内发货','10000','10000','5.0','5.0','5.0','5.0','445','80060003'),(17,'德国嘉云糖详情页','德国嘉云糖','亲，这款糖共有20种口味：草莓，香草，无糖什锦，冰爽，维他命夹心，黑莓+梨味，柠檬+西柚，香橙，樱桃，热带香果，西柚，桑果什锦味，苹果，芒果+猕猴桃，柠檬，咖啡，薄荷，新版什锦，四季香果，可乐。您需要指定口味的，一定要备注留言哦没有备注留言的我们是随机发货的，谢谢支持','13.50','36','500','200','0','0','24小时内发货','9989','10000','5.0','5.0','5.0','5.0','445','80060004'),(18,'黄桃罐头详情页','正品砀山水果糖水黄桃罐头','选择我们的理由： ①我们的产品【无色素】【无防腐剂】【无甜蜜素】，更健康②我们是真正的厂家直销，厂家自有品牌，并非贸易公司③我们的产品出口多个国家，具有相关出口资质认证(生产日期最近2个月左右)','5.00','60','425','500','0','0','24小时内发货','9936','10000','5.0','5.0','5.0','5.0','445','80060005'),(19,'无漂白开心果详情页','无漂白开心果','热销自然开、无漂白、性价比高、热销 碧根果，巴旦木疯狂抢购任意搭配 收货好评更有惊喜！！商品详情有关于口味的区别介绍，敬请关注。本色无漂白请拍【原味】哦，白果盐焗请拍【盐焗】哦，大厂出品，品质保证哦！','40','80','500','500','0','0','24小时内发货','9985','10000','5.0','5.0','5.0','5.0','445','80060006'),(20,'巴旦木详情页','奶香味临安巴旦木','本款为特级巴旦木，罐装500g2罐，本品是3月份新货新炒。属于壳杏仁里面最好的品种NP.24.9元的价格超级实惠，欢迎广大客户前来咨询购买。','48','48','500','1000','0','0','24小时内发货','9965','10000','5.0','5.0','5.0','5.0','445','80060007'),(21,'去骨鸭掌详情页','脉动去骨鸭爪无骨鸭掌 ','A.始终坚持下单预定，现炒现做，无存货、无添加，做新鲜私房菜；B.始终坚持用家用的油和食材，以自家吃的标准，做健康私房菜；C.始终坚持自家厨房烹饪，严格区别于餐馆和工厂生产，做家常私房菜；D.始终坚持为买家提供更好的美味与服务的理念,做家常私房菜！','26','26','500','500','0','0','24小时内发货','9985','10000','5.0','5.0','5.0','5.0','445','80060008'),(22,'辣子鸡汁点心面详情页','张君雅小妹妹辣子鸡汁点心面','点心面淋上鸡汁，低温文火烘烤后，产生不同于一般点心面的浓郁碳烤风味，口感松脆，咔吱咔吱作响，满口生香让你停不了嘴','5.00','75','80','3000','0','0','24小时内发货','7585','10000','5.0','5.0','5.0','5.0','445','80060009'),(23,' 沙巴哇芭蕉干详情页',' 沙巴哇芭蕉干100g ','沙巴哇干果为越南金牌干果，比一般的越南干果口味要更好，您只要亲自尝一尝就会有结果了。摘采新鲜蔬果，先进烤制工艺加工而成保留鲜果肉的果实品质和天然香味。口味松脆，香而不腻，入口香脆爽口，色，香，味俱全，是您日常休闲美食之选。','8.00','8','100','100','0','0','24小时内发货','8658','10000','5.0','5.0','5.0','5.0','445','80060010'),(25,'沙巴哇菠萝蜜干详情页','越南进口果干沙巴哇菠萝蜜干','沙巴哇采用越南当地新鲜果蔬，将其脱水，使其含水量减少，以达到最佳保存效果，最大程度保持原有的营养成分和新鲜口感','8.50','42.50','500','100','0','0','24小时内发货','5641','10000','5.0','5.0','5.0','5.0','445','80060011'),(26,'沙巴哇综合果蔬干详情页','越南进口果干沙巴哇综合果蔬干','沙巴哇蔬果干以真空低压脱水而成的一种新一代果蔬食品。保持了原有蔬菜水果的色、香、味，且增加了酥脆可口的特点，含有多种维生素和多种矿物质，脂肪酸含量极低，不添加任何化工原料，真正做到了健康和营养，其口味香脆可口，是时尚的休闲食品。','8.00','42.00','500','100','0','0','24小时内发货','5645','10000','5.0','5.0','5.0','5.0','445','80060012'),(27,'台湾99水果综合味糖详情页','台湾99水果综合味糖','【买2包减5元】买3包减10元，多买多减。台湾原装正品，樱桃爷爷官方授权，另加购店内任何产品全场免邮！【新鲜美味】0添加，0防腐剂，纯手工，选自新鲜最上品食材，打造最纯正的牛轧糖。','11.00','55','500','100','0','0','24小时内发货','5648','10000','5.0','5.0','5.0','5.0','445','80060013'),(28,'碧根果详情页','奶香碧根果','新鲜炒制碧根果，32.9元/斤包邮哦，，奶香十足，买就赠开壳神器一把，不叠加不累计，好吃又实惠，开壳器可爱又方便','32.90','32.90','500','500','0','0','24小时内发货','6647','10000','5.0','5.0','5.0','5.0','445','80060014'),(29,'日式串烧丸子详情页','台湾特产进口零食 张君雅小妹妹系列 日式串烧丸子/五香海苔80g ','大脸妹的全家福，不同包装，不同味道，不同形状，不同口味，都是我的最爱。日式串烧休闲丸子95g拍原味，五香海苔休闲丸子80g拍海苔味。','5.00','63','500','80','0','0','24小时内发货','6649','10000','5.0','5.0','5.0','5.0','445','80060015'),(30,'五香休闲丸子详情页','台湾特产进口零食 张君雅小妹妹系列 五香海苔休闲丸子','大脸妹的全家福，不同包装，不同味道，不同形状，不同口味，都是我的最爱。日式串烧休闲丸子95g拍原味，五香海苔休闲丸子80g拍海苔味。','5.00','63','500','80','0','0','24小时内发货','6645','10000','5.0','5.0','5.0','5.0','445','80060017'),(31,'捏碎面详情页','台湾特产进口零食 张君雅小妹妹系列捏碎面','1、台湾创意的品牌美食，表情超萌超逗，家长必买！ 2、口感松脆，喀吱喀吱声作响，满口生香让你停不嘴； 3、种类齐全，还有甜甜圈、点心面、串烧丸子多系列供选择喔~','6.50','65.00','500','100','0','0','24小时内发货','7322','10000','5.0','5.0','5.0','5.0','445','80060016');
/*!40000 ALTER TABLE `foodshop_foodinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodshop_shoplistinfo`
--

DROP TABLE IF EXISTS `foodshop_shoplistinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foodshop_shoplistinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shoplistno` varchar(30) NOT NULL,
  `addrname` varchar(200) NOT NULL,
  `setname` varchar(30) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `phoneno` varchar(30) NOT NULL,
  `wordstoboss` varchar(200) NOT NULL,
  `deliveway` varchar(30) NOT NULL,
  `comcodeandnum` varchar(300) NOT NULL,
  `expressdeliveprice` varchar(10) NOT NULL,
  `shipinsurancevalue` varchar(10) NOT NULL,
  `couponprice` varchar(10) NOT NULL,
  `shoplistprice` varchar(50) NOT NULL,
  `status` varchar(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodshop_shoplistinfo`
--

LOCK TABLES `foodshop_shoplistinfo` WRITE;
/*!40000 ALTER TABLE `foodshop_shoplistinfo` DISABLE KEYS */;
INSERT INTO `foodshop_shoplistinfo` VALUES (1,'145933317957','安徽省淮北市濉','韩望','235128','01861022952','一只鸟','普通快递6元','80060001r3','6','0.2','0','150.2','0'),(2,'145933425742','安徽省淮北市濉溪县双堆镇','同一个人','456123','18655852564，0561-85469988','送点东西','顺丰快递22元','80060013r4','22','0.2','0','66.2','0'),(3,'145933438156','安徽省淮北市濉溪县双堆镇','韩望','235128','18610229523','多送点东西，老板，要包装好一点，路上不要坏了。。。','极速隔夜达42元','80060007r3','42','0.2','0','186.2','0'),(4,'145985138271','北京大兴西红门','韩大望','100000','18610229524','你好有事','极速隔夜达42元','80060005r5','42','0.2','0','67.2','1'),(5,'145994129686','北京大兴西红门','韩大望','100000','18610229523','vb ha o;laksd;fla','普通快递6元','80060005r4','6','0.2','0','26.2','1');
/*!40000 ALTER TABLE `foodshop_shoplistinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodshop_userpwd`
--

DROP TABLE IF EXISTS `foodshop_userpwd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foodshop_userpwd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `userpwd` varchar(50) NOT NULL,
  `usermail` varchar(50) NOT NULL,
  `userstatus` varchar(4) DEFAULT '0',
  `usermoneny` varchar(12) DEFAULT '0',
  `usercreditstatus` varchar(12) DEFAULT '5',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodshop_userpwd`
--

LOCK TABLES `foodshop_userpwd` WRITE;
/*!40000 ALTER TABLE `foodshop_userpwd` DISABLE KEYS */;
INSERT INTO `foodshop_userpwd` VALUES (1,'hanwang77','12377','hanwang77@126.com','0','0','5'),(2,'hanwang065','123456','hanwang065@126.com','0','0','5'),(3,'hanwang066','123','hanwang065@126.com','0','0','5'),(4,'hanwang888','123','hanwang888@126.com','0','0','5'),(5,'admin','123456','admin@admin.com','0','1000','5'),(9,'hanwang81','123456','hanwang08@126.com','','208.0','5'),(10,'hanwang90','123456','hanwang09@126.com','0','130.0','5'),(11,'hanwang10','123','hanwang10@126.com','0','0','5'),(12,'hanwang11','123456','hanwang11@126.com','0','0','5');
/*!40000 ALTER TABLE `foodshop_userpwd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-07  6:26:31
