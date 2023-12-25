DROP DATABASE IF EXISTS `hehe`;
CREATE DATABASE  IF NOT EXISTS `hehe`; 
--
-- Table structure for table `good`
--
USE `hehe`;
DROP TABLE IF EXISTS `good`;

CREATE TABLE `good` (
  `goodnum` int(10) NOT NULL AUTO_INCREMENT,
  `goodname` varchar(45) NOT NULL,
  `price` int(10) NOT NULL,
  `quan` int(20) NOT NULL,
  `salenum` int(20) NOT NULL,
  `intro` varchar(80) NOT NULL,
  `pic1` varchar(45) NOT NULL,
  `pic2` varchar(45) NOT NULL,
  `pic3` varchar(45) NOT NULL,
  `add` varchar(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `pronum` varchar(45) NOT NULL,
  `number` int(50) DEFAULT NULL,
  PRIMARY KEY (`goodnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `good`
--

INSERT INTO `good` VALUES ('1','杏色牛仔落地褲','550','10','0','垂墜感十足的落地褲，簡單的搭配就可以駕馭，褲腰的兩邊有繫帶扣可以調整腰圍大小','-1','-2','-3','v','clothes','#A201003001', null);
INSERT INTO `good` VALUES ('2','毛呢外套','890','10','0','秋冬必備毛呢外套，不論是氣質風還是帥氣風，一件外套都可駕馭','-1','-2','-3','v','clothes','#A201003002', null);
INSERT INTO `good` VALUES ('3','寬鬆短版大學T','290','10','0','簡約百搭的大學T是女孩衣櫃不可或缺的一員，短版大學T讓穿搭更多變','-1','-2','-3','v','clothes','#A201003003', null);
INSERT INTO `good` VALUES ('4','2用氣質披肩','880','10','0','多種變化的披肩，轉個方向、繫上皮帶又是不同的風格，高領的設計兼具時尚又保暖','-1','-2','-3','v','clothes','#A201003004', null);
INSERT INTO `good` VALUES ('5','小荷葉立領碎花洋裝','700','10','0','春夏必備碎花洋裝，荷葉邊樣式的立領在氣質長洋裝中點綴一定可愛，鬆緊腰的設計讓外觀看起來更加有線條','-1','-2','-3','v','clothes','#A201003005', null);
INSERT INTO `good` VALUES ('6','不收邊直筒褲','650','10','0','直筒褲的版型，簡單好搭基本款','-1','-2','-3','v','clothes','#A201003006', null);
INSERT INTO `good` VALUES ('7','高領短版毛衣','400','10','0','短版高領毛衣搭配高腰褲就很好看，針織是非常扎實的針織，這件在秋冬是非常好搭的秋冬大標配，領子的部分鬆緊剛好不會過緊','-1','-2','-3','v','clothes','#A201003007', null);
INSERT INTO `good` VALUES ('8','後開岔針織長裙','380','10','0','氣質姊姊必帶款，高腰顯瘦，保暖度十足讓你在寒冷的冬天也可以美美的渡過','-1','-2','-3','v','clothes','#A201003008', null);
INSERT INTO `good` VALUES ('9','簡單生活戒指組','400','10','0','簡單的線條，帶出不同凡人的氣質 ','-1','-2','-3','v','ring','#B201003001', null);
INSERT INTO `good` VALUES ('10','一鹿有你戒指','280','10','0','氣質優雅的鹿角，希望在平凡的生活中ㄧ「鹿」有你（戒圍可微調） ','-1','-2','-3','v','ring','#B201003002', null);
INSERT INTO `good` VALUES ('11','花中靜謐戒指','320','10','0','經典小白花鑲上四色鑽，散發貴族般的氣質 ','-1','-2','-3','v','ring','#B201003003', null);
INSERT INTO `good` VALUES ('12','花仙子戒指','290','10','0','優雅白花搭配淺藍寶石讓整體增添了一絲可愛（戒圍可微調） ','-1','-2','-3','v','ring','#B201003004', null);
INSERT INTO `good` VALUES ('13','原木造型髪飾','120','10','0','三色原木搭配，大小、深淺的搭配，讓自身自然散發優雅的氣質 ','-1','-2','-3','v','ring','#B201003005', null);
INSERT INTO `good` VALUES ('14','交織迴圈耳夾','380','10','0','復古金銅迴圈耳飾，配上透明灰圓珠，簡單中帶有特色 ','-1','-2','-3','v','ring','#B201003006', null);
INSERT INTO `good` VALUES ('15','葉與圓耳夾','250','10','0','森林系耳夾，浮誇中帶著自然的氣息 ','-1','-2','-3','v','ring','#B201003007', null);
INSERT INTO `good` VALUES ('16','鎖骨鏈','480','10','0','相較於單鍊，雙鍊設計也更加活潑，搭配在不同造型上，顯得可愛也可以凸顯氣質，是一款可動可靜的穿搭飾品 ','-1','-2','-3','v','ring','#B201003008', null);


--
-- Table structure for table `message`
--
USE `hehe`;
DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `mesnum`  int(30) NOT NULL AUTO_INCREMENT,
  `pnum` int(30) NOT NULL,
  `message` varchar(100) ,
  `star` varchar(40),
  `wrdate` varchar(45) NOT NULL,
  `product` varchar(45) NULL,
  PRIMARY KEY (`mesnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--
--
-- Table structure for table `members`
--
USE `hehe`;
DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `memnum` int(10) NOT NULL AUTO_INCREMENT,
  `mempic` BLOB NULL,
  `mail` varchar(80) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `pwd` varchar(80) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `birth` varchar(45) NOT NULL,
  `phone` varchar(80) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`memnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` VALUES ('1','','test@gmail.com','admin','1234','girl','2020-12-24','','');
INSERT INTO `members` VALUES ('2','','good@gmail.com','讚讚','1234','boy','2020-12-24','','');
--
-- Table structure for table `admin`
--
USE `hehe`;
DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `mail` varchar(80) NOT NULL,
  `pwd` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--
INSERT INTO `admin` VALUES ('admin@gmail.com','1234');
--
-- Table structure for table `cart`
--
USE `hehe`;
DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `ordernum` int(50) NOT NULL AUTO_INCREMENT,
  `goodnum` int(50) NOT NULL,
  `goodname` varchar(50) NOT NULL,
  `price` int(80) NOT NULL,
  `quan` varchar(20) NOT NULL,
  `buy` varchar(20) NOT NULL,
  `memmail` varchar(80) NOT NULL,
  PRIMARY KEY (`ordernum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

--
-- Table structure for table `order`
--
USE `hehe`;
DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `Order` int(50) NOT NULL AUTO_INCREMENT,
  `ordernum` int(50) DEFAULT NULL,
  `goodnum` int(50) DEFAULT NULL,
  `goodname` varchar(50) DEFAULT NULL,
  `memmail` varchar(80) NOT NULL,
  `price` int(80) DEFAULT NULL,
  `quan` varchar(20) NOT NULL,
  `buy` varchar(20) NOT NULL,
  `sendname` varchar(45) NOT NULL,
  `address` varchar(80) NOT NULL,
  `phone` varchar(80) NOT NULL,
  `totalprice` varchar(80) DEFAULT NULL,
  `orderdate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--
INSERT INTO `order` VALUES ('1', '1', '1', '杏色牛仔落地褲', 'test@gmail.com', '550', '10', '1', 'XXX', 'cycu', '0988', '550', '2021-01-01');