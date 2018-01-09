-- MySQL dump 10.15  Distrib 10.0.32-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	10.0.32-MariaDB

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
-- Table structure for table `cms_activity`
--

DROP TABLE IF EXISTS `cms_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(11) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `group_id` int(11) unsigned DEFAULT NULL,
  `subject_title` varchar(140) DEFAULT NULL,
  `subject_id` int(11) unsigned DEFAULT NULL,
  `subject_url` varchar(250) DEFAULT NULL,
  `reply_url` varchar(250) DEFAULT NULL,
  `images` text,
  `images_count` int(11) unsigned DEFAULT NULL,
  `date_pub` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_parent_hidden` tinyint(1) unsigned DEFAULT NULL,
  `is_pub` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `user_id` (`user_id`),
  KEY `date_pub` (`date_pub`),
  KEY `is_private` (`is_private`),
  KEY `group_id` (`group_id`),
  KEY `is_parent_hidden` (`is_parent_hidden`),
  KEY `is_pub` (`is_pub`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_activity`
--

LOCK TABLES `cms_activity` WRITE;
/*!40000 ALTER TABLE `cms_activity` DISABLE KEYS */;
INSERT INTO `cms_activity` VALUES (70,8,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-09-24 07:55:13',0,NULL,1),(71,8,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-02 15:49:05',0,NULL,1);
/*!40000 ALTER TABLE `cms_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_activity_types`
--

DROP TABLE IF EXISTS `cms_activity_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_activity_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `is_enabled` tinyint(1) unsigned DEFAULT '1',
  `controller` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `is_enabled` (`is_enabled`),
  KEY `controller` (`controller`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_activity_types`
--

LOCK TABLES `cms_activity_types` WRITE;
/*!40000 ALTER TABLE `cms_activity_types` DISABLE KEYS */;
INSERT INTO `cms_activity_types` VALUES (1,1,'pages','add.pages','Добавление страниц','добавляет страницу %s'),(2,1,'comments','vote.comment','Оценка комментария','оценил комментарий на странице %s'),(7,1,'users','friendship','Дружба','и %s становятся друзьями'),(8,1,'users','signup','Регистрация','регистрируется. Приветствуем!'),(10,1,'groups','join','Вступление в группу','вступает в группу %s'),(11,1,'groups','leave','Выход из группы','выходит из группы %s'),(12,1,'users','status','Изменение статуса','&rarr; %s'),(13,1,'content','add.articles','Добавление статей','добавляет статью %s'),(14,1,'content','add.posts','Добавление постов','добавляет пост %s'),(15,0,'content','add.albums','Добавление альбомов','добавляет фотоальбом %s'),(16,1,'content','add.board','Добавление объявлений','добавляет объявление %s'),(17,1,'content','add.news','Добавление новостей','добавляет новость %s'),(18,1,'photos','add.photos','Добавление фотографий','загружает фото в альбом %s'),(19,1,'users','avatar','Изменение аватара','изменяет аватар');
/*!40000 ALTER TABLE `cms_activity_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cbrf`
--

DROP TABLE IF EXISTS `cms_cbrf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_cbrf` (
  `id` int(10) unsigned NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата',
  `currency` text COMMENT 'Курсы валют',
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cbrf`
--

LOCK TABLES `cms_cbrf` WRITE;
/*!40000 ALTER TABLE `cms_cbrf` DISABLE KEYS */;
INSERT INTO `cms_cbrf` VALUES (1,'2017-10-11 14:35:00','---\nAUD:\n  charcode: AUD\n  value: 45,2085\n  name: Австралийский доллар\n  nominal: 1\nAZN:\n  charcode: AZN\n  value: 34,1596\n  name: >\n    Азербайджанский\n    манат\n  nominal: 1\nGBP:\n  charcode: GBP\n  value: 76,5264\n  name: >\n    Фунт стерлингов\n    Соединенного\n    королевства\n  nominal: 1\nAMD:\n  charcode: AMD\n  value: 12,1234\n  name: Армянских драмов\n  nominal: 100\nBYN:\n  charcode: BYN\n  value: 29,4943\n  name: Белорусский рубль\n  nominal: 1\nBGN:\n  charcode: BGN\n  value: 34,9785\n  name: Болгарский лев\n  nominal: 1\nBRL:\n  charcode: BRL\n  value: 18,2139\n  name: Бразильский реал\n  nominal: 1\nHUF:\n  charcode: HUF\n  value: 22,0084\n  name: Венгерских форинтов\n  nominal: 100\nHKD:\n  charcode: HKD\n  value: 74,4046\n  name: Гонконгских долларов\n  nominal: 10\nDKK:\n  charcode: DKK\n  value: 91,9373\n  name: Датских крон\n  nominal: 10\nUSD:\n  charcode: USD\n  value: 58,0713\n  name: Доллар США\n  nominal: 1\nEUR:\n  charcode: EUR\n  value: 68,3557\n  name: Евро\n  nominal: 1\nINR:\n  charcode: INR\n  value: 88,9300\n  name: Индийских рупий\n  nominal: 100\nKZT:\n  charcode: KZT\n  value: 17,2168\n  name: Казахстанских тенге\n  nominal: 100\nCAD:\n  charcode: CAD\n  value: 46,4088\n  name: Канадский доллар\n  nominal: 1\nKGS:\n  charcode: KGS\n  value: 84,8996\n  name: Киргизских сомов\n  nominal: 100\nCNY:\n  charcode: CNY\n  value: 88,1913\n  name: Китайских юаней\n  nominal: 10\nMDL:\n  charcode: MDL\n  value: 33,2311\n  name: Молдавских леев\n  nominal: 10\nNOK:\n  charcode: NOK\n  value: 72,9017\n  name: Норвежских крон\n  nominal: 10\nPLN:\n  charcode: PLN\n  value: 15,9348\n  name: Польский злотый\n  nominal: 1\nRON:\n  charcode: RON\n  value: 14,9626\n  name: Румынский лей\n  nominal: 1\nXDR:\n  charcode: XDR\n  value: 81,6407\n  name: >\n    СДР (специальные\n    права заимствования)\n  nominal: 1\nSGD:\n  charcode: SGD\n  value: 42,7592\n  name: Сингапурский доллар\n  nominal: 1\nTJS:\n  charcode: TJS\n  value: 66,0134\n  name: Таджикских сомони\n  nominal: 10\nTRY:\n  charcode: TRY\n  value: 15,7546\n  name: Турецкая лира\n  nominal: 1\nTMT:\n  charcode: TMT\n  value: 16,5918\n  name: >\n    Новый туркменский\n    манат\n  nominal: 1\nUZS:\n  charcode: UZS\n  value: 72,1203\n  name: Узбекских сумов\n  nominal: 10000\nUAH:\n  charcode: UAH\n  value: 21,8436\n  name: Украинских гривен\n  nominal: 10\nCZK:\n  charcode: CZK\n  value: 26,4375\n  name: Чешских крон\n  nominal: 10\nSEK:\n  charcode: SEK\n  value: 71,8375\n  name: Шведских крон\n  nominal: 10\nCHF:\n  charcode: CHF\n  value: 59,4141\n  name: Швейцарский франк\n  nominal: 1\nZAR:\n  charcode: ZAR\n  value: 42,2989\n  name: >\n    Южноафриканских\n    рэндов\n  nominal: 10\nKRW:\n  charcode: KRW\n  value: 51,1416\n  name: Вон Республики Корея\n  nominal: 1000\nJPY:\n  charcode: JPY\n  value: 51,6856\n  name: Японских иен\n  nominal: 100\n');
/*!40000 ALTER TABLE `cms_cbrf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comments`
--

DROP TABLE IF EXISTS `cms_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL COMMENT 'ID родительского комментария',
  `level` tinyint(4) unsigned DEFAULT NULL COMMENT 'Уровень вложенности',
  `ordering` int(11) unsigned DEFAULT NULL COMMENT 'Порядковый номер в дереве',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT 'ID автора',
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата публикации',
  `target_controller` varchar(32) DEFAULT NULL COMMENT 'Контроллер комментируемого контента',
  `target_subject` varchar(32) DEFAULT NULL COMMENT 'Объект комментирования',
  `target_id` int(11) unsigned DEFAULT NULL COMMENT 'ID объекта комментирования',
  `target_url` varchar(250) DEFAULT NULL COMMENT 'URL объекта комментирования',
  `target_title` varchar(100) DEFAULT NULL COMMENT 'Заголовок объекта комментирования',
  `author_name` varchar(100) DEFAULT NULL COMMENT 'Имя автора (гостя)',
  `author_email` varchar(100) DEFAULT NULL COMMENT 'E-mail автора (гостя)',
  `author_url` varchar(15) DEFAULT NULL COMMENT 'ip адрес',
  `content` text COMMENT 'Текст комментария',
  `content_html` text COMMENT 'Текст после типографа',
  `is_deleted` tinyint(1) unsigned DEFAULT NULL COMMENT 'Комментарий удален?',
  `is_private` tinyint(1) unsigned DEFAULT '0' COMMENT 'Только для друзей?',
  `rating` int(11) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_private` (`is_private`),
  KEY `rating` (`rating`),
  KEY `target_id` (`target_id`,`target_controller`,`target_subject`,`ordering`),
  KEY `author_url` (`author_url`),
  KEY `date_pub` (`date_pub`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Комментарии пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comments`
--

LOCK TABLES `cms_comments` WRITE;
/*!40000 ALTER TABLE `cms_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comments_rating`
--

DROP TABLE IF EXISTS `cms_comments_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_comments_rating` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `score` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_id` (`comment_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comments_rating`
--

LOCK TABLES `cms_comments_rating` WRITE;
/*!40000 ALTER TABLE `cms_comments_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_comments_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comments_tracks`
--

DROP TABLE IF EXISTS `cms_comments_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_comments_tracks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `target_controller` varchar(32) DEFAULT NULL,
  `target_subject` varchar(32) DEFAULT NULL,
  `target_id` int(11) unsigned DEFAULT NULL,
  `target_url` varchar(250) DEFAULT NULL,
  `target_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `target_id` (`target_id`,`target_controller`,`target_subject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Подписки пользователей на новые комментарии';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comments_tracks`
--

LOCK TABLES `cms_comments_tracks` WRITE;
/*!40000 ALTER TABLE `cms_comments_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_comments_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_albums`
--

DROP TABLE IF EXISTS `cms_con_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_albums` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `slug` varchar(100) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `tags` varchar(1000) DEFAULT NULL,
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified` timestamp NULL DEFAULT NULL,
  `date_pub_end` timestamp NULL DEFAULT NULL,
  `is_pub` tinyint(1) DEFAULT '1',
  `hits_count` int(11) DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `parent_type` varchar(32) DEFAULT NULL,
  `parent_title` varchar(100) DEFAULT NULL,
  `parent_url` varchar(255) DEFAULT NULL,
  `is_parent_hidden` tinyint(1) DEFAULT NULL,
  `category_id` int(11) unsigned NOT NULL DEFAULT '1',
  `folder_id` int(11) unsigned DEFAULT NULL,
  `is_comments_on` tinyint(1) unsigned DEFAULT '1',
  `comments` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) unsigned DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT '1',
  `approved_by` int(11) DEFAULT NULL,
  `date_approved` timestamp NULL DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `cover_image` text,
  `photos_count` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `folder_id` (`folder_id`),
  KEY `slug` (`slug`),
  KEY `date_pub` (`is_pub`,`is_parent_hidden`,`is_deleted`,`is_approved`,`date_pub`),
  KEY `parent_id` (`parent_id`,`parent_type`,`date_pub`),
  KEY `user_id` (`user_id`,`date_pub`),
  KEY `date_pub_end` (`date_pub_end`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_albums`
--

LOCK TABLES `cms_con_albums` WRITE;
/*!40000 ALTER TABLE `cms_con_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_albums_cats`
--

DROP TABLE IF EXISTS `cms_con_albums_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_albums_cats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `slug` varchar(255) DEFAULT NULL,
  `slug_key` varchar(255) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `ns_left` int(11) DEFAULT NULL,
  `ns_right` int(11) DEFAULT NULL,
  `ns_level` int(11) DEFAULT NULL,
  `ns_differ` varchar(32) NOT NULL DEFAULT '',
  `ns_ignore` tinyint(4) NOT NULL DEFAULT '0',
  `allow_add` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `slug` (`slug`),
  KEY `ns_left` (`ns_level`,`ns_right`,`ns_left`),
  KEY `parent_id` (`parent_id`,`ns_left`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_albums_cats`
--

LOCK TABLES `cms_con_albums_cats` WRITE;
/*!40000 ALTER TABLE `cms_con_albums_cats` DISABLE KEYS */;
INSERT INTO `cms_con_albums_cats` VALUES (1,0,'---',NULL,NULL,NULL,NULL,NULL,NULL,1,1,2,0,'',0,NULL);
/*!40000 ALTER TABLE `cms_con_albums_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_albums_cats_bind`
--

DROP TABLE IF EXISTS `cms_con_albums_cats_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_albums_cats_bind` (
  `item_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  KEY `item_id` (`item_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_albums_cats_bind`
--

LOCK TABLES `cms_con_albums_cats_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_albums_cats_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_albums_cats_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_albums_fields`
--

DROP TABLE IF EXISTS `cms_con_albums_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_albums_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `hint` varchar(200) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_list` tinyint(1) DEFAULT NULL,
  `is_in_item` tinyint(1) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `is_private` tinyint(1) DEFAULT NULL,
  `is_fixed` tinyint(1) DEFAULT NULL,
  `is_fixed_type` tinyint(1) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  `groups_read` text,
  `groups_edit` text,
  `filter_view` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `is_in_list` (`is_in_list`),
  KEY `is_in_item` (`is_in_item`),
  KEY `is_in_filter` (`is_in_filter`),
  KEY `is_private` (`is_private`),
  KEY `is_fixed` (`is_fixed`),
  KEY `is_fixed_type` (`is_fixed_type`),
  KEY `is_system` (`is_system`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_albums_fields`
--

LOCK TABLES `cms_con_albums_fields` WRITE;
/*!40000 ALTER TABLE `cms_con_albums_fields` DISABLE KEYS */;
INSERT INTO `cms_con_albums_fields` VALUES (1,7,'title','Название альбома',NULL,1,NULL,'caption',1,1,1,NULL,1,1,0,NULL,'---\nlabel_in_list: none\nlabel_in_item: none\nis_required: 1\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(2,7,'date_pub','Дата публикации',NULL,2,NULL,'date',1,1,1,NULL,1,1,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\nshow_time: false\n',NULL,NULL,NULL),(3,7,'user','Автор',NULL,3,NULL,'user',1,1,0,NULL,1,1,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\n',NULL,NULL,NULL),(4,7,'content','Описание альбома',NULL,4,NULL,'text',1,1,NULL,NULL,1,NULL,NULL,NULL,'---\nmin_length: 0\nmax_length: 2048\nlabel_in_list: none\nlabel_in_item: none\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(5,7,'cover_image','Обложка альбома',NULL,5,NULL,'image',1,NULL,NULL,NULL,1,1,1,NULL,'---\nlabel_in_list: left\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(6,7,'is_public','Общий фотоальбом','Другие пользователи тоже смогут добавлять фото в этот альбом',6,NULL,'checkbox',0,0,NULL,NULL,1,NULL,NULL,NULL,'---\nlabel_in_list: none\nlabel_in_item: none\n',NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_con_albums_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_albums_props`
--

DROP TABLE IF EXISTS `cms_con_albums_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_albums_props` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_in_filter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_albums_props`
--

LOCK TABLES `cms_con_albums_props` WRITE;
/*!40000 ALTER TABLE `cms_con_albums_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_albums_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_albums_props_bind`
--

DROP TABLE IF EXISTS `cms_con_albums_props_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_albums_props_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `prop_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prop_id` (`prop_id`),
  KEY `ordering` (`cat_id`,`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_albums_props_bind`
--

LOCK TABLES `cms_con_albums_props_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_albums_props_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_albums_props_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_albums_props_values`
--

DROP TABLE IF EXISTS `cms_con_albums_props_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_albums_props_values` (
  `prop_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  KEY `prop_id` (`prop_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_albums_props_values`
--

LOCK TABLES `cms_con_albums_props_values` WRITE;
/*!40000 ALTER TABLE `cms_con_albums_props_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_albums_props_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_articles`
--

DROP TABLE IF EXISTS `cms_con_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `slug` varchar(100) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `tags` varchar(1000) DEFAULT NULL,
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified` timestamp NULL DEFAULT NULL,
  `date_pub_end` timestamp NULL DEFAULT NULL,
  `is_pub` tinyint(1) DEFAULT '1',
  `hits_count` int(11) DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `parent_type` varchar(32) DEFAULT NULL,
  `parent_title` varchar(100) DEFAULT NULL,
  `parent_url` varchar(255) DEFAULT NULL,
  `is_parent_hidden` tinyint(1) DEFAULT NULL,
  `category_id` int(11) unsigned NOT NULL DEFAULT '1',
  `folder_id` int(11) unsigned DEFAULT NULL,
  `is_comments_on` tinyint(1) unsigned DEFAULT '1',
  `comments` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) unsigned DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `approved_by` int(11) DEFAULT NULL,
  `date_approved` timestamp NULL DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `teaser` text,
  `kind` int(11) DEFAULT NULL,
  `notice` text,
  `source` text,
  `featured` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `approved_by` (`approved_by`),
  KEY `folder_id` (`folder_id`),
  KEY `slug` (`slug`),
  KEY `date_pub` (`is_pub`,`is_parent_hidden`,`is_deleted`,`is_approved`,`date_pub`),
  KEY `parent_id` (`parent_id`,`parent_type`,`date_pub`),
  KEY `user_id` (`user_id`,`date_pub`),
  KEY `date_pub_end` (`date_pub_end`),
  KEY `dataset_reviews` (`kind`,`is_pub`,`is_parent_hidden`,`is_deleted`,`is_approved`,`date_pub`),
  KEY `dataset_featured` (`featured`,`is_pub`,`is_parent_hidden`,`is_deleted`,`is_approved`,`date_pub`),
  KEY `dataset_rating` (`is_pub`,`is_parent_hidden`,`is_deleted`,`is_approved`,`rating`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_articles`
--

LOCK TABLES `cms_con_articles` WRITE;
/*!40000 ALTER TABLE `cms_con_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_articles_cats`
--

DROP TABLE IF EXISTS `cms_con_articles_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_articles_cats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `slug` varchar(255) DEFAULT NULL,
  `slug_key` varchar(255) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `ns_left` int(11) DEFAULT NULL,
  `ns_right` int(11) DEFAULT NULL,
  `ns_level` int(11) DEFAULT NULL,
  `ns_differ` varchar(32) NOT NULL DEFAULT '',
  `ns_ignore` tinyint(4) NOT NULL DEFAULT '0',
  `allow_add` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `slug` (`slug`),
  KEY `ns_left` (`ns_level`,`ns_right`,`ns_left`),
  KEY `parent_id` (`parent_id`,`ns_left`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_articles_cats`
--

LOCK TABLES `cms_con_articles_cats` WRITE;
/*!40000 ALTER TABLE `cms_con_articles_cats` DISABLE KEYS */;
INSERT INTO `cms_con_articles_cats` VALUES (1,0,'---',NULL,NULL,NULL,NULL,NULL,NULL,1,1,2,0,'',0,NULL);
/*!40000 ALTER TABLE `cms_con_articles_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_articles_cats_bind`
--

DROP TABLE IF EXISTS `cms_con_articles_cats_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_articles_cats_bind` (
  `item_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  KEY `item_id` (`item_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_articles_cats_bind`
--

LOCK TABLES `cms_con_articles_cats_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_articles_cats_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_articles_cats_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_articles_fields`
--

DROP TABLE IF EXISTS `cms_con_articles_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_articles_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `hint` varchar(200) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_list` tinyint(1) DEFAULT NULL,
  `is_in_item` tinyint(1) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `is_private` tinyint(1) DEFAULT NULL,
  `is_fixed` tinyint(1) DEFAULT NULL,
  `is_fixed_type` tinyint(1) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  `groups_read` text,
  `groups_edit` text,
  `filter_view` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `is_in_list` (`is_in_list`),
  KEY `is_in_item` (`is_in_item`),
  KEY `is_in_filter` (`is_in_filter`),
  KEY `is_private` (`is_private`),
  KEY `is_fixed` (`is_fixed`),
  KEY `is_fixed_type` (`is_fixed_type`),
  KEY `is_system` (`is_system`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_articles_fields`
--

LOCK TABLES `cms_con_articles_fields` WRITE;
/*!40000 ALTER TABLE `cms_con_articles_fields` DISABLE KEYS */;
INSERT INTO `cms_con_articles_fields` VALUES (1,5,'title','Заголовок',NULL,1,NULL,'caption',1,1,1,NULL,1,1,0,NULL,'---\nlabel_in_list: none\nlabel_in_item: none\nmin_length: 3\nmax_length: 100\nis_required: true\n',NULL,NULL,NULL),(2,5,'date_pub','Дата публикации',NULL,2,NULL,'date',1,1,NULL,NULL,1,1,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(3,5,'user','Автор',NULL,3,NULL,'user',1,1,0,NULL,1,1,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\n',NULL,NULL,NULL),(4,5,'content','Текст статьи','Введите полный текст статьи',7,'Содержание','html',NULL,1,NULL,NULL,1,NULL,NULL,NULL,'---\neditor: redactor\nis_html_filter: 1\nteaser_len:\nlabel_in_list: none\nlabel_in_item: none\nis_required: 1\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value:\n','---\n- 0\n','---\n- 0\n',NULL),(5,5,'teaser','Анонс статьи','Краткая аннотация к статье, будет показана в общем списке статей',6,'Содержание','html',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\neditor: redactor\nis_html_filter: 1\nteaser_len:\nlabel_in_list: none\nlabel_in_item: none\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value:\n','---\n- 0\n','---\n- 0\n',NULL),(6,5,'kind','Тип статьи',NULL,4,'Информация о статье','list',NULL,1,1,NULL,NULL,NULL,NULL,'1 | Авторская\r\n2 | Рецензия\r\n3 | Перевод','---\nfilter_multiple: 1\nlabel_in_list: left\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(7,5,'notice','Комментарий редакции','Поле доступно только для администраторов и модераторов',9,'Служебное','text',1,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nmin_length: 0\nmax_length: 2048\nis_html_filter: null\nlabel_in_list: top\nlabel_in_item: top\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value:\n','---\n- 0\n','---\n- 5\n- 6\n',NULL),(8,5,'source','Источник','Укажите ссылку на источник текста',5,'Информация о статье','url',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nredirect: 1\nauto_http: 1\nlabel_in_list: left\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(9,5,'featured','Выбор редакции','Поле доступно только для администраторов и модераторов',8,'Служебное','checkbox',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\nlabel_in_list: left\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 5\n- 6\n',NULL);
/*!40000 ALTER TABLE `cms_con_articles_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_articles_props`
--

DROP TABLE IF EXISTS `cms_con_articles_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_articles_props` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_in_filter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_articles_props`
--

LOCK TABLES `cms_con_articles_props` WRITE;
/*!40000 ALTER TABLE `cms_con_articles_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_articles_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_articles_props_bind`
--

DROP TABLE IF EXISTS `cms_con_articles_props_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_articles_props_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `prop_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prop_id` (`prop_id`),
  KEY `ordering` (`cat_id`,`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_articles_props_bind`
--

LOCK TABLES `cms_con_articles_props_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_articles_props_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_articles_props_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_articles_props_values`
--

DROP TABLE IF EXISTS `cms_con_articles_props_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_articles_props_values` (
  `prop_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  KEY `prop_id` (`prop_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_articles_props_values`
--

LOCK TABLES `cms_con_articles_props_values` WRITE;
/*!40000 ALTER TABLE `cms_con_articles_props_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_articles_props_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_board`
--

DROP TABLE IF EXISTS `cms_con_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_board` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `slug` varchar(100) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `tags` varchar(1000) DEFAULT NULL,
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified` timestamp NULL DEFAULT NULL,
  `date_pub_end` timestamp NULL DEFAULT NULL,
  `is_pub` tinyint(1) DEFAULT '1',
  `hits_count` int(11) DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `parent_type` varchar(32) DEFAULT NULL,
  `parent_title` varchar(100) DEFAULT NULL,
  `parent_url` varchar(255) DEFAULT NULL,
  `is_parent_hidden` tinyint(1) DEFAULT NULL,
  `category_id` int(11) unsigned NOT NULL DEFAULT '1',
  `folder_id` int(11) unsigned DEFAULT NULL,
  `is_comments_on` tinyint(1) unsigned DEFAULT '1',
  `comments` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) unsigned DEFAULT NULL,
  `is_approved` tinyint(4) NOT NULL DEFAULT '1',
  `approved_by` int(11) DEFAULT NULL,
  `date_approved` timestamp NULL DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `photo` text,
  `photos` text,
  `phone` varchar(255) DEFAULT NULL,
  `city` int(11) unsigned DEFAULT NULL,
  `city_cache` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `approved_by` (`approved_by`),
  KEY `folder_id` (`folder_id`),
  KEY `slug` (`slug`),
  KEY `date_pub` (`is_pub`,`is_parent_hidden`,`is_approved`,`date_pub`),
  KEY `parent_id` (`parent_id`,`parent_type`,`date_pub`),
  KEY `user_id` (`user_id`,`date_pub`),
  KEY `date_pub_end` (`date_pub_end`),
  KEY `dataset_cheap` (`is_pub`,`is_parent_hidden`,`is_approved`),
  KEY `city` (`city`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_board`
--

LOCK TABLES `cms_con_board` WRITE;
/*!40000 ALTER TABLE `cms_con_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_board_cats`
--

DROP TABLE IF EXISTS `cms_con_board_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_board_cats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `slug_key` varchar(255) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `ns_left` int(11) DEFAULT NULL,
  `ns_right` int(11) DEFAULT NULL,
  `ns_level` int(11) DEFAULT NULL,
  `ns_differ` varchar(32) NOT NULL DEFAULT '',
  `ns_ignore` tinyint(4) NOT NULL DEFAULT '0',
  `allow_add` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `slug` (`slug`),
  KEY `ns_left` (`ns_level`,`ns_right`,`ns_left`),
  KEY `parent_id` (`parent_id`,`ns_left`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_board_cats`
--

LOCK TABLES `cms_con_board_cats` WRITE;
/*!40000 ALTER TABLE `cms_con_board_cats` DISABLE KEYS */;
INSERT INTO `cms_con_board_cats` VALUES (1,0,'---',NULL,NULL,NULL,NULL,NULL,1,1,20,0,'',0,NULL,NULL),(2,1,'Недвижимость','nedvizhimost',NULL,NULL,NULL,NULL,1,2,7,1,'',0,NULL,NULL),(3,2,'Квартиры','nedvizhimost/kvartiry',NULL,NULL,NULL,NULL,1,3,4,2,'',0,NULL,NULL),(4,2,'Коттеджи','nedvizhimost/kottedzhi',NULL,NULL,NULL,NULL,2,5,6,2,'',0,NULL,NULL),(5,1,'Автомобили','avtomobili',NULL,NULL,NULL,NULL,2,8,13,1,'',0,NULL,NULL),(8,1,'Работа','rabota',NULL,NULL,NULL,NULL,3,14,19,1,'',0,NULL,NULL),(9,8,'Вакансии','rabota/vakansii',NULL,NULL,NULL,NULL,1,15,16,2,'',0,NULL,NULL),(10,8,'Резюме','rabota/rezyume',NULL,NULL,NULL,NULL,2,17,18,2,'',0,NULL,NULL),(15,5,'Новые','avtomobili/novye',NULL,NULL,NULL,NULL,5,9,10,2,'',0,NULL,NULL),(16,5,'Подержанные','avtomobili/poderzhannye',NULL,NULL,NULL,NULL,6,11,12,2,'',0,NULL,NULL);
/*!40000 ALTER TABLE `cms_con_board_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_board_cats_bind`
--

DROP TABLE IF EXISTS `cms_con_board_cats_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_board_cats_bind` (
  `item_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  KEY `item_id` (`item_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_board_cats_bind`
--

LOCK TABLES `cms_con_board_cats_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_board_cats_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_board_cats_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_board_fields`
--

DROP TABLE IF EXISTS `cms_con_board_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_board_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `hint` varchar(200) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_list` tinyint(1) DEFAULT NULL,
  `is_in_item` tinyint(1) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `is_private` tinyint(1) DEFAULT NULL,
  `is_fixed` tinyint(1) DEFAULT NULL,
  `is_fixed_type` tinyint(1) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  `groups_read` text,
  `groups_edit` text,
  `filter_view` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `is_in_list` (`is_in_list`),
  KEY `is_in_item` (`is_in_item`),
  KEY `is_in_filter` (`is_in_filter`),
  KEY `is_private` (`is_private`),
  KEY `is_fixed` (`is_fixed`),
  KEY `is_fixed_type` (`is_fixed_type`),
  KEY `is_system` (`is_system`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_board_fields`
--

LOCK TABLES `cms_con_board_fields` WRITE;
/*!40000 ALTER TABLE `cms_con_board_fields` DISABLE KEYS */;
INSERT INTO `cms_con_board_fields` VALUES (1,9,'title','Заголовок объявления',NULL,1,NULL,'caption',1,1,NULL,NULL,1,1,0,NULL,'---\nlabel_in_list: left\nlabel_in_item: none\nis_required: 1\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value:\n','---\n- 0\n','---\n- 0\n',NULL),(2,9,'date_pub','Дата добавления',NULL,4,NULL,'date',1,1,1,NULL,1,1,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(3,9,'user','Автор',NULL,5,NULL,'user',NULL,1,NULL,NULL,1,1,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(4,9,'content','Текст объявления',NULL,6,NULL,'text',NULL,1,NULL,NULL,1,NULL,NULL,NULL,'---\nmin_length: 0\nmax_length: 2048\nis_html_filter: 1\nlabel_in_list: none\nlabel_in_item: none\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(5,9,'photo','Фотография',NULL,2,NULL,'image',1,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nsize_teaser: small\nsize_full: normal\nsizes:\n  - micro\n  - small\n  - normal\nlabel_in_list: none\nlabel_in_item: none\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(6,9,'photos','Дополнительные фотографии',NULL,3,NULL,'images',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nsize_teaser: small\nsize_full: big\nsizes:\n  - small\n  - big\nlabel_in_list: none\nlabel_in_item: none\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(8,9,'phone','Телефон',NULL,8,NULL,'string',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nmin_length: 0\nmax_length: 255\nlabel_in_list: left\nlabel_in_item: left\nis_required: 1\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value: phone\n','---\n- 0\n','---\n- 0\n',NULL),(9,9,'city','Населённый пункт','Выберите ваш населённый пункт',7,NULL,'city',1,1,1,NULL,NULL,NULL,NULL,NULL,'---\nlocation_type: cities\nlocation_group:\noutput_string:\nlabel_in_list: left\nlabel_in_item: left\nis_required: 1\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value: city\n','---\n- 0\n','---\n- 0\n','---\n- 0\n');
/*!40000 ALTER TABLE `cms_con_board_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_board_props`
--

DROP TABLE IF EXISTS `cms_con_board_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_board_props` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_in_filter`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_board_props`
--

LOCK TABLES `cms_con_board_props` WRITE;
/*!40000 ALTER TABLE `cms_con_board_props` DISABLE KEYS */;
INSERT INTO `cms_con_board_props` VALUES (3,9,'Тип кузова','Характеристики','list',NULL,'Седан\r\nХэтчбек\r\nУниверсал\r\nМинивэн\r\nКроссовер','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(6,9,'Год выпуска',NULL,'number',0,NULL,'---\nis_required: null\nunits:\nis_filter_range: 1\nis_filter_multi: null\n'),(7,9,'Тип предложения',NULL,'list',NULL,'Продам\r\nКуплю\r\nСдам\r\nСниму','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(8,9,'Общая площадь','Площадь','number',NULL,NULL,'---\nis_required: 1\nunits: м²\nis_filter_range: null\nis_filter_multi: null\n'),(9,9,'Количество комнат','Квартира','number',1,NULL,'---\nis_required: 1\nunits:\nis_filter_range: 1\nis_filter_multi: null\n'),(11,9,'Количество этажей',NULL,'number',1,NULL,'---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(12,9,'Есть гараж',NULL,'list',1,'Да\r\nНет','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(13,9,'Тип дома','Дом','list',NULL,'Новостройка\r\nВторичка','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: 1\n'),(14,9,'Пробег','Характеристики','number',NULL,NULL,'---\nis_required: 1\nunits: км\nis_filter_range: 1\nis_filter_multi: null\n'),(15,9,'Комплектация','Характеристики','list',NULL,'Базовая\r\nСредняя\r\nМаксимальная','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(16,9,'Жилая площадь','Площадь','number',NULL,NULL,'---\nis_required: 1\nunits: м²\nis_filter_range: null\nis_filter_multi: null\n'),(17,9,'Есть балкон','Квартира','list',NULL,'Да\r\nНет','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(18,9,'Санузел','Квартира','list',NULL,'Смежный\r\nРаздельный','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(19,9,'Этаж','Дом','number',NULL,NULL,'---\nis_required: 1\nunits:\nis_filter_range: 1\nis_filter_multi: null\n'),(20,9,'Этажей в доме','Дом','number',NULL,NULL,'---\nis_required: 1\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(22,9,'Объем двигателя','Характеристики','list',NULL,'0.5\r\n0.6\r\n0.7\r\n0.8\r\n0.9\r\n1.0\r\n1.2\r\n1.4\r\n1.6\r\n1.8\r\n2.0\r\n2.2\r\n2.5\r\n3.0\r\n3.2\r\n>3','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(23,9,'Трансмиссия','Характеристики','list',NULL,'Механическая\r\nАвтоматическая\r\nВариатор\r\nРобот','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(24,9,'Цвет','Характеристики','string',NULL,NULL,'---\nis_required: 1\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(25,9,'Модель Audi',NULL,'list',1,'A1\r\nA2\r\nA3\r\nA4\r\nA5\r\nA6\r\nA7\r\nA8\r\nQ3\r\nQ5\r\nQ7\r\nTT','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(29,9,'Марка',NULL,'list',NULL,'Указана в тексте\r\nMersedes\r\nBMW\r\nVolkswagen\r\nAudi\r\nFord\r\nToyota\r\nLexus\r\nRenault\r\nFiat\r\nKia\r\nВАЗ\r\nГАЗ\r\nУАЗ','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(30,9,'Модель',NULL,'string',NULL,NULL,'---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(31,9,'Тип предложения',NULL,'list',NULL,'Продам\r\nКуплю','---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n'),(32,9,'Цена','Финансы','number',NULL,NULL,'---\nis_required: null\nunits: руб.\nis_filter_range: 1\nis_filter_multi: null\n'),(33,9,'Зарплата','Финансы','number',1,NULL,'---\nis_required: null\nunits: руб.\nis_filter_range: 1\nis_filter_multi: null\n'),(34,9,'Организация',NULL,'string',1,NULL,'---\nis_required: null\nunits:\nis_filter_range: null\nis_filter_multi: null\n');
/*!40000 ALTER TABLE `cms_con_board_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_board_props_bind`
--

DROP TABLE IF EXISTS `cms_con_board_props_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_board_props_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `prop_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prop_id` (`prop_id`),
  KEY `ordering` (`cat_id`,`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_board_props_bind`
--

LOCK TABLES `cms_con_board_props_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_board_props_bind` DISABLE KEYS */;
INSERT INTO `cms_con_board_props_bind` VALUES (38,7,3,1),(39,7,4,1),(41,8,3,5),(42,8,4,2),(43,9,3,7),(45,11,4,4),(46,12,4,5),(47,13,3,2),(62,16,3,6),(63,16,4,3),(64,17,3,8),(65,18,3,9),(66,19,3,3),(67,20,3,4),(135,3,15,4),(136,3,16,4),(137,6,15,9),(138,6,16,10),(139,15,15,5),(140,15,16,5),(141,14,16,6),(142,22,15,6),(143,22,16,7),(144,23,15,7),(145,23,16,8),(146,24,15,8),(147,24,16,9),(148,29,15,2),(149,29,16,2),(150,30,15,3),(151,30,16,3),(154,31,15,1),(155,31,16,1),(156,32,3,10),(157,32,4,6),(158,32,15,10),(159,32,16,11),(160,33,9,2),(161,34,9,1);
/*!40000 ALTER TABLE `cms_con_board_props_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_board_props_values`
--

DROP TABLE IF EXISTS `cms_con_board_props_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_board_props_values` (
  `prop_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  KEY `prop_id` (`prop_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_board_props_values`
--

LOCK TABLES `cms_con_board_props_values` WRITE;
/*!40000 ALTER TABLE `cms_con_board_props_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_board_props_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_news`
--

DROP TABLE IF EXISTS `cms_con_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `slug` varchar(100) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `tags` varchar(1000) DEFAULT NULL,
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified` timestamp NULL DEFAULT NULL,
  `date_pub_end` timestamp NULL DEFAULT NULL,
  `is_pub` tinyint(1) DEFAULT '1',
  `hits_count` int(11) DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `parent_type` varchar(32) DEFAULT NULL,
  `parent_title` varchar(100) DEFAULT NULL,
  `parent_url` varchar(255) DEFAULT NULL,
  `is_parent_hidden` tinyint(1) DEFAULT NULL,
  `category_id` int(11) unsigned NOT NULL DEFAULT '1',
  `folder_id` int(11) unsigned DEFAULT NULL,
  `is_comments_on` tinyint(1) unsigned DEFAULT '1',
  `comments` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) unsigned DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `approved_by` int(11) DEFAULT NULL,
  `date_approved` timestamp NULL DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `teaser` varchar(255) DEFAULT NULL,
  `photo` text,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `approved_by` (`approved_by`),
  KEY `folder_id` (`folder_id`),
  KEY `slug` (`slug`),
  KEY `date_pub` (`is_pub`,`is_parent_hidden`,`is_deleted`,`is_approved`,`date_pub`),
  KEY `parent_id` (`parent_id`,`parent_type`,`date_pub`),
  KEY `user_id` (`user_id`,`date_pub`),
  KEY `date_pub_end` (`date_pub_end`),
  KEY `dataset_discussed` (`is_pub`,`is_parent_hidden`,`is_deleted`,`is_approved`,`comments`),
  KEY `dataset_popular` (`is_pub`,`is_parent_hidden`,`is_deleted`,`is_approved`,`rating`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_news`
--

LOCK TABLES `cms_con_news` WRITE;
/*!40000 ALTER TABLE `cms_con_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_news_cats`
--

DROP TABLE IF EXISTS `cms_con_news_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_news_cats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `slug_key` varchar(255) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `ns_left` int(11) DEFAULT NULL,
  `ns_right` int(11) DEFAULT NULL,
  `ns_level` int(11) DEFAULT NULL,
  `ns_differ` varchar(32) NOT NULL DEFAULT '',
  `ns_ignore` tinyint(4) NOT NULL DEFAULT '0',
  `allow_add` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `slug` (`slug`),
  KEY `ns_left` (`ns_level`,`ns_right`,`ns_left`),
  KEY `parent_id` (`parent_id`,`ns_left`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_news_cats`
--

LOCK TABLES `cms_con_news_cats` WRITE;
/*!40000 ALTER TABLE `cms_con_news_cats` DISABLE KEYS */;
INSERT INTO `cms_con_news_cats` VALUES (1,0,'---',NULL,NULL,NULL,NULL,NULL,1,1,30,0,'',0,NULL,NULL),(2,1,'Общество','obschestvo',NULL,NULL,NULL,NULL,1,2,3,1,'',0,NULL,NULL),(3,1,'Бизнес','biznes',NULL,NULL,NULL,NULL,2,4,5,1,'',0,NULL,NULL),(4,1,'Политика','politika',NULL,NULL,NULL,NULL,3,6,7,1,'',0,NULL,NULL),(5,1,'Происшествия','proisshestvija',NULL,NULL,NULL,NULL,4,8,9,1,'',0,NULL,NULL),(6,1,'В мире','v-mire',NULL,NULL,NULL,NULL,5,10,11,1,'',0,NULL,NULL),(7,1,'Спорт','sport',NULL,NULL,NULL,NULL,6,12,13,1,'',0,NULL,NULL),(8,1,'Культура','kultura',NULL,NULL,NULL,NULL,7,14,15,1,'',0,NULL,NULL),(9,1,'Развлечения','razvlechenija',NULL,NULL,NULL,NULL,8,16,17,1,'',0,NULL,NULL),(10,1,'Игры','igry',NULL,NULL,NULL,NULL,9,18,19,1,'',0,NULL,NULL),(11,1,'Власть','vlast',NULL,NULL,NULL,NULL,10,20,21,1,'',0,NULL,NULL),(12,1,'События','sobytija',NULL,NULL,NULL,NULL,11,22,23,1,'',0,NULL,NULL),(13,1,'Криминал','kriminal',NULL,NULL,NULL,NULL,12,24,25,1,'',0,NULL,NULL),(14,1,'Разное','raznoe',NULL,NULL,NULL,NULL,13,26,29,1,'',0,NULL,NULL),(15,14,'Наш сайт','raznoe/nash-sait',NULL,NULL,NULL,NULL,1,27,28,2,'',0,NULL,NULL);
/*!40000 ALTER TABLE `cms_con_news_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_news_cats_bind`
--

DROP TABLE IF EXISTS `cms_con_news_cats_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_news_cats_bind` (
  `item_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  KEY `item_id` (`item_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_news_cats_bind`
--

LOCK TABLES `cms_con_news_cats_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_news_cats_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_news_cats_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_news_fields`
--

DROP TABLE IF EXISTS `cms_con_news_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_news_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `hint` varchar(200) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_list` tinyint(1) DEFAULT NULL,
  `is_in_item` tinyint(1) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `is_private` tinyint(1) DEFAULT NULL,
  `is_fixed` tinyint(1) DEFAULT NULL,
  `is_fixed_type` tinyint(1) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  `groups_read` text,
  `groups_edit` text,
  `filter_view` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `is_in_list` (`is_in_list`),
  KEY `is_in_item` (`is_in_item`),
  KEY `is_in_filter` (`is_in_filter`),
  KEY `is_private` (`is_private`),
  KEY `is_fixed` (`is_fixed`),
  KEY `is_fixed_type` (`is_fixed_type`),
  KEY `is_system` (`is_system`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_news_fields`
--

LOCK TABLES `cms_con_news_fields` WRITE;
/*!40000 ALTER TABLE `cms_con_news_fields` DISABLE KEYS */;
INSERT INTO `cms_con_news_fields` VALUES (1,10,'title','Заголовок новости',NULL,1,NULL,'caption',1,1,1,NULL,1,1,0,NULL,'---\nlabel_in_list: none\nlabel_in_item: none\nis_required: 1\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(2,10,'date_pub','Дата публикации',NULL,6,NULL,'date',1,1,1,NULL,1,1,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\nshow_time: true\n',NULL,NULL,NULL),(3,10,'user','Автор',NULL,5,NULL,'user',1,1,0,NULL,1,1,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\n',NULL,NULL,NULL),(4,10,'content','Текст новости',NULL,4,NULL,'html',NULL,1,NULL,NULL,1,NULL,NULL,NULL,'---\neditor: redactor\nis_html_filter: 1\nteaser_len:\nlabel_in_list: none\nlabel_in_item: none\nis_required: 1\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value:\n','---\n- 0\n','---\n- 0\n',NULL),(5,10,'teaser','Краткое описание новости','Выводится в списке новостей',3,NULL,'string',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\nmin_length: 0\nmax_length: 255\nlabel_in_list: none\nlabel_in_item: none\nis_required: 1\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value:\n','---\n- 0\n','---\n- 0\n',NULL),(6,10,'photo','Фотография',NULL,2,NULL,'image',1,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nsize_teaser: small\nsize_full: normal\nsize_modal: big\nsizes:\n  - normal\n  - micro\n  - small\n  - big\nallow_import_link: null\nlabel_in_list: none\nlabel_in_item: none\nwrap_type: left\nwrap_width:\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value:\n','---\n- 0\n','---\n- 0\n',NULL);
/*!40000 ALTER TABLE `cms_con_news_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_news_props`
--

DROP TABLE IF EXISTS `cms_con_news_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_news_props` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  PRIMARY KEY (`id`),
  KEY `is_in_filter` (`is_in_filter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_news_props`
--

LOCK TABLES `cms_con_news_props` WRITE;
/*!40000 ALTER TABLE `cms_con_news_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_news_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_news_props_bind`
--

DROP TABLE IF EXISTS `cms_con_news_props_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_news_props_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `prop_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prop_id` (`prop_id`),
  KEY `ordering` (`cat_id`,`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_news_props_bind`
--

LOCK TABLES `cms_con_news_props_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_news_props_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_news_props_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_news_props_values`
--

DROP TABLE IF EXISTS `cms_con_news_props_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_news_props_values` (
  `prop_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  KEY `prop_id` (`prop_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_news_props_values`
--

LOCK TABLES `cms_con_news_props_values` WRITE;
/*!40000 ALTER TABLE `cms_con_news_props_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_news_props_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_pages`
--

DROP TABLE IF EXISTS `cms_con_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `slug` varchar(100) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `tags` varchar(1000) DEFAULT NULL,
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified` timestamp NULL DEFAULT NULL,
  `date_pub_end` timestamp NULL DEFAULT NULL,
  `is_pub` tinyint(1) DEFAULT '1',
  `hits_count` int(11) DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `parent_type` varchar(32) DEFAULT NULL,
  `parent_title` varchar(100) DEFAULT NULL,
  `parent_url` varchar(255) DEFAULT NULL,
  `is_parent_hidden` tinyint(1) DEFAULT NULL,
  `category_id` int(11) unsigned NOT NULL DEFAULT '1',
  `folder_id` int(11) unsigned DEFAULT NULL,
  `is_comments_on` tinyint(1) unsigned DEFAULT '1',
  `comments` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) unsigned DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT '1',
  `approved_by` int(11) DEFAULT NULL,
  `date_approved` timestamp NULL DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `attach` text,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `folder_id` (`folder_id`),
  KEY `slug` (`slug`),
  KEY `date_pub` (`is_pub`,`is_parent_hidden`,`is_deleted`,`is_approved`,`date_pub`),
  KEY `parent_id` (`parent_id`,`parent_type`,`date_pub`),
  KEY `user_id` (`user_id`,`date_pub`),
  KEY `date_pub_end` (`date_pub_end`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_pages`
--

LOCK TABLES `cms_con_pages` WRITE;
/*!40000 ALTER TABLE `cms_con_pages` DISABLE KEYS */;
INSERT INTO `cms_con_pages` VALUES (1,'О проекте','<ul>\r\n<li>Мы не претендуем на звание социальной сети.&nbsp;</li><li>Мы никого не \"подслушиваем\".&nbsp;</li><li>Мы просто хотим, чтобы вам здесь было комфортно, удобно и приятно находиться.</li></ul><p>Спасибо, что вы с нами!</p>','about','претендуем, никого, сети&nbsp;мы, социальной, звание, подслушиваем&nbsp;мы, хотим, находитьсяспасибо, приятно, удобно','Мы не претендуем на звание социальной сети.&nbsp;Мы никого не \"подслушиваем\".&nbsp;Мы просто хотим, чтобы вам здесь было комфортно, удобно и приятно находиться.Спасибо, что вы с нами!',NULL,NULL,'2017-09-13 07:10:52','2017-10-09 15:43:34',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,1,NULL,1,0,0,NULL,1,NULL,'2017-09-28 15:26:32',0,NULL),(3,'Условия конфиденциальности и обработки персональных данных','<h2>	Основные условия</h2><ol>\r\n	<li>Персональные данные пользователя сайта* обрабатываются в соответствии с <a href=\"https://ru.wikisource.org/wiki/%D0%A4%D0%B5%D0%B4%D0%B5%D1%80%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9_%D0%B7%D0%B0%D0%BA%D0%BE%D0%BD_%D0%BE%D1%82_27.07.2006_%E2%84%96_152-%D0%A4%D0%97\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); font-size: 1.4rem;\">ФЗ «О персональных данных» № 152-ФЗ</a>.</li>	<li>Пользователь при регистрации на сайте предоставляет следующую информацию: nickname (вымышленное&nbsp;имя), адрес электронной почты (эти данные не являются персональными). Все другие сведения не являются обязательными.</li>	<li>Предоставляя свои персональные данные сайту, посетитель или пользователь сайта соглашается на их обработку.</li>	<li>Под обработкой персональных данных понимается любое действие (операция) или совокупность действий (операций), совершаемых с использованием (или без использования)&nbsp;средств автоматизации, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение) извлечение, использование, передачу (в том числе передачу третьим лицам, не исключая трансграничную передачу, если необходимость в ней возникла в ходе исполнения обязательств), обезличивание, блокирование, удаление, уничтожение персональных данных.</li>	<li>Сайт использует персональные данные пользователя в целях:<br>\r\n		5.1.&nbsp;регистрации пользователя на сайте;\r\n	<br>\r\n		5.2. уведомления пользователя о событиях на сайте.\r\n	</li>	<li>Сайт обязуется не разглашать полученные от посетителя персональные данные. При этом не считается нарушением обязательств разглашение информации в случае, когда обязанность такого раскрытия установлена требованиями действующего законодательства РФ.</li></ol><h2>	Дополнительные условия</h2><ol>\r\n	<li>Сайт вправе использовать технологию «<a href=\"https://ru.wikipedia.org/wiki/Cookie\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); font-size: 1.4rem;\">cookies</a>». «Cookies» не содержат конфиденциальную информацию и не являются персональными данными. Посетитель/пользователь сайта настоящим дает согласие на сбор, анализ и использование cookies, в том числе третьими лицами для целей формирования статистики и оптимизации рекламных сообщений.</li>	<li>Сайт получает информацию об IP-адресе посетителя, его браузере и настройках браузера. Данная информация не используется для установления личности посетителя.</li>	<li>Сайт не несет ответственности за сведения, предоставленные пользователем в общедоступной форме.</li></ol><hr>\r\n<p>\r\n		*Здесь и далее имеется ввиду наш сайт.</p>','offer','данные, пользователя, персональные, персональных, информацию, передачу, являются, числе, посетителя, персональными','Основные условия  	Персональные данные пользователя сайта* обрабатываются в соответствии с ФЗ «О персональных данных» № 152-ФЗ.',NULL,NULL,'2017-09-28 15:28:35','2017-10-06 15:02:31',NULL,1,0,2,NULL,NULL,NULL,NULL,NULL,0,NULL,1,0,0,NULL,1,NULL,'2017-10-06 14:51:52',0,NULL),(2,'Правила сайта','<p>\r\n	Запрещены к размещению:</p><ol>\r\n	\r\n<li>любые материалы нарушающие законы Российской Федерации;</li>	\r\n<li>материалы порнографического содержания;</li>	\r\n<li>пропаганда алкоголя, наркотиков и прочих \"не хороших излишеств\";</li>	\r\n<li>материалы, призывающие к насилию, расовой дискриминации и тому подобное;</li>	\r\n<li>оскорбления в адрес пользователей сайта или администрации;</li>	\r\n<li>мат, в том числе нецензурные логины и никнеймы, а также изображения оскорбительного характера и др.;</li>	\r\n<li>публикация материалов защищённых авторским правом, без разрешения правообладателя.</li></ol><p>\r\n	Разрешены к размещению:</p><ul>\r\n	\r\n<li>теоретически всё, что не запрещено, но администрация сайта оставляет за собой право изменять и дополнять данные правила в любой момент времени.</li></ul><p>\r\n	Кроме того, материалы, носящие явно выраженный характер спама, созданные для популяризации кого-либо или чего-либо (по мнению администрации сайта), могут быть удалены или отредактированы.</p><p>\r\n	<span style=\"color: rgb(192, 80, 77);\">Администрация сайта оставляет за собой право не только удалять запрещённые материалы, но и блокировать или удалять (за злостное нарушение) пользователей их разместивших.</span></p><p>\r\n	Убедительная просьба ознакомиться с&nbsp;<a href=\"/offer.html\">условиями конфиденциальности и обработки персональных данных</a>.</p>','rules','материалы, сайта, право, удалять, оставляет, администрация, размещению, пользователей, нецензурные, числе','Запрещены к размещению:    любые материалы нарушающие законы Российской Федерации; материалы порнографического содержания; пропаганда алкоголя, наркотиков и прочих \"не хороших излишеств\"; материалы, призывающие к насилию, расовой дискримин',NULL,NULL,'2017-09-14 07:10:52','2017-10-06 14:53:09',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,1,NULL,1,0,0,NULL,1,NULL,'2017-09-14 07:10:52',0,NULL);
/*!40000 ALTER TABLE `cms_con_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_pages_cats`
--

DROP TABLE IF EXISTS `cms_con_pages_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_pages_cats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `slug` varchar(255) DEFAULT NULL,
  `slug_key` varchar(255) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `ns_left` int(11) DEFAULT NULL,
  `ns_right` int(11) DEFAULT NULL,
  `ns_level` int(11) DEFAULT NULL,
  `ns_differ` varchar(32) NOT NULL DEFAULT '',
  `ns_ignore` tinyint(4) NOT NULL DEFAULT '0',
  `allow_add` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `slug` (`slug`),
  KEY `ns_left` (`ns_level`,`ns_right`,`ns_left`),
  KEY `parent_id` (`parent_id`,`ns_left`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_pages_cats`
--

LOCK TABLES `cms_con_pages_cats` WRITE;
/*!40000 ALTER TABLE `cms_con_pages_cats` DISABLE KEYS */;
INSERT INTO `cms_con_pages_cats` VALUES (1,0,'---',NULL,NULL,NULL,NULL,NULL,NULL,1,1,2,0,'',0,NULL);
/*!40000 ALTER TABLE `cms_con_pages_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_pages_cats_bind`
--

DROP TABLE IF EXISTS `cms_con_pages_cats_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_pages_cats_bind` (
  `item_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  KEY `item_id` (`item_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_pages_cats_bind`
--

LOCK TABLES `cms_con_pages_cats_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_pages_cats_bind` DISABLE KEYS */;
INSERT INTO `cms_con_pages_cats_bind` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `cms_con_pages_cats_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_pages_fields`
--

DROP TABLE IF EXISTS `cms_con_pages_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_pages_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `hint` varchar(200) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_list` tinyint(1) DEFAULT NULL,
  `is_in_item` tinyint(1) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `is_private` tinyint(1) DEFAULT NULL,
  `is_fixed` tinyint(1) DEFAULT NULL,
  `is_fixed_type` tinyint(1) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  `groups_read` text,
  `groups_edit` text,
  `filter_view` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `is_in_list` (`is_in_list`),
  KEY `is_in_item` (`is_in_item`),
  KEY `is_in_filter` (`is_in_filter`),
  KEY `is_private` (`is_private`),
  KEY `is_fixed` (`is_fixed`),
  KEY `is_system` (`is_system`),
  KEY `is_fixed_type` (`is_fixed_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_pages_fields`
--

LOCK TABLES `cms_con_pages_fields` WRITE;
/*!40000 ALTER TABLE `cms_con_pages_fields` DISABLE KEYS */;
INSERT INTO `cms_con_pages_fields` VALUES (1,1,'title','Заголовок',NULL,1,NULL,'caption',1,1,1,NULL,1,1,NULL,NULL,'---\nlabel_in_list: none\nlabel_in_item: none\nmin_length: 3\nmax_length: 100\nis_required: true\n',NULL,NULL,NULL),(2,1,'date_pub','Дата публикации',NULL,2,NULL,'date',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(3,1,'user','Автор',NULL,3,NULL,'user',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL),(4,1,'content','Текст страницы',NULL,4,NULL,'html',NULL,1,NULL,NULL,1,NULL,NULL,NULL,'---\neditor: redactor\nis_html_filter: null\nbuild_redirect_link: null\nteaser_len:\nin_fulltext_search: null\nrelation_id: 0\nlabel_in_list: none\nlabel_in_item: none\nwrap_type: auto\nwrap_width:\nis_required: 1\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value:\n','---\n- 0\n','---\n- 6\n','---\n- 0\n'),(5,1,'attach','Скачать','Приложите файл к странице',5,NULL,'file',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nshow_name: 0\nextensions: jpg, gif, png\nmax_size_mb: 2\nshow_size: 1\nlabel_in_list: none\nlabel_in_item: none\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL);
/*!40000 ALTER TABLE `cms_con_pages_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_pages_props`
--

DROP TABLE IF EXISTS `cms_con_pages_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_pages_props` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_in_filter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_pages_props`
--

LOCK TABLES `cms_con_pages_props` WRITE;
/*!40000 ALTER TABLE `cms_con_pages_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_pages_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_pages_props_bind`
--

DROP TABLE IF EXISTS `cms_con_pages_props_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_pages_props_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `prop_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prop_id` (`prop_id`),
  KEY `ordering` (`cat_id`,`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_pages_props_bind`
--

LOCK TABLES `cms_con_pages_props_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_pages_props_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_pages_props_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_pages_props_values`
--

DROP TABLE IF EXISTS `cms_con_pages_props_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_pages_props_values` (
  `prop_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  KEY `prop_id` (`prop_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_pages_props_values`
--

LOCK TABLES `cms_con_pages_props_values` WRITE;
/*!40000 ALTER TABLE `cms_con_pages_props_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_pages_props_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_posts`
--

DROP TABLE IF EXISTS `cms_con_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `slug` varchar(100) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `tags` varchar(1000) DEFAULT NULL,
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_last_modified` timestamp NULL DEFAULT NULL,
  `date_pub_end` timestamp NULL DEFAULT NULL,
  `is_pub` tinyint(1) DEFAULT '1',
  `hits_count` int(11) DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `parent_type` varchar(32) DEFAULT NULL,
  `parent_title` varchar(100) DEFAULT NULL,
  `parent_url` varchar(255) DEFAULT NULL,
  `is_parent_hidden` tinyint(1) DEFAULT NULL,
  `category_id` int(11) unsigned NOT NULL DEFAULT '1',
  `folder_id` int(11) unsigned DEFAULT NULL,
  `is_comments_on` tinyint(1) unsigned DEFAULT '1',
  `comments` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) unsigned DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `approved_by` int(11) DEFAULT NULL,
  `date_approved` timestamp NULL DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `picture` text,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `approved_by` (`approved_by`),
  KEY `folder_id` (`folder_id`),
  KEY `slug` (`slug`),
  KEY `date_pub` (`is_pub`,`is_parent_hidden`,`is_deleted`,`is_approved`,`date_pub`),
  KEY `parent_id` (`parent_id`,`parent_type`,`date_pub`),
  KEY `user_id` (`user_id`,`date_pub`),
  KEY `date_pub_end` (`date_pub_end`),
  KEY `dataset_daily` (`date_pub`,`is_pub`,`is_parent_hidden`,`is_deleted`,`is_approved`,`rating`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_posts`
--

LOCK TABLES `cms_con_posts` WRITE;
/*!40000 ALTER TABLE `cms_con_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_posts_cats`
--

DROP TABLE IF EXISTS `cms_con_posts_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_posts_cats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `slug` varchar(255) DEFAULT NULL,
  `slug_key` varchar(255) DEFAULT NULL,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `ns_left` int(11) DEFAULT NULL,
  `ns_right` int(11) DEFAULT NULL,
  `ns_level` int(11) DEFAULT NULL,
  `ns_differ` varchar(32) NOT NULL DEFAULT '',
  `ns_ignore` tinyint(4) NOT NULL DEFAULT '0',
  `allow_add` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `slug` (`slug`),
  KEY `ns_left` (`ns_level`,`ns_right`,`ns_left`),
  KEY `parent_id` (`parent_id`,`ns_left`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_posts_cats`
--

LOCK TABLES `cms_con_posts_cats` WRITE;
/*!40000 ALTER TABLE `cms_con_posts_cats` DISABLE KEYS */;
INSERT INTO `cms_con_posts_cats` VALUES (1,0,'---',NULL,NULL,NULL,NULL,NULL,NULL,1,1,2,0,'',0,NULL);
/*!40000 ALTER TABLE `cms_con_posts_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_posts_cats_bind`
--

DROP TABLE IF EXISTS `cms_con_posts_cats_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_posts_cats_bind` (
  `item_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  KEY `item_id` (`item_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_posts_cats_bind`
--

LOCK TABLES `cms_con_posts_cats_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_posts_cats_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_posts_cats_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_posts_fields`
--

DROP TABLE IF EXISTS `cms_con_posts_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_posts_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `hint` varchar(200) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_list` tinyint(1) DEFAULT NULL,
  `is_in_item` tinyint(1) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `is_private` tinyint(1) DEFAULT NULL,
  `is_fixed` tinyint(1) DEFAULT NULL,
  `is_fixed_type` tinyint(1) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  `groups_read` text,
  `groups_edit` text,
  `filter_view` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `is_in_list` (`is_in_list`),
  KEY `is_in_item` (`is_in_item`),
  KEY `is_in_filter` (`is_in_filter`),
  KEY `is_private` (`is_private`),
  KEY `is_fixed` (`is_fixed`),
  KEY `is_fixed_type` (`is_fixed_type`),
  KEY `is_system` (`is_system`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_posts_fields`
--

LOCK TABLES `cms_con_posts_fields` WRITE;
/*!40000 ALTER TABLE `cms_con_posts_fields` DISABLE KEYS */;
INSERT INTO `cms_con_posts_fields` VALUES (1,6,'title','Заголовок',NULL,1,NULL,'caption',1,1,1,NULL,1,1,0,NULL,'---\nlabel_in_list: none\nlabel_in_item: none\nmin_length: 3\nmax_length: 100\nis_required: true\n',NULL,NULL,NULL),(2,6,'date_pub','Дата публикации',NULL,2,NULL,'date',1,1,1,NULL,1,1,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\nshow_time: true\n',NULL,NULL,NULL),(3,6,'user','Автор',NULL,3,NULL,'user',1,1,0,NULL,1,1,1,NULL,'---\nlabel_in_list: none\nlabel_in_item: left\n',NULL,NULL,NULL),(4,6,'content','Текст поста',NULL,5,NULL,'html',1,1,NULL,NULL,1,NULL,NULL,NULL,'---\neditor: redactor\nis_html_filter: null\nteaser_len: 500\nlabel_in_list: none\nlabel_in_item: none\nis_required: 1\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value:\n','---\n- 0\n','---\n- 0\n',NULL),(5,6,'picture','Картинка для привлечения внимания',NULL,4,NULL,'image',1,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nsize_teaser: normal\nsize_full: normal\nsizes:\n  - small\n  - normal\nlabel_in_list: none\nlabel_in_item: none\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL);
/*!40000 ALTER TABLE `cms_con_posts_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_posts_props`
--

DROP TABLE IF EXISTS `cms_con_posts_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_posts_props` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_filter` tinyint(1) DEFAULT NULL,
  `values` text,
  `options` text,
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_in_filter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_posts_props`
--

LOCK TABLES `cms_con_posts_props` WRITE;
/*!40000 ALTER TABLE `cms_con_posts_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_posts_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_posts_props_bind`
--

DROP TABLE IF EXISTS `cms_con_posts_props_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_posts_props_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `prop_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prop_id` (`prop_id`),
  KEY `ordering` (`cat_id`,`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_posts_props_bind`
--

LOCK TABLES `cms_con_posts_props_bind` WRITE;
/*!40000 ALTER TABLE `cms_con_posts_props_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_posts_props_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_con_posts_props_values`
--

DROP TABLE IF EXISTS `cms_con_posts_props_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_con_posts_props_values` (
  `prop_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  KEY `prop_id` (`prop_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_con_posts_props_values`
--

LOCK TABLES `cms_con_posts_props_values` WRITE;
/*!40000 ALTER TABLE `cms_con_posts_props_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_con_posts_props_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_datasets`
--

DROP TABLE IF EXISTS `cms_content_datasets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_datasets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) unsigned DEFAULT NULL COMMENT 'ID типа контента',
  `name` varchar(32) NOT NULL COMMENT 'Название набора',
  `title` varchar(100) NOT NULL COMMENT 'Заголовок набора',
  `description` text COMMENT 'Описание',
  `ordering` int(11) unsigned DEFAULT NULL COMMENT 'Порядковый номер',
  `is_visible` tinyint(1) unsigned DEFAULT NULL COMMENT 'Отображать набор на сайте?',
  `filters` text NOT NULL COMMENT 'Массив фильтров набора',
  `sorting` text NOT NULL COMMENT 'Массив правил сортировки',
  `index` varchar(40) DEFAULT NULL COMMENT 'Название используемого индекса',
  `groups_view` text COMMENT 'Показывать группам',
  `groups_hide` text COMMENT 'Скрывать от групп',
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `cats_view` text COMMENT 'Показывать в категориях',
  `cats_hide` text COMMENT 'Не показывать в категориях',
  `max_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `target_controller` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `ctype_id` (`ctype_id`,`ordering`),
  KEY `index` (`index`),
  KEY `target_controller` (`target_controller`,`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Наборы для типов контента';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_datasets`
--

LOCK TABLES `cms_content_datasets` WRITE;
/*!40000 ALTER TABLE `cms_content_datasets` DISABLE KEYS */;
INSERT INTO `cms_content_datasets` VALUES (1,5,'all','Все',NULL,1,1,'0','---\n- \n  by: date_pub\n  to: desc\n','date_pub','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(2,5,'reviews','Рецензии',NULL,2,1,'---\n- \n  field: kind\n  condition: eq\n  value: 2\n','---\n- \n  by: date_pub\n  to: desc\n','dataset_reviews','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(3,5,'translations','Переводы',NULL,3,1,'---\n- \n  field: kind\n  condition: eq\n  value: 3\n','---\n- \n  by: date_pub\n  to: desc\n','dataset_reviews','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(4,5,'featured','Выбор редакции',NULL,4,1,'---\n- \n  field: featured\n  condition: eq\n  value: 1\n','---\n- \n  by: date_pub\n  to: desc\n','dataset_featured','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(5,5,'rating','Рейтинг',NULL,5,1,'---\n- \n  field: rating\n  condition: gt\n  value: 0\n','---\n- \n  by: rating\n  to: desc\n','dataset_rating','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(6,6,'latest','Новые',NULL,1,1,'0','---\n- \n  by: date_pub\n  to: desc\n','date_pub','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(7,6,'daily','Лучшие за сутки',NULL,2,1,'---\n- \n  field: date_pub\n  condition: dy\n  value: 1\n','---\n- \n  by: rating\n  to: desc\n','dataset_daily','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(8,6,'weekly','за неделю',NULL,3,1,'---\n- \n  field: date_pub\n  condition: dy\n  value: 7\n','---\n- \n  by: rating\n  to: desc\n','dataset_daily','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(9,6,'monthly','за месяц',NULL,4,1,'---\n- \n  field: date_pub\n  condition: dy\n  value: 31\n','---\n- \n  by: date_pub\n  to: desc\n','date_pub','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(10,10,'latest','Последние',NULL,1,1,'0','---\n- \n  by: date_pub\n  to: desc\n','date_pub','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(11,10,'discussed','Обсуждаемые',NULL,2,1,'0','---\n- \n  by: comments\n  to: desc\n','dataset_discussed','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(12,10,'popular','Популярные',NULL,3,1,'0','---\n- \n  by: rating\n  to: desc\n','dataset_popular','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(13,9,'all','Новые',NULL,1,1,'0','---\n- \n  by: date_pub\n  to: desc\n','date_pub','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(14,9,'cheap','Сначала дешевые',NULL,2,1,'0','---\n- \n  by: price\n  to: asc\n','dataset_cheap','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(15,9,'expensive','Сначала дорогие',NULL,3,1,'0','---\n- \n  by: price\n  to: desc\n','dataset_cheap','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(16,NULL,'rating','Лучшие группы',NULL,3,1,'0','---\n- \n  by: rating\n  to: desc\n','rating','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,'groups'),(17,NULL,'all','Новые группы',NULL,2,1,'0','---\n- \n  by: date_pub\n  to: desc\n','date_pub','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,'groups'),(18,NULL,'popular','Популярные',NULL,1,1,'0','---\n- \n  by: members_count\n  to: desc\n','members_count','---\n- 0\n',NULL,NULL,NULL,NULL,NULL,NULL,0,'groups');
/*!40000 ALTER TABLE `cms_content_datasets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_folders`
--

DROP TABLE IF EXISTS `cms_content_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_folders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`ctype_id`,`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_folders`
--

LOCK TABLES `cms_content_folders` WRITE;
/*!40000 ALTER TABLE `cms_content_folders` DISABLE KEYS */;
INSERT INTO `cms_content_folders` VALUES (5,6,1,'Личное');
/*!40000 ALTER TABLE `cms_content_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_relations`
--

DROP TABLE IF EXISTS `cms_content_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_relations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(256) DEFAULT NULL,
  `target_controller` varchar(32) NOT NULL DEFAULT 'content',
  `ctype_id` int(11) unsigned DEFAULT NULL,
  `child_ctype_id` int(11) unsigned DEFAULT NULL,
  `layout` varchar(32) DEFAULT NULL,
  `options` text,
  `seo_keys` varchar(256) DEFAULT NULL,
  `seo_desc` varchar(256) DEFAULT NULL,
  `seo_title` varchar(256) DEFAULT NULL,
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ctype_id` (`ctype_id`,`ordering`),
  KEY `child_ctype_id` (`child_ctype_id`,`target_controller`,`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_relations`
--

LOCK TABLES `cms_content_relations` WRITE;
/*!40000 ALTER TABLE `cms_content_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_content_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_relations_bind`
--

DROP TABLE IF EXISTS `cms_content_relations_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_relations_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_ctype_id` int(11) unsigned DEFAULT NULL,
  `parent_item_id` int(11) unsigned DEFAULT NULL,
  `child_ctype_id` int(11) unsigned DEFAULT NULL,
  `child_item_id` int(11) unsigned DEFAULT NULL,
  `target_controller` varchar(32) NOT NULL DEFAULT 'content',
  PRIMARY KEY (`id`),
  KEY `parent_ctype_id` (`parent_ctype_id`),
  KEY `child_ctype_id` (`child_ctype_id`),
  KEY `parent_item_id` (`parent_item_id`,`target_controller`),
  KEY `child_item_id` (`child_item_id`,`target_controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_relations_bind`
--

LOCK TABLES `cms_content_relations_bind` WRITE;
/*!40000 ALTER TABLE `cms_content_relations_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_content_relations_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_types`
--

DROP TABLE IF EXISTS `cms_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `name` varchar(32) NOT NULL COMMENT 'Системное имя',
  `description` varchar(255) DEFAULT NULL COMMENT 'Описание',
  `is_date_range` tinyint(1) unsigned DEFAULT NULL,
  `is_premod_add` tinyint(1) unsigned DEFAULT NULL COMMENT 'Модерация при создании?',
  `is_premod_edit` tinyint(1) unsigned DEFAULT NULL COMMENT 'Модерация при редактировании',
  `is_cats` tinyint(1) unsigned DEFAULT NULL COMMENT 'Категории включены?',
  `is_cats_recursive` tinyint(1) unsigned DEFAULT NULL COMMENT 'Сквозной просмотр категорий?',
  `is_folders` tinyint(1) unsigned DEFAULT NULL,
  `is_in_groups` tinyint(1) unsigned DEFAULT NULL COMMENT 'Создание в группах',
  `is_in_groups_only` tinyint(1) unsigned DEFAULT NULL COMMENT 'Создание только в группах',
  `is_comments` tinyint(1) unsigned DEFAULT NULL COMMENT 'Комментарии включены?',
  `is_comments_tree` tinyint(1) unsigned DEFAULT NULL,
  `is_rating` tinyint(1) unsigned DEFAULT NULL COMMENT 'Разрешить рейтинг?',
  `is_rating_pos` tinyint(1) unsigned DEFAULT NULL,
  `is_tags` tinyint(1) unsigned DEFAULT NULL,
  `is_auto_keys` tinyint(1) unsigned DEFAULT NULL COMMENT 'Автоматическая генерация ключевых слов?',
  `is_auto_desc` tinyint(1) unsigned DEFAULT NULL COMMENT 'Автоматическая генерация описания?',
  `is_auto_url` tinyint(1) unsigned DEFAULT NULL COMMENT 'Генерировать URL из заголовка?',
  `is_fixed_url` tinyint(1) unsigned DEFAULT NULL COMMENT 'Не изменять URL при изменении записи?',
  `url_pattern` varchar(255) DEFAULT '{id}-{title}',
  `options` text COMMENT 'Массив опций',
  `labels` text COMMENT 'Массив заголовков',
  `seo_keys` varchar(256) DEFAULT NULL COMMENT 'Ключевые слова',
  `seo_desc` varchar(256) DEFAULT NULL COMMENT 'Описание',
  `seo_title` varchar(256) DEFAULT NULL,
  `item_append_html` text,
  `is_fixed` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `is_cats` (`is_cats`),
  KEY `is_comments` (`is_comments`),
  KEY `is_comments_tree` (`is_comments_tree`),
  KEY `is_rating` (`is_rating`),
  KEY `is_rating_pos` (`is_rating_pos`),
  KEY `is_auto_keys` (`is_auto_keys`),
  KEY `is_auto_url` (`is_auto_url`),
  KEY `is_in_groups` (`is_in_groups`),
  KEY `is_in_groups_only` (`is_in_groups_only`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Типы контента';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_types`
--

LOCK TABLES `cms_content_types` WRITE;
/*!40000 ALTER TABLE `cms_content_types` DISABLE KEYS */;
INSERT INTO `cms_content_types` VALUES (1,'Страницы','pages','Статичные страницы сайта',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,'{id}-{title}','---\nis_cats_change: null\nis_cats_open_root: null\nis_cats_only_last: null\nis_tags_in_list: null\nis_tags_in_item: null\nis_rss: null\nlist_on: null\nprofile_on: null\nlist_show_filter: null\nlist_expand_filter: null\nitem_on: 1\n','---\none: страница\ntwo: страницы\nmany: страниц\ncreate: страницу\n',NULL,NULL,NULL,NULL,1),(5,'Статьи','articles','Текстовые материалы',NULL,NULL,NULL,1,1,NULL,NULL,NULL,1,NULL,1,NULL,1,1,1,1,NULL,'{id}-{title}','---\nis_cats_change: 1\nis_cats_open_root: 1\nis_cats_only_last: null\nis_show_cats: 1\nis_tags_in_list: 1\nis_tags_in_item: 1\nis_rss: 1\nlist_on: 1\nprofile_on: 1\nlist_show_filter: 1\nlist_expand_filter: null\nlist_style:\nitem_on: 1\nis_cats_keys: 1\nis_cats_desc: 1\nis_cats_auto_url: null\n','---\none: статья\ntwo: статьи\nmany: статей\ncreate: статью\n','статьи, разные, интересные, полезные',NULL,NULL,NULL,NULL),(6,'Посты','posts','Персональные публикации пользователей',NULL,NULL,NULL,NULL,NULL,1,1,NULL,1,NULL,1,NULL,1,1,1,1,1,'{id}-{title}','---\nis_cats_change: null\nis_cats_open_root: null\nis_cats_only_last: null\nis_show_cats: null\nis_tags_in_list: 1\nis_tags_in_item: 1\nis_rss: 1\nlist_on: 1\nprofile_on: 1\nlist_show_filter: null\nlist_expand_filter: null\nlist_style:\nitem_on: 1\nis_cats_keys: null\nis_cats_desc: null\nis_cats_auto_url: 1\n','---\none: пост\ntwo: поста\nmany: постов\ncreate: пост\nlist: Лента блогов\nprofile: Блог\n',NULL,NULL,NULL,NULL,NULL),(7,'Фотоальбомы','albums','Альбомы с фотографиями пользователей',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,1,NULL,1,1,1,1,1,'{id}-{title}','---\nis_cats_change: null\nis_cats_open_root: null\nis_cats_only_last: null\nis_show_cats: null\nis_tags_in_list: null\nis_tags_in_item: 1\nis_rss: 1\nlist_on: 1\nprofile_on: 1\nlist_show_filter: null\nlist_expand_filter: null\nitem_on: 1\nis_cats_keys: null\nis_cats_desc: null\nis_cats_auto_url: 1\n','---\none: альбом\ntwo: альбома\nmany: альбомов\ncreate: фотоальбом\n',NULL,NULL,NULL,NULL,1),(9,'Объявления','board','Коммерческие объявления',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,'{id}-{title}','---\nis_cats_change: null\nis_cats_open_root: null\nis_cats_only_last: 1\nis_show_cats: 1\nis_tags_in_list: null\nis_tags_in_item: null\nis_rss: 1\nlist_on: 1\nprofile_on: 1\nlist_show_filter: 1\nlist_expand_filter: null\nlist_style: table\nitem_on: 1\nis_cats_keys: null\nis_cats_desc: null\nis_cats_auto_url: 1\n','---\none: объявление\ntwo: объявления\nmany: объявлений\ncreate: объявление\nlist: Доска объявлений\nprofile:\n',NULL,NULL,NULL,NULL,NULL),(10,'Новости','news','Информационные сообщения',NULL,1,NULL,1,1,NULL,NULL,NULL,1,NULL,1,NULL,1,1,1,1,1,'{id}-{title}','---\nis_cats_change: 1\nis_cats_open_root: null\nis_cats_only_last: null\nis_show_cats: null\nis_tags_in_list: null\nis_tags_in_item: 1\nis_rss: 1\nlist_on: 1\nprofile_on: 1\nlist_show_filter: null\nlist_expand_filter: null\nlist_style: featured\nitem_on: 1\nis_cats_keys: null\nis_cats_desc: null\nis_cats_auto_url: 1\n','---\none: новость\ntwo: новости\nmany: новостей\ncreate: новость\nlist:\nprofile:\n',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_controllers`
--

DROP TABLE IF EXISTS `cms_controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_controllers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `name` varchar(32) NOT NULL COMMENT 'Системное имя',
  `slug` varchar(64) DEFAULT NULL,
  `is_enabled` tinyint(1) unsigned DEFAULT '1' COMMENT 'Включен?',
  `options` text COMMENT 'Массив настроек',
  `author` varchar(128) NOT NULL COMMENT 'Имя автора',
  `url` varchar(250) DEFAULT NULL COMMENT 'Сайт автора',
  `version` varchar(8) NOT NULL COMMENT 'Версия',
  `is_backend` tinyint(1) unsigned DEFAULT NULL COMMENT 'Есть админка?',
  `is_external` tinyint(1) unsigned DEFAULT NULL COMMENT 'Сторонний компонент',
  `files` varchar(10000) DEFAULT NULL,
  `addon_id` int(11) unsigned DEFAULT NULL COMMENT 'ID дополнения в официальном каталоге',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `enabled` (`is_enabled`),
  KEY `is_backend` (`is_backend`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Компоненты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_controllers`
--

LOCK TABLES `cms_controllers` WRITE;
/*!40000 ALTER TABLE `cms_controllers` DISABLE KEYS */;
INSERT INTO `cms_controllers` VALUES (1,'Панель управления','admin',NULL,1,NULL,'InstantCMS Team','http://www.instantcms.ru','2.0',0,NULL,NULL,NULL),(2,'Контент','content',NULL,1,NULL,'InstantCMS Team','http://www.instantcms.ru','2.0',0,NULL,NULL,NULL),(3,'Профили пользователей','users',NULL,1,'---\nis_ds_online: 1\nis_ds_rating: 1\nis_ds_popular: 1\nis_filter: 1\nis_auth_only: null\nis_status: 1\nis_wall: 1\nis_themes_on: 1\nmax_tabs: 6\nis_friends_on: 1\nis_karma_comments: 1\nkarma_time: 30\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(4,'Комментарии','comments',NULL,1,'---\ndisable_icms_comments: null\nis_guests: null\nguest_ip_delay:\nrestricted_ips:\ndim_negative: 1\nupdate_user_rating: 1\nlimit: 20\nseo_keys:\nseo_desc:\nis_guests_moderate: 1\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(5,'Личные сообщения','messages',NULL,1,'---\nlimit: 10\ngroups_allowed: \n  - 0\n','InstantCMS Team','http://www.instantcms.ru/','2.0',1,NULL,NULL,NULL),(6,'Авторизация и регистрация','auth',NULL,1,'---\nis_reg_enabled: 1\nreg_reason: >\n  К сожалению, нам пока\n  не нужны новые\n  пользователи\nis_reg_invites: null\nreg_captcha: 1\nverify_email: 1\nverify_exp: 48\nauth_captcha: null\nrestricted_emails: |\n  *@shitmail.me\r\n  *@mailspeed.ru\r\n  *@temp-mail.ru\r\n  *@guerrillamail.com\r\n  *@12minutemail.com\r\n  *@mytempemail.com\r\n  *@spamobox.com\r\n  *@disposableinbox.com\r\n  *@filzmail.com\r\n  *@freemail.ms\r\n  *@anonymbox.com\r\n  *@lroid.com\r\n  *@yopmail.com\r\n  *@TempEmail.net\r\n  *@spambog.com\r\n  *@mailforspam.com\r\n  *@spam.su\r\n  *@no-spam.ws\r\n  *@mailinator.com\r\n  *@spamavert.com\r\n  *@trashcanmail.com\nrestricted_names: |\n  admin*\r\n  админ*\r\n  модератор\r\n  moderator\nrestricted_ips:\nis_invites: 1\nis_invites_strict: 1\ninvites_period: 7\ninvites_qty: 3\ninvites_min_karma: 0\ninvites_min_rating: 0\ninvites_min_days: 0\nreg_auto_auth: 1\nfirst_auth_redirect: profileedit\nauth_redirect: none\ndef_groups:\n  - 3\nseo_keys:\nseo_desc:\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(7,'Лента активности','activity',NULL,1,'---\ntypes:\n  - 10\n  - 11\n  - 17\n  - 16\n  - 14\n  - 13\n  - 18\n  - 7\n  - 19\n  - 12\n  - 8\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(8,'Группы','groups',NULL,1,'---\nis_ds_rating: 1\nis_ds_popular: 1\nis_wall: 1\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(9,'Редактор разметки','markitup',NULL,1,'---\nset: default-ru\nskin: simple\nimages_upload: 1\nimages_w: 400\nimages_h: 400\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(10,'Рейтинг','rating',NULL,1,'---\nis_hidden: 1\nis_show: 1\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(11,'Стена','wall',NULL,1,NULL,'InstantCMS Team','http://www.instantcms.ru','2.0',0,NULL,NULL,NULL),(12,'Капча reCAPTCHA','recaptcha',NULL,1,'---\npublic_key: 6Le-CB0TAAAAAJ3eooJUHU3S7r4OTp9c8vXBcGDG\nprivate_key: 6Le-CB0TAAAAAA--uWMW8QNTllXfHLjKZLschO-W\ntheme: light\nlang: ru\nsize: normal\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(13,'Модерация','moderation',NULL,1,NULL,'InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(14,'Теги','tags',NULL,1,NULL,'InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(15,'Генератор RSS','rss',NULL,1,NULL,'InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(16,'Генератор карты сайта','sitemap',NULL,1,'---\nsources:\n  users|profiles: 1\n  groups|profiles: 1\n  content|pages: 1\n  content|articles: 1\n  content|posts: 1\n  content|albums: 1\n  content|board: 1\n  content|news: 1\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(17,'Поиск','search',NULL,1,'---\nctypes:\n  - articles\n  - posts\n  - albums\n  - board\n  - news\nperpage: 15\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(18,'Фотоальбомы','photos',NULL,1,'---\nsizes:\n  - normal\n  - small\n  - big\nis_origs: 1\npreset: big\npreset_small: normal\ntypes: |\n  1 | Фото\r\n  2 | Векторы\r\n  3 | Иллюстрации\nordering: date_pub\norderto: desc\nlimit: 20\ndownload_view:\n  normal:\n    - 0\n  related_photos:\n    - 0\n  micro:\n    - 0\n  small:\n    - 0\n  big:\n    - 0\n  original:\n    - 0\ndownload_hide:\n  normal: null\n  related_photos: null\n  micro: null\n  small: null\n  big: null\n  original:\n    - 1\n    - 3\n    - 4\nurl_pattern: \'{id}-{title}\'\npreset_related: normal\nrelated_limit: 20\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(19,'Загрузка изображений','images',NULL,1,NULL,'InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(20,'Редиректы','redirect',NULL,1,'---\nno_redirect_list:\nblack_list:\nis_check_link: null\nwhite_list:\nredirect_time: 10\n','InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL),(21,'География','geo',NULL,1,NULL,'InstantCMS Team','http://www.instantcms.ru','2.0',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_events`
--

DROP TABLE IF EXISTS `cms_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_events` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `event` varchar(64) DEFAULT NULL COMMENT 'Событие',
  `listener` varchar(32) DEFAULT NULL COMMENT 'Слушатель (компонент)',
  `ordering` int(5) unsigned DEFAULT NULL COMMENT 'Порядковый номер ',
  `is_enabled` tinyint(1) unsigned DEFAULT '1' COMMENT 'Активность',
  PRIMARY KEY (`id`),
  KEY `hook` (`event`),
  KEY `listener` (`listener`),
  KEY `is_enabled` (`is_enabled`,`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='Привязка хуков к событиям';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_events`
--

LOCK TABLES `cms_events` WRITE;
/*!40000 ALTER TABLE `cms_events` DISABLE KEYS */;
INSERT INTO `cms_events` VALUES (1,'content_after_add_approve','activity',1,1),(2,'content_after_update_approve','activity',2,1),(3,'publish_delayed_content','activity',3,1),(4,'user_delete','activity',4,1),(5,'user_tab_info','activity',5,1),(6,'user_tab_show','activity',6,1),(7,'menu_admin','admin',7,1),(8,'user_login','admin',8,1),(9,'user_profile_update','auth',9,1),(10,'frontpage','auth',10,1),(11,'frontpage_types','auth',11,1),(12,'content_after_update','comments',12,1),(13,'admin_dashboard_block','comments',13,1),(14,'admin_dashboard_chart','comments',14,1),(15,'user_privacy_types','comments',15,1),(16,'user_login','comments',16,1),(17,'user_notify_types','comments',17,1),(18,'user_delete','comments',18,1),(19,'user_tab_info','comments',19,1),(20,'user_tab_show','comments',20,1),(21,'fulltext_search','content',21,1),(22,'admin_dashboard_chart','content',22,1),(23,'menu_content','content',23,1),(24,'user_delete','content',24,1),(25,'user_tab_info','content',25,1),(26,'user_tab_show','content',26,1),(27,'user_privacy_types','content',27,1),(28,'sitemap_sources','content',28,1),(29,'rss_feed_list','content',29,1),(30,'rss_content_controller_form','content',30,1),(31,'rss_content_controller_after_update','content',31,1),(32,'frontpage','content',32,1),(33,'frontpage_types','content',33,1),(34,'ctype_after_update','frontpage',34,1),(35,'ctype_after_delete','frontpage',35,1),(36,'admin_dashboard_chart','groups',36,1),(37,'content_view_hidden','groups',37,1),(38,'rating_vote','groups',38,1),(39,'user_privacy_types','groups',39,1),(40,'user_profile_buttons','groups',40,1),(41,'user_notify_types','groups',41,1),(42,'user_delete','groups',42,1),(43,'user_tab_info','groups',43,1),(44,'user_tab_show','groups',44,1),(45,'menu_groups','groups',45,1),(46,'sitemap_sources','groups',46,1),(47,'sitemap_urls','groups',47,1),(48,'user_delete','images',48,1),(49,'admin_dashboard_chart','messages',49,1),(50,'menu_messages','messages',50,1),(51,'users_profile_view','messages',51,1),(52,'user_privacy_types','messages',52,1),(53,'user_delete','messages',53,1),(54,'user_notify_types','messages',54,1),(55,'admin_dashboard_block','moderation',55,1),(56,'content_after_trash_put','moderation',56,1),(57,'content_after_restore','moderation',57,1),(58,'content_before_delete','moderation',58,1),(59,'menu_moderation','moderation',59,1),(60,'content_albums_items_html','photos',60,1),(61,'fulltext_search','photos',61,1),(62,'admin_albums_ctype_menu','photos',62,1),(63,'content_albums_after_add','photos',63,1),(64,'content_albums_after_delete','photos',64,1),(65,'content_albums_item_html','photos',65,1),(66,'content_albums_before_item','photos',66,1),(67,'content_albums_before_list','photos',67,1),(68,'user_delete','photos',68,1),(69,'user_delete','rating',69,1),(70,'captcha_html','recaptcha',70,1),(71,'captcha_validate','recaptcha',71,1),(72,'ctype_basic_form','rss',72,1),(73,'ctype_before_add','rss',73,1),(74,'ctype_after_add','rss',74,1),(75,'ctype_before_edit','rss',75,1),(76,'ctype_before_update','rss',76,1),(77,'ctype_after_delete','rss',77,1),(78,'content_before_category','rss',78,1),(79,'content_before_profile','rss',79,1),(80,'photos_before_item','search',80,1),(81,'content_before_list','search',81,1),(82,'content_before_item','search',82,1),(83,'before_print_head','search',83,1),(84,'html_filter','typograph',84,1),(85,'admin_dashboard_chart','users',85,1),(86,'menu_users','users',86,1),(87,'rating_vote','users',87,1),(88,'user_notify_types','users',88,1),(89,'user_privacy_types','users',89,1),(90,'user_tab_info','users',90,1),(91,'auth_login','users',91,1),(92,'user_loaded','users',92,1),(93,'wall_permissions','users',93,1),(94,'wall_after_add','users',94,1),(95,'wall_after_delete','users',95,1),(96,'sitemap_sources','users',96,1),(97,'admin_dashboard_chart','wall',97,1),(98,'user_notify_types','wall',98,1),(99,'user_delete','wall',99,1),(100,'page_is_allowed','auth',100,1),(101,'admin_confirm_login','admin',101,1),(102,'page_is_allowed','widgets',102,1),(103,'fulltext_search','groups',103,1),(104,'content_privacy_types','users',104,1),(105,'content_privacy_types','groups',105,1),(106,'content_view_hidden','users',106,1),(107,'content_add_permissions','groups',107,1),(108,'ctype_relation_childs','content',108,1),(109,'ctype_relation_childs','groups',109,1),(110,'content_before_childs','groups',110,1),(111,'content_before_childs','users',111,1),(112,'ctype_relation_childs','users',112,1),(113,'admin_content_dataset_fields_list','content',113,1),(114,'admin_groups_dataset_fields_list','groups',114,1),(115,'content_before_list','rating',115,1),(116,'content_before_list','groups',116,1),(117,'content_validate','groups',117,1);
/*!40000 ALTER TABLE `cms_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_geo_cities`
--

DROP TABLE IF EXISTS `cms_geo_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_geo_cities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(10) unsigned NOT NULL DEFAULT '0',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `ordering` int(11) unsigned NOT NULL DEFAULT '10000',
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  KEY `region_id` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15789554 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_geo_cities`
--

LOCK TABLES `cms_geo_cities` WRITE;
/*!40000 ALTER TABLE `cms_geo_cities` DISABLE KEYS */;
INSERT INTO `cms_geo_cities` VALUES (6,4,5,'Балларат',10000),(7,4,5,'Бендиго',10000),(8,4,5,'Варрнамбул',10000),(9,4,5,'Водонга',10000),(10,4,5,'Гилонг',10000),(11,4,5,'Мелтон',10000),(12,4,5,'Мельбурн',10000),(13,4,5,'Милдура',10000),(14,4,5,'Траралгон',10000),(15,4,5,'Шеппартон',10000),(17,4,16,'Бунбури',10000),(18,4,16,'Гералдтон',10000),(19,4,16,'Калгурли',10000),(20,4,16,'Мандурах',10000),(21,4,16,'Олбани',10000),(22,4,16,'Перт',10000),(24,4,23,'Брисбен',10000),(25,4,23,'Бундаберг',10000),(26,4,23,'Гладстон',10000),(27,4,23,'Каирнс',10000),(28,4,23,'Калундра',10000),(29,4,23,'Маккей',10000),(30,4,23,'Мариборо',10000),(31,4,23,'Маунт-Иса',10000),(32,4,23,'Рокхамптон',10000),(33,4,23,'Таунсвилл',10000),(34,4,23,'Тувумба',10000),(36,4,35,'Албури',10000),(37,4,35,'Армидейл',10000),(38,4,35,'Батурст',10000),(39,4,35,'Брокен-Хилл',10000),(40,4,35,'Вагга-Вагга',10000),(41,4,35,'Воллонгонг',10000),(42,4,35,'Гоулбурн',10000),(43,4,35,'Дуббо-Дуббо',10000),(44,4,35,'Коффс-Харбор',10000),(45,4,35,'Куэнбиан',10000),(46,4,35,'Лисмор',10000),(47,4,35,'Ньюкастл',10000),(48,4,35,'Оранж',10000),(49,4,35,'Сидней',10000),(50,4,35,'Тамворт',10000),(52,4,51,'Алис Спрингс',10000),(53,4,51,'Дарвин',10000),(55,4,54,'Девонпорт',10000),(56,4,54,'Лаункестон',10000),(57,4,54,'Хобарт',10000),(59,4,58,'Канберра',10000),(61,4,60,'Аделаида',10000),(62,4,60,'Маунт-Гамбир',10000),(65,63,64,'Вена',10000),(67,63,66,'Велс',10000),(68,63,66,'Линц',10000),(69,63,66,'Стир',10000),(71,63,70,'Зальцбург',10000),(73,63,72,'Виллач',10000),(74,63,72,'Клагенфурт',10000),(76,63,75,'Венер-Нойштадт',10000),(78,63,77,'Грац',10000),(79,63,77,'Иннсбрук',10000),(80,63,77,'Леобен',10000),(83,81,82,'Агдам',10000),(84,81,82,'Агдаш',10000),(85,81,82,'Агджабеди',10000),(86,81,82,'Аджикенд',10000),(87,81,82,'Акстафа',10000),(88,81,82,'Али-Байрамлы',10000),(89,81,82,'Алунитаг',10000),(90,81,82,'Артем-Остров',10000),(91,81,82,'Астара',10000),(92,81,82,'Ахсу',10000),(93,81,82,'Баку',10000),(94,81,82,'Балаханы',10000),(95,81,82,'Банк',10000),(96,81,82,'Барда',10000),(97,81,82,'Белоканы',10000),(98,81,82,'Бинагади',10000),(99,81,82,'Бирмай',10000),(100,81,82,'Бузовна',10000),(101,81,82,'Варташен',10000),(102,81,82,'Гадрут',10000),(103,81,82,'Геокчай',10000),(104,81,82,'Гобустан',10000),(105,81,82,'Горадиз',10000),(106,81,82,'Гэтргян',10000),(107,81,82,'Дальмамедли',10000),(108,81,82,'Дашкесан',10000),(109,81,82,'Джалилабад',10000),(110,81,82,'Джебраил',10000),(111,81,82,'Дивичи',10000),(112,81,82,'Евлах',10000),(113,81,82,'Ждановск',10000),(114,81,82,'Закаталы',10000),(115,81,82,'Зангелан',10000),(116,81,82,'Зардоб',10000),(117,81,82,'Имишли',10000),(118,81,82,'Исмаиллы',10000),(119,81,82,'Истису',10000),(120,81,82,'Казанбулак',10000),(121,81,82,'Казах',10000),(122,81,82,'Кази-Магомед',10000),(123,81,82,'Карачала',10000),(124,81,82,'Касум-Исмаилов',10000),(125,81,82,'Кахи',10000),(126,81,82,'Кедабек',10000),(127,81,82,'Кельбаджар',10000),(128,81,82,'Кергез',10000),(129,81,82,'Кировобад',10000),(130,81,82,'Кировск',10000),(131,81,82,'Кировский',10000),(132,81,82,'Куба',10000),(133,81,82,'Кубатлы',10000),(134,81,82,'Куткашен',10000),(135,81,82,'Кюрдамир',10000),(136,81,82,'Ленкорань',10000),(137,81,82,'Лерик',10000),(138,81,82,'Маргуни',10000),(139,81,82,'Мардакерт',10000),(140,81,82,'Масаллы',10000),(141,81,82,'Маштага',10000),(142,81,82,'Мингечаур',10000),(143,81,82,'Мир-Башир',10000),(144,81,82,'Нафталан',10000),(145,81,82,'Нефтечала',10000),(146,81,82,'Пушкино',10000),(147,81,82,'Саатлы',10000),(148,81,82,'Сабирабад',10000),(149,81,82,'Сабуичи',10000),(150,81,82,'Сальяны',10000),(151,81,82,'Сиазань',10000),(152,81,82,'Сумгаит',10000),(153,81,82,'Тауз',10000),(154,81,82,'Уджары',10000),(155,81,82,'Физули',10000),(156,81,82,'Ханлар',10000),(157,81,82,'Хачмас',10000),(158,81,82,'Худат',10000),(159,81,82,'Шамхор',10000),(160,81,82,'Шаумяновск',10000),(161,81,82,'Шеки',10000),(162,81,82,'Шемаха',10000),(163,81,82,'Ярдымлы',10000),(165,81,164,'Степанокерт',10000),(166,81,164,'Шуша',10000),(168,81,167,'Джульфа',10000),(169,81,167,'Ильичевск',10000),(170,81,167,'Нахичевань',10000),(171,81,167,'Ордубад',10000),(172,81,167,'Шахбуз',10000),(175,173,174,'Ангуилья',10000),(176,173,174,'Сомбреро',10000),(179,177,178,'Азул',10000),(180,177,178,'Байя-Бланка',10000),(181,177,178,'Буэнос-Айрес',10000),(182,177,178,'Кампана',10000),(183,177,178,'Ла-Плата',10000),(184,177,178,'Мар-дель-Плата',10000),(185,177,178,'Мерседес',10000),(186,177,178,'Некочеа',10000),(187,177,178,'Олаварриа',10000),(188,177,178,'Пергамино',10000),(189,177,178,'Пунта-Альта',10000),(190,177,178,'Сан-Николас',10000),(191,177,178,'Тандил',10000),(192,177,178,'Трес-Арройос',10000),(193,177,178,'Чивилкой',10000),(195,177,194,'Хухуй',10000),(197,177,196,'Катамарка',10000),(199,177,198,'Альта-Грасия',10000),(200,177,198,'Вилла-Мариа',10000),(201,177,198,'Кордова',10000),(202,177,198,'Рио-Куарто',10000),(203,177,198,'Сан-Франсиско',10000),(205,177,204,'Гойя',10000),(206,177,204,'Корриентес',10000),(208,177,207,'Женераль-Рока',10000),(209,177,207,'Санта-Роза',10000),(211,177,210,'Ла-Риойя',10000),(213,177,212,'Мендоза',10000),(214,177,212,'Сан-Рафаель',10000),(216,177,215,'Посадас',10000),(218,177,217,'Ньюкуэн',10000),(220,177,219,'Салта',10000),(222,177,221,'Сан-Луис',10000),(224,177,223,'Сан-Хуан',10000),(226,177,225,'Рио-Галльегос',10000),(228,177,227,'Росарио',10000),(229,177,227,'Санта-Фе',10000),(231,177,230,'Сантьяго-дел-Эстеро',10000),(233,177,232,'Тукуман',10000),(235,177,234,'Формоза',10000),(237,177,236,'Пресиденсиа-Рокуэ-Сенз',10000),(238,177,236,'Ресистенсиа',10000),(240,177,239,'Комодоро-Ривадавия',10000),(242,177,241,'Конкордиа',10000),(243,177,241,'Консепсион-дель-Уругвай',10000),(244,177,241,'Парана',10000),(247,245,246,'Ереван',10000),(250,248,249,'Антополь',10000),(251,248,249,'Барановичи',10000),(252,248,249,'Белоозерск',10000),(253,248,249,'Береза',10000),(254,248,249,'Береза Картуска',10000),(255,248,249,'Брест',10000),(256,248,249,'Высокое',10000),(257,248,249,'Ганцевичи',10000),(258,248,249,'Городище',10000),(259,248,249,'Давид-Городок',10000),(260,248,249,'Домачево',10000),(261,248,249,'Дрогичин',10000),(262,248,249,'Жабинка',10000),(263,248,249,'Ивацевичи',10000),(264,248,249,'Каменец',10000),(265,248,249,'Кобрин',10000),(266,248,249,'Лунинец',10000),(267,248,249,'Ляховичи',10000),(268,248,249,'Малорита',10000),(269,248,349,'Минск',10000),(270,248,249,'Пружаны',10000),(271,248,249,'Столин',10000),(273,248,272,'Барань',10000),(274,248,272,'Бегомль',10000),(275,248,272,'Бешенковичи',10000),(276,248,272,'Богушевск',10000),(277,248,272,'Браслав',10000),(278,248,272,'Верхнедвинск',10000),(279,248,272,'Ветрино',10000),(280,248,272,'Видзы',10000),(281,248,272,'Витебск',10000),(282,248,272,'Воропаево',10000),(283,248,272,'Глубокое',10000),(284,248,272,'Городок',10000),(285,248,272,'Дисна',10000),(286,248,272,'Докшицы',10000),(287,248,272,'Друя',10000),(288,248,272,'Дубровно',10000),(289,248,272,'Езерище',10000),(290,248,272,'Лепель',10000),(291,248,272,'Лиозно',10000),(292,248,272,'Миоры',10000),(293,248,272,'Новополоцк',10000),(294,248,272,'Орша',10000),(295,248,272,'Полоцк',10000),(296,248,272,'Поставы',10000),(297,248,272,'Россоны',10000),(298,248,272,'Сенно',10000),(299,248,272,'Толочин',10000),(300,248,272,'Ушачи',10000),(301,248,272,'Чашники',10000),(302,248,272,'Шарковщина',10000),(303,248,272,'Шумилино',10000),(305,248,304,'Белицк',10000),(306,248,304,'Большевик',10000),(307,248,304,'Брагин',10000),(308,248,304,'Буда-Кошелево',10000),(309,248,304,'Василевичи',10000),(310,248,304,'Васильевка',10000),(311,248,304,'Ветка',10000),(312,248,304,'Гомель',10000),(313,248,304,'Добруш',10000),(314,248,304,'Ельск',10000),(315,248,304,'Житковичи',10000),(316,248,304,'Жлобин',10000),(317,248,304,'Калинковичи',10000),(318,248,304,'Корма',10000),(319,248,304,'Лельчицы',10000),(320,248,304,'Лоев',10000),(321,248,304,'Мозырь',10000),(322,248,304,'Наровля',10000),(323,248,304,'Октябрьский',10000),(324,248,304,'Петриков',10000),(325,248,304,'Речица',10000),(326,248,304,'Рогачев',10000),(327,248,304,'Светлогорск',10000),(328,248,304,'Хойники',10000),(329,248,304,'Чечерск',10000),(331,248,330,'Большая Берестовица',10000),(332,248,330,'Волковыск',10000),(333,248,330,'Вороново',10000),(334,248,330,'Гродно',10000),(335,248,330,'Желудок',10000),(336,248,330,'Зельва',10000),(337,248,330,'Ивье',10000),(338,248,330,'Козловщина',10000),(339,248,330,'Кореличи',10000),(340,248,330,'Лида',10000),(341,248,330,'Мосты',10000),(342,248,330,'Новогрудок',10000),(343,248,330,'Островец',10000),(344,248,330,'Ошмяны',10000),(345,248,330,'Свислочь',10000),(346,248,330,'Слоним',10000),(347,248,330,'Сморгонь',10000),(348,248,330,'Щучин',10000),(350,248,349,'Березино',10000),(351,248,349,'Бобр',10000),(352,248,349,'Борисов',10000),(353,248,349,'Вилейка',10000),(354,248,349,'Воложин',10000),(355,248,349,'Городея',10000),(356,248,349,'Дзержинск',10000),(357,248,349,'Жодино',10000),(358,248,349,'Заславль',10000),(359,248,349,'Зеленый Бор',10000),(360,248,349,'Ивенец',10000),(361,248,349,'Клецк',10000),(362,248,349,'Копыль',10000),(363,248,349,'Крупки',10000),(364,248,349,'Логойск',10000),(365,248,349,'Марьина Горка',10000),(366,248,249,'Пинск',10000),(367,248,349,'Молодечно',10000),(368,248,349,'Мядель',10000),(369,248,349,'Несвиж',10000),(370,248,349,'Слуцк',10000),(371,248,349,'Смолевичи',10000),(372,248,349,'Солигорск',10000),(373,248,349,'Старые Дороги',10000),(374,248,349,'Столбцы',10000),(375,248,349,'Узда',10000),(376,248,349,'Червень',10000),(378,248,377,'Белыничи',10000),(379,248,377,'Бобруйск',10000),(380,248,377,'Быхов',10000),(381,248,377,'Глуск',10000),(382,248,377,'Глуша',10000),(383,248,377,'Горки',10000),(384,248,377,'Гродзянка',10000),(385,248,377,'Елизово',10000),(386,248,377,'Кировск',10000),(387,248,377,'Климовичи',10000),(388,248,377,'Кличев',10000),(389,248,377,'Костюковичи',10000),(390,248,377,'Краснополье',10000),(391,248,377,'Кричев',10000),(392,248,377,'Круглое',10000),(393,248,377,'Могилев',10000),(394,248,377,'Мстиславль',10000),(395,248,377,'Осиповичи',10000),(396,248,377,'Славгород',10000),(397,248,377,'Хотимск',10000),(398,248,377,'Чаусы',10000),(399,248,377,'Чериков',10000),(400,248,377,'Шклов',10000),(403,401,402,'Белиз-Сити',10000),(406,404,405,'Антверпен',10000),(407,404,405,'Мешлен',10000),(409,404,408,'Брюссель',10000),(411,404,410,'Алост',10000),(412,404,410,'Сант-Никлас',10000),(414,404,413,'Бруже',10000),(415,404,413,'Куртра',10000),(416,404,413,'Роселар',10000),(418,404,417,'Генк',10000),(420,404,419,'Льеж',10000),(421,404,419,'Сераинг',10000),(423,404,422,'Ла-Лювьер',10000),(424,404,422,'Шарлеруа',10000),(427,425,426,'Гамильтон',10000),(430,428,429,'Бургас',10000),(432,428,431,'Варна',10000),(434,428,433,'Велико Тарново',10000),(435,428,433,'Горна Джумая',10000),(437,428,436,'Видин',10000),(439,428,438,'Габрово',10000),(441,428,440,'Пазарджик',10000),(443,428,442,'Перник',10000),(445,428,444,'Плевен',10000),(447,428,446,'Асеновград',10000),(448,428,446,'Пловдив',10000),(450,428,449,'Рус',10000),(452,428,451,'Силистра',10000),(454,428,453,'Сливен',10000),(456,428,455,'София',10000),(458,428,457,'Казанлак',10000),(459,428,457,'Стара Загора',10000),(461,428,460,'Димитровград',10000),(462,428,460,'Кхасково',10000),(464,428,463,'Шумен',10000),(466,428,465,'Ямбол',10000),(469,467,468,'Рио-Бранко',10000),(471,467,470,'Арапирака',10000),(472,467,470,'Макейо',10000),(474,467,473,'Манаус',10000),(476,467,475,'Макапа',10000),(478,467,477,'Алагойнас',10000),(479,467,477,'Байя',10000),(480,467,477,'Виториа-да-Конкиста',10000),(481,467,477,'Витория',10000),(482,467,477,'Жекуи',10000),(483,467,477,'Жуазейро',10000),(484,467,477,'Илхеус',10000),(485,467,477,'Итабуна',10000),(486,467,477,'Итапетинга',10000),(487,467,477,'Сальвадор',10000),(488,467,477,'Санта-Мария',10000),(489,467,477,'Фейра-де-Сантана',10000),(491,467,490,'Анаполис',10000),(492,467,490,'Гояния',10000),(494,467,493,'Бакабаль',10000),(495,467,493,'Кахиас',10000),(496,467,493,'Сан-Луис',10000),(498,467,497,'Куйяба',10000),(500,467,499,'Кампо-Гранде',10000),(501,467,499,'Корумба',10000),(502,467,499,'Трес-Лагоас',10000),(504,467,503,'Арха',10000),(505,467,503,'Барбасена',10000),(506,467,503,'Белу-Оризонти',10000),(507,467,503,'Варгина',10000),(508,467,503,'Говернадор-Валадарес',10000),(509,467,503,'Дивинополис',10000),(510,467,503,'Жуис-де-Фора',10000),(511,467,503,'Итажуба',10000),(512,467,503,'Каратинга',10000),(513,467,503,'Катагуасес',10000),(514,467,503,'Монтес-Кларос',10000),(515,467,503,'Пассос',10000),(516,467,503,'Покос-де-Кальдас',10000),(517,467,503,'Сан-Жоау-дель-Рей',10000),(518,467,503,'Теофилу-Отони',10000),(519,467,503,'Убераба',10000),(520,467,503,'Уберландиа',10000),(522,467,521,'Белен',10000),(523,467,521,'Сантарем',10000),(525,467,524,'Жоао-Пессоа',10000),(526,467,524,'Кажазейрас',10000),(528,467,527,'Кампина-Гранде',10000),(529,467,527,'Куритиба',10000),(530,467,527,'Лондрина',10000),(531,467,527,'Паранагуа',10000),(532,467,527,'ПонтахГросса',10000),(534,467,533,'Гаранхунс',10000),(535,467,533,'Каруару',10000),(536,467,533,'Олинда',10000),(537,467,533,'Петролина',10000),(538,467,533,'Ресифе',10000),(540,467,539,'Парнаиба',10000),(541,467,539,'Тересина',10000),(543,467,542,'Вольта-Редонда',10000),(544,467,542,'Кампос',10000),(545,467,542,'Масау',10000),(546,467,542,'Нитерои',10000),(547,467,542,'Параиба-ду-Сул',10000),(548,467,542,'Петрополис',10000),(549,467,542,'Рио-де-Жанейро',10000),(551,467,550,'Кайку',10000),(552,467,550,'Моссору',10000),(553,467,550,'Наталь',10000),(555,467,554,'Алегрете',10000),(556,467,554,'Баге',10000),(557,467,554,'Кахиас-до-Сул',10000),(558,467,554,'Качоэйра-до-Сул',10000),(559,467,554,'Круз-Альта',10000),(560,467,554,'Пассо-Фундо',10000),(561,467,554,'Пелотас',10000),(562,467,554,'Порту-Алегри',10000),(563,467,554,'Рио-Гранде',10000),(564,467,554,'Сан-Леопольдо',10000),(565,467,554,'Сантана-до-Ливраменто',10000),(566,467,554,'Санто-Ангело',10000),(567,467,554,'Уругвайяна',10000),(569,467,568,'Порту-Велью',10000),(571,467,570,'Аракатуба',10000),(572,467,570,'Арараквира',10000),(573,467,570,'Барретос',10000),(574,467,570,'Бауру',10000),(575,467,570,'Бебедоуро',10000),(576,467,570,'Ботукату',10000),(577,467,570,'Жау',10000),(578,467,570,'Жундиаи',10000),(579,467,570,'Кампинас',10000),(580,467,570,'Катандува',10000),(581,467,570,'Лимейра',10000),(582,467,570,'Линс',10000),(583,467,570,'Марилия',10000),(584,467,570,'Пиракикаба',10000),(585,467,570,'Пресиденте-Пруденте',10000),(586,467,570,'Рибейрао-Прето',10000),(587,467,570,'Сан-Бернардо-ду-Кампу',10000),(588,467,570,'Сан-Жоау-да-Боа-Виста',10000),(589,467,570,'Сан-Паулу',10000),(590,467,570,'Сан-Хосе-до-Рио-Прето',10000),(591,467,570,'Сантос',10000),(592,467,570,'Сорокаба',10000),(593,467,570,'Таубати',10000),(594,467,570,'Франка',10000),(596,467,595,'Арагуари',10000),(597,467,595,'Блуменау',10000),(598,467,595,'Жоинвиле',10000),(599,467,595,'Итажаи',10000),(600,467,595,'Лахес',10000),(601,467,595,'Тубарао',10000),(602,467,595,'Флорианополис',10000),(604,467,603,'Жуазейру-ду-Норте',10000),(605,467,603,'Игуату',10000),(606,467,603,'Крато',10000),(607,467,603,'Собраль',10000),(608,467,603,'Форталеза',10000),(610,467,609,'Аракажу',10000),(612,467,611,'Бразилия',10000),(614,467,613,'Качоэйру-де-Итапемирим',10000),(615,467,613,'Колатина',10000),(618,616,617,'Абингдон',10000),(619,616,617,'Айлесбюри',10000),(620,616,617,'Аккрингтон',10000),(621,616,617,'Алдершот',10000),(622,616,617,'Алтринчам',10000),(623,616,617,'Андовер',10000),(624,616,617,'Аштон-андер-Лин',10000),(625,616,617,'Аштон-ин-Макерфилд',10000),(626,616,617,'Байдфорд',10000),(627,616,617,'Банбери',10000),(628,616,617,'Банстед',10000),(629,616,617,'Барнли',10000),(630,616,617,'Барнсли',10000),(631,616,617,'Барнстапл',10000),(632,616,617,'Барроу-ин-Фарнесс',10000),(633,616,617,'Бартон-он-Трент',10000),(634,616,617,'Бас',10000),(635,616,617,'Басингсток',10000),(636,616,617,'Батли',10000),(637,616,617,'Беверли',10000),(638,616,617,'Бедворт',10000),(639,616,617,'Бедфорд',10000),(640,616,617,'Бексли',10000),(641,616,617,'Бервик-он-Твид',10000),(642,616,617,'Биркенхед',10000),(643,616,617,'Бирмингем',10000),(644,616,617,'Бистон',10000),(645,616,617,'Бишоп-Окленд',10000),(646,616,617,'Блэкберн',10000),(647,616,617,'Блэкпул',10000),(648,616,617,'Болтон',10000),(649,616,617,'Боримут',10000),(650,616,617,'Бостон',10000),(651,616,617,'Брадфорд',10000),(652,616,617,'Брайтон',10000),(653,616,617,'Брентвуд',10000),(654,616,617,'Бриджуотер',10000),(655,616,617,'Бридлингтон',10000),(656,616,617,'Бристоль',10000),(657,616,617,'Бромсгров',10000),(658,616,617,'Бури',10000),(659,616,617,'Бури-Сант-Эдмондс',10000),(660,616,617,'Бутл',10000),(661,616,617,'Валласи',10000),(662,616,617,'Валлсенд',10000),(663,616,617,'Валсалл',10000),(664,616,617,'Валтон',10000),(665,616,617,'Варвик',10000),(666,616,617,'Варрингтон',10000),(667,616,617,'Ватерлоо',10000),(668,616,617,'Ватфорд',10000),(669,616,617,'Вейкфилд',10000),(670,616,617,'Велвин-Гарден-Сити',10000),(671,616,617,'Вест-Бромвич',10000),(672,616,617,'Вестон-супер-Мар',10000),(673,616,617,'Виган',10000),(674,616,617,'Виднес',10000),(675,616,617,'Вимоут',10000),(676,616,617,'Виндзор',10000),(677,616,617,'Винчестер',10000),(678,616,617,'Висбеч',10000),(679,616,617,'Вокинг',10000),(680,616,617,'Вокингем',10000),(681,616,617,'Ворчестер',10000),(682,616,617,'Вулвергемптон',10000),(683,616,617,'Гейтшид',10000),(684,616,617,'Глоссоп',10000),(685,616,617,'Глочестер',10000),(686,616,617,'Годалминг',10000),(687,616,617,'Голборн',10000),(688,616,617,'Госпорт',10000),(689,616,617,'Госфорт',10000),(690,616,617,'Грантхем',10000),(691,616,617,'Гримсби',10000),(692,616,617,'Грисби',10000),(693,616,617,'Грэйт-Ярмут',10000),(694,616,617,'Гуилдфорд',10000),(695,616,617,'Дадли',10000),(696,616,617,'Дарлингтон',10000),(697,616,617,'Дартфорд',10000),(698,616,617,'Дерби',10000),(699,616,617,'Джерроу',10000),(700,616,617,'Донкастер',10000),(701,616,617,'Дувр',10000),(702,616,617,'Дурхем',10000),(703,616,617,'Дьюсбури',10000),(704,616,617,'Ексетер',10000),(705,616,617,'Ипсвич',10000),(706,616,617,'Ист-Гринстед',10000),(707,616,617,'Истлейг',10000),(708,616,617,'Йорк',10000),(709,616,617,'Каннок',10000),(710,616,617,'Карлисл',10000),(711,616,617,'Карлтон',10000),(712,616,617,'Кастлфорд',10000),(713,616,617,'Кейгли',10000),(714,616,617,'Кембридж',10000),(715,616,617,'Кендал',10000),(716,616,617,'Кенилворт',10000),(717,616,617,'Кентербери',10000),(718,616,617,'Кеттеринг',10000),(719,616,617,'Киддерминстер',10000),(720,616,617,'Кингс-Линн',10000),(721,616,617,'Киркби',10000),(722,616,617,'Клактон-Он-Си',10000),(723,616,617,'Ковентри',10000),(724,616,617,'Колчестер',10000),(725,616,617,'Корби',10000),(726,616,617,'Кристчерч',10000),(727,616,617,'Кросби',10000),(728,616,617,'Кроули',10000),(729,616,617,'Крю',10000),(730,616,617,'Ланкастер',10000),(731,616,617,'Лаустофт',10000),(732,616,617,'Лейг',10000),(733,616,617,'Ливерпуль',10000),(734,616,617,'Лидс',10000),(735,616,617,'Линкольн',10000),(736,616,617,'Литам-Сант-Аннес',10000),(737,616,617,'Литерхед',10000),(738,616,617,'Литлгемптон',10000),(739,616,617,'Личфилд',10000),(740,616,617,'Лондон',10000),(741,616,617,'Лугборо',10000),(742,616,617,'Лутон',10000),(743,616,617,'Майденхед',10000),(744,616,617,'Майдстоун',10000),(745,616,617,'Макклесфилд',10000),(746,616,617,'Мансфилд',10000),(747,616,617,'Манчестер',10000),(748,616,617,'Маргейт',10000),(749,616,617,'Миддлсбро',10000),(750,616,617,'Миддлтаун',10000),(751,616,617,'Морли',10000),(752,616,617,'Наилси',10000),(753,616,617,'Норвич',10000),(754,616,617,'Нортвич',10000),(755,616,617,'Нортгемптон',10000),(756,616,617,'Нортфлит',10000),(757,616,617,'Ноттингем',10000),(758,616,617,'Нунитон',10000),(759,616,617,'Ньюарк',10000),(760,616,617,'Ньюкасл-он-Тайн',10000),(761,616,617,'Ньюкастле-андер-Лим',10000),(762,616,617,'Ньюпорт',10000),(763,616,617,'Минск',10000),(764,616,617,'Олдхам',10000),(765,616,617,'Ормскирк',10000),(766,616,617,'Оссетт',10000),(767,616,617,'Падси',10000),(768,616,617,'Пайнтон',10000),(769,616,617,'Пензанк',10000),(770,616,617,'Петерборо',10000),(771,616,617,'Петерли',10000),(772,616,617,'Плимут',10000),(773,616,617,'Портсмут',10000),(774,616,617,'Прескот',10000),(775,616,617,'Престон',10000),(776,616,617,'Пул',10000),(777,616,617,'Рагби',10000),(778,616,617,'Радклифф',10000),(779,616,617,'Райд',10000),(780,616,617,'Рамсгейт',10000),(781,616,617,'Ранкорн',10000),(782,616,617,'Реддитч',10000),(783,616,617,'Редкар',10000),(784,616,617,'Рейгейт',10000),(785,616,617,'Рейли',10000),(786,616,617,'Ридинг',10000),(787,616,617,'Роиал-Тунбридж-Уэллс',10000),(788,616,617,'Ротерхам',10000),(789,616,617,'Рочестер',10000),(790,616,617,'Рошдейл',10000),(791,616,617,'Салфорд',10000),(792,616,617,'Сандерленд',10000),(793,616,617,'Сант-Албанс',10000),(794,616,617,'Сант-Аустель',10000),(795,616,617,'Сант-Хеленс',10000),(796,616,617,'Саттон-ин-Ашфилд',10000),(797,616,617,'Саут-Шилдс',10000),(798,616,617,'Саутгэмптон',10000),(799,616,617,'Саутенд-он-Си',10000),(800,616,617,'Саутпорт',10000),(801,616,617,'Сванли',10000),(802,616,617,'Свиндон',10000),(803,616,617,'Свинтон',10000),(804,616,617,'Севеноакс',10000),(805,616,617,'Сейл',10000),(806,616,617,'Сейлсбури',10000),(807,616,617,'Ситтингборн',10000),(808,616,617,'Сихам',10000),(809,616,617,'Сканторп',10000),(810,616,617,'Скарборо',10000),(811,616,617,'Слоуг',10000),(812,616,617,'Солихалл',10000),(813,616,617,'Стайнс',10000),(814,616,617,'Стаффорд',10000),(815,616,617,'Стенли',10000),(816,616,617,'Стивенейдж',10000),(817,616,617,'Стокпорт',10000),(818,616,617,'Стоктон',10000),(819,616,617,'Стоктон-он-Тис',10000),(820,616,617,'Стоурбридж',10000),(821,616,617,'Стратфорд-он-Эйвон',10000),(822,616,617,'Стретфорд',10000),(823,616,617,'Строуд',10000),(824,616,617,'Татчхем',10000),(825,616,617,'Таунтон',10000),(826,616,617,'Тонбридж',10000),(827,616,617,'Торкуэй',10000),(828,616,617,'Торнаби-он-Тис',10000),(829,616,617,'Траубридж',10000),(830,616,617,'Уайтхейен',10000),(831,616,617,'Урмстон',10000),(832,616,617,'Фалмаут',10000),(833,616,617,'Фарнборо',10000),(834,616,617,'Фарнворт',10000),(835,616,617,'Фарнхем',10000),(836,616,617,'Фейрхам',10000),(837,616,617,'Феликстов',10000),(838,616,617,'Флитвуд',10000),(839,616,617,'Фолькстон',10000),(840,616,617,'Формби',10000),(841,616,617,'Хавант',10000),(842,616,617,'Хаддерсфилд',10000),(843,616,617,'Хазел-Гров',10000),(844,616,617,'Хай-Викомб',10000),(845,616,617,'Халифакс',10000),(846,616,617,'Харлоу',10000),(847,616,617,'Харпенден',10000),(848,616,617,'Харрогейт',10000),(849,616,617,'Хартлепул',10000),(850,616,617,'Хастингс',10000),(851,616,617,'Хатфилд',10000),(852,616,617,'Хейвардс-Хит',10000),(853,616,617,'Хейлсовен',10000),(854,616,617,'Хемел-Хемпстед',10000),(855,616,617,'Херефорд',10000),(856,616,617,'Хертфорд',10000),(857,616,617,'Хивуд',10000),(858,616,617,'Хид',10000),(859,616,617,'Хиндли',10000),(860,616,617,'Хинкли',10000),(861,616,617,'Хойлайк',10000),(862,616,617,'Хорсхем',10000),(863,616,617,'Хоув',10000),(864,616,617,'Хьютон-вит-Роби',10000),(865,616,617,'Чапелтаун',10000),(866,616,617,'Чатхем',10000),(867,616,617,'Челмсфорд',10000),(868,616,617,'Челтенхам',10000),(869,616,617,'Честер',10000),(870,616,617,'Честерфилд',10000),(871,616,617,'Чешант',10000),(872,616,617,'Чичестер',10000),(873,616,617,'Чорли',10000),(874,616,617,'Шеффилд',10000),(875,616,617,'Шипли',10000),(876,616,617,'Шревсбури',10000),(877,616,617,'Эллесмер-Порт',10000),(878,616,617,'Эпсом',10000),(879,616,617,'Эшер',10000),(880,616,617,'Эшфорд',10000),(882,616,881,'Баллимена',10000),(883,616,881,'Бангор',10000),(884,616,881,'Белфаст',10000),(885,616,881,'Колерайн',10000),(886,616,881,'Лондондерри',10000),(887,616,881,'Ньюри',10000),(888,616,881,'Ньютаунабби',10000),(890,616,889,'Абердар',10000),(891,616,889,'Барри',10000),(892,616,889,'Врексхам',10000),(893,616,889,'Кардифф',10000),(894,616,889,'Керфилли',10000),(895,616,889,'Мертир-Тидвил',10000),(896,616,889,'Порт Талбот',10000),(897,616,889,'Рондда',10000),(898,616,889,'Сванси',10000),(900,616,899,'Абердин',10000),(901,616,899,'Айрдри',10000),(902,616,899,'Арброат',10000),(903,616,899,'Глазго',10000),(904,616,899,'Гринок',10000),(905,616,899,'Данди',10000),(906,616,899,'Данфермлин',10000),(907,616,899,'Думбартон',10000),(908,616,899,'Думфрис',10000),(909,616,899,'Инвернесс',10000),(910,616,899,'Ирвин',10000),(911,616,899,'Ист-Килбрайд',10000),(912,616,899,'Камберналд',10000),(913,616,899,'Килмарнок',10000),(914,616,899,'Кирккалди',10000),(915,616,899,'Коатбридж',10000),(916,616,899,'Мотервелл',10000),(917,616,899,'Паисли',10000),(918,616,899,'Перт',10000),(919,616,899,'Ренфро',10000),(920,616,899,'Стирлинг',10000),(921,616,899,'Фалкирк',10000),(922,616,899,'Хамилтон',10000),(923,616,899,'Эдинбург',10000),(926,924,925,'Сольнок',10000),(927,924,925,'Яшберены',10000),(929,924,928,'Печ',10000),(931,924,930,'Байя',10000),(932,924,930,'Кечкемет',10000),(933,924,930,'Кискунфелегихаза',10000),(935,924,934,'Бекешсаба',10000),(937,924,936,'Мишкольц',10000),(938,924,936,'Озд',10000),(940,924,939,'Будапешт',10000),(942,924,941,'Жомбатели',10000),(944,924,943,'Вешпрем',10000),(946,924,945,'Сопрон',10000),(948,924,947,'Залегержег',10000),(949,924,947,'Нагиканиша',10000),(951,924,950,'Татабаня',10000),(953,924,952,'Салготарян',10000),(955,924,954,'Сеглед',10000),(957,924,956,'Ныйрегихаза',10000),(959,924,958,'Дунауйварош',10000),(960,924,958,'Шекесфехервар',10000),(962,924,961,'Дебрецен',10000),(963,924,961,'Хайдубошормены',10000),(965,924,964,'Гионгиос',10000),(966,924,964,'Эгер',10000),(968,924,967,'Сегед',10000),(969,924,967,'Сентес',10000),(970,924,967,'Ходмезовасархели',10000),(973,971,972,'Кан-То',10000),(974,971,972,'Рач-Гиа',10000),(976,971,975,'Нам-Динх',10000),(977,971,975,'Хайфон',10000),(978,971,975,'Ханой',10000),(980,971,979,'Вунг-Тау',10000),(981,971,979,'Сайгон',10000),(983,971,982,'Дананг',10000),(984,971,982,'Нячанг',10000),(985,971,982,'Пхан-Тхит',10000),(986,971,982,'Туи-Хоа',10000),(988,971,987,'Винь',10000),(989,971,987,'Хуэ',10000),(991,971,990,'Хон-Гаи',10000),(993,971,992,'Плейку',10000),(996,994,995,'Гонаивес',10000),(998,994,997,'Джереми',10000),(1000,994,999,'Порт-де-Пакс',10000),(1002,994,1001,'Порт-о-Пренс',10000),(1004,994,1003,'Лес-Кайес',10000),(1006,994,1005,'Джакмель',10000),(1009,1007,1008,'Пойнт-а-Питр',10000),(1011,1007,1010,'Бассе-Терре',10000),(1014,1012,1013,'Берлин',10000),(1016,1012,1015,'Бранденбург',10000),(1017,1012,1015,'Котбус',10000),(1018,1012,1015,'Потсдам',10000),(1019,1012,1015,'Франкфурт-на-Одере',10000),(1021,1012,1020,'Висмар',10000),(1022,1012,1020,'Грейфсвальд',10000),(1023,1012,1020,'Гюстров',10000),(1024,1012,1020,'Нойебранденбург',10000),(1025,1012,1020,'Росток',10000),(1026,1012,1020,'Шверин',10000),(1027,1012,1020,'Штральзунд',10000),(1029,1012,1028,'Баутцен',10000),(1030,1012,1028,'Герлиц',10000),(1031,1012,1028,'Дрезден',10000),(1032,1012,1028,'Лейпциг',10000),(1033,1012,1028,'Мейссен',10000),(1034,1012,1028,'Пирна',10000),(1035,1012,1028,'Плауэн',10000),(1036,1012,1028,'Радебюль',10000),(1037,1012,1028,'Риса',10000),(1038,1012,1028,'Фрейтал',10000),(1039,1012,1028,'Хемниц',10000),(1040,1012,1028,'Хойерсверда',10000),(1041,1012,1028,'Цвикау',10000),(1042,1012,1028,'Циттау',10000),(1044,1012,1043,'Бернбург',10000),(1045,1012,1043,'Вейссенфельс',10000),(1046,1012,1043,'Виттенберг',10000),(1047,1012,1043,'Дессау',10000),(1048,1012,1043,'Зейтз',10000),(1049,1012,1043,'Магдебург',10000),(1050,1012,1043,'Мерсебург',10000),(1051,1012,1043,'Халберштадт',10000),(1052,1012,1043,'Шонебек',10000),(1054,1012,1053,'Альтенбург',10000),(1055,1012,1053,'Веймар',10000),(1056,1012,1053,'Вернигероде',10000),(1057,1012,1053,'Гера',10000),(1058,1012,1053,'Гота',10000),(1059,1012,1053,'Йена',10000),(1060,1012,1053,'Мёлхаусен',10000),(1061,1012,1053,'Нордхаузен',10000),(1062,1012,1053,'Эизенах',10000),(1063,1012,1053,'Эрфурт',10000),(1065,1012,1064,'Амберг',10000),(1066,1012,1064,'Аугсбург',10000),(1067,1012,1064,'Ашхаффенбург',10000),(1068,1012,1064,'Бамберг',10000),(1069,1012,1064,'Бэйреут',10000),(1070,1012,1064,'Вейден',10000),(1071,1012,1064,'Вюрцбург',10000),(1072,1012,1064,'Ерланген',10000),(1073,1012,1064,'Ингольштадт',10000),(1074,1012,1064,'Кемптен',10000),(1075,1012,1064,'Кобург',10000),(1076,1012,1064,'Ландсхут',10000),(1077,1012,1064,'Нюрнберг',10000),(1078,1012,1064,'Пасау',10000),(1079,1012,1064,'Регенсбург',10000),(1080,1012,1064,'Фурт',10000),(1081,1012,1064,'Хоф',10000),(1082,1012,1064,'Швейнфурт',10000),(1084,1012,1083,'Баден-Баден',10000),(1085,1012,1083,'Гоппинген',10000),(1086,1012,1083,'Зинделфинген',10000),(1087,1012,1083,'Карлсруэ',10000),(1088,1012,1083,'Констанц',10000),(1089,1012,1083,'Людвигсбург',10000),(1090,1012,1083,'Мангейм',10000),(1091,1012,1083,'Пфорзхейм',10000),(1092,1012,1083,'Рютлинген',10000),(1093,1012,1083,'Тюбинген',10000),(1094,1012,1083,'Ульм',10000),(1095,1012,1083,'Фрейберг',10000),(1096,1012,1083,'Фридрихсхафен',10000),(1097,1012,1083,'Хейдельберг',10000),(1098,1012,1083,'Хейденхейм-ан-дер-Бренц',10000),(1099,1012,1083,'Хейлбронн',10000),(1100,1012,1083,'Швабиш-Гмунд',10000),(1101,1012,1083,'Штутгарт',10000),(1102,1012,1083,'Эсслинген',10000),(1104,1012,1103,'Бремен',10000),(1105,1012,1103,'Бремерхавен',10000),(1107,1012,1106,'Гамбург',10000),(1109,1012,1108,'Бад-Хомбург-вор-дер-Хох',10000),(1110,1012,1108,'Висбаден',10000),(1111,1012,1108,'Гиссен',10000),(1112,1012,1108,'Дармштадт',10000),(1113,1012,1108,'Кассель',10000),(1114,1012,1108,'Марбург-ан-дер-Лан',10000),(1115,1012,1108,'Оффенбах',10000),(1116,1012,1108,'Руссельшейм',10000),(1117,1012,1108,'Франкфурт-на-Майне',10000),(1118,1012,1108,'Фульда',10000),(1119,1012,1108,'Ханау',10000),(1121,1012,1120,'Вильгельмсхавен',10000),(1122,1012,1120,'Волфенбуттель',10000),(1123,1012,1120,'Вольфсбург',10000),(1124,1012,1120,'Ганновер',10000),(1125,1012,1120,'Гослар',10000),(1126,1012,1120,'Готтинген',10000),(1127,1012,1120,'Дельменхорст',10000),(1128,1012,1120,'Куксхавен',10000),(1129,1012,1120,'Лунебург',10000),(1130,1012,1120,'Нордхорн',10000),(1131,1012,1120,'Олденбург',10000),(1132,1012,1120,'Оснабрюк',10000),(1133,1012,1120,'Селл',10000),(1134,1012,1120,'Хамельн',10000),(1135,1012,1120,'Хильдешейм',10000),(1136,1012,1120,'Эмден',10000),(1138,1012,1137,'Бад-Крейцнах',10000),(1139,1012,1137,'Вормс',10000),(1140,1012,1137,'Кайзерслаутерн',10000),(1141,1012,1137,'Кобленц',10000),(1142,1012,1137,'Людвигшафен',10000),(1143,1012,1137,'Майнц',10000),(1144,1012,1137,'Ньюштадт-ан-дер-Вейнштрассе',10000),(1145,1012,1137,'Пирмасенс',10000),(1146,1012,1137,'Спейер',10000),(1147,1012,1137,'Трир',10000),(1148,1012,1137,'Франкенталь',10000),(1150,1012,1149,'Ньюнкирхен',10000),(1151,1012,1149,'Саарбрюкен',10000),(1153,1012,1152,'Аахен',10000),(1154,1012,1152,'Айзерлон',10000),(1155,1012,1152,'Ален',10000),(1156,1012,1152,'Бад-Зальцуфлен',10000),(1157,1012,1152,'Бергиш-Гладбах',10000),(1158,1012,1152,'Билефельд',10000),(1159,1012,1152,'Бонн',10000),(1160,1012,1152,'Бохольт',10000),(1161,1012,1152,'Бохум',10000),(1162,1012,1152,'Брул',10000),(1163,1012,1152,'Весел',10000),(1164,1012,1152,'Вирсен',10000),(1165,1012,1152,'Виттен',10000),(1166,1012,1152,'Вупперталь',10000),(1167,1012,1152,'Гельзенкирхен',10000),(1168,1012,1152,'Гуммерсбах',10000),(1169,1012,1152,'Гутерсло',10000),(1170,1012,1152,'Детмольд',10000),(1171,1012,1152,'Дойсбург',10000),(1172,1012,1152,'Дурен',10000),(1173,1012,1152,'Дюссельдорф',10000),(1174,1012,1152,'Золинген',10000),(1175,1012,1152,'Кёльн',10000),(1176,1012,1152,'Крефельд',10000),(1177,1012,1152,'Леверкузен',10000),(1178,1012,1152,'Липпштадт',10000),(1179,1012,1152,'Лунен',10000),(1180,1012,1152,'Люденсхейд',10000),(1181,1012,1152,'Малхейм-ан-дер-Рур',10000),(1182,1012,1152,'Марл',10000),(1183,1012,1152,'Минден',10000),(1184,1012,1152,'Монхенгладбах',10000),(1185,1012,1152,'Мюнстер',10000),(1186,1012,1152,'Ньюсс',10000),(1187,1012,1152,'Оберхаузен',10000),(1188,1012,1152,'Падерборн',10000),(1189,1012,1152,'Ратинген',10000),(1190,1012,1152,'Рейн',10000),(1191,1012,1152,'Ремшейд',10000),(1192,1012,1152,'Сест',10000),(1193,1012,1152,'Зиген',10000),(1194,1012,1152,'Стендаль',10000),(1195,1012,1152,'Хаген',10000),(1196,1012,1152,'Харт',10000),(1197,1012,1152,'Херн',10000),(1198,1012,1152,'Херфорд',10000),(1199,1012,1152,'Эскирхен',10000),(1200,1012,1152,'Эссен',10000),(1202,1012,1201,'Киль',10000),(1203,1012,1201,'Любек',10000),(1204,1012,1201,'Фленсбург',10000),(1205,1012,1201,'Эльмсхорн',10000),(1208,1206,1207,'Апельдоорн',10000),(1209,1206,1207,'Арнхем',10000),(1210,1206,1207,'Нижмеген',10000),(1211,1206,1207,'Реден',10000),(1212,1206,1207,'Эд',10000),(1214,1206,1213,'Гронинген',10000),(1216,1206,1215,'Эммен',10000),(1218,1206,1217,'Венло',10000),(1219,1206,1217,'Керкрад',10000),(1220,1206,1217,'Маастрихт',10000),(1221,1206,1217,'Хеерлен',10000),(1223,1206,1222,'Альмело',10000),(1224,1206,1222,'Девентер',10000),(1225,1206,1222,'Хенгело',10000),(1226,1206,1222,'Эншед',10000),(1228,1206,1227,'Алькмаар',10000),(1229,1206,1227,'Амстельвеен',10000),(1230,1206,1227,'Амстердам',10000),(1231,1206,1227,'Велсен',10000),(1232,1206,1227,'Ден-Хельдер',10000),(1233,1206,1227,'Хаарлем',10000),(1234,1206,1227,'Хилверсум',10000),(1236,1206,1235,'Бреда',10000),(1237,1206,1235,'Тилбург',10000),(1238,1206,1235,'Хелмонд',10000),(1239,1206,1235,'Эйндховен',10000),(1241,1206,1240,'Амерсфоорт',10000),(1242,1206,1240,'Зейст',10000),(1243,1206,1240,'Утрехт',10000),(1245,1206,1244,'Лееварден',10000),(1247,1206,1246,'Влаардинген',10000),(1248,1206,1246,'Гуда',10000),(1249,1206,1246,'Дельфт',10000),(1250,1206,1246,'Дордрехт',10000),(1251,1206,1246,'Заандам',10000),(1252,1206,1246,'Зволь',10000),(1253,1206,1246,'Лейден',10000),(1254,1206,1246,'Роттердам',10000),(1255,1206,1246,'Хаге',10000),(1256,1206,1246,'Шевенинген',10000),(1257,1206,1246,'Шидам',10000),(1260,1258,1259,'Патры',10000),(1262,1258,1261,'Афины',10000),(1263,1258,1261,'Пирей',10000),(1265,1258,1264,'Драма',10000),(1267,1258,1266,'Александруполис',10000),(1269,1258,1268,'Хания',10000),(1271,1258,1270,'Иоаннина',10000),(1273,1258,1272,'Ираклион',10000),(1275,1258,1274,'Кавалла',10000),(1277,1258,1276,'Волос',10000),(1279,1258,1278,'Фессалоники',10000),(1282,1280,1281,'Авадхара',10000),(1283,1280,1281,'Гагра',10000),(1284,1280,1281,'Гали',10000),(1285,1280,1281,'Гудаута',10000),(1286,1280,1281,'Гульрипш',10000),(1287,1280,1281,'Новый Афон',10000),(1288,1280,1281,'Очамчиров',10000),(1289,1280,1281,'Пицунда',10000),(1290,1280,1281,'Сухуми',10000),(1291,1280,1281,'Ткварчели',10000),(1293,1280,1292,'Батуми',10000),(1294,1280,1292,'Кобулети',10000),(1295,1280,1292,'Хуло',10000),(1297,1280,1296,'Абастумани',10000),(1298,1280,1296,'Абаша',10000),(1299,1280,1296,'Агара',10000),(1300,1280,1296,'Адигени',10000),(1301,1280,1296,'Амбролаури',10000),(1302,1280,1296,'Аспиндза',10000),(1303,1280,1296,'Ахалкалаки',10000),(1304,1280,1296,'Ахалцихе',10000),(1305,1280,1296,'Ахмета',10000),(1306,1280,1296,'Бакуриани',10000),(1307,1280,1296,'Богдановка',10000),(1308,1280,1296,'Болниси',10000),(1309,1280,1296,'Боржоми',10000),(1310,1280,1296,'Вани',10000),(1311,1280,1296,'Гардабани',10000),(1312,1280,1296,'Гегечкори',10000),(1313,1280,1296,'Гори',10000),(1314,1280,1296,'Гурджаани',10000),(1315,1280,1296,'Джвари',10000),(1316,1280,1296,'Дманиси',10000),(1317,1280,1296,'Душети',10000),(1318,1280,1296,'Зестафони',10000),(1319,1280,1296,'Зугдиди',10000),(1320,1280,1296,'Казбеги',10000),(1321,1280,1296,'Карели',10000),(1322,1280,1296,'Каспи',10000),(1323,1280,1296,'Кваиси',10000),(1324,1280,1296,'Кварели',10000),(1325,1280,1296,'Коджори',10000),(1326,1280,1296,'Кутаиси',10000),(1327,1280,1296,'Лагодехи',10000),(1328,1280,1296,'Ланчхути',10000),(1329,1280,1296,'Ленингори',10000),(1330,1280,1296,'Лентехи',10000),(1331,1280,1296,'Марнеули',10000),(1332,1280,1296,'Махарадзе',10000),(1333,1280,1296,'Маяковский',10000),(1334,1280,1296,'Местиа',10000),(1335,1280,1296,'Они',10000),(1336,1280,1296,'Орджоникидзе',10000),(1337,1280,1296,'Пасанаури',10000),(1338,1280,1296,'Поти',10000),(1339,1280,1296,'Рустави',10000),(1340,1280,1296,'Сагареджо',10000),(1341,1280,1296,'Самтредиа',10000),(1342,1280,1296,'Сачхере',10000),(1343,1280,1296,'Сигнахи',10000),(1344,1280,1296,'Тбилиси',10000),(1345,1280,1296,'Телави',10000),(1346,1280,1296,'Тержола',10000),(1347,1280,1296,'Тетри-Цкаро',10000),(1348,1280,1296,'Тианети',10000),(1349,1280,1296,'Ткибули',10000),(1350,1280,1296,'Хашури',10000),(1351,1280,1296,'Хоби',10000),(1352,1280,1296,'Цагери',10000),(1353,1280,1296,'Цаленджиха',10000),(1354,1280,1296,'Цалка',10000),(1355,1280,1296,'Цители-Цкаро',10000),(1356,1280,1296,'Цнори',10000),(1357,1280,1296,'Цулукидзе',10000),(1358,1280,1296,'Цхакая',10000),(1359,1280,1296,'Цхалтубо',10000),(1360,1280,1296,'Чиатура',10000),(1361,1280,1296,'Чохатаури',10000),(1362,1280,1296,'Чхороцку',10000),(1364,1280,1363,'Джава',10000),(1365,1280,1363,'Цхинвали',10000),(1368,1366,1367,'Колдинг',10000),(1370,1366,1369,'Альборг',10000),(1372,1366,1371,'Орхус',10000),(1373,1366,1371,'Рандерс',10000),(1375,1366,1374,'Роскилде',10000),(1377,1366,1376,'Эсбйерг',10000),(1379,1366,1378,'Оденс',10000),(1382,1380,1381,'Каир',10000),(1384,1380,1383,'Асуан',10000),(1386,1380,1385,'Асыут',10000),(1388,1380,1387,'Бени Суэф',10000),(1390,1380,1389,'Танта',10000),(1392,1380,1391,'Думият',10000),(1395,1393,1394,'Арад',10000),(1396,1393,1394,'Ашдод',10000),(1397,1393,1394,'Ашкелон',10000),(1398,1393,1394,'Бээр-Шева',10000),(1399,1393,1394,'Димона',10000),(1400,1393,1394,'Кирьят-Гат',10000),(1401,1393,1394,'Кирьят-Малахи',10000),(1402,1393,1394,'Эйлат',10000),(1404,1393,1403,'Бнэй-Брак',10000),(1405,1393,1403,'Гэдера',10000),(1406,1393,1403,'Лод',10000),(1407,1393,1403,'Натания',10000),(1408,1393,1403,'Нэс-Циона',10000),(1409,1393,1403,'Пэтах-Тиква',10000),(1410,1393,1403,'Раанана',10000),(1411,1393,1403,'Рамла',10000),(1412,1393,1403,'Ришон-ЛеЦион',10000),(1413,1393,1403,'Рош-ха-Аин',10000),(1414,1393,1403,'Рэховот',10000),(1415,1393,1403,'Явне',10000),(1417,1393,1416,'Акко',10000),(1418,1393,1416,'Акко (порт)',10000),(1419,1393,1416,'Афула',10000),(1420,1393,1416,'Кармиэль',10000),(1421,1393,1416,'Кирьят-Тивон',10000),(1422,1393,1416,'Кирьят-Шмона',10000),(1423,1393,1416,'Нагария',10000),(1424,1393,1416,'Нацэрэт',10000),(1425,1393,1416,'Сахнин',10000),(1426,1393,1416,'Тверия',10000),(1427,1393,1416,'Цфат',10000),(1428,1393,1416,'Хайфа',10000),(1430,1393,1429,'Далият-Эль-Кармэль',10000),(1431,1393,1429,'Зихрон-Яаков',10000),(1432,1393,1429,'Кирьят-Бялик',10000),(1433,1393,1429,'Кирьят-Моцкин',10000),(1434,1393,1429,'Кирьят-Ям',10000),(1435,1393,1429,'Нэшэр',10000),(1436,1393,1429,'Ор-Акива',10000),(1437,1393,1429,'Пардэс-Ханна',10000),(1438,1393,1429,'Тират-Кармэль',10000),(1439,1393,1429,'Хэдэра',10000),(1441,1393,1440,'Бат-Ям',10000),(1442,1393,1440,'Герцелия',10000),(1443,1393,1440,'Гиватаим',10000),(1444,1393,1440,'Кирьят-Оно',10000),(1445,1393,1440,'Рамат-Ган',10000),(1446,1393,1440,'Рамат-Хашарон',10000),(1447,1393,1440,'Тель-Авив',10000),(1448,1393,1440,'Холон',10000),(1450,1393,1449,'Иерусалим',10000),(1453,1451,1452,'Асансол',10000),(1454,1451,1452,'Байдьябати',10000),(1455,1451,1452,'Балли',10000),(1456,1451,1452,'Банкура',10000),(1457,1451,1452,'Барасат',10000),(1458,1451,1452,'Бхатпара',10000),(1459,1451,1452,'Даржилинг',10000),(1460,1451,1452,'Дум-Дум',10000),(1461,1451,1452,'Дургапур',10000),(1462,1451,1452,'Камархати',10000),(1463,1451,1452,'Кришнанагар',10000),(1464,1451,1452,'Кхарагпур',10000),(1465,1451,1452,'Наихати',10000),(1466,1451,1452,'Панихати',10000),(1467,1451,1452,'Титагарх',10000),(1469,1451,1468,'Биласпур',10000),(1470,1451,1468,'Бхилаи',10000),(1471,1451,1468,'Дург',10000),(1472,1451,1468,'Раипур',10000),(1474,1451,1473,'Багалкот',10000),(1475,1451,1473,'Белгаум',10000),(1476,1451,1473,'Беллари',10000),(1477,1451,1473,'Бияпур',10000),(1478,1451,1473,'Гадаг',10000),(1479,1451,1473,'Давангер',10000),(1480,1451,1473,'Колар Голд Филдс',10000),(1481,1451,1473,'Мангалор',10000),(1482,1451,1473,'Раичур',10000),(1483,1451,1473,'Сагар',10000),(1484,1451,1473,'Тумкур',10000),(1485,1451,1473,'Хоспет',10000),(1486,1451,1473,'Хубли',10000),(1487,1451,1473,'Шимога',10000),(1489,1451,1488,'Дехра Дун',10000),(1490,1451,1488,'Сринагар',10000),(1492,1451,1491,'Адони',10000),(1493,1451,1491,'Анакапал',10000),(1494,1451,1491,'Анантапур',10000),(1495,1451,1491,'Визианагарам',10000),(1496,1451,1491,'Вияиавада',10000),(1497,1451,1491,'Гунтакал',10000),(1498,1451,1491,'Гунтур',10000),(1499,1451,1491,'Какинада',10000),(1500,1451,1491,'Куддапах',10000),(1501,1451,1491,'Мачилипатнам',10000),(1502,1451,1491,'Нандиал',10000),(1503,1451,1491,'Низамабад',10000),(1504,1451,1491,'Проддатур',10000),(1505,1451,1491,'Тенали',10000),(1506,1451,1491,'Чирала',10000),(1507,1451,1491,'Читтур',10000),(1508,1451,1491,'Элуру',10000),(1510,1451,1509,'Дибругарх',10000),(1511,1451,1509,'Силчар',10000),(1513,1451,1512,'Беттиах',10000),(1514,1451,1512,'Бихар',10000),(1515,1451,1512,'Бхагалпур',10000),(1516,1451,1512,'Гэйа',10000),(1517,1451,1512,'Дарбханга',10000),(1518,1451,1512,'Катихар',10000),(1519,1451,1512,'Музаффарпур',10000),(1520,1451,1512,'Патна',10000),(1522,1451,1521,'Ахмадабад',10000),(1523,1451,1521,'Бхуй',10000),(1524,1451,1521,'Веравал',10000),(1525,1451,1521,'Годхра',10000),(1526,1451,1521,'Гондал',10000),(1527,1451,1521,'Дхорайи',10000),(1528,1451,1521,'Йодхпур',10000),(1529,1451,1521,'Морви',10000),(1530,1451,1521,'Навсари',10000),(1531,1451,1521,'Надиад',10000),(1532,1451,1521,'Патан',10000),(1533,1451,1521,'Порбандар',10000),(1534,1451,1521,'Райкот',10000),(1535,1451,1521,'Сурат',10000),(1536,1451,1521,'Сурендранагар',10000),(1537,1451,1521,'Юнагадх',10000),(1538,1451,1521,'Ямнагар',10000),(1540,1451,1539,'Дханбад',10000),(1541,1451,1539,'Ранчи',10000),(1542,1451,1539,'Сринагар',10000),(1543,1451,1539,'Ямму',10000),(1544,1451,1539,'Ямшедпур',10000),(1546,1451,1545,'Кожикод',10000),(1547,1451,1545,'Коттэйам',10000),(1549,1451,1548,'Барейлли',10000),(1550,1451,1548,'Бурханпур',10000),(1551,1451,1548,'Бхопал',10000),(1552,1451,1548,'Гвалиор',10000),(1553,1451,1548,'Дамох',10000),(1554,1451,1548,'Индаур',10000),(1555,1451,1548,'Кхандва',10000),(1556,1451,1548,'Мау',10000),(1557,1451,1548,'Мурвара',10000),(1558,1451,1548,'Ратлам',10000),(1559,1451,1548,'Рева',10000),(1560,1451,1548,'Уйяин',10000),(1562,1451,1561,'Имфал',10000),(1564,1451,1563,'Акола',10000),(1565,1451,1563,'Амальнер',10000),(1566,1451,1563,'Ахалпур',10000),(1567,1451,1563,'Ахмаднагар',10000),(1568,1451,1563,'Барси',10000),(1569,1451,1563,'Бхиванди',10000),(1570,1451,1563,'Бхусавал',10000),(1571,1451,1563,'Вардха',10000),(1572,1451,1563,'Дхулиа',10000),(1573,1451,1563,'Калиан',10000),(1574,1451,1563,'Колхапур',10000),(1575,1451,1563,'Кхамгаон',10000),(1576,1451,1563,'Латур',10000),(1577,1451,1563,'Малегаон',10000),(1578,1451,1563,'Нагпур',10000),(1579,1451,1563,'Нандурбар',10000),(1580,1451,1563,'Пандхарпур',10000),(1581,1451,1563,'Сангли',10000),(1582,1451,1563,'Сатара',10000),(1583,1451,1563,'Тана',10000),(1584,1451,1563,'Улхаснагар',10000),(1585,1451,1563,'Шолапур',10000),(1587,1451,1586,'Шиллонг',10000),(1589,1451,1588,'Пури',10000),(1590,1451,1588,'Рауркела',10000),(1592,1451,1591,'Амритсар',10000),(1593,1451,1591,'Батала',10000),(1594,1451,1591,'Лудхиана',10000),(1595,1451,1591,'Патиала',10000),(1597,1451,1596,'Пондичерри',10000),(1599,1451,1598,'Аймер',10000),(1600,1451,1598,'Альвар',10000),(1601,1451,1598,'Бивар',10000),(1602,1451,1598,'Биканер',10000),(1603,1451,1598,'Бхаратпур',10000),(1604,1451,1598,'Бхилвара',10000),(1605,1451,1598,'Ганганагар',10000),(1606,1451,1598,'Кота',10000),(1607,1451,1598,'Сикар',10000),(1608,1451,1598,'Тонк',10000),(1609,1451,1598,'Удаипур',10000),(1610,1451,1598,'Фатехгарх',10000),(1611,1451,1598,'Чуру',10000),(1613,1451,1612,'Аруппокоттаи',10000),(1614,1451,1612,'Бодинэйакканур',10000),(1615,1451,1612,'Ванииамбади',10000),(1616,1451,1612,'Виллупурам',10000),(1617,1451,1612,'Диндигул',10000),(1618,1451,1612,'Ерод',10000),(1619,1451,1612,'Карур',10000),(1620,1451,1612,'Кумбаконам',10000),(1621,1451,1612,'Мадурай',10000),(1622,1451,1612,'Нагеркоил',10000),(1623,1451,1612,'Пудуккоттаи',10000),(1624,1451,1612,'Раяпалаииам',10000),(1625,1451,1612,'Тируваннамалаи',10000),(1626,1451,1612,'Тирунелвели',10000),(1627,1451,1612,'Тируччираппалли',10000),(1628,1451,1612,'Чидамбарам',10000),(1630,1451,1629,'Агартала',10000),(1632,1451,1631,'Агра',10000),(1633,1451,1631,'Алигар',10000),(1634,1451,1631,'Аллахабад',10000),(1635,1451,1631,'Бахраич',10000),(1636,1451,1631,'Будаун',10000),(1637,1451,1631,'Варанаси',10000),(1638,1451,1631,'Гонда',10000),(1639,1451,1631,'Горакхпур',10000),(1640,1451,1631,'Гхазиабад',10000),(1641,1451,1631,'Етавах',10000),(1642,1451,1631,'Йханси',10000),(1643,1451,1631,'Канпур',10000),(1644,1451,1631,'Матура',10000),(1645,1451,1631,'Мирзапур',10000),(1646,1451,1631,'Морадабад',10000),(1647,1451,1631,'Музаффарнагар',10000),(1648,1451,1631,'Пилибхит',10000),(1649,1451,1631,'Рампур',10000),(1650,1451,1631,'Самбхал',10000),(1651,1451,1631,'Ситапур',10000),(1652,1451,1631,'Фаизабад',10000),(1653,1451,1631,'Фирозабад',10000),(1654,1451,1631,'Хатрас',10000),(1655,1451,1631,'Шахяханпур',10000),(1657,1451,1656,'Амбала',10000),(1658,1451,1656,'Бхивани',10000),(1659,1451,1656,'Карнал',10000),(1660,1451,1656,'Панипат',10000),(1662,1451,1661,'Чандигарх',10000),(1665,1663,1664,'Марагех',10000),(1666,1663,1664,'Тебриз',10000),(1668,1663,1667,'Кашан',10000),(1670,1663,1669,'Хамадан',10000),(1672,1663,1671,'Санандай',10000),(1674,1663,1673,'Арак',10000),(1676,1663,1675,'Захедан',10000),(1678,1663,1677,'Иезд',10000),(1680,1663,1679,'Керман',10000),(1682,1663,1681,'Керманшах',10000),(1684,1663,1683,'Бабол',10000),(1685,1663,1683,'Сари',10000),(1687,1663,1686,'Тегеран',10000),(1689,1663,1688,'Абадан',10000),(1690,1663,1688,'Шираз',10000),(1692,1663,1691,'Бендер-Аббас',10000),(1694,1663,1693,'Ахваз',10000),(1695,1663,1693,'Хоррамшахр',10000),(1698,1696,1697,'Корк',10000),(1700,1696,1699,'Дан-Логер',10000),(1701,1696,1699,'Дублин',10000),(1703,1696,1702,'Лимерик',10000),(1705,1696,1704,'Луимнич',10000),(1706,1696,1704,'Уотерфорд',10000),(1709,1707,1708,'Сантандер',10000),(1711,1707,1710,'Сеута',10000),(1713,1707,1712,'Гранада',10000),(1715,1707,1714,'Логроно',10000),(1717,1707,1716,'Саламанка',10000),(1719,1707,1718,'Витория',10000),(1721,1707,1720,'Аликанте',10000),(1722,1707,1720,'Алкантара',10000),(1723,1707,1720,'Алкой',10000),(1725,1707,1724,'Альбасете',10000),(1727,1707,1726,'Алмерия',10000),(1729,1707,1728,'Гийон',10000),(1730,1707,1728,'Овьедо',10000),(1732,1707,1731,'Баладона',10000),(1733,1707,1731,'Барселона',10000),(1734,1707,1731,'Манреса',10000),(1735,1707,1731,'Сабадель',10000),(1736,1707,1731,'Тарраса',10000),(1737,1707,1731,'Хоспиталет',10000),(1739,1707,1738,'Бильбао',10000),(1741,1707,1740,'Бургос',10000),(1743,1707,1742,'Валенсия',10000),(1745,1707,1744,'Валладолид',10000),(1747,1707,1746,'Алжекирас',10000),(1748,1707,1746,'Кадис',10000),(1750,1707,1749,'Кацерес',10000),(1751,1707,1749,'Ла-Линея',10000),(1752,1707,1749,'Херес-де-ла-Фронтера',10000),(1754,1707,1753,'Кордова',10000),(1756,1707,1755,'Лас-Пальмас-де-Гран-Канар',10000),(1758,1707,1757,'Леон',10000),(1760,1707,1759,'Лерида',10000),(1762,1707,1761,'Луго',10000),(1764,1707,1763,'Мадрид',10000),(1766,1707,1765,'Малага',10000),(1768,1707,1767,'Мурсия',10000),(1770,1707,1769,'Палма-де-Мальорка',10000),(1772,1707,1771,'Виго',10000),(1773,1707,1771,'Паленсия',10000),(1775,1707,1774,'Замора',10000),(1777,1707,1776,'Санта-Круз-де-Тенерифе',10000),(1779,1707,1778,'Сарагоса',10000),(1781,1707,1780,'Севилья',10000),(1783,1707,1782,'Пуэртоллано',10000),(1785,1707,1784,'Линарес',10000),(1788,1786,1787,'Пескара',10000),(1790,1786,1789,'Альтамура',10000),(1791,1786,1789,'Андрия',10000),(1792,1786,1789,'Бари',10000),(1793,1786,1789,'Бискегли',10000),(1794,1786,1789,'Бриндизи',10000),(1795,1786,1789,'Корато',10000),(1796,1786,1789,'Лечче',10000),(1797,1786,1789,'Мольфетта',10000),(1798,1786,1789,'Сан-Северо',10000),(1799,1786,1789,'Таранто',10000),(1800,1786,1789,'Трани',10000),(1801,1786,1789,'Фоджия',10000),(1803,1786,1802,'Верона',10000),(1804,1786,1802,'Виченца',10000),(1805,1786,1802,'Тревисо',10000),(1807,1786,1806,'Катанцаро',10000),(1808,1786,1806,'Косенца',10000),(1809,1786,1806,'Реджио-ди-Калабриа',10000),(1811,1786,1810,'Аверса',10000),(1812,1786,1810,'Беневенто',10000),(1813,1786,1810,'Кастелламмаре-ди-Стабия',10000),(1814,1786,1810,'Ночера-Инфериоре',10000),(1815,1786,1810,'Поццуоли',10000),(1816,1786,1810,'Салерно',10000),(1817,1786,1810,'Торре-Аннунциата',10000),(1818,1786,1810,'Торре-дель-Греко',10000),(1820,1786,1819,'Рим',10000),(1822,1786,1821,'Генуя',10000),(1823,1786,1821,'Ла-Специя',10000),(1824,1786,1821,'Савона',10000),(1825,1786,1821,'Сан-Ремо',10000),(1827,1786,1826,'Бергамо',10000),(1828,1786,1826,'Брескиа',10000),(1829,1786,1826,'Бусто-Арсизио',10000),(1830,1786,1826,'Варезе',10000),(1831,1786,1826,'Комо',10000),(1832,1786,1826,'Кремона',10000),(1833,1786,1826,'Леччо',10000),(1834,1786,1826,'Мантуя',10000),(1835,1786,1826,'Милан',10000),(1836,1786,1826,'Монца',10000),(1837,1786,1826,'Павия',10000),(1839,1786,1838,'Анкона',10000),(1840,1786,1838,'Песаро',10000),(1842,1786,1841,'Каглиари',10000),(1843,1786,1841,'Сассари',10000),(1845,1786,1844,'Алькамо',10000),(1846,1786,1844,'Витториа',10000),(1847,1786,1844,'Гела',10000),(1848,1786,1844,'Калтагирон',10000),(1849,1786,1844,'Калтаниссетта',10000),(1850,1786,1844,'Катания',10000),(1851,1786,1844,'Ликата',10000),(1852,1786,1844,'Мессина',10000),(1853,1786,1844,'Палермо',10000),(1854,1786,1844,'Патерно',10000),(1855,1786,1844,'Рагуса',10000),(1856,1786,1844,'Сиракузы',10000),(1857,1786,1844,'Трапани',10000),(1859,1786,1858,'Асти',10000),(1860,1786,1858,'Биелла',10000),(1861,1786,1858,'Верцелли',10000),(1862,1786,1858,'Новара',10000),(1863,1786,1858,'Турин',10000),(1865,1786,1864,'Ареццо',10000),(1866,1786,1864,'Виареджио',10000),(1867,1786,1864,'Гроссето',10000),(1868,1786,1864,'Каррара',10000),(1869,1786,1864,'Лючча',10000),(1870,1786,1864,'Масса',10000),(1871,1786,1864,'Пиза',10000),(1872,1786,1864,'Пистойя',10000),(1873,1786,1864,'Прато',10000),(1874,1786,1864,'Сьена',10000),(1875,1786,1864,'Флоренция',10000),(1877,1786,1876,'Больцано',10000),(1878,1786,1876,'Тренто',10000),(1880,1786,1879,'Перуджиа',10000),(1881,1786,1879,'Терни',10000),(1883,1786,1882,'Триест',10000),(1884,1786,1882,'Удин',10000),(1886,1786,1885,'Болонья',10000),(1887,1786,1885,'Модена',10000),(1888,1786,1885,'Парма',10000),(1889,1786,1885,'Пиаченца',10000),(1890,1786,1885,'Равенна',10000),(1891,1786,1885,'Фенца',10000),(1892,1786,1885,'Феррара',10000),(1893,1786,1885,'Форли',10000),(1896,1894,1895,'Актюбинск',10000),(1897,1894,1895,'Акшам',10000),(1898,1894,1895,'Алга',10000),(1899,1894,1895,'Байганин',10000),(1900,1894,1895,'Батамшинский',10000),(1901,1894,1895,'Иргиз',10000),(1902,1894,1895,'Карабутак',10000),(1903,1894,1895,'Мартук',10000),(1904,1894,1895,'Новоалексеевка',10000),(1905,1894,1895,'Октябрьск',10000),(1906,1894,1895,'Уил',10000),(1907,1894,1895,'Хромтау',10000),(1908,1894,1895,'Челкар',10000),(1909,1894,1895,'Шубаркудук',10000),(1910,1894,1895,'Эмба',10000),(1912,1894,1911,'Алма-Ата',10000),(1913,1894,1911,'Алматы',10000),(1914,1894,1911,'Баканас',10000),(1915,1894,1911,'Бурундай',10000),(1916,1894,1911,'Иссык',10000),(1917,1894,1911,'Капчагай',10000),(1918,1894,1911,'Каскелен',10000),(1919,1894,1911,'Нарынкол',10000),(1920,1894,1911,'Талгар',10000),(1921,1894,1911,'Узунагач',10000),(1922,1894,1911,'Чилик',10000),(1923,1894,1911,'Чунджа',10000),(1925,1894,1924,'Акжар',10000),(1926,1894,1924,'Алексеевка',10000),(1927,1894,1924,'Асубулак',10000),(1928,1894,1924,'Белогорский',10000),(1929,1894,1924,'Белоусовка',10000),(1930,1894,1924,'Верхнеберезовский',10000),(1931,1894,1924,'Глубокое',10000),(1932,1894,1924,'Зайсан',10000),(1933,1894,1924,'Зыряновск',10000),(1934,1894,1924,'Карагужиха',10000),(1935,1894,1924,'Катон-Карагай',10000),(1936,1894,1924,'Курчум',10000),(1937,1894,1924,'Лениногорск',10000),(1938,1894,1924,'Самарское',10000),(1939,1894,1924,'Серебрянск',10000),(1940,1894,1924,'Усть-Каменогорск',10000),(1941,1894,1924,'Шемонаиха',10000),(1943,1894,1942,'Байчунас',10000),(1944,1894,1942,'Балыкши',10000),(1945,1894,1942,'Ганюшкино',10000),(1946,1894,1942,'Атырау(Гурьев)',10000),(1947,1894,1942,'Доссор',10000),(1948,1894,1942,'Индерборский',10000),(1949,1894,1942,'Искининский',10000),(1950,1894,1942,'Каратон',10000),(1951,1894,1942,'Кульсары',10000),(1952,1894,1942,'Макат',10000),(1953,1894,1942,'Миялы',10000),(1955,1894,1954,'Акколь',10000),(1956,1894,1954,'Байкадам',10000),(1957,1894,1954,'Брлик',10000),(1958,1894,1954,'Бурное',10000),(1959,1894,1954,'Георгиевка',10000),(1960,1894,1954,'Гранитогорск',10000),(1961,1894,1954,'Джамбул',10000),(1962,1894,1954,'Жанатас',10000),(1963,1894,1954,'Каратау',10000),(1964,1894,1954,'Коктал',10000),(1965,1894,1954,'Луговое',10000),(1966,1894,1954,'Мерке',10000),(1967,1894,1954,'Михайловка',10000),(1968,1894,1954,'Новотроицкое',10000),(1969,1894,1954,'Ойтал',10000),(1970,1894,1954,'Отар',10000),(1971,1894,1954,'Фурмановка',10000),(1972,1894,1954,'Чиганак',10000),(1973,1894,1954,'Чу',10000),(1975,1894,1974,'Агадырь',10000),(1976,1894,1974,'Акжал',10000),(1977,1894,1974,'Актас',10000),(1978,1894,1974,'Актогай',10000),(1979,1894,1974,'Атасу',10000),(1980,1894,1974,'Балхаш',10000),(1981,1894,1974,'Восточно-Коунрадский',10000),(1982,1894,1974,'Гульшад',10000),(1983,1894,1974,'Дарьинский',10000),(1984,1894,1974,'Джамбул',10000),(1985,1894,1974,'Джезды',10000),(1986,1894,1974,'Джезказган',10000),(1987,1894,1974,'Жарык',10000),(1988,1894,1974,'Кайракты',10000),(1989,1894,1974,'Каражал',10000),(1990,1894,1974,'Никольский',10000),(1991,1894,1974,'Сарышаган',10000),(1992,1894,1974,'Тараз',10000),(1993,1894,1974,'Улытау',10000),(1995,1894,1994,'Абай',10000),(1996,1894,1994,'Актас',10000),(1997,1894,1994,'Актау',10000),(1998,1894,1994,'Егиндыбулак',10000),(1999,1894,1994,'Карагайлы',10000),(2000,1894,1994,'Караганда',10000),(2001,1894,1994,'Каркаралинск',10000),(2002,1894,1994,'Киевка',10000),(2003,1894,1994,'Осакаровка',10000),(2004,1894,1994,'Сарань',10000),(2005,1894,1994,'Темиртау',10000),(2006,1894,1994,'Токаревка',10000),(2007,1894,1994,'Топар',10000),(2008,1894,1994,'Ульяновский',10000),(2009,1894,1994,'Шахтинск',10000),(2011,1894,2010,'Аралсульфат',10000),(2012,1894,2010,'Аральск',10000),(2013,1894,2010,'Джалагаш',10000),(2014,1894,2010,'Джусалы',10000),(2015,1894,2010,'Казалинск',10000),(2016,1894,2010,'Кзыл-Орда',10000),(2017,1894,2010,'Новоказалинск',10000),(2018,1894,2010,'Тасбугет',10000),(2019,1894,2010,'Чиили',10000),(2020,1894,2010,'Яныкурган',10000),(2022,1894,2021,'Айдабул',10000),(2023,1894,2021,'Алексеевка',10000),(2024,1894,2021,'Боровое',10000),(2025,1894,2021,'Володарское',10000),(2026,1894,2021,'Зеренда',10000),(2027,1894,2021,'Келлеровка',10000),(2028,1894,2021,'Кзылту',10000),(2029,1894,2021,'Кокчетав',10000),(2030,1894,2021,'Красноармейск',10000),(2031,1894,2021,'Красный Яр',10000),(2032,1894,2021,'Куйбышевский',10000),(2033,1894,2021,'Ленинградское',10000),(2034,1894,2021,'Рузаевка',10000),(2035,1894,2021,'Степняк',10000),(2036,1894,2021,'Талшик',10000),(2037,1894,2021,'Чистополье',10000),(2038,1894,2021,'Чкалово',10000),(2039,1894,2021,'Щучинск',10000),(2041,1894,2040,'Боровской',10000),(2042,1894,2040,'Джетыгара',10000),(2043,1894,2040,'Затобольск',10000),(2044,1894,2040,'Камышное',10000),(2045,1894,2040,'Комсомолец',10000),(2046,1894,2040,'Кустанай',10000),(2047,1894,2040,'Кушмурун',10000),(2048,1894,2040,'Ленинское',10000),(2049,1894,2040,'Лисаковск',10000),(2050,1894,2040,'Орджоникидзе',10000),(2051,1894,2040,'Рудный',10000),(2052,1894,2040,'Семиозерное',10000),(2053,1894,2040,'Тобол',10000),(2054,1894,2040,'Урицкий',10000),(2056,1894,2055,'Баутино',10000),(2057,1894,2055,'Бейнеу',10000),(2058,1894,2055,'Новый Узень',10000),(2059,1894,2055,'Форт-Шевченко',10000),(2060,1894,2055,'Шевченко',10000),(2062,1894,2061,'Баянаул',10000),(2063,1894,2061,'Ермак',10000),(2064,1894,2061,'Железинка',10000),(2065,1894,2061,'Иртышск',10000),(2066,1894,2061,'Калкаман',10000),(2067,1894,2061,'Краснокутск',10000),(2068,1894,2061,'Лебяжье',10000),(2069,1894,2061,'Майкаин',10000),(2070,1894,2061,'Павлодар',10000),(2071,1894,2061,'Успенка',10000),(2072,1894,2061,'Щербакты',10000),(2073,1894,2061,'Экибастуз',10000),(2075,1894,2074,'Благовещенка',10000),(2076,1894,2074,'Булаево',10000),(2077,1894,2074,'Корнеевка',10000),(2078,1894,2074,'Мамлютка',10000),(2079,1894,2074,'Петропавловск',10000),(2080,1894,2074,'Пресновка',10000),(2081,1894,2074,'Сергеевка',10000),(2082,1894,2074,'Соколовка',10000),(2083,1894,2074,'Явленка',10000),(2085,1894,2084,'Акжал',10000),(2086,1894,2084,'Аксуат',10000),(2087,1894,2084,'Ауэзов',10000),(2088,1894,2084,'Аягуз',10000),(2089,1894,2084,'Баршатас',10000),(2090,1894,2084,'Бельагаш',10000),(2091,1894,2084,'Боко',10000),(2092,1894,2084,'Большая Владимировка',10000),(2093,1894,2084,'Бородулиха',10000),(2094,1894,2084,'Георгиевка',10000),(2095,1894,2084,'Жангизтобе',10000),(2096,1894,2084,'Жарма',10000),(2097,1894,2084,'Кайнар',10000),(2098,1894,2084,'Кокпекты',10000),(2099,1894,2084,'Маканчи',10000),(2100,1894,2084,'Новая Шульба',10000),(2101,1894,2084,'Семипалатинск',10000),(2102,1894,2084,'Таскескен',10000),(2103,1894,2084,'Урджар',10000),(2104,1894,2084,'Чарск',10000),(2106,1894,2105,'Актогай',10000),(2107,1894,2105,'Андреевка',10000),(2108,1894,2105,'Джансугуров',10000),(2109,1894,2105,'Капал',10000),(2110,1894,2105,'Карабулак',10000),(2111,1894,2105,'Кировский',10000),(2112,1894,2105,'Кугалы',10000),(2113,1894,2105,'Панфилов',10000),(2114,1894,2105,'Сарканд',10000),(2115,1894,2105,'Сарыозек',10000),(2116,1894,2105,'Талды-Курган',10000),(2117,1894,2105,'Текели',10000),(2118,1894,2105,'Учарал',10000),(2119,1894,2105,'Уштобе',10000),(2121,1894,2120,'Амангельды',10000),(2122,1894,2120,'Аркалык',10000),(2123,1894,2120,'Державинск',10000),(2124,1894,2120,'Есиль',10000),(2125,1894,2120,'Жаксы',10000),(2126,1894,2120,'Октябрьское',10000),(2127,1894,2120,'Тургай',10000),(2129,1894,2128,'Акбеит',10000),(2130,1894,2128,'Акмолинск',10000),(2131,1894,2128,'Аксу',10000),(2132,1894,2128,'Алексеевка',10000),(2133,1894,2128,'Астана',10000),(2134,1894,2128,'Астраханка',10000),(2135,1894,2128,'Атабасар',10000),(2136,1894,2128,'Балкащино',10000),(2137,1894,2128,'Бестобе',10000),(2138,1894,2128,'Вишневка',10000),(2139,1894,2128,'Ерментау',10000),(2140,1894,2128,'Жалтыр',10000),(2141,1894,2128,'Жолымбет',10000),(2142,1894,2128,'Кургальджинский',10000),(2143,1894,2128,'Макинск',10000),(2144,1894,2128,'Целиноград',10000),(2145,1894,2128,'Шортанды',10000),(2147,1894,2146,'Арысь',10000),(2148,1894,2146,'Ачисай',10000),(2149,1894,2146,'Байжансай',10000),(2150,1894,2146,'Белые Воды',10000),(2151,1894,2146,'Ванновка',10000),(2152,1894,2146,'Джетысай',10000),(2153,1894,2146,'Кентау',10000),(2154,1894,2146,'Ленгер',10000),(2155,1894,2146,'Сарыагач',10000),(2156,1894,2146,'Темирлановка',10000),(2157,1894,2146,'Туркестан',10000),(2158,1894,2146,'Чардара',10000),(2159,1894,2146,'Чаян',10000),(2160,1894,2146,'Чимкент',10000),(2161,1894,2146,'Чулаккурган',10000),(2162,1894,2146,'Шаульдер',10000),(2165,2163,2164,'Дуала',10000),(2167,2163,2166,'Виктория',10000),(2169,2163,2168,'Гаруа',10000),(2171,2163,2170,'Яунде',10000),(2174,2172,2173,'Гранд-Праири',10000),(2175,2172,2173,'Калгари',10000),(2176,2172,2173,'Летбридж',10000),(2177,2172,2173,'Медикин-Хат',10000),(2178,2172,2173,'Ред-Дир',10000),(2179,2172,2173,'Сант-Альберт',10000),(2180,2172,2173,'Эдмонтон',10000),(2182,2172,2181,'Бурнаби',10000),(2183,2172,2181,'Ванкувер',10000),(2184,2172,2181,'Вернон',10000),(2185,2172,2181,'Вест-Ванкувер',10000),(2186,2172,2181,'Дельта',10000),(2187,2172,2181,'Камлупс',10000),(2188,2172,2181,'Кампбелл-Ривер',10000),(2189,2172,2181,'Коквитлам',10000),(2190,2172,2181,'Мапл-Ридж',10000),(2191,2172,2181,'Миссион-Сити',10000),(2192,2172,2181,'Нанаимо',10000),(2193,2172,2181,'Норт-Ванкувер',10000),(2194,2172,2181,'Нью-Вестминстер',10000),(2195,2172,2181,'Порт-Коквитлам',10000),(2196,2172,2181,'Порт-Муди',10000),(2197,2172,2181,'Принц-Джордж',10000),(2198,2172,2181,'Ричмонд',10000),(2199,2172,2181,'Сарри',10000),(2200,2172,2181,'Чилливак',10000),(2202,2172,2201,'Аутремонт',10000),(2203,2172,2201,'Боучервилл',10000),(2204,2172,2201,'Броссард',10000),(2205,2172,2201,'Бьюпорт',10000),(2206,2172,2201,'Вердан',10000),(2207,2172,2201,'Вестмаунт',10000),(2208,2172,2201,'Викториавилл',10000),(2209,2172,2201,'Джонкуир',10000),(2210,2172,2201,'Доллард-дес-Ормо',10000),(2211,2172,2201,'Драммондвилл',10000),(2212,2172,2201,'Квебек',10000),(2213,2172,2201,'Лаваль',10000),(2214,2172,2201,'Левис',10000),(2215,2172,2201,'Монреаль',10000),(2216,2172,2201,'Пиррифондс',10000),(2217,2172,2201,'Репентигни',10000),(2218,2172,2201,'Римауски',10000),(2219,2172,2201,'Роуин',10000),(2220,2172,2201,'Сант-Хуберт',10000),(2221,2172,2201,'Сорел',10000),(2222,2172,2201,'Труа-Ривьер',10000),(2223,2172,2201,'Халл',10000),(2224,2172,2201,'Чарльсбург',10000),(2225,2172,2201,'Чатогуэй',10000),(2226,2172,2201,'Чикоутими',10000),(2227,2172,2201,'Шербрук',10000),(2228,2172,2201,'Элма',10000),(2230,2172,2229,'Брандон',10000),(2231,2172,2229,'Виннипег',10000),(2233,2172,2232,'Галифакс',10000),(2234,2172,2232,'Дартмут',10000),(2236,2172,2235,'Монктон',10000),(2237,2172,2235,'Сент-Джон',10000),(2238,2172,2235,'Фредериктон',10000),(2240,2172,2239,'Корнер-Брук',10000),(2241,2172,2239,'Сент-Джонс',10000),(2243,2172,2242,'Аврора',10000),(2244,2172,2242,'Анкастер',10000),(2245,2172,2242,'Аякс',10000),(2246,2172,2242,'Барлингтон',10000),(2247,2172,2242,'Барри',10000),(2248,2172,2242,'Беллвилл',10000),(2249,2172,2242,'Брамптон',10000),(2250,2172,2242,'Брантфорд',10000),(2251,2172,2242,'Броквилл',10000),(2252,2172,2242,'Ватерлоо',10000),(2253,2172,2242,'Вауган',10000),(2254,2172,2242,'Велланд',10000),(2255,2172,2242,'Виндзор',10000),(2256,2172,2242,'Витби',10000),(2257,2172,2242,'Вудсток',10000),(2258,2172,2242,'Гримсби',10000),(2259,2172,2242,'Гуэлф',10000),(2260,2172,2242,'Каледон',10000),(2261,2172,2242,'Кингстон',10000),(2262,2172,2242,'Китченер',10000),(2263,2172,2242,'Корнуолл',10000),(2264,2172,2242,'Ла-Саль',10000),(2265,2172,2242,'Линкольн',10000),(2266,2172,2242,'Лондон',10000),(2267,2172,2242,'Маркхам',10000),(2268,2172,2242,'Миссиссуга',10000),(2269,2172,2242,'Ниагара-Фоллс',10000),(2270,2172,2242,'Норт-Бэй',10000),(2271,2172,2242,'Оаквилл',10000),(2272,2172,2242,'Овен-Саунд',10000),(2273,2172,2242,'Ориллиа',10000),(2274,2172,2242,'Оттава',10000),(2275,2172,2242,'Ошава',10000),(2276,2172,2242,'Петерборо',10000),(2277,2172,2242,'Пикеринг',10000),(2278,2172,2242,'Ричмонд-Хилл',10000),(2279,2172,2242,'Садбури',10000),(2280,2172,2242,'Сант-Катаринс',10000),(2281,2172,2242,'Сант-Томас',10000),(2282,2172,2242,'Сарниа',10000),(2283,2172,2242,'Солт-Сант-Мари',10000),(2284,2172,2242,'Стони-Крик',10000),(2285,2172,2242,'Стратфорд',10000),(2286,2172,2242,'Тимминс',10000),(2287,2172,2242,'Торонто',10000),(2288,2172,2242,'Тундер Бэй',10000),(2289,2172,2242,'Форт-Эри',10000),(2290,2172,2242,'Хамилтон',10000),(2292,2172,2291,'Шарлоттаун',10000),(2294,2172,2293,'Мус-Яв',10000),(2295,2172,2293,'Реджайна',10000),(2296,2172,2293,'Саскатун',10000),(2299,2297,2298,'Лимассол',10000),(2301,2297,2300,'Никосия',10000),(2302,2297,2300,'Фамагуста',10000),(2305,2303,2304,'Ак-Шыйрак',10000),(2306,2303,2304,'Ананьево',10000),(2307,2303,2304,'Боконбаевское',10000),(2308,2303,2304,'Бостери',10000),(2309,2303,2304,'Каджи-Сай',10000),(2310,2303,2304,'Кызыл Туу',10000),(2311,2303,2304,'Покровка',10000),(2312,2303,2304,'Пржевальск',10000),(2313,2303,2304,'Рыбачье',10000),(2314,2303,2304,'Тюп',10000),(2315,2303,2304,'Чолпон-Ата',10000),(2317,2303,2316,'Бишкек',10000),(2318,2303,2316,'Бордунский',10000),(2319,2303,2316,'Быстровка',10000),(2320,2303,2316,'Ивановка',10000),(2321,2303,2316,'Каинды',10000),(2322,2303,2316,'Кант',10000),(2323,2303,2316,'Кара-Балта',10000),(2324,2303,2316,'Соколук',10000),(2325,2303,2316,'Токмак',10000),(2326,2303,2316,'Фрунзе',10000),(2328,2303,2327,'Ат-Баши',10000),(2329,2303,2327,'Дюрбельджин',10000),(2330,2303,2327,'Казарман',10000),(2331,2303,2327,'Кочкорка',10000),(2332,2303,2327,'Кош-Дебе',10000),(2333,2303,2327,'Мин-Куш',10000),(2334,2303,2327,'Нарын',10000),(2335,2303,2327,'Сары-Булак',10000),(2336,2303,2327,'Суусамыр',10000),(2337,2303,2327,'Угют',10000),(2338,2303,2327,'Чаек',10000),(2339,2303,2327,'Чолпон',10000),(2341,2303,2340,'Ак-Там',10000),(2342,2303,2340,'Ала-Бука',10000),(2343,2303,2340,'Араван',10000),(2344,2303,2340,'Арсланбоб',10000),(2345,2303,2340,'Базар-Курган',10000),(2346,2303,2340,'Баткен',10000),(2347,2303,2340,'Гульча',10000),(2348,2303,2340,'Джалал-Абад',10000),(2349,2303,2340,'Исфана',10000),(2350,2303,2340,'Кара-Кульджа',10000),(2351,2303,2340,'Кара-Суу',10000),(2352,2303,2340,'Караван',10000),(2353,2303,2340,'Карамык',10000),(2354,2303,2340,'Кок-Янгак',10000),(2355,2303,2340,'Кызыл-Кия',10000),(2356,2303,2340,'Майли-Сай',10000),(2357,2303,2340,'Ош',10000),(2358,2303,2340,'Сары-Таш',10000),(2359,2303,2340,'Сопу-Коргон',10000),(2360,2303,2340,'Сулюкта',10000),(2361,2303,2340,'Таш-Кумыр',10000),(2362,2303,2340,'Узген',10000),(2363,2303,2340,'Фрунзе',10000),(2364,2303,2340,'Хайдаркен',10000),(2366,2303,2365,'Аманбаево',10000),(2367,2303,2365,'Кара-Куль',10000),(2368,2303,2365,'Кировское',10000),(2369,2303,2365,'Ленинполь',10000),(2370,2303,2365,'Покровка',10000),(2371,2303,2365,'Талас',10000),(2372,2303,2365,'Токтогул',10000),(2373,2303,2365,'Толук',10000),(2376,2374,2375,'Аксу',10000),(2377,2374,2375,'Урумчи',10000),(2378,2374,2375,'Хами',10000),(2380,2374,2379,'Баотоу',10000),(2381,2374,2379,'Хайлар',10000),(2383,2374,2382,'Ланьчжоу',10000),(2384,2374,2382,'Пинглианг',10000),(2385,2374,2382,'Юмень',10000),(2387,2374,2386,'Наннинг',10000),(2389,2374,2388,'Аншань',10000),(2390,2374,2388,'Далянь',10000),(2391,2374,2388,'Ляоян',10000),(2392,2374,2388,'Шэньян',10000),(2394,2374,2393,'Иаан',10000),(2395,2374,2393,'Суининг',10000),(2397,2374,2396,'Нанпинг',10000),(2399,2374,2398,'Ухань',10000),(2400,2374,2398,'Шаси',10000),(2402,2374,2401,'Иянг',10000),(2403,2374,2401,'Чангша',10000),(2405,2374,2404,'Шихайкванг',10000),(2407,2374,2406,'Харбин',10000),(2409,2374,2408,'Кайфенг',10000),(2410,2374,2408,'Нанянь',10000),(2412,2374,2411,'Лиаоиуан',10000),(2413,2374,2411,'Чанчунь',10000),(2415,2374,2414,'Нанчанг',10000),(2417,2374,2416,'Иангчау',10000),(2418,2374,2416,'Нанкин',10000),(2420,2374,2419,'Венчоу',10000),(2421,2374,2419,'Нингпо',10000),(2422,2374,2419,'Ханчоу',10000),(2423,2374,2419,'Шаохинь',10000),(2425,2374,2424,'Шанхай',10000),(2427,2374,2426,'Вейфанг',10000),(2429,2374,2428,'Тайюань',10000),(2432,2430,2431,'Алагуела',10000),(2434,2430,2433,'Либериа',10000),(2436,2430,2435,'Хередиа',10000),(2438,2430,2437,'Лимон',10000),(2440,2430,2439,'Пунтаренас',10000),(2442,2430,2441,'Сан-Хосе',10000),(2445,2443,2444,'Аль-Яхра',10000),(2447,2443,2446,'Эль-Кувейт',10000),(2450,2448,2449,'Айзпуте',10000),(2451,2448,2449,'Айнажи',10000),(2452,2448,2449,'Алоя',10000),(2453,2448,2449,'Алсунга',10000),(2454,2448,2449,'Алуксне',10000),(2455,2448,2449,'Апе',10000),(2456,2448,2449,'Ауце',10000),(2457,2448,2449,'Балви',10000),(2458,2448,2449,'Балдоне',10000),(2459,2448,2449,'Баложи',10000),(2460,2448,2449,'Бауска',10000),(2461,2448,2449,'Бене',10000),(2462,2448,2449,'Броцены',10000),(2463,2448,2449,'Валдемарпилс',10000),(2464,2448,2449,'Валка',10000),(2465,2448,2449,'Валмиера',10000),(2466,2448,2449,'Варакляны',10000),(2467,2448,2449,'Вентспилс',10000),(2468,2448,2449,'Виесите',10000),(2469,2448,2449,'Виляка',10000),(2470,2448,2449,'Виляны',10000),(2471,2448,2449,'Гробиня',10000),(2472,2448,2449,'Гулбитис',10000),(2473,2448,2449,'Гульбене',10000),(2474,2448,2449,'Даугавпилс',10000),(2475,2448,2449,'Добеле',10000),(2476,2448,2449,'Дундага',10000),(2477,2448,2449,'Дурбе',10000),(2478,2448,2449,'Елгава',10000),(2479,2448,2449,'Зилупе',10000),(2480,2448,2449,'Иецава',10000),(2481,2448,2449,'Илуксте',10000),(2482,2448,2449,'Калнциемс',10000),(2483,2448,2449,'Кандава',10000),(2484,2448,2449,'Карсава',10000),(2485,2448,2449,'Кегумс',10000),(2486,2448,2449,'Кокнесе',10000),(2487,2448,2449,'Колка',10000),(2488,2448,2449,'Краслава',10000),(2489,2448,2449,'Кулдига',10000),(2490,2448,2449,'Ливаны',10000),(2491,2448,2449,'Лиепая',10000),(2492,2448,2449,'Лимбажи',10000),(2493,2448,2449,'Лудза',10000),(2494,2448,2449,'Мадона',10000),(2495,2448,2449,'Огре',10000),(2496,2448,2449,'Плявиняс',10000),(2497,2448,2449,'Прейли',10000),(2498,2448,2449,'Резекне',10000),(2499,2448,2449,'Рига',10000),(2500,2448,2449,'Салдус',10000),(2501,2448,2449,'Сигулда',10000),(2502,2448,2449,'Стучка',10000),(2503,2448,2449,'Талси',10000),(2504,2448,2449,'Тукумс',10000),(2505,2448,2449,'Цесис',10000),(2506,2448,2449,'Экабпилс',10000),(2507,2448,2449,'Элея',10000),(2508,2448,2449,'Юрмала',10000),(2511,2509,2510,'Триполи',10000),(2513,2509,2512,'Бенгази',10000),(2516,2514,2515,'Адутишкис',10000),(2517,2514,2515,'Алитус',10000),(2518,2514,2515,'Аникщчяй',10000),(2519,2514,2515,'Ариогала',10000),(2520,2514,2515,'Балтойи-Воке',10000),(2521,2514,2515,'Бальберишкис',10000),(2522,2514,2515,'Биржай',10000),(2523,2514,2515,'Бирштонас',10000),(2524,2514,2515,'Вабальнинкас',10000),(2525,2514,2515,'Ванджиогала',10000),(2526,2514,2515,'Варена',10000),(2527,2514,2515,'Варняй',10000),(2528,2514,2515,'Вейсеяй',10000),(2529,2514,2515,'Виевис',10000),(2530,2514,2515,'Вилкавишкис',10000),(2531,2514,2515,'Вилькия',10000),(2532,2514,2515,'Вильно',10000),(2533,2514,2515,'Вильнюс',10000),(2534,2514,2515,'Вирбалис',10000),(2535,2514,2515,'Гаргждай',10000),(2536,2514,2515,'Гарлява',10000),(2537,2514,2515,'Гелгаудишкис',10000),(2538,2514,2515,'Гиедрайчяй',10000),(2539,2514,2515,'Даугай',10000),(2540,2514,2515,'Дотнува',10000),(2541,2514,2515,'Друскининкай',10000),(2542,2514,2515,'Дукштас',10000),(2543,2514,2515,'Дусетос',10000),(2544,2514,2515,'Езнас',10000),(2545,2514,2515,'Ейшишес',10000),(2546,2514,2515,'Жагаре',10000),(2547,2514,2515,'Жямайчю Наумиестис',10000),(2548,2514,2515,'Зарасай',10000),(2549,2514,2515,'Игналина',10000),(2550,2514,2515,'Ионишкис',10000),(2551,2514,2515,'Йодкранте',10000),(2552,2514,2515,'Йонава',10000),(2553,2514,2515,'Казлу-Руда',10000),(2554,2514,2515,'Кайшядорис',10000),(2555,2514,2515,'Калвария',10000),(2556,2514,2515,'Капсукас',10000),(2557,2514,2515,'Каунас',10000),(2558,2514,2515,'Качергине',10000),(2559,2514,2515,'Кедайняй',10000),(2560,2514,2515,'Кельме',10000),(2561,2514,2515,'Кибартай',10000),(2562,2514,2515,'Клайпеда',10000),(2563,2514,2515,'Ковно',10000),(2564,2514,2515,'Кретинга',10000),(2565,2514,2515,'Кудиркос Наумиестис',10000),(2566,2514,2515,'Кулаутува',10000),(2567,2514,2515,'куодас',10000),(2568,2514,2515,'Купишкис',10000),(2569,2514,2515,'Куршенай',10000),(2570,2514,2515,'Лаздияй',10000),(2571,2514,2515,'Лейпалингис',10000),(2572,2514,2515,'Лентварис',10000),(2573,2514,2515,'Мажейкяй',10000),(2574,2514,2515,'Майшягала',10000),(2575,2514,2515,'Меркине',10000),(2576,2514,2515,'Молетай',10000),(2577,2514,2515,'Науйойи-Акмяне',10000),(2578,2514,2515,'Неринга',10000),(2579,2514,2515,'Пабраде',10000),(2580,2514,2515,'Пагегяй',10000),(2581,2514,2515,'Пакруоис',10000),(2582,2514,2515,'Паланга',10000),(2583,2514,2515,'Паневежис',10000),(2584,2514,2515,'Пасвалис',10000),(2585,2514,2515,'Плунге',10000),(2586,2514,2515,'Прейла',10000),(2587,2514,2515,'Приекуле',10000),(2588,2514,2515,'Приенай',10000),(2589,2514,2515,'Рагува',10000),(2590,2514,2515,'Радвилишкис',10000),(2591,2514,2515,'Расейняй',10000),(2592,2514,2515,'Риетавас',10000),(2593,2514,2515,'Рокишкис',10000),(2594,2514,2515,'Русне',10000),(2595,2514,2515,'Салантай',10000),(2596,2514,2515,'Симнас',10000),(2597,2514,2515,'Скаудвиле',10000),(2598,2514,2515,'Таураге',10000),(2599,2514,2515,'Тельшяй',10000),(2600,2514,2515,'Тракай',10000),(2601,2514,2515,'Укмерге',10000),(2602,2514,2515,'Утена',10000),(2603,2514,2515,'Шакяй',10000),(2604,2514,2515,'Шальчининкай',10000),(2605,2514,2515,'Швенченеляй',10000),(2606,2514,2515,'Швенчионис',10000),(2607,2514,2515,'Шета',10000),(2608,2514,2515,'Шилале',10000),(2609,2514,2515,'Шилуте',10000),(2610,2514,2515,'Ширвинтос',10000),(2611,2514,2515,'Шяуляй',10000),(2612,2514,2515,'Эжярелис',10000),(2613,2514,2515,'Юрбаркас',10000),(2616,2614,2615,'Люксембург',10000),(2619,2617,2618,'Агуаскалинтес',10000),(2621,2617,2620,'Акаюкан',10000),(2622,2617,2620,'Алтотонга',10000),(2623,2617,2620,'Альварадо',10000),(2624,2617,2620,'Веракрус',10000),(2625,2617,2620,'Коатепек',10000),(2626,2617,2620,'Коатцакоалькос',10000),(2627,2617,2620,'Кордоба',10000),(2628,2617,2620,'Косамалоапан (де Карпио)',10000),(2629,2617,2620,'Мартинес-де-ла-Торре',10000),(2630,2617,2620,'Минатитлан',10000),(2631,2617,2620,'Оризаба',10000),(2632,2617,2620,'Пануко',10000),(2633,2617,2620,'Папантла (де Оларте)',10000),(2634,2617,2620,'Поза-Рика-де-Хидальго',10000),(2635,2617,2620,'Сан-Андрес-Тукстла',10000),(2636,2617,2620,'Тихуатлан',10000),(2637,2617,2620,'Тукспан-де-Родригес-Кано',10000),(2638,2617,2620,'Тьерра-Бланка',10000),(2640,2617,2639,'Акапулько',10000),(2641,2617,2639,'Игуала',10000),(2642,2617,2639,'Такско-де-Аларкон',10000),(2643,2617,2639,'Текпан-де-Галина',10000),(2644,2617,2639,'Телолоапан',10000),(2645,2617,2639,'Чилпанкинго',10000),(2647,2617,2646,'Акамбаро',10000),(2648,2617,2646,'Валле-де-Сантъяго',10000),(2649,2617,2646,'Гуанахуато',10000),(2650,2617,2646,'Ирапуато',10000),(2651,2617,2646,'Леон (де лос Альдамас)',10000),(2652,2617,2646,'Пенхамо',10000),(2653,2617,2646,'Саламанка',10000),(2654,2617,2646,'Селая',10000),(2655,2617,2646,'Силао',10000),(2657,2617,2656,'Гомес-Палацио',10000),(2658,2617,2656,'Дуранго',10000),(2659,2617,2656,'Канатлан',10000),(2660,2617,2656,'Сьюдад-Лердо',10000),(2662,2617,2661,'Гуэхутла-де-Рейес',10000),(2663,2617,2661,'Иксмикуилпан',10000),(2664,2617,2661,'Пачука (де Сото)',10000),(2665,2617,2661,'Туланкинго',10000),(2667,2617,2666,'Кампеч',10000),(2669,2617,2668,'Куэретаро',10000),(2671,2617,2670,'Четумал',10000),(2673,2617,2672,'Матаморос',10000),(2674,2617,2672,'Монклова',10000),(2675,2617,2672,'Пьедрас-Неграс',10000),(2676,2617,2672,'Салтилло',10000),(2677,2617,2672,'Торреон',10000),(2678,2617,2672,'Фронтера',10000),(2680,2617,2679,'Колима',10000),(2681,2617,2679,'Манзанилло',10000),(2682,2617,2679,'Текоман',10000),(2684,2617,2683,'Куаутитлан',10000),(2685,2617,2683,'Наукалпан',10000),(2686,2617,2683,'Текскоко (де Мора)',10000),(2687,2617,2683,'Толука (де Лердо)',10000),(2688,2617,2683,'Хилотепек-де-Абасоло',10000),(2689,2617,2683,'Чалко',10000),(2691,2617,2690,'Апачинган',10000),(2692,2617,2690,'Закапу',10000),(2693,2617,2690,'Замора-де-Хидальго',10000),(2694,2617,2690,'Зитакуаро',10000),(2695,2617,2690,'Ла-Пидад (Кавадас)',10000),(2696,2617,2690,'Морелиа',10000),(2697,2617,2690,'Пацкуаро',10000),(2698,2617,2690,'Пуруандиро',10000),(2699,2617,2690,'Сахуэйо',10000),(2701,2617,2700,'Куаутла-Морелос',10000),(2702,2617,2700,'Куэрнавака',10000),(2703,2617,2700,'Хохутла',10000),(2705,2617,2704,'Акапонета',10000),(2706,2617,2704,'Компостела',10000),(2707,2617,2704,'Текуала',10000),(2708,2617,2704,'Тепик',10000),(2710,2617,2709,'Мехикали',10000),(2711,2617,2709,'Тиюана',10000),(2712,2617,2709,'Энсенада',10000),(2714,2617,2713,'Кадерита-Хименес',10000),(2715,2617,2713,'Линарес',10000),(2716,2617,2713,'Монтеррей',10000),(2718,2617,2717,'Оаксака (де Хуарес)',10000),(2719,2617,2717,'Почутла',10000),(2720,2617,2717,'Техуантепек',10000),(2721,2617,2717,'Тлаколула (де Матаморос)',10000),(2722,2617,2717,'Тукстепек',10000),(2723,2617,2717,'Хуахуапан-де-Леон',10000),(2724,2617,2717,'Хучитан (де Сарагоса)',10000),(2726,2617,2725,'Ицукар-де-Матаморос',10000),(2727,2617,2725,'Пуэбла (де Зарагоза)',10000),(2728,2617,2725,'Техуакан',10000),(2729,2617,2725,'Хуаучинанго',10000),(2731,2617,2730,'Закатекас',10000),(2732,2617,2730,'Сан-Мигель',10000),(2733,2617,2730,'Сомбререт',10000),(2734,2617,2730,'Фреснилло',10000),(2736,2617,2735,'Матехуала',10000),(2737,2617,2735,'Риоверде',10000),(2738,2617,2735,'Сан-Луис-Потоси',10000),(2739,2617,2735,'Сбюдад-де-Валлес',10000),(2740,2617,2735,'Херез-де-Гарсиа-Салинас',10000),(2742,2617,2741,'Гуасейв',10000),(2743,2617,2741,'Кулиакан',10000),(2744,2617,2741,'Мазатлан',10000),(2745,2617,2741,'Эскуинапа (де Хидальго)',10000),(2747,2617,2746,'Гуэймас',10000),(2748,2617,2746,'Емпалм',10000),(2749,2617,2746,'Навохоа',10000),(2750,2617,2746,'Сан-Луис-Рио-Колорадо',10000),(2751,2617,2746,'Сьюдад-Обрегон',10000),(2752,2617,2746,'Хермосилло',10000),(2753,2617,2746,'Хероика-Ногалес',10000),(2754,2617,2746,'Хуатабампо',10000),(2756,2617,2755,'Виллахермоса',10000),(2757,2617,2755,'Макуспана',10000),(2758,2617,2755,'Хуимангуилло',10000),(2760,2617,2759,'Валле-Хермосо',10000),(2761,2617,2759,'Нуэво-Ларедо',10000),(2762,2617,2759,'Риноса',10000),(2763,2617,2759,'Сьюдад-Мадеро',10000),(2764,2617,2759,'Тампико',10000),(2765,2617,2759,'Чиудад-Викториа',10000),(2767,2617,2766,'Мехико',10000),(2769,2617,2768,'Амека',10000),(2770,2617,2768,'Арандас',10000),(2771,2617,2768,'Атотонилко',10000),(2772,2617,2768,'Аутлан-де-Наварро',10000),(2773,2617,2768,'Гвадалахара',10000),(2774,2617,2768,'Ла-Барка',10000),(2775,2617,2768,'Лагос-де-Морено',10000),(2776,2617,2768,'Сьюдад-Гузман',10000),(2777,2617,2768,'Тепатитлан (де Морелос)',10000),(2779,2617,2778,'Чиуауа',10000),(2781,2617,2780,'Комитан (де Домингес)',10000),(2782,2617,2780,'Тапачула',10000),(2783,2617,2780,'Тонала',10000),(2784,2617,2780,'Тукстла-Гутьеррес',10000),(2785,2617,2780,'Чинталапа-де-Фигуэра',10000),(2787,2617,2786,'Мерида',10000),(2790,2788,2789,'Атаки',10000),(2791,2788,2789,'Бельцы',10000),(2792,2788,2789,'Бендеры',10000),(2793,2788,2789,'Бессарабка',10000),(2794,2788,2789,'Бричаны',10000),(2795,2788,2789,'Быковец',10000),(2796,2788,2789,'Вишневка',10000),(2797,2788,2789,'Вулканешты',10000),(2798,2788,2789,'Глодяны',10000),(2799,2788,2789,'Григориополь',10000),(2800,2788,2789,'Дондюшаны',10000),(2801,2788,2789,'Дрокия',10000),(2802,2788,2789,'Дубоссары',10000),(2803,2788,2789,'Единцы',10000),(2804,2788,2789,'Кагул',10000),(2805,2788,2789,'Калараш',10000),(2806,2788,2789,'Каменка',10000),(2807,2788,2789,'Каушаны',10000),(2808,2788,2789,'Кишинев',10000),(2809,2788,2789,'Комрат',10000),(2810,2788,2789,'Корнешты',10000),(2811,2788,2789,'Котовск',10000),(2812,2788,2789,'Криуляны',10000),(2813,2788,2789,'Леово',10000),(2814,2788,2789,'Ниспорены',10000),(2815,2788,2789,'Новые Анены',10000),(2816,2788,2789,'Окница',10000),(2817,2788,2789,'Оргеев',10000),(2818,2788,2789,'Резина',10000),(2819,2788,2789,'Рыбница',10000),(2820,2788,2789,'Рышканы',10000),(2821,2788,2789,'Слободзея',10000),(2822,2788,2789,'Сороки',10000),(2823,2788,2789,'Страшены',10000),(2824,2788,2789,'Тараклия',10000),(2825,2788,2789,'Теленешты',10000),(2826,2788,2789,'Тирасполь',10000),(2827,2788,2789,'Унгены',10000),(2828,2788,2789,'Фалешты',10000),(2829,2788,2789,'Флорешты',10000),(2830,2788,2789,'Чадыр-Лунга',10000),(2831,2788,2789,'Чимишлия',10000),(2832,2788,2789,'Чишмикиой',10000),(2835,2833,2834,'Монако',10000),(2836,2833,2834,'Монте-Карло',10000),(2839,2837,2838,'Манукау',10000),(2840,2837,2838,'Окленд',10000),(2842,2837,2841,'Роторуа',10000),(2843,2837,2841,'Тауранга',10000),(2845,2837,2844,'Ашбуртон',10000),(2846,2837,2844,'Тимару',10000),(2848,2837,2847,'Гисборн',10000),(2850,2837,2849,'Напир',10000),(2851,2837,2849,'Хастингс',10000),(2853,2837,2852,'Вангануи',10000),(2854,2837,2852,'Палмерстон-Норт',10000),(2856,2837,2855,'Бленхейм',10000),(2858,2837,2857,'Нельсон',10000),(2860,2837,2859,'Вангарей',10000),(2862,2837,2861,'Дунедин',10000),(2864,2837,2863,'Гор',10000),(2865,2837,2863,'Инверкаргилл',10000),(2867,2837,2866,'Нью-Плимут',10000),(2868,2837,2866,'Хавера',10000),(2870,2837,2869,'Ричмонд',10000),(2872,2837,2871,'Гамильтон',10000),(2873,2837,2871,'Таупо',10000),(2875,2837,2874,'Веллингтон',10000),(2876,2837,2874,'Ловер-Хатт',10000),(2877,2837,2874,'Мастертон',10000),(2879,2837,2878,'Греймоут',10000),(2882,2880,2881,'Драммен',10000),(2884,2880,2883,'Кристиансанд',10000),(2886,2880,2885,'Нарвик',10000),(2888,2880,2887,'Осло',10000),(2890,2880,2889,'Ставангер',10000),(2892,2880,2891,'Тронхейм',10000),(2894,2880,2893,'Скин',10000),(2896,2880,2895,'Берген',10000),(2899,2897,2898,'Билава',10000),(2900,2897,2898,'Богатыня',10000),(2901,2897,2898,'Болеславец',10000),(2902,2897,2898,'Валбржич',10000),(2903,2897,2898,'Вроцлав',10000),(2904,2897,2898,'Вроцлав ОА',10000),(2905,2897,2898,'Глогов',10000),(2906,2897,2898,'Дзирзонев',10000),(2907,2897,2898,'Желеня-Гора',10000),(2908,2897,2898,'Згорзелец',10000),(2909,2897,2898,'Клодзко',10000),(2910,2897,2898,'Легница',10000),(2911,2897,2898,'Любан',10000),(2912,2897,2898,'Нова-Руда',10000),(2913,2897,2898,'Олава',10000),(2914,2897,2898,'Олесница',10000),(2915,2897,2898,'Полковице',10000),(2916,2897,2898,'Свибоджице',10000),(2917,2897,2898,'Свидница',10000),(2918,2897,2898,'Явор',10000),(2920,2897,2919,'Бродница',10000),(2921,2897,2919,'Быдгощ',10000),(2922,2897,2919,'Влоцлавек',10000),(2923,2897,2919,'Грудзядзь',10000),(2924,2897,2919,'Иновроцлав',10000),(2925,2897,2919,'Накло-над-Нотеча',10000),(2926,2897,2919,'Свечье',10000),(2927,2897,2919,'Торун',10000),(2928,2897,2919,'Челмно',10000),(2930,2897,2929,'Горзов-Виелкопольски',10000),(2931,2897,2929,'Заган',10000),(2932,2897,2929,'Зары',10000),(2933,2897,2929,'Зелона-Гора',10000),(2934,2897,2929,'Меджиржеч',10000),(2935,2897,2929,'Нова-Сол',10000),(2936,2897,2929,'Свебоджин',10000),(2938,2897,2937,'Андрыхов',10000),(2939,2897,2937,'Бочния',10000),(2940,2897,2937,'Горлице',10000),(2941,2897,2937,'Закопане',10000),(2942,2897,2937,'Краков',10000),(2943,2897,2937,'Краков (обс. ул. Коперника)',10000),(2944,2897,2937,'Краков (обс. Форт Скала)',10000),(2945,2897,2937,'Краков (ш. им. Еромского)',10000),(2946,2897,2937,'Краков (ш. им. Нарутауича)',10000),(2947,2897,2937,'Краков (ш. ул. Вроклавска)',10000),(2948,2897,2937,'Краков (ш. ул. Галла)',10000),(2949,2897,2937,'Краков (ш. ул. Коперника)',10000),(2950,2897,2937,'Краков (ш. ул. Симирадзка)',10000),(2951,2897,2937,'Науи Сач',10000),(2952,2897,2937,'Новы-Тарг',10000),(2953,2897,2937,'Олкуш',10000),(2954,2897,2937,'Освецим',10000),(2955,2897,2937,'Скавина',10000),(2956,2897,2937,'Тарнов',10000),(2957,2897,2937,'Хрзанов',10000),(2959,2897,2958,'Варшава',10000),(2960,2897,2958,'Варшава ОА ПВ',10000),(2961,2897,2958,'Варшава ОА УВ',10000),(2962,2897,2958,'Воломин',10000),(2963,2897,2958,'Вышков',10000),(2964,2897,2958,'Гостынин',10000),(2965,2897,2958,'Гроджиск-Мазовецки',10000),(2966,2897,2958,'Жирардов',10000),(2967,2897,2958,'Козенице',10000),(2968,2897,2958,'Легионово',10000),(2969,2897,2958,'Минск-Мазовецки',10000),(2970,2897,2958,'Млава',10000),(2971,2897,2958,'Новы-Двор-Мазовецки',10000),(2972,2897,2958,'Остров-Мазовецки',10000),(2973,2897,2958,'Остролека',10000),(2974,2897,2958,'Отвок',10000),(2975,2897,2958,'Пионки',10000),(2976,2897,2958,'Плонск',10000),(2977,2897,2958,'Плоцк',10000),(2978,2897,2958,'Прушков',10000),(2979,2897,2958,'Пьястов',10000),(2980,2897,2958,'Радом',10000),(2981,2897,2958,'Седльце',10000),(2982,2897,2958,'Сохачев',10000),(2984,2897,2983,'Дебица',10000),(2985,2897,2983,'Кросно',10000),(2986,2897,2983,'Мелец',10000),(2987,2897,2983,'Пржемысл',10000),(2988,2897,2983,'Рхешов',10000),(2989,2897,2983,'Санок',10000),(2990,2897,2983,'Сталова-Вола',10000),(2991,2897,2983,'Тарнобржег',10000),(2992,2897,2983,'Ярослав',10000),(2993,2897,2983,'Ясло',10000),(2995,2897,2994,'Аугустов',10000),(2996,2897,2994,'Белосток',10000),(2997,2897,2994,'Бельск Подласки',10000),(2998,2897,2994,'Граево',10000),(2999,2897,2994,'Замбров',10000),(3000,2897,2994,'Ломжа',10000),(3001,2897,2994,'Сувалки',10000),(3002,2897,2994,'Хайнавка',10000),(3004,2897,3003,'Вейхерово',10000),(3005,2897,3003,'Гданьск',10000),(3006,2897,3003,'Гдыня',10000),(3007,2897,3003,'Квиджин',10000),(3008,2897,3003,'Косцержина',10000),(3009,2897,3003,'Леборк',10000),(3010,2897,3003,'Мальборк',10000),(3011,2897,3003,'Прущ-Гданьски',10000),(3012,2897,3003,'Румия',10000),(3013,2897,3003,'Слупск',10000),(3014,2897,3003,'Сопот',10000),(3015,2897,3003,'Старогард-Гданьски',10000),(3016,2897,3003,'Тчев',10000),(3017,2897,3003,'Чойнице',10000),(3019,2897,3018,'Беджин',10000),(3020,2897,3018,'Белско-Бяла',10000),(3021,2897,3018,'Берун-Новы',10000),(3022,2897,3018,'Бытом',10000),(3023,2897,3018,'Водзислав-Сласки',10000),(3024,2897,3018,'Гливице',10000),(3025,2897,3018,'Даброваа-Горница',10000),(3026,2897,3018,'Живец',10000),(3027,2897,3018,'Забрже',10000),(3028,2897,3018,'Заверцие',10000),(3029,2897,3018,'Зоры',10000),(3030,2897,3018,'Катовице',10000),(3031,2897,3018,'Люблинец',10000),(3032,2897,3018,'Миколов',10000),(3033,2897,3018,'Мысловице',10000),(3034,2897,3018,'Мышков',10000),(3035,2897,3018,'Пекары-Слаские',10000),(3036,2897,3018,'Пшчина',10000),(3037,2897,3018,'Пысковице',10000),(3038,2897,3018,'Рачиборз',10000),(3039,2897,3018,'Руда-Сласка',10000),(3040,2897,3018,'Рыбник',10000),(3041,2897,3018,'Сосновец',10000),(3042,2897,3018,'Тарновские-Горы',10000),(3043,2897,3018,'Тыхи',10000),(3044,2897,3018,'Цеховице-Дзедзице',10000),(3045,2897,3018,'Честохова',10000),(3046,2897,3018,'Чешин',10000),(3047,2897,3018,'Чорзов',10000),(3048,2897,3018,'Яворзно',10000),(3050,2897,3049,'Кельце',10000),(3051,2897,3049,'Конские',10000),(3052,2897,3049,'Островец-Свитокржиски',10000),(3053,2897,3049,'Сандомерж',10000),(3054,2897,3049,'Скаржиско-Каменна',10000),(3055,2897,3049,'Стараховице',10000),(3057,2897,3056,'Бартошице',10000),(3058,2897,3056,'Гижичко',10000),(3059,2897,3056,'Дзялдово',10000),(3060,2897,3056,'Илава',10000),(3061,2897,3056,'Кетржин',10000),(3062,2897,3056,'Мрагово',10000),(3063,2897,3056,'Ольштын',10000),(3064,2897,3056,'Острода',10000),(3065,2897,3056,'Шхов',10000),(3066,2897,3056,'Элблаг',10000),(3067,2897,3056,'Элк',10000),(3069,2897,3068,'Вагровец',10000),(3070,2897,3068,'Вржесня',10000),(3071,2897,3068,'Гнезно',10000),(3072,2897,3068,'Гостын',10000),(3073,2897,3068,'Калиш',10000),(3074,2897,3068,'Коло',10000),(3075,2897,3068,'Конин',10000),(3076,2897,3068,'Косциян',10000),(3077,2897,3068,'Кротошин',10000),(3078,2897,3068,'Лешно',10000),(3079,2897,3068,'Любон',10000),(3080,2897,3068,'Остров-Велкопольски',10000),(3081,2897,3068,'Пила',10000),(3082,2897,3068,'Познань',10000),(3083,2897,3068,'Равич',10000),(3084,2897,3068,'Сваржедж',10000),(3085,2897,3068,'Срем',10000),(3086,2897,3068,'Срода-Велкопольска',10000),(3087,2897,3068,'Турек',10000),(3088,2897,3068,'Чодзиеж',10000),(3089,2897,3068,'Яроцин',10000),(3091,2897,3090,'Валч',10000),(3092,2897,3090,'Голенёв',10000),(3093,2897,3090,'Грифино',10000),(3094,2897,3090,'Колобржег',10000),(3095,2897,3090,'Кошалин',10000),(3096,2897,3090,'Поличе',10000),(3097,2897,3090,'Свинойски',10000),(3098,2897,3090,'Старгард-Щецинский',10000),(3099,2897,3090,'Щецин',10000),(3100,2897,3090,'Щецинек',10000),(3102,2897,3101,'Александров-Ёдзжи',10000),(3103,2897,3101,'Вилун',10000),(3104,2897,3101,'Згерз',10000),(3105,2897,3101,'Здунска-Вола',10000),(3106,2897,3101,'Кутно',10000),(3107,2897,3101,'Ласк',10000),(3108,2897,3101,'Ловиц',10000),(3109,2897,3101,'Лодзь',10000),(3110,2897,3101,'Озорков',10000),(3111,2897,3101,'Опочно',10000),(3112,2897,3101,'Пабьянице',10000),(3113,2897,3101,'Пиотрков-Трыбунальски',10000),(3114,2897,3101,'Радомско',10000),(3115,2897,3101,'Серадзь',10000),(3116,2897,3101,'Скерневице',10000),(3117,2897,3101,'Томашов-Мазовецки',10000),(3119,2897,3118,'Биала Подласка',10000),(3120,2897,3118,'Билгорай',10000),(3121,2897,3118,'Замосц',10000),(3122,2897,3118,'Красник',10000),(3123,2897,3118,'Красныстав',10000),(3124,2897,3118,'Лешна',10000),(3125,2897,3118,'Лубартов',10000),(3126,2897,3118,'Луков',10000),(3127,2897,3118,'Люблин',10000),(3128,2897,3118,'Пулавы',10000),(3129,2897,3118,'Свидник',10000),(3130,2897,3118,'Томашов Любельски',10000),(3131,2897,3118,'Хрубешов',10000),(3132,2897,3118,'Челм',10000),(3134,2897,3133,'Бржег',10000),(3135,2897,3133,'Кедзержин-Козле',10000),(3136,2897,3133,'Ключборк',10000),(3137,2897,3133,'Ныса',10000),(3138,2897,3133,'Ополе',10000),(3139,2897,3133,'Прудник',10000),(3140,2897,3133,'Стржельце-Опольские',10000),(3143,3141,3142,'Коимбра',10000),(3145,3141,3144,'Фунчал',10000),(3147,3141,3146,'Амадора',10000),(3148,3141,3146,'Лиссабон',10000),(3149,3141,3146,'Сетубаль',10000),(3151,3141,3150,'Брага',10000),(3152,3141,3150,'Вила-Нова-де-Гайя',10000),(3153,3141,3150,'Матосинхос',10000),(3154,3141,3150,'Опорто',10000),(3155,3141,3150,'Порту',10000),(3158,3156,3157,'Сант-Денис',10000),(3161,3159,3160,'Акташ',10000),(3162,3159,3160,'Акутиха',10000),(3163,3159,3160,'Алейск',10000),(3164,3159,3160,'Алтайский',10000),(3165,3159,3160,'Баево',10000),(3166,3159,3160,'Барнаул',10000),(3167,3159,3160,'Белово',10000),(3168,3159,3160,'Белокуриха',10000),(3169,3159,3160,'Белоярск',10000),(3170,3159,3160,'Бийск',10000),(3171,3159,3160,'Благовещенск',10000),(3172,3159,3160,'Боровлянка',10000),(3173,3159,3160,'Бурла',10000),(3174,3159,3160,'Бурсоль',10000),(3175,3159,3160,'Волчиха',10000),(3176,3159,3160,'Горно-Алтайск',10000),(3177,3159,3160,'Горняк',10000),(3178,3159,3160,'Ельцовка',10000),(3179,3159,3160,'Залесово',10000),(3180,3159,3160,'Заринск',10000),(3181,3159,3160,'Заток',10000),(3182,3159,3160,'Змеиногорск',10000),(3183,3159,3160,'Камень-на-Оби',10000),(3184,3159,3160,'Ключи',10000),(3185,3159,3160,'Кош-Агач',10000),(3186,3159,3160,'Красногорское',10000),(3187,3159,3160,'Краснощеково',10000),(3188,3159,3160,'Кулунда',10000),(3189,3159,3160,'Кытманово',10000),(3190,3159,3160,'Мамонтово',10000),(3191,3159,3160,'Новичиха',10000),(3192,3159,3160,'Новоалтайск',10000),(3193,3159,3160,'Онгудай',10000),(3194,3159,3160,'Павловск',10000),(3195,3159,3160,'Петропавловское',10000),(3196,3159,3160,'Поспелиха',10000),(3197,3159,3160,'Ребриха',10000),(3198,3159,3160,'Родино',10000),(3199,3159,3160,'Рубцовск',10000),(3200,3159,3160,'Славгород',10000),(3201,3159,3160,'Смоленское',10000),(3202,3159,3160,'Солонешное',10000),(3203,3159,3160,'Солтон',10000),(3204,3159,3160,'Староаллейское',10000),(3205,3159,3160,'Табуны',10000),(3206,3159,3160,'Тальменка',10000),(3207,3159,3160,'Топчиха',10000),(3208,3159,3160,'Троицкое',10000),(3209,3159,3160,'Турочак',10000),(3210,3159,3160,'Тюменцево',10000),(3211,3159,3160,'Угловское',10000),(3212,3159,3160,'Усть-Калманка',10000),(3213,3159,3160,'Усть-Кан',10000),(3214,3159,3160,'Усть-Кокса',10000),(3215,3159,3160,'Усть-Улаган',10000),(3216,3159,3160,'Усть-Чарышская Пристань',10000),(3217,3159,3160,'Хабары',10000),(3218,3159,3160,'Целинное',10000),(3219,3159,3160,'Чарышское',10000),(3220,3159,3160,'Шебалино',10000),(3221,3159,3160,'Шелаболиха',10000),(3222,3159,3160,'Шипуново',10000),(3224,3159,3223,'Айгунь',10000),(3225,3159,3223,'Архара',10000),(3226,3159,3223,'Белогорск',10000),(3227,3159,3223,'Благовещенск (Амурская обл.)',10000),(3228,3159,3223,'Бурея',10000),(3229,3159,3223,'Возжаевка',10000),(3230,3159,3223,'Екатеринославка',10000),(3231,3159,3223,'Ерофей Павлович',10000),(3232,3159,3223,'Завитинск',10000),(3233,3159,3223,'Зея',10000),(3234,3159,3223,'Златоустовск',10000),(3235,3159,3223,'Ивановка',10000),(3236,3159,3223,'Коболдо',10000),(3237,3159,3223,'Магдагачи',10000),(3238,3159,3223,'Новобурейский',10000),(3239,3159,3223,'Поярково',10000),(3240,3159,3223,'Райчихинск',10000),(3241,3159,3223,'Ромны',10000),(3242,3159,3223,'Свободный',10000),(3243,3159,3223,'Серышево',10000),(3244,3159,3223,'Сковородино',10000),(3245,3159,3223,'Стойба',10000),(3246,3159,3223,'Тамбовка',10000),(3247,3159,3223,'Тында',10000),(3248,3159,3223,'Шимановск',10000),(3249,3159,3223,'Экимчан',10000),(3250,3159,3223,'Ядрино',10000),(3252,3159,3251,'Амдерма',10000),(3253,3159,3251,'Архангельск',10000),(3254,3159,3251,'Березник',10000),(3255,3159,3251,'Вельск',10000),(3256,3159,3251,'Верхняя Тойма',10000),(3257,3159,3251,'Волошка',10000),(3258,3159,3251,'Вычегодский',10000),(3259,3159,3251,'Емца',10000),(3260,3159,3251,'Илеза',10000),(3261,3159,3251,'Ильинско-Подомское',10000),(3262,3159,3251,'Каргополь',10000),(3263,3159,3251,'Карпогоры',10000),(3264,3159,3251,'Кодино',10000),(3265,3159,3251,'Коноша',10000),(3266,3159,3251,'Коряжма',10000),(3267,3159,3251,'Котлас',10000),(3268,3159,3251,'Красноборск',10000),(3269,3159,3251,'Лешуконское',10000),(3270,3159,3251,'Мезень',10000),(3271,3159,3251,'Нарьян-Мар',10000),(3272,3159,3251,'Новодвинск',10000),(3273,3159,3251,'Няндома',10000),(3274,3159,3251,'Онега',10000),(3275,3159,3251,'Пинега',10000),(3276,3159,3251,'Плесецк',10000),(3277,3159,3251,'Северодвинск',10000),(3278,3159,3251,'Сольвычегодск',10000),(3279,3159,3251,'Холмогоры',10000),(3280,3159,3251,'Шенкурск',10000),(3281,3159,3251,'Яренск',10000),(3283,3159,3282,'Астрахань',10000),(3284,3159,3282,'Ахтубинск',10000),(3285,3159,3282,'Верхний Баскунчак',10000),(3286,3159,3282,'Володарский',10000),(3287,3159,3282,'Енотаевка',10000),(3288,3159,3282,'Икряное',10000),(3289,3159,3282,'Камызяк',10000),(3290,3159,3282,'Капустин Яр',10000),(3291,3159,3282,'Красный Яр',10000),(3292,3159,3282,'Лиман',10000),(3293,3159,3282,'Началово',10000),(3294,3159,3282,'Харабали',10000),(3295,3159,3282,'Черный Яр',10000),(3297,3159,3296,'Аксаково',10000),(3298,3159,3296,'Амзя',10000),(3299,3159,3296,'Аскино',10000),(3300,3159,3296,'Баймак',10000),(3301,3159,3296,'Бакалы',10000),(3302,3159,3296,'Белебей',10000),(3303,3159,3296,'Белорецк',10000),(3304,3159,3296,'Бижбуляк',10000),(3305,3159,3296,'Бирск',10000),(3306,3159,3296,'Благовещенск',10000),(3307,3159,3296,'Большеустьикинское',10000),(3308,3159,3296,'Верхнеяркеево',10000),(3309,3159,3296,'Верхние Киги',10000),(3310,3159,3296,'Верхние Татышлы',10000),(3311,3159,3296,'Верхний Авзян',10000),(3312,3159,3296,'Давлеканово',10000),(3313,3159,3296,'Дуван',10000),(3314,3159,3296,'Дюртюли',10000),(3315,3159,3296,'Ермекеево',10000),(3316,3159,3296,'Ермолаево',10000),(3317,3159,3296,'Зилаир',10000),(3318,3159,3296,'Зирган',10000),(3319,3159,3296,'Иглино',10000),(3320,3159,3296,'Инзер',10000),(3321,3159,3296,'Исянгулово',10000),(3322,3159,3296,'Ишимбай',10000),(3323,3159,3296,'Кананикольское',10000),(3324,3159,3296,'Кандры',10000),(3325,3159,3296,'Караидель',10000),(3326,3159,3296,'Караидельский',10000),(3327,3159,3296,'Киргиз-Мияки',10000),(3328,3159,3296,'Красноусольский',10000),(3329,3159,3296,'Кумертау',10000),(3330,3159,3296,'Кушнаренково',10000),(3331,3159,3296,'Малояз',10000),(3332,3159,3296,'Мелеуз',10000),(3333,3159,3296,'Месягутово',10000),(3334,3159,3296,'Мраково',10000),(3335,3159,3296,'Нефтекамск',10000),(3336,3159,3296,'Октябрьский',10000),(3337,3159,3296,'Раевский',10000),(3338,3159,3296,'Салават',10000),(3339,3159,3296,'Сибай',10000),(3340,3159,3296,'Старобалтачево',10000),(3341,3159,3296,'Старосубхангулово',10000),(3342,3159,3296,'Стерлибашево',10000),(3343,3159,3296,'Стерлитамак',10000),(3344,3159,3296,'Туймазы',10000),(3345,3159,3296,'Уфа',10000),(3346,3159,3296,'Учалы',10000),(3347,3159,3296,'Федоровка',10000),(3348,3159,3296,'Чекмагуш',10000),(3349,3159,3296,'Чишмы',10000),(3350,3159,3296,'Шаран',10000),(3351,3159,3296,'Янаул',10000),(3353,3159,3352,'Алексеевка',10000),(3354,3159,3352,'Белгород',10000),(3355,3159,3352,'Борисовка',10000),(3356,3159,3352,'Валуйки',10000),(3357,3159,3352,'Вейделевка',10000),(3358,3159,3352,'Волоконовка',10000),(3359,3159,3352,'Грайворон',10000),(3360,3159,3352,'Губкин',10000),(3361,3159,3352,'Ивня',10000),(3362,3159,3352,'Короча',10000),(3363,3159,3352,'Красногвардейское',10000),(3364,3159,3352,'Новый Оскол',10000),(3365,3159,3352,'Ракитное',10000),(3366,3159,3352,'Ровеньки',10000),(3367,3159,3352,'Старый Оскол',10000),(3368,3159,3352,'Строитель',10000),(3369,3159,3352,'Чернянка',10000),(3370,3159,3352,'Шебекино',10000),(3372,3159,3371,'Алтухово',10000),(3373,3159,3371,'Белая Березка',10000),(3374,3159,3371,'Белые Берега',10000),(3375,3159,3371,'Большое Полпино',10000),(3376,3159,3371,'Брянск',10000),(3377,3159,3371,'Бытошь',10000),(3378,3159,3371,'Выгоничи',10000),(3379,3159,3371,'Вышков',10000),(3380,3159,3371,'Гордеевка',10000),(3381,3159,3371,'Дубровка',10000),(3382,3159,3371,'Жирятино',10000),(3383,3159,3371,'Жуковка',10000),(3384,3159,3371,'Злынка',10000),(3385,3159,3371,'Ивот',10000),(3386,3159,3371,'Карачев',10000),(3387,3159,3371,'Клетня',10000),(3388,3159,3371,'Климово',10000),(3389,3159,3371,'Клинцы',10000),(3390,3159,3371,'Кокаревка',10000),(3391,3159,3371,'Комаричи',10000),(3392,3159,3371,'Красная Гора',10000),(3393,3159,3371,'Локоть',10000),(3394,3159,3371,'Мглин',10000),(3395,3159,3371,'Навля',10000),(3396,3159,3371,'Новозыбков',10000),(3397,3159,3371,'Погар',10000),(3398,3159,3371,'Почеп',10000),(3399,3159,3371,'Ржаница',10000),(3400,3159,3371,'Рогнедино',10000),(3401,3159,3371,'Севск',10000),(3402,3159,3371,'Стародуб',10000),(3403,3159,3371,'Суземка',10000),(3404,3159,3371,'Сураж',10000),(3405,3159,3371,'Трубчевск',10000),(3406,3159,3371,'Унеча',10000),(3408,3159,3407,'Бабушкин',10000),(3409,3159,3407,'Багдарин',10000),(3410,3159,3407,'Баргузин',10000),(3411,3159,3407,'Баянгол',10000),(3412,3159,3407,'Бичура',10000),(3413,3159,3407,'Выдрино',10000),(3414,3159,3407,'Гусиное Озеро',10000),(3415,3159,3407,'Гусиноозерск',10000),(3416,3159,3407,'Заиграево',10000),(3417,3159,3407,'Закаменск',10000),(3418,3159,3407,'Иволгинск',10000),(3419,3159,3407,'Илька',10000),(3420,3159,3407,'Кабанск',10000),(3421,3159,3407,'Каменск',10000),(3422,3159,3407,'Кижинга',10000),(3423,3159,3407,'Курумкан',10000),(3424,3159,3407,'Кырен',10000),(3425,3159,3407,'Кяхта',10000),(3426,3159,3407,'Монды',10000),(3427,3159,3407,'Мухоршибирь',10000),(3428,3159,3407,'Нижнеангарск',10000),(3429,3159,3407,'Орлик',10000),(3430,3159,3407,'Петропавловка',10000),(3431,3159,3407,'Романовка',10000),(3432,3159,3407,'Селенгинск',10000),(3433,3159,3407,'Сосново-Озерское',10000),(3434,3159,3407,'Турунтаево',10000),(3435,3159,3407,'Улан-Удэ',10000),(3436,3159,3407,'Хоринск',10000),(3438,3159,3437,'Александров',10000),(3439,3159,3437,'Андреево',10000),(3440,3159,3437,'Анопино',10000),(3441,3159,3437,'Бавлены',10000),(3442,3159,3437,'Балакирево',10000),(3443,3159,3437,'Боголюбово',10000),(3444,3159,3437,'Великодворский',10000),(3445,3159,3437,'Вербовский',10000),(3446,3159,3437,'Владимир',10000),(3447,3159,3437,'Вязники',10000),(3448,3159,3437,'Городищи',10000),(3449,3159,3437,'Гороховец',10000),(3450,3159,3437,'Гусевский',10000),(3451,3159,3437,'Гусь Хрустальный',10000),(3452,3159,3437,'Золотково',10000),(3453,3159,3437,'Иванищи',10000),(3454,3159,3437,'Камешково',10000),(3455,3159,3437,'Карабаново',10000),(3456,3159,3437,'Киржач',10000),(3457,3159,3437,'Ковров',10000),(3458,3159,3437,'Кольчугино',10000),(3459,3159,3437,'Красная Горбатка',10000),(3460,3159,3437,'Меленки',10000),(3461,3159,3437,'Муром',10000),(3462,3159,3437,'Петушки',10000),(3463,3159,3437,'Покров',10000),(3464,3159,3437,'Собинка',10000),(3465,3159,3437,'Судогда',10000),(3466,3159,3437,'Суздаль',10000),(3467,3159,3437,'Юрьев-Польский',10000),(3469,3159,3468,'Алексеевская',10000),(3470,3159,3468,'Алущевск',10000),(3471,3159,3468,'Быково',10000),(3472,3159,3468,'Волгоград',10000),(3473,3159,3468,'Волжский',10000),(3474,3159,3468,'Городище',10000),(3475,3159,3468,'Дубовка',10000),(3476,3159,3468,'Елань',10000),(3477,3159,3468,'Жирновск',10000),(3478,3159,3468,'Иловля',10000),(3479,3159,3468,'Калач-на-Дону',10000),(3480,3159,3468,'Камышин',10000),(3481,3159,3468,'Клетский',10000),(3482,3159,3468,'Котельниково',10000),(3483,3159,3468,'Котово',10000),(3484,3159,3468,'Кумылженская',10000),(3485,3159,3468,'Ленинск',10000),(3486,3159,3468,'Михайловка',10000),(3487,3159,3468,'Нехаевский',10000),(3488,3159,3468,'Николаевск',10000),(3489,3159,3468,'Новоаннинский',10000),(3490,3159,3468,'Новониколаевский',10000),(3491,3159,3468,'Ольховка',10000),(3492,3159,3468,'Палласовка',10000),(3493,3159,3468,'Рудня',10000),(3494,3159,3468,'Светлый Яр',10000),(3495,3159,3468,'Серафимович',10000),(3496,3159,3468,'Средняя Ахтуба',10000),(3497,3159,3468,'Сталинград',10000),(3498,3159,3468,'Старая Полтавка',10000),(3499,3159,3468,'Суровикино',10000),(3500,3159,3468,'Урюпинск',10000),(3501,3159,3468,'Фролово',10000),(3502,3159,3468,'Чернышковский',10000),(3504,3159,3503,'Бабаево',4),(3505,3159,3503,'Белозерск',5),(3506,3159,3503,'Великий Устюг',6),(3507,3159,3503,'Верховажье',7),(3508,3159,3503,'Вожега',8),(3509,3159,3503,'Вологда',2),(3510,3159,3503,'Вохтога',9),(3511,3159,3503,'Вытегра',10),(3512,3159,3503,'Грязовец',11),(3513,3159,3503,'Кадников',12),(3514,3159,3503,'Кадуй',13),(3515,3159,3503,'Кичменгский Городок',14),(3516,3159,3503,'Липин Бор',16),(3517,3159,3503,'Никольск',17),(3518,3159,3503,'Нюксеница',18),(3519,3159,3503,'Сокол',19),(3520,3159,3503,'Сямжа',20),(3521,3159,3503,'Тарногский Городок',21),(3522,3159,3503,'Тотьма',22),(3523,3159,3503,'Устюжна',23),(3524,3159,3503,'Харовск',24),(3525,3159,3503,'Чагода',25),(3526,3159,3503,'Череповец',3),(3527,3159,3503,'Шексна',26),(3528,3159,3503,'Шуйское',27),(3530,3159,3529,'Анна',10000),(3531,3159,3529,'Бобров',10000),(3532,3159,3529,'Богучар',10000),(3533,3159,3529,'Борисоглебск',10000),(3534,3159,3529,'Бутурлиновка',10000),(3535,3159,3529,'Верхний Мамон',10000),(3536,3159,3529,'Верхняя Хава',10000),(3537,3159,3529,'Воробьевка',10000),(3538,3159,3529,'Воронеж',10000),(3539,3159,3529,'Лиски',10000),(3540,3159,3529,'Грибановский',10000),(3541,3159,3529,'Давыдовка',10000),(3542,3159,3529,'Елань-Коленовский',10000),(3543,3159,3529,'Калач',10000),(3544,3159,3529,'Кантемировка',10000),(3545,3159,3529,'Нижнедевицк',10000),(3546,3159,3529,'Новая Усмань',10000),(3547,3159,3529,'Новохоперск',10000),(3548,3159,3529,'Ольховатка',10000),(3549,3159,3529,'Острогожск',10000),(3550,3159,3529,'Павловск',10000),(3551,3159,3529,'Панино',10000),(3552,3159,3529,'Петропавловка',10000),(3553,3159,3529,'Поворино',10000),(3554,3159,3529,'Подгоренский',10000),(3555,3159,3529,'Рамонь',10000),(3556,3159,3529,'Репьевка',10000),(3557,3159,3529,'Россошь',10000),(3558,3159,3529,'Семилуки',10000),(3559,3159,3529,'Таловая',10000),(3560,3159,3529,'Терновка',10000),(3561,3159,3529,'Хохольский',10000),(3562,3159,3529,'Эртиль',10000),(3564,3159,3563,'Ардатов',10000),(3565,3159,3563,'Арзамас',10000),(3566,3159,3563,'Арья',10000),(3567,3159,3563,'Балахна',10000),(3568,3159,3563,'Богородск',10000),(3569,3159,3563,'Большереченск',10000),(3570,3159,3563,'Большое Болдино',10000),(3571,3159,3563,'Большое Козино',10000),(3572,3159,3563,'Большое Мурашкино',10000),(3573,3159,3563,'Большое Пикино',10000),(3574,3159,3563,'Бор',10000),(3575,3159,3563,'Бутурлино',10000),(3576,3159,3563,'Вад',10000),(3577,3159,3563,'Варнавино',10000),(3578,3159,3563,'Васильсурск',10000),(3579,3159,3563,'Вахтан',10000),(3580,3159,3563,'Вача',10000),(3581,3159,3563,'Велетьма',10000),(3582,3159,3563,'Ветлуга',10000),(3583,3159,3563,'Виля',10000),(3584,3159,3563,'Вознесенское',10000),(3585,3159,3563,'Володарск',10000),(3586,3159,3563,'Воротынец',10000),(3587,3159,3563,'Ворсма',10000),(3588,3159,3563,'Воскресенское',10000),(3589,3159,3563,'Выездное',10000),(3590,3159,3563,'Выкса',10000),(3591,3159,3563,'Гагино',10000),(3592,3159,3563,'Гидроторф',10000),(3593,3159,3563,'Горбатов',10000),(3594,3159,3563,'Горбатовка',10000),(3595,3159,3563,'Городец',10000),(3596,3159,3563,'Горький',10000),(3597,3159,3563,'Дальнее Константиново',10000),(3598,3159,3563,'Дзержинск',10000),(3599,3159,3563,'Дивеево',10000),(3600,3159,3563,'Досчатое',10000),(3601,3159,3563,'Заволжье',10000),(3602,3159,3563,'Катунки',10000),(3603,3159,3563,'Керженец',10000),(3604,3159,3563,'Княгинино',10000),(3605,3159,3563,'Ковернино',10000),(3606,3159,3563,'Красные Баки',10000),(3607,3159,3563,'Кстово',10000),(3608,3159,3563,'Кулебаки',10000),(3609,3159,3563,'Лукоянов',10000),(3610,3159,3563,'Лысково',10000),(3611,3159,3563,'Навашино',10000),(3612,3159,3563,'Нижний Новгород',10000),(3613,3159,3563,'Павлово',10000),(3614,3159,3563,'Первомайск',10000),(3615,3159,3563,'Перевоз',10000),(3616,3159,3563,'Пильна',10000),(3617,3159,3563,'Починки',10000),(3618,3159,3563,'Сергач',10000),(3619,3159,3563,'Сеченово',10000),(3620,3159,3563,'Сосновское',10000),(3621,3159,3563,'Спасское',10000),(3622,3159,3563,'Тонкино',10000),(3623,3159,3563,'Тоншаево',10000),(3624,3159,3563,'Уразовка',10000),(3625,3159,3563,'Урень',10000),(3626,3159,3563,'Чкаловск',10000),(3627,3159,3563,'Шаранга',10000),(3628,3159,3563,'Шатки',10000),(3629,3159,3563,'Шахунья',10000),(3631,3159,3630,'Агвали',10000),(3632,3159,3630,'Акуша',10000),(3633,3159,3630,'Ахты',10000),(3634,3159,3630,'Ачису',10000),(3635,3159,3630,'Бабаюрт',10000),(3636,3159,3630,'Бежта',10000),(3637,3159,3630,'Ботлих',10000),(3638,3159,3630,'Буйнакск',10000),(3639,3159,3630,'Вачи',10000),(3640,3159,3630,'Гергебиль',10000),(3641,3159,3630,'Гуниб',10000),(3642,3159,3630,'Дагестанские Огни',10000),(3643,3159,3630,'Дербент',10000),(3644,3159,3630,'Дылым',10000),(3645,3159,3630,'Ершовка',10000),(3646,3159,3630,'Избербаш',10000),(3647,3159,3630,'Карабудахкент',10000),(3648,3159,3630,'Карата',10000),(3649,3159,3630,'Каспийск',10000),(3650,3159,3630,'Касумкент',10000),(3651,3159,3630,'Кизилюрт',10000),(3652,3159,3630,'Кизляр',10000),(3653,3159,3630,'Кочубей',10000),(3654,3159,3630,'Кумух',10000),(3655,3159,3630,'Курах',10000),(3656,3159,3630,'Магарамкент',10000),(3657,3159,3630,'Маджалис',10000),(3658,3159,3630,'Махачкала',10000),(3659,3159,3630,'Мехельта',10000),(3660,3159,3630,'Новолакское',10000),(3661,3159,3630,'Рутул',10000),(3662,3159,3630,'Советское',10000),(3663,3159,3630,'Тарумовка',10000),(3664,3159,3630,'Терекли-Мектеб',10000),(3665,3159,3630,'Тлярата',10000),(3666,3159,3630,'Тпиг',10000),(3667,3159,3630,'Уркарах',10000),(3668,3159,3630,'Хасавюрт',10000),(3669,3159,3630,'Хив',10000),(3670,3159,3630,'Хунзах',10000),(3671,3159,3630,'Цуриб',10000),(3672,3159,3630,'Южно-Сухокумск',10000),(3674,3159,3673,'Биробиджан',10000),(3676,3159,3675,'Архиповка',10000),(3677,3159,3675,'Верхний Ландех',10000),(3678,3159,3675,'Вичуга',10000),(3679,3159,3675,'Гаврилов Посад',10000),(3680,3159,3675,'Долматовский',10000),(3681,3159,3675,'Дуляпино',10000),(3682,3159,3675,'Заволжск',10000),(3683,3159,3675,'Заречный',10000),(3684,3159,3675,'Иваново',10000),(3685,3159,3675,'Иваньковский',10000),(3686,3159,3675,'Ильинское-Хованское',10000),(3687,3159,3675,'Каминский',10000),(3688,3159,3675,'Кинешма',10000),(3689,3159,3675,'Комсомольск',10000),(3690,3159,3675,'Лух',10000),(3691,3159,3675,'Палех',10000),(3692,3159,3675,'Пестяки',10000),(3693,3159,3675,'Приволжск',10000),(3694,3159,3675,'Пучеж',10000),(3695,3159,3675,'Родники',10000),(3696,3159,3675,'Савино',10000),(3697,3159,3675,'Сокольское',10000),(3698,3159,3675,'Тейково',10000),(3699,3159,3675,'Фурманов',10000),(3700,3159,3675,'Шуя',10000),(3701,3159,3675,'Южа',10000),(3702,3159,3675,'Юрьевец',10000),(3704,3159,3703,'Алексеевск',10000),(3705,3159,3703,'Алзамай',10000),(3706,3159,3703,'Алыгжер',10000),(3707,3159,3703,'Ангарск',10000),(3708,3159,3703,'Артемовский',10000),(3709,3159,3703,'Атагай',10000),(3710,3159,3703,'Байкал',10000),(3711,3159,3703,'Байкальск',10000),(3712,3159,3703,'Балаганск',10000),(3713,3159,3703,'Баяндай',10000),(3714,3159,3703,'Бирюсинск',10000),(3715,3159,3703,'Бодайбо',10000),(3716,3159,3703,'Большая Речка',10000),(3717,3159,3703,'Большой Луг',10000),(3718,3159,3703,'Бохан',10000),(3719,3159,3703,'Братск',10000),(3720,3159,3703,'Видим',10000),(3721,3159,3703,'Витимский',10000),(3722,3159,3703,'Вихоревка',10000),(3723,3159,3703,'Еланцы',10000),(3724,3159,3703,'Ербогачен',10000),(3725,3159,3703,'Железногорск-Илимский',10000),(3726,3159,3703,'Жигалово',10000),(3727,3159,3703,'Забитуй',10000),(3728,3159,3703,'Залари',10000),(3729,3159,3703,'Звездный',10000),(3730,3159,3703,'Зима',10000),(3731,3159,3703,'Иркутск',10000),(3732,3159,3703,'Казачинское',10000),(3733,3159,3703,'Качуг',10000),(3734,3159,3703,'Квиток',10000),(3735,3159,3703,'Киренск',10000),(3736,3159,3703,'Куйтун',10000),(3737,3159,3703,'Кутулик',10000),(3738,3159,3703,'Мама',10000),(3739,3159,3703,'Нижнеудинск',10000),(3740,3159,3703,'Оса',10000),(3741,3159,3703,'Слюдянка',10000),(3742,3159,3703,'Тайшет',10000),(3743,3159,3703,'Тулун',10000),(3744,3159,3703,'Усолье-Сибирское',10000),(3745,3159,3703,'Усть-Илимск',10000),(3746,3159,3703,'Усть-Кут',10000),(3747,3159,3703,'Усть-Ордынский',10000),(3748,3159,3703,'Усть-Уда',10000),(3749,3159,3703,'Черемхово',10000),(3750,3159,3703,'Шелехов',10000),(3752,3159,3751,'Баксан',10000),(3753,3159,3751,'Майский',10000),(3754,3159,3751,'Нальчик',10000),(3755,3159,3751,'Нарткала',10000),(3756,3159,3751,'Прохладный',10000),(3757,3159,3751,'Советское',10000),(3758,3159,3751,'Терек',10000),(3759,3159,3751,'Тырныауз',10000),(3760,3159,3751,'Чегем-Первый',10000),(3762,3159,3761,'Багратионовск',10000),(3763,3159,3761,'Балтийск',10000),(3764,3159,3761,'Гвардейск',10000),(3765,3159,3761,'Гурьевск',10000),(3766,3159,3761,'Гусев',10000),(3767,3159,3761,'Железнодорожный',10000),(3768,3159,3761,'Зеленоградск',10000),(3769,3159,3761,'Знаменск',10000),(3770,3159,3761,'Калининград',10000),(3771,3159,3761,'Кенисберг',10000),(3772,3159,3761,'Краснознаменск',10000),(3773,3159,3761,'Мамоново',10000),(3774,3159,3761,'Неман',10000),(3775,3159,3761,'Нестеров',10000),(3776,3159,3761,'Озерск',10000),(3777,3159,3761,'Полесск',10000),(3778,3159,3761,'Правдинск',10000),(3779,3159,3761,'Светлогорск',10000),(3780,3159,3761,'Светлый',10000),(3781,3159,3761,'Славск',10000),(3782,3159,3761,'Советск',10000),(3783,3159,3761,'Черняховск',10000),(3785,3159,3784,'Андреаполь',10000),(3786,3159,3784,'Бежецк',10000),(3787,3159,3784,'Белый',10000),(3788,3159,3784,'Белый Городок',10000),(3789,3159,3784,'Березайка',10000),(3790,3159,3784,'Бологое',10000),(3791,3159,3784,'Васильевский Мох',10000),(3792,3159,3784,'Выползово',10000),(3793,3159,3784,'Вышний Волочек',10000),(3794,3159,3784,'Жарковский',10000),(3795,3159,3784,'Западная Двина',10000),(3796,3159,3784,'Заречье',10000),(3797,3159,3784,'Зубцов',10000),(3798,3159,3784,'Изоплит',10000),(3799,3159,3784,'Калашниково',10000),(3800,3159,3784,'Калинин',10000),(3801,3159,3784,'Калязин',10000),(3802,3159,3784,'Кашин',10000),(3803,3159,3784,'Кесова Гора',10000),(3804,3159,3784,'Кимры',10000),(3805,3159,3784,'Конаково',10000),(3806,3159,3784,'Красный Холм',10000),(3807,3159,3784,'Кувшиново',10000),(3808,3159,3784,'Лесное',10000),(3809,3159,3784,'Лихославль',10000),(3810,3159,3784,'Максатиха',10000),(3811,3159,3784,'Молоково',10000),(3812,3159,3784,'Нелидово',10000),(3813,3159,3784,'Оленино',10000),(3814,3159,3784,'Осташков',10000),(3815,3159,3784,'Пено',10000),(3816,3159,3784,'Рамешки',10000),(3817,3159,3784,'Ржев',10000),(3818,3159,3784,'Сандово',10000),(3819,3159,3784,'Селижарово',10000),(3820,3159,3784,'Сонково',10000),(3821,3159,3784,'Спирово',10000),(3822,3159,3784,'Старица',10000),(3823,3159,3784,'Тверь',10000),(3824,3159,3784,'Торжок',10000),(3825,3159,3784,'Торопец',10000),(3826,3159,3784,'Фирово',10000),(3828,3159,3827,'Аршань',10000),(3829,3159,3827,'Каспийский',10000),(3830,3159,3827,'Комсомольский',10000),(3831,3159,3827,'Малые Дербеты',10000),(3832,3159,3827,'Приютное',10000),(3833,3159,3827,'Советское',10000),(3834,3159,3827,'Троицкое',10000),(3835,3159,3827,'Утта',10000),(3836,3159,3827,'Цаган-Аман',10000),(3837,3159,3827,'Элиста',10000),(3838,3159,3827,'Юста',10000),(3839,3159,3827,'Яшалта',10000),(3840,3159,3827,'Яшкуль',10000),(3842,3159,3841,'Бабынино',10000),(3843,3159,3841,'Балабаново',10000),(3844,3159,3841,'Барятино',10000),(3845,3159,3841,'Белоусово',10000),(3846,3159,3841,'Бетлица',10000),(3847,3159,3841,'Боровск',10000),(3848,3159,3841,'Дугна',10000),(3849,3159,3841,'Дудоровский',10000),(3850,3159,3841,'Думиничи',10000),(3851,3159,3841,'Еленский',10000),(3852,3159,3841,'Жиздра',10000),(3853,3159,3841,'Износки',10000),(3854,3159,3841,'Калуга',10000),(3855,3159,3841,'Киров',10000),(3856,3159,3841,'Козельск',10000),(3857,3159,3841,'Кондрово',10000),(3858,3159,3841,'Людиново',10000),(3859,3159,3841,'Малоярославец',10000),(3860,3159,3841,'Медынь',10000),(3861,3159,3841,'Мещовск',10000),(3862,3159,3841,'Мосальск',10000),(3863,3159,3841,'Обнинск',10000),(3864,3159,3841,'Перемышль',10000),(3865,3159,3841,'Спас-Деменск',10000),(3866,3159,3841,'Сухиничи',10000),(3867,3159,3841,'Таруса',10000),(3868,3159,3841,'Ульяново',10000),(3869,3159,3841,'Ферзиково',10000),(3870,3159,3841,'Хвастовичи',10000),(3871,3159,3841,'Юхнов',10000),(3873,3159,3872,'Атласово',10000),(3874,3159,3872,'Аянка',10000),(3875,3159,3872,'Большерецк',10000),(3876,3159,3872,'Ильпырский',10000),(3877,3159,3872,'Каменское',10000),(3878,3159,3872,'Кировский',10000),(3879,3159,3872,'Ключи',10000),(3880,3159,3872,'Крапивная',10000),(3881,3159,3872,'Мильково',10000),(3882,3159,3872,'Никольское',10000),(3883,3159,3872,'Оссора',10000),(3884,3159,3872,'Палана',10000),(3885,3159,3872,'Парень',10000),(3886,3159,3872,'Пахачи',10000),(3887,3159,3872,'Петропавловск-Камчатский',10000),(3888,3159,3872,'Тигиль',10000),(3889,3159,3872,'Тиличики',10000),(3890,3159,3872,'Усть-Большерецк',10000),(3891,3159,3872,'Усть-Камчатск',10000),(3893,3159,3892,'Амбарный',10000),(3894,3159,3892,'Беломорск',10000),(3895,3159,3892,'Валаам',10000),(3896,3159,3892,'Вирандозеро',10000),(3897,3159,3892,'Гирвас',10000),(3898,3159,3892,'Деревянка',10000),(3899,3159,3892,'Идель',10000),(3900,3159,3892,'Ильинский',10000),(3901,3159,3892,'Импалахти',10000),(3902,3159,3892,'Калевала',10000),(3903,3159,3892,'Кемь',10000),(3904,3159,3892,'Кестеньга',10000),(3905,3159,3892,'Кондопога',10000),(3906,3159,3892,'Костомукша',10000),(3907,3159,3892,'Лахденпохья',10000),(3908,3159,3892,'Лоухи',10000),(3909,3159,3892,'Медвежьегорск',10000),(3910,3159,3892,'Муезерский',10000),(3911,3159,3892,'Олонец',10000),(3912,3159,3892,'Петрозаводск',10000),(3913,3159,3892,'Питкяранта',10000),(3914,3159,3892,'Повенец',10000),(3915,3159,3892,'Пряжа',10000),(3916,3159,3892,'Пудож',10000),(3917,3159,3892,'Сегежа',10000),(3918,3159,3892,'Сортавала',10000),(3919,3159,3892,'Софпорог',10000),(3920,3159,3892,'Суоярви',10000),(3922,3159,3921,'Анжеро-Судженск',10000),(3923,3159,3921,'Барзас',10000),(3924,3159,3921,'Белово',10000),(3925,3159,3921,'Белогорск',10000),(3926,3159,3921,'Березовский',10000),(3927,3159,3921,'Грамотеино',10000),(3928,3159,3921,'Гурьевск',10000),(3929,3159,3921,'Ижморский',10000),(3930,3159,3921,'Итатский',10000),(3931,3159,3921,'Калтан',10000),(3932,3159,3921,'Кедровка',10000),(3933,3159,3921,'Кемерово',10000),(3934,3159,3921,'Киселевск',10000),(3935,3159,3921,'Крапивинский',10000),(3936,3159,3921,'Ленинск-Кузнецкий',10000),(3937,3159,3921,'Мариинск',10000),(3938,3159,3921,'Междуреченск',10000),(3939,3159,3921,'Мыски',10000),(3940,3159,3921,'Новокузнецк',10000),(3941,3159,3921,'Осинники',10000),(3942,3159,3921,'Прокопьевск',10000),(3943,3159,3921,'Промышленная',10000),(3944,3159,3921,'Тайга',10000),(3945,3159,3921,'Таштагол',10000),(3946,3159,3921,'Тисуль',10000),(3947,3159,3921,'Топки',10000),(3948,3159,3921,'Тяжинский',10000),(3949,3159,3921,'Юрга',10000),(3950,3159,3921,'Яшкино',10000),(3951,3159,3921,'Яя',10000),(3953,3159,3952,'Арбаж',10000),(3954,3159,3952,'Аркуль',10000),(3955,3159,3952,'Белая Холуница',10000),(3956,3159,3952,'Богородское',10000),(3957,3159,3952,'Боровой',10000),(3958,3159,3952,'Верхошижемье',10000),(3959,3159,3952,'Зуевка',10000),(3960,3159,3952,'Каринторф',10000),(3961,3159,3952,'Кикнур',10000),(3962,3159,3952,'Кильмезь',10000),(3963,3159,3952,'Киров',10000),(3964,3159,3952,'Кирово-Чепецк',10000),(3965,3159,3952,'Кирс',10000),(3966,3159,3952,'Кобра',10000),(3967,3159,3952,'Котельнич',10000),(3968,3159,3952,'Кумены',10000),(3969,3159,3952,'Ленинское',10000),(3970,3159,3952,'Луза',10000),(3971,3159,3952,'Малмыж',10000),(3972,3159,3952,'Мураши',10000),(3973,3159,3952,'Нагорск',10000),(3974,3159,3952,'Нема',10000),(3975,3159,3952,'Нововятск',10000),(3976,3159,3952,'Нолинск',10000),(3977,3159,3952,'Омутнинск',10000),(3978,3159,3952,'Опарино',10000),(3979,3159,3952,'Оричи',10000),(3980,3159,3952,'Пижанка',10000),(3981,3159,3952,'Подосиновец',10000),(3982,3159,3952,'Санчурск',10000),(3983,3159,3952,'Свеча',10000),(3984,3159,3952,'Слободской',10000),(3985,3159,3952,'Советск',10000),(3986,3159,3952,'Суна',10000),(3987,3159,3952,'Тужа',10000),(3988,3159,3952,'Уни',10000),(3989,3159,3952,'Уржум',10000),(3990,3159,3952,'Фаленки',10000),(3991,3159,3952,'Халтурин',10000),(3992,3159,3952,'Юрья',10000),(3993,3159,3952,'Яранск',10000),(3995,3159,3994,'Абезь',10000),(3996,3159,3994,'Айкино',10000),(3997,3159,3994,'Верхняя Инта',10000),(3998,3159,3994,'Визинга',10000),(3999,3159,3994,'Водный',10000),(4000,3159,3994,'Вожаель',10000),(4001,3159,3994,'Воркута',10000),(4002,3159,3994,'Вуктыл',10000),(4003,3159,3994,'Гешарт',10000),(4004,3159,3994,'Елецкий',10000),(4005,3159,3994,'Емва',10000),(4006,3159,3994,'Заполярный',10000),(4007,3159,3994,'Ижма',10000),(4008,3159,3994,'Инта',10000),(4009,3159,3994,'Ираель',10000),(4010,3159,3994,'Каджером',10000),(4011,3159,3994,'Кажым',10000),(4012,3159,3994,'Кожым',10000),(4013,3159,3994,'Койгородок',10000),(4014,3159,3994,'Корткерос',10000),(4015,3159,3994,'Кослан',10000),(4016,3159,3994,'Объячево',10000),(4017,3159,3994,'Печора',10000),(4018,3159,3994,'Сосногорск',10000),(4019,3159,3994,'Сыктывкар',10000),(4020,3159,3994,'Троицко-Печерск',10000),(4021,3159,3994,'Усинск',10000),(4022,3159,3994,'Усогорск',10000),(4023,3159,3994,'Усть-Кулом',10000),(4024,3159,3994,'Усть-Цильма',10000),(4025,3159,3994,'Ухта',10000),(4027,3159,4026,'Антропово',10000),(4028,3159,4026,'Боговарово',10000),(4029,3159,4026,'Буй',10000),(4030,3159,4026,'Волгореченск',10000),(4031,3159,4026,'Галич',10000),(4032,3159,4026,'Горчуха',10000),(4033,3159,4026,'Зебляки',10000),(4034,3159,4026,'Кадый',10000),(4035,3159,4026,'Кологрив',10000),(4036,3159,4026,'Кострома',10000),(4037,3159,4026,'Красное-на-Волге',10000),(4038,3159,4026,'Макарьев',10000),(4039,3159,4026,'Мантурово',10000),(4040,3159,4026,'Нерехта',10000),(4041,3159,4026,'Нея',10000),(4042,3159,4026,'Островское',10000),(4043,3159,4026,'Павино',10000),(4044,3159,4026,'Парфентьево',10000),(4045,3159,4026,'Поназырево',10000),(4046,3159,4026,'Солигалич',10000),(4047,3159,4026,'Судиславль',10000),(4048,3159,4026,'Сусанино',10000),(4049,3159,4026,'Чухлома',10000),(4050,3159,4026,'Шарья',10000),(4051,3159,4026,'Шемятино',10000),(4053,3159,4052,'Абинск',10000),(4054,3159,4052,'Абрау-Дюрсо',10000),(4055,3159,4052,'Анапа',10000),(4056,3159,4052,'Апшеронск',10000),(4057,3159,4052,'Армавир',10000),(4058,3159,4052,'Архипо-Осиповка',10000),(4059,3159,4052,'Афипский',10000),(4060,3159,4052,'Ахтырский',10000),(4061,3159,4052,'Ачуево',10000),(4062,3159,4052,'Белореченск',10000),(4063,3159,4052,'Верхнебаканский',10000),(4064,3159,4052,'Выселки',10000),(4065,3159,4052,'Геленджик',10000),(4066,3159,4052,'Гиагинская',10000),(4067,3159,4052,'Горячий Ключ',10000),(4068,3159,4052,'Джубга',10000),(4069,3159,4052,'Динская',10000),(4070,3159,4052,'Ейск',10000),(4071,3159,4052,'Ильский',10000),(4072,3159,4052,'Кабардинка',10000),(4073,3159,4052,'Калинино',10000),(4074,3159,4052,'Калининская',10000),(4075,3159,4052,'Каменномостский',10000),(4076,3159,4052,'Каневская',10000),(4077,3159,4052,'Кореновск',10000),(4078,3159,4052,'Красноармейская',10000),(4079,3159,4052,'Краснодар',10000),(4080,3159,4052,'Кропоткин',10000),(4081,3159,4052,'Крыловская',10000),(4082,3159,4052,'Крымск',10000),(4083,3159,4052,'Кущевская',10000),(4084,3159,4052,'Лабинск',10000),(4085,3159,4052,'Лениградская',10000),(4086,3159,4052,'Майкоп',10000),(4087,3159,4052,'Мостовской',10000),(4088,3159,4052,'Новороссийск',10000),(4089,3159,4052,'Отрадная',10000),(4090,3159,4052,'Павловская',10000),(4091,3159,4052,'Приморско-Ахтарск',10000),(4092,3159,4052,'Северская',10000),(4093,3159,4052,'Славянск-на-Кубани',10000),(4094,3159,4052,'Сочи',10000),(4095,3159,4052,'Староминская',10000),(4096,3159,4052,'Старощербиновская',10000),(4097,3159,4052,'Тбилисская',10000),(4098,3159,4052,'Темрюк',10000),(4099,3159,4052,'Тимашевск',10000),(4100,3159,4052,'Тихорецк',10000),(4101,3159,4052,'Туапсе',10000),(4102,3159,4052,'Тульский',10000),(4103,3159,4052,'Усть-Лабинск',10000),(4104,3159,4052,'Шовгеновский',10000),(4106,3159,4105,'Абаза',10000),(4107,3159,4105,'Абакан',10000),(4108,3159,4105,'Абан',10000),(4109,3159,4105,'Агинское',10000),(4110,3159,4105,'Артемовск',10000),(4111,3159,4105,'Аскиз',10000),(4112,3159,4105,'Ачинск',10000),(4113,3159,4105,'Байкит',10000),(4114,3159,4105,'Балахта',10000),(4115,3159,4105,'Балыкса',10000),(4116,3159,4105,'Белый Яр',10000),(4117,3159,4105,'Бельтырский',10000),(4118,3159,4105,'Бея',10000),(4119,3159,4105,'Бискамжа',10000),(4120,3159,4105,'Боготол',10000),(4121,3159,4105,'Боград',10000),(4122,3159,4105,'Богучаны',10000),(4123,3159,4105,'Большая Мурта',10000),(4124,3159,4105,'Большой Улуй',10000),(4125,3159,4105,'Бородино',10000),(4126,3159,4105,'Ванавара',10000),(4127,3159,4105,'Верхнеимбатск',10000),(4128,3159,4105,'Горячегорск',10000),(4129,3159,4105,'Дзержинское',10000),(4130,3159,4105,'Дивногорск',10000),(4131,3159,4105,'Диксон',10000),(4132,3159,4105,'Дудинка',10000),(4133,3159,4105,'Емельяново',10000),(4134,3159,4105,'Енисейск',10000),(4135,3159,4105,'Ермаковское',10000),(4136,3159,4105,'Заозерный',10000),(4137,3159,4105,'Игарка',10000),(4138,3159,4105,'Идринское',10000),(4139,3159,4105,'Иланский',10000),(4140,3159,4105,'Ирбейское',10000),(4141,3159,4105,'Казачинское',10000),(4142,3159,4105,'Канск',10000),(4143,3159,4105,'Каратузское',10000),(4144,3159,4105,'Караул',10000),(4145,3159,4105,'Кежма',10000),(4146,3159,4105,'Козулька',10000),(4147,3159,4105,'Копьево',10000),(4148,3159,4105,'Краснотуранск',10000),(4149,3159,4105,'Красноярск',10000),(4150,3159,4105,'Курагино',10000),(4151,3159,4105,'Лесосибирск',10000),(4152,3159,4105,'Минусинск',10000),(4153,3159,4105,'Мотыгино',10000),(4154,3159,4105,'Назарово',10000),(4155,3159,4105,'Нижний Ингаш',10000),(4156,3159,4105,'Новоселово',10000),(4157,3159,4105,'Норильск',10000),(4158,3159,4105,'Партизанское',10000),(4159,3159,4105,'Пировское',10000),(4160,3159,4105,'Саяногорск',10000),(4161,3159,4105,'Северо-Енисейский',10000),(4162,3159,4105,'Тасеево',10000),(4163,3159,4105,'Таштып',10000),(4164,3159,4105,'Тура',10000),(4165,3159,4105,'Туруханск',10000),(4166,3159,4105,'Тюхтет',10000),(4167,3159,4105,'Ужур',10000),(4168,3159,4105,'Усть-Авам',10000),(4169,3159,4105,'Уяр',10000),(4170,3159,4105,'Хатанга',10000),(4171,3159,4105,'Черемушки',10000),(4172,3159,4105,'Черногорск',10000),(4173,3159,4105,'Шалинское',10000),(4174,3159,4105,'Шира',10000),(4175,3159,4105,'Шушенское',10000),(4177,3159,4176,'Варгаши',10000),(4178,3159,4176,'Глядянское',10000),(4179,3159,4176,'Далматово',10000),(4180,3159,4176,'Каргаполье',10000),(4181,3159,4176,'Катайск',10000),(4182,3159,4176,'Кетово',10000),(4183,3159,4176,'Курган',10000),(4184,3159,4176,'Куртамыш',10000),(4185,3159,4176,'Лебяжье',10000),(4186,3159,4176,'Макушино',10000),(4187,3159,4176,'Мишкино',10000),(4188,3159,4176,'Мокроусово',10000),(4189,3159,4176,'Петухово',10000),(4190,3159,4176,'Половинное',10000),(4191,3159,4176,'Сафакулево',10000),(4192,3159,4176,'Целинное',10000),(4193,3159,4176,'Шадринск',10000),(4194,3159,4176,'Шатрово',10000),(4195,3159,4176,'Шумиха',10000),(4196,3159,4176,'Щучье',10000),(4197,3159,4176,'Юргамыш',10000),(4199,3159,4198,'Альменево',10000),(4200,3159,4198,'Белая',10000),(4201,3159,4198,'Большое Солдатское',10000),(4202,3159,4198,'Глушково',10000),(4203,3159,4198,'Горшечное',10000),(4204,3159,4198,'Дмитриев-Льговский',10000),(4205,3159,4198,'Железногорск',10000),(4206,3159,4198,'Золотухино',10000),(4207,3159,4198,'Касторное',10000),(4208,3159,4198,'Конышевка',10000),(4209,3159,4198,'Коренево',10000),(4210,3159,4198,'Курск',10000),(4211,3159,4198,'Курчатов',10000),(4212,3159,4198,'Кшенский',10000),(4213,3159,4198,'Льгов',10000),(4214,3159,4198,'Мантурово',10000),(4215,3159,4198,'Медвенка',10000),(4216,3159,4198,'Обоянь',10000),(4217,3159,4198,'Поныри',10000),(4218,3159,4198,'Пристень',10000),(4219,3159,4198,'Прямицыно',10000),(4220,3159,4198,'Рыльск',10000),(4221,3159,4198,'Суджа',10000),(4222,3159,4198,'Тим',10000),(4223,3159,4198,'Фатеж',10000),(4224,3159,4198,'Хомутовка',10000),(4225,3159,4198,'Черемисиново',10000),(4226,3159,4198,'Щигры',10000),(4228,3159,4227,'Грязи',10000),(4229,3159,4227,'Данхов',10000),(4230,3159,4227,'Доброе',10000),(4231,3159,4227,'Долгоруково',10000),(4232,3159,4227,'Елец',10000),(4233,3159,4227,'Задонск',10000),(4234,3159,4227,'Измалково',10000),(4235,3159,4227,'Казинка',10000),(4236,3159,4227,'Лебедянь',10000),(4237,3159,4227,'Лев Толстой',10000),(4238,3159,4227,'Липецк',10000),(4239,3159,4227,'Тербуны',10000),(4240,3159,4227,'Усмань',10000),(4241,3159,4227,'Хлевное',10000),(4242,3159,4227,'Чаплыгин',10000),(4244,3159,4243,'Анадырь',10000),(4245,3159,4243,'Атка',10000),(4246,3159,4243,'Балыгычан',10000),(4247,3159,4243,'Беринговский',10000),(4248,3159,4243,'Билибино',10000),(4249,3159,4243,'Большевик',10000),(4250,3159,4243,'Ванкарем',10000),(4251,3159,4243,'Иульитин',10000),(4252,3159,4243,'Кадыкчан',10000),(4253,3159,4243,'Лаврентия',10000),(4254,3159,4243,'Магадан',10000),(4255,3159,4243,'Мыс Шмидта',10000),(4256,3159,4243,'Ола',10000),(4257,3159,4243,'Омонск',10000),(4258,3159,4243,'Омсукчан',10000),(4259,3159,4243,'Палатка',10000),(4260,3159,4243,'Певек',10000),(4261,3159,4243,'Провидения',10000),(4262,3159,4243,'Сеймчан',10000),(4263,3159,4243,'Синегорье',10000),(4264,3159,4243,'Сусуман',10000),(4265,3159,4243,'Усть-Белая',10000),(4266,3159,4243,'Усть-Омчуг',10000),(4267,3159,4243,'Эвенск',10000),(4268,3159,4243,'Эгвекинот',10000),(4269,3159,4243,'Ягодное',10000),(4271,3159,4270,'Волжск',10000),(4272,3159,4270,'Дубовский',10000),(4273,3159,4270,'Звенигово',10000),(4274,3159,4270,'Йошкар-Ола',10000),(4275,3159,4270,'Килемары',10000),(4276,3159,4270,'Козьмодемьянск',10000),(4277,3159,4270,'Куженер',10000),(4278,3159,4270,'Мари-Турек',10000),(4279,3159,4270,'Медведево',10000),(4280,3159,4270,'Морки',10000),(4281,3159,4270,'Новый Торьял',10000),(4282,3159,4270,'Оршанка',10000),(4283,3159,4270,'Параньга',10000),(4284,3159,4270,'Сернур',10000),(4285,3159,4270,'Советский',10000),(4286,3159,4270,'Юрино',10000),(4288,3159,4287,'Ардатов',10000),(4289,3159,4287,'Атюрьево',10000),(4290,3159,4287,'Атяшево',10000),(4291,3159,4287,'Большие Березники',10000),(4292,3159,4287,'Большое Игнатово',10000),(4293,3159,4287,'Выша',10000),(4294,3159,4287,'Ельники',10000),(4295,3159,4287,'Зубова Поляна',10000),(4296,3159,4287,'Инсар',10000),(4297,3159,4287,'Кадошкино',10000),(4298,3159,4287,'Кемля',10000),(4299,3159,4287,'Ковылкино',10000),(4300,3159,4287,'Комсомольский',10000),(4301,3159,4287,'Кочкурово',10000),(4302,3159,4287,'Краснослободск',10000),(4303,3159,4287,'Лямбирь',10000),(4304,3159,4287,'Ромоданово',10000),(4305,3159,4287,'Рузаевка',10000),(4306,3159,4287,'Саранск',10000),(4307,3159,4287,'Старое Шайгово',10000),(4308,3159,4287,'Темников',10000),(4309,3159,4287,'Теньгушево',10000),(4310,3159,4287,'Торбеево',10000),(4311,3159,4287,'Чамзинка',10000),(4313,3159,4312,'Абрамцево',10000),(4314,3159,4312,'Алабино',10000),(4315,3159,4312,'Апрелевка',10000),(4316,3159,4312,'Архангельское',10000),(4317,3159,4312,'Ашитково',10000),(4318,3159,4312,'Бакшеево',10000),(4319,3159,4312,'Балашиха',10000),(4320,3159,4312,'Барыбино',10000),(4321,3159,4312,'Белоомут',10000),(4322,3159,4312,'Белые Столбы',10000),(4323,3159,4312,'Бородино',10000),(4324,3159,4312,'Бронницы',10000),(4325,3159,4312,'Быково',10000),(4326,3159,4312,'Валуево',10000),(4327,3159,4312,'Вербилки',10000),(4328,3159,4312,'Верея',10000),(4329,3159,4312,'Видное',10000),(4330,3159,4312,'Внуково',10000),(4331,3159,4312,'Вождь Пролетариата',10000),(4332,3159,4312,'Волоколамск',10000),(4333,3159,4312,'Вороново',10000),(4334,3159,4312,'Воскресенск',10000),(4335,3159,4312,'Восточный',10000),(4336,3159,4312,'Востряково',10000),(4337,3159,4312,'Высоковск',10000),(4338,3159,4312,'Голицино',10000),(4339,3159,4312,'Деденево',10000),(4340,3159,4312,'Дедовск',10000),(4341,3159,4312,'Джержинский',10000),(4342,3159,4312,'Дмитров',10000),(4343,3159,4312,'Долгопрудный',10000),(4344,3159,4312,'Домодедово',10000),(4345,3159,4312,'Дорохово',10000),(4346,3159,4312,'Дрезна',10000),(4347,3159,4312,'Дубки',10000),(4348,3159,4312,'Дубна',10000),(4349,3159,4312,'Егорьевск',10000),(4350,3159,4312,'Железнодорожный',10000),(4351,3159,4312,'Жилево',10000),(4352,3159,4312,'Жуковский',10000),(4353,3159,4312,'Загорск',10000),(4354,3159,4312,'Загорянский',10000),(4355,3159,4312,'Запрудная',10000),(4356,3159,4312,'Зарайск',10000),(4357,3159,4312,'Звенигород',10000),(4358,3159,4312,'Зеленоград',10000),(4359,3159,4312,'Ивантеевка',10000),(4360,3159,4312,'Икша',10000),(4361,3159,4312,'Ильинский',10000),(4362,3159,4312,'Истра',10000),(4363,3159,4312,'Калининград',10000),(4364,3159,4312,'Кашира',10000),(4365,3159,4312,'Керва',10000),(4366,3159,4312,'Климовск',10000),(4367,3159,4312,'Клин',10000),(4368,3159,4312,'Клязьма',10000),(4369,3159,4312,'Кожино',10000),(4370,3159,4312,'Кокошкино',10000),(4371,3159,4312,'Коломна',10000),(4372,3159,4312,'Колюбакино',10000),(4373,3159,4312,'Косино',10000),(4374,3159,4312,'Котельники',10000),(4375,3159,4312,'Красково',10000),(4376,3159,4312,'Красноармейск',10000),(4377,3159,4312,'Красногорск',10000),(4378,3159,4312,'Краснозаводск',10000),(4379,3159,4312,'Красный Ткач',10000),(4380,3159,4312,'Крюково',10000),(4381,3159,4312,'Кубинка',10000),(4382,3159,4312,'Купавна',10000),(4383,3159,4312,'Куровское',10000),(4384,3159,4312,'Лесной Городок',10000),(4385,3159,4312,'Ликино-Дулево',10000),(4386,3159,4312,'Лобня',10000),(4387,3159,4312,'Лопатинский',10000),(4388,3159,4312,'Лосино-Петровский',10000),(4389,3159,4312,'Лотошино',10000),(4390,3159,4312,'Лукино',10000),(4391,3159,4312,'Луховицы',10000),(4392,3159,4312,'Лыткарино',10000),(4393,3159,4312,'Львовский',10000),(4394,3159,4312,'Люберцы',10000),(4395,3159,4312,'Малаховка',10000),(4396,3159,4312,'Михайловское',10000),(4397,3159,4312,'Михнево',10000),(4398,3159,4312,'Можайск',10000),(4399,3159,4312,'Монино',10000),(4400,3159,4312,'Москва',10000),(4401,3159,4312,'Муханово',10000),(4402,3159,4312,'Мытищи',10000),(4403,3159,4312,'Нарофоминск',10000),(4404,3159,4312,'Нахабино',10000),(4405,3159,4312,'Некрасовка',10000),(4406,3159,4312,'Немчиновка',10000),(4407,3159,4312,'Новобратцевский',10000),(4408,3159,4312,'Новоподрезково',10000),(4409,3159,4312,'Ногинск',10000),(4410,3159,4312,'Обухово',10000),(4411,3159,4312,'Одинцово',10000),(4412,3159,4312,'Ожерелье',10000),(4413,3159,4312,'Озеры',10000),(4414,3159,4312,'Октябрьский',10000),(4415,3159,4312,'Опалиха',10000),(4416,3159,4312,'Орехово-Зуево',10000),(4417,3159,4312,'Павловский Посад',10000),(4418,3159,4312,'Первомайский',10000),(4419,3159,4312,'Пески',10000),(4420,3159,4312,'Пироговский',10000),(4421,3159,4312,'Подольск',10000),(4422,3159,4312,'Полушкино',10000),(4423,3159,4312,'Правдинский',10000),(4424,3159,4312,'Привокзальный',10000),(4425,3159,4312,'Пролетарский',10000),(4426,3159,4312,'Пушкино',10000),(4427,3159,4312,'Пущино',10000),(4428,3159,4312,'Радовицкий',10000),(4429,3159,4312,'Раменское',10000),(4430,3159,4312,'Реутов',10000),(4431,3159,4312,'Решетниково',10000),(4432,3159,4312,'Родники',10000),(4433,3159,4312,'Рошаль',10000),(4434,3159,4312,'Рублево',10000),(4435,3159,4312,'Руза',10000),(4436,3159,4312,'Салтыковка',10000),(4437,3159,4312,'Северный',10000),(4438,3159,4312,'Сергиев Посад',10000),(4439,3159,4312,'Серебряные Пруды',10000),(4440,3159,4312,'Серпухов',10000),(4441,3159,4312,'Солнечногорск',10000),(4442,3159,4312,'Солнцево',10000),(4443,3159,4312,'Софрино',10000),(4444,3159,4312,'Старая Купавна',10000),(4445,3159,4312,'Старбеево',10000),(4446,3159,4312,'Ступино',10000),(4447,3159,4312,'Сходня',10000),(4448,3159,4312,'Талдом',10000),(4449,3159,4312,'Текстильщик',10000),(4450,3159,4312,'Темпы',10000),(4451,3159,4312,'Тишково',10000),(4452,3159,4312,'Томилино',10000),(4453,3159,4312,'Троицк',10000),(4454,3159,4312,'Туголесский Бор',10000),(4455,3159,4312,'Тучково',10000),(4456,3159,4312,'Уваровка',10000),(4457,3159,4312,'Удельная',10000),(4458,3159,4312,'Успенское',10000),(4459,3159,4312,'Фирсановка',10000),(4460,3159,4312,'Фосфоритный',10000),(4461,3159,4312,'Фрязино',10000),(4462,3159,4312,'Фряново',10000),(4463,3159,4312,'Химки',10000),(4464,3159,4312,'Хорлово',10000),(4465,3159,4312,'Хотьково',10000),(4466,3159,4312,'Черкизово',10000),(4467,3159,4312,'Черноголовка',10000),(4468,3159,4312,'Черусти',10000),(4469,3159,4312,'Чехов',10000),(4470,3159,4312,'Шарапово',10000),(4471,3159,4312,'Шатура',10000),(4472,3159,4312,'Шатурторф',10000),(4473,3159,4312,'Шаховская',10000),(4474,3159,4312,'Шереметьевский',10000),(4475,3159,4312,'Щелково',10000),(4476,3159,4312,'Щербинка',10000),(4477,3159,4312,'Электрогорск',10000),(4478,3159,4312,'Электросталь',10000),(4479,3159,4312,'Электроугли',10000),(4480,3159,4312,'Яхрома',10000),(4482,3159,4481,'Апатиты',10000),(4483,3159,4481,'Африканда',10000),(4484,3159,4481,'Верхнетуломский',10000),(4485,3159,4481,'Заполярный',10000),(4486,3159,4481,'Зареченск',10000),(4487,3159,4481,'Зашеек',10000),(4488,3159,4481,'Зеленоборский',10000),(4489,3159,4481,'Кандалакша',10000),(4490,3159,4481,'Кильдинстрой',10000),(4491,3159,4481,'Кировск',10000),(4492,3159,4481,'Ковдор',10000),(4493,3159,4481,'Кола',10000),(4494,3159,4481,'Конда',10000),(4495,3159,4481,'Мончегорск',10000),(4496,3159,4481,'Мурманск',10000),(4497,3159,4481,'Мурмаши',10000),(4498,3159,4481,'Никель',10000),(4499,3159,4481,'Оленегорск',10000),(4500,3159,4481,'Полярный',10000),(4501,3159,4481,'Североморск',10000),(4502,3159,4481,'Умба',10000),(4504,3159,4503,'Анциферово',10000),(4505,3159,4503,'Батецкий',10000),(4506,3159,4503,'Большая Вишера',10000),(4507,3159,4503,'Боровичи',10000),(4508,3159,4503,'Валдай',10000),(4509,3159,4503,'Волот',10000),(4510,3159,4503,'Деманск',10000),(4511,3159,4503,'Зарубино',10000),(4512,3159,4503,'Кресцы',10000),(4513,3159,4503,'Любытино',10000),(4514,3159,4503,'Малая Вишера',10000),(4515,3159,4503,'Марево',10000),(4516,3159,4503,'Мошенское',10000),(4517,3159,4503,'Новгород',10000),(4518,3159,4503,'Окуловка',10000),(4519,3159,4503,'Парфино',10000),(4520,3159,4503,'Пестово',10000),(4521,3159,4503,'Поддорье',10000),(4522,3159,4503,'Сольцы',10000),(4523,3159,4503,'Старая Русса',10000),(4524,3159,4503,'Хвойное',10000),(4525,3159,4503,'Холм',10000),(4526,3159,4503,'Чудово',10000),(4527,3159,4503,'Шимск',10000),(4529,3159,4528,'Баган',10000),(4530,3159,4528,'Барабинск',10000),(4531,3159,4528,'Бердск',10000),(4532,3159,4528,'Биаза',10000),(4533,3159,4528,'Болотное',10000),(4534,3159,4528,'Венгерово',10000),(4535,3159,4528,'Довольное',10000),(4536,3159,4528,'Завьялово',10000),(4537,3159,4528,'Искитим',10000),(4538,3159,4528,'Карасук',10000),(4539,3159,4528,'Каргат',10000),(4540,3159,4528,'Колывань',10000),(4541,3159,4528,'Краснозерское',10000),(4542,3159,4528,'Крутиха',10000),(4543,3159,4528,'Куйбышев',10000),(4544,3159,4528,'Купино',10000),(4545,3159,4528,'Кыштовка',10000),(4546,3159,4528,'Маслянино',10000),(4547,3159,4528,'Михайловский',10000),(4548,3159,4528,'Мошково',10000),(4549,3159,4528,'Новосибирск',10000),(4550,3159,4528,'Ордынское',10000),(4551,3159,4528,'Северное',10000),(4552,3159,4528,'Сузун',10000),(4553,3159,4528,'Татарск',10000),(4554,3159,4528,'Тогучин',10000),(4555,3159,4528,'Убинское',10000),(4556,3159,4528,'Усть-Тарка',10000),(4557,3159,4528,'Чаны',10000),(4558,3159,4528,'Черепаново',10000),(4559,3159,4528,'Чистоозерное',10000),(4560,3159,4528,'Чулым',10000),(4562,3159,4561,'Береговой',10000),(4563,3159,4561,'Большеречье',10000),(4564,3159,4561,'Большие Уки',10000),(4565,3159,4561,'Горьковское',10000),(4566,3159,4561,'Знаменское',10000),(4567,3159,4561,'Исилькуль',10000),(4568,3159,4561,'Калачинск',10000),(4569,3159,4561,'Колосовка',10000),(4570,3159,4561,'Кормиловка',10000),(4571,3159,4561,'Крутинка',10000),(4572,3159,4561,'Любинский',10000),(4573,3159,4561,'Марьяновка',10000),(4574,3159,4561,'Муромцево',10000),(4575,3159,4561,'Называевск',10000),(4576,3159,4561,'Нижняя Омка',10000),(4577,3159,4561,'Нововаршавка',10000),(4578,3159,4561,'Одесское',10000),(4579,3159,4561,'Оконешниково',10000),(4580,3159,4561,'Омск',10000),(4581,3159,4561,'Павлоградка',10000),(4582,3159,4561,'Полтавка',10000),(4583,3159,4561,'Русская Поляна',10000),(4584,3159,4561,'Саргатское',10000),(4585,3159,4561,'Седельниково',10000),(4586,3159,4561,'Таврическое',10000),(4587,3159,4561,'Тара',10000),(4588,3159,4561,'Тевриз',10000),(4589,3159,4561,'Тюкалинск',10000),(4590,3159,4561,'Усть-Ишим',10000),(4591,3159,4561,'Черлак',10000),(4592,3159,4561,'Шербакуль',10000),(4594,3159,4593,'Абдулино',10000),(4595,3159,4593,'Адамовка',10000),(4596,3159,4593,'Айдырлинский',10000),(4597,3159,4593,'Акбулак',10000),(4598,3159,4593,'Аккермановка',10000),(4599,3159,4593,'Асекеево',10000),(4600,3159,4593,'Беляевка',10000),(4601,3159,4593,'Бугуруслан',10000),(4602,3159,4593,'Бузулук',10000),(4603,3159,4593,'Гай',10000),(4604,3159,4593,'Грачевка',10000),(4605,3159,4593,'Домбаровский',10000),(4606,3159,4593,'Дубенский',10000),(4607,3159,4593,'Илек',10000),(4608,3159,4593,'Ириклинский',10000),(4609,3159,4593,'Кувандык',10000),(4610,3159,4593,'Курманаевка',10000),(4611,3159,4593,'Матвеевка',10000),(4612,3159,4593,'Медногорск',10000),(4613,3159,4593,'Новоорск',10000),(4614,3159,4593,'Новосергиевка',10000),(4615,3159,4593,'Новотроицк',10000),(4616,3159,4593,'Октябрьское',10000),(4617,3159,4593,'Оренбург',10000),(4618,3159,4593,'Орск',10000),(4619,3159,4593,'Первомайский',10000),(4620,3159,4593,'Переволоцкий',10000),(4621,3159,4593,'Пономаревка',10000),(4622,3159,4593,'Саракташ',10000),(4623,3159,4593,'Светлый',10000),(4624,3159,4593,'Северное',10000),(4625,3159,4593,'Соль-Илецк',10000),(4626,3159,4593,'Сорочинск',10000),(4627,3159,4593,'Ташла',10000),(4628,3159,4593,'Тоцкое',10000),(4629,3159,4593,'Тюльган',10000),(4630,3159,4593,'Шарлык',10000),(4631,3159,4593,'Энергетик',10000),(4632,3159,4593,'Ясный',10000),(4634,3159,4633,'Болхов',10000),(4635,3159,4633,'Верховье',10000),(4636,3159,4633,'Глазуновка',10000),(4637,3159,4633,'Дмитровск-Орловский',10000),(4638,3159,4633,'Долгое',10000),(4639,3159,4633,'Залегощь',10000),(4640,3159,4633,'Змиевка',10000),(4641,3159,4633,'Знаменское',10000),(4642,3159,4633,'Колпны',10000),(4643,3159,4633,'Красная Заря',10000),(4644,3159,4633,'Кромы',10000),(4645,3159,4633,'Ливны',10000),(4646,3159,4633,'Малоархангельск',10000),(4647,3159,4633,'Мценск',10000),(4648,3159,4633,'Нарышкино',10000),(4649,3159,4633,'Новосиль',10000),(4650,3159,4633,'Орел',10000),(4651,3159,4633,'Покровское',10000),(4652,3159,4633,'Сосково',10000),(4653,3159,4633,'Тросна',10000),(4654,3159,4633,'Хомутово',10000),(4655,3159,4633,'Хотынец',10000),(4656,3159,4633,'Шаблыкино',10000),(4658,3159,4657,'Башмаково',10000),(4659,3159,4657,'Беднодемьяновск',10000),(4660,3159,4657,'Беково',10000),(4661,3159,4657,'Белинский',10000),(4662,3159,4657,'Бессоновка',10000),(4663,3159,4657,'Вадинск',10000),(4664,3159,4657,'Верхозим',10000),(4665,3159,4657,'Городище',10000),(4666,3159,4657,'Евлашево',10000),(4667,3159,4657,'Земетчино',10000),(4668,3159,4657,'Золотаревка',10000),(4669,3159,4657,'Исса',10000),(4670,3159,4657,'Каменка',10000),(4671,3159,4657,'Колышлей',10000),(4672,3159,4657,'Кондоль',10000),(4673,3159,4657,'Кузнецк',10000),(4674,3159,4657,'Лопатино',10000),(4675,3159,4657,'Малая Сердоба',10000),(4676,3159,4657,'Мокшан',10000),(4677,3159,4657,'Наровчат',10000),(4678,3159,4657,'Неверкино',10000),(4679,3159,4657,'Нижний Ломов',10000),(4680,3159,4657,'Никольск',10000),(4681,3159,4657,'Пачелма',10000),(4682,3159,4657,'Пенза',10000),(4683,3159,4657,'Русский Камешкир',10000),(4684,3159,4657,'Сердобск',10000),(4685,3159,4657,'Сосновоборск',10000),(4686,3159,4657,'Сура',10000),(4687,3159,4657,'Тамала',10000),(4688,3159,4657,'Шемышейка',10000),(4690,3159,4689,'Барда',10000),(4691,3159,4689,'Березники',10000),(4692,3159,4689,'Большая Соснова',10000),(4693,3159,4689,'Верещагино',10000),(4694,3159,4689,'Гайны',10000),(4695,3159,4689,'Горнозаводск',10000),(4696,3159,4689,'Гремячинск',10000),(4697,3159,4689,'Губаха',10000),(4698,3159,4689,'Добрянка',10000),(4699,3159,4689,'Елово',10000),(4700,3159,4689,'Зюкайка',10000),(4701,3159,4689,'Ильинский',10000),(4702,3159,4689,'Карагай',10000),(4703,3159,4689,'Керчевский',10000),(4704,3159,4689,'Кизел',10000),(4705,3159,4689,'Коса',10000),(4706,3159,4689,'Кочево',10000),(4707,3159,4689,'Красновишерск',10000),(4708,3159,4689,'Краснокамск',10000),(4709,3159,4689,'Кудымкар',10000),(4710,3159,4689,'Куеда',10000),(4711,3159,4689,'Кунгур',10000),(4712,3159,4689,'Лысьва',10000),(4713,3159,4689,'Ныроб',10000),(4714,3159,4689,'Нытва',10000),(4715,3159,4689,'Октябрьский',10000),(4716,3159,4689,'Орда',10000),(4717,3159,4689,'Оса',10000),(4718,3159,4689,'Оханск',10000),(4719,3159,4689,'Очер',10000),(4720,3159,4689,'Пермь',10000),(4721,3159,4689,'Соликамск',10000),(4722,3159,4689,'Суксун',10000),(4723,3159,4689,'Уинское',10000),(4724,3159,4689,'Усолье',10000),(4725,3159,4689,'Усть-Кишерть',10000),(4726,3159,4689,'Чайковский',10000),(4727,3159,4689,'Частые',10000),(4728,3159,4689,'Чердынь',10000),(4729,3159,4689,'Чернореченский',10000),(4730,3159,4689,'Чернушка',10000),(4731,3159,4689,'Чусовой',10000),(4732,3159,4689,'Юрла',10000),(4733,3159,4689,'Юсьва',10000),(4735,3159,4734,'Анучино',10000),(4736,3159,4734,'Арсеньев',10000),(4737,3159,4734,'Артем',10000),(4738,3159,4734,'Артемовский',10000),(4739,3159,4734,'Большой Камень',10000),(4740,3159,4734,'Валентин',10000),(4741,3159,4734,'Владивосток',10000),(4742,3159,4734,'Высокогорск',10000),(4743,3159,4734,'Горные Ключи',10000),(4744,3159,4734,'Горный',10000),(4745,3159,4734,'Дальнегорск',10000),(4746,3159,4734,'Дальнереченск',10000),(4747,3159,4734,'Зарубино',10000),(4748,3159,4734,'Кавалерово',10000),(4749,3159,4734,'Каменка',10000),(4750,3159,4734,'Камень-Рыболов',10000),(4751,3159,4734,'Кировский',10000),(4752,3159,4734,'Лазо',10000),(4753,3159,4734,'Лесозаводск',10000),(4754,3159,4734,'Лучегорск',10000),(4755,3159,4734,'Михайловка',10000),(4756,3159,4734,'Находка',10000),(4757,3159,4734,'Новопокровка',10000),(4758,3159,4734,'Ольга',10000),(4759,3159,4734,'Партизанск',10000),(4760,3159,4734,'Пограничный',10000),(4761,3159,4734,'Покровка',10000),(4762,3159,4734,'Русский',10000),(4763,3159,4734,'Самарга',10000),(4764,3159,4734,'Славянка',10000),(4765,3159,4734,'Спасск-Дальний',10000),(4766,3159,4734,'Терней',10000),(4767,3159,4734,'Уссурийск',10000),(4768,3159,4734,'Хасан',10000),(4769,3159,4734,'Хороль',10000),(4770,3159,4734,'Черниговка',10000),(4771,3159,4734,'Чугуевка',10000),(4772,3159,4734,'Яковлевка',10000),(4774,3159,4773,'Бежаницы',10000),(4775,3159,4773,'Великие Луки',10000),(4776,3159,4773,'Гдов',10000),(4777,3159,4773,'Дедовичи',10000),(4778,3159,4773,'Дно',10000),(4779,3159,4773,'Заплюсье',10000),(4780,3159,4773,'Идрица',10000),(4781,3159,4773,'Красногородское',10000),(4782,3159,4773,'Кунья',10000),(4783,3159,4773,'Локня',10000),(4784,3159,4773,'Невель',10000),(4785,3159,4773,'Новоржев',10000),(4786,3159,4773,'Новосокольники',10000),(4787,3159,4773,'Опочка',10000),(4788,3159,4773,'Остров',10000),(4789,3159,4773,'Палкино',10000),(4790,3159,4773,'Печоры',10000),(4791,3159,4773,'Плюсса',10000),(4792,3159,4773,'Порхов',10000),(4793,3159,4773,'Псков',10000),(4794,3159,4773,'Пустошка',10000),(4795,3159,4773,'Пушкинские Горы',10000),(4796,3159,4773,'Пыталово',10000),(4797,3159,4773,'Себеж',10000),(4798,3159,4773,'Струги-Красные',10000),(4799,3159,4773,'Усвяты',10000),(4801,3159,4800,'Азов',10000),(4802,3159,4800,'Аксай',10000),(4803,3159,4800,'Алмазный',10000),(4804,3159,4800,'Аютинск',10000),(4805,3159,4800,'Багаевский',10000),(4806,3159,4800,'Батайск',10000),(4807,3159,4800,'Белая Калитва',10000),(4808,3159,4800,'Боковская',10000),(4809,3159,4800,'Большая Мартыновка',10000),(4810,3159,4800,'Вешенская',10000),(4811,3159,4800,'Волгодонск',10000),(4812,3159,4800,'Восход',10000),(4813,3159,4800,'Гигант',10000),(4814,3159,4800,'Горняцкий',10000),(4815,3159,4800,'Гуково',10000),(4816,3159,4800,'Донецк',10000),(4817,3159,4800,'Донской',10000),(4818,3159,4800,'Дубовское',10000),(4819,3159,4800,'Жирнов',10000),(4820,3159,4800,'Заветное',10000),(4821,3159,4800,'Заводской',10000),(4822,3159,4800,'Зверево',10000),(4823,3159,4800,'Зерноград',10000),(4824,3159,4800,'Зимовники',10000),(4825,3159,4800,'Кагальницкая',10000),(4826,3159,4800,'Казанская',10000),(4827,3159,4800,'Каменоломни',10000),(4828,3159,4800,'Каменск-Шахтинский',10000),(4829,3159,4800,'Кашары',10000),(4830,3159,4800,'Коксовый',10000),(4831,3159,4800,'Константиновск',10000),(4832,3159,4800,'Красный Сулин',10000),(4833,3159,4800,'Куйбышево',10000),(4834,3159,4800,'Матвеев Курган',10000),(4835,3159,4800,'Мигулинская',10000),(4836,3159,4800,'Миллерово',10000),(4837,3159,4800,'Милютинская',10000),(4838,3159,4800,'Морозовск',10000),(4839,3159,4800,'Новочеркасск',10000),(4840,3159,4800,'Новошахтинск',10000),(4841,3159,4800,'Обливская',10000),(4842,3159,4800,'Орловский',10000),(4843,3159,4800,'Песчанокопское',10000),(4844,3159,4800,'Покровское',10000),(4845,3159,4800,'Пролетарск',10000),(4846,3159,4800,'Ремонтное',10000),(4847,3159,4800,'Родионово-Несветайская',10000),(4848,3159,4800,'Ростов-на-Дону',10000),(4849,3159,4800,'Сальск',10000),(4850,3159,4800,'Семикаракорск',10000),(4851,3159,4800,'Таганрог',10000),(4852,3159,4800,'Тарасовский',10000),(4853,3159,4800,'Тацинский',10000),(4854,3159,4800,'Усть-Донецкий',10000),(4855,3159,4800,'Целина',10000),(4856,3159,4800,'Цимлянск',10000),(4857,3159,4800,'Чалтырь',10000),(4858,3159,4800,'Чертково',10000),(4859,3159,4800,'Шахты',10000),(4860,3159,4800,'Шолоховский',10000),(4862,3159,4861,'Александро-Невский',10000),(4863,3159,4861,'Горняк',10000),(4864,3159,4861,'Гусь Железный',10000),(4865,3159,4861,'Елатьма',10000),(4866,3159,4861,'Ермишь',10000),(4867,3159,4861,'Заречный',10000),(4868,3159,4861,'Захарово',10000),(4869,3159,4861,'Кадом',10000),(4870,3159,4861,'Касимов',10000),(4871,3159,4861,'Кораблино',10000),(4872,3159,4861,'Милославское',10000),(4873,3159,4861,'Михайлов',10000),(4874,3159,4861,'Пителино',10000),(4875,3159,4861,'Пронск',10000),(4876,3159,4861,'Путятино',10000),(4877,3159,4861,'Рыбное',10000),(4878,3159,4861,'Ряжск',10000),(4879,3159,4861,'Рязань',10000),(4880,3159,4861,'Сапожок',10000),(4881,3159,4861,'Сараи',10000),(4882,3159,4861,'Сасово',10000),(4883,3159,4861,'Скопин',10000),(4884,3159,4861,'Спас-Клепики',10000),(4885,3159,4861,'Спасск-Рязанский',10000),(4886,3159,4861,'Старожилово',10000),(4887,3159,4861,'Ухолово',10000),(4888,3159,4861,'Чучково',10000),(4889,3159,4861,'Шацк',10000),(4890,3159,4861,'Шилово',10000),(4892,3159,4891,'Алексеевка',10000),(4893,3159,4891,'Безенчук',10000),(4894,3159,4891,'Богатое',10000),(4895,3159,4891,'Богатырь',10000),(4896,3159,4891,'Большая Глущица',10000),(4897,3159,4891,'Большая Черниговка',10000),(4898,3159,4891,'Борское',10000),(4899,3159,4891,'Волжский',10000),(4900,3159,4891,'Жигулевск',10000),(4901,3159,4891,'Зольное',10000),(4902,3159,4891,'Исаклы',10000),(4903,3159,4891,'Камышла',10000),(4904,3159,4891,'Кинель',10000),(4905,3159,4891,'Кинель-Черкасы',10000),(4906,3159,4891,'Клявлино',10000),(4907,3159,4891,'Кошки',10000),(4908,3159,4891,'Красноармейское',10000),(4909,3159,4891,'Куйбышев',10000),(4910,3159,4891,'Нефтегорск',10000),(4911,3159,4891,'Новокуйбышевск',10000),(4912,3159,4891,'Октябрьск',10000),(4913,3159,4891,'Отрадный',10000),(4914,3159,4891,'Пестравка',10000),(4915,3159,4891,'Похвистнево',10000),(4916,3159,4891,'Приволжье',10000),(4917,3159,4891,'Самара',10000),(4918,3159,4891,'Сызрань',10000),(4919,3159,4891,'Тольятти',10000),(4920,3159,4891,'Хворостянка',10000),(4921,3159,4891,'Чапаевск',10000),(4922,3159,4891,'Челно-Вершины',10000),(4923,3159,4891,'Шентала',10000),(4924,3159,4891,'Шигоны',10000),(4926,3159,4925,'Александровская',10000),(4927,3159,4925,'Бокситогорск',10000),(4928,3159,4925,'Большая Ижора',10000),(4929,3159,4925,'Будогощь',10000),(4930,3159,4925,'Вознесенье',10000),(4931,3159,4925,'Волосово',10000),(4932,3159,4925,'Волхов',10000),(4933,3159,4925,'Всеволожск',10000),(4934,3159,4925,'Выборг',10000),(4935,3159,4925,'Вырица',10000),(4936,3159,4925,'Высоцк',10000),(4937,3159,4925,'Гатчина',10000),(4938,3159,4925,'Дружная Горка',10000),(4939,3159,4925,'Дубровка',10000),(4940,3159,4925,'Ефимовский',10000),(4941,3159,4925,'Зеленогорск',10000),(4942,3159,4925,'Ивангород',10000),(4943,3159,4925,'Каменногорск',10000),(4944,3159,4925,'Кикерино',10000),(4945,3159,4925,'Кингисепп',10000),(4946,3159,4925,'Кириши',10000),(4947,3159,4925,'Кировск',10000),(4948,3159,4925,'Кобринское',10000),(4949,3159,4925,'Колпино',10000),(4950,3159,4925,'Кронштадт',10000),(4952,3159,4925,'Лисий Нос',10000),(4953,3159,4925,'Лодейное Поле',10000),(4954,3159,4925,'Ломоносов',10000),(4955,3159,4925,'Луга',10000),(4956,3159,4925,'Павловск',10000),(4957,3159,4925,'Парголово',10000),(4958,3159,4925,'Петродворец',10000),(4959,3159,4925,'Подпорожье',10000),(4960,3159,4925,'Приозерск',10000),(4961,3159,4925,'Пушкин',10000),(4962,3159,4925,'Санкт-Петербург',10000),(4964,3159,4925,'Сестрорецк',10000),(4965,3159,4925,'Сланцы',10000),(4966,3159,4925,'Сосновый Бор',10000),(4967,3159,4925,'Тихвин',10000),(4968,3159,4925,'Тосно',10000),(4970,3159,4969,'Александров Гай',10000),(4971,3159,4969,'Аркадак',10000),(4972,3159,4969,'Аткарск',10000),(4973,3159,4969,'Базарный Карабулак',10000),(4974,3159,4969,'Балаково',10000),(4975,3159,4969,'Балашов',10000),(4976,3159,4969,'Балтай',10000),(4977,3159,4969,'Возрождение',10000),(4978,3159,4969,'Вольск',10000),(4979,3159,4969,'Воскресенское',10000),(4980,3159,4969,'Горный',10000),(4981,3159,4969,'Дергачи',10000),(4982,3159,4969,'Духовницкое',10000),(4983,3159,4969,'Екатериновка',10000),(4984,3159,4969,'Ершов',10000),(4985,3159,4969,'Заречный',10000),(4986,3159,4969,'Ивантеевка',10000),(4987,3159,4969,'Калининск',10000),(4988,3159,4969,'Каменский',10000),(4989,3159,4969,'Красноармейск',10000),(4990,3159,4969,'Красный Кут',10000),(4991,3159,4969,'Лысые Горы',10000),(4992,3159,4969,'Маркс',10000),(4993,3159,4969,'Мокроус',10000),(4994,3159,4969,'Новоузенск',10000),(4995,3159,4969,'Новые Бурасы',10000),(4996,3159,4969,'Озинки',10000),(4997,3159,4969,'Перелюб',10000),(4998,3159,4969,'Петровск',10000),(4999,3159,4969,'Питерка',10000),(5000,3159,4969,'Пугачев',10000),(5001,3159,4969,'Ровное',10000),(5002,3159,4969,'Романовка',10000),(5003,3159,4969,'Ртищево',10000),(5004,3159,4969,'Самойловка',10000),(5005,3159,4969,'Саратов',10000),(5006,3159,4969,'Степное',10000),(5007,3159,4969,'Татищево',10000),(5008,3159,4969,'Турки',10000),(5009,3159,4969,'Хвалынск',10000),(5010,3159,4969,'Энгельс',10000),(5012,3159,5011,'Абый',10000),(5013,3159,5011,'Алдан',10000),(5014,3159,5011,'Амга',10000),(5015,3159,5011,'Батагай',10000),(5016,3159,5011,'Бердигестях',10000),(5017,3159,5011,'Беркакит',10000),(5018,3159,5011,'Бестях',10000),(5019,3159,5011,'Борогонцы',10000),(5020,3159,5011,'Верхневилюйск',10000),(5021,3159,5011,'Верхнеколымск',10000),(5022,3159,5011,'Верхоянск',10000),(5023,3159,5011,'Вилюйск',10000),(5024,3159,5011,'Витим',10000),(5025,3159,5011,'Власово',10000),(5026,3159,5011,'Жиганск',10000),(5027,3159,5011,'Зырянка',10000),(5028,3159,5011,'Кангалассы',10000),(5029,3159,5011,'Канкунский',10000),(5030,3159,5011,'Ленск',10000),(5031,3159,5011,'Майя',10000),(5032,3159,5011,'Менкеря',10000),(5033,3159,5011,'Мирный',10000),(5034,3159,5011,'Нерюнгри',10000),(5035,3159,5011,'Нычалах',10000),(5036,3159,5011,'Нюрба',10000),(5037,3159,5011,'Олекминск',10000),(5038,3159,5011,'Покровск',10000),(5039,3159,5011,'Сангар',10000),(5040,3159,5011,'Саскылах',10000),(5041,3159,5011,'Среднеколымск',10000),(5042,3159,5011,'Сунтар',10000),(5043,3159,5011,'Тикси',10000),(5044,3159,5011,'Усть-Мая',10000),(5045,3159,5011,'Усть-Нера',10000),(5046,3159,5011,'Хандыга',10000),(5047,3159,5011,'Хонуу',10000),(5048,3159,5011,'Черский',10000),(5049,3159,5011,'Чокурдах',10000),(5050,3159,5011,'Чурапча',10000),(5051,3159,5011,'Якутск',10000),(5053,3159,5052,'Александровск-Сахалинский',10000),(5054,3159,5052,'Анбэцу',10000),(5055,3159,5052,'Анива',10000),(5056,3159,5052,'Бошняково',10000),(5057,3159,5052,'Быков',10000),(5058,3159,5052,'Вахрушев',10000),(5059,3159,5052,'Взморье',10000),(5060,3159,5052,'Гастелло',10000),(5061,3159,5052,'Горнозаводск',10000),(5062,3159,5052,'Долинск',10000),(5063,3159,5052,'Ильинский',10000),(5064,3159,5052,'Катангли',10000),(5065,3159,5052,'Корсаков',10000),(5066,3159,5052,'Курильск',10000),(5067,3159,5052,'Макаров',10000),(5068,3159,5052,'Невельск',10000),(5069,3159,5052,'Ноглики',10000),(5070,3159,5052,'Оха',10000),(5071,3159,5052,'Поронайск',10000),(5072,3159,5052,'Северо-Курильск',10000),(5073,3159,5052,'Смирных',10000),(5074,3159,5052,'Томари',10000),(5075,3159,5052,'Тымовское',10000),(5076,3159,5052,'Углегорск',10000),(5077,3159,5052,'Холмск',10000),(5078,3159,5052,'Шахтерск',10000),(5079,3159,5052,'Южно-Сахалинск',10000),(5081,3159,5080,'Алапаевск',10000),(5082,3159,5080,'Алтынай',10000),(5083,3159,5080,'Арамиль',10000),(5084,3159,5080,'Артемовский',10000),(5085,3159,5080,'Арти',10000),(5086,3159,5080,'Асбест',10000),(5087,3159,5080,'Ачит',10000),(5088,3159,5080,'Байкалово',10000),(5089,3159,5080,'Басьяновский',10000),(5090,3159,5080,'Белоярский',10000),(5091,3159,5080,'Березовский',10000),(5092,3159,5080,'Богданович',10000),(5093,3159,5080,'Буланаш',10000),(5094,3159,5080,'Верхний Тагил',10000),(5095,3159,5080,'Верхняя Пышма',10000),(5096,3159,5080,'Верхняя Салда',10000),(5097,3159,5080,'Верхняя Синячиха',10000),(5098,3159,5080,'Верхняя Сысерть',10000),(5099,3159,5080,'Верхняя Тура',10000),(5100,3159,5080,'Верхотурье',10000),(5101,3159,5080,'Висим',10000),(5102,3159,5080,'Волчанск',10000),(5103,3159,5080,'Воронцовка',10000),(5104,3159,5080,'Гари',10000),(5105,3159,5080,'Дегтярск',10000),(5106,3159,5080,'Екатеринбург',10000),(5107,3159,5080,'Ертарский',10000),(5108,3159,5080,'Заводоуспенское',10000),(5109,3159,5080,'Зыряновский',10000),(5110,3159,5080,'Зюзельский',10000),(5111,3159,5080,'Ивдель',10000),(5112,3159,5080,'Изумруд',10000),(5113,3159,5080,'Ирбит',10000),(5114,3159,5080,'Ис',10000),(5115,3159,5080,'Каменск-Уральский',10000),(5116,3159,5080,'Камышлов',10000),(5117,3159,5080,'Карпинск',10000),(5118,3159,5080,'Карпунинский',10000),(5119,3159,5080,'Качканар',10000),(5120,3159,5080,'Кировград',10000),(5121,3159,5080,'Краснотурьинск',10000),(5122,3159,5080,'Красноуральск',10000),(5123,3159,5080,'Красноуфимск',10000),(5124,3159,5080,'Кушва',10000),(5125,3159,5080,'Михайловск',10000),(5126,3159,5080,'Невьянск',10000),(5127,3159,5080,'Нижние Серги',10000),(5128,3159,5080,'Нижний Тагил',10000),(5129,3159,5080,'Нижняя Салда',10000),(5130,3159,5080,'Нижняя Тура',10000),(5131,3159,5080,'Новая Ляля',10000),(5132,3159,5080,'Оус',10000),(5133,3159,5080,'Первоуральск',10000),(5134,3159,5080,'Полевской',10000),(5135,3159,5080,'Пышма',10000),(5136,3159,5080,'Ревда',10000),(5137,3159,5080,'Реж',10000),(5138,3159,5080,'Свердловск',10000),(5139,3159,5080,'Североуральск',10000),(5140,3159,5080,'Серов',10000),(5141,3159,5080,'Сосьва',10000),(5142,3159,5080,'Среднеуральск',10000),(5143,3159,5080,'Сухой Лог',10000),(5144,3159,5080,'Сысерть',10000),(5145,3159,5080,'Таборы',10000),(5146,3159,5080,'Тавда',10000),(5147,3159,5080,'Талица',10000),(5148,3159,5080,'Тугулым',10000),(5149,3159,5080,'Туринск',10000),(5150,3159,5080,'Туринская Слобода',10000),(5152,3159,5151,'Алагир',10000),(5153,3159,5151,'Ардон',10000),(5154,3159,5151,'Беслан',10000),(5155,3159,5151,'Бурон',10000),(5156,3159,5151,'Владикавказ',10000),(5157,3159,5151,'Дигора',10000),(5158,3159,5151,'Моздок',10000),(5159,3159,5151,'Орджоникидзе',10000),(5160,3159,5151,'Чикола',10000),(5162,3159,5161,'Велиж',10000),(5163,3159,5161,'Верхнеднепровский',10000),(5164,3159,5161,'Ворга',10000),(5165,3159,5161,'Вязьма',10000),(5166,3159,5161,'Гагарин',10000),(5167,3159,5161,'Глинка',10000),(5168,3159,5161,'Голынки',10000),(5169,3159,5161,'Демидов',10000),(5170,3159,5161,'Дорогобуж',10000),(5171,3159,5161,'Духовщина',10000),(5172,3159,5161,'Екимовичи',10000),(5173,3159,5161,'Ельня',10000),(5174,3159,5161,'Ершичи',10000),(5175,3159,5161,'Издешково',10000),(5176,3159,5161,'Кардымово',10000),(5177,3159,5161,'Красный',10000),(5178,3159,5161,'Монастырщина',10000),(5179,3159,5161,'Новодугино',10000),(5180,3159,5161,'Починок',10000),(5181,3159,5161,'Рославль',10000),(5182,3159,5161,'Рудня',10000),(5183,3159,5161,'Сафоново',10000),(5184,3159,5161,'Смоленск',10000),(5185,3159,5161,'Сычевка',10000),(5186,3159,5161,'Угра',10000),(5187,3159,5161,'Хиславичи',10000),(5188,3159,5161,'Холм-Жирковский',10000),(5189,3159,5161,'Шумячи',10000),(5190,3159,5161,'Ярцево',10000),(5192,3159,5191,'Александровское',10000),(5193,3159,5191,'Арзгир',10000),(5194,3159,5191,'Благодарный',10000),(5195,3159,5191,'Буденновск',10000),(5196,3159,5191,'Георгиевск',10000),(5197,3159,5191,'Дивное',10000),(5198,3159,5191,'Домбай',10000),(5199,3159,5191,'Донское',10000),(5200,3159,5191,'Ессентуки',10000),(5201,3159,5191,'Иноземцево',10000),(5202,3159,5191,'Ипатово',10000),(5203,3159,5191,'Карачаевск',10000),(5204,3159,5191,'Кисловодск',10000),(5205,3159,5191,'Кочубеевское',10000),(5206,3159,5191,'Красногвардейское',10000),(5207,3159,5191,'Курсавка',10000),(5208,3159,5191,'Левокумское',10000),(5209,3159,5191,'Минеральные Воды',10000),(5210,3159,5191,'Невинномысск',10000),(5211,3159,5191,'Нефтекумск',10000),(5212,3159,5191,'Новоалександровск',10000),(5213,3159,5191,'Новоалександровская',10000),(5214,3159,5191,'Новопавловск',10000),(5215,3159,5191,'Новоселицкое',10000),(5216,3159,5191,'Преградная',10000),(5217,3159,5191,'Пятигорск',10000),(5218,3159,5191,'Светлоград',10000),(5219,3159,5191,'Ставрополь',10000),(5220,3159,5191,'Степное',10000),(5221,3159,5191,'Теберда',10000),(5222,3159,5191,'Усть-Джегута',10000),(5223,3159,5191,'Хабез',10000),(5224,3159,5191,'Черкесск',10000),(5226,3159,5225,'Бондари',10000),(5227,3159,5225,'Гавриловка Вторая',10000),(5228,3159,5225,'Жердевка',10000),(5229,3159,5225,'Знаменка',10000),(5230,3159,5225,'Инжавино',10000),(5231,3159,5225,'Кирсанов',10000),(5232,3159,5225,'Котовск',10000),(5233,3159,5225,'Мичуринск',10000),(5234,3159,5225,'Мордово',10000),(5235,3159,5225,'Моршанск',10000),(5236,3159,5225,'Мучкапский',10000),(5237,3159,5225,'Петровское',10000),(5238,3159,5225,'Пичаево',10000),(5239,3159,5225,'Рассказово',10000),(5240,3159,5225,'Ржакса',10000),(5241,3159,5225,'Староюрьево',10000),(5242,3159,5225,'Тамбов',10000),(5243,3159,5225,'Токаревка',10000),(5244,3159,5225,'Уварово',10000),(5245,3159,5225,'Умет',10000),(5247,3159,5246,'Агрыз',10000),(5248,3159,5246,'Азнакаево',10000),(5249,3159,5246,'Аксубаево',10000),(5250,3159,5246,'Актюбинский',10000),(5251,3159,5246,'Алексеевское',10000),(5252,3159,5246,'Альметьевск',10000),(5253,3159,5246,'Апастово',10000),(5254,3159,5246,'Арск',10000),(5255,3159,5246,'Бавлы',10000),(5256,3159,5246,'Базарные Матаки',10000),(5257,3159,5246,'Балтаси',10000),(5258,3159,5246,'Богатые Сабы',10000),(5259,3159,5246,'Брежнев',10000),(5260,3159,5246,'Бугульма',10000),(5261,3159,5246,'Буинск',10000),(5262,3159,5246,'Васильево',10000),(5263,3159,5246,'Верхний Услон',10000),(5264,3159,5246,'Высокая Гора',10000),(5265,3159,5246,'Дербешкинский',10000),(5266,3159,5246,'Елабуга',10000),(5267,3159,5246,'Заинск',10000),(5268,3159,5246,'Зеленодольск',10000),(5269,3159,5246,'Казань',10000),(5270,3159,5246,'Камское Устье',10000),(5271,3159,5246,'Карабаш',10000),(5272,3159,5246,'Куйбышев',10000),(5273,3159,5246,'Кукмод',10000),(5274,3159,5246,'Кукмор',10000),(5275,3159,5246,'Лаишево',10000),(5276,3159,5246,'Лениногорск',10000),(5277,3159,5246,'Мамадыш',10000),(5278,3159,5246,'Менделеевск',10000),(5279,3159,5246,'Мензелинск',10000),(5280,3159,5246,'Муслюмово',10000),(5281,3159,5246,'Набережные Челны',10000),(5282,3159,5246,'Нижнекамск',10000),(5283,3159,5246,'Новошешминск',10000),(5284,3159,5246,'Нурлат',10000),(5285,3159,5246,'Пестрецы',10000),(5286,3159,5246,'Рыбная Слобода',10000),(5287,3159,5246,'Сарманово',10000),(5288,3159,5246,'Старое Дрожжаное',10000),(5289,3159,5246,'Тетюши',10000),(5290,3159,5246,'Чистополь',10000),(5292,3159,5291,'Александровское',10000),(5293,3159,5291,'Асино',10000),(5294,3159,5291,'Бакчар',10000),(5295,3159,5291,'Батурино',10000),(5296,3159,5291,'Белый Яр',10000),(5297,3159,5291,'Зырянское',10000),(5298,3159,5291,'Итатка',10000),(5299,3159,5291,'Каргасок',10000),(5300,3159,5291,'Катайга',10000),(5301,3159,5291,'Кожевниково',10000),(5302,3159,5291,'Колпашево',10000),(5303,3159,5291,'Кривошеино',10000),(5304,3159,5291,'Мельниково',10000),(5305,3159,5291,'Молчаново',10000),(5306,3159,5291,'Парабель',10000),(5307,3159,5291,'Первомайское',10000),(5308,3159,5291,'Подгорное',10000),(5309,3159,5291,'Стрежевой',10000),(5310,3159,5291,'Томск',10000),(5311,3159,5291,'Тымск',10000),(5313,3159,5312,'Ак-Довурак',10000),(5314,3159,5312,'Бай Хаак',10000),(5315,3159,5312,'Кызыл',10000),(5316,3159,5312,'Самагалтай',10000),(5317,3159,5312,'Сарыг-Сеп',10000),(5318,3159,5312,'Суть-Холь',10000),(5319,3159,5312,'Тоора-Хем',10000),(5320,3159,5312,'Туран',10000),(5321,3159,5312,'Тээли',10000),(5322,3159,5312,'Хову-Аксы',10000),(5323,3159,5312,'Чадан',10000),(5324,3159,5312,'Шагонар',10000),(5325,3159,5312,'Эрзин',10000),(5327,3159,5326,'Агеево',10000),(5328,3159,5326,'Алексин',10000),(5329,3159,5326,'Арсеньево',10000),(5330,3159,5326,'Барсуки',10000),(5331,3159,5326,'Бегичевский',10000),(5332,3159,5326,'Богородицк',10000),(5333,3159,5326,'Болохово',10000),(5334,3159,5326,'Велегож',10000),(5335,3159,5326,'Венев',10000),(5336,3159,5326,'Волово',10000),(5337,3159,5326,'Горелки',10000),(5338,3159,5326,'Донской',10000),(5339,3159,5326,'Дубна',10000),(5340,3159,5326,'Епифань',10000),(5341,3159,5326,'Ефремов',10000),(5342,3159,5326,'Заокский',10000),(5343,3159,5326,'Казановка',10000),(5344,3159,5326,'Кимовск',10000),(5345,3159,5326,'Киреевск',10000),(5346,3159,5326,'Куркино',10000),(5347,3159,5326,'Ленинский',10000),(5348,3159,5326,'Новомосковск',10000),(5349,3159,5326,'Одоев',10000),(5350,3159,5326,'Плавск',10000),(5351,3159,5326,'Суворов',10000),(5352,3159,5326,'Тула',10000),(5353,3159,5326,'Узловая',10000),(5354,3159,5326,'Щекино',10000),(5355,3159,5326,'Ясногорск',10000),(5357,3159,5356,'Абатский',10000),(5358,3159,5356,'Аксарка',10000),(5359,3159,5356,'Армизонское',10000),(5360,3159,5356,'Аромашево',10000),(5361,3159,5356,'Бердюжье',10000),(5362,3159,5356,'Большое Сорокино',10000),(5363,3159,5356,'Вагай',10000),(5364,3159,5356,'Викулово',10000),(5365,3159,5356,'Винзили',10000),(5366,3159,5356,'Голышманово',10000),(5367,3159,5356,'Заводопетровский',10000),(5368,3159,5356,'Заводоуковск',10000),(5369,3159,5356,'Исетское',10000),(5370,3159,5356,'Ишим',10000),(5371,3159,5356,'Казанское',10000),(5372,3159,5356,'Казым-Мыс',10000),(5373,3159,5356,'Кондинское',10000),(5374,3159,5356,'Красноселькуп',10000),(5375,3159,5356,'Лабытнанги',10000),(5376,3159,5356,'Мужи',10000),(5377,3159,5356,'Надым',10000),(5378,3159,5356,'Находка',10000),(5379,3159,5356,'Нефтеюганск',10000),(5380,3159,5356,'Нижневартовск',10000),(5381,3159,5356,'Нижняя Тавда',10000),(5382,3159,5356,'Новый Уренгой',10000),(5383,3159,5356,'Ноябрьск',10000),(5384,3159,5356,'Нягань',10000),(5385,3159,5356,'Октябрьское',10000),(5386,3159,5356,'Омутинский',10000),(5387,3159,5356,'Радужный',10000),(5388,3159,5356,'Салехард',10000),(5389,3159,5356,'Сладково',10000),(5390,3159,5356,'Советский',10000),(5391,3159,5356,'Сургут',10000),(5392,3159,5356,'Тазовский',10000),(5393,3159,5356,'Тарко-Сале',10000),(5394,3159,5356,'Тобольск',10000),(5395,3159,5356,'Тюмень',10000),(5396,3159,5356,'Уват',10000),(5397,3159,5356,'Упорово',10000),(5398,3159,5356,'Урай',10000),(5399,3159,5356,'Ханты-Мансийск',10000),(5400,3159,5356,'Юрибей',10000),(5401,3159,5356,'Ялуторовск',10000),(5402,3159,5356,'Яр-Сале',10000),(5403,3159,5356,'Ярково',10000),(5405,3159,5404,'Алнаши',10000),(5406,3159,5404,'Балезино',10000),(5407,3159,5404,'Вавож',10000),(5408,3159,5404,'Воткинск',10000),(5409,3159,5404,'Глазов',10000),(5410,3159,5404,'Грахово',10000),(5411,3159,5404,'Дебесы',10000),(5412,3159,5404,'Завьялово',10000),(5413,3159,5404,'Игра',10000),(5414,3159,5404,'Ижевск',10000),(5415,3159,5404,'Кама',10000),(5416,3159,5404,'Камбарка',10000),(5417,3159,5404,'Каракулино',10000),(5418,3159,5404,'Кез',10000),(5419,3159,5404,'Кизнер',10000),(5420,3159,5404,'Киясово',10000),(5421,3159,5404,'Красногорское',10000),(5422,3159,5404,'Можга',10000),(5423,3159,5404,'Сарапул',10000),(5424,3159,5404,'Селты',10000),(5425,3159,5404,'Сюмси',10000),(5426,3159,5404,'Ува',10000),(5427,3159,5404,'Устинов',10000),(5428,3159,5404,'Шаркан',10000),(5429,3159,5404,'Юкаменское',10000),(5430,3159,5404,'Якшур-Бодья',10000),(5431,3159,5404,'Яр',10000),(5433,3159,5432,'Базарный Сызган',10000),(5434,3159,5432,'Барыш',10000),(5435,3159,5432,'Большое Нагаткино',10000),(5436,3159,5432,'Вешкайма',10000),(5437,3159,5432,'Глотовка',10000),(5438,3159,5432,'Димитровград',10000),(5439,3159,5432,'Игнатовка',10000),(5440,3159,5432,'Измайлово',10000),(5441,3159,5432,'Инза',10000),(5442,3159,5432,'Ишеевка',10000),(5443,3159,5432,'Канадей',10000),(5444,3159,5432,'Карсун',10000),(5445,3159,5432,'Кузоватово',10000),(5446,3159,5432,'Майна',10000),(5447,3159,5432,'Новая Малыкла',10000),(5448,3159,5432,'Новоспасское',10000),(5449,3159,5432,'Павловка',10000),(5450,3159,5432,'Радищево',10000),(5451,3159,5432,'Сенгилей',10000),(5452,3159,5432,'Старая Кулатка',10000),(5453,3159,5432,'Старая Майна',10000),(5454,3159,5432,'Сурское',10000),(5455,3159,5432,'Тереньга',10000),(5456,3159,5432,'Ульяновск',10000),(5457,3159,5432,'Чердаклы',10000),(5459,3159,5458,'Аксай',10000),(5460,3159,5458,'Дарьинское',10000),(5461,3159,5458,'Деркул',10000),(5462,3159,5458,'Джамбейты',10000),(5463,3159,5458,'Джаныбек',10000),(5464,3159,5458,'Казталовка',10000),(5465,3159,5458,'Калмыково',10000),(5466,3159,5458,'Каратобе',10000),(5467,3159,5458,'Переметное',10000),(5468,3159,5458,'Сайхин',10000),(5469,3159,5458,'Уральск',10000),(5470,3159,5458,'Федоровка',10000),(5471,3159,5458,'Фурманово',10000),(5472,3159,5458,'Чапаев',10000),(5474,3159,5473,'Амурск',10000),(5475,3159,5473,'Аян',10000),(5476,3159,5473,'Березовый',10000),(5477,3159,5473,'Бикин',10000),(5478,3159,5473,'Бира',10000),(5479,3159,5473,'Биракан',10000),(5480,3159,5473,'Богородское',10000),(5481,3159,5473,'Болонь',10000),(5482,3159,5473,'Ванино',10000),(5483,3159,5473,'Волочаевка Вторая',10000),(5484,3159,5473,'Высокогорный',10000),(5485,3159,5473,'Вяземский',10000),(5486,3159,5473,'Горный',10000),(5487,3159,5473,'Гурское',10000),(5488,3159,5473,'Дормидонтовка',10000),(5489,3159,5473,'Заветы Ильича',10000),(5490,3159,5473,'Известковый',10000),(5491,3159,5473,'Иннокентьевка',10000),(5492,3159,5473,'Комсомольск-на-Амуре',10000),(5493,3159,5473,'Ленинское',10000),(5494,3159,5473,'Нелькан',10000),(5495,3159,5473,'Николаевск-на-Амуре',10000),(5496,3159,5473,'Облучье',10000),(5497,3159,5473,'Охотск',10000),(5498,3159,5473,'Переяславка',10000),(5499,3159,5473,'Смидович',10000),(5500,3159,5473,'Советская Гавань',10000),(5501,3159,5473,'Софийск',10000),(5502,3159,5473,'Троицкое',10000),(5503,3159,5473,'Тугур',10000),(5504,3159,5473,'Хабаровск',10000),(5505,3159,5473,'Чегдомын',10000),(5506,3159,5473,'Чумикан',10000),(5508,3159,5507,'Агаповка',10000),(5509,3159,5507,'Аргаяш',10000),(5510,3159,5507,'Аша',10000),(5511,3159,5507,'Бакал',10000),(5512,3159,5507,'Бреды',10000),(5513,3159,5507,'Варна',10000),(5514,3159,5507,'Верхнеуральск',10000),(5515,3159,5507,'Верхний Уфалей',10000),(5516,3159,5507,'Еманжелинск',10000),(5517,3159,5507,'Златоуст',10000),(5518,3159,5507,'Карабаш',10000),(5519,3159,5507,'Карталы',10000),(5520,3159,5507,'Касли',10000),(5521,3159,5507,'Катав-Ивановск',10000),(5522,3159,5507,'Копейск',10000),(5523,3159,5507,'Коркино',10000),(5524,3159,5507,'Кунашак',10000),(5525,3159,5507,'Куса',10000),(5526,3159,5507,'Кыштым',10000),(5527,3159,5507,'Магнитогорск',10000),(5528,3159,5507,'Миасс',10000),(5529,3159,5507,'Октябрьское',10000),(5530,3159,5507,'Пласт',10000),(5531,3159,5507,'Сатка',10000),(5532,3159,5507,'Сим',10000),(5533,3159,5507,'Троицк',10000),(5534,3159,5507,'Увельский',10000),(5535,3159,5507,'Уйское',10000),(5536,3159,5507,'Усть-Катав',10000),(5537,3159,5507,'Фершампенуаз',10000),(5538,3159,5507,'Чебаркуль',10000),(5539,3159,5507,'Челябинск',10000),(5540,3159,5507,'Чесма',10000),(5541,3159,5507,'Южно-Уральск',10000),(5542,3159,5507,'Юрюзань',10000),(5544,3159,5543,'Аргун',10000),(5545,3159,5543,'Грозный',10000),(5546,3159,5543,'Гудермез',10000),(5547,3159,15789410,'Малгобек',10000),(5548,3159,15789410,'Назрань',10000),(5549,3159,5543,'Наурская',10000),(5550,3159,5543,'Ножай-Юрт',10000),(5551,3159,15789410,'Сунжа',10000),(5552,3159,5543,'Советское',10000),(5553,3159,5543,'Урус-Мартан',10000),(5554,3159,5543,'Шали',10000),(5556,3159,5555,'Агинское',10000),(5557,3159,5555,'Аксеново-Зиловское',10000),(5558,3159,5555,'Акша',10000),(5559,3159,5555,'Александровский Завод',10000),(5560,3159,5555,'Амазар',10000),(5561,3159,5555,'Арбагар',10000),(5562,3159,5555,'Атамановка',10000),(5563,3159,5555,'Балей',10000),(5564,3159,5555,'Борзя',10000),(5565,3159,5555,'Букачача',10000),(5566,3159,5555,'Газимурский Завод',10000),(5567,3159,5555,'Давенда',10000),(5568,3159,5555,'Дарасун',10000),(5569,3159,5555,'Дровяная',10000),(5570,3159,5555,'Дульдурга',10000),(5571,3159,5555,'Жиндо',10000),(5572,3159,5555,'Забайкальск',10000),(5573,3159,5555,'Итака',10000),(5574,3159,5555,'Калга',10000),(5575,3159,5555,'Карымское',10000),(5576,3159,5555,'Кличка',10000),(5577,3159,5555,'Ключевский',10000),(5578,3159,5555,'Кокуй',10000),(5579,3159,5555,'Краснокаменск',10000),(5580,3159,5555,'Красный Чикой',10000),(5581,3159,5555,'Кыра',10000),(5582,3159,5555,'Моготуй',10000),(5583,3159,5555,'Могоча',10000),(5584,3159,5555,'Нерчинск',10000),(5585,3159,5555,'Нерчинский Завод',10000),(5586,3159,5555,'Нижний Часучей',10000),(5587,3159,5555,'Оловянная',10000),(5588,3159,5555,'Первомайский',10000),(5589,3159,5555,'Петровск-Забайкальский',10000),(5590,3159,5555,'Приаргунск',10000),(5591,3159,5555,'Сретенск',10000),(5592,3159,5555,'Тупик',10000),(5593,3159,5555,'Улеты',10000),(5594,3159,5555,'Хилок',10000),(5595,3159,5555,'Чара',10000),(5596,3159,5555,'Чернышевск',10000),(5597,3159,5555,'Чита',10000),(5598,3159,5555,'Шелопугино',10000),(5599,3159,5555,'Шилка',10000),(5601,3159,5600,'Алатырь',10000),(5602,3159,5600,'Аликово',10000),(5603,3159,5600,'Батырева',10000),(5604,3159,5600,'Буинск',10000),(5605,3159,5600,'Вурнары',10000),(5606,3159,5600,'Ибреси',10000),(5607,3159,5600,'Канаш',10000),(5608,3159,5600,'Киря',10000),(5609,3159,5600,'Комсомольское',10000),(5610,3159,5600,'Красноармейское',10000),(5611,3159,5600,'Красные Четаи',10000),(5612,3159,5600,'Кугеси',10000),(5613,3159,5600,'Мариинский Посад',10000),(5614,3159,5600,'Моргауши',10000),(5615,3159,5600,'Новочебоксарск',10000),(5616,3159,5600,'Порецкое',10000),(5617,3159,5600,'Урмары',10000),(5618,3159,5600,'Цивильск',10000),(5619,3159,5600,'Чебоксары',10000),(5620,3159,5600,'Шемурша',10000),(5621,3159,5600,'Шумерля',10000),(5622,3159,5600,'Ядрин',10000),(5623,3159,5600,'Яльчики',10000),(5624,3159,5600,'Янтиково',10000),(5626,3159,5625,'Андропов',10000),(5627,3159,5625,'Берендеево',10000),(5628,3159,5625,'Большое Село',10000),(5629,3159,5625,'Борисоглебский',10000),(5630,3159,5625,'Брейтово',10000),(5631,3159,5625,'Бурмакино',10000),(5632,3159,5625,'Варегово',10000),(5633,3159,5625,'Волга',10000),(5634,3159,5625,'Гаврилов Ям',10000),(5635,3159,5625,'Данилов',10000),(5636,3159,5625,'Любим',10000),(5637,3159,5625,'Мышкино',10000),(5638,3159,5625,'Некрасовское',10000),(5639,3159,5625,'Новый Некоуз',10000),(5640,3159,5625,'Переславль-Залесский',10000),(5641,3159,5625,'Пошехонье-Володарск',10000),(5642,3159,5625,'Ростов',10000),(5643,3159,5625,'Рыбинск',10000),(5644,3159,5625,'Тутаев',10000),(5645,3159,5625,'Углич',10000),(5646,3159,5625,'Ярославль',10000),(5649,5647,5648,'Ахуачапан',10000),(5651,5647,5650,'Коютепекуэ',10000),(5653,5647,5652,'Нуэва Сан Салвадор',10000),(5655,5647,5654,'Закатеколука',10000),(5657,5647,5656,'Ла Унион',10000),(5659,5647,5658,'Сан Мигуэл',10000),(5661,5647,5660,'Сан-Сальвадор',10000),(5663,5647,5662,'Санта Ана',10000),(5665,5647,5664,'Сонсонат',10000),(5668,5666,5667,'Трнава',10000),(5670,5666,5669,'Братислава',10000),(5672,5666,5671,'Зилина',10000),(5675,5673,5674,'Любляна',10000),(5677,5673,5676,'Марибор',10000),(5680,5678,5679,'Парамарибо',10000),(5683,5681,5682,'Айдахо-Фоллс',10000),(5684,5681,5682,'Арко',10000),(5685,5681,5682,'Барли',10000),(5686,5681,5682,'Бойсе',10000),(5687,5681,5682,'Левистон',10000),(5688,5681,5682,'Маунтейн-Хоум',10000),(5689,5681,5682,'Монтпелье',10000),(5690,5681,5682,'Орофино',10000),(5691,5681,5682,'Покателло',10000),(5692,5681,5682,'Рексбург',10000),(5693,5681,5682,'Руперт',10000),(5695,5681,5694,'Айова-Сити',10000),(5696,5681,5694,'Аллеман',10000),(5697,5681,5694,'Амес',10000),(5698,5681,5694,'Асбури',10000),(5699,5681,5694,'Барлингтон',10000),(5700,5681,5694,'Беттендорф',10000),(5701,5681,5694,'Блуэ Грасс',10000),(5702,5681,5694,'Буффало',10000),(5703,5681,5694,'Ватерлоо',10000),(5704,5681,5694,'Вест-Де-Мойн',10000),(5705,5681,5694,'Виндсор-Хейгтс',10000),(5706,5681,5694,'Вудвард',10000),(5707,5681,5694,'Гилбертвилл',10000),(5708,5681,5694,'Гринфилд',10000),(5709,5681,5694,'Давенпорт',10000),(5710,5681,5694,'Де-Мойн',10000),(5711,5681,5694,'Декора',10000),(5712,5681,5694,'Денвер',10000),(5713,5681,5694,'Джайнсвилл',10000),(5714,5681,5694,'Дубукуэ',10000),(5715,5681,5694,'Елдридж',10000),(5716,5681,5694,'Калумет',10000),(5717,5681,5694,'Камминг',10000),(5718,5681,5694,'Картер-Лейк',10000),(5719,5681,5694,'Кеокук',10000),(5720,5681,5694,'Клайв',10000),(5721,5681,5694,'Кларинда',10000),(5722,5681,5694,'Клинтон',10000),(5723,5681,5694,'Консил-Блаффс',10000),(5724,5681,5694,'Коридон',10000),(5725,5681,5694,'Крескент',10000),(5726,5681,5694,'Креско',10000),(5727,5681,5694,'Лайон',10000),(5728,5681,5694,'Маршаллтаун',10000),(5729,5681,5694,'Масон-Сити',10000),(5730,5681,5694,'Норвалк',10000),(5731,5681,5694,'Олбани',10000),(5732,5681,5694,'Онава',10000),(5733,5681,5694,'Осадж',10000),(5734,5681,5694,'Оттумва',10000),(5735,5681,5694,'Плисант-Хилл',10000),(5736,5681,5694,'Ред-Оак',10000),(5737,5681,5694,'Реймонд',10000),(5738,5681,5694,'Ривердал',10000),(5739,5681,5694,'Сагевилл',10000),(5740,5681,5694,'Седар-Рапидс',10000),(5741,5681,5694,'Седар-Фоллс',10000),(5742,5681,5694,'Сиу-Сити',10000),(5743,5681,5694,'Урбандал',10000),(5744,5681,5694,'Форт-Додж',10000),(5745,5681,5694,'Чаритон',10000),(5746,5681,5694,'Чарльс-Сити',10000),(5747,5681,5694,'Эвансдейл',10000),(5748,5681,5694,'Элдора',10000),(5749,5681,5694,'Элк-Ран-Хейгтс',10000),(5750,5681,5694,'Эмметсбург',10000),(5751,5681,5694,'Эстервилл',10000),(5753,5681,5752,'Авон',10000),(5754,5681,5752,'Айрондейл',10000),(5755,5681,5752,'Акрон',10000),(5756,5681,5752,'Альбертвиль',10000),(5757,5681,5752,'Андалусиа',10000),(5758,5681,5752,'Аннистон',10000),(5759,5681,5752,'Атенс',10000),(5760,5681,5752,'Атмор',10000),(5761,5681,5752,'Аубурн',10000),(5762,5681,5752,'Аутаугавилл',10000),(5763,5681,5752,'Бабби',10000),(5764,5681,5752,'Бентон',10000),(5765,5681,5752,'Берри',10000),(5766,5681,5752,'Бессемер',10000),(5767,5681,5752,'Бир Крик',10000),(5768,5681,5752,'Бирмингам',10000),(5769,5681,5752,'Блу-Маунтайн',10000),(5770,5681,5752,'Боаз',10000),(5771,5681,5752,'Бревтон',10000),(5772,5681,5752,'Бригтон',10000),(5773,5681,5752,'Бриллиант',10000),(5774,5681,5752,'Бруквуд',10000),(5775,5681,5752,'Ваверли',10000),(5776,5681,5752,'Валдо',10000),(5777,5681,5752,'Ванк',10000),(5778,5681,5752,'Вебб',10000),(5779,5681,5752,'Веставиа Хиллс',10000),(5780,5681,5752,'Ветумпка',10000),(5781,5681,5752,'Вивер',10000),(5782,5681,5752,'Вилмер',10000),(5783,5681,5752,'Вудвилл',10000),(5784,5681,5752,'Гадсден',10000),(5785,5681,5752,'Гардендал',10000),(5786,5681,5752,'Гералдин',10000),(5787,5681,5752,'Голдвилл',10000),(5788,5681,5752,'Грант',10000),(5789,5681,5752,'Гров Хилл',10000),(5790,5681,5752,'Гу-Вин',10000),(5791,5681,5752,'Гудватер',10000),(5792,5681,5752,'Гуин',10000),(5793,5681,5752,'Гурли',10000),(5794,5681,5752,'Далевилл',10000),(5795,5681,5752,'Дафна',10000),(5796,5681,5752,'Декатур',10000),(5797,5681,5752,'Дора',10000),(5798,5681,5752,'Дотан',10000),(5799,5681,5752,'Дуттон',10000),(5800,5681,5752,'Елба',10000),(5801,5681,5752,'Еуфаула',10000),(5802,5681,5752,'Карбон Хилл',10000),(5803,5681,5752,'Кауартс',10000),(5804,5681,5752,'Кинси',10000),(5805,5681,5752,'Кинстон',10000),(5806,5681,5752,'Клантон',10000),(5807,5681,5752,'Клэйхатчи',10000),(5808,5681,5752,'Коллинсвилл',10000),(5809,5681,5752,'Кордова',10000),(5810,5681,5752,'Коттонвуд',10000),(5811,5681,5752,'Коуртланд',10000),(5812,5681,5752,'Креола',10000),(5813,5681,5752,'Кэмп-Хилл',10000),(5814,5681,5752,'Лангдал',10000),(5815,5681,5752,'Ланетт',10000),(5816,5681,5752,'Лаундесборо',10000),(5817,5681,5752,'Лафэйетт',10000),(5818,5681,5752,'Лейгтон',10000),(5819,5681,5752,'Лексингтон',10000),(5820,5681,5752,'Липскомб',10000),(5821,5681,5752,'Лисбург',10000),(5822,5681,5752,'Литтл Шавмут',10000),(5823,5681,5752,'Лоачапока',10000),(5824,5681,5752,'Локсли',10000),(5825,5681,5752,'Локхарт',10000),(5826,5681,5752,'Луверн',10000),(5827,5681,5752,'Мадрид',10000),(5828,5681,5752,'Малверн',10000),(5829,5681,5752,'Маундвилл',10000),(5830,5681,5752,'Мидланд-Сити',10000),(5831,5681,5752,'Мидфилд',10000),(5832,5681,5752,'Миллбрук',10000),(5833,5681,5752,'Мобил',10000),(5834,5681,5752,'Монтгомери',10000),(5835,5681,5752,'Моултон',10000),(5836,5681,5752,'Моунтаин Брук',10000),(5837,5681,5752,'Моунтаинборо',10000),(5838,5681,5752,'Муресвилл',10000),(5839,5681,5752,'Мускл Шоалс',10000),(5840,5681,5752,'Напир-Филд',10000),(5841,5681,5752,'Нортпорт',10000),(5842,5681,5752,'Нотасулга',10000),(5843,5681,5752,'Нью-Сайт',10000),(5844,5681,5752,'Ньювилл',10000),(5845,5681,5752,'Оак Хилл',10000),(5846,5681,5752,'Оакман',10000),(5847,5681,5752,'Озарк',10000),(5848,5681,5752,'Онича',10000),(5849,5681,5752,'Опелика',10000),(5850,5681,5752,'Опп',10000),(5851,5681,5752,'Охатчи',10000),(5852,5681,5752,'Паинт Рок',10000),(5853,5681,5752,'Парриш',10000),(5854,5681,5752,'Пинкард',10000),(5855,5681,5752,'Плисант Гров',10000),(5856,5681,5752,'Пойнт-Клир',10000),(5857,5681,5752,'Поллард',10000),(5858,5681,5752,'Праттвилл',10000),(5859,5681,5752,'Прикевилл',10000),(5860,5681,5752,'Причард',10000),(5861,5681,5752,'Раинсвилл',10000),(5862,5681,5752,'Редстон Арсенал',10000),(5863,5681,5752,'Ривер Вив',10000),(5864,5681,5752,'Рик-Сити',10000),(5865,5681,5752,'Робинсон Спрингс',10000),(5866,5681,5752,'Рогерсвилл',10000),(5867,5681,5752,'Русселлвилл',10000),(5868,5681,5752,'Рутледж',10000),(5869,5681,5752,'Сакс',10000),(5870,5681,5752,'Санфорд',10000),(5871,5681,5752,'Сараланд',10000),(5872,5681,5752,'Сатсума',10000),(5873,5681,5752,'Седар-Блуфф',10000),(5874,5681,5752,'Селма',10000),(5875,5681,5752,'Селмонт',10000),(5876,5681,5752,'Силакауга',10000),(5877,5681,5752,'Силваниа',10000),(5878,5681,5752,'Сипси',10000),(5879,5681,5752,'Слокомб',10000),(5880,5681,5752,'Сомервилл',10000),(5881,5681,5752,'Талладега',10000),(5882,5681,5752,'Таррант',10000),(5883,5681,5752,'Таррант-Сити',10000),(5884,5681,5752,'Теодор',10000),(5885,5681,5752,'Тиллманс Корнер',10000),(5886,5681,5752,'Триана',10000),(5887,5681,5752,'Трой',10000),(5888,5681,5752,'Тускалуса',10000),(5889,5681,5752,'Тускеги',10000),(5890,5681,5752,'Тускумбиа',10000),(5891,5681,5752,'Уайт-Халл',10000),(5892,5681,5752,'Унионтаун',10000),(5893,5681,5752,'Фаирфакс',10000),(5894,5681,5752,'Фаирфилд',10000),(5895,5681,5752,'Файрхоп',10000),(5896,5681,5752,'Фаунсдал',10000),(5897,5681,5752,'Феникс-Сити',10000),(5898,5681,5752,'Фифф',10000),(5899,5681,5752,'Флинт-Сити',10000),(5900,5681,5752,'Фломатон',10000),(5901,5681,5752,'Флорала',10000),(5902,5681,5752,'Флоренк',10000),(5903,5681,5752,'Форестдал',10000),(5904,5681,5752,'Форт-Пэйн',10000),(5905,5681,5752,'Форт-Рукер',10000),(5906,5681,5752,'Фултон',10000),(5907,5681,5752,'Фултондал',10000),(5908,5681,5752,'Хаклебург',10000),(5909,5681,5752,'Хартфорд',10000),(5910,5681,5752,'Хенагар',10000),(5911,5681,5752,'Хидланд',10000),(5912,5681,5752,'Хомевуд',10000),(5913,5681,5752,'Хорн Хилл',10000),(5914,5681,5752,'Хувер',10000),(5915,5681,5752,'Хугули',10000),(5916,5681,5752,'Хунтсвилл',10000),(5917,5681,5752,'Чикасав',10000),(5918,5681,5752,'Шавмут',10000),(5919,5681,5752,'Шеффилд',10000),(5920,5681,5752,'Эшфорд',10000),(5921,5681,5752,'Яксон',10000),(5922,5681,5752,'Яксонвилл',10000),(5923,5681,5752,'Яспер',10000),(5925,5681,5924,'Анкоридж',10000),(5926,5681,5924,'Юно',10000),(5928,5681,5927,'Авондейл',10000),(5929,5681,5927,'Аджо',10000),(5930,5681,5927,'Багдад',10000),(5931,5681,5927,'Бенсон',10000),(5932,5681,5927,'Велда-Рос-Эстатес',10000),(5933,5681,5927,'Викенбург',10000),(5934,5681,5927,'Виллкокс',10000),(5935,5681,5927,'Гилберт',10000),(5936,5681,5927,'Глендейл',10000),(5937,5681,5927,'Глоб',10000),(5938,5681,5927,'Грин-Вэлли',10000),(5939,5681,5927,'Гуадалуп',10000),(5940,5681,5927,'Гудиир',10000),(5941,5681,5927,'Давис-Монтан АФБ',10000),(5942,5681,5927,'Дримланд-Вилла',10000),(5943,5681,5927,'Йоунгтаун',10000),(5944,5681,5927,'Кайента',10000),(5945,5681,5927,'Кашион',10000),(5946,5681,5927,'Кингман',10000),(5947,5681,5927,'Кларкдейл',10000),(5948,5681,5927,'Клэйпул',10000),(5949,5681,5927,'Литчфилд-Парк',10000),(5950,5681,5927,'Лук',10000),(5951,5681,5927,'Майми',10000),(5952,5681,5927,'Марана',10000),(5953,5681,5927,'Меса',10000),(5954,5681,5927,'Оракл',10000),(5955,5681,5927,'Парадайс-Вэлли',10000),(5956,5681,5927,'Паркер',10000),(5957,5681,5927,'Пеориа',10000),(5958,5681,5927,'Пиртлевилл',10000),(5959,5681,5927,'Прескотт',10000),(5960,5681,5927,'Пэйсон',10000),(5961,5681,5927,'Сан-Мануэль',10000),(5962,5681,5927,'Сан-Сити',10000),(5963,5681,5927,'Саут-Таксон',10000),(5964,5681,5927,'Селлс',10000),(5965,5681,5927,'Скоттсдейл',10000),(5966,5681,5927,'Спрингервилл',10000),(5967,5681,5927,'Сьерра-Виста',10000),(5968,5681,5927,'Таксон',10000),(5969,5681,5927,'Темп',10000),(5970,5681,5927,'Толлесон',10000),(5971,5681,5927,'Туба-Сити',10000),(5972,5681,5927,'Тусон',10000),(5973,5681,5927,'Финикс',10000),(5974,5681,5927,'Флагстафф',10000),(5975,5681,5927,'Флоренц',10000),(5976,5681,5927,'Форт-Дефианс',10000),(5977,5681,5927,'Форт-Хуачука',10000),(5978,5681,5927,'Чандлер',10000),(5979,5681,5927,'Чинли',10000),(5980,5681,5927,'Шау-Ло',10000),(5981,5681,5927,'Эль-Мираг',10000),(5982,5681,5927,'Юма',10000),(5984,5681,5983,'Александер',10000),(5985,5681,5983,'Арканзас-Сити',10000),(5986,5681,5983,'Аткинс',10000),(5987,5681,5983,'Бакнер',10000),(5988,5681,5983,'Балд-Кноб',10000),(5989,5681,5983,'Барлинг',10000),(5990,5681,5983,'Бауксит',10000),(5991,5681,5983,'Бентон',10000),(5992,5681,5983,'Бетел-Хейгтс',10000),(5993,5681,5983,'Блевинс',10000),(5994,5681,5983,'Блитевилл',10000),(5995,5681,5983,'Бонанза',10000),(5996,5681,5983,'Брадфорд',10000),(5997,5681,5983,'Булл-Шоалс',10000),(5998,5681,5983,'Бурдетт',10000),(5999,5681,5983,'Валдрон',10000),(6000,5681,5983,'Валнут-Ридж',10000),(6001,5681,5983,'Ван-Бурен',10000),(6002,5681,5983,'Варрен',10000),(6003,5681,5983,'Вашингтон',10000),(6004,5681,5983,'Вест Хелена',10000),(6005,5681,5983,'Вест-Мемфис',10000),(6006,5681,5983,'Виллисвилл',10000),(6007,5681,5983,'Винн',10000),(6008,5681,5983,'Гассвилл',10000),(6009,5681,5983,'Де-Витт',10000),(6010,5681,5983,'Дермотт',10000),(6011,5681,5983,'Джадсониа',10000),(6012,5681,5983,'Джексонвилл',10000),(6013,5681,5983,'Едмондсон',10000),(6014,5681,5983,'Ингленд',10000),(6015,5681,5983,'Йонесборо',10000),(6016,5681,5983,'Калдвелл',10000),(6017,5681,5983,'Каммак-Виллидж',10000),(6018,5681,5983,'Кейл',10000),(6019,5681,5983,'Кенсетт',10000),(6020,5681,5983,'Киблер',10000),(6021,5681,5983,'Колт',10000),(6022,5681,5983,'Корнинг',10000),(6023,5681,5983,'Коттер',10000),(6024,5681,5983,'Кравфордсвилл',10000),(6025,5681,5983,'Кроссетт',10000),(6026,5681,5983,'Лавака',10000),(6027,5681,5983,'Левисвилл',10000),(6028,5681,5983,'Лейк-Виллидж',10000),(6029,5681,5983,'Лейк-Хамилтон',10000),(6030,5681,5983,'Литтл-Рок',10000),(6031,5681,5983,'Лонсдейл',10000),(6032,5681,5983,'Луксора',10000),(6033,5681,5983,'Магнесс',10000),(6034,5681,5983,'Мак-Гехи',10000),(6035,5681,5983,'Мак-Каскилл',10000),(6036,5681,5983,'Мак-Нейл',10000),(6037,5681,5983,'Малверн',10000),(6038,5681,5983,'Марианна',10000),(6039,5681,5983,'Марион',10000),(6040,5681,5983,'Маунтайн-Хоум',10000),(6041,5681,5983,'Мена',10000),(6042,5681,5983,'Мэйфлауер',10000),(6043,5681,5983,'Норт-Литтл-Рок',10000),(6044,5681,5983,'Норфорк',10000),(6045,5681,5983,'Ньюарк',10000),(6046,5681,5983,'Нэшвилл',10000),(6047,5681,5983,'Оакхавен',10000),(6048,5681,5983,'Озан',10000),(6049,5681,5983,'Ойл-Троуг',10000),(6050,5681,5983,'Олбани',10000),(6051,5681,5983,'Оскеола',10000),(6052,5681,5983,'Пайн-Блафф',10000),(6053,5681,5983,'Парагоулд',10000),(6054,5681,5983,'Парис',10000),(6055,5681,5983,'Перритаун',10000),(6056,5681,5983,'Пигготт',10000),(6057,5681,5983,'Плисант-Плайнс',10000),(6058,5681,5983,'Плумервилл',10000),(6059,5681,5983,'Покахонтас',10000),(6060,5681,5983,'Поттсвилл',10000),(6061,5681,5983,'Прескотт',10000),(6062,5681,5983,'Расселл',10000),(6063,5681,5983,'Расселлвилл',10000),(6064,5681,5983,'Рокпорт',10000),(6065,5681,5983,'Росстон',10000),(6066,5681,5983,'Руди',10000),(6067,5681,5983,'Сабиако',10000),(6068,5681,5983,'Сентрал-Сити',10000),(6069,5681,5983,'Сирки',10000),(6070,5681,5983,'Скрантон',10000),(6071,5681,5983,'Смаковер',10000),(6072,5681,5983,'Спрингдал',10000),(6073,5681,5983,'Стампс',10000),(6074,5681,5983,'Статтгарт',10000),(6075,5681,5983,'Толлетт',10000),(6076,5681,5983,'Тонтитаун',10000),(6077,5681,5983,'Тэйлор',10000),(6078,5681,5983,'Фейеттевилл',10000),(6079,5681,5983,'Флиппин',10000),(6080,5681,5983,'Фордик',10000),(6081,5681,5983,'Форрест-Сити',10000),(6082,5681,5983,'Форт-Смит',10000),(6083,5681,5983,'Харди',10000),(6084,5681,5983,'Хаскелл',10000),(6085,5681,5983,'Хелена',10000),(6086,5681,5983,'Хоппер',10000),(6087,5681,5983,'Хот-Спрингс',10000),(6088,5681,5983,'Хот-Спрингс (национальный парк)',10000),(6089,5681,5983,'Хоуп',10000),(6090,5681,5983,'Шаннон-Хиллс',10000),(6091,5681,5983,'Шервуд',10000),(6092,5681,5983,'Элкинс',10000),(6093,5681,5983,'Элм-Спрингс',10000),(6094,5681,5983,'Элма',10000),(6095,5681,5983,'Эль-Дорадо',10000),(6096,5681,5983,'Эмерсон',10000),(6097,5681,5983,'Эммет',10000),(6099,5681,6098,'Каспер',10000),(6100,5681,6098,'Олбани',10000),(6101,5681,6098,'Шайенн',10000),(6102,5681,6098,'Шеридан',10000),(6104,5681,6103,'Абердин',10000),(6105,5681,6103,'Алдервуд-Манор',10000),(6106,5681,6103,'Беллевуэ',10000),(6107,5681,6103,'Беллингем',10000),(6108,5681,6103,'Бонни-Лейк',10000),(6109,5681,6103,'Ботелл',10000),(6110,5681,6103,'Бревстер',10000),(6111,5681,6103,'Бремертон',10000),(6112,5681,6103,'Брин-Мавр',10000),(6113,5681,6103,'Ванкувер',10000),(6114,5681,6103,'Венатчи',10000),(6115,5681,6103,'Голдендейл',10000),(6116,5681,6103,'Дишман',10000),(6117,5681,6103,'Дэйтон',10000),(6118,5681,6103,'Дюпонт',10000),(6119,5681,6103,'Женева',10000),(6120,5681,6103,'Интерсити',10000),(6121,5681,6103,'Ист-Венатчи-Бенч',10000),(6122,5681,6103,'Истгейт',10000),(6123,5681,6103,'Кенмор',10000),(6124,5681,6103,'Кингсгейт',10000),(6125,5681,6103,'Киркланд',10000),(6126,5681,6103,'Клайд-Хилл',10000),(6127,5681,6103,'Кли-Элам',10000),(6128,5681,6103,'Колвилл',10000),(6129,5681,6103,'Колфакс',10000),(6130,5681,6103,'Лонгвью',10000),(6131,5681,6103,'Мак-Хорд база ВВС',10000),(6132,5681,6103,'Маунт-Вернон',10000),(6133,5681,6103,'Медина',10000),(6134,5681,6103,'Меркер-Айланд',10000),(6135,5681,6103,'Миллвуд',10000),(6136,5681,6103,'Мукилтео',10000),(6137,5681,6103,'Ньюпорт-Хиллс',10000),(6138,5681,6103,'Олимпия',10000),(6139,5681,6103,'Омак',10000),(6140,5681,6103,'Оппортунити',10000),(6141,5681,6103,'Паркланд',10000),(6142,5681,6103,'Порт-Анжелес',10000),(6143,5681,6103,'Рентон',10000),(6144,5681,6103,'Ривертон',10000),(6145,5681,6103,'Ритзвилл',10000),(6146,5681,6103,'Ричланд',10000),(6147,5681,6103,'Рок-Айленд',10000),(6148,5681,6103,'Рос-Хилл',10000),(6149,5681,6103,'Сентралиа',10000),(6150,5681,6103,'Сиэттл',10000),(6151,5681,6103,'Скайвэй',10000),(6152,5681,6103,'Сноухомиш',10000),(6153,5681,6103,'Спокан',10000),(6154,5681,6103,'Такома',10000),(6155,5681,6103,'Таун-энд-Кантри',10000),(6156,5681,6103,'Томпсон-Плэйс',10000),(6157,5681,6103,'Тонаскет',10000),(6158,5681,6103,'Уайт-Сентер',10000),(6159,5681,6103,'Файрмонт',10000),(6160,5681,6103,'Форт-Левис',10000),(6161,5681,6103,'Хантс-Пойнт',10000),(6162,5681,6103,'Эверетт',10000),(6163,5681,6103,'Эйрвэй-Хейгтс',10000),(6164,5681,6103,'Юанита',10000),(6165,5681,6103,'Якима',10000),(6166,5681,6103,'Яррау-Пойнт',10000),(6168,5681,6167,'Берлингтон',10000),(6169,5681,6167,'Миддлбури',10000),(6170,5681,6167,'Монпелье',10000),(6171,5681,6167,'Ньюбури',10000),(6172,5681,6167,'Олбани',10000),(6173,5681,6167,'Олбани-Центр',10000),(6174,5681,6167,'Питтсфорд',10000),(6175,5681,6167,'Сант-Албанс',10000),(6177,5681,6176,'Айсл-оф-Вигт',10000),(6178,5681,6176,'Александрия',10000),(6179,5681,6176,'Аннандейл',10000),(6180,5681,6176,'Арлингтон',10000),(6181,5681,6176,'Байлис-Кроссроадс',10000),(6182,5681,6176,'Беллвуд',10000),(6183,5681,6176,'Бенсли',10000),(6184,5681,6176,'Блу-Ридж',10000),(6185,5681,6176,'Бон-Айр',10000),(6186,5681,6176,'Бурквилл',10000),(6187,5681,6176,'Вайс',10000),(6188,5681,6176,'Варрентон',10000),(6189,5681,6176,'Верона',10000),(6190,5681,6176,'Вилльямсбург',10000),(6191,5681,6176,'Винтон',10000),(6192,5681,6176,'Вирджиния-Бич',10000),(6193,5681,6176,'Витвилл',10000),(6194,5681,6176,'Вудбридж',10000),(6195,5681,6176,'Вэйнсборо',10000),(6196,5681,6176,'Глен-Аллен',10000),(6197,5681,6176,'Данвилл',10000),(6198,5681,6176,'Думбартон',10000),(6199,5681,6176,'Думс',10000),(6200,5681,6176,'Ист-Хайленд-Парк',10000),(6201,5681,6176,'Йорктаун',10000),(6202,5681,6176,'Кейв-Спринг',10000),(6203,5681,6176,'Крозет',10000),(6204,5681,6176,'Лаурел',10000),(6205,5681,6176,'Лейксайд',10000),(6206,5681,6176,'Линчбург',10000),(6207,5681,6176,'Лисбург',10000),(6208,5681,6176,'Лурэй',10000),(6209,5681,6176,'Манассас-Парк',10000),(6210,5681,6176,'Марион',10000),(6211,5681,6176,'Меканиксвилл',10000),(6212,5681,6176,'Монтроз',10000),(6213,5681,6176,'Норфолк',10000),(6214,5681,6176,'Ньюпорт-Ньюс',10000),(6215,5681,6176,'Петерсбург',10000),(6216,5681,6176,'Пирисбург',10000),(6217,5681,6176,'Портсмут',10000),(6218,5681,6176,'Радфорд',10000),(6219,5681,6176,'Рашмер',10000),(6220,5681,6176,'Ричмонд',10000),(6221,5681,6176,'Роанок',10000),(6222,5681,6176,'Салем',10000),(6223,5681,6176,'Саут-Бостон',10000),(6224,5681,6176,'Севен-Корнерс',10000),(6225,5681,6176,'Стаунтон',10000),(6226,5681,6176,'Стьюартс-Драфт',10000),(6227,5681,6176,'Таппаханнок',10000),(6228,5681,6176,'Троутвилл',10000),(6229,5681,6176,'Тукахоэ',10000),(6230,5681,6176,'Финкастл',10000),(6231,5681,6176,'Форт-Бельвоир',10000),(6232,5681,6176,'Фредериксбург',10000),(6233,5681,6176,'Хайленд-Спрингс',10000),(6234,5681,6176,'Холлинс',10000),(6235,5681,6176,'Хоупвелл',10000),(6236,5681,6176,'Хэмптон',10000),(6237,5681,6176,'Чарлоттесвилл',10000),(6238,5681,6176,'Чесапик',10000),(6239,5681,6176,'Честер',10000),(6240,5681,6176,'Честерфилд',10000),(6241,5681,6176,'Эмпориа',10000),(6243,5681,6242,'Апплетон',10000),(6244,5681,6242,'Белоит',10000),(6245,5681,6242,'Брукфилд',10000),(6246,5681,6242,'Вауватоса',10000),(6247,5681,6242,'Ваукеша',10000),(6248,5681,6242,'Ваусау',10000),(6249,5681,6242,'Вест-Аллис',10000),(6250,5681,6242,'Грин-Бэй',10000),(6251,5681,6242,'И-Клер',10000),(6252,5681,6242,'Кеноша',10000),(6253,5681,6242,'Ла-Кросс',10000),(6254,5681,6242,'Мадисон',10000),(6255,5681,6242,'Манитауок',10000),(6256,5681,6242,'Меномони Фаллс',10000),(6257,5681,6242,'Милвауки',10000),(6258,5681,6242,'Нью-Берлин',10000),(6259,5681,6242,'Олбани',10000),(6260,5681,6242,'Ошкош',10000),(6261,5681,6242,'Ракин',10000),(6262,5681,6242,'Супериор',10000),(6263,5681,6242,'Фонд-дю-Лак',10000),(6264,5681,6242,'Шебоиган',10000),(6265,5681,6242,'Янесвилл',10000),(6267,5681,6266,'Ваикапу',10000),(6268,5681,6266,'Ваилуку',10000),(6269,5681,6266,'Гонолулу',10000),(6270,5681,6266,'Каилуа',10000),(6271,5681,6266,'Канеоха',10000),(6272,5681,6266,'Капаау',10000),(6273,5681,6266,'Кахулуи',10000),(6274,5681,6266,'Килакекуа',10000),(6275,5681,6266,'Кихей',10000),(6276,5681,6266,'Лиху',10000),(6277,5681,6266,'Паия',10000),(6278,5681,6266,'Пуунен',10000),(6279,5681,6266,'Хило',10000),(6281,5681,6280,'Блэйдс',10000),(6282,5681,6280,'Вилмингтон',10000),(6283,5681,6280,'Вилмингтон-Манор',10000),(6284,5681,6280,'Довер',10000),(6285,5681,6280,'Миллсборо',10000),(6286,5681,6280,'Ньюпорт',10000),(6287,5681,6280,'Стантон',10000),(6288,5681,6280,'Талливилл',10000),(6289,5681,6280,'Челси-Эстатес',10000),(6290,5681,6280,'Элсмер',10000),(6292,5681,6291,'Авондал Естатес',10000),(6293,5681,6291,'Атенс',10000),(6294,5681,6291,'Атланта',10000),(6295,5681,6291,'Аттапулгус',10000),(6296,5681,6291,'Баинбридж',10000),(6297,5681,6291,'Барвик',10000),(6298,5681,6291,'Белведер Парк',10000),(6299,5681,6291,'Блаирсвилл',10000),(6300,5681,6291,'Валдоста',10000),(6301,5681,6291,'Варнер-Робинс',10000),(6302,5681,6291,'Вашингтон',10000),(6303,5681,6291,'Вена',10000),(6304,5681,6291,'Вернонбург',10000),(6305,5681,6291,'Вест Поинт',10000),(6306,5681,6291,'Вестсайд',10000),(6307,5681,6291,'Вилмингтон-Айленд',10000),(6308,5681,6291,'Вхигам',10000),(6309,5681,6291,'Вэйкросс',10000),(6310,5681,6291,'Гарден-Сити',10000),(6311,5681,6291,'Грешам Парк',10000),(6312,5681,6291,'Гринсборо',10000),(6313,5681,6291,'Грэйсвилл',10000),(6314,5681,6291,'Декатур',10000),(6315,5681,6291,'Деморест',10000),(6316,5681,6291,'Джесап',10000),(6317,5681,6291,'Друид Хиллс',10000),(6318,5681,6291,'Дублин',10000),(6319,5681,6291,'Ист-Пойнт',10000),(6320,5681,6291,'Каиро',10000),(6321,5681,6291,'Картерсвилл',10000),(6322,5681,6291,'Климакс',10000),(6323,5681,6291,'Клэйтон',10000),(6324,5681,6291,'Колумбус',10000),(6325,5681,6291,'Коммерк',10000),(6326,5681,6291,'Кулидж',10000),(6327,5681,6291,'Куллоден',10000),(6328,5681,6291,'Лукоут Моунтаин',10000),(6329,5681,6291,'Макон',10000),(6330,5681,6291,'Мариэтта',10000),(6331,5681,6291,'МкАфи',10000),(6332,5681,6291,'Моултри',10000),(6333,5681,6291,'Норт Декатур',10000),(6334,5681,6291,'Норт Друид Хиллс',10000),(6335,5681,6291,'Огаста',10000),(6336,5681,6291,'Олбани',10000),(6337,5681,6291,'Паво',10000),(6338,5681,6291,'Порт-Вентворт',10000),(6339,5681,6291,'Пулер',10000),(6340,5681,6291,'Рингголд',10000),(6341,5681,6291,'Ром',10000),(6342,5681,6291,'Россвилл',10000),(6343,5681,6291,'Саванна',10000),(6344,5681,6291,'Тандерболт',10000),(6345,5681,6291,'Томасвилл',10000),(6346,5681,6291,'Фитзгералд',10000),(6347,5681,6291,'Форт Оглеторп',10000),(6348,5681,6291,'Франклин',10000),(6349,5681,6291,'Хардвик',10000),(6350,5681,6291,'Хомервилл',10000),(6351,5681,6291,'Чикамауга',10000),(6353,5681,6352,'Бакханнон',10000),(6354,5681,6352,'Барбурсвилл',10000),(6355,5681,6352,'Бекли',10000),(6356,5681,6352,'Бенвуд',10000),(6357,5681,6352,'Вейртон',10000),(6358,5681,6352,'Вилинг',10000),(6359,5681,6352,'Гари',10000),(6360,5681,6352,'Моргантаун',10000),(6361,5681,6352,'Паркерсбург',10000),(6362,5681,6352,'Середо',10000),(6363,5681,6352,'Файрмонт',10000),(6364,5681,6352,'Хунтингтон',10000),(6365,5681,6352,'Чарльстон',10000),(6366,5681,6352,'Элкинс',10000),(6368,5681,6367,'Авон',10000),(6369,5681,6367,'Аледо',10000),(6370,5681,6367,'Алтон',10000),(6371,5681,6367,'Анна',10000),(6372,5681,6367,'Аппл Ривер',10000),(6373,5681,6367,'Арлингтон',10000),(6374,5681,6367,'Арлингтон-Хейгтс',10000),(6375,5681,6367,'Аурора',10000),(6376,5681,6367,'Белвидер',10000),(6377,5681,6367,'Беллевилл',10000),(6378,5681,6367,'Бенлд',10000),(6379,5681,6367,'Бервин',10000),(6380,5681,6367,'Беталто',10000),(6381,5681,6367,'Блумингтон',10000),(6382,5681,6367,'Бондвилл',10000),(6383,5681,6367,'Букнер',10000),(6384,5681,6367,'Бурбанк',10000),(6385,5681,6367,'Валир',10000),(6386,5681,6367,'Ваукеган',10000),(6387,5681,6367,'Венеция',10000),(6388,5681,6367,'Вест Чикаго',10000),(6389,5681,6367,'Вилдвуд',10000),(6390,5681,6367,'Вилла-Парк',10000),(6391,5681,6367,'Вилметт',10000),(6392,5681,6367,'Винтроп Харбор',10000),(6393,5681,6367,'Вуд Ривер',10000),(6394,5681,6367,'Вхитон',10000),(6395,5681,6367,'Галесбург',10000),(6396,5681,6367,'Гленвив',10000),(6397,5681,6367,'Голф',10000),(6398,5681,6367,'Гранвилл',10000),(6399,5681,6367,'Гранит-Сити',10000),(6400,5681,6367,'Грин Рок',10000),(6401,5681,6367,'Гурни',10000),(6402,5681,6367,'Д Калб',10000),(6403,5681,6367,'Далзелл',10000),(6404,5681,6367,'Данвилл',10000),(6405,5681,6367,'Даунерс-Гров',10000),(6406,5681,6367,'Декатур',10000),(6407,5681,6367,'Дес-Плайнс',10000),(6408,5681,6367,'Долтон',10000),(6409,5681,6367,'Еванстон',10000),(6410,5681,6367,'Евергрин Парк',10000),(6411,5681,6367,'Елгин',10000),(6412,5681,6367,'Елмвуд Парк',10000),(6413,5681,6367,'Елмхурст',10000),(6414,5681,6367,'Женева',10000),(6415,5681,6367,'Зейглер',10000),(6416,5681,6367,'Ист Алтон',10000),(6417,5681,6367,'Ист Дубукуэ',10000),(6418,5681,6367,'Ист Молин',10000),(6419,5681,6367,'Ист Пеориа',10000),(6420,5681,6367,'Ист Саинт Лоуис',10000),(6421,5681,6367,'Йолит',10000),(6422,5681,6367,'Канкаки',10000),(6423,5681,6367,'Кантон',10000),(6424,5681,6367,'Карбон Клифф',10000),(6425,5681,6367,'Кахокиа',10000),(6426,5681,6367,'Кенилворт',10000),(6427,5681,6367,'Коал Валли',10000),(6428,5681,6367,'Колона',10000),(6429,5681,6367,'Крев Коэур',10000),(6430,5681,6367,'Куинси',10000),(6431,5681,6367,'Ла Салл',10000),(6432,5681,6367,'Ладд',10000),(6433,5681,6367,'Лак Блуфф',10000),(6434,5681,6367,'Лансинг',10000),(6435,5681,6367,'Либертивилл',10000),(6436,5681,6367,'Линвуд',10000),(6437,5681,6367,'Линколнвуд',10000),(6438,5681,6367,'Лионс',10000),(6439,5681,6367,'Литчфилд',10000),(6440,5681,6367,'Ловес Парк',10000),(6441,5681,6367,'Ломбард',10000),(6442,5681,6367,'Макомб',10000),(6443,5681,6367,'Марк',10000),(6444,5681,6367,'Маркуэтт Хейгтс',10000),(6445,5681,6367,'Маркхам',10000),(6446,5681,6367,'Маунт-Проспект',10000),(6447,5681,6367,'Мелрос-Парк',10000),(6448,5681,6367,'Меррионетт Парк',10000),(6449,5681,6367,'Мидаубрук',10000),(6450,5681,6367,'Милан',10000),(6451,5681,6367,'Молин',10000),(6452,5681,6367,'Мортон Гров',10000),(6453,5681,6367,'Мэйвуд',10000),(6454,5681,6367,'Нилес',10000),(6455,5681,6367,'Нормал',10000),(6456,5681,6367,'Норридж',10000),(6457,5681,6367,'Норт Парк',10000),(6458,5681,6367,'Норт Риверсид',10000),(6459,5681,6367,'Норт-Чикаго',10000),(6460,5681,6367,'Нортбрук',10000),(6461,5681,6367,'Нортфилд',10000),(6462,5681,6367,'Оак Лавн',10000),(6463,5681,6367,'Оак Парк',10000),(6464,5681,6367,'Оглесби',10000),(6465,5681,6367,'Олбани',10000),(6466,5681,6367,'Палатин',10000),(6467,5681,6367,'Парк Форест',10000),(6468,5681,6367,'Парк-Ридж',10000),(6469,5681,6367,'Парк-Сити',10000),(6470,5681,6367,'Пекин',10000),(6471,5681,6367,'Пеориа',10000),(6472,5681,6367,'Перу',10000),(6473,5681,6367,'Рантоул',10000),(6474,5681,6367,'Ривер Гров',10000),(6475,5681,6367,'Ривер Форест',10000),(6476,5681,6367,'Риверсид',10000),(6477,5681,6367,'Ривертон',10000),(6478,5681,6367,'Роббинс',10000),(6479,5681,6367,'Роиалтон',10000),(6480,5681,6367,'Рок Исланд',10000),(6481,5681,6367,'Роксана',10000),(6482,5681,6367,'Рокфорд',10000),(6483,5681,6367,'Росевуд Хейгтс',10000),(6484,5681,6367,'Роскоэ',10000),(6485,5681,6367,'Савои',10000),(6486,5681,6367,'Сант-Чарльз',10000),(6487,5681,6367,'Саугет',10000),(6488,5681,6367,'Саут-Роксана',10000),(6489,5681,6367,'Седар Поинт',10000),(6490,5681,6367,'Силвис',10000),(6491,5681,6367,'Ситонвилл',10000),(6492,5681,6367,'Скоки',10000),(6493,5681,6367,'Спринг Валли',10000),(6494,5681,6367,'Спрингфилд',10000),(6495,5681,6367,'Стандард',10000),(6496,5681,6367,'Стикни',10000),(6497,5681,6367,'Суммит',10000),(6498,5681,6367,'Урбаин',10000),(6499,5681,6367,'Урбана',10000),(6500,5681,6367,'Форест Вив',10000),(6501,5681,6367,'Форест Парк',10000),(6502,5681,6367,'Форест Хомес',10000),(6503,5681,6367,'Фрипорт',10000),(6504,5681,6367,'Хазел Крест',10000),(6505,5681,6367,'Хамптон',10000),(6506,5681,6367,'Харви',10000),(6507,5681,6367,'Харвуд Хейгтс',10000),(6508,5681,6367,'Харрисбург',10000),(6509,5681,6367,'Хеброн',10000),(6510,5681,6367,'Хигланд Парк',10000),(6511,5681,6367,'Холлауэйвилл',10000),(6512,5681,6367,'Хометаун',10000),(6513,5681,6367,'Христофер',10000),(6514,5681,6367,'Чампаигн',10000),(6515,5681,6367,'Черри',10000),(6516,5681,6367,'Черри Валли',10000),(6517,5681,6367,'Чикаго',10000),(6518,5681,6367,'Чикаго Хейгтс',10000),(6519,5681,6367,'Чикеро',10000),(6521,5681,6520,'Алтона',10000),(6522,5681,6520,'Андерсон',10000),(6523,5681,6520,'Бич Гров',10000),(6524,5681,6520,'Блумингтон',10000),(6525,5681,6520,'Брук',10000),(6526,5681,6520,'Бурнеттсвилл',10000),(6527,5681,6520,'Валпараисо',10000),(6528,5681,6520,'Валтон',10000),(6529,5681,6520,'Варрен Парк',10000),(6530,5681,6520,'Виллиамс Крик',10000),(6531,5681,6520,'Виннедал',10000),(6532,5681,6520,'Галвестон',10000),(6533,5681,6520,'Гари',10000),(6534,5681,6520,'Гарретт',10000),(6535,5681,6520,'Грабилл',10000),(6536,5681,6520,'Гриффит',10000),(6537,5681,6520,'Диер',10000),(6538,5681,6520,'Дун-Акрес',10000),(6539,5681,6520,'Евансвилл',10000),(6540,5681,6520,'Елкхарт',10000),(6541,5681,6520,'Индианаполис',10000),(6542,5681,6520,'Ист Чикаго',10000),(6543,5681,6520,'Кокомо',10000),(6544,5681,6520,'Колумбус',10000),(6545,5681,6520,'Коридон',10000),(6546,5681,6520,'Краун Поинт',10000),(6547,5681,6520,'Краус Нест',10000),(6548,5681,6520,'Кумберланд',10000),(6549,5681,6520,'Лавренк',10000),(6550,5681,6520,'Лафэйетт',10000),(6551,5681,6520,'Лейк-Стейшн',10000),(6552,5681,6520,'Логанспорт',10000),(6553,5681,6520,'Мадисон',10000),(6554,5681,6520,'Марион',10000),(6555,5681,6520,'Меридиан Хиллс',10000),(6556,5681,6520,'Мерриллвилл',10000),(6557,5681,6520,'Мичиган-Сити',10000),(6558,5681,6520,'Мишавака',10000),(6559,5681,6520,'Мунки',10000),(6560,5681,6520,'Норт Краус Нест',10000),(6561,5681,6520,'Норт-Вернон',10000),(6562,5681,6520,'Нью-Кастл',10000),(6563,5681,6520,'Нью-Олбани',10000),(6564,5681,6520,'Нью-Чикаго',10000),(6565,5681,6520,'Олбани',10000),(6566,5681,6520,'Онвард',10000),(6567,5681,6520,'Портаг',10000),(6568,5681,6520,'Портер',10000),(6569,5681,6520,'Равенсвуд',10000),(6570,5681,6520,'Ричмонд',10000),(6571,5681,6520,'Роки Риппл',10000),(6572,5681,6520,'Рушвилл',10000),(6573,5681,6520,'Саут-Бенд',10000),(6574,5681,6520,'Саут-Хейвен',10000),(6575,5681,6520,'Скоттсбург',10000),(6576,5681,6520,'Сулливан',10000),(6577,5681,6520,'Счерервилл',10000),(6578,5681,6520,'Терр Хаут',10000),(6579,5681,6520,'Улен',10000),(6580,5681,6520,'Форт Вэйн',10000),(6581,5681,6520,'Хаммонд',10000),(6582,5681,6520,'Хигланд',10000),(6583,5681,6520,'Хобарт',10000),(6584,5681,6520,'Хомекрофт',10000),(6585,5681,6520,'Хунтертаун',10000),(6586,5681,6520,'Хунтингбург',10000),(6587,5681,6520,'Честертон',10000),(6588,5681,6520,'Чурубуско',10000),(6589,5681,6520,'Шелбивилл',10000),(6590,5681,6520,'Элвуд',10000),(6592,5681,6591,'Азуса',10000),(6593,5681,6591,'Аламеда',10000),(6594,5681,6591,'Алондра-Парк',10000),(6595,5681,6591,'Алтадена',10000),(6596,5681,6591,'Альгамбра',10000),(6597,5681,6591,'Анахейм',10000),(6598,5681,6591,'Антиох',10000),(6599,5681,6591,'Апленд',10000),(6600,5681,6591,'Арден',10000),(6601,5681,6591,'Аркад',10000),(6602,5681,6591,'Аркадиа',10000),(6603,5681,6591,'Артесия',10000),(6604,5681,6591,'Ашланд',10000),(6605,5681,6591,'Бакерсфилд',10000),(6606,5681,6591,'Балдвин-Парк',10000),(6607,5681,6591,'Барбэнк',10000),(6608,5681,6591,'Барлингейм',10000),(6609,5681,6591,'Беверли-Хиллс',10000),(6610,5681,6591,'Белл',10000),(6611,5681,6591,'Белл-Гарденс',10000),(6612,5681,6591,'Беллфлауер',10000),(6613,5681,6591,'Белмонт',10000),(6614,5681,6591,'Беркли',10000),(6615,5681,6591,'Блит',10000),(6616,5681,6591,'Броули',10000),(6617,5681,6591,'Буэна-Парк',10000),(6618,5681,6591,'Вакавилл',10000),(6619,5681,6591,'Валледжо',10000),(6620,5681,6591,'Валнут-Крик',10000),(6621,5681,6591,'Валнут-Парк',10000),(6622,5681,6591,'Вентура',10000),(6623,5681,6591,'Вернон',10000),(6624,5681,6591,'Вест-Атенс',10000),(6625,5681,6591,'Вест-Голливуд',10000),(6626,5681,6591,'Вест-Карсон',10000),(6627,5681,6591,'Вест-Ковайн',10000),(6628,5681,6591,'Вест-Комптон',10000),(6629,5681,6591,'Вест-Модесто',10000),(6630,5681,6591,'Вестминстер',10000),(6631,5681,6591,'Вестмонт',10000),(6632,5681,6591,'Виндсор-Хиллс',10000),(6633,5681,6591,'Висалия',10000),(6634,5681,6591,'Виста',10000),(6635,5681,6591,'Виттьер',10000),(6636,5681,6591,'Вудленд',10000),(6637,5681,6591,'Вью-Парк',10000),(6638,5681,6591,'Гавайиан-Гарденс',10000),(6639,5681,6591,'Гарден-Гров',10000),(6640,5681,6591,'Гардена',10000),(6641,5681,6591,'Гасиенда-Хейгтс',10000),(6642,5681,6591,'Глендейл',10000),(6643,5681,6591,'Глендейл',10000),(6644,5681,6591,'Глендора',10000),(6645,5681,6591,'Грахам',10000),(6646,5681,6591,'Гридли',10000),(6647,5681,6591,'Дауни',10000),(6648,5681,6591,'Дейли-Сити',10000),(6649,5681,6591,'Дели',10000),(6650,5681,6591,'Дель-Ри',10000),(6651,5681,6591,'Дель-Эйр',10000),(6652,5681,6591,'Денаир',10000),(6653,5681,6591,'Динуба',10000),(6654,5681,6591,'Дэвис',10000),(6655,5681,6591,'Империал-Бич',10000),(6656,5681,6591,'Инглвуд',10000),(6657,5681,6591,'Ист-Комптон',10000),(6658,5681,6591,'Ист-Лос-Анжелес',10000),(6659,5681,6591,'Ист-Пало-Альто',10000),(6660,5681,6591,'Ист-Портервилл',10000),(6661,5681,6591,'Истон',10000),(6662,5681,6591,'Калва',10000),(6663,5681,6591,'Кампбелл',10000),(6664,5681,6591,'Кармичел',10000),(6665,5681,6591,'Карсон',10000),(6666,5681,6591,'Карутерс',10000),(6667,5681,6591,'Каситас-Спрингс',10000),(6668,5681,6591,'Кастро-Велли',10000),(6669,5681,6591,'Кингсбург',10000),(6670,5681,6591,'Кипресс',10000),(6671,5681,6591,'Клермонт',10000),(6672,5681,6591,'Кловис',10000),(6673,5681,6591,'Ковайн',10000),(6674,5681,6591,'Колтон',10000),(6675,5681,6591,'Коммерц',10000),(6676,5681,6591,'Комптон',10000),(6677,5681,6591,'Конкорд',10000),(6678,5681,6591,'Корона',10000),(6679,5681,6591,'Коронадо',10000),(6680,5681,6591,'Коста-Меса',10000),(6681,5681,6591,'Кулвер-Сити',10000),(6682,5681,6591,'Ла-Канада',10000),(6683,5681,6591,'Ла-Крескента',10000),(6684,5681,6591,'Ла-Меса',10000),(6685,5681,6591,'Ла-Мирада',10000),(6686,5681,6591,'Ла-Пальма',10000),(6687,5681,6591,'Ла-Пуэнте',10000),(6688,5681,6591,'Ла-Хабра',10000),(6689,5681,6591,'Ладера-Хейгтс',10000),(6690,5681,6591,'Ланкастер',10000),(6691,5681,6591,'Лаундейл',10000),(6692,5681,6591,'Лафайетт',10000),(6693,5681,6591,'Лейквуд',10000),(6694,5681,6591,'Лейтон',10000),(6695,5681,6591,'Лемон-Гров',10000),(6696,5681,6591,'Леннокс',10000),(6697,5681,6591,'Ливермор',10000),(6698,5681,6591,'Линвуд',10000),(6699,5681,6591,'Линда',10000),(6700,5681,6591,'Лоди',10000),(6701,5681,6591,'Ломпок',10000),(6702,5681,6591,'Лонг-Бич',10000),(6703,5681,6591,'Лондон',10000),(6704,5681,6591,'Лос Аламитос',10000),(6705,5681,6591,'Лос-Альтос',10000),(6706,5681,6591,'Лос-Анжелес',10000),(6707,5681,6591,'Лос-Гатос',10000),(6708,5681,6591,'Лос-Ньетос',10000),(6709,5681,6591,'Мантека',10000),(6710,5681,6591,'Манхаттан-Бич',10000),(6711,5681,6591,'Марина-Дель-Ри',10000),(6712,5681,6591,'Марисвилл',10000),(6713,5681,6591,'Маунт-Хеликс',10000),(6714,5681,6591,'Менло-Парк',10000),(6715,5681,6591,'Меркед',10000),(6716,5681,6591,'Милл-Вэлли',10000),(6717,5681,6591,'Миллбре',10000),(6718,5681,6591,'Милпитас',10000),(6719,5681,6591,'Модесто',10000),(6720,5681,6591,'Монровиа',10000),(6721,5681,6591,'Монтебелло',10000),(6722,5681,6591,'Монтерей',10000),(6723,5681,6591,'Монтери-Парк',10000),(6724,5681,6591,'Монтклейр',10000),(6725,5681,6591,'Монтроз',10000),(6726,5681,6591,'Моунтайн-Вью',10000),(6727,5681,6591,'Мэйвуд',10000),(6728,5681,6591,'Мэйфлауер-Виллидж',10000),(6729,5681,6591,'Напа',10000),(6730,5681,6591,'Нешенал-Сити',10000),(6731,5681,6591,'Новато',10000),(6732,5681,6591,'Норволк',10000),(6733,5681,6591,'Норт-Хайлендс',10000),(6734,5681,6591,'Ньюарк',10000),(6735,5681,6591,'Ньюпорт-Бич',10000),(6736,5681,6591,'Ньюхалл',10000),(6737,5681,6591,'Оакхарст',10000),(6738,5681,6591,'Ойлдейл',10000),(6739,5681,6591,'Окланд',10000),(6740,5681,6591,'Окснард',10000),(6741,5681,6591,'Олбани',10000),(6742,5681,6591,'Оливхарст',10000),(6743,5681,6591,'Онтарио',10000),(6744,5681,6591,'Оранж',10000),(6745,5681,6591,'Оушнсайд',10000),(6746,5681,6591,'Палм-Спрингс',10000),(6747,5681,6591,'Пало-Альто',10000),(6748,5681,6591,'Парамоунт',10000),(6749,5681,6591,'Парлир',10000),(6750,5681,6591,'Пасадена',10000),(6751,5681,6591,'Паттерсон',10000),(6752,5681,6591,'Пацифика',10000),(6753,5681,6591,'Петалума',10000),(6754,5681,6591,'Пико-Ривера',10000),(6755,5681,6591,'Питтсбург',10000),(6756,5681,6591,'Плакентиа',10000),(6757,5681,6591,'Плисант-Хилл',10000),(6758,5681,6591,'Помона',10000),(6759,5681,6591,'Ранчо-Кордова',10000),(6760,5681,6591,'Редвуд-Сити',10000),(6761,5681,6591,'Реддинг',10000),(6762,5681,6591,'Редландс',10000),(6763,5681,6591,'Редондо-Бич',10000),(6764,5681,6591,'Риалто',10000),(6765,5681,6591,'Ривербанк',10000),(6766,5681,6591,'Риверсайд',10000),(6767,5681,6591,'Риджкрест',10000),(6768,5681,6591,'Ридли',10000),(6769,5681,6591,'Рипон',10000),(6770,5681,6591,'Ричмонд',10000),(6771,5681,6591,'Росемид',10000),(6772,5681,6591,'Россмур',10000),(6773,5681,6591,'Сакраменто',10000),(6774,5681,6591,'Салинас',10000),(6775,5681,6591,'Сан-Андрис',10000),(6776,5681,6591,'Сан-Бернардино',10000),(6777,5681,6591,'Сан-Бруно',10000),(6778,5681,6591,'Сан-Габриэль',10000),(6779,5681,6591,'Сан-Диего',10000),(6780,5681,6591,'Сан-Карлос',10000),(6781,5681,6591,'Сан-Линдро',10000),(6782,5681,6591,'Сан-Лоренцо',10000),(6783,5681,6591,'Сан-Луис-Обиспо',10000),(6784,5681,6591,'Сан-Марино',10000),(6785,5681,6591,'Сан-Матео',10000),(6786,5681,6591,'Сан-Рафель',10000),(6787,5681,6591,'Сан-Фернандо',10000),(6788,5681,6591,'Сан-Франциско',10000),(6789,5681,6591,'Сан-Хосе',10000),(6790,5681,6591,'Сангер',10000),(6791,5681,6591,'Саннивейл',10000),(6792,5681,6591,'Санта-Ана',10000),(6793,5681,6591,'Санта-Барбара',10000),(6794,5681,6591,'Санта-Клара',10000),(6795,5681,6591,'Санта-Круз',10000),(6796,5681,6591,'Санта-Мария',10000),(6797,5681,6591,'Санта-Моника',10000),(6798,5681,6591,'Санта-Роза',10000),(6799,5681,6591,'Санта-Фе-Спрингс',10000),(6800,5681,6591,'Санти',10000),(6801,5681,6591,'Саратога',10000),(6802,5681,6591,'Саугус',10000),(6803,5681,6591,'Саус-Модесто',10000),(6804,5681,6591,'Саут-Виттьер',10000),(6805,5681,6591,'Саут-Гейт',10000),(6806,5681,6591,'Саут-Ель-Монт',10000),(6807,5681,6591,'Саут-Лейк-Тахо',10000),(6808,5681,6591,'Саут-Пасадена',10000),(6809,5681,6591,'Саут-Сан-Габриэль',10000),(6810,5681,6591,'Саут-Сан-Франциско',10000),(6811,5681,6591,'Саут-Юба',10000),(6812,5681,6591,'Селма',10000),(6813,5681,6591,'Серритос',10000),(6814,5681,6591,'Сигнал-Хилл',10000),(6815,5681,6591,'Сил-Бич',10000),(6816,5681,6591,'Сими',10000),(6817,5681,6591,'Сисайд',10000),(6818,5681,6591,'Спринг-Вэлли',10000),(6819,5681,6591,'Стантон',10000),(6820,5681,6591,'Стоктон',10000),(6821,5681,6591,'Сусалито',10000),(6822,5681,6591,'Сьерра-Мадре',10000),(6823,5681,6591,'Талмаг',10000),(6824,5681,6591,'Тамалпаис-Вэлли',10000),(6825,5681,6591,'Тарлок',10000),(6826,5681,6591,'Тастин',10000),(6827,5681,6591,'Темпл-Сити',10000),(6828,5681,6591,'Тибурон',10000),(6829,5681,6591,'Тиерра-Буэна',10000),(6830,5681,6591,'Торранц',10000),(6831,5681,6591,'Тоусанд-Оакс',10000),(6832,5681,6591,'Укия',10000),(6833,5681,6591,'Файрфилд',10000),(6834,5681,6591,'Фаулер',10000),(6835,5681,6591,'Фаунтайн-Вэлли',10000),(6836,5681,6591,'Флинтридж',10000),(6837,5681,6591,'Флоренц',10000),(6838,5681,6591,'Фонтана',10000),(6839,5681,6591,'Фремонт',10000),(6840,5681,6591,'Фресно',10000),(6841,5681,6591,'Фуллертон',10000),(6842,5681,6591,'Хавторн',10000),(6843,5681,6591,'Хагсон',10000),(6844,5681,6591,'Хантингтон-Бич',10000),(6845,5681,6591,'Хантингтон-Парк',10000),(6846,5681,6591,'Хебер',10000),(6847,5681,6591,'Хейвард',10000),(6848,5681,6591,'Холтвилл',10000),(6849,5681,6591,'Хоумстид-Вэлли',10000),(6850,5681,6591,'Церес',10000),(6851,5681,6591,'Цитрус-Хейгтс',10000),(6852,5681,6591,'Черриленд',10000),(6853,5681,6591,'Чино',10000),(6854,5681,6591,'Чула-Виста',10000),(6855,5681,6591,'Эль-Кайон',10000),(6856,5681,6591,'Эль-Монт',10000),(6857,5681,6591,'Эль-Сегундо',10000),(6858,5681,6591,'Эль-Серрито',10000),(6859,5681,6591,'Эмеривилл',10000),(6860,5681,6591,'Эскалон',10000),(6861,5681,6591,'Эскондидо',10000),(6862,5681,6591,'Эурека',10000),(6863,5681,6591,'Юба-Сити',10000),(6865,5681,6864,'Андовер',10000),(6866,5681,6864,'Бентон',10000),(6867,5681,6864,'Вествуд',10000),(6868,5681,6864,'Вествуд-Хиллс',10000),(6869,5681,6864,'Винфилд',10000),(6870,5681,6864,'Вичита',10000),(6871,5681,6864,'Вэлли-Сентер',10000),(6872,5681,6864,'Грейт-Бенд',10000),(6873,5681,6864,'Джанкшин-Сити',10000),(6874,5681,6864,'Додж-Сити',10000),(6875,5681,6864,'Индепенденс',10000),(6876,5681,6864,'Истборо',10000),(6877,5681,6864,'Канзас-Сити',10000),(6878,5681,6864,'Кантрисайд',10000),(6879,5681,6864,'Карбондал',10000),(6880,5681,6864,'Кечи',10000),(6881,5681,6864,'Колби',10000),(6882,5681,6864,'Колвич',10000),(6883,5681,6864,'Конкордиа',10000),(6884,5681,6864,'Ларнед',10000),(6885,5681,6864,'Лекомптон',10000),(6886,5681,6864,'Ливенворт',10000),(6887,5681,6864,'Лоуренс',10000),(6888,5681,6864,'Манхаттан',10000),(6889,5681,6864,'Мерриам',10000),(6890,5681,6864,'Миссион',10000),(6891,5681,6864,'Миссион-Вудс',10000),(6892,5681,6864,'Миссион-Хиллс',10000),(6893,5681,6864,'Нортон',10000),(6894,5681,6864,'Оакли',10000),(6895,5681,6864,'Обурн',10000),(6896,5681,6864,'Овербрук',10000),(6897,5681,6864,'Оверленд-Парк',10000),(6898,5681,6864,'Огден',10000),(6899,5681,6864,'Палмер',10000),(6900,5681,6864,'Парк-Сити',10000),(6901,5681,6864,'Парсонс',10000),(6902,5681,6864,'Перри',10000),(6903,5681,6864,'Прейри-Виллидж',10000),(6904,5681,6864,'Роланд-Парк',10000),(6905,5681,6864,'Рос-Хилл',10000),(6906,5681,6864,'Салина',10000),(6907,5681,6864,'Силвер-Лейк',10000),(6908,5681,6864,'Скрантон',10000),(6909,5681,6864,'Топика',10000),(6910,5681,6864,'Файрвэй',10000),(6911,5681,6864,'Форт-Райли',10000),(6912,5681,6864,'Фронтенак',10000),(6913,5681,6864,'Хатчинсон',10000),(6914,5681,6864,'Хэйс',10000),(6915,5681,6864,'Чанут',10000),(6916,5681,6864,'Эмпориа',10000),(6918,5681,6917,'Адубон-Парк',10000),(6919,5681,6917,'Ашланд',10000),(6920,5681,6917,'Баулинг Грин',10000),(6921,5681,6917,'Беллевуэ',10000),(6922,5681,6917,'Беллефонт',10000),(6923,5681,6917,'Валлинс-Крик',10000),(6924,5681,6917,'Версаиллес',10000),(6925,5681,6917,'Вествуд',10000),(6926,5681,6917,'Вилмор',10000),(6927,5681,6917,'Вэйланд',10000),(6928,5681,6917,'Гутри',10000),(6929,5681,6917,'Джорджтаун',10000),(6930,5681,6917,'Дэйтон',10000),(6931,5681,6917,'Еминенк',10000),(6932,5681,6917,'Катлеттсбург',10000),(6933,5681,6917,'Кентон-Вейл',10000),(6934,5681,6917,'Кингсли',10000),(6935,5681,6917,'Ковингтон',10000),(6936,5681,6917,'Ла Фэйетт',10000),(6937,5681,6917,'Лексингтон',10000),(6938,5681,6917,'Линнвив',10000),(6939,5681,6917,'Лондон',10000),(6940,5681,6917,'Лоуисвилл',10000),(6941,5681,6917,'Лудлау',10000),(6942,5681,6917,'Маунт-Стерлинг',10000),(6943,5681,6917,'Николасвиль',10000),(6944,5681,6917,'Ньюпорт',10000),(6945,5681,6917,'Овенсборо',10000),(6946,5681,6917,'Олбани',10000),(6947,5681,6917,'Падуках',10000),(6948,5681,6917,'Парис',10000),(6949,5681,6917,'Парк-Хиллс',10000),(6950,5681,6917,'Парквэй-Виллидж',10000),(6951,5681,6917,'Певи Валли',10000),(6952,5681,6917,'Пемброк',10000),(6953,5681,6917,'Ракеланд',10000),(6954,5681,6917,'Русселл',10000),(6955,5681,6917,'Саут-Шор',10000),(6956,5681,6917,'Саутгейт',10000),(6957,5681,6917,'Сенека-Гарденс',10000),(6958,5681,6917,'Стампинг-Граунд',10000),(6959,5681,6917,'Стратмур-Гарденс',10000),(6960,5681,6917,'Стратмур-Манор',10000),(6961,5681,6917,'Трентон',10000),(6962,5681,6917,'Флатвудс',10000),(6963,5681,6917,'Форт Кампбелл Норт',10000),(6964,5681,6917,'Форт-Вригт',10000),(6965,5681,6917,'Форт-Митчелл',10000),(6966,5681,6917,'Форт-Нокс',10000),(6967,5681,6917,'Форт-Томас',10000),(6968,5681,6917,'Франкфорт',10000),(6969,5681,6917,'Хиден',10000),(6970,5681,6917,'Хопкинсвилл',10000),(6971,5681,6917,'Хорс-Кейв',10000),(6972,5681,6917,'Шивели',10000),(6974,5681,6973,'Айдахо-Спрингс',10000),(6975,5681,6973,'Арвада',10000),(6976,5681,6973,'Аурора',10000),(6977,5681,6973,'Блэк-Форест',10000),(6978,5681,6973,'Боулдер',10000),(6979,5681,6973,'Браш',10000),(6980,5681,6973,'Велби',10000),(6981,5681,6973,'Вестминстер',10000),(6982,5681,6973,'Вет-Ридж',10000),(6983,5681,6973,'Вудленд-Парк',10000),(6984,5681,6973,'Гленвуд-Спрингс',10000),(6985,5681,6973,'Гранд-Джанкшин',10000),(6986,5681,6973,'Грили',10000),(6987,5681,6973,'Грин-Маунтайн-Фоллс',10000),(6988,5681,6973,'Гринвуд-Виллидж',10000),(6989,5681,6973,'Денвер',10000),(6990,5681,6973,'Дерби',10000),(6991,5681,6973,'Диллон',10000),(6992,5681,6973,'Дуранго',10000),(6993,5681,6973,'Инглевуд',10000),(6994,5681,6973,'Колорадо-Спрингс',10000),(6995,5681,6973,'Коммерц-Сити',10000),(6996,5681,6973,'Крайг',10000),(6997,5681,6973,'Лас-Анимас',10000),(6998,5681,6973,'Лейквуд',10000),(6999,5681,6973,'Лейксайд',10000),(7000,5681,6973,'Литтлетон',10000),(7001,5681,6973,'Манитоу-Спрингс',10000),(7002,5681,6973,'Нанн',10000),(7003,5681,6973,'Нортгленн',10000),(7004,5681,6973,'Пуэбло',10000),(7005,5681,6973,'Саутгленн',10000),(7006,5681,6973,'Свинк',10000),(7007,5681,6973,'Секьюрити',10000),(7008,5681,6973,'Форт-Карсон',10000),(7009,5681,6973,'Форт-Коллинс',10000),(7010,5681,6973,'Черри-Хиллс-Виллидж',10000),(7011,5681,6973,'Шеридан',10000),(7012,5681,6973,'Шеррелвуд',10000),(7013,5681,6973,'Эджуотер',10000),(7014,5681,6973,'Эйр-Форс-Академи',10000),(7016,5681,7015,'Берлин',10000),(7017,5681,7015,'Бриджпорт',10000),(7018,5681,7015,'Бристоль',10000),(7019,5681,7015,'Валлингфорд',10000),(7020,5681,7015,'Вернон',10000),(7021,5681,7015,'Вест-Хавен',10000),(7022,5681,7015,'Вест-Хартфорд',10000),(7023,5681,7015,'Вестпорт',10000),(7024,5681,7015,'Ветерсфилд',10000),(7025,5681,7015,'Гластонбури',10000),(7026,5681,7015,'Гринвич',10000),(7027,5681,7015,'Данбури',10000),(7028,5681,7015,'Ист-Хавен',10000),(7029,5681,7015,'Ист-Хартфорд',10000),(7030,5681,7015,'Кенсингтон',10000),(7031,5681,7015,'Куинбаг',10000),(7032,5681,7015,'Манчестер',10000),(7033,5681,7015,'Мериден',10000),(7034,5681,7015,'Миддлетаун',10000),(7035,5681,7015,'Милфорд',10000),(7036,5681,7015,'Невингтон',10000),(7037,5681,7015,'Норвич',10000),(7038,5681,7015,'Норволк',10000),(7039,5681,7015,'Норт-Гросвенор-Дейл',10000),(7040,5681,7015,'Нью-Бритайн',10000),(7041,5681,7015,'Нью-Лондон',10000),(7042,5681,7015,'Нью-Хейвен',10000),(7043,5681,7015,'Патнам',10000),(7044,5681,7015,'Роки-Хилл',10000),(7045,5681,7015,'Стамфорд',10000),(7046,5681,7015,'Стратфорд',10000),(7047,5681,7015,'Торрингтон',10000),(7048,5681,7015,'Трамбалл',10000),(7049,5681,7015,'Уотербури',10000),(7050,5681,7015,'Файрфилд',10000),(7051,5681,7015,'Фармингтон',10000),(7052,5681,7015,'Хамден',10000),(7053,5681,7015,'Хартфорд',10000),(7054,5681,7015,'Шелтон',10000),(7056,5681,7055,'Абита-Спрингс',10000),(7057,5681,7055,'Александрия',10000),(7058,5681,7055,'Анги',10000),(7059,5681,7055,'Балл',10000),(7060,5681,7055,'Батон-Руж',10000),(7061,5681,7055,'Бейкер',10000),(7062,5681,7055,'Бентон',10000),(7063,5681,7055,'Бланчард',10000),(7064,5681,7055,'Богалуса',10000),(7065,5681,7055,'Боссир-Сити',10000),(7066,5681,7055,'Варнадо',10000),(7067,5681,7055,'Велш',10000),(7068,5681,7055,'Видалиа',10000),(7069,5681,7055,'Вильсон',10000),(7070,5681,7055,'Вудворт',10000),(7071,5681,7055,'Гонзалес',10000),(7072,5681,7055,'Грамблинг',10000),(7073,5681,7055,'Де-Риддер',10000),(7074,5681,7055,'Денхам-Спрингс',10000),(7075,5681,7055,'Джексон',10000),(7076,5681,7055,'Дусон',10000),(7077,5681,7055,'Зачари',10000),(7078,5681,7055,'Канктон',10000),(7079,5681,7055,'Карвилл',10000),(7080,5681,7055,'Кеннер',10000),(7081,5681,7055,'Клейтон',10000),(7082,5681,7055,'Ковингтон',10000),(7083,5681,7055,'Коттон-Вэлли',10000),(7084,5681,7055,'Краули',10000),(7085,5681,7055,'Куллен',10000),(7086,5681,7055,'Лафайетт',10000),(7087,5681,7055,'Лейк-Чарльз',10000),(7088,5681,7055,'Лекомпт',10000),(7089,5681,7055,'Лисвилл',10000),(7090,5681,7055,'Марреро',10000),(7091,5681,7055,'Мерривилл',10000),(7092,5681,7055,'Метаири',10000),(7093,5681,7055,'Монро',10000),(7094,5681,7055,'Морган-Сити',10000),(7095,5681,7055,'Мосс-Блуфф',10000),(7096,5681,7055,'Новый Орлеан',10000),(7097,5681,7055,'Нью-Ибериа',10000),(7098,5681,7055,'Олбани',10000),(7099,5681,7055,'Пайнвилл',10000),(7100,5681,7055,'Пирл Ривер',10000),(7101,5681,7055,'Порт-Аллен',10000),(7102,5681,7055,'Рэйн',10000),(7103,5681,7055,'Сансет',10000),(7104,5681,7055,'Сарепта',10000),(7105,5681,7055,'Скотландвилл',10000),(7106,5681,7055,'Скотт',10000),(7107,5681,7055,'Слаутер',10000),(7108,5681,7055,'Спрингилл',10000),(7109,5681,7055,'Стоунволл',10000),(7110,5681,7055,'Сун',10000),(7111,5681,7055,'Урания',10000),(7112,5681,7055,'Ферридэй',10000),(7113,5681,7055,'Франклинтон',10000),(7114,5681,7055,'Хаугтон',10000),(7115,5681,7055,'Хоума',10000),(7116,5681,7055,'Хэйнесвилл',10000),(7117,5681,7055,'Чёрч-Пойнт',10000),(7118,5681,7055,'Шонгалу',10000),(7119,5681,7055,'Шривпорт',10000),(7121,5681,7120,'Айер',10000),(7122,5681,7120,'Актон',10000),(7123,5681,7120,'Андовер',10000),(7124,5681,7120,'Арлингтон',10000),(7125,5681,7120,'Атол',10000),(7126,5681,7120,'Аттлеборо',10000),(7127,5681,7120,'Аубурн',10000),(7128,5681,7120,'Беверли',10000),(7129,5681,7120,'Белмонт',10000),(7130,5681,7120,'Бостон',10000),(7131,5681,7120,'Боурн',10000),(7132,5681,7120,'Брайнтри',10000),(7133,5681,7120,'Бриджуотер',10000),(7134,5681,7120,'Броктон',10000),(7135,5681,7120,'Бруклин',10000),(7136,5681,7120,'Валтам',10000),(7137,5681,7120,'Варехам',10000),(7138,5681,7120,'Вейкфилд',10000),(7139,5681,7120,'Веллесли',10000),(7140,5681,7120,'Вест-Бойлстон',10000),(7141,5681,7120,'Вест-Бриджуотер',10000),(7142,5681,7120,'Вест-Варехам',10000),(7143,5681,7120,'Вест-Спрингфилд',10000),(7144,5681,7120,'Вестборо',10000),(7145,5681,7120,'Вестон',10000),(7146,5681,7120,'Вестфилд',10000),(7147,5681,7120,'Вимоут',10000),(7148,5681,7120,'Винтроп',10000),(7149,5681,7120,'Винчестер',10000),(7150,5681,7120,'Вобурн',10000),(7151,5681,7120,'Ворчестер',10000),(7152,5681,7120,'Врентам',10000),(7153,5681,7120,'Глочестер',10000),(7154,5681,7120,'Графтон',10000),(7155,5681,7120,'Гринфилд',10000),(7156,5681,7120,'Дадли',10000),(7157,5681,7120,'Данверс',10000),(7158,5681,7120,'Дедхам',10000),(7159,5681,7120,'Дракут',10000),(7160,5681,7120,'Ист-Бриджуотер',10000),(7161,5681,7120,'Ист-Лонгмидоу',10000),(7162,5681,7120,'Карвер',10000),(7163,5681,7120,'Кембридж',10000),(7164,5681,7120,'Клинтон',10000),(7165,5681,7120,'Куинси',10000),(7166,5681,7120,'Лейкестер',10000),(7167,5681,7120,'Лексингтон',10000),(7168,5681,7120,'Леоминстер',10000),(7169,5681,7120,'Линн',10000),(7170,5681,7120,'Линнфилд',10000),(7171,5681,7120,'Ловелл',10000),(7172,5681,7120,'Лоуренс',10000),(7173,5681,7120,'Малден',10000),(7174,5681,7120,'Марлборо',10000),(7175,5681,7120,'Медфорд',10000),(7176,5681,7120,'Мелроз',10000),(7177,5681,7120,'Метуэн',10000),(7178,5681,7120,'Миллбури',10000),(7179,5681,7120,'Милтон',10000),(7180,5681,7120,'Натик',10000),(7181,5681,7120,'Нахант',10000),(7182,5681,7120,'Нидхам',10000),(7183,5681,7120,'Норвуд',10000),(7184,5681,7120,'Норт-Андовер',10000),(7185,5681,7120,'Норт-Дигтон',10000),(7186,5681,7120,'Нортамптон',10000),(7187,5681,7120,'Нортборо',10000),(7188,5681,7120,'Нью-Бедфорд',10000),(7189,5681,7120,'Ньютон',10000),(7190,5681,7120,'Оксфорд',10000),(7191,5681,7120,'Оксфорд-Сентер',10000),(7192,5681,7120,'Пибоди',10000),(7193,5681,7120,'Питтсфилд',10000),(7194,5681,7120,'Ратланд',10000),(7195,5681,7120,'Ревер',10000),(7196,5681,7120,'Рехобот',10000),(7197,5681,7120,'Ридинг',10000),(7198,5681,7120,'Рошдейл',10000),(7199,5681,7120,'Рэндольф',10000),(7200,5681,7120,'Сагамор',10000),(7201,5681,7120,'Салем',10000),(7202,5681,7120,'Сандвич',10000),(7203,5681,7120,'Саттон',10000),(7204,5681,7120,'Саугус',10000),(7205,5681,7120,'Саут-Ланкастер',10000),(7206,5681,7120,'Свампскотт',10000),(7207,5681,7120,'Сомервилл',10000),(7208,5681,7120,'Сомерсет',10000),(7209,5681,7120,'Спенсер',10000),(7210,5681,7120,'Спрингфилд',10000),(7211,5681,7120,'Стерлинг',10000),(7212,5681,7120,'Стоунхам',10000),(7213,5681,7120,'Таунтон',10000),(7214,5681,7120,'Три-Риверс',10000),(7215,5681,7120,'Тьюксбури',10000),(7216,5681,7120,'Уотертаун',10000),(7217,5681,7120,'Фитчбург',10000),(7218,5681,7120,'Фолл-Ривер',10000),(7219,5681,7120,'Фрамингам',10000),(7220,5681,7120,'Фритаун',10000),(7221,5681,7120,'Хаверхилл',10000),(7222,5681,7120,'Холден',10000),(7223,5681,7120,'Холиок',10000),(7224,5681,7120,'Челси',10000),(7225,5681,7120,'Чикопи',10000),(7226,5681,7120,'Шроусбури',10000),(7227,5681,7120,'Эверетт',10000),(7229,5681,7228,'Бейпорт',10000),(7230,5681,7228,'Бирон',10000),(7231,5681,7228,'Блумингтон',10000),(7232,5681,7228,'Брайнерд',10000),(7233,5681,7228,'Браунсвилл',10000),(7234,5681,7228,'Бруклин-Парк',10000),(7235,5681,7228,'Бруклин-Сентер',10000),(7236,5681,7228,'Валкер',10000),(7237,5681,7228,'Вест-Сант-Пол',10000),(7238,5681,7228,'Виллмар',10000),(7239,5681,7228,'Винона',10000),(7240,5681,7228,'Вреншалл',10000),(7241,5681,7228,'Германтаун',10000),(7242,5681,7228,'Голден-Вэлли',10000),(7243,5681,7228,'Дакота',10000),(7244,5681,7228,'Дулут',10000),(7245,5681,7228,'Каннон-Фоллс',10000),(7246,5681,7228,'Карлтон',10000),(7247,5681,7228,'Клокуэт',10000),(7248,5681,7228,'Колумбия-Хейгтс',10000),(7249,5681,7228,'Кристал',10000),(7250,5681,7228,'Кун-Рапидс',10000),(7251,5681,7228,'Лаудердейл',10000),(7252,5681,7228,'Лилидейл',10000),(7253,5681,7228,'Литтл-Фоллс',10000),(7254,5681,7228,'Манкато',10000),(7255,5681,7228,'Маплвуд',10000),(7256,5681,7228,'Медисин-Лейк',10000),(7257,5681,7228,'Мендота',10000),(7258,5681,7228,'Мендота-Хейгтс',10000),(7259,5681,7228,'Миннеаполис',10000),(7260,5681,7228,'Миннетонка',10000),(7261,5681,7228,'Мурхид',10000),(7262,5681,7228,'Норт Манкато',10000),(7263,5681,7228,'Нью-Брайтон',10000),(7264,5681,7228,'Олбани',10000),(7265,5681,7228,'Остин',10000),(7266,5681,7228,'Проктор',10000),(7267,5681,7228,'Ричфилд',10000),(7268,5681,7228,'Роббинсдейл',10000),(7269,5681,7228,'Росевилл',10000),(7270,5681,7228,'Рочестер',10000),(7271,5681,7228,'Сант-Антони',10000),(7272,5681,7228,'Сант-Клауд',10000),(7273,5681,7228,'Сант-Пол',10000),(7274,5681,7228,'Сент-Луис-Парк',10000),(7275,5681,7228,'Сканлон',10000),(7276,5681,7228,'Скилин',10000),(7277,5681,7228,'Стефен',10000),(7278,5681,7228,'Стиллуотер',10000),(7279,5681,7228,'Томсон',10000),(7280,5681,7228,'Фалкон-Хейгтс',10000),(7281,5681,7228,'Фармингтон',10000),(7282,5681,7228,'Фергус-Фоллс',10000),(7283,5681,7228,'Фридли',10000),(7284,5681,7228,'Хиллтоп',10000),(7285,5681,7228,'Хока',10000),(7286,5681,7228,'Эдина',10000),(7287,5681,7228,'Эйота',10000),(7289,5681,7288,'Абердин',10000),(7290,5681,7288,'Аккерман',10000),(7291,5681,7288,'Амори',10000),(7292,5681,7288,'Балдвин',10000),(7293,5681,7288,'Бассфилд',10000),(7294,5681,7288,'Батесвилл',10000),(7295,5681,7288,'Билокси',10000),(7296,5681,7288,'Боил',10000),(7297,5681,7288,'Брандон',10000),(7298,5681,7288,'Брукхавен',10000),(7299,5681,7288,'Буневилл',10000),(7300,5681,7288,'Бэй Спрингс',10000),(7301,5681,7288,'Ватер Валли',10000),(7302,5681,7288,'Вейр',10000),(7303,5681,7288,'Верона',10000),(7304,5681,7288,'Вест',10000),(7305,5681,7288,'Вест Поинт',10000),(7306,5681,7288,'Виксбург',10000),(7307,5681,7288,'Гаттман',10000),(7308,5681,7288,'Глендал',10000),(7309,5681,7288,'Глендора',10000),(7310,5681,7288,'Гренада',10000),(7311,5681,7288,'Гринвилл',10000),(7312,5681,7288,'Гудман',10000),(7313,5681,7288,'Гулф Хиллс',10000),(7314,5681,7288,'Гулфпорт',10000),(7315,5681,7288,'Д`Ибервилл',10000),(7316,5681,7288,'Декатур',10000),(7317,5681,7288,'Джексон',10000),(7318,5681,7288,'Доддсвилл',10000),(7319,5681,7288,'Древ',10000),(7320,5681,7288,'Дурант',10000),(7321,5681,7288,'Еллисвилл',10000),(7322,5681,7288,'Индианола',10000),(7323,5681,7288,'Каледониа',10000),(7324,5681,7288,'Кингс',10000),(7325,5681,7288,'Клевеланд',10000),(7326,5681,7288,'Клинтон',10000),(7327,5681,7288,'Коллинс',10000),(7328,5681,7288,'Колумбиа',10000),(7329,5681,7288,'Колумбус',10000),(7330,5681,7288,'Коринт',10000),(7331,5681,7288,'Коссут',10000),(7332,5681,7288,'Коуртланд',10000),(7333,5681,7288,'Куитман',10000),(7334,5681,7288,'Лак',10000),(7335,5681,7288,'Лаурел',10000),(7336,5681,7288,'Лонг Бич',10000),(7337,5681,7288,'Лоуин',10000),(7338,5681,7288,'Лула',10000),(7339,5681,7288,'Лумбертон',10000),(7340,5681,7288,'Мадисон',10000),(7341,5681,7288,'Марион',10000),(7342,5681,7288,'Мериголд',10000),(7343,5681,7288,'Меридиан',10000),(7344,5681,7288,'Миз',10000),(7345,5681,7288,'МкКул',10000),(7346,5681,7288,'Монтикелло',10000),(7347,5681,7288,'Монтрос',10000),(7348,5681,7288,'Моунд Бэйоу',10000),(7349,5681,7288,'Натчес',10000),(7350,5681,7288,'Неллибург',10000),(7351,5681,7288,'Неттлетон',10000),(7352,5681,7288,'Норт Гулфпорт',10000),(7353,5681,7288,'Нью-Олбани',10000),(7354,5681,7288,'Ньютон',10000),(7355,5681,7288,'Окин Спрингс',10000),(7356,5681,7288,'Околона',10000),(7357,5681,7288,'Олив Бранч',10000),(7358,5681,7288,'Оранг Гров',10000),(7359,5681,7288,'Палмерс Кроссинг',10000),(7360,5681,7288,'Паскагоула',10000),(7361,5681,7288,'Пасс Чристиан',10000),(7362,5681,7288,'Паулдинг',10000),(7363,5681,7288,'Пачута',10000),(7364,5681,7288,'Пелахатчи',10000),(7365,5681,7288,'Петал',10000),(7366,5681,7288,'Пикэйун',10000),(7367,5681,7288,'Пирл',10000),(7368,5681,7288,'Пирл-Сити',10000),(7369,5681,7288,'Плантерсвилл',10000),(7370,5681,7288,'Поп',10000),(7371,5681,7288,'Попларвилл',10000),(7372,5681,7288,'Пурвис',10000),(7373,5681,7288,'Ралейг',10000),(7374,5681,7288,'Ренова',10000),(7375,5681,7288,'Риджеланд',10000),(7376,5681,7288,'Ринзи',10000),(7377,5681,7288,'Роллинг-Форк',10000),(7378,5681,7288,'Рулевилл',10000),(7379,5681,7288,'Саллис',10000),(7380,5681,7288,'Салтилло',10000),(7381,5681,7288,'Сандерсвилл',10000),(7382,5681,7288,'Саутхейвен',10000),(7383,5681,7288,'Себастопол',10000),(7384,5681,7288,'Семинари',10000),(7385,5681,7288,'Силварена',10000),(7386,5681,7288,'Силвер-Крик',10000),(7387,5681,7288,'Смитвилл',10000),(7388,5681,7288,'Сосо',10000),(7389,5681,7288,'Старквилл',10000),(7390,5681,7288,'Суммит',10000),(7391,5681,7288,'Сумнер',10000),(7392,5681,7288,'Сумралл',10000),(7393,5681,7288,'Тилертаун',10000),(7394,5681,7288,'Тупело',10000),(7395,5681,7288,'Тутвилер',10000),(7396,5681,7288,'Флаууд',10000),(7397,5681,7288,'Флоренк',10000),(7398,5681,7288,'Форест',10000),(7399,5681,7288,'Френч Камп',10000),(7400,5681,7288,'Хармони',10000),(7401,5681,7288,'Хатли',10000),(7402,5681,7288,'Хаттисбург',10000),(7403,5681,7288,'Хендерсон Поинт',10000),(7404,5681,7288,'Хернандо',10000),(7405,5681,7288,'Хикори',10000),(7406,5681,7288,'Хьюстон',10000),(7407,5681,7288,'Чунки',10000),(7408,5681,7288,'Шав',10000),(7409,5681,7288,'Шаннон',10000),(7410,5681,7288,'Юмпертаун',10000),(7412,5681,7411,'Авондейл',10000),(7413,5681,7411,'Бисмарк',10000),(7414,5681,7411,'Бонн Терр',10000),(7415,5681,7411,'Брансон',10000),(7416,5681,7411,'Брентвуд',10000),(7417,5681,7411,'Варсон Вудс',10000),(7418,5681,7411,'Вебстер Гровес',10000),(7419,5681,7411,'Велда Виллидж Хиллс',10000),(7420,5681,7411,'Веллстон',10000),(7421,5681,7411,'Вест-Плайнс',10000),(7422,5681,7411,'Гриндал',10000),(7423,5681,7411,'Дес Перес',10000),(7424,5681,7411,'Деслог',10000),(7425,5681,7411,'Джефферсон-Сити',10000),(7426,5681,7411,'Джоплин',10000),(7427,5681,7411,'Диксон',10000),(7428,5681,7411,'Дулиттл',10000),(7429,5681,7411,'Елвинс',10000),(7430,5681,7411,'Естер',10000),(7431,5681,7411,'Индепенденс',10000),(7432,5681,7411,'Ирондал',10000),(7433,5681,7411,'Камдентон',10000),(7434,5681,7411,'Канзас-Сити',10000),(7435,5681,7411,'Кап Гирардиу',10000),(7436,5681,7411,'Кирквуд',10000),(7437,5681,7411,'Кирксвилл',10000),(7438,5681,7411,'Клэйтон',10000),(7439,5681,7411,'Колумбия',10000),(7440,5681,7411,'Кристал Лак Парк',10000),(7441,5681,7411,'Лемэй',10000),(7442,5681,7411,'Лидвуд',10000),(7443,5681,7411,'Лидингтон',10000),(7444,5681,7411,'Макензи',10000),(7445,5681,7411,'Маплевуд',10000),(7446,5681,7411,'Маршалл',10000),(7447,5681,7411,'Маундвилл',10000),(7448,5681,7411,'Метц',10000),(7449,5681,7411,'Невада',10000),(7450,5681,7411,'Норт-Канзас-Сити',10000),(7451,5681,7411,'Нортви',10000),(7452,5681,7411,'Нортвудс',10000),(7453,5681,7411,'Нортмур',10000),(7454,5681,7411,'Нью-Блумфилд',10000),(7455,5681,7411,'Ньюбург',10000),(7456,5681,7411,'Окленд-Парк',10000),(7457,5681,7411,'Олбани (Генри Кантри)',10000),(7458,5681,7411,'Олбани (Рэй Кантри)',10000),(7459,5681,7411,'Олбани-Джанкшн',10000),(7460,5681,7411,'Пагедал',10000),(7461,5681,7411,'Пакифик',10000),(7462,5681,7411,'Пилот Кноб',10000),(7463,5681,7411,'Пин Лавн',10000),(7464,5681,7411,'Риверминес',10000),(7465,5681,7411,'Ричмонд Хейгтс',10000),(7466,5681,7411,'Ролла',10000),(7467,5681,7411,'Рэйтаун',10000),(7468,5681,7411,'Салем',10000),(7469,5681,7411,'Сант-Чарльз',10000),(7470,5681,7411,'Седалиа',10000),(7471,5681,7411,'Седар-Сити',10000),(7472,5681,7411,'Сент-Джозеф',10000),(7473,5681,7411,'Сент-Луис',10000),(7474,5681,7411,'Спаниш Лак',10000),(7475,5681,7411,'Спрингфилд',10000),(7476,5681,7411,'Упландс Парк',10000),(7477,5681,7411,'Фаирвив Акрес',10000),(7478,5681,7411,'Фармингтон',10000),(7479,5681,7411,'Фергусон',10000),(7480,5681,7411,'Флат Ривер',10000),(7481,5681,7411,'Флориссант',10000),(7482,5681,7411,'Харвуд',10000),(7483,5681,7411,'Харрисбург',10000),(7484,5681,7411,'Хартсбург',10000),(7485,5681,7411,'Хигли Хейгтс',10000),(7486,5681,7411,'Хиллсдал',10000),(7487,5681,7411,'Хунтлейг',10000),(7488,5681,7411,'Шревсбури',10000),(7489,5681,7411,'Эдгар-Спрингс',10000),(7490,5681,7411,'Эйрпорт-Драйв',10000),(7491,5681,7411,'Эшланд',10000),(7492,5681,7411,'Юниверсити-Сити',10000),(7494,5681,7493,'Аллен-Парк',10000),(7495,5681,7493,'Бартон-Хиллс',10000),(7496,5681,7493,'Баттл Крик',10000),(7497,5681,7493,'Беллаир',10000),(7498,5681,7493,'Бессемер',10000),(7499,5681,7493,'Биг Рапидс',10000),(7500,5681,7493,'Бингам-Фармс',10000),(7501,5681,7493,'Бирмингам',10000),(7502,5681,7493,'Бирч-Ран',10000),(7503,5681,7493,'Бичер',10000),(7504,5681,7493,'Бойн-Сити',10000),(7505,5681,7493,'Бойн-Фоллс',10000),(7506,5681,7493,'Бэй-Сити',10000),(7507,5681,7493,'Валкер',10000),(7508,5681,7493,'Варрен',10000),(7509,5681,7493,'Вестланд',10000),(7510,5681,7493,'Виандотт',10000),(7511,5681,7493,'Виоминг',10000),(7512,5681,7493,'Волф Лак',10000),(7513,5681,7493,'Вэйкфилд',10000),(7514,5681,7493,'Галесбург',10000),(7515,5681,7493,'Гарден-Сити',10000),(7516,5681,7493,'Гранд-Бланк',10000),(7517,5681,7493,'Гранд-Рапидс',10000),(7518,5681,7493,'Гросс-Пойнт-Парк',10000),(7519,5681,7493,'Гудрич',10000),(7520,5681,7493,'Дависон',10000),(7521,5681,7493,'Детройт',10000),(7522,5681,7493,'Джексон',10000),(7523,5681,7493,'Дирборн',10000),(7524,5681,7493,'Дирборн-Хейгтс',10000),(7525,5681,7493,'Екорс',10000),(7526,5681,7493,'Есканаба',10000),(7527,5681,7493,'Инкстер',10000),(7528,5681,7493,'Иониа',10000),(7529,5681,7493,'Ипсиланти',10000),(7530,5681,7493,'Ист Йордан',10000),(7531,5681,7493,'Ист-Гранд-Рапидс',10000),(7532,5681,7493,'Ист-Детройт',10000),(7533,5681,7493,'Ист-Лансинг',10000),(7534,5681,7493,'Иствуд',10000),(7535,5681,7493,'Кадиллак',10000),(7536,5681,7493,'Каламазу',10000),(7537,5681,7493,'Каро',10000),(7538,5681,7493,'Кентвуд',10000),(7539,5681,7493,'Климакс',10000),(7540,5681,7493,'Клинтон',10000),(7541,5681,7493,'Колдватер',10000),(7542,5681,7493,'Кутлервилл',10000),(7543,5681,7493,'Ламбертвилл',10000),(7544,5681,7493,'Лансинг',10000),(7545,5681,7493,'Лейк-Анжелус',10000),(7546,5681,7493,'Ливониа',10000),(7547,5681,7493,'Линкольн-Парк',10000),(7548,5681,7493,'Луна-Пир',10000),(7549,5681,7493,'Мадисон-Хейтс',10000),(7550,5681,7493,'Маркуэтт',10000),(7551,5681,7493,'Маунт-Моррис',10000),(7552,5681,7493,'Мелвиндейл',10000),(7553,5681,7493,'Меномини',10000),(7554,5681,7493,'Мидланд',10000),(7555,5681,7493,'Монтроз',10000),(7556,5681,7493,'Мунисинг',10000),(7557,5681,7493,'Мускегон',10000),(7558,5681,7493,'Мускегон-Хейгтс',10000),(7559,5681,7493,'Норт Мускегон',10000),(7560,5681,7493,'Нортон Шорес',10000),(7561,5681,7493,'Ньюберри',10000),(7562,5681,7493,'Оак Парк',10000),(7563,5681,7493,'Огаста',10000),(7564,5681,7493,'Отисвилл',10000),(7565,5681,7493,'Парчмент',10000),(7566,5681,7493,'Понтиак',10000),(7567,5681,7493,'Порт-Гурон',10000),(7568,5681,7493,'Портаг',10000),(7569,5681,7493,'Редфорд',10000),(7570,5681,7493,'Ривер-Руж',10000),(7571,5681,7493,'Ричланд',10000),(7572,5681,7493,'Росевилл',10000),(7573,5681,7493,'Роял-Оак',10000),(7574,5681,7493,'Сагинав',10000),(7575,5681,7493,'Сант-Клэр-Шорес',10000),(7576,5681,7493,'Саут-Лайон',10000),(7577,5681,7493,'Саут-Хейвен',10000),(7578,5681,7493,'Саутгейт',10000),(7579,5681,7493,'Саутфилд',10000),(7580,5681,7493,'Сентрал Лак',10000),(7581,5681,7493,'Стерлинг-Хейтс',10000),(7582,5681,7493,'Траверс-Сити',10000),(7583,5681,7493,'Траубридж Парк',10000),(7584,5681,7493,'Трой',10000),(7585,5681,7493,'Тэйлор',10000),(7586,5681,7493,'Уитмор-Лейк',10000),(7587,5681,7493,'Фаир Плаин',10000),(7588,5681,7493,'Ферндал',10000),(7589,5681,7493,'Флинт',10000),(7590,5681,7493,'Хамтрамк',10000),(7591,5681,7493,'Харпер-Вудс',10000),(7592,5681,7493,'Хезел-Парк',10000),(7593,5681,7493,'Хигланд-Парк',10000),(7594,5681,7493,'Хиллсдал',10000),(7595,5681,7493,'Холланд',10000),(7596,5681,7493,'Шварц-Крик',10000),(7597,5681,7493,'Энн-Арбор',10000),(7599,5681,7598,'Анаконда',10000),(7600,5681,7598,'Биллингс',10000),(7601,5681,7598,'Бьютт',10000),(7602,5681,7598,'Валкервилл',10000),(7603,5681,7598,'Гласгоу',10000),(7604,5681,7598,'Грейт-Фоллс',10000),(7605,5681,7598,'Калиспелл',10000),(7606,5681,7598,'Ливингстон',10000),(7607,5681,7598,'Миссоула',10000),(7608,5681,7598,'Раундап',10000),(7609,5681,7598,'Силвер-Бау',10000),(7610,5681,7598,'Хелена',10000),(7611,5681,7598,'Эвергрин',10000),(7612,5681,7598,'Эннис',10000),(7614,5681,7613,'Бакспорт',10000),(7615,5681,7613,'Бакстон',10000),(7616,5681,7613,'Бангор',10000),(7617,5681,7613,'Биддефорд',10000),(7618,5681,7613,'Бревер',10000),(7619,5681,7613,'Вестбрук',10000),(7620,5681,7613,'Визи',10000),(7621,5681,7613,'Винтерпорт',10000),(7622,5681,7613,'Горхам',10000),(7623,5681,7613,'Камберленд-Сентер',10000),(7624,5681,7613,'Кейп-Элизабет',10000),(7625,5681,7613,'Кеннебанк',10000),(7626,5681,7613,'Левистон',10000),(7627,5681,7613,'Милфорд',10000),(7628,5681,7613,'Огаста',10000),(7629,5681,7613,'Олд-Орчард-Бич',10000),(7630,5681,7613,'Олд-Таун',10000),(7631,5681,7613,'Ороно',10000),(7632,5681,7613,'Портленд',10000),(7633,5681,7613,'Сако',10000),(7634,5681,7613,'Саут-Портланд',10000),(7635,5681,7613,'Скарборо',10000),(7636,5681,7613,'Фалмаут',10000),(7637,5681,7613,'Фалмаут-Форсайд',10000),(7638,5681,7613,'Фрипорт',10000),(7639,5681,7613,'Хампден',10000),(7640,5681,7613,'Ярмаут',10000),(7642,5681,7641,'Аннаполис',10000),(7643,5681,7641,'Арбутус',10000),(7644,5681,7641,'Балтимор',10000),(7645,5681,7641,'Балтимор-Хайлендс',10000),(7646,5681,7641,'Бауи',10000),(7647,5681,7641,'Бетесда',10000),(7648,5681,7641,'Бладенсбург',10000),(7649,5681,7641,'Брентвуд',10000),(7650,5681,7641,'Бруклин-Парк',10000),(7651,5681,7641,'Брукмонт',10000),(7652,5681,7641,'Витон',10000),(7653,5681,7641,'Вудлаун',10000),(7654,5681,7641,'Глен-Барни',10000),(7655,5681,7641,'Дандальк',10000),(7656,5681,7641,'Ессекс',10000),(7657,5681,7641,'Камберленд',10000),(7658,5681,7641,'Карни',10000),(7659,5681,7641,'Катонсвилл',10000),(7660,5681,7641,'Колледж-Парк',10000),(7661,5681,7641,'Колмар-Манор',10000),(7662,5681,7641,'Корал-Хиллс',10000),(7663,5681,7641,'Коттедж-Сити',10000),(7664,5681,7641,'Крисфилд',10000),(7665,5681,7641,'Лансдаун',10000),(7666,5681,7641,'Латервилл',10000),(7667,5681,7641,'Линтикум',10000),(7668,5681,7641,'Лочирн',10000),(7669,5681,7641,'Марлау-Хейгтс',10000),(7670,5681,7641,'Маунт-Рейнье',10000),(7671,5681,7641,'Норт-Брентвуд',10000),(7672,5681,7641,'Оверли',10000),(7673,5681,7641,'Орчард-Хиллс',10000),(7674,5681,7641,'Пайксвилл',10000),(7675,5681,7641,'Памфри',10000),(7676,5681,7641,'Парквилл',10000),(7677,5681,7641,'Роквилл',10000),(7678,5681,7641,'Роседейл',10000),(7679,5681,7641,'Россвилл',10000),(7680,5681,7641,'Силвер Спринг',10000),(7681,5681,7641,'Сомерсет',10000),(7682,5681,7641,'Суитленд',10000),(7683,5681,7641,'Такома-Парк',10000),(7684,5681,7641,'Таусон',10000),(7685,5681,7641,'Уолкер-Милл',10000),(7686,5681,7641,'Фрутленд',10000),(7687,5681,7641,'Хагерстаун',10000),(7688,5681,7641,'Чеви-Час',10000),(7689,5681,7641,'Чиллум',10000),(7690,5681,7641,'Элликотт-Сити',10000),(7692,5681,7691,'Беллив',10000),(7693,5681,7691,'Битрайс',10000),(7694,5681,7691,'Боис-Таун',10000),(7695,5681,7691,'Гранд-Айленд',10000),(7696,5681,7691,'Дентон',10000),(7697,5681,7691,'ЛаВиста',10000),(7698,5681,7691,'Линкольн',10000),(7699,5681,7691,'Мак-Кук',10000),(7700,5681,7691,'Милфорд',10000),(7701,5681,7691,'Небраска-Сити',10000),(7702,5681,7691,'Норт-Платт',10000),(7703,5681,7691,'Норфолк',10000),(7704,5681,7691,'Олбани',10000),(7705,5681,7691,'Омаха',10000),(7706,5681,7691,'Оффутт база ВВС',10000),(7707,5681,7691,'Папиллион',10000),(7708,5681,7691,'Ралстон',10000),(7709,5681,7691,'Рока',10000),(7710,5681,7691,'Скоттсблуфф',10000),(7711,5681,7691,'Спрагуэ',10000),(7712,5681,7691,'Хастингс',10000),(7713,5681,7691,'Хикман',10000),(7715,5681,7714,'Вегас-Крик',10000),(7716,5681,7714,'Виннемукка',10000),(7717,5681,7714,'Винчестер',10000),(7718,5681,7714,'Ист-Лас-Вегас',10000),(7719,5681,7714,'Йерингтон',10000),(7720,5681,7714,'Калинт',10000),(7721,5681,7714,'Карсон-Сити',10000),(7722,5681,7714,'Лас-Вегас',10000),(7723,5681,7714,'Ловелок',10000),(7724,5681,7714,'Норт-Лас-Вегас',10000),(7725,5681,7714,'Овертон',10000),(7726,5681,7714,'Парадайс',10000),(7727,5681,7714,'Рино',10000),(7728,5681,7714,'Тонопа',10000),(7729,5681,7714,'Фаллон',10000),(7730,5681,7714,'Хавторн',10000),(7731,5681,7714,'Эврика',10000),(7732,5681,7714,'Эли',10000),(7734,5681,7733,'Вольфеборо',10000),(7735,5681,7733,'Вудсвилл',10000),(7736,5681,7733,'Довер',10000),(7737,5681,7733,'Конкорд',10000),(7738,5681,7733,'Манчестер',10000),(7739,5681,7733,'Нашуа',10000),(7740,5681,7733,'Ньюпорт',10000),(7741,5681,7733,'Олбани',10000),(7742,5681,7733,'Портсмоут',10000),(7743,5681,7733,'Эппинг',10000),(7745,5681,7744,'Айленд-Хейгтс',10000),(7746,5681,7744,'Атлантик-Сити',10000),(7747,5681,7744,'Беллвилл',10000),(7748,5681,7744,'Белмар',10000),(7749,5681,7744,'Бергенфилд',10000),(7750,5681,7744,'Беркли',10000),(7751,5681,7744,'Бичвуд',10000),(7752,5681,7744,'Блумфилд',10000),(7753,5681,7744,'Брик',10000),(7754,5681,7744,'Брик-Таун',10000),(7755,5681,7744,'Бруклаун',10000),(7756,5681,7744,'Бэйонн',10000),(7757,5681,7744,'Вест-Лонг-Бранч',10000),(7758,5681,7744,'Вест-Нью-Йорк',10000),(7759,5681,7744,'Вест-Орандж',10000),(7760,5681,7744,'Вестфилд',10000),(7761,5681,7744,'Виктори-Гарденс',10000),(7762,5681,7744,'Виллингборо',10000),(7763,5681,7744,'Винланд',10000),(7764,5681,7744,'Вихавкен',10000),(7765,5681,7744,'Вэйн',10000),(7766,5681,7744,'Гарфилд',10000),(7767,5681,7744,'Гилфорд-Парк',10000),(7768,5681,7744,'Глен-Ридж',10000),(7769,5681,7744,'Глочестер-Сити',10000),(7770,5681,7744,'Гуттенберг',10000),(7771,5681,7744,'Деланко',10000),(7772,5681,7744,'Дельран',10000),(7773,5681,7744,'Денвилл',10000),(7774,5681,7744,'Джерси-Сити',10000),(7775,5681,7744,'Довер',10000),(7776,5681,7744,'Инглевуд',10000),(7777,5681,7744,'Инглевуд-Клиффс',10000),(7778,5681,7744,'Ирвингтон',10000),(7779,5681,7744,'Ист-Брунсвик',10000),(7780,5681,7744,'Ист-Ньюарк',10000),(7781,5681,7744,'Ист-Орандж',10000),(7782,5681,7744,'Итонтаун',10000),(7783,5681,7744,'Камден',10000),(7784,5681,7744,'Кирни',10000),(7785,5681,7744,'Клифтон',10000),(7786,5681,7744,'Клиффсайд-Парк',10000),(7787,5681,7744,'Коллингсвуд',10000),(7788,5681,7744,'Лейк-Парсиппани',10000),(7789,5681,7744,'Лейквуд',10000),(7790,5681,7744,'Лейкхарст',10000),(7791,5681,7744,'Леониа',10000),(7792,5681,7744,'Ливингстон',10000),(7793,5681,7744,'Линден',10000),(7794,5681,7744,'Лоди',10000),(7795,5681,7744,'Лонг-Бранч',10000),(7796,5681,7744,'Марлборо',10000),(7797,5681,7744,'Маунтайн-Лейкс',10000),(7798,5681,7744,'Медфорд-Лейкс',10000),(7799,5681,7744,'Мендхам',10000),(7800,5681,7744,'Мершантвилл',10000),(7801,5681,7744,'Монтклайр',10000),(7802,5681,7744,'Моррис-Плайнс',10000),(7803,5681,7744,'Морристаун',10000),(7804,5681,7744,'Мэдисон',10000),(7805,5681,7744,'Натли',10000),(7806,5681,7744,'Нептун-Сити',10000),(7807,5681,7744,'Норт-Берген',10000),(7808,5681,7744,'Нью-Брунсвик',10000),(7809,5681,7744,'Ньюарк',10000),(7810,5681,7744,'Оаклин',10000),(7811,5681,7744,'Орандж',10000),(7812,5681,7744,'Оушн-Гейт',10000),(7813,5681,7744,'Пайн-Бич',10000),(7814,5681,7744,'Палисадес-Парк',10000),(7815,5681,7744,'Пальмира',10000),(7816,5681,7744,'Парамус',10000),(7817,5681,7744,'Парсиппани',10000),(7818,5681,7744,'Пассаик',10000),(7819,5681,7744,'Патерсон',10000),(7820,5681,7744,'Пеннингтон',10000),(7821,5681,7744,'Пеннсаукен',10000),(7822,5681,7744,'Перт-Амбой',10000),(7823,5681,7744,'Пискатавэй',10000),(7824,5681,7744,'Плайнфилд',10000),(7825,5681,7744,'Равэй',10000),(7826,5681,7744,'Риверсайд',10000),(7827,5681,7744,'Ривертон',10000),(7828,5681,7744,'Риджвуд',10000),(7829,5681,7744,'Риджефилд',10000),(7830,5681,7744,'Рэндольф',10000),(7831,5681,7744,'Саут-Белмар',10000),(7832,5681,7744,'Саут-Томс-Ривер',10000),(7833,5681,7744,'Секаукус',10000),(7834,5681,7744,'Силвертон',10000),(7835,5681,7744,'Сисайд-Хейгтс',10000),(7836,5681,7744,'Сэйревилл',10000),(7837,5681,7744,'Тинек',10000),(7838,5681,7744,'Томс-Ривер',10000),(7839,5681,7744,'Трентон',10000),(7840,5681,7744,'Трой-Хиллс',10000),(7841,5681,7744,'Файр-Лаун',10000),(7842,5681,7744,'Файрвью',10000),(7843,5681,7744,'Флорам-Парк',10000),(7844,5681,7744,'Форт-Ли',10000),(7845,5681,7744,'Хаддон',10000),(7846,5681,7744,'Хакенсак',10000),(7847,5681,7744,'Хановер',10000),(7848,5681,7744,'Харрисон',10000),(7849,5681,7744,'Хиллсайд',10000),(7850,5681,7744,'Хобокен',10000),(7851,5681,7744,'Холидэй-Сити',10000),(7852,5681,7744,'Черри-Хилл',10000),(7853,5681,7744,'Чиннаминсон',10000),(7854,5681,7744,'Эджуотер',10000),(7855,5681,7744,'Эдисон',10000),(7856,5681,7744,'Элизабет',10000),(7857,5681,7744,'Юнион',10000),(7858,5681,7744,'Юнион-Сити',10000),(7860,5681,7859,'Айрондекуит',10000),(7861,5681,7859,'Амстердам',10000),(7862,5681,7859,'Апалачин',10000),(7863,5681,7859,'Аргил',10000),(7864,5681,7859,'Ардсли',10000),(7865,5681,7859,'Арлингтон',10000),(7866,5681,7859,'Атенс',10000),(7867,5681,7859,'Балдвин',10000),(7868,5681,7859,'Балдвинсвилл',10000),(7869,5681,7859,'Балмвилл',10000),(7870,5681,7859,'Батавиа',10000),(7871,5681,7859,'Беллероз',10000),(7872,5681,7859,'Бетпейдж',10000),(7873,5681,7859,'Бикон',10000),(7874,5681,7859,'Бингамтон',10000),(7875,5681,7859,'Бласделл',10000),(7876,5681,7859,'Блаувелт',10000),(7877,5681,7859,'Блумингдейл',10000),(7878,5681,7859,'Брайтон',10000),(7879,5681,7859,'Брайтуотерс',10000),(7880,5681,7859,'Брентвуд',10000),(7881,5681,7859,'Бринкерхофф',10000),(7882,5681,7859,'Броквэй',10000),(7883,5681,7859,'Бронкс',10000),(7884,5681,7859,'Бруклин',10000),(7885,5681,7859,'Буффало',10000),(7886,5681,7859,'Бэй-Шор',10000),(7887,5681,7859,'Бэйберри',10000),(7888,5681,7859,'Ваппингерс-Фоллс',10000),(7889,5681,7859,'Ватертаун',10000),(7890,5681,7859,'Вест-Айслип',10000),(7891,5681,7859,'Вест-Бэбилон',10000),(7892,5681,7859,'Вест-Сенека',10000),(7893,5681,7859,'Вест-Хаверстроу',10000),(7894,5681,7859,'Вест-Хемпстид',10000),(7895,5681,7859,'Вестал',10000),(7896,5681,7859,'Вествейл',10000),(7897,5681,7859,'Вестмер',10000),(7898,5681,7859,'Виллард',10000),(7899,5681,7859,'Вилльямсвилл',10000),(7900,5681,7859,'Виола',10000),(7901,5681,7859,'Вудсайд',10000),(7902,5681,7859,'Вэлли-Стрим',10000),(7903,5681,7859,'Галвэй',10000),(7904,5681,7859,'Гарден-Сити',10000),(7905,5681,7859,'Гейтс',10000),(7906,5681,7859,'Гилбертсвилл',10000),(7907,5681,7859,'Глен-Коув',10000),(7908,5681,7859,'Гленхэм',10000),(7909,5681,7859,'Гованда',10000),(7910,5681,7859,'Грин-Айленд',10000),(7911,5681,7859,'Гринвич',10000),(7912,5681,7859,'Грис',10000),(7913,5681,7859,'Грэйт-Нек-Эстейтс',10000),(7914,5681,7859,'Грэйтт-Нек-Плаза',10000),(7915,5681,7859,'Гувернье',10000),(7916,5681,7859,'ДеВитт',10000),(7917,5681,7859,'Депев',10000),(7918,5681,7859,'Джамайка',10000),(7919,5681,7859,'Джеймстаун',10000),(7920,5681,7859,'Джефферсон-Хейгтс',10000),(7921,5681,7859,'Джонсон-Сити',10000),(7922,5681,7859,'Дир-Парк',10000),(7923,5681,7859,'Ист-Вестал',10000),(7924,5681,7859,'Ист-Миддлтаун',10000),(7925,5681,7859,'Ист-Мидоу',10000),(7926,5681,7859,'Ист-Патчога',10000),(7927,5681,7859,'Ист-Сиракус',10000),(7928,5681,7859,'Истчестер',10000),(7929,5681,7859,'Итака',10000),(7930,5681,7859,'Йонкерс',10000),(7931,5681,7859,'Йорквилл',10000),(7932,5681,7859,'Йорктаун-Хейгтс',10000),(7933,5681,7859,'Камиллус',10000),(7934,5681,7859,'Катскилл',10000),(7935,5681,7859,'Каттарагус',10000),(7936,5681,7859,'Квинс',10000),(7937,5681,7859,'Кев-Гарденс',10000),(7938,5681,7859,'Кенмор',10000),(7939,5681,7859,'Кингстон',10000),(7940,5681,7859,'Кларенс-Сентер',10000),(7941,5681,7859,'Кларк-Миллс',10000),(7942,5681,7859,'Клинтон',10000),(7943,5681,7859,'Колони',10000),(7944,5681,7859,'Коммак',10000),(7945,5681,7859,'Коринт',10000),(7946,5681,7859,'Корона',10000),(7947,5681,7859,'Кохоэс',10000),(7948,5681,7859,'Лакаванна',10000),(7949,5681,7859,'Ланкастер',10000),(7950,5681,7859,'Латам',10000),(7951,5681,7859,'Лауренс',10000),(7952,5681,7859,'Левиттаун',10000),(7953,5681,7859,'Лейк-Плэсид',10000),(7954,5681,7859,'Лейк-Ронконкома',10000),(7955,5681,7859,'Лейк-Саксесс',10000),(7956,5681,7859,'Либерти',10000),(7957,5681,7859,'Ливерпуль',10000),(7958,5681,7859,'Линденхарст',10000),(7959,5681,7859,'Линелл-Мидаус',10000),(7960,5681,7859,'Линкурт',10000),(7961,5681,7859,'Локпорт',10000),(7962,5681,7859,'Лонг-Айленд-Сити',10000),(7963,5681,7859,'Лонг-Бич',10000),(7964,5681,7859,'Лоудонвилл',10000),(7965,5681,7859,'Майерс-Корнер',10000),(7966,5681,7859,'Манхассет',10000),(7967,5681,7859,'Манхаттан',10000),(7968,5681,7859,'Маркеллус',10000),(7969,5681,7859,'Марлборо',10000),(7970,5681,7859,'Массапеква',10000),(7971,5681,7859,'Маттидейл',10000),(7972,5681,7859,'Маунт-Вернон',10000),(7973,5681,7859,'Маунт-Моррис',10000),(7974,5681,7859,'Менандс',10000),(7975,5681,7859,'Меррик',10000),(7976,5681,7859,'Миддл-Айденд',10000),(7977,5681,7859,'Миддл-Хоуп',10000),(7978,5681,7859,'Миноа',10000),(7979,5681,7859,'Монси',10000),(7980,5681,7859,'Моррис',10000),(7981,5681,7859,'Нануэт',10000),(7982,5681,7859,'Несконсет',10000),(7983,5681,7859,'Ниагара-Фоллс',10000),(7984,5681,7859,'Нискаюна',10000),(7985,5681,7859,'Норт-Бэбилон',10000),(7986,5681,7859,'Норт-Вэлли-Стрим',10000),(7987,5681,7859,'Норт-Гейтс',10000),(7988,5681,7859,'Норт-Коллинс',10000),(7989,5681,7859,'Норт-Сиракус',10000),(7990,5681,7859,'Норт-Тонаванда',10000),(7991,5681,7859,'Нью-Виндсор',10000),(7992,5681,7859,'Нью-Йорк',10000),(7993,5681,7859,'Нью-Йорк-Миллс',10000),(7994,5681,7859,'Нью-Рочелл',10000),(7995,5681,7859,'Нью-Сити',10000),(7996,5681,7859,'Нью-Хакенсак',10000),(7997,5681,7859,'Нью-Хартфорд',10000),(7998,5681,7859,'Ньюбург',10000),(7999,5681,7859,'Оберн',10000),(8000,5681,7859,'Огденсбург',10000),(8001,5681,7859,'Олбани',10000),(8002,5681,7859,'Олин',10000),(8003,5681,7859,'Онеонта',10000),(8004,5681,7859,'Орискани',10000),(8005,5681,7859,'Орчард-Парк',10000),(8006,5681,7859,'Отего',10000),(8007,5681,7859,'Оушннсайд',10000),(8008,5681,7859,'Перрисбург',10000),(8009,5681,7859,'Питчер-Хилл',10000),(8010,5681,7859,'Плайнвью',10000),(8011,5681,7859,'Помона',10000),(8012,5681,7859,'Порт-Джервис',10000),(8013,5681,7859,'Порт-Джефферсон',10000),(8014,5681,7859,'Порт-Честер',10000),(8015,5681,7859,'Пугкипси',10000),(8016,5681,7859,'Расселл-Гарденс',10000),(8017,5681,7859,'Ред-Оакс-Милл',10000),(8018,5681,7859,'Ренсселер',10000),(8019,5681,7859,'Риверхед',10000),(8020,5681,7859,'Ром',10000),(8021,5681,7859,'Рослин-Хейгтс',10000),(8022,5681,7859,'Росслевилл',10000),(8023,5681,7859,'Роттердам',10000),(8024,5681,7859,'Рочестер',10000),(8025,5681,7859,'Рошдейл',10000),(8026,5681,7859,'Саддл-Рок',10000),(8027,5681,7859,'Сант-Джордж',10000),(8028,5681,7859,'Саранак-Лейк',10000),(8029,5681,7859,'Саратога-Спрингс',10000),(8030,5681,7859,'Саут-Бич',10000),(8031,5681,7859,'Саут-Дэйтон',10000),(8032,5681,7859,'Саут-Флорал-Парк',10000),(8033,5681,7859,'Сент-Джеймс',10000),(8034,5681,7859,'Сентерич',10000),(8035,5681,7859,'Сентрал-Айслип',10000),(8036,5681,7859,'Сильвер-Крик',10000),(8037,5681,7859,'Сиракус',10000),(8038,5681,7859,'Скарсдейл',10000),(8039,5681,7859,'Слоан',10000),(8040,5681,7859,'Смиттаун',10000),(8041,5681,7859,'Солвэй',10000),(8042,5681,7859,'Спринг-Вэлли',10000),(8043,5681,7859,'Стейтен-Айленд',10000),(8044,5681,7859,'Стони-Пойнт',10000),(8045,5681,7859,'Стоттвилл',10000),(8046,5681,7859,'Стьюарт-Манор',10000),(8047,5681,7859,'Тонаванда',10000),(8048,5681,7859,'Трой',10000),(8049,5681,7859,'Уайт-Плайнс',10000),(8050,5681,7859,'Уайтсборо',10000),(8051,5681,7859,'Уотервлит',10000),(8052,5681,7859,'Фейрмаунт',10000),(8053,5681,7859,'Филмонт',10000),(8054,5681,7859,'Фишкилл',10000),(8055,5681,7859,'Флашинг',10000),(8056,5681,7859,'Флорал-Парк',10000),(8057,5681,7859,'Форест-Хиллс',10000),(8058,5681,7859,'Форествилл',10000),(8059,5681,7859,'Форт-Эдвард',10000),(8060,5681,7859,'Франклин',10000),(8061,5681,7859,'Франклин-Сквер',10000),(8062,5681,7859,'Франкфорт',10000),(8063,5681,7859,'Фрипорт',10000),(8064,5681,7859,'Фэйеттевилл',10000),(8065,5681,7859,'Хавторн',10000),(8066,5681,7859,'Хадсон',10000),(8067,5681,7859,'Хадсон-Фоллс',10000),(8068,5681,7859,'Хантингтон-Стэйшн',10000),(8069,5681,7859,'Харрис-Хилл',10000),(8070,5681,7859,'Хартсдал',10000),(8071,5681,7859,'Хауппауг',10000),(8072,5681,7859,'Хемпстид',10000),(8073,5681,7859,'Хид-оф-ти-Харбор',10000),(8074,5681,7859,'Хиксвилл',10000),(8075,5681,7859,'Хиллкрест',10000),(8076,5681,7859,'Холланд-Патент',10000),(8077,5681,7859,'Черри-Крик',10000),(8078,5681,7859,'Чиктовага',10000),(8079,5681,7859,'Шайлервилл',10000),(8080,5681,7859,'Шенектади',10000),(8081,5681,7859,'Элма-Сентер',10000),(8082,5681,7859,'Элмира',10000),(8083,5681,7859,'Элмонт',10000),(8084,5681,7859,'Элмхарст',10000),(8085,5681,7859,'Эльмсфорд',10000),(8086,5681,7859,'Эндвелл',10000),(8087,5681,7859,'Эндикотт',10000),(8088,5681,7859,'Ютика',10000),(8090,5681,8089,'Аламогордо',10000),(8091,5681,8089,'Альбукерк',10000),(8092,5681,8089,'Антони',10000),(8093,5681,8089,'Байярд',10000),(8094,5681,8089,'Берналилло',10000),(8095,5681,8089,'Вагон-Маунд',10000),(8096,5681,8089,'Гэллап',10000),(8097,5681,8089,'Декстер',10000),(8098,5681,8089,'Деминг',10000),(8099,5681,8089,'Ислета-Пуэбло',10000),(8100,5681,8089,'Карлсбад',10000),(8101,5681,8089,'Карризозо',10000),(8102,5681,8089,'Киртленд',10000),(8103,5681,8089,'Клейтон',10000),(8104,5681,8089,'Кловис',10000),(8105,5681,8089,'Корралес',10000),(8106,5681,8089,'Куба',10000),(8107,5681,8089,'Лас-Вегас',10000),(8108,5681,8089,'Лас-Крукес',10000),(8109,5681,8089,'Лос-Аламос',10000),(8110,5681,8089,'Лос-Лунас',10000),(8111,5681,8089,'Лос-Ранчос-де-Альбукерк',10000),(8112,5681,8089,'Месилла',10000),(8113,5681,8089,'Норт-Валли',10000),(8114,5681,8089,'Парадайс-Хиллс',10000),(8115,5681,8089,'Пекос',10000),(8116,5681,8089,'Ранчес-оф-Таос',10000),(8117,5681,8089,'Ранчос-Де-Таос',10000),(8118,5681,8089,'Рейтон',10000),(8119,5681,8089,'Рио-Ранчо-Эстатес',10000),(8120,5681,8089,'Рой',10000),(8121,5681,8089,'Росвелл',10000),(8122,5681,8089,'Сан-Фелипе-Пуэбло',10000),(8123,5681,8089,'Сандиа',10000),(8124,5681,8089,'Санта-Роза',10000),(8125,5681,8089,'Санта-Фе',10000),(8126,5681,8089,'Саут-Вэлли',10000),(8127,5681,8089,'Сентрал',10000),(8128,5681,8089,'Силвер-Сити',10000),(8129,5681,8089,'Сокорро',10000),(8130,5681,8089,'Таос',10000),(8131,5681,8089,'Татум',10000),(8132,5681,8089,'Тесукуэ',10000),(8133,5681,8089,'Тийерас',10000),(8134,5681,8089,'Трас-Ор-Консекуэнсес',10000),(8135,5681,8089,'Тукумкари',10000),(8136,5681,8089,'Тьерра-Амарилла',10000),(8137,5681,8089,'Уайт-Рок',10000),(8138,5681,8089,'Фармингтон',10000),(8139,5681,8089,'Форт-Самнер',10000),(8140,5681,8089,'Харли',10000),(8141,5681,8089,'Хоббс',10000),(8142,5681,8089,'Чама',10000),(8143,5681,8089,'Чимэйо',10000),(8144,5681,8089,'Эспанола',10000),(8146,5681,8145,'Авон',10000),(8147,5681,8145,'Айронтон',10000),(8148,5681,8145,'Акрон',10000),(8149,5681,8145,'Алжер',10000),(8150,5681,8145,'Амберли',10000),(8151,5681,8145,'Амесвилл',10000),(8152,5681,8145,'Амхерст',10000),(8153,5681,8145,'Аппер-Арлингтон',10000),(8154,5681,8145,'Аппер-Сандуски',10000),(8155,5681,8145,'Арлингтон-Хейгтс',10000),(8156,5681,8145,'Аталия',10000),(8157,5681,8145,'Атенс',10000),(8158,5681,8145,'Ашланд',10000),(8159,5681,8145,'Аштабула',10000),(8160,5681,8145,'Баллвилл',10000),(8161,5681,8145,'Барбертон',10000),(8162,5681,8145,'Барнесвилл',10000),(8163,5681,8145,'Бачтел',10000),(8164,5681,8145,'Бедфорд',10000),(8165,5681,8145,'Бедфорд-Хейгтс',10000),(8166,5681,8145,'Бексли',10000),(8167,5681,8145,'Беллвилл',10000),(8168,5681,8145,'Беллив',10000),(8169,5681,8145,'Белпр',10000),(8170,5681,8145,'Бери',10000),(8171,5681,8145,'Берки',10000),(8172,5681,8145,'Беттсвилл',10000),(8173,5681,8145,'Бичвуд',10000),(8174,5681,8145,'Блеклик-Эстатс',10000),(8175,5681,8145,'Блу-Эш',10000),(8176,5681,8145,'Боардман',10000),(8177,5681,8145,'Браднер',10000),(8178,5681,8145,'Братеналь',10000),(8179,5681,8145,'Бревстер',10000),(8180,5681,8145,'Брентвуд',10000),(8181,5681,8145,'Брик',10000),(8182,5681,8145,'Брук-Парк',10000),(8183,5681,8145,'Бруклин',10000),(8184,5681,8145,'Бруклин-Хейтс',10000),(8185,5681,8145,'Брукфилд',10000),(8186,5681,8145,'Букланд',10000),(8187,5681,8145,'Бургун',10000),(8188,5681,8145,'Бутлер',10000),(8189,5681,8145,'Валбридж',10000),(8190,5681,8145,'Ван Верт',10000),(8191,5681,8145,'Вандалиа',10000),(8192,5681,8145,'Варрен',10000),(8193,5681,8145,'Варренсвилл-Хейгтс',10000),(8194,5681,8145,'Ватервилл',10000),(8195,5681,8145,'Ваусеон',10000),(8196,5681,8145,'Вест Карроллтон',10000),(8197,5681,8145,'Вест-Портсмут',10000),(8198,5681,8145,'Вестлак',10000),(8199,5681,8145,'Виклифф',10000),(8200,5681,8145,'Виллауик',10000),(8201,5681,8145,'Виллугби-Хиллс',10000),(8202,5681,8145,'Виоминг',10000),(8203,5681,8145,'Вортингтон',10000),(8204,5681,8145,'Вудбоурн',10000),(8205,5681,8145,'Вудлавн',10000),(8206,5681,8145,'Вустер',10000),(8207,5681,8145,'Галион',10000),(8208,5681,8145,'Гарфилд-Хейгтс',10000),(8209,5681,8145,'Гаханна',10000),(8210,5681,8145,'Генева',10000),(8211,5681,8145,'Гирард',10000),(8212,5681,8145,'Голф Манор',10000),(8213,5681,8145,'Грандвив-Хейтс',10000),(8214,5681,8145,'Грин-Спрингс',10000),(8215,5681,8145,'Гринхиллс',10000),(8216,5681,8145,'Гров-Сити',10000),(8217,5681,8145,'Гроэсбек',10000),(8218,5681,8145,'Дальтон',10000),(8219,5681,8145,'Девола',10000),(8220,5681,8145,'Дели-Хиллс',10000),(8221,5681,8145,'Дефианк',10000),(8222,5681,8145,'Джефферсон',10000),(8223,5681,8145,'Джорджтаун',10000),(8224,5681,8145,'Дир-Парк',10000),(8225,5681,8145,'Доннелсвилл',10000),(8226,5681,8145,'Дэйтон',10000),(8227,5681,8145,'Евклид',10000),(8228,5681,8145,'Енон',10000),(8229,5681,8145,'Женева-он-Лейк',10000),(8230,5681,8145,'Залески',10000),(8231,5681,8145,'Занесвилл',10000),(8232,5681,8145,'Индепенденс',10000),(8233,5681,8145,'Индиан Хилл',10000),(8234,5681,8145,'Ист-Кливленд',10000),(8235,5681,8145,'Истлак',10000),(8236,5681,8145,'Йеллоу-Спрингс',10000),(8237,5681,8145,'Канал-Фултон',10000),(8238,5681,8145,'Кантон',10000),(8239,5681,8145,'Касстаун',10000),(8240,5681,8145,'Касталиа',10000),(8241,5681,8145,'Катавба',10000),(8242,5681,8145,'Кембридж',10000),(8243,5681,8145,'Кенвуд',10000),(8244,5681,8145,'Кент',10000),(8245,5681,8145,'Кеттеринг',10000),(8246,5681,8145,'Кингсвилл',10000),(8247,5681,8145,'Кливленд',10000),(8248,5681,8145,'Кливленд-Хейгтс',10000),(8249,5681,8145,'Клид',10000),(8250,5681,8145,'Клэй-Сентер',10000),(8251,5681,8145,'Коал-Гров',10000),(8252,5681,8145,'Коведал',10000),(8253,5681,8145,'Ковингтон',10000),(8254,5681,8145,'Колумбус',10000),(8255,5681,8145,'Кридерсвилл',10000),(8256,5681,8145,'Ксениа',10000),(8257,5681,8145,'Кулвилл',10000),(8258,5681,8145,'Лакевуд',10000),(8259,5681,8145,'Лакелин',10000),(8260,5681,8145,'Ланкастер',10000),(8261,5681,8145,'Лауелл',10000),(8262,5681,8145,'Лаура',10000),(8263,5681,8145,'Лейкмор',10000),(8264,5681,8145,'Лима',10000),(8265,5681,8145,'Линдхарст',10000),(8266,5681,8145,'Линколн-Хейгтс',10000),(8267,5681,8145,'Линкольн-Виллидж',10000),(8268,5681,8145,'Линндейл',10000),(8269,5681,8145,'Лисбург',10000),(8270,5681,8145,'Логан',10000),(8271,5681,8145,'Локингтон',10000),(8272,5681,8145,'Лорейн',10000),(8273,5681,8145,'Лоудонвилл',10000),(8274,5681,8145,'Лоуренсвилл',10000),(8275,5681,8145,'Луки',10000),(8276,5681,8145,'Мадейра',10000),(8277,5681,8145,'Майерс-Лейк',10000),(8278,5681,8145,'Мансфилд',10000),(8279,5681,8145,'Мапл-Хейгтс',10000),(8280,5681,8145,'Марбл-Клифф',10000),(8281,5681,8145,'Маримонт',10000),(8282,5681,8145,'Марион',10000),(8283,5681,8145,'Маритта',10000),(8284,5681,8145,'Массиллон',10000),(8285,5681,8145,'Масури',10000),(8286,5681,8145,'Маунт-Вернон',10000),(8287,5681,8145,'Маунт-Гилид',10000),(8288,5681,8145,'Маунт-Хелси',10000),(8289,5681,8145,'Медина',10000),(8290,5681,8145,'Ментор',10000),(8291,5681,8145,'Ментор-он-те-Лейк',10000),(8292,5681,8145,'Миддлбург-Хейтс',10000),(8293,5681,8145,'Миддлтаун',10000),(8294,5681,8145,'Милан',10000),(8295,5681,8145,'Миллбури',10000),(8296,5681,8145,'Милфорд',10000),(8297,5681,8145,'Минерва-Парк',10000),(8298,5681,8145,'Минстер',10000),(8299,5681,8145,'Миффлин',10000),(8300,5681,8145,'Могадор',10000),(8301,5681,8145,'Монтгомери',10000),(8302,5681,8145,'Монфорт-Хейгтс',10000),(8303,5681,8145,'Мораин',10000),(8304,5681,8145,'Муррэй-Сити',10000),(8305,5681,8145,'Мутуал',10000),(8306,5681,8145,'Мэдисон',10000),(8307,5681,8145,'Мэйфилд-Хейгтс',10000),(8308,5681,8145,'Найлс',10000),(8309,5681,8145,'Нелсонвилл',10000),(8310,5681,8145,'Норвич',10000),(8311,5681,8145,'Норвуд',10000),(8312,5681,8145,'Норт-Кантон',10000),(8313,5681,8145,'Норт-Кингсвилл',10000),(8314,5681,8145,'Норт-Колледж-Хилл',10000),(8315,5681,8145,'Норт-Мэдисон',10000),(8316,5681,8145,'Норт-Олмстед',10000),(8317,5681,8145,'Норт-Рендалл',10000),(8318,5681,8145,'Норт-Риджевилл',10000),(8319,5681,8145,'Нортбрук',10000),(8320,5681,8145,'Нортвуд',10000),(8321,5681,8145,'Нортридж',10000),(8322,5681,8145,'Нью-Бостон',10000),(8323,5681,8145,'Нью-Бремен',10000),(8324,5681,8145,'Нью-Винна',10000),(8325,5681,8145,'Нью-Конкорд',10000),(8326,5681,8145,'Нью-Ригель',10000),(8327,5681,8145,'Нью-Ром',10000),(8328,5681,8145,'Нью-Филадельфия',10000),(8329,5681,8145,'Ньюарк',10000),(8330,5681,8145,'Ньюбург-Хейгтс',10000),(8331,5681,8145,'Ньюкомерстаун',10000),(8332,5681,8145,'Ньютаун',10000),(8333,5681,8145,'Оберлин',10000),(8334,5681,8145,'Обетс',10000),(8335,5681,8145,'Оверлук',10000),(8336,5681,8145,'Олбани',10000),(8337,5681,8145,'Олмстед-Фоллс',10000),(8338,5681,8145,'Онтарио',10000),(8339,5681,8145,'Орегон',10000),(8340,5681,8145,'Оррвилл',10000),(8341,5681,8145,'Остинтаун',10000),(8342,5681,8145,'Отвэй',10000),(8343,5681,8145,'Оттава-Хиллс',10000),(8344,5681,8145,'Парма',10000),(8345,5681,8145,'Парма-Хейтс',10000),(8346,5681,8145,'Пейдж-Манор',10000),(8347,5681,8145,'Пенинсула',10000),(8348,5681,8145,'Перри',10000),(8349,5681,8145,'Перрисбург',10000),(8350,5681,8145,'Пикуа',10000),(8351,5681,8145,'Писга',10000),(8352,5681,8145,'Плайнс',10000),(8353,5681,8145,'Полк',10000),(8354,5681,8145,'Померой',10000),(8355,5681,8145,'Порт-Клинтон',10000),(8356,5681,8145,'Портадж-Лейкс',10000),(8357,5681,8145,'Портсмоут',10000),(8358,5681,8145,'Прокторвилл',10000),(8359,5681,8145,'Рарден',10000),(8360,5681,8145,'Ратланд',10000),(8361,5681,8145,'Репаблик',10000),(8362,5681,8145,'Риверли',10000),(8363,5681,8145,'Ридинг',10000),(8364,5681,8145,'Ринолдсбург',10000),(8365,5681,8145,'Ричмонд-Хейгтс',10000),(8366,5681,8145,'Розмаунт',10000),(8367,5681,8145,'Роки-Ривер',10000),(8368,5681,8145,'Россфорд',10000),(8369,5681,8145,'Сабина',10000),(8370,5681,8145,'Саванна',10000),(8371,5681,8145,'Сандуски',10000),(8372,5681,8145,'Сант-Бернард',10000),(8373,5681,8145,'Саут-Амхерст',10000),(8374,5681,8145,'Саут-Винна',10000),(8375,5681,8145,'Саут-Евклид',10000),(8376,5681,8145,'Саут-Маунт-Вернон',10000),(8377,5681,8145,'Саут-Пойнт',10000),(8378,5681,8145,'Саут-Салем',10000),(8379,5681,8145,'Севен-Хиллс',10000),(8380,5681,8145,'Силваниа',10000),(8381,5681,8145,'Силвертон',10000),(8382,5681,8145,'Сиухога-Фоллс',10000),(8383,5681,8145,'Сиухога-Хейгтс',10000),(8384,5681,8145,'Спенкервилл',10000),(8385,5681,8145,'Спрингдал',10000),(8386,5681,8145,'Спрингфилд',10000),(8387,5681,8145,'Стубенвилл',10000),(8388,5681,8145,'Таллмадж',10000),(8389,5681,8145,'Террак Парк',10000),(8390,5681,8145,'Тимберлак',10000),(8391,5681,8145,'Тиффин',10000),(8392,5681,8145,'Толидо',10000),(8393,5681,8145,'Тремонт-Сити',10000),(8394,5681,8145,'Трои',10000),(8395,5681,8145,'Тротвуд',10000),(8396,5681,8145,'Уайт-Оак',10000),(8397,5681,8145,'Уайтехолл',10000),(8398,5681,8145,'Урбана',10000),(8399,5681,8145,'Урбанкрест',10000),(8400,5681,8145,'Фаирборн',10000),(8401,5681,8145,'Файрвью-Парк',10000),(8402,5681,8145,'Финдлэй',10000),(8403,5681,8145,'Флетчер',10000),(8404,5681,8145,'Форест-Парк',10000),(8405,5681,8145,'Форт МкКинли',10000),(8406,5681,8145,'Форт-Лорами',10000),(8407,5681,8145,'Форт-Шавни',10000),(8408,5681,8145,'Фремонт',10000),(8409,5681,8145,'Хаббард',10000),(8410,5681,8145,'Хайленд-Хейгтс',10000),(8411,5681,8145,'Хамилтон',10000),(8412,5681,8145,'Харбор-Вью',10000),(8413,5681,8145,'Харрод',10000),(8414,5681,8145,'Хауленд',10000),(8415,5681,8145,'Хигланд',10000),(8416,5681,8145,'Хид-Парк',10000),(8417,5681,8145,'Хиллиард',10000),(8418,5681,8145,'Холланд',10000),(8419,5681,8145,'Христиансбург',10000),(8420,5681,8145,'Хубер-Ридж',10000),(8421,5681,8145,'Хубер-Хейгтс',10000),(8422,5681,8145,'Цинциннати',10000),(8423,5681,8145,'Цирклвилл',10000),(8424,5681,8145,'Чаунки',10000),(8425,5681,8145,'Чевиот',10000),(8426,5681,8145,'Чесапик',10000),(8427,5681,8145,'Честервилл',10000),(8428,5681,8145,'Честерхилл',10000),(8429,5681,8145,'Шакер-Хейгтс',10000),(8430,5681,8145,'Шелби',10000),(8431,5681,8145,'Эвендейл',10000),(8432,5681,8145,'Эдисон',10000),(8433,5681,8145,'Элирия',10000),(8434,5681,8145,'Эллианс',10000),(8435,5681,8145,'Элмвуд-Плейс',10000),(8436,5681,8145,'Эппл-Крик',10000),(8437,5681,8145,'Юнгстаун',10000),(8438,5681,8145,'Юниверсити-Хейгтс',10000),(8440,5681,8439,'Аркома',10000),(8441,5681,8439,'Атока',10000),(8442,5681,8439,'Бартлесвилл',10000),(8443,5681,8439,'Бетани',10000),(8444,5681,8439,'Варр-Акрес',10000),(8445,5681,8439,'Винита',10000),(8446,5681,8439,'Вудлавн-Парк',10000),(8447,5681,8439,'Вэлли-Брук',10000),(8448,5681,8439,'Гленпул',10000),(8449,5681,8439,'Дель-Сити',10000),(8450,5681,8439,'Дженкс',10000),(8451,5681,8439,'Жеронимо',10000),(8452,5681,8439,'Колгейт',10000),(8453,5681,8439,'Лаутон',10000),(8454,5681,8439,'Маскоги',10000),(8455,5681,8439,'Медсайн-Парк',10000),(8456,5681,8439,'Мидвест-Сити',10000),(8457,5681,8439,'Моффетт',10000),(8458,5681,8439,'Николс-Хиллс',10000),(8459,5681,8439,'Норман',10000),(8460,5681,8439,'Оклахома',10000),(8461,5681,8439,'Олбани',10000),(8462,5681,8439,'Покола',10000),(8463,5681,8439,'Понка-Сити',10000),(8464,5681,8439,'Роланд',10000),(8465,5681,8439,'Росдейл',10000),(8466,5681,8439,'Салфур',10000),(8467,5681,8439,'Санд-Спрингс',10000),(8468,5681,8439,'Сапалпа',10000),(8469,5681,8439,'Стиллуотер',10000),(8470,5681,8439,'Талса',10000),(8471,5681,8439,'Тарли',10000),(8472,5681,8439,'Ти-Виллидж',10000),(8473,5681,8439,'Тулса',10000),(8474,5681,8439,'Форт-Сапплай',10000),(8475,5681,8439,'Форт-Силл',10000),(8476,5681,8439,'Чикаша',10000),(8477,5681,8439,'Шавни',10000),(8478,5681,8439,'Энид',10000),(8480,5681,8479,'Белый Дом',10000),(8481,5681,8479,'Вашингтон',10000),(8482,5681,8479,'Штаб Главного Командования',10000),(8484,5681,8483,'Бивертон',10000),(8485,5681,8483,'Вест-Слоп',10000),(8486,5681,8483,'Вильсонвилл',10000),(8487,5681,8483,'Гарден-Хоум',10000),(8488,5681,8483,'Даллес',10000),(8489,5681,8483,'Калли',10000),(8490,5681,8483,'Коквиль',10000),(8491,5681,8483,'Корваллис',10000),(8492,5681,8483,'Ла-Гранд',10000),(8493,5681,8483,'Лейк-Освего',10000),(8494,5681,8483,'Мак-Миннвилл',10000),(8495,5681,8483,'Медфорд',10000),(8496,5681,8483,'Милуоки',10000),(8497,5681,8483,'Оак-Гров',10000),(8498,5681,8483,'Олбани',10000),(8499,5681,8483,'Освего',10000),(8500,5681,8483,'Паркрос',10000),(8501,5681,8483,'Пауэллхарст',10000),(8502,5681,8483,'Пендлетон',10000),(8503,5681,8483,'Портланд',10000),(8504,5681,8483,'Ралей-Хиллс',10000),(8505,5681,8483,'Редмонд',10000),(8506,5681,8483,'Салем',10000),(8507,5681,8483,'Сант-Хеленс',10000),(8508,5681,8483,'Седар-Хиллс',10000),(8509,5681,8483,'Спрингфилд',10000),(8510,5681,8483,'Уайтфорд',10000),(8511,5681,8483,'Хазелвуд',10000),(8512,5681,8483,'Хеликс',10000),(8513,5681,8483,'Хеппнер',10000),(8514,5681,8483,'Эррол-Хейгтс',10000),(8515,5681,8483,'Эуген',10000),(8517,5681,8516,'Абингтон',10000),(8518,5681,8516,'Авока',10000),(8519,5681,8516,'Авониа',10000),(8520,5681,8516,'Алдан',10000),(8521,5681,8516,'Аликвиппа',10000),(8522,5681,8516,'Аллентаун',10000),(8523,5681,8516,'Алтуна',10000),(8524,5681,8516,'Амблер',10000),(8525,5681,8516,'Амбридж',10000),(8526,5681,8516,'Аппер-Даблин',10000),(8527,5681,8516,'Аппер-Дарби',10000),(8528,5681,8516,'Аппер-Мерион',10000),(8529,5681,8516,'Аппер-Сант-Клер',10000),(8530,5681,8516,'Ардмор',10000),(8531,5681,8516,'Аспинвалл',10000),(8532,5681,8516,'Атглен',10000),(8533,5681,8516,'Баден',10000),(8534,5681,8516,'Бала-Кинвид',10000),(8535,5681,8516,'Балдвин',10000),(8536,5681,8516,'Батлер',10000),(8537,5681,8516,'Белльвью',10000),(8538,5681,8516,'Белмонт',10000),(8539,5681,8516,'Бенсалем',10000),(8540,5681,8516,'Бенсон',10000),(8541,5681,8516,'Бентливилл',10000),(8542,5681,8516,'Бервин',10000),(8543,5681,8516,'Бетел-Парк',10000),(8544,5681,8516,'Бетлехем',10000),(8545,5681,8516,'Бивер',10000),(8546,5681,8516,'Биллсвилл',10000),(8547,5681,8516,'Блумфилд',10000),(8548,5681,8516,'Браддок',10000),(8549,5681,8516,'Брентвуд',10000),(8550,5681,8516,'Бриджвилл',10000),(8551,5681,8516,'Брин-Атин',10000),(8552,5681,8516,'Брин-Мавр',10000),(8553,5681,8516,'Брумалл',10000),(8554,5681,8516,'Бурнхам',10000),(8555,5681,8516,'Вайомиссинг',10000),(8556,5681,8516,'Вайомиссинг-Хиллс',10000),(8557,5681,8516,'Ванпорт',10000),(8558,5681,8516,'Варминстер',10000),(8559,5681,8516,'Ваттсбург',10000),(8560,5681,8516,'Вашингтон',10000),(8561,5681,8516,'Вашингтонвилл',10000),(8562,5681,8516,'Веймарт',10000),(8563,5681,8516,'Вернерсвилл',10000),(8564,5681,8516,'Весливилл',10000),(8565,5681,8516,'Вест-Вью',10000),(8566,5681,8516,'Вест-Коншохокен',10000),(8567,5681,8516,'Вест-Миддлетаун',10000),(8568,5681,8516,'Вест-Миффлин',10000),(8569,5681,8516,'Вест-Норритон',10000),(8570,5681,8516,'Вест-Ридинг',10000),(8571,5681,8516,'Вест-Фейрвью',10000),(8572,5681,8516,'Вестмонт',10000),(8573,5681,8516,'Вилкес-Барр',10000),(8574,5681,8516,'Вилкинсбург',10000),(8575,5681,8516,'Вилльямспорт',10000),(8576,5681,8516,'Вормлисбург',10000),(8577,5681,8516,'Вэйн-Хейгтс',10000),(8578,5681,8516,'Вэйнесборо',10000),(8579,5681,8516,'Галлицин',10000),(8580,5681,8516,'Гаррисберг',10000),(8581,5681,8516,'Гейстаун',10000),(8582,5681,8516,'Гирард',10000),(8583,5681,8516,'Грейт-Бенд',10000),(8584,5681,8516,'Грин-Три',10000),(8585,5681,8516,'Данвилл',10000),(8586,5681,8516,'Данмор',10000),(8587,5681,8516,'Дарби',10000),(8588,5681,8516,'Даунингтаун',10000),(8589,5681,8516,'Дженкинтаун',10000),(8590,5681,8516,'Джонстаун',10000),(8591,5681,8516,'Дормонт',10000),(8592,5681,8516,'Дункансвилл',10000),(8593,5681,8516,'Дэвидсвилл',10000),(8594,5681,8516,'Инграм',10000),(8595,5681,8516,'Индастри',10000),(8596,5681,8516,'Ист Батлер',10000),(8597,5681,8516,'Ист-Бервик',10000),(8598,5681,8516,'Ист-Вашингтон',10000),(8599,5681,8516,'Ист-Конемауг',10000),(8600,5681,8516,'Ист-Лансдаун',10000),(8601,5681,8516,'Ист-Норритон',10000),(8602,5681,8516,'Ист-Проспект',10000),(8603,5681,8516,'Ист-Рочестер',10000),(8604,5681,8516,'Истон',10000),(8605,5681,8516,'Йидон',10000),(8606,5681,8516,'Йорк',10000),(8607,5681,8516,'йоркана',10000),(8608,5681,8516,'Канонсбург',10000),(8609,5681,8516,'Кармичелс',10000),(8610,5681,8516,'Карнеги',10000),(8611,5681,8516,'Катасуква',10000),(8612,5681,8516,'Кембридж-Спрингс',10000),(8613,5681,8516,'Кенхорст',10000),(8614,5681,8516,'Кларкс-Грин',10000),(8615,5681,8516,'Клифтон-Хейгтс',10000),(8616,5681,8516,'Клэйсбург',10000),(8617,5681,8516,'Коатсвилл',10000),(8618,5681,8516,'Кокбург',10000),(8619,5681,8516,'Колвин',10000),(8620,5681,8516,'Колледжвилл',10000),(8621,5681,8516,'Коллингдейл',10000),(8622,5681,8516,'Конвей',10000),(8623,5681,8516,'Коннокуэнессинг',10000),(8624,5681,8516,'Коншохокен',10000),(8625,5681,8516,'Крафтон',10000),(8626,5681,8516,'Крейнсвилл',10000),(8627,5681,8516,'Крессон',10000),(8628,5681,8516,'Кэмп-Хилл',10000),(8629,5681,8516,'Лангелот',10000),(8630,5681,8516,'Ланкастер',10000),(8631,5681,8516,'Лансдаун',10000),(8632,5681,8516,'Латроб',10000),(8633,5681,8516,'Лаурелдейл',10000),(8634,5681,8516,'Лебанон',10000),(8635,5681,8516,'Левисбург',10000),(8636,5681,8516,'Левистаун',10000),(8637,5681,8516,'Левиттаун',10000),(8638,5681,8516,'Лемойн',10000),(8639,5681,8516,'Линдора',10000),(8640,5681,8516,'Линнтаун',10000),(8641,5681,8516,'Лиспорт',10000),(8642,5681,8516,'Литтл Мидаус',10000),(8643,5681,8516,'Ловер-Мерион',10000),(8644,5681,8516,'Ловер-Мореланд',10000),(8645,5681,8516,'Лорейн',10000),(8646,5681,8516,'Лоуренс-Парк',10000),(8647,5681,8516,'Лоусон-Хейгтс',10000),(8648,5681,8516,'Мак-Кис-Рокс',10000),(8649,5681,8516,'Мак-Киспорт',10000),(8650,5681,8516,'Мак-Эвенсвилл',10000),(8651,5681,8516,'Манхалл',10000),(8652,5681,8516,'Марианна',10000),(8653,5681,8516,'Марпл',10000),(8654,5681,8516,'Мартинсбург',10000),(8655,5681,8516,'Маунт-Гретна',10000),(8656,5681,8516,'Маунт-Лебанон',10000),(8657,5681,8516,'Маунт-Оливер',10000),(8658,5681,8516,'Меридиан',10000),(8659,5681,8516,'Миддлтаун',10000),(8660,5681,8516,'Милл-Виллидж',10000),(8661,5681,8516,'Миллбурн',10000),(8662,5681,8516,'Миллвейл',10000),(8663,5681,8516,'Милтон',10000),(8664,5681,8516,'Модена',10000),(8665,5681,8516,'Монака',10000),(8666,5681,8516,'Монровилл',10000),(8667,5681,8516,'Монт-Альто',10000),(8668,5681,8516,'Монтон',10000),(8669,5681,8516,'Мусик',10000),(8670,5681,8516,'Нарберт',10000),(8671,5681,8516,'Немаколин',10000),(8672,5681,8516,'Норристаун',10000),(8673,5681,8516,'Нортумберленд',10000),(8674,5681,8516,'Нью-Камберленд',10000),(8675,5681,8516,'Нью-Кастл',10000),(8676,5681,8516,'Ньюри',10000),(8677,5681,8516,'Олбани (Лехай Кантри)',10000),(8678,5681,8516,'Олбани (Файет Кантри)',10000),(8679,5681,8516,'Олд-Форг',10000),(8680,5681,8516,'Пайнт',10000),(8681,5681,8516,'Пакстанг',10000),(8682,5681,8516,'Парксбург',10000),(8683,5681,8516,'Пенбрук',10000),(8684,5681,8516,'Пенн-Хиллс',10000),(8685,5681,8516,'Питтсбург',10000),(8686,5681,8516,'Плати',10000),(8687,5681,8516,'Полк',10000),(8688,5681,8516,'Раднор',10000),(8689,5681,8516,'Ранкин',10000),(8690,5681,8516,'Ридинг',10000),(8691,5681,8516,'Римс',10000),(8692,5681,8516,'Роаринг-Спринг',10000),(8693,5681,8516,'Ройерсфорд',10000),(8694,5681,8516,'Рокледж',10000),(8695,5681,8516,'Росслин-Фармс',10000),(8696,5681,8516,'Роузервилл',10000),(8697,5681,8516,'Рочестер',10000),(8698,5681,8516,'Саксонбург',10000),(8699,5681,8516,'Санди',10000),(8700,5681,8516,'Сант-Марис',10000),(8701,5681,8516,'Саут-Коатсвилл',10000),(8702,5681,8516,'Саутмонт',10000),(8703,5681,8516,'Сватара',10000),(8704,5681,8516,'Свиссвейл',10000),(8705,5681,8516,'Селлерсвилл',10000),(8706,5681,8516,'Синкинг-Спринг',10000),(8707,5681,8516,'Скалп-Левел',10000),(8708,5681,8516,'Скрантон',10000),(8709,5681,8516,'Спринг-Сити',10000),(8710,5681,8516,'Спрингфилд',10000),(8711,5681,8516,'Стейт-Колледж',10000),(8712,5681,8516,'Стилтон',10000),(8713,5681,8516,'Таннелхилл',10000),(8714,5681,8516,'Темпл',10000),(8715,5681,8516,'Торнбург',10000),(8716,5681,8516,'Трапп',10000),(8717,5681,8516,'Труп',10000),(8718,5681,8516,'Трупер',10000),(8719,5681,8516,'Тэйлор',10000),(8720,5681,8516,'Уайтмарш',10000),(8721,5681,8516,'Филадельфия',10000),(8722,5681,8516,'Финиксвилл',10000),(8723,5681,8516,'Финливилл',10000),(8724,5681,8516,'Флемингтон',10000),(8725,5681,8516,'Фонтайн-Хилл',10000),(8726,5681,8516,'Фридом',10000),(8727,5681,8516,'Хавертаун',10000),(8728,5681,8516,'Хаверфорд',10000),(8729,5681,8516,'Хазлтон',10000),(8730,5681,8516,'Хайспайр',10000),(8731,5681,8516,'Хаммельстаун',10000),(8732,5681,8516,'Хантингдон',10000),(8733,5681,8516,'Хеллертаун',10000),(8734,5681,8516,'Холлидэйсбург',10000),(8735,5681,8516,'Хоумикр',10000),(8736,5681,8516,'Хоумстид',10000),(8737,5681,8516,'Хьюстон',10000),(8738,5681,8516,'Чарлерой',10000),(8739,5681,8516,'Челтенхам',10000),(8740,5681,8516,'Честер',10000),(8741,5681,8516,'Чикора',10000),(8742,5681,8516,'Шайрманстаун',10000),(8743,5681,8516,'Швенксвилл',10000),(8744,5681,8516,'Шиллингтон',10000),(8745,5681,8516,'Шиппингпорт',10000),(8746,5681,8516,'Эвансбург',10000),(8747,5681,8516,'Эдинборо',10000),(8748,5681,8516,'Экономи',10000),(8749,5681,8516,'Эллсворт',10000),(8750,5681,8516,'Эри',10000),(8752,5681,8751,'Варвик',10000),(8753,5681,8751,'Вунсокет',10000),(8754,5681,8751,'Ист-Провиденкс',10000),(8755,5681,8751,'Кранстон',10000),(8756,5681,8751,'Миддлтаун',10000),(8757,5681,8751,'Ньюпорт',10000),(8758,5681,8751,'Паутакет',10000),(8759,5681,8751,'Провиденс',10000),(8761,5681,8760,'Бисмарк',10000),(8762,5681,8760,'Гранд-Форкс',10000),(8763,5681,8760,'Графтон',10000),(8764,5681,8760,'Лер',10000),(8765,5681,8760,'Минот',10000),(8766,5681,8760,'Тиога',10000),(8767,5681,8760,'Фарго',10000),(8769,5681,8768,'Абердин',10000),(8770,5681,8768,'Балфоур',10000),(8771,5681,8768,'Батнер',10000),(8772,5681,8768,'Билтмор-Форест',10000),(8773,5681,8768,'Блак-Маунтайн',10000),(8774,5681,8768,'Бурлингтон',10000),(8775,5681,8768,'Валдес',10000),(8776,5681,8768,'Вест-Конкорд',10000),(8777,5681,8768,'Виллиамстон',10000),(8778,5681,8768,'Вильмингтон',10000),(8779,5681,8768,'Вильсон',10000),(8780,5681,8768,'Винстон-Салем',10000),(8781,5681,8768,'Висперинг-Пайнс',10000),(8782,5681,8768,'Вудфин',10000),(8783,5681,8768,'Гастониа',10000),(8784,5681,8768,'Голдсборо',10000),(8785,5681,8768,'Горман',10000),(8786,5681,8768,'Гранит-Куарри',10000),(8787,5681,8768,'Гранит-Фоллс',10000),(8788,5681,8768,'Гринвилл',10000),(8789,5681,8768,'Гринсборо',10000),(8790,5681,8768,'Давидсон',10000),(8791,5681,8768,'Дархам',10000),(8792,5681,8768,'Джеймстаун',10000),(8793,5681,8768,'Джексонвилл',10000),(8794,5681,8768,'Дрексель',10000),(8795,5681,8768,'Икард',10000),(8796,5681,8768,'Индиан-Трейл',10000),(8797,5681,8768,'Каннаполис',10000),(8798,5681,8768,'Кинстон',10000),(8799,5681,8768,'Кливленд',10000),(8800,5681,8768,'Конкорд',10000),(8801,5681,8768,'Корнелиус',10000),(8802,5681,8768,'Кридмур',10000),(8803,5681,8768,'Кулими',10000),(8804,5681,8768,'Кэмп-Леюн',10000),(8805,5681,8768,'Ландис',10000),(8806,5681,8768,'Ленойр',10000),(8807,5681,8768,'Мак-Линсвилл',10000),(8808,5681,8768,'Маунт-Холли',10000),(8809,5681,8768,'Маунтайн-Хоум',10000),(8810,5681,8768,'Минт-Хилл',10000),(8811,5681,8768,'Моксвилл',10000),(8812,5681,8768,'Моргантон',10000),(8813,5681,8768,'Муресвилл',10000),(8814,5681,8768,'Мэттьюс',10000),(8815,5681,8768,'Норт-Белмонт',10000),(8816,5681,8768,'Норт-Вилкесборо',10000),(8817,5681,8768,'Норт-Конкорд',10000),(8818,5681,8768,'Ньютон',10000),(8819,5681,8768,'Оксфорд',10000),(8820,5681,8768,'Пенелоп',10000),(8821,5681,8768,'Пинеблуфф',10000),(8822,5681,8768,'Ралейг',10000),(8823,5681,8768,'Родхисс',10000),(8824,5681,8768,'Роквелл',10000),(8825,5681,8768,'Роки-Маунт',10000),(8826,5681,8768,'Рутерфордтон',10000),(8827,5681,8768,'Саммерфилд',10000),(8828,5681,8768,'Саутерн-Пайнс',10000),(8829,5681,8768,'Сваннаноа',10000),(8830,5681,8768,'Силва',10000),(8831,5681,8768,'Сильвер-Сити',10000),(8832,5681,8768,'Сталлингс',10000),(8833,5681,8768,'Стем',10000),(8834,5681,8768,'Стенли',10000),(8835,5681,8768,'Уайтвилл',10000),(8836,5681,8768,'Файт',10000),(8837,5681,8768,'Фэйеттвилл',10000),(8838,5681,8768,'Хадсон',10000),(8839,5681,8768,'Хай-Пойнт',10000),(8840,5681,8768,'Хантерсвилл',10000),(8841,5681,8768,'Харкерс-Айленд',10000),(8842,5681,8768,'Харрисбург',10000),(8843,5681,8768,'Хендерсонвилл',10000),(8844,5681,8768,'Хикори',10000),(8845,5681,8768,'Хилдебран',10000),(8846,5681,8768,'Чайна-Гров',10000),(8847,5681,8768,'Чапел-Хилл',10000),(8848,5681,8768,'Шарлотт',10000),(8849,5681,8768,'Шелби',10000),(8850,5681,8768,'Эдентон',10000),(8851,5681,8768,'Элизабет-Сити',10000),(8852,5681,8768,'Эллерб',10000),(8853,5681,8768,'Энка',10000),(8854,5681,8768,'Эночвилл',10000),(8855,5681,8768,'Эшвилль',10000),(8857,5681,8856,'Адамсвиль',10000),(8858,5681,8856,'Айрон-Сити',10000),(8859,5681,8856,'Аламо',10000),(8860,5681,8856,'Алгуд',10000),(8861,5681,8856,'Александрия',10000),(8862,5681,8856,'Алкоа',10000),(8863,5681,8856,'Алтамонт',10000),(8864,5681,8856,'Атенс',10000),(8865,5681,8856,'Аубурнтаун',10000),(8866,5681,8856,'Ашланд-Сити',10000),(8867,5681,8856,'Бакстер',10000),(8868,5681,8856,'Бартлетт',10000),(8869,5681,8856,'Белл Букл',10000),(8870,5681,8856,'Беллс',10000),(8871,5681,8856,'Бентон',10000),(8872,5681,8856,'Берри Хилл',10000),(8873,5681,8856,'Бетел Спрингс',10000),(8874,5681,8856,'Билтмор',10000),(8875,5681,8856,'Блайн',10000),(8876,5681,8856,'Блоунтвилл',10000),(8877,5681,8856,'Блуфф-Сити',10000),(8878,5681,8856,'Брадфорд',10000),(8879,5681,8856,'Браунсвилл',10000),(8880,5681,8856,'Брентвуд',10000),(8881,5681,8856,'Бридвелл-Хейтс',10000),(8882,5681,8856,'Буллс-Гап',10000),(8883,5681,8856,'Бунес-Крик',10000),(8884,5681,8856,'Валден',10000),(8885,5681,8856,'Вартрак',10000),(8886,5681,8856,'Винчестер',10000),(8887,5681,8856,'Виола',10000),(8888,5681,8856,'Вудбури',10000),(8889,5681,8856,'Вэлли-Форж',10000),(8890,5681,8856,'Гадсден',10000),(8891,5681,8856,'Гаинесборо',10000),(8892,5681,8856,'Галлатин',10000),(8893,5681,8856,'Гатес',10000),(8894,5681,8856,'Германтаун',10000),(8895,5681,8856,'Гибсон',10000),(8896,5681,8856,'Глисон',10000),(8897,5681,8856,'Гордонсвилл',10000),(8898,5681,8856,'Гринфилд',10000),(8899,5681,8856,'Грэй',10000),(8900,5681,8856,'Гудлеттсвилл',10000),(8901,5681,8856,'Даиси',10000),(8902,5681,8856,'Декатур',10000),(8903,5681,8856,'Дечерд',10000),(8904,5681,8856,'Джеллико',10000),(8905,5681,8856,'Джефферсон-Сити',10000),(8906,5681,8856,'Джохнсон-Сити',10000),(8907,5681,8856,'Диер',10000),(8908,5681,8856,'Диерсбург',10000),(8909,5681,8856,'Доил',10000),(8910,5681,8856,'Доуэллтаун',10000),(8911,5681,8856,'Дресден',10000),(8912,5681,8856,'Енвилл',10000),(8913,5681,8856,'Естилл Спрингс',10000),(8914,5681,8856,'Етридж',10000),(8915,5681,8856,'Иглетон-Виллидж',10000),(8916,5681,8856,'Иорквилл',10000),(8917,5681,8856,'Ист Ридж',10000),(8918,5681,8856,'Ист-Кливленд',10000),(8919,5681,8856,'Йонесборо',10000),(8920,5681,8856,'Калхоун',10000),(8921,5681,8856,'Карнс',10000),(8922,5681,8856,'Картейж',10000),(8923,5681,8856,'Кауан',10000),(8924,5681,8856,'Кентон',10000),(8925,5681,8856,'Кингстон-Спрингс',10000),(8926,5681,8856,'Кларксвилл',10000),(8927,5681,8856,'Клевеланд',10000),(8928,5681,8856,'Клинтон',10000),(8929,5681,8856,'Коалмонт',10000),(8930,5681,8856,'Ковингтон',10000),(8931,5681,8856,'Коллегедал',10000),(8932,5681,8856,'Коллирвилл',10000),(8933,5681,8856,'Колониал-Хейтс',10000),(8934,5681,8856,'Колумбиа',10000),(8935,5681,8856,'Конкорд',10000),(8936,5681,8856,'Корнерсвилл',10000),(8937,5681,8856,'Кросс Плаинс',10000),(8938,5681,8856,'Кукевилл',10000),(8939,5681,8856,'Кумберленд-Сити',10000),(8940,5681,8856,'Ла Вергн',10000),(8941,5681,8856,'Лавренкебург',10000),(8942,5681,8856,'Лакесит',10000),(8943,5681,8856,'Лебанон',10000),(8944,5681,8856,'Левисбург',10000),(8945,5681,8856,'Лексингтон',10000),(8946,5681,8856,'Леноир-Сити',10000),(8947,5681,8856,'Линнвилл',10000),(8948,5681,8856,'Линчбург',10000),(8949,5681,8856,'Лоретто',10000),(8950,5681,8856,'Лукоут Моунтаин',10000),(8951,5681,8856,'Манчестер',10000),(8952,5681,8856,'Маривилл',10000),(8953,5681,8856,'Мартин',10000),(8954,5681,8856,'Маунтайн-Сити',10000),(8955,5681,8856,'Маури-Сити',10000),(8956,5681,8856,'Медина',10000),(8957,5681,8856,'Медон',10000),(8958,5681,8856,'Мемфис',10000),(8959,5681,8856,'Миддл Валли',10000),(8960,5681,8856,'Милан',10000),(8961,5681,8856,'Милледжевилл',10000),(8962,5681,8856,'Миллингтон',10000),(8963,5681,8856,'Минор Хилл',10000),(8964,5681,8856,'Мичи',10000),(8965,5681,8856,'МкКензи',10000),(8966,5681,8856,'МкЛеморесвилл',10000),(8967,5681,8856,'МкМиннвилл',10000),(8968,5681,8856,'Монтигл',10000),(8969,5681,8856,'Моррисон',10000),(8970,5681,8856,'Морристаун',10000),(8971,5681,8856,'Моунт Юлит',10000),(8972,5681,8856,'Мошейм',10000),(8973,5681,8856,'Мунфорд',10000),(8974,5681,8856,'Мурфрисборо',10000),(8975,5681,8856,'Нашвилл',10000),(8976,5681,8856,'Ниота',10000),(8977,5681,8856,'Ноксвилл',10000),(8978,5681,8856,'Норманди',10000),(8979,5681,8856,'Норрис',10000),(8980,5681,8856,'Нью-Маркет',10000),(8981,5681,8856,'Оак Ридж',10000),(8982,5681,8856,'Обион',10000),(8983,5681,8856,'Олбани',10000),(8984,5681,8856,'Оливер Спрингс',10000),(8985,5681,8856,'Онейда',10000),(8986,5681,8856,'Оребанк',10000),(8987,5681,8856,'Пауелл',10000),(8988,5681,8856,'Пеграм',10000),(8989,5681,8856,'Пипертон',10000),(8990,5681,8856,'Пуласки',10000),(8991,5681,8856,'Ред Банк',10000),(8992,5681,8856,'Риджетоп',10000),(8993,5681,8856,'Рипли',10000),(8994,5681,8856,'Рокфорд',10000),(8995,5681,8856,'Руссельвиль',10000),(8996,5681,8856,'Рутерфорд',10000),(8997,5681,8856,'СалливаноГарденс',10000),(8998,5681,8856,'Саут-Картейж',10000),(8999,5681,8856,'Саут-Кливленд',10000),(9000,5681,8856,'Саут-Клинтон',10000),(9001,5681,8856,'Свитуотер',10000),(9002,5681,8856,'Севани',10000),(9003,5681,8856,'Селмер',10000),(9004,5681,8856,'Сентертаун',10000),(9005,5681,8856,'Сигнал Моунтаин',10000),(9006,5681,8856,'Силертон',10000),(9007,5681,8856,'Слэйден',10000),(9008,5681,8856,'Смирна',10000),(9009,5681,8856,'Смитвилл',10000),(9010,5681,8856,'Содди-Даиси',10000),(9011,5681,8856,'Спарта',10000),(9012,5681,8856,'Спринг-Сити',10000),(9013,5681,8856,'Спургеон',10000),(9014,5681,8856,'Суммит',10000),(9015,5681,8856,'Траки-Сити',10000),(9016,5681,8856,'Трезевант',10000),(9017,5681,8856,'Трентон',10000),(9018,5681,8856,'Тримбл',10000),(9019,5681,8856,'Туллахома',10000),(9020,5681,8856,'Тун',10000),(9021,5681,8856,'Уайт-Оак',10000),(9022,5681,8856,'Уайт-Пин',10000),(9023,5681,8856,'Уайт-Хаус',10000),(9024,5681,8856,'Фингер',10000),(9025,5681,8856,'Фолл-Бранч',10000),(9026,5681,8856,'Франклин',10000),(9027,5681,8856,'Фриндсвилл',10000),(9028,5681,8856,'Халлс',10000),(9029,5681,8856,'Хамптон',10000),(9030,5681,8856,'Харрисон',10000),(9031,5681,8856,'Хартсвилл',10000),(9032,5681,8856,'Хендерсон',10000),(9033,5681,8856,'Хендерсонвилл',10000),(9034,5681,8856,'Хеннинг',10000),(9035,5681,8856,'Хорнсби',10000),(9036,5681,8856,'Хохенвалд',10000),(9037,5681,8856,'Хумболдт',10000),(9038,5681,8856,'Чаттануга',10000),(9039,5681,8856,'Шарон',10000),(9040,5681,8856,'Шелбивилл',10000),(9041,5681,8856,'Элизабеттон',10000),(9042,5681,8856,'Эрвин',10000),(9043,5681,8856,'Этвуд',10000),(9044,5681,8856,'Этова',10000),(9045,5681,8856,'Яксон',10000),(9046,5681,8856,'Яместаун',10000),(9048,5681,9047,'Абилин',10000),(9049,5681,9047,'Аламо-Хейгтс',10000),(9050,5681,9047,'Алдайн',10000),(9051,5681,9047,'Алпин',10000),(9052,5681,9047,'Амарилло',10000),(9053,5681,9047,'Арлингтон',10000),(9054,5681,9047,'Арп',10000),(9055,5681,9047,'Аспермонт',10000),(9056,5681,9047,'Бакхольтс',10000),(9057,5681,9047,'Балконес-Хейгтс',10000),(9058,5681,9047,'Банкер-Хилл-Виллидж',10000),(9059,5681,9047,'Барнет',10000),(9060,5681,9047,'Беверли-Хиллс',10000),(9061,5681,9047,'Беллэйр',10000),(9062,5681,9047,'Биг-Спринг',10000),(9063,5681,9047,'Брайан',10000),(9064,5681,9047,'Браунсвилл',10000),(9065,5681,9047,'Брекенридж',10000),(9066,5681,9047,'Бренхам',10000),(9067,5681,9047,'Бьюмонт',10000),(9068,5681,9047,'Бэйтаун',10000),(9069,5681,9047,'Вако',10000),(9070,5681,9047,'Васком',10000),(9071,5681,9047,'Вернон',10000),(9072,5681,9047,'Вест-Лейк-Хиллс',10000),(9073,5681,9047,'Вест-Юниверсити-Плэйс',10000),(9074,5681,9047,'Вестворт',10000),(9075,5681,9047,'Вестовер-Хиллс',10000),(9076,5681,9047,'Викториа',10000),(9077,5681,9047,'Виндкрест',10000),(9078,5681,9047,'Вичита-Фоллс',10000),(9079,5681,9047,'Вольффорт',10000),(9080,5681,9047,'Галвестон',10000),(9081,5681,9047,'Галена-Парк',10000),(9082,5681,9047,'Гарленд',10000),(9083,5681,9047,'Гранд-Прейри',10000),(9084,5681,9047,'Дайнгерфилд',10000),(9085,5681,9047,'Даллас',10000),(9086,5681,9047,'Далхарт',10000),(9087,5681,9047,'Дель-Рио',10000),(9088,5681,9047,'Дентон',10000),(9089,5681,9047,'Джакинто-Сити',10000),(9090,5681,9047,'Джанкшин',10000),(9091,5681,9047,'Джордантон',10000),(9092,5681,9047,'Дир-Парк',10000),(9093,5681,9047,'Идалоу',10000),(9094,5681,9047,'Ирвинг',10000),(9095,5681,9047,'Камерон',10000),(9096,5681,9047,'Кастл-Хиллс',10000),(9097,5681,9047,'Кермит',10000),(9098,5681,9047,'Киллин',10000),(9099,5681,9047,'Кингсвилл',10000),(9100,5681,9047,'Кирби',10000),(9101,5681,9047,'Кловерлиф',10000),(9102,5681,9047,'Комбес',10000),(9103,5681,9047,'Корпус-Кристи',10000),(9104,5681,9047,'Купер',10000),(9105,5681,9047,'Куэро',10000),(9106,5681,9047,'Лаббок',10000),(9107,5681,9047,'Лайон-Вэлли',10000),(9108,5681,9047,'Лакленд база ВВС',10000),(9109,5681,9047,'Ларедо',10000),(9110,5681,9047,'Лейк-Ворт',10000),(9111,5681,9047,'Либерти',10000),(9112,5681,9047,'Либерти-Сити',10000),(9113,5681,9047,'Лонгвью',10000),(9114,5681,9047,'Лулинг',10000),(9115,5681,9047,'Мак-Аллен',10000),(9116,5681,9047,'Мак-Кинни',10000),(9117,5681,9047,'Малакофф',10000),(9118,5681,9047,'Манор',10000),(9119,5681,9047,'Мескуит',10000),(9120,5681,9047,'Мидленд',10000),(9121,5681,9047,'Миссури-Сити',10000),(9122,5681,9047,'Норт-Ричланд-Хиллс',10000),(9123,5681,9047,'Нью-Дил',10000),(9124,5681,9047,'Нью-Хоум',10000),(9125,5681,9047,'Овертон',10000),(9126,5681,9047,'Одем',10000),(9127,5681,9047,'Одесса',10000),(9128,5681,9047,'Олбани',10000),(9129,5681,9047,'Олмос-Парк',10000),(9130,5681,9047,'Олни',10000),(9131,5681,9047,'Остин',10000),(9132,5681,9047,'Пайни-Пойнт-Виллидж',10000),(9133,5681,9047,'Пампа',10000),(9134,5681,9047,'Пасадена',10000),(9135,5681,9047,'Пирленд',10000),(9136,5681,9047,'Пирсалл',10000),(9137,5681,9047,'Порт-Артур',10000),(9138,5681,9047,'Портланд',10000),(9139,5681,9047,'Праймера',10000),(9140,5681,9047,'Пфлугервилл',10000),(9141,5681,9047,'Ривер-Оакс',10000),(9142,5681,9047,'Ричардсон',10000),(9143,5681,9047,'Ричланд-Хиллс',10000),(9144,5681,9047,'Робстаун',10000),(9145,5681,9047,'Роллингвуд',10000),(9146,5681,9047,'Сагинау',10000),(9147,5681,9047,'Сан-Анжело',10000),(9148,5681,9047,'Сан-Антонио',10000),(9149,5681,9047,'Сан-Бенито',10000),(9150,5681,9047,'Сансет-Вэлли',10000),(9151,5681,9047,'Саут-Хьюстон',10000),(9152,5681,9047,'Саутсайд-Плэйс',10000),(9153,5681,9047,'Сегуин',10000),(9154,5681,9047,'Сенсом-Парк-Виллидж',10000),(9155,5681,9047,'Слатон',10000),(9156,5681,9047,'Сплендора',10000),(9157,5681,9047,'Стаффорд',10000),(9158,5681,9047,'Тафт',10000),(9159,5681,9047,'Тексаркана',10000),(9160,5681,9047,'Тексас-Сити',10000),(9161,5681,9047,'Темпл',10000),(9162,5681,9047,'Террелл',10000),(9163,5681,9047,'Террелл-Хиллс',10000),(9164,5681,9047,'Тилер',10000),(9165,5681,9047,'Торндейл',10000),(9166,5681,9047,'Тралл',10000),(9167,5681,9047,'Уайт-Сеттлмент',10000),(9168,5681,9047,'Фармерс-Бранч',10000),(9169,5681,9047,'Форест-Хилл',10000),(9170,5681,9047,'Форт-Ворт',10000),(9171,5681,9047,'Форт-Уэрт',10000),(9172,5681,9047,'Халтом-Сити',10000),(9173,5681,9047,'Хантерс-Крик-Виллидж',10000),(9174,5681,9047,'Харлинген',10000),(9175,5681,9047,'Харст',10000),(9176,5681,9047,'Хедвиг-Виллидж',10000),(9177,5681,9047,'Хилл-Кантри-Виллидж',10000),(9178,5681,9047,'Худсон',10000),(9179,5681,9047,'Хьюстон',10000),(9180,5681,9047,'Шаллоуотер',10000),(9181,5681,9047,'Шерман',10000),(9182,5681,9047,'Эль-Кампо',10000),(9183,5681,9047,'Эль-Пасо',10000),(9184,5681,9047,'Эндрюс',10000),(9186,5681,9185,'Азали-Парк',10000),(9187,5681,9185,'Айвес-Эстейтс',10000),(9188,5681,9185,'Алачуа',10000),(9189,5681,9185,'Апалачикола',10000),(9190,5681,9185,'Апопка',10000),(9191,5681,9185,'Арчер',10000),(9192,5681,9185,'Атлантик-Бич',10000),(9193,5681,9185,'Багдад',10000),(9194,5681,9185,'Бал-Харбор',10000),(9195,5681,9185,'Балдвин',10000),(9196,5681,9185,'Банч-Парк',10000),(9197,5681,9185,'Бартау',10000),(9198,5681,9185,'Беверли-Хиллс',10000),(9199,5681,9185,'Белл-Глейд',10000),(9200,5681,9185,'Беллайр',10000),(9201,5681,9185,'Беллиир',10000),(9202,5681,9185,'Беллиир-Бич',10000),(9203,5681,9185,'Беллиир-Блуффс',10000),(9204,5681,9185,'Бельвью',10000),(9205,5681,9185,'Би-Ридж',10000),(9206,5681,9185,'Бискейн-Парк',10000),(9207,5681,9185,'Бойнтон-Бич',10000),(9208,5681,9185,'Бока-Рейтон',10000),(9209,5681,9185,'Брадентон',10000),(9210,5681,9185,'Брандон',10000),(9211,5681,9185,'Браунс-Виллидж',10000),(9212,5681,9185,'Браунсвилл',10000),(9213,5681,9185,'Брент',10000),(9214,5681,9185,'Бровардейл',10000),(9215,5681,9185,'Бродвью-Парк',10000),(9216,5681,9185,'Брукер',10000),(9217,5681,9185,'Бэй Пинес',10000),(9218,5681,9185,'Бэй-Харбор-Айлендс',10000),(9219,5681,9185,'Бэйшор-Гарденс',10000),(9220,5681,9185,'Валдо',10000),(9221,5681,9185,'Валпараисо',10000),(9222,5681,9185,'Вамо',10000),(9223,5681,9185,'Вахнета',10000),(9224,5681,9185,'Векива-Спрингс',10000),(9225,5681,9185,'Веро-Бич',10000),(9226,5681,9185,'Вест-Винтер-Хавен',10000),(9227,5681,9185,'Вест-И-Галли',10000),(9228,5681,9185,'Вест-Майами',10000),(9229,5681,9185,'Вест-Палм-Бич',10000),(9230,5681,9185,'Вествуд-Лейкс',10000),(9231,5681,9185,'Вествью',10000),(9232,5681,9185,'Вестчестер',10000),(9233,5681,9185,'Виллистон',10000),(9234,5681,9185,'Вилтон-Манорс',10000),(9235,5681,9185,'Виндермер',10000),(9236,5681,9185,'Винтер-Парк',10000),(9237,5681,9185,'Винтер-Хавен',10000),(9238,5681,9185,'Виргиниа-Гарденс',10000),(9239,5681,9185,'Вортингтон-Спрингс',10000),(9240,5681,9185,'Вригт',10000),(9241,5681,9185,'Гавана',10000),(9242,5681,9185,'Гайнесвилл',10000),(9243,5681,9185,'Галф-Гейт-Эстатс',10000),(9244,5681,9185,'Галф-Стрим',10000),(9245,5681,9185,'Галфпорт',10000),(9246,5681,9185,'Гарлем',10000),(9247,5681,9185,'Гасьенда-Виллидж',10000),(9248,5681,9185,'Гиффорд',10000),(9249,5681,9185,'Глен-Ридж',10000),(9250,5681,9185,'Гленвар-Хейгтс',10000),(9251,5681,9185,'Голден-Бич',10000),(9252,5681,9185,'Голливуд',10000),(9253,5681,9185,'Гордонвилл',10000),(9254,5681,9185,'Гоулдинг',10000),(9255,5681,9185,'Гоулдс',10000),(9256,5681,9185,'Гракевилл',10000),(9257,5681,9185,'Грин-Ков-Спрингс',10000),(9258,5681,9185,'Гринакрес-Сити',10000),(9259,5681,9185,'Дайтона-Бич',10000),(9260,5681,9185,'Даниа',10000),(9261,5681,9185,'Деви',10000),(9262,5681,9185,'Джасмин-Эстатс',10000),(9263,5681,9185,'Джексонвилл',10000),(9264,5681,9185,'Джексонвилл-Бич',10000),(9265,5681,9185,'Довер',10000),(9266,5681,9185,'Дуннеллон',10000),(9267,5681,9185,'Египт-Лейк',10000),(9268,5681,9185,'Еглин Аир Форк Бас',10000),(9269,5681,9185,'Енсли',10000),(9270,5681,9185,'Есто',10000),(9271,5681,9185,'Игл-Лейк',10000),(9272,5681,9185,'Инвуд',10000),(9273,5681,9185,'Индиан-Рокс-Бич',10000),(9274,5681,9185,'Индиан-Харбор-Бич',10000),(9275,5681,9185,'Индиан-Шорес',10000),(9276,5681,9185,'Ист-Лейк-Парк',10000),(9277,5681,9185,'Итон-Парк',10000),(9278,5681,9185,'Итонвилл',10000),(9279,5681,9185,'Каллавэй',10000),(9280,5681,9185,'Каллахан',10000),(9281,5681,9185,'Кампбеллтон',10000),(9282,5681,9185,'Карол-Сити',10000),(9283,5681,9185,'Каррабелл',10000),(9284,5681,9185,'Кейп-Корал',10000),(9285,5681,9185,'Кендалл',10000),(9286,5681,9185,'Ки-Бискейн',10000),(9287,5681,9185,'Ки-Уэст',10000),(9288,5681,9185,'Киллирн Естатес',10000),(9289,5681,9185,'Кипресс-Гарденс',10000),(9290,5681,9185,'Кистон-Хейтс',10000),(9291,5681,9185,'Клауд-Лейк',10000),(9292,5681,9185,'Клевистон',10000),(9293,5681,9185,'Клейр-Мел-Сити',10000),(9294,5681,9185,'Кливленд',10000),(9295,5681,9185,'Клирватер',10000),(9296,5681,9185,'Кокоа-Бич',10000),(9297,5681,9185,'Коконат-Крик',10000),(9298,5681,9185,'Колльер-Сити',10000),(9299,5681,9185,'Комби-Сеттлмент',10000),(9300,5681,9185,'Конвей',10000),(9301,5681,9185,'Корал-Габлс',10000),(9302,5681,9185,'Лак Магдален',10000),(9303,5681,9185,'Лак-Керролл',10000),(9304,5681,9185,'Лакеланд',10000),(9305,5681,9185,'Лантана',10000),(9306,5681,9185,'Ларго',10000),(9307,5681,9185,'Лаудердейл-бай-ти-Си',10000),(9308,5681,9185,'Лаудердейл-Лейкс',10000),(9309,5681,9185,'Лаудерхилл',10000),(9310,5681,9185,'Леди-Лейк',10000),(9311,5681,9185,'Лей-Люцерн',10000),(9312,5681,9185,'Лейзи-Лейк',10000),(9313,5681,9185,'Лейк-Альфред',10000),(9314,5681,9185,'Лейк-Ворт',10000),(9315,5681,9185,'Лейк-Кларк-Шорес',10000),(9316,5681,9185,'Лейквуд-Парк',10000),(9317,5681,9185,'Лейсур-Сити',10000),(9318,5681,9185,'Лето',10000),(9319,5681,9185,'Лив-Оак',10000),(9320,5681,9185,'Лилман',10000),(9321,5681,9185,'Линн-Хавен',10000),(9322,5681,9185,'Лисбург',10000),(9323,5681,9185,'Локхарт',10000),(9324,5681,9185,'Лонгбоат-Ки',10000),(9325,5681,9185,'Лутз',10000),(9326,5681,9185,'Мадейра-Бич',10000),(9327,5681,9185,'Майами',10000),(9328,5681,9185,'Майами-Бич',10000),(9329,5681,9185,'Майами-Спрингс',10000),(9330,5681,9185,'Майами-Шорес',10000),(9331,5681,9185,'Майтленд (Лейк Майтленд)',10000),(9332,5681,9185,'МакИнтош',10000),(9333,5681,9185,'Малабар',10000),(9334,5681,9185,'Маналапан',10000),(9335,5681,9185,'Манго',10000),(9336,5681,9185,'Мангониа-Парк',10000),(9337,5681,9185,'Маратон',10000),(9338,5681,9185,'Маргейт',10000),(9339,5681,9185,'Марианна',10000),(9340,5681,9185,'Медли',10000),(9341,5681,9185,'Мелрос-Парк',10000),(9342,5681,9185,'Мельбурн',10000),(9343,5681,9185,'Мельбурн-Виллидж',10000),(9344,5681,9185,'Мерритт-Айленд',10000),(9345,5681,9185,'Мидоубрук-Террас',10000),(9346,5681,9185,'Миканопи',10000),(9347,5681,9185,'Милтон',10000),(9348,5681,9185,'Мирамар',10000),(9349,5681,9185,'Молино',10000),(9350,5681,9185,'Наплес',10000),(9351,5681,9185,'Нептун-Бич',10000),(9352,5681,9185,'Никевилл',10000),(9353,5681,9185,'Нома',10000),(9354,5681,9185,'Норвуд',10000),(9355,5681,9185,'Норланд',10000),(9356,5681,9185,'Норт-Бэй-Виллидж',10000),(9357,5681,9185,'Норт-Майами',10000),(9358,5681,9185,'Норт-Майами-Бич',10000),(9359,5681,9185,'Норт-Порт',10000),(9360,5681,9185,'Норт-Редингтон-Бич',10000),(9361,5681,9185,'Норт-Форт-Майерс',10000),(9362,5681,9185,'Норт-Эндрюс-Гарденс',10000),(9363,5681,9185,'Ньюберри',10000),(9364,5681,9185,'Оакленд-Парк',10000),(9365,5681,9185,'Обурндейл',10000),(9366,5681,9185,'Окала',10000),(9367,5681,9185,'Окин-Сити',10000),(9368,5681,9185,'Олдсмар',10000),(9369,5681,9185,'Олимпиа-Хейгтс',10000),(9370,5681,9185,'Онеко',10000),(9371,5681,9185,'Опа-Лока',10000),(9372,5681,9185,'Оранж-Парк',10000),(9373,5681,9185,'Оринт-Парк',10000),(9374,5681,9185,'Орландо',10000),(9375,5681,9185,'Орловиста',10000),(9376,5681,9185,'Ормонд-Бич',10000),(9377,5681,9185,'Оспри',10000),(9378,5681,9185,'Оушн-Ридж',10000),(9379,5681,9185,'Оюс',10000),(9380,5681,9185,'Пайн-Хиллс',10000),(9381,5681,9185,'Пайнвуд',10000),(9382,5681,9185,'Пак',10000),(9383,5681,9185,'Пакстон',10000),(9384,5681,9185,'Палм-Бич',10000),(9385,5681,9185,'Палм-Ривер',10000),(9386,5681,9185,'Палм-Шорес',10000),(9387,5681,9185,'Панама-Сити',10000),(9388,5681,9185,'Паркер',10000),(9389,5681,9185,'Пахоки',10000),(9390,5681,9185,'Пемброк-Пайнс',10000),(9391,5681,9185,'Пемброк-Парк',10000),(9392,5681,9185,'Пенни-Фармс',10000),(9393,5681,9185,'Пенсакола',10000),(9394,5681,9185,'Перри',10000),(9395,5681,9185,'Пинеллас-Парк',10000),(9396,5681,9185,'Плантешн',10000),(9397,5681,9185,'Помпано-Бич',10000),(9398,5681,9185,'Помпано-Парк',10000),(9399,5681,9185,'Порт-Санта-Лючия',10000),(9400,5681,9185,'Порт-Шарлотт',10000),(9401,5681,9185,'Принстон',10000),(9402,5681,9185,'Пунта-Горда',10000),(9403,5681,9185,'Реддик',10000),(9404,5681,9185,'Редингтон-Бич',10000),(9405,5681,9185,'Редингтон-Шорес',10000),(9406,5681,9185,'Ричмонд-Хейгтс',10000),(9407,5681,9185,'Рускин',10000),(9408,5681,9185,'Самосет',10000),(9409,5681,9185,'Санни-Айлс',10000),(9410,5681,9185,'Санрайс',10000),(9411,5681,9185,'Сант-Аугустин',10000),(9412,5681,9185,'Сант-Петерсбург',10000),(9413,5681,9185,'Сант-Петерсбург-Бич',10000),(9414,5681,9185,'Сарасота',10000),(9415,5681,9185,'Сарасота-Спрингс',10000),(9416,5681,9185,'Сарфсайд',10000),(9417,5681,9185,'Сателлайт-Бич',10000),(9418,5681,9185,'Саут-Апопка',10000),(9419,5681,9185,'Саут-Бэй',10000),(9420,5681,9185,'Саут-Дайтона',10000),(9421,5681,9185,'Саут-Майами',10000),(9422,5681,9185,'Саут-Майами-Хейгтс',10000),(9423,5681,9185,'Саут-Палм-Бич',10000),(9424,5681,9185,'Саут-Пасадена',10000),(9425,5681,9185,'Саутгейт',10000),(9426,5681,9185,'Сафти-Харбор',10000),(9427,5681,9185,'Свитватер-Крик',10000),(9428,5681,9185,'Свитвотер',10000),(9429,5681,9185,'Седар-Гров',10000),(9430,5681,9185,'Сентури',10000),(9431,5681,9185,'Сеффнер',10000),(9432,5681,9185,'Си-Ранч-Лейкс',10000),(9433,5681,9185,'Сиеста-Ки',10000),(9434,5681,9185,'Солана',10000),(9435,5681,9185,'Спрингфилд',10000),(9436,5681,9185,'Таварес',10000),(9437,5681,9185,'Тавернир',10000),(9438,5681,9185,'Талахасси',10000),(9439,5681,9185,'Тамайами',10000),(9440,5681,9185,'Тамарак',10000),(9441,5681,9185,'Тампа',10000),(9442,5681,9185,'Темпл-Террас',10000),(9443,5681,9185,'Тик',10000),(9444,5681,9185,'Титусвилл',10000),(9445,5681,9185,'Трайлер-Эстатс',10000),(9446,5681,9185,'Трежа-Айленд',10000),(9447,5681,9185,'Уайтфилд-Эстатс',10000),(9448,5681,9185,'Уматилла',10000),(9449,5681,9185,'Файрвью-Шорес',10000),(9450,5681,9185,'Ферн-Парк',10000),(9451,5681,9185,'Ферри Пасс',10000),(9452,5681,9185,'Форест-Сити',10000),(9453,5681,9185,'Форт-Лаудердейл',10000),(9454,5681,9185,'Форт-Майерс',10000),(9455,5681,9185,'Форт-Мид',10000),(9456,5681,9185,'Форт-Пирс',10000),(9457,5681,9185,'Фрутвилл',10000),(9458,5681,9185,'Фрутланд-Парк',10000),(9459,5681,9185,'Хаверхилл',10000),(9460,5681,9185,'Хавторн',10000),(9461,5681,9185,'Хай-Пойнт',10000),(9462,5681,9185,'Хайленд-Парк',10000),(9463,5681,9185,'Хайленд-Сити',10000),(9464,5681,9185,'Хамптон',10000),(9465,5681,9185,'Хиалеа',10000),(9466,5681,9185,'Хиполуксо',10000),(9467,5681,9185,'Холден-Хейгтс',10000),(9468,5681,9185,'Холли-Хилл',10000),(9469,5681,9185,'Хоместид-Айр-Форс-Бэйс',10000),(9470,5681,9185,'Шалимар',10000),(9471,5681,9185,'Шарлотт-Парк',10000),(9472,5681,9185,'Шарлотт-Харбор',10000),(9473,5681,9185,'Эджвуд',10000),(9474,5681,9185,'Элоис',10000),(9475,5681,9185,'Эль-Портал',10000),(9476,5681,9185,'Яи',10000),(9478,5681,9477,'Абердин',10000),(9479,5681,9477,'Ватертаун',10000),(9480,5681,9477,'Гурон',10000),(9481,5681,9477,'Кантон',10000),(9482,5681,9477,'Митчелл',10000),(9483,5681,9477,'Пирр',10000),(9484,5681,9477,'Рапид-Сити',10000),(9485,5681,9477,'Редфилд',10000),(9486,5681,9477,'Сиу-Фоллс',10000),(9487,5681,9477,'Спирфиш',10000),(9488,5681,9477,'Хот-Спрингс',10000),(9490,5681,9489,'Авондейл',10000),(9491,5681,9489,'Андерсон',10000),(9492,5681,9489,'Аркадиа-Лейкс',10000),(9493,5681,9489,'Валенсиа-Хейгтс',10000),(9494,5681,9489,'Вест-Колумбиа',10000),(9495,5681,9489,'Вудфилд',10000),(9496,5681,9489,'Гринвилл',10000),(9497,5681,9489,'Гринвуд',10000),(9498,5681,9489,'Дентсвилл',10000),(9499,5681,9489,'Джеймс-Айленд',10000),(9500,5681,9489,'Диллон',10000),(9501,5681,9489,'Капитол-Вью',10000),(9502,5681,9489,'Кейси',10000),(9503,5681,9489,'Клинтон',10000),(9504,5681,9489,'Колумбиа',10000),(9505,5681,9489,'Пайнридж',10000),(9506,5681,9489,'Рок-Хилл',10000),(9507,5681,9489,'Самтер',10000),(9508,5681,9489,'Сенека',10000),(9509,5681,9489,'Спартанбург',10000),(9510,5681,9489,'Флоренс',10000),(9511,5681,9489,'Форест-Акрес',10000),(9512,5681,9489,'Хемингуэй',10000),(9513,5681,9489,'Чарльстон',10000),(9514,5681,9489,'Чарльстон-Хейгтс',10000),(9516,5681,9515,'Американ-Форк',10000),(9517,5681,9515,'Беннион',10000),(9518,5681,9515,'Бивер',10000),(9519,5681,9515,'Боунтифул',10000),(9520,5681,9515,'Бригам-Сити',10000),(9521,5681,9515,'Вал-Верда',10000),(9522,5681,9515,'Вашингтон-Террас',10000),(9523,5681,9515,'Вернал',10000),(9524,5681,9515,'Вест-Боунтифул',10000),(9525,5681,9515,'Вест-Джордан',10000),(9526,5681,9515,'Вест-Пойнт',10000),(9527,5681,9515,'Вудс-Кросс',10000),(9528,5681,9515,'Ганнисон',10000),(9529,5681,9515,'Гранит-Парк',10000),(9530,5681,9515,'Делта',10000),(9531,5681,9515,'Ист-Лэйтон',10000),(9532,5681,9515,'Ист-Миллкрик',10000),(9533,5681,9515,'Канаб',10000),(9534,5681,9515,'Кирнс',10000),(9535,5681,9515,'Клинтон',10000),(9536,5681,9515,'Клирфилд',10000),(9537,5681,9515,'Коттонвуд-Хейгтс',10000),(9538,5681,9515,'Линдон',10000),(9539,5681,9515,'Логан',10000),(9540,5681,9515,'Маунт-Олимпус',10000),(9541,5681,9515,'Мидвейл',10000),(9542,5681,9515,'Милфорд',10000),(9543,5681,9515,'Моаб',10000),(9544,5681,9515,'Монтичелло',10000),(9545,5681,9515,'Моунт-Плисант',10000),(9546,5681,9515,'Муррей',10000),(9547,5681,9515,'Нефи',10000),(9548,5681,9515,'Норт-Солт-Лейк',10000),(9549,5681,9515,'Огден',10000),(9550,5681,9515,'Орем',10000),(9551,5681,9515,'Пангуитч',10000),(9552,5681,9515,'Плисант-Гров',10000),(9553,5681,9515,'Прик',10000),(9554,5681,9515,'Прово',10000),(9555,5681,9515,'Ривердейл',10000),(9556,5681,9515,'Ричфилд',10000),(9557,5681,9515,'Рой',10000),(9558,5681,9515,'Русвельт',10000),(9559,5681,9515,'Санди',10000),(9560,5681,9515,'Сансет',10000),(9561,5681,9515,'Сант-Джордж',10000),(9562,5681,9515,'Саут-Вебер',10000),(9563,5681,9515,'Саут-Коттонвуд',10000),(9564,5681,9515,'Саут-Огден',10000),(9565,5681,9515,'Саут-Солт-Лейк',10000),(9566,5681,9515,'Седар-Сити',10000),(9567,5681,9515,'Солт-Лейк-Сити',10000),(9568,5681,9515,'Спрингвилл',10000),(9569,5681,9515,'Тэйлорсвилл',10000),(9570,5681,9515,'Уинта',10000),(9571,5681,9515,'Филлмор',10000),(9572,5681,9515,'Харрисвилл',10000),(9573,5681,9515,'Холладей',10000),(9574,5681,9515,'Юнион',10000),(9577,9575,9576,'Ванч',10000),(9578,9575,9576,'Висхарв',10000),(9579,9575,9576,'Вранг',10000),(9580,9575,9576,'Ишкашим',10000),(9581,9575,9576,'Кудара',10000),(9582,9575,9576,'Мургаб',10000),(9583,9575,9576,'Рангкуль',10000),(9584,9575,9576,'Рушан',10000),(9585,9575,9576,'Токтомуш',10000),(9586,9575,9576,'Хорог',10000),(9587,9575,9576,'Шазуд',10000),(9588,9575,9576,'Шаймак',10000),(9590,9575,9589,'Дангара',10000),(9591,9575,9589,'Куляб',10000),(9592,9575,9589,'Лениградский',10000),(9593,9575,9589,'Пархар',10000),(9594,9575,9589,'Советский',10000),(9595,9575,9589,'Ховалинг',10000),(9597,9575,9596,'Калининабад',10000),(9598,9575,9596,'Колхозабад',10000),(9599,9575,9596,'Куйбышевский',10000),(9600,9575,9596,'Курган-Тюбе',10000),(9601,9575,9596,'Нижний Пяндж',10000),(9602,9575,9596,'Пяндж',10000),(9603,9575,9596,'Шаартуз',10000),(9604,9575,9596,'Яван',10000),(9606,9575,9605,'Адрасман',10000),(9607,9575,9605,'Айни',10000),(9608,9575,9605,'Ашт',10000),(9609,9575,9605,'Бустон',10000),(9610,9575,9605,'Ганчи',10000),(9611,9575,9605,'Гафуров',10000),(9612,9575,9605,'Зафарабад',10000),(9613,9575,9605,'Зеравшан',10000),(9614,9575,9605,'Исфара',10000),(9615,9575,9605,'Кайракуум',10000),(9616,9575,9605,'Канибадам',10000),(9617,9575,9605,'Кансай',10000),(9619,9575,9605,'Нау',10000),(9620,9575,9605,'Наугарзан',10000),(9621,9575,9605,'Пенджикент',10000),(9622,9575,9605,'Пролетарск',10000),(9623,9575,9605,'Табошар',10000),(9624,9575,9605,'Ура-Тюбе',10000),(9625,9575,9605,'Чкаловск',10000),(9626,9575,9605,'Шураб',10000),(9628,9575,9627,'Варзоб',10000),(9629,9575,9627,'Гарм',10000),(9630,9575,9627,'Гиссар',10000),(9631,9575,9627,'Джиргатель',10000),(9632,9575,9627,'Душанбе',10000),(9633,9575,9627,'Калаи-Хумб',10000),(9634,9575,9627,'Насруд',10000),(9635,9575,9627,'Нурек',10000),(9636,9575,9627,'Турсунзаде',10000),(9637,9575,9627,'Файзабад',10000),(9640,9638,9639,'Ашхабад',10000),(9641,9638,9639,'Бабадурмаз',10000),(9642,9638,9639,'Бахарден',10000),(9643,9638,9639,'Бахардок',10000),(9644,9638,9639,'Безмеин',10000),(9645,9638,9639,'Геок-Тепе',10000),(9646,9638,9639,'Дарваза',10000),(9647,9638,9639,'Душак',10000),(9648,9638,9639,'Каахка',10000),(9649,9638,9639,'Кировск',10000),(9650,9638,9639,'Полехатум',10000),(9651,9638,9639,'Серахс',10000),(9652,9638,9639,'Теджен',10000),(9654,9638,9653,'Бекдаш',10000),(9655,9638,9653,'Гасан-Кули',10000),(9656,9638,9653,'Джанга',10000),(9657,9638,9653,'Джебел',10000),(9658,9638,9653,'Казанджик',10000),(9659,9638,9653,'Кара-Кала',10000),(9660,9638,9653,'Карагель',10000),(9661,9638,9653,'Кизыл-Арват',10000),(9662,9638,9653,'Кизыл-Атрек',10000),(9663,9638,9653,'Кизыл-Су',10000),(9664,9638,9653,'Красноводск',10000),(9665,9638,9653,'Кум-Даг',10000),(9666,9638,9653,'Небит-Даг',10000),(9667,9638,9653,'Уфра',10000),(9668,9638,9653,'Чагыл',10000),(9669,9638,9653,'Челекен',10000),(9671,9638,9670,'Байрам-Али',10000),(9672,9638,9670,'Захмет',10000),(9673,9638,9670,'Иолотань',10000),(9674,9638,9670,'Кушка',10000),(9675,9638,9670,'Мары',10000),(9676,9638,9670,'Сакар-Чага',10000),(9677,9638,9670,'Сандыкачи',10000),(9678,9638,9670,'Тахта-Базар',10000),(9679,9638,9670,'Ташкепри',10000),(9680,9638,9670,'Туркмен-Кала',10000),(9681,9638,9670,'Уч-Аджи',10000),(9683,9638,9682,'Куня-Ургенч',10000),(9684,9638,9682,'Ташауз',10000),(9686,9638,9685,'Аму-Дарья',10000),(9687,9638,9685,'Газ-Ачак',10000),(9688,9638,9685,'Гаурдак',10000),(9689,9638,9685,'Дарган-Ата',10000),(9690,9638,9685,'Дейнау',10000),(9691,9638,9685,'Карабекаул',10000),(9692,9638,9685,'Керки',10000),(9693,9638,9685,'Мукры',10000),(9694,9638,9685,'Нефтезаводск',10000),(9695,9638,9685,'Сакар',10000),(9696,9638,9685,'Саят',10000),(9697,9638,9685,'Фараб',10000),(9698,9638,9685,'Халач',10000),(9699,9638,9685,'Чарджоу',10000),(9700,9638,9685,'Чаршанга',10000),(9703,9701,9702,'Кев',10000),(9704,9701,9702,'Теркс-Айлендс',10000),(9707,9705,9706,'Бартын',10000),(9709,9705,9708,'Байбурт',10000),(9711,9705,9710,'Карабук',10000),(9713,9705,9712,'Адана',10000),(9715,9705,9714,'Айдын',10000),(9717,9705,9716,'Амасья',10000),(9719,9705,9718,'Анкара',10000),(9721,9705,9720,'Анталия',10000),(9723,9705,9722,'Артвин',10000),(9725,9705,9724,'Афьон',10000),(9727,9705,9726,'Балыкесир',10000),(9729,9705,9728,'Биледжик',10000),(9731,9705,9730,'Бурса',10000),(9733,9705,9732,'Газиантеп',10000),(9735,9705,9734,'Денизли',10000),(9737,9705,9736,'Измир',10000),(9739,9705,9738,'Испарта',10000),(9741,9705,9740,'Мерсин',10000),(9743,9705,9742,'Кэйсери',10000),(9745,9705,9744,'Карс',10000),(9747,9705,9746,'Измит',10000),(9748,9705,9746,'Кокели',10000),(9750,9705,9749,'Кониа',10000),(9752,9705,9751,'Кириккал',10000),(9754,9705,9753,'Кутахиа',10000),(9756,9705,9755,'Малатиа',10000),(9758,9705,9757,'Маниса',10000),(9760,9705,9759,'Адапазари',10000),(9762,9705,9761,'Самсун',10000),(9764,9705,9763,'Сивас',10000),(9766,9705,9765,'Стамбул',10000),(9768,9705,9767,'Трабзон',10000),(9769,9705,9767,'Требизонд',10000),(9771,9705,9770,'Корум',10000),(9773,9705,9772,'Эдирн',10000),(9775,9705,9774,'Элазиг',10000),(9777,9705,9776,'Эрзинкан',10000),(9779,9705,9778,'Эрзурум',10000),(9781,9705,9780,'Ескисехир',10000),(9784,9782,9783,'Йиня',10000),(9786,9782,9785,'Кампала',10000),(9789,9787,9788,'Алтынкуль',10000),(9790,9787,9788,'Андижан',10000),(9791,9787,9788,'Балыкчи',10000),(9792,9787,9788,'Ленинск',10000),(9793,9787,9788,'Мархамат',10000),(9794,9787,9788,'Советабад',10000),(9795,9787,9788,'Шахрихан',10000),(9797,9787,9796,'Алат',10000),(9798,9787,9796,'Бухара',10000),(9799,9787,9796,'Вабкент',10000),(9800,9787,9796,'Газли',10000),(9801,9787,9796,'Галаасия',10000),(9802,9787,9796,'Гиждуван',10000),(9803,9787,9796,'Каган',10000),(9804,9787,9796,'Каракуль',10000),(9805,9787,9796,'Ромитан',10000),(9807,9787,9806,'Галляарал',10000),(9808,9787,9806,'Джизак',10000),(9809,9787,9806,'Заамин',10000),(9810,9787,9806,'Койташ',10000),(9811,9787,9806,'Усмат',10000),(9812,9787,9806,'Янгикишлак',10000),(9814,9787,9813,'Кегейли',10000),(9815,9787,9813,'Кунград',10000),(9816,9787,9813,'Мангит',10000),(9817,9787,9813,'Муйнак',10000),(9818,9787,9813,'Нукус',10000),(9819,9787,9813,'Тахиаташ',10000),(9820,9787,9813,'Тахтакупыр',10000),(9821,9787,9813,'Турткуль',10000),(9822,9787,9813,'Ходжейли',10000),(9823,9787,9813,'Чимбай',10000),(9824,9787,9813,'Шуманай',10000),(9826,9787,9825,'Бешкент',10000),(9827,9787,9825,'Гузар',10000),(9828,9787,9825,'Карши',10000),(9829,9787,9825,'Касан',10000),(9830,9787,9825,'Китаб',10000),(9831,9787,9825,'Шахрисабз',10000),(9833,9787,9832,'Навои',10000),(9834,9787,9832,'Тамдыбулак',10000),(9835,9787,9832,'Учкудук',10000),(9837,9787,9836,'Касансай',10000),(9838,9787,9836,'Наманган',10000),(9839,9787,9836,'Пап',10000),(9840,9787,9836,'Учкурган',10000),(9841,9787,9836,'Чартак',10000),(9842,9787,9836,'Чуст',10000),(9843,9787,9836,'Янгикурган',10000),(9845,9787,9844,'Акташ',10000),(9846,9787,9844,'Ингичка',10000),(9847,9787,9844,'Каттакурган',10000),(9848,9787,9844,'Красногвардейск',10000),(9849,9787,9844,'Самарканд',10000),(9850,9787,9844,'Ургут',10000),(9852,9787,9851,'Байсун',10000),(9853,9787,9851,'Денау',10000),(9854,9787,9851,'Карлук',10000),(9855,9787,9851,'Термез',10000),(9856,9787,9851,'Узун',10000),(9857,9787,9851,'Шерабад',10000),(9858,9787,9851,'Шурчи',10000),(9860,9787,9859,'Бахт',10000),(9861,9787,9859,'Верхневолынское',10000),(9862,9787,9859,'Гулистан',10000),(9863,9787,9859,'Димитровское',10000),(9864,9787,9859,'Крестьянский',10000),(9865,9787,9859,'Сырдарья',10000),(9866,9787,9859,'Сырьдарья',10000),(9867,9787,9859,'Хаваст',10000),(9868,9787,9859,'Янгиер',10000),(9870,9787,9869,'Алимкент',10000),(9871,9787,9869,'Алмазар',10000),(9872,9787,9869,'Алмалык',10000),(9873,9787,9869,'Ангрен',10000),(9874,9787,9869,'Ахангаран',10000),(9875,9787,9869,'Бакабад',10000),(9876,9787,9869,'Бекабад',10000),(9877,9787,9869,'Бука',10000),(9878,9787,9869,'Газалкент',10000),(9879,9787,9869,'Искандар',10000),(9880,9787,9869,'Келес',10000),(9881,9787,9869,'Паркент',10000),(9882,9787,9869,'Пскент',10000),(9883,9787,9869,'Сиджак',10000),(9884,9787,9869,'Солдатский',10000),(9885,9787,9869,'Ташкент',10000),(9886,9787,9869,'Тойтепа',10000),(9887,9787,9869,'Чиназ',10000),(9888,9787,9869,'Чирчик',10000),(9889,9787,9869,'Янгиабад',10000),(9890,9787,9869,'Янгибазар',10000),(9891,9787,9869,'Янгиюль',10000),(9893,9787,9892,'Алтыарык',10000),(9894,9787,9892,'Вуадиль',10000),(9895,9787,9892,'Дангара',10000),(9896,9787,9892,'Коканд',10000),(9897,9787,9892,'Кува',10000),(9898,9787,9892,'Кувасай',10000),(9899,9787,9892,'Маргилан',10000),(9900,9787,9892,'Учкуприк',10000),(9901,9787,9892,'Фергана',10000),(9902,9787,9892,'Язъяван',10000),(9903,9787,9892,'Яйпан',10000),(9904,9787,9892,'Янгикурган',10000),(9906,9787,9905,'Ургенч',10000),(9907,9787,9905,'Хива',10000),(9910,9908,9909,'Бар',10000),(9911,9908,9909,'Бершадь',10000),(9912,9908,9909,'Браилов',10000),(9913,9908,9909,'Брацлав',10000),(9914,9908,9909,'Вапнярка',10000),(9915,9908,9909,'Вендичаны',10000),(9916,9908,9909,'Винница',10000),(9917,9908,9909,'Вороновица',10000),(9918,9908,9909,'Гайсин',10000),(9919,9908,9909,'Гнивань',10000),(9920,9908,9909,'Дашев',10000),(9921,9908,9909,'Жмеринка',10000),(9922,9908,9909,'Ильинцы',10000),(9923,9908,9909,'Казатин',10000),(9924,9908,9909,'Калиновка',10000),(9925,9908,9909,'Крыжополь',10000),(9926,9908,9909,'Липовец',10000),(9927,9908,9909,'Литин',10000),(9928,9908,9909,'Могилев-Подольский',10000),(9929,9908,9909,'Мурованные Куриловцы',10000),(9930,9908,9909,'Немиров',10000),(9931,9908,9909,'Оратов',10000),(9932,9908,9909,'Песчанка',10000),(9933,9908,9909,'Погребище',10000),(9934,9908,9909,'Теплик',10000),(9935,9908,9909,'Томашполь',10000),(9936,9908,9909,'Тростянец',10000),(9937,9908,9909,'Тульчин',10000),(9938,9908,9909,'Тывров',10000),(9939,9908,9909,'Хмельник',10000),(9940,9908,9909,'Чечельник',10000),(9941,9908,9909,'Шаргород',10000),(9942,9908,9909,'Ямполь',10000),(9944,9908,9943,'Берестечко',10000),(9945,9908,9943,'Владимир-Волынский',10000),(9946,9908,9943,'Голобы',10000),(9947,9908,9943,'Головно',10000),(9948,9908,9943,'Горохов',10000),(9949,9908,9943,'Заболотье',10000),(9950,9908,9943,'Иваничи',10000),(9951,9908,9943,'Камень-Каширский',10000),(9952,9908,9943,'Киверцы',10000),(9953,9908,9943,'Ковель',10000),(9954,9908,9943,'Локачи',10000),(9955,9908,9943,'Луцк',10000),(9956,9908,9943,'Любешов',10000),(9957,9908,9943,'Любомль',10000),(9958,9908,9943,'Маневичи',10000),(9959,9908,9943,'Нововолынск',10000),(9960,9908,9943,'Ратно',10000),(9961,9908,9943,'Рожище',10000),(9962,9908,9943,'Старая Выжевка',10000),(9963,9908,9943,'Турийск',10000),(9965,9908,9964,'Апостолово',10000),(9966,9908,9964,'Аулы',10000),(9967,9908,9964,'Брагиновка',10000),(9968,9908,9964,'Васильковка',10000),(9969,9908,9964,'Верхнеднепровск',10000),(9970,9908,9964,'Верховцево',10000),(9971,9908,9964,'Вольногорск',10000),(9972,9908,9964,'Гвардейское',10000),(9973,9908,9964,'Горняцкое',10000),(9974,9908,9964,'Губиниха',10000),(9975,9908,9964,'Демурино',10000),(9976,9908,9964,'Днепродзержинск',10000),(9977,9908,9964,'Днепропетровск',10000),(9978,9908,9964,'Желтые Воды',10000),(9979,9908,9964,'Зализничное',10000),(9980,9908,9964,'Зеленое',10000),(9981,9908,9964,'Илларионово',10000),(9982,9908,9964,'Ингулец',10000),(9983,9908,9964,'Калинино',10000),(9984,9908,9964,'Карнауховка',10000),(9985,9908,9964,'Кривой Рог',10000),(9986,9908,9964,'Кринички',10000),(9987,9908,9964,'Магдалиновка',10000),(9988,9908,9964,'Марганец',10000),(9989,9908,9964,'Межевая',10000),(9990,9908,9964,'Никополь',10000),(9991,9908,9964,'Новомосковск',10000),(9992,9908,9964,'Орджоникидзе',10000),(9993,9908,9964,'Павлоград',10000),(9994,9908,9964,'Петропавловка',10000),(9995,9908,9964,'Покровское',10000),(9996,9908,9964,'Пятихатки',10000),(9997,9908,9964,'Синельниково',10000),(9998,9908,9964,'Софиевка',10000),(9999,9908,9964,'Томаковка',10000),(10000,9908,9964,'Царичанка',10000),(10001,9908,9964,'Широкое',10000),(10003,9908,10002,'Авдеевка',10000),(10004,9908,10002,'Александровка',10000),(10005,9908,10002,'Алексеево-Дружковка',10000),(10006,9908,10002,'Амвросиевка',10000),(10007,9908,10002,'Андреевка',10000),(10008,9908,10002,'Артемово',10000),(10009,9908,10002,'Артемовск',10000),(10010,9908,10002,'Безыменное',10000),(10011,9908,10002,'Беленькое',10000),(10012,9908,10002,'Белицкое',10000),(10013,9908,10002,'Благодатное',10000),(10014,9908,10002,'Былбасовка',10000),(10015,9908,10002,'Великая Новоселка',10000),(10016,9908,10002,'Войковский',10000),(10017,9908,10002,'Волноваха',10000),(10018,9908,10002,'Володарское',10000),(10019,9908,10002,'Гольмовский',10000),(10020,9908,10002,'Горбачево-Михайловка',10000),(10021,9908,10002,'Горловка',10000),(10022,9908,10002,'Гродовка',10000),(10023,9908,10002,'Грузско-Зорянское',10000),(10024,9908,10002,'Дебальцево',10000),(10025,9908,10002,'Дзержинск',10000),(10026,9908,10002,'Димитров',10000),(10027,9908,10002,'Доброполье',10000),(10028,9908,10002,'Докучаевск',10000),(10029,9908,10002,'Донецк',10000),(10030,9908,10002,'Донецкая',10000),(10031,9908,10002,'Донское',10000),(10032,9908,10002,'Дробышево',10000),(10033,9908,10002,'Дружковка',10000),(10034,9908,10002,'Енакиево',10000),(10035,9908,10002,'Жданов',10000),(10036,9908,10002,'Желанное',10000),(10037,9908,10002,'Зугрэс',10000),(10038,9908,10002,'Зуевка',10000),(10039,9908,10002,'Иловайск',10000),(10040,9908,10002,'Карло-Либкнехтовск',10000),(10041,9908,10002,'Карло-Марксово',10000),(10042,9908,10002,'Кировск',10000),(10043,9908,10002,'Краматорск',10000),(10044,9908,10002,'Красноармейск',10000),(10045,9908,10002,'Красный Лиман',10000),(10046,9908,10002,'Макеевка',10000),(10047,9908,10002,'Мариуполь',10000),(10048,9908,10002,'Марьинка',10000),(10049,9908,10002,'Новоазовск',10000),(10050,9908,10002,'Новоэкономическое',10000),(10051,9908,10002,'Першотравневое',10000),(10052,9908,10002,'Селидово',10000),(10053,9908,10002,'Славянск',10000),(10054,9908,10002,'Снежное',10000),(10055,9908,10002,'Старобешево',10000),(10056,9908,10002,'Тельманово',10000),(10057,9908,10002,'Торез',10000),(10058,9908,10002,'Харцызск',10000),(10059,9908,10002,'Шахтерск',10000),(10060,9908,10002,'Ясиноватая',10000),(10062,9908,10061,'Андрушевка',10000),(10063,9908,10061,'Барановка',10000),(10064,9908,10061,'Белая Криница',10000),(10065,9908,10061,'Бердичев',10000),(10066,9908,10061,'Броницкая Гута',10000),(10067,9908,10061,'Брусилов',10000),(10068,9908,10061,'Быковка',10000),(10069,9908,10061,'Великие Коровинцы',10000),(10070,9908,10061,'Володарск-Волынский',10000),(10071,9908,10061,'Городница',10000),(10072,9908,10061,'Гришковцы',10000),(10073,9908,10061,'Дзержинск',10000),(10074,9908,10061,'Довбыш',10000),(10075,9908,10061,'Емильчино',10000),(10076,9908,10061,'Житомир',10000),(10077,9908,10061,'Иванополь',10000),(10078,9908,10061,'Каменный Брод',10000),(10079,9908,10061,'Коростень',10000),(10080,9908,10061,'Коростышев',10000),(10081,9908,10061,'Лугины',10000),(10082,9908,10061,'Любар',10000),(10083,9908,10061,'Малин',10000),(10084,9908,10061,'Народичи',10000),(10085,9908,10061,'Новоград-Волынский',10000),(10086,9908,10061,'Овруч',10000),(10087,9908,10061,'Олевск',10000),(10088,9908,10061,'Попельня',10000),(10089,9908,10061,'Радомышль',10000),(10090,9908,10061,'Ружин',10000),(10091,9908,10061,'Червоноармейск',10000),(10092,9908,10061,'Черняхов',10000),(10093,9908,10061,'Чуднов',10000),(10095,9908,10094,'Берегово',10000),(10096,9908,10094,'Буштына',10000),(10097,9908,10094,'Великий Березный',10000),(10098,9908,10094,'Великий Бычков',10000),(10099,9908,10094,'Виноградов',10000),(10100,9908,10094,'Воловец',10000),(10101,9908,10094,'Иршава',10000),(10102,9908,10094,'Межгорье',10000),(10103,9908,10094,'Мукачево',10000),(10104,9908,10094,'Перечин',10000),(10105,9908,10094,'Рахов',10000),(10106,9908,10094,'Свалява',10000),(10107,9908,10094,'Тячев',10000),(10108,9908,10094,'Ужгород',10000),(10109,9908,10094,'Хуст',10000),(10110,9908,10094,'Чоп',10000),(10112,9908,10111,'Акимовка',10000),(10113,9908,10111,'Андреевка',10000),(10114,9908,10111,'Балабино',10000),(10115,9908,10111,'Бердянск',10000),(10116,9908,10111,'Васильевка',10000),(10117,9908,10111,'Веселое',10000),(10118,9908,10111,'Гуляйполе',10000),(10119,9908,10111,'Запорожье',10000),(10120,9908,10111,'Каменка-Днепровская',10000),(10121,9908,10111,'Каменное',10000),(10122,9908,10111,'Камыш-Заря',10000),(10123,9908,10111,'Куйбышево',10000),(10124,9908,10111,'Мелитополь',10000),(10125,9908,10111,'Михайловка',10000),(10126,9908,10111,'Новониколаевка',10000),(10127,9908,10111,'Орехов',10000),(10128,9908,10111,'Пологи',10000),(10129,9908,10111,'Приазовское',10000),(10130,9908,10111,'Приморск',10000),(10131,9908,10111,'Токмак',10000),(10132,9908,10111,'Черниговка',10000),(10134,9908,10133,'Богородчаны',10000),(10135,9908,10133,'Болехов',10000),(10136,9908,10133,'Болшовцы',10000),(10137,9908,10133,'Брошнев-Осада',10000),(10138,9908,10133,'Букачевцы',10000),(10139,9908,10133,'Бурштын',10000),(10140,9908,10133,'Бытков',10000),(10141,9908,10133,'Верховина',10000),(10142,9908,10133,'Войнилов',10000),(10143,9908,10133,'Ворохта',10000),(10144,9908,10133,'Выгода',10000),(10145,9908,10133,'Галич',10000),(10146,9908,10133,'Гвоздец',10000),(10147,9908,10133,'Городенка',10000),(10148,9908,10133,'Делятин',10000),(10149,9908,10133,'Жовтень',10000),(10150,9908,10133,'Заболотов',10000),(10151,9908,10133,'Ивано-Франковск',10000),(10152,9908,10133,'Калуж',10000),(10153,9908,10133,'Калуш',10000),(10154,9908,10133,'Коломыя',10000),(10155,9908,10133,'Косов',10000),(10156,9908,10133,'Надворна',10000),(10157,9908,10133,'Надворная',10000),(10158,9908,10133,'Рогатин',10000),(10159,9908,10133,'Рожнятов',10000),(10160,9908,10133,'Снятын',10000),(10161,9908,10133,'Станиславов',10000),(10162,9908,10133,'Тлумач',10000),(10163,9908,10133,'Тысменица',10000),(10164,9908,10133,'Яремча',10000),(10166,9908,10165,'Барышевка',10000),(10167,9908,10165,'Белая Церковь',10000),(10168,9908,10165,'Березань',10000),(10169,9908,10165,'Богуслав',10000),(10170,9908,10165,'Борисполь',10000),(10171,9908,10165,'Боровая',10000),(10172,9908,10165,'Бородянка',10000),(10173,9908,10165,'Бровары',10000),(10174,9908,10165,'Васильков',10000),(10175,9908,10165,'Володарка',10000),(10176,9908,10165,'Ворзель',10000),(10177,9908,10165,'Гребенки',10000),(10178,9908,10165,'Дымер',10000),(10179,9908,10165,'Згуровка',10000),(10180,9908,10165,'Иванков',10000),(10181,9908,10165,'Ирпень',10000),(10182,9908,10165,'Кагарлык',10000),(10183,9908,10165,'Калиновка',10000),(10184,9908,10165,'Киев',10000),(10185,9908,10165,'Киевская',10000),(10186,9908,10165,'Кодра',10000),(10187,9908,10165,'Кожанка',10000),(10188,9908,10165,'Козин',10000),(10189,9908,10165,'Макаров',10000),(10190,9908,10165,'Обухов',10000),(10191,9908,10165,'Переяслав-Хмельницкий',10000),(10192,9908,10165,'Полесское',10000),(10193,9908,10165,'Ракитное',10000),(10194,9908,10165,'Сквира',10000),(10195,9908,10165,'Ставище',10000),(10196,9908,10165,'Тараща',10000),(10197,9908,10165,'Тетиев',10000),(10198,9908,10165,'Фастов',10000),(10199,9908,10165,'Чернобыль',10000),(10200,9908,10165,'Яготин',10000),(10202,9908,10201,'Алексадровка',10000),(10203,9908,10201,'Александрия',10000),(10204,9908,10201,'Бобринец',10000),(10205,9908,10201,'Гайворон',10000),(10206,9908,10201,'Голованевск',10000),(10207,9908,10201,'Добровеличковка',10000),(10208,9908,10201,'Долинская',10000),(10209,9908,10201,'Елизаветградка',10000),(10210,9908,10201,'Завалье',10000),(10211,9908,10201,'Знаменка',10000),(10212,9908,10201,'Знаменка-Вторая',10000),(10213,9908,10201,'Капитановка',10000),(10214,9908,10201,'Кировоград',10000),(10215,9908,10201,'Компанеевка',10000),(10216,9908,10201,'Малая Виска',10000),(10217,9908,10201,'Новгородка',10000),(10218,9908,10201,'Новоархангельск',10000),(10219,9908,10201,'Новомиргород',10000),(10220,9908,10201,'Новоукраинка',10000),(10221,9908,10201,'Ольшанка',10000),(10222,9908,10201,'Онуфриевка',10000),(10223,9908,10201,'Петрово',10000),(10224,9908,10201,'Светловодск',10000),(10225,9908,10201,'Ульяновка',10000),(10226,9908,10201,'Устиновка',10000),(10228,9908,10227,'Азовское',10000),(10229,9908,10227,'Алупка',10000),(10230,9908,10227,'Алушта',10000),(10231,9908,10227,'Багерово',10000),(10232,9908,10227,'Балаклава',10000),(10233,9908,10227,'Бахчисарай',10000),(10234,9908,10227,'Белогорск',10000),(10235,9908,10227,'Гаспра',10000),(10236,9908,10227,'Гвардейское',10000),(10237,9908,10227,'Гурзуф',10000),(10238,9908,10227,'Джанкой',10000),(10239,9908,10227,'Евпатория',10000),(10240,9908,10227,'Зуя',10000),(10241,9908,10227,'Керчь',10000),(10242,9908,10227,'Кировское',10000),(10243,9908,10227,'Красногвардейское',10000),(10244,9908,10227,'Красноперекопск',10000),(10245,9908,10227,'Ленино',10000),(10246,9908,10227,'Массандра',10000),(10247,9908,10227,'Нижнегорский',10000),(10248,9908,10227,'Первомайское',10000),(10249,9908,10227,'Раздольное',10000),(10250,9908,10227,'Саки',10000),(10251,9908,10227,'Севастополь',10000),(10252,9908,10227,'Симферополь',10000),(10253,9908,10227,'Советский',10000),(10254,9908,10227,'Судак',10000),(10255,9908,10227,'Феодосия',10000),(10256,9908,10227,'Форос',10000),(10257,9908,10227,'Черноморское',10000),(10258,9908,10227,'Ялта',10000),(10260,9908,10259,'Алексадровск',10000),(10261,9908,10259,'Алчевск',10000),(10262,9908,10259,'Антрацит',10000),(10263,9908,10259,'Артемовск',10000),(10264,9908,10259,'Байрачки',10000),(10265,9908,10259,'Беловодск',10000),(10266,9908,10259,'Белогоровка',10000),(10267,9908,10259,'Белое',10000),(10268,9908,10259,'Белокуракино',10000),(10269,9908,10259,'Белолуцк',10000),(10270,9908,10259,'Бирюково',10000),(10271,9908,10259,'Боково-Платово',10000),(10272,9908,10259,'Боровское',10000),(10273,9908,10259,'Брянка',10000),(10274,9908,10259,'Бугаевка',10000),(10275,9908,10259,'Вахрушево',10000),(10276,9908,10259,'Великий Лог',10000),(10277,9908,10259,'Вергулевка',10000),(10278,9908,10259,'Володарск',10000),(10279,9908,10259,'Волчеяровка',10000),(10280,9908,10259,'Ворошиловград',10000),(10281,9908,10259,'Врубовка',10000),(10282,9908,10259,'Врубовский',10000),(10283,9908,10259,'Георгиевка',10000),(10284,9908,10259,'Горское',10000),(10285,9908,10259,'Есауловка',10000),(10286,9908,10259,'Зимогорье',10000),(10287,9908,10259,'Золотое',10000),(10288,9908,10259,'Зоринск',10000),(10289,9908,10259,'Изварино',10000),(10290,9908,10259,'Калининский',10000),(10291,9908,10259,'Калиново',10000),(10292,9908,10259,'Камышеваха',10000),(10293,9908,10259,'Кировск',10000),(10294,9908,10259,'Коммунарск',10000),(10295,9908,10259,'Краснодон',10000),(10296,9908,10259,'Красный Луч',10000),(10297,9908,10259,'Кременная',10000),(10298,9908,10259,'Лисичанск',10000),(10299,9908,10259,'Луганск',10000),(10300,9908,10259,'Лутугино',10000),(10301,9908,10259,'Марковка',10000),(10302,9908,10259,'Меловое',10000),(10303,9908,10259,'Новоайдар',10000),(10304,9908,10259,'Новопсков',10000),(10305,9908,10259,'Первомайск',10000),(10306,9908,10259,'Перевальск',10000),(10307,9908,10259,'Попасная',10000),(10308,9908,10259,'Ровеньки',10000),(10309,9908,10259,'Рубежное',10000),(10310,9908,10259,'Сватово',10000),(10311,9908,10259,'Свердловск',10000),(10312,9908,10259,'Северодонецк',10000),(10313,9908,10259,'Славяносербск',10000),(10314,9908,10259,'Станично-Луганское',10000),(10315,9908,10259,'Старобельск',10000),(10316,9908,10259,'Стаханов',10000),(10317,9908,10259,'Троицкое',10000),(10319,9908,10318,'Белз',10000),(10320,9908,10318,'Бобрка',10000),(10321,9908,10318,'Борислав',10000),(10322,9908,10318,'Броды',10000),(10323,9908,10318,'Буск',10000),(10324,9908,10318,'Великие Мосты',10000),(10325,9908,10318,'Верхнее Синевидное',10000),(10326,9908,10318,'Винники',10000),(10327,9908,10318,'Глиняны',10000),(10328,9908,10318,'Горняк',10000),(10329,9908,10318,'Дашава',10000),(10330,9908,10318,'Добротвор',10000),(10331,9908,10318,'Дрогобыч',10000),(10332,9908,10318,'Жидачов',10000),(10333,9908,10318,'Жолкиев',10000),(10334,9908,10318,'Золочев',10000),(10335,9908,10318,'Ивано-Франково',10000),(10336,9908,10318,'Каменка-Бугская',10000),(10337,9908,10318,'Львов',10000),(10338,9908,10318,'Мостиска',10000),(10339,9908,10318,'Нестеров',10000),(10340,9908,10318,'Николаев',10000),(10341,9908,10318,'Перемышляны',10000),(10342,9908,10318,'Пустомыты',10000),(10343,9908,10318,'Рава Русская',10000),(10344,9908,10318,'Радехов',10000),(10345,9908,10318,'Самбор',10000),(10346,9908,10318,'Сколе',10000),(10347,9908,10318,'Сокаль',10000),(10348,9908,10318,'Старый Самбор',10000),(10349,9908,10318,'Стрый',10000),(10350,9908,10318,'Трускавец',10000),(10351,9908,10318,'Турка',10000),(10352,9908,10318,'Червоноград',10000),(10353,9908,10318,'Яворов',10000),(10355,9908,10354,'Александровка',10000),(10356,9908,10354,'Арбузинка',10000),(10357,9908,10354,'Баштанка',10000),(10358,9908,10354,'Березнеговатое',10000),(10359,9908,10354,'Братское',10000),(10360,9908,10354,'Великая Корениха',10000),(10361,9908,10354,'Веселиново',10000),(10362,9908,10354,'Вознесенск',10000),(10363,9908,10354,'Доманевка',10000),(10364,9908,10354,'Еланец',10000),(10365,9908,10354,'Казанка',10000),(10366,9908,10354,'Кривое Озеро',10000),(10367,9908,10354,'Николаев',10000),(10368,9908,10354,'Новая Одесса',10000),(10369,9908,10354,'Новый Буг',10000),(10370,9908,10354,'Очаков',10000),(10371,9908,10354,'Первомайск',10000),(10372,9908,10354,'Снигиревка',10000),(10374,9908,10373,'Аккерман',10000),(10375,9908,10373,'Ананьев',10000),(10376,9908,10373,'Арциз',10000),(10377,9908,10373,'Балта',10000),(10378,9908,10373,'Белгород-Днестровский',10000),(10379,9908,10373,'Беляевка',10000),(10380,9908,10373,'Березино',10000),(10381,9908,10373,'Березовка',10000),(10382,9908,10373,'Болград',10000),(10383,9908,10373,'Бородино',10000),(10384,9908,10373,'Великая Михайловка',10000),(10385,9908,10373,'Великодолининское',10000),(10386,9908,10373,'Вилково',10000),(10387,9908,10373,'Затишье',10000),(10388,9908,10373,'Измаил',10000),(10389,9908,10373,'Ильичевск',10000),(10390,9908,10373,'Килия',10000),(10391,9908,10373,'Кодыма',10000),(10392,9908,10373,'Коминтерновское',10000),(10393,9908,10373,'Котовск',10000),(10394,9908,10373,'Красные Окны',10000),(10395,9908,10373,'Любашевка',10000),(10396,9908,10373,'Николаевка',10000),(10397,9908,10373,'Овидиополь',10000),(10398,9908,10373,'Одесса',10000),(10399,9908,10373,'Раздельная',10000),(10400,9908,10373,'Рени',10000),(10401,9908,10373,'Саврань',10000),(10402,9908,10373,'Сарата',10000),(10403,9908,10373,'Тарутино',10000),(10404,9908,10373,'Татарбунары',10000),(10405,9908,10373,'Фрунзовка',10000),(10406,9908,10373,'Ширяево',10000),(10408,9908,10407,'Белики',10000),(10409,9908,10407,'Великая Багачка',10000),(10410,9908,10407,'Гадяч',10000),(10411,9908,10407,'Глобино',10000),(10412,9908,10407,'Гоголево',10000),(10413,9908,10407,'Градижск',10000),(10414,9908,10407,'Гребенка',10000),(10415,9908,10407,'Диканька',10000),(10416,9908,10407,'Зеньков',10000),(10417,9908,10407,'Карловка',10000),(10418,9908,10407,'Кобеляки',10000),(10419,9908,10407,'Козельщина',10000),(10420,9908,10407,'Котельва',10000),(10421,9908,10407,'Кременчуг',10000),(10422,9908,10407,'Лохвица',10000),(10423,9908,10407,'Лубны',10000),(10424,9908,10407,'Машевка',10000),(10425,9908,10407,'Миргород',10000),(10426,9908,10407,'Новые Санжары',10000),(10427,9908,10407,'Оржица',10000),(10428,9908,10407,'Пирянтин',10000),(10429,9908,10407,'Пирятин',10000),(10430,9908,10407,'Полтава',10000),(10431,9908,10407,'Решетиловка',10000),(10432,9908,10407,'Семеновка',10000),(10433,9908,10407,'Хорол',10000),(10434,9908,10407,'Чернухи',10000),(10435,9908,10407,'Чутово',10000),(10436,9908,10407,'Шишаки',10000),(10438,9908,10437,'Владимирец',10000),(10439,9908,10437,'Гоща',10000),(10440,9908,10437,'Демидовка',10000),(10441,9908,10437,'Дубно',10000),(10442,9908,10437,'Дубровица',10000),(10443,9908,10437,'Заречное',10000),(10444,9908,10437,'Здолбунов',10000),(10445,9908,10437,'Клевань',10000),(10446,9908,10437,'Клесов',10000),(10447,9908,10437,'Корец',10000),(10448,9908,10437,'Костополь',10000),(10449,9908,10437,'Кузнецовск',10000),(10450,9908,10437,'Млинов',10000),(10451,9908,10437,'Острог',10000),(10452,9908,10437,'Ровно',10000),(10453,9908,10437,'Сарны',10000),(10454,9908,10437,'Червоноармейск',10000),(10456,9908,10455,'Ахтырка',10000),(10457,9908,10455,'Белополье',10000),(10458,9908,10455,'Бурынь',10000),(10459,9908,10455,'Великая Писаревка',10000),(10460,9908,10455,'Ворожба',10000),(10461,9908,10455,'Воронеж',10000),(10462,9908,10455,'Глухов',10000),(10463,9908,10455,'Дружба',10000),(10464,9908,10455,'Знобь-Новгородское',10000),(10465,9908,10455,'Кириковка',10000),(10466,9908,10455,'Конотоп',10000),(10467,9908,10455,'Краснополье',10000),(10468,9908,10455,'Кровелец',10000),(10469,9908,10455,'Лебедин',10000),(10470,9908,10455,'Липовая Долина',10000),(10471,9908,10455,'Недригайлов',10000),(10472,9908,10455,'Путивль',10000),(10473,9908,10455,'Ромны',10000),(10474,9908,10455,'Середина-Буда',10000),(10475,9908,10455,'Сумы',10000),(10476,9908,10455,'Тростянец',10000),(10477,9908,10455,'Шостка',10000),(10478,9908,10455,'Шурупинское',10000),(10479,9908,10455,'Ямполь',10000),(10481,9908,10480,'Бережаны',10000),(10482,9908,10480,'Борщев',10000),(10483,9908,10480,'Бучач',10000),(10484,9908,10480,'Великие Борки',10000),(10485,9908,10480,'Вишневец',10000),(10486,9908,10480,'Гримайлов',10000),(10487,9908,10480,'Гусятин',10000),(10488,9908,10480,'Залещики',10000),(10489,9908,10480,'Заложцы',10000),(10490,9908,10480,'Збараж',10000),(10491,9908,10480,'Зборов',10000),(10492,9908,10480,'Золотники',10000),(10493,9908,10480,'Золотойпоток',10000),(10494,9908,10480,'Козлов',10000),(10495,9908,10480,'Козова',10000),(10496,9908,10480,'Кременец',10000),(10497,9908,10480,'Лановцы',10000),(10498,9908,10480,'Монастыриска',10000),(10499,9908,10480,'Подволочиск',10000),(10500,9908,10480,'Теребовля',10000),(10501,9908,10480,'Тернополь',10000),(10502,9908,10480,'Чортков',10000),(10503,9908,10480,'Шумское',10000),(10505,9908,10504,'Балаклея',10000),(10506,9908,10504,'Барвенково',10000),(10507,9908,10504,'Близнюки',10000),(10508,9908,10504,'Богодухов',10000),(10509,9908,10504,'Борки',10000),(10510,9908,10504,'Боровая',10000),(10511,9908,10504,'Буды',10000),(10512,9908,10504,'Валки',10000),(10513,9908,10504,'Великий Бурлук',10000),(10514,9908,10504,'Волчанск',10000),(10515,9908,10504,'Готвальд',10000),(10516,9908,10504,'Гуты',10000),(10517,9908,10504,'Дергачи',10000),(10518,9908,10504,'Зачепиловка',10000),(10519,9908,10504,'Зидьки',10000),(10520,9908,10504,'Золочев',10000),(10521,9908,10504,'Изюм',10000),(10522,9908,10504,'Казачья Лопань',10000),(10523,9908,10504,'Кегичевка',10000),(10524,9908,10504,'Красноград',10000),(10525,9908,10504,'Краснокутск',10000),(10526,9908,10504,'Купянск',10000),(10527,9908,10504,'Лозовая',10000),(10528,9908,10504,'Люботин',10000),(10529,9908,10504,'Новая Водолага',10000),(10530,9908,10504,'Первомайский',10000),(10531,9908,10504,'Сахновщина',10000),(10532,9908,10504,'Харьков',10000),(10533,9908,10504,'Чугуев',10000),(10534,9908,10504,'Шевченково',10000),(10536,9908,10535,'Аскания-Нова',10000),(10537,9908,10535,'Белая Криница',10000),(10538,9908,10535,'Белозерка',10000),(10539,9908,10535,'Берислав',10000),(10540,9908,10535,'Великая Александровка',10000),(10541,9908,10535,'Великая Лепетиха',10000),(10542,9908,10535,'Верхний Рогачик',10000),(10543,9908,10535,'Высокополье',10000),(10544,9908,10535,'Геническ',10000),(10545,9908,10535,'Голая Пристань',10000),(10546,9908,10535,'Горностаевка',10000),(10547,9908,10535,'Днепряны',10000),(10548,9908,10535,'Каланчак',10000),(10549,9908,10535,'Калининское',10000),(10550,9908,10535,'Каховка',10000),(10551,9908,10535,'Нижние Серогозы',10000),(10552,9908,10535,'Новая Каховка',10000),(10553,9908,10535,'Нововоронцовка',10000),(10554,9908,10535,'Новотроицкое',10000),(10555,9908,10535,'Скадовск',10000),(10556,9908,10535,'Херсон',10000),(10557,9908,10535,'Цюрупинск',10000),(10558,9908,10535,'Чаплинка',10000),(10560,9908,10559,'Антонины',10000),(10561,9908,10559,'Базалия',10000),(10562,9908,10559,'Белогорье',10000),(10563,9908,10559,'Виньковцы',10000),(10564,9908,10559,'Волочиск',10000),(10565,9908,10559,'Городок',10000),(10566,9908,10559,'Грицев',10000),(10567,9908,10559,'Деражня',10000),(10568,9908,10559,'Дунаевцы',10000),(10569,9908,10559,'Изяслав',10000),(10570,9908,10559,'Каменец-Подольский',10000),(10571,9908,10559,'Красилов',10000),(10572,9908,10559,'Летичев',10000),(10573,9908,10559,'Новая Ушица',10000),(10574,9908,10559,'Полонное',10000),(10575,9908,10559,'Славута',10000),(10576,9908,10559,'Старая Синява',10000),(10577,9908,10559,'Староконстантинов',10000),(10578,9908,10559,'Теофиполь',10000),(10579,9908,10559,'Хмельницкий',10000),(10580,9908,10559,'Чемеровцы',10000),(10581,9908,10559,'Шепетовка',10000),(10582,9908,10559,'Ярмолинцы',10000),(10584,9908,10583,'Ватутино',10000),(10585,9908,10583,'Городище',10000),(10586,9908,10583,'Драбов',10000),(10587,9908,10583,'Ерки',10000),(10588,9908,10583,'Жашков',10000),(10589,9908,10583,'Зараевск',10000),(10590,9908,10583,'Звенигородка',10000),(10591,9908,10583,'Золотоноша',10000),(10592,9908,10583,'Ирдынь',10000),(10593,9908,10583,'Каменка',10000),(10594,9908,10583,'Катеринополь',10000),(10595,9908,10583,'Корсунь-Шевченковский',10000),(10596,9908,10583,'Лысянка',10000),(10597,9908,10583,'Маньковка',10000),(10598,9908,10583,'Монастырище',10000),(10599,9908,10583,'Смела',10000),(10600,9908,10583,'Тальное',10000),(10601,9908,10583,'Умань',10000),(10602,9908,10583,'Христиновка',10000),(10603,9908,10583,'Черкассы',10000),(10604,9908,10583,'Чернобай',10000),(10605,9908,10583,'Чигирин',10000),(10606,9908,10583,'Шпола',10000),(10608,9908,10607,'Батурин',10000),(10609,9908,10607,'Бахмач',10000),(10610,9908,10607,'Березна',10000),(10611,9908,10607,'Бобровица',10000),(10612,9908,10607,'Борзна',10000),(10613,9908,10607,'Варва',10000),(10614,9908,10607,'Вертиевка',10000),(10615,9908,10607,'Городня',10000),(10616,9908,10607,'Замглай',10000),(10617,9908,10607,'Ичня',10000),(10618,9908,10607,'Козелец',10000),(10619,9908,10607,'Короп',10000),(10620,9908,10607,'Корюковка',10000),(10621,9908,10607,'Куликовка',10000),(10622,9908,10607,'Мена',10000),(10623,9908,10607,'Нежин',10000),(10624,9908,10607,'Новгород Северский',10000),(10625,9908,10607,'Носовка',10000),(10626,9908,10607,'Прилуки',10000),(10627,9908,10607,'Репки',10000),(10628,9908,10607,'Семеновка',10000),(10629,9908,10607,'Сосница',10000),(10630,9908,10607,'Талалаевка',10000),(10631,9908,10607,'Чернигов',10000),(10632,9908,10607,'Щорс',10000),(10634,9908,10633,'Берегомет',10000),(10635,9908,10633,'Вашковцы',10000),(10636,9908,10633,'Вижница',10000),(10637,9908,10633,'Герца',10000),(10638,9908,10633,'Глыбокая',10000),(10639,9908,10633,'Заставна',10000),(10640,9908,10633,'Кельменцы',10000),(10641,9908,10633,'Кицмань',10000),(10642,9908,10633,'Новоселица',10000),(10643,9908,10633,'Путила',10000),(10644,9908,10633,'Сокиряны',10000),(10645,9908,10633,'Сторожинец',10000),(10646,9908,10633,'Хотин',10000),(10647,9908,10633,'Черновцы',10000),(10650,10648,10649,'Лаппеенранта',10000),(10652,10648,10651,'Лахти',10000),(10654,10648,10653,'Вааса',10000),(10656,10648,10655,'Оулу',10000),(10658,10648,10657,'Куопио',10000),(10660,10648,10659,'Пори',10000),(10662,10648,10661,'Турку',10000),(10664,10648,10663,'Ийваскила',10000),(10666,10648,10665,'Хельсинки',10000),(10667,10648,10665,'Эспоо',10000),(10670,10668,10669,'Сен-Брие',10000),(10672,10668,10671,'Montluзon',10000),(10674,10668,10673,'Гап',10000),(10676,10668,10675,'Антибе',10000),(10677,10668,10675,'Канны',10000),(10678,10668,10675,'Ницца',10000),(10680,10668,10679,'Шарлевиль',10000),(10682,10668,10681,'Бельфор',10000),(10684,10668,10683,'А-ен-Провенс',10000),(10685,10668,10683,'Марсель',10000),(10687,10668,10686,'Аргентоль',10000),(10689,10668,10688,'Виллежюи',10000),(10690,10668,10688,'Винсенне',10000),(10691,10668,10688,'Витри',10000),(10692,10668,10688,'Иври',10000),(10693,10668,10688,'Кретейл',10000),(10694,10668,10688,'Маисон-Альфорт',10000),(10695,10668,10688,'Сен-Мар-дес-Фоссе',10000),(10696,10668,10688,'Фонтеней-су-Буа',10000),(10697,10668,10688,'Чойси-ле-Руа',10000),(10698,10668,10688,'Шампини-сюр-Мар',10000),(10700,10668,10699,'Ла-Сен-сюр-Мер',10000),(10701,10668,10699,'Тулон',10000),(10703,10668,10702,'Эпиналь',10000),(10705,10668,10704,'Авиньон',10000),(10707,10668,10706,'Пуатье',10000),(10709,10668,10708,'Лимож',10000),(10711,10668,10710,'Ним',10000),(10713,10668,10712,'Тулуза',10000),(10715,10668,10714,'Ньор',10000),(10717,10668,10716,'Валенс',10000),(10718,10668,10716,'Монтелимар',10000),(10720,10668,10719,'Безансон',10000),(10722,10668,10721,'Бордо',10000),(10724,10668,10723,'Версаль',10000),(10726,10668,10725,'Ренн',10000),(10727,10668,10725,'Сант-Мало',10000),(10729,10668,10728,'Бриве-ла-Жилларде',10000),(10731,10668,10730,'Бастия',10000),(10733,10668,10732,'Аяччо',10000),(10735,10668,10734,'Дижон',10000),(10737,10668,10736,'Мон-де-Марсан',10000),(10739,10668,10738,'Ажен',10000),(10741,10668,10740,'Манд',10000),(10743,10668,10742,'Блоис',10000),(10745,10668,10744,'Руанн',10000),(10746,10668,10744,'Сен-Этьен',10000),(10748,10668,10747,'Нант',10000),(10749,10668,10747,'Сен-Назар',10000),(10751,10668,10750,'Ле-Пюи',10000),(10753,10668,10752,'Орлеан',10000),(10755,10668,10754,'Лаваль',10000),(10757,10668,10756,'Реймс',10000),(10758,10668,10756,'Шалон-сюр-Мар',10000),(10760,10668,10759,'Анже',10000),(10761,10668,10759,'Чолет',10000),(10763,10668,10762,'Нанси',10000),(10765,10668,10764,'Мец',10000),(10767,10668,10766,'Лорьент',10000),(10769,10668,10768,'Валенсинье',10000),(10770,10668,10768,'Дуа',10000),(10771,10668,10768,'Лилль',10000),(10772,10668,10768,'Рубо',10000),(10773,10668,10768,'Туркуа',10000),(10775,10668,10774,'Невер',10000),(10777,10668,10776,'Антони',10000),(10778,10668,10776,'Асньер',10000),(10779,10668,10776,'Булонь-Билланкур',10000),(10780,10668,10776,'Женневилльер',10000),(10781,10668,10776,'Исси-ле-Мулино',10000),(10782,10668,10776,'Кламарт',10000),(10783,10668,10776,'Кличи',10000),(10784,10668,10776,'Коломбес',10000),(10785,10668,10776,'Курбеву',10000),(10786,10668,10776,'Левальлуи-Перре',10000),(10787,10668,10776,'Монпелье',10000),(10788,10668,10776,'Монтруж',10000),(10789,10668,10776,'Нантерре',10000),(10790,10668,10776,'Нюилли-сюр-Сен',10000),(10791,10668,10776,'Руэль-Мальмасон',10000),(10792,10668,10776,'Сет',10000),(10793,10668,10776,'Суреснес',10000),(10795,10668,10794,'Труа',10000),(10797,10668,10796,'Каркассон',10000),(10799,10668,10798,'Алансон',10000),(10801,10668,10800,'Аррас',10000),(10802,10668,10800,'Бруа-эн-Арто',10000),(10803,10668,10800,'Ленс',10000),(10805,10668,10804,'Париж',10000),(10807,10668,10806,'Байонна',10000),(10808,10668,10806,'По',10000),(10810,10668,10809,'Тарб',10000),(10812,10668,10811,'Перпиньян',10000),(10814,10668,10813,'Колмар',10000),(10815,10668,10813,'Мулхаузен',10000),(10816,10668,10813,'Мулхаус',10000),(10818,10668,10817,'Страсбург',10000),(10820,10668,10819,'Вениссо',10000),(10821,10668,10819,'Виллеурбанн',10000),(10822,10668,10819,'Лион',10000),(10824,10668,10823,'Шамбери',10000),(10826,10668,10825,'Аннеси',10000),(10828,10668,10827,'Ле-Ман',10000),(10830,10668,10829,'Бобини',10000),(10831,10668,10829,'Бонди',10000),(10832,10668,10829,'Дранси',10000),(10833,10668,10829,'Ла-Курнье',10000),(10834,10668,10829,'Ле-Бланк-Меснил',10000),(10835,10668,10829,'Монтреуил',10000),(10836,10668,10829,'Обервилье',10000),(10837,10668,10829,'Ольни-су-Буа',10000),(10838,10668,10829,'Пантин',10000),(10839,10668,10829,'Сен-Дени',10000),(10840,10668,10829,'Эпини-сюр-Сен',10000),(10842,10668,10841,'Гавр',10000),(10843,10668,10841,'Руан',10000),(10845,10668,10844,'Амьен',10000),(10847,10668,10846,'Макон',10000),(10848,10668,10846,'Шалон-сур-Сон',10000),(10850,10668,10849,'Альби',10000),(10852,10668,10851,'Бювэ',10000),(10854,10668,10853,'Брест',10000),(10855,10668,10853,'Кемпер',10000),(10857,10668,10856,'Ангулем',10000),(10859,10668,10858,'Ла-Рошель',10000),(10861,10668,10860,'Бурже',10000),(10863,10668,10862,'Сен-Квентин',10000),(10865,10668,10864,'Шатору',10000),(10867,10668,10866,'Тур',10000),(10869,10668,10868,'Гренобль',10000),(10871,10668,10870,'Безье',10000),(10873,10668,10872,'Эвре',10000),(10876,10874,10875,'Чешке-Будейовице',10000),(10878,10874,10877,'Брно',10000),(10880,10874,10879,'Карловы Вары',10000),(10882,10874,10881,'Храдец-Кралове',10000),(10884,10874,10883,'Либерец',10000),(10885,10874,10883,'Яблонец-над-Нисой',10000),(10887,10874,10886,'Карвина',10000),(10888,10874,10886,'Опава',10000),(10889,10874,10886,'Острава',10000),(10890,10874,10886,'Фрыдек-Мистек',10000),(10891,10874,10886,'Хавиров',10000),(10893,10874,10892,'Оломоук',10000),(10894,10874,10892,'Преров',10000),(10895,10874,10892,'Простеёв',10000),(10897,10874,10896,'Кладно',10000),(10899,10874,10898,'Дечин',10000),(10900,10874,10898,'Мост',10000),(10901,10874,10898,'Теплик',10000),(10902,10874,10898,'Усти-над-Лабем',10000),(10903,10874,10898,'Чомутов',10000),(10906,10904,10905,'Аарау',10000),(10907,10904,10905,'Баден',10000),(10909,10904,10908,'Базель',10000),(10911,10904,10910,'Берн',10000),(10912,10904,10910,'Кониц',10000),(10913,10904,10910,'Тун',10000),(10915,10904,10914,'Лозанна',10000),(10917,10904,10916,'Женева',10000),(10919,10904,10918,'Солотурн',10000),(10921,10904,10920,'Люцерн',10000),(10923,10904,10922,'Ла-Шо-Де-Фонд',10000),(10924,10904,10922,'Ньюшатель',10000),(10926,10904,10925,'Лугано',10000),(10928,10904,10927,'Фрейбург',10000),(10929,10904,10927,'Фрибург',10000),(10931,10904,10930,'Винтертур',10000),(10932,10904,10930,'Цюрих',10000),(10935,10933,10934,'Лунд',10000),(10936,10933,10934,'Мальмё',10000),(10937,10933,10934,'Хельсингборг',10000),(10939,10933,10938,'Борас',10000),(10940,10933,10938,'Гетеборг',10000),(10941,10933,10938,'Троллхаттан',10000),(10943,10933,10942,'Карлстад',10000),(10945,10933,10944,'Уми',10000),(10947,10933,10946,'Сундсваль',10000),(10949,10933,10948,'Вастерас',10000),(10951,10933,10950,'Гавл',10000),(10953,10933,10952,'Эстерсунд',10000),(10955,10933,10954,'Йонкопинг',10000),(10957,10933,10956,'Эскилстуна',10000),(10959,10933,10958,'Содерталье',10000),(10960,10933,10958,'Сольна',10000),(10961,10933,10958,'Стокгольм',10000),(10963,10933,10962,'Уппсала',10000),(10965,10933,10964,'Хельмстад',10000),(10967,10933,10966,'Линкопинг',10000),(10970,10968,10969,'Абья-Палуоя',10000),(10971,10968,10969,'Антсла',10000),(10972,10968,10969,'Валга',10000),(10973,10968,10969,'Васкнарва',10000),(10974,10968,10969,'Вильянди',10000),(10975,10968,10969,'Выру',10000),(10976,10968,10969,'Йыгева',10000),(10977,10968,10969,'Калласте',10000),(10978,10968,10969,'Кейла',10000),(10979,10968,10969,'Кехра',10000),(10980,10968,10969,'Кивиыли',10000),(10981,10968,10969,'Килинги',10000),(10982,10968,10969,'Килинги-Нымме',10000),(10983,10968,10969,'Кингисепп',10000),(10984,10968,10969,'Кохтла-Ярве',10000),(10985,10968,10969,'Кярдла',10000),(10986,10968,10969,'Муствээ',10000),(10987,10968,10969,'Мыйзакюла',10000),(10988,10968,10969,'Нарва',10000),(10989,10968,10969,'Пайде',10000),(10990,10968,10969,'Пылтсамаа',10000),(10991,10968,10969,'Пярну',10000),(10992,10968,10969,'Раквере',10000),(10993,10968,10969,'Рапла',10000),(10994,10968,10969,'Силламяэ',10000),(10995,10968,10969,'Сууре-Яани',10000),(10997,10968,10969,'Тапа',10000),(10998,10968,10969,'Тарту',10000),(10999,10968,10969,'Тырва',10000),(11000,10968,10969,'Хаапсалу',10000),(11001,10968,10969,'Эльва',10000),(11004,11002,11003,'Зренянин',10000),(11005,11002,11003,'Нови-Сад',10000),(11006,11002,11003,'Панцево',10000),(11007,11002,11003,'Суботица',10000),(11009,11002,11008,'Приштина',10000),(11011,11002,11010,'Белград',10000),(11012,11002,11010,'Крагуевач',10000),(11013,11002,11010,'Нис',10000),(11016,11014,11015,'Чею',10000),(11018,11014,11017,'Кунсан',10000),(11019,11014,11017,'Намвон',10000),(11021,11014,11020,'Йосу',10000),(11022,11014,11020,'Мокп`о',10000),(11023,11014,11020,'Чечон',10000),(11025,11014,11024,'Чонгжу',10000),(11026,11014,11024,'Чунгжу',10000),(11028,11014,11027,'Ч`онан',10000),(11030,11014,11029,'Инчхон',10000),(11032,11014,11031,'Вонжу',10000),(11033,11014,11031,'Кангнунг',10000),(11034,11014,11031,'Чунчон',10000),(11036,11014,11035,'Кванчжу',10000),(11038,11014,11037,'Йонгжу',10000),(11039,11014,11037,'Сувон',10000),(11041,11014,11040,'Андонг',10000),(11042,11014,11040,'Кионгджу',10000),(11043,11014,11040,'П`оханг',10000),(11044,11014,11040,'Сангю',10000),(11046,11014,11045,'Масан',10000),(11047,11014,11045,'Мирианг',10000),(11048,11014,11045,'Чинхэ',10000),(11049,11014,11045,'Чиню',10000),(11051,11014,11050,'Пусан',10000),(11053,11014,11052,'Сеул',10000),(11055,11014,11054,'Тэгу',10000),(11057,11014,11056,'Тэджон',10000),(11059,11014,11058,'Ульсан',10000),(11062,11060,11061,'Ичиномия',10000),(11063,11060,11061,'Касугаи',10000),(11064,11060,11061,'Нагоиа',10000),(11065,11060,11061,'Оказаки',10000),(11066,11060,11061,'Тойота',10000),(11067,11060,11061,'Тойохаши',10000),(11069,11060,11068,'Акита',10000),(11070,11060,11068,'Иокот',10000),(11071,11060,11068,'Ноширо',10000),(11072,11060,11068,'Ога',10000),(11073,11060,11068,'Одат',10000),(11075,11060,11074,'Аомори',10000),(11076,11060,11074,'Гошогавара',10000),(11077,11060,11074,'Тауада',10000),(11078,11060,11074,'Хачинохе',10000),(11079,11060,11074,'Хиросаки',10000),(11081,11060,11080,'Вакэйама',10000),(11082,11060,11080,'Шингу',10000),(11084,11060,11083,'Гифу',10000),(11085,11060,11083,'Огаки',10000),(11086,11060,11083,'Тайими',10000),(11087,11060,11083,'Такэйама',10000),(11089,11060,11088,'Кириу',10000),(11090,11060,11088,'Мебаши',10000),(11091,11060,11088,'Нумата',10000),(11092,11060,11088,'Ота',10000),(11093,11060,11088,'Такасаки',10000),(11095,11060,11094,'Ибараки',10000),(11096,11060,11094,'Ина',10000),(11097,11060,11094,'Катсута',10000),(11098,11060,11094,'Китаибараки',10000),(11099,11060,11094,'Мито',10000),(11100,11060,11094,'Омииа',10000),(11101,11060,11094,'Хитачи',10000),(11103,11060,11102,'Ичиносеки',10000),(11104,11060,11102,'Мизусава',10000),(11105,11060,11102,'Мииако',10000),(11106,11060,11102,'Мориока',10000),(11107,11060,11102,'Ханамаки',10000),(11109,11060,11108,'Кага',10000),(11110,11060,11108,'Каназава',10000),(11111,11060,11108,'Коматсу',10000),(11112,11060,11108,'Нанао',10000),(11114,11060,11113,'Сакаиде',10000),(11115,11060,11113,'Такаматсу',10000),(11117,11060,11116,'Изуми',10000),(11118,11060,11116,'Кагошима',10000),(11119,11060,11116,'Каноя',10000),(11120,11060,11116,'Наз',10000),(11122,11060,11121,'Айкава',10000),(11123,11060,11121,'Ацуги',10000),(11124,11060,11121,'Зуши',10000),(11125,11060,11121,'Йокогама',10000),(11126,11060,11121,'Йокосука',10000),(11127,11060,11121,'Камакура',10000),(11128,11060,11121,'Одавара',10000),(11129,11060,11121,'Сагамихара',10000),(11130,11060,11121,'Фуйисава',10000),(11131,11060,11121,'Хиратсука',10000),(11132,11060,11121,'Чигасаки',10000),(11134,11060,11133,'Камеока',10000),(11135,11060,11133,'Киото',10000),(11136,11060,11133,'Маизуру',10000),(11137,11060,11133,'Уйи',10000),(11138,11060,11133,'Фукучииама',10000),(11140,11060,11139,'Кочи',10000),(11141,11060,11139,'Нанкоку',10000),(11143,11060,11142,'Кумамото',10000),(11144,11060,11142,'Минамата',10000),(11145,11060,11142,'Хитоиоши',10000),(11147,11060,11146,'Исе',10000),(11148,11060,11146,'Матсусака',10000),(11149,11060,11146,'Сузука',10000),(11150,11060,11146,'Тсу',10000),(11152,11060,11151,'Ишиномаки',10000),(11153,11060,11151,'Кесеннума',10000),(11154,11060,11151,'Фурукава',10000),(11156,11060,11155,'Кобэйаши',10000),(11157,11060,11155,'Мииазаки',10000),(11158,11060,11155,'Мииаконойо',10000),(11159,11060,11155,'Нобеока',10000),(11160,11060,11155,'Саито',10000),(11161,11060,11155,'Хиуга',10000),(11163,11060,11162,'Матсумото',10000),(11164,11060,11162,'Нагано',10000),(11165,11060,11162,'Саку',10000),(11166,11060,11162,'Сува',10000),(11167,11060,11162,'Уеда',10000),(11169,11060,11168,'Исахая',10000),(11170,11060,11168,'Нагасаки',10000),(11171,11060,11168,'Сасэбо',10000),(11172,11060,11168,'Шимабара',10000),(11174,11060,11173,'Кашихара',10000),(11175,11060,11173,'Нара',10000),(11176,11060,11173,'Сакураи',10000),(11177,11060,11173,'Тенри',10000),(11179,11060,11178,'Кашивазаки',10000),(11180,11060,11178,'Нагаока',10000),(11181,11060,11178,'Оджия',10000),(11182,11060,11178,'Санйо',10000),(11183,11060,11178,'Цубаме',10000),(11184,11060,11178,'Шибата',10000),(11186,11060,11185,'Курашики',10000),(11187,11060,11185,'Окэйама',10000),(11188,11060,11185,'Цуяма',10000),(11190,11060,11189,'Ишигаки',10000),(11191,11060,11189,'Наха',10000),(11193,11060,11192,'Даито',10000),(11194,11060,11192,'Кайзука',10000),(11195,11060,11192,'Кишивада',10000),(11196,11060,11192,'Матсубара',10000),(11197,11060,11192,'Моригучи',10000),(11198,11060,11192,'Ниагава',10000),(11199,11060,11192,'Осака',10000),(11200,11060,11192,'Суита',10000),(11201,11060,11192,'Такаиши',10000),(11202,11060,11192,'Такатсуки',10000),(11203,11060,11192,'Тоионака',10000),(11204,11060,11192,'Тондабаяши',10000),(11205,11060,11192,'Хабикино',10000),(11206,11060,11192,'Хигашиосака',10000),(11207,11060,11192,'Хираката',10000),(11208,11060,11192,'Яо',10000),(11210,11060,11209,'Имари',10000),(11211,11060,11209,'Каратсу',10000),(11212,11060,11209,'Сага',10000),(11213,11060,11209,'Тосу',10000),(11214,11060,11209,'Ямато',10000),(11216,11060,11215,'Вараби',10000),(11217,11060,11215,'Иватсуки',10000),(11218,11060,11215,'Йоно',10000),(11219,11060,11215,'Кавагоэ',10000),(11220,11060,11215,'Кавагучи',10000),(11221,11060,11215,'Касукаб',10000),(11222,11060,11215,'Кошигэйа',10000),(11223,11060,11215,'Кумагэйа',10000),(11224,11060,11215,'Сока',10000),(11225,11060,11215,'Ханно',10000),(11226,11060,11215,'Чичибу',10000),(11228,11060,11227,'Отсу',10000),(11229,11060,11227,'Хикон',10000),(11231,11060,11230,'Атами',10000),(11232,11060,11230,'Фуджи',10000),(11234,11060,11233,'Иаизу',10000),(11235,11060,11233,'Ивата',10000),(11236,11060,11233,'Изумо',10000),(11237,11060,11233,'Ито',10000),(11238,11060,11233,'Масуда',10000),(11239,11060,11233,'Матсуэ',10000),(11240,11060,11233,'Мишима',10000),(11241,11060,11233,'Нумазу',10000),(11242,11060,11233,'Ода',10000),(11243,11060,11233,'Ояма',10000),(11244,11060,11233,'Хамада',10000),(11245,11060,11233,'Хамаматсу',10000),(11246,11060,11233,'Шизуока',10000),(11247,11060,11233,'Шимизу',10000),(11249,11060,11248,'Ичикава',10000),(11250,11060,11248,'Кашива',10000),(11251,11060,11248,'Кисаразу',10000),(11252,11060,11248,'Матсудо',10000),(11253,11060,11248,'Мобара',10000),(11254,11060,11248,'Нарашино',10000),(11255,11060,11248,'Нода',10000),(11256,11060,11248,'Савара',10000),(11257,11060,11248,'Татиама',10000),(11258,11060,11248,'Фунабаши',10000),(11259,11060,11248,'Хоши',10000),(11260,11060,11248,'Чиба',10000),(11262,11060,11261,'Кодаира',10000),(11263,11060,11261,'Мачида',10000),(11264,11060,11261,'Митака',10000),(11265,11060,11261,'Мусашино',10000),(11266,11060,11261,'Тачикава',10000),(11267,11060,11261,'Токио',10000),(11268,11060,11261,'Хачиойи',10000),(11269,11060,11261,'Хофу',10000),(11271,11060,11270,'Анан',10000),(11272,11060,11270,'Токушима',10000),(11274,11060,11273,'Ашикага',10000),(11275,11060,11273,'Кавачи',10000),(11276,11060,11273,'Канума',10000),(11277,11060,11273,'Отавара',10000),(11278,11060,11273,'Утсуномииа',10000),(11280,11060,11279,'Йонаго',10000),(11281,11060,11279,'Курэйоши',10000),(11282,11060,11279,'Тоттори',10000),(11284,11060,11283,'Камишии',10000),(11285,11060,11283,'Такаока',10000),(11286,11060,11283,'Тояма',10000),(11287,11060,11283,'Уозу',10000),(11288,11060,11283,'Хими',10000),(11290,11060,11289,'Оно',10000),(11291,11060,11289,'Сабе',10000),(11292,11060,11289,'Такефу',10000),(11293,11060,11289,'Тсуруга',10000),(11294,11060,11289,'Фукуи',10000),(11296,11060,11295,'Амаги',10000),(11297,11060,11295,'Иукухаши',10000),(11298,11060,11295,'Кавасаки',10000),(11299,11060,11295,'Китакиушу',10000),(11300,11060,11295,'Курум',10000),(11301,11060,11295,'Ногата',10000),(11302,11060,11295,'Омута',10000),(11303,11060,11295,'Фукуока',10000),(11305,11060,11304,'Иваки',10000),(11306,11060,11304,'Корииама',10000),(11308,11060,11307,'Кур',10000),(11309,11060,11307,'Ономичи',10000),(11310,11060,11307,'Фукуиама',10000),(11311,11060,11307,'Хирошима',10000),(11313,11060,11312,'Абашири',10000),(11314,11060,11312,'Асахигава',10000),(11315,11060,11312,'Ашибецу',10000),(11316,11060,11312,'Бибаи',10000),(11317,11060,11312,'Вакканаи',10000),(11318,11060,11312,'Китами',10000),(11319,11060,11312,'Куширо',10000),(11320,11060,11312,'Момбетсу',10000),(11321,11060,11312,'Муроран',10000),(11322,11060,11312,'Немуро',10000),(11323,11060,11312,'Обихиро',10000),(11324,11060,11312,'Отару',10000),(11325,11060,11312,'Румои',10000),(11326,11060,11312,'Саппоро',10000),(11327,11060,11312,'Томакомаи',10000),(11328,11060,11312,'Эбетсу',10000),(11329,11060,11312,'Юбари',10000),(11331,11060,11330,'Акаши',10000),(11332,11060,11330,'Амагасаки',10000),(11333,11060,11330,'Ашия',10000),(11334,11060,11330,'Итами',10000),(11335,11060,11330,'Каваниши',10000),(11336,11060,11330,'Какогава',10000),(11337,11060,11330,'Нишиномия',10000),(11338,11060,11330,'Тоёока',10000),(11339,11060,11330,'Химейи',10000),(11341,11060,11340,'Иаватахама',10000),(11342,11060,11340,'Имабари',10000),(11343,11060,11340,'Матсуиама',10000),(11344,11060,11340,'Озу',10000),(11345,11060,11340,'Увайима',10000),(11347,11060,11346,'Иамагата',10000),(11348,11060,11346,'Ионезава',10000),(11349,11060,11346,'Саката',10000),(11350,11060,11346,'Тендо',10000),(11351,11060,11346,'Тсуруока',10000),(11352,11060,11346,'Тсучиура',10000),(11353,11060,11346,'Шинйо',10000),(11355,11060,11354,'Ивакуни',10000),(11356,11060,11354,'Онода',10000),(11357,11060,11354,'Токуиама',10000),(11358,11060,11354,'Убе',10000),(11359,11060,11354,'Хаги',10000),(11360,11060,11354,'Хофу',10000),(11361,11060,11354,'Шимоносеки',10000),(11362,11060,11354,'Ямагучи',10000),(11364,11060,11363,'Кофу',10000),(278009,81,82,'Биласувар',10000),(278010,245,277654,'Апаран',10000),(278011,245,277654,'Ванадзор',10000),(278012,245,277654,'Севан',10000),(278013,1894,277655,'Ак-Коль',10000),(278014,1894,277655,'Актобе',10000),(278015,1894,277655,'Акший',10000),(278016,1894,277655,'Аршалы',10000),(278017,1894,277655,'Атбасар',10000),(278018,1894,277655,'Атырау',10000),(278019,1894,277655,'Балкашино',10000),(278020,1894,277655,'Жезказган',10000),(278021,1894,277655,'Кокшетау',10000),(278022,1894,277655,'Костанай',10000),(278023,1894,277655,'Курчатов',10000),(278024,1894,277655,'Кызылорда',10000),(278025,1894,277655,'Махамбет',10000),(278026,1894,277655,'Уральск',10000),(278027,1894,277655,'Шымкент',10000),(278028,2303,2316,'Ак-Суу',10000),(278029,2303,2316,'Ананьево',10000),(278030,2303,2316,'Араван',10000),(278031,2303,2316,'Балыкчи',10000),(278032,2303,2316,'Беловодское',10000),(278033,2303,2316,'Бишкек',10000),(278034,2303,2316,'Боконбаевское',10000),(278035,2303,2316,'Жалал Абад',10000),(278036,2303,2316,'Ивановка',10000),(278037,2303,2316,'Каинда',10000),(278038,2303,2316,'Кант',10000),(278039,2303,2316,'Кара-Балта',10000),(278040,2303,2316,'Караван',10000),(278041,2303,2316,'Каракол',10000),(278042,2303,2316,'Кемин',10000),(278043,2303,2316,'Кербен',10000),(278044,2303,2316,'Кызыл Суу',10000),(278045,2303,2316,'Лебединовка',10000),(278046,2303,2316,'Майлуу-Суу',10000),(278047,2303,2316,'Нарын',10000),(278048,2303,2316,'Ош',10000),(278049,2303,2316,'Пульгон',10000),(278050,2303,2316,'Сокулук',10000),(278051,2303,2316,'Талас',10000),(278052,2303,2316,'Таш-Кумыр',10000),(278053,2303,2316,'Токмак',10000),(278054,2303,2316,'Тюп',10000),(278055,2303,2316,'Чолпон-Ата',10000),(278056,2303,2316,'Чуй',10000),(278057,2303,2316,'Эски-Ноокат',10000),(278058,2448,2449,'Гулбене',10000),(278059,2514,2515,'Нида',10000),(278060,9575,9627,'Вахш',10000),(278061,9575,9627,'Джиргаталь',10000),(278062,9575,9627,'Дусти',10000),(278063,9575,9627,'Кофарнихон',10000),(278064,9575,9627,'Куйбышевск',10000),(278065,9575,9627,'Ленинский',10000),(278066,9575,9627,'Московский',10000),(278067,9575,9627,'Орджоникидзеабад',10000),(278068,9908,277656,'Армянск',10000),(278069,9908,277656,'Артек',10000),(278070,9908,277656,'Береговое',10000),(278071,9908,277656,'Ботаническое',10000),(278072,9908,277656,'Кастрополь',10000),(278073,9908,277656,'Кацивели',10000),(278074,9908,277656,'Кореиз',10000),(278075,9908,277656,'Красногвардейск',10000),(278076,9908,277656,'Краснокаменка',10000),(278077,9908,277656,'Курпаты',10000),(278078,9908,277656,'Ливадия',10000),(278079,9908,277656,'Мисхор',10000),(278080,9908,277656,'Олива',10000),(278081,9908,277656,'Оползневое',10000),(278082,9908,277656,'Парковое',10000),(278083,9908,277656,'Понизовка',10000),(278084,9908,277656,'Санаторное',10000),(278085,9908,277656,'Симеиз',10000),(278087,10968,10969,'Таллинн',10000),(278088,616,277657,'Авимор',10000),(278089,11002,277658,'Ада',10000),(278090,63,277659,'Айзенштадт',10000),(278091,428,277660,'Албена',10000),(278092,1707,277661,'Альмерия',10000),(278093,277551,277552,'Амстердам',10000),(278094,63,277659,'Амштеттен',10000),(278095,277555,277556,'Арад',10000),(278096,404,277662,'Арлон',10000),(278097,1012,277663,'Ауе',10000),(278098,1012,277663,'Бад Киссинген',10000),(278099,1012,277663,'Бад Херсфельд',10000),(278100,2897,277664,'Бельско-Бяла',10000),(278101,277555,277556,'Бистрица',10000),(278102,616,277657,'Борнмут',10000),(278103,428,277660,'Боровец',10000),(278104,277555,277556,'Ботошани',10000),(278105,63,277659,'Брегенц',10000),(278106,1012,277663,'Бремерхафен',10000),(278107,404,277662,'Брюгге',10000),(278108,10933,277665,'Бурлэнге',10000),(278109,277555,277556,'Бухарест',10000),(278110,1012,277663,'Вайден',10000),(278111,1012,277663,'Вайсенбург',10000),(278112,10904,277666,'Вайсенбург',10000),(278113,1707,277661,'Вальядолид',10000),(278114,1012,277663,'Варен',10000),(278115,10648,277667,'Васа',10000),(278116,1786,277668,'Венеция',10000),(278117,11002,277658,'Вране',10000),(278118,428,277660,'Враца',10000),(278119,11002,277658,'Вршац',10000),(278120,277551,277552,'Гаага',10000),(278121,277555,277556,'Галац',10000),(278122,1012,277663,'Гарделеген',10000),(278123,1707,277661,'Гвадалахара',10000),(278124,404,277662,'Гент',10000),(278125,1012,277663,'Геттинген',10000),(278126,63,277659,'Гмунден',10000),(278127,277553,277554,'Госпич',10000),(278128,277551,277552,'Гус',10000),(278129,277555,277556,'Дева',10000),(278130,277555,277556,'Джурджу',10000),(278131,11002,277658,'Димитровград',10000),(278132,277551,277552,'Дордрехт',10000),(278133,63,277659,'Дорнбирн',10000),(278134,1012,277663,'Дортмунд',10000),(278135,277553,277554,'Дубровник',10000),(278136,10668,277669,'Дюнкерк',10000),(278137,428,277660,'Елхово',10000),(278138,277553,277554,'Загреб',10000),(278139,2897,277664,'Замосць',10000),(278140,1012,277663,'Засниц',10000),(278141,2897,277664,'Зелена Гура',10000),(278142,428,277660,'Золотые Пески',10000),(278143,1707,277661,'Ибиза',10000),(278144,10648,277667,'Ивало',10000),(278145,10648,277667,'Иломантси',10000),(278146,63,277659,'Инсбрук',10000),(278147,1786,277668,'Иска',10000),(278148,1786,277668,'Кампобассо',10000),(278149,428,277660,'Камчия',10000),(278150,277555,277556,'Карансебеш',10000),(278151,10874,277670,'Карлови-Вари',10000),(278152,1707,277661,'Картахена',10000),(278153,1707,277661,'Касерес',10000),(278154,1012,277663,'Кельн',10000),(278155,11002,277658,'Кикинда',10000),(278156,63,277659,'Кицбюэль',10000),(278157,277555,277556,'Клуж-Напока',10000),(278158,11002,277658,'Колашин',10000),(278159,277555,277556,'Констанца',10000),(278160,1707,277661,'Кордоба',10000),(278161,1707,277661,'Коста Брава',10000),(278162,1707,277661,'Коста Дорада',10000),(278163,1707,277661,'Коста дель Соль',10000),(278164,10648,277667,'Котка',10000),(278165,5673,277671,'Кочевье',10000),(278166,277555,277556,'Крайова',10000),(278167,428,277660,'Кранево',10000),(278168,1786,277668,'Кротоне',10000),(278169,11002,277658,'Крушевац',10000),(278170,63,277659,'Куфштайн',10000),(278171,428,277660,'Кюстендил',10000),(278172,1707,277661,'Ла-Корунья',10000),(278173,2897,277664,'Лемборк',10000),(278174,1012,277663,'Линген',10000),(278175,428,277660,'Ловеч',10000),(278176,10904,277666,'Локарно',10000),(278177,10933,277665,'Лулеа',10000),(278178,277551,277552,'Маастрихт',10000),(278179,63,277659,'Майрхофен',10000),(278180,10933,277665,'Малунг',10000),(278181,277555,277556,'Мангалия',10000),(278182,616,277657,'Махриханиш',10000),(278183,10668,277669,'Мерибель',10000),(278184,10648,277667,'Миккели',10000),(278185,428,277660,'Михайловград',10000),(278186,404,277662,'Монс',10000),(278187,10648,277667,'Муонио',10000),(278188,1707,277661,'Мурсия',10000),(278189,1012,277663,'Мюльдорф',10000),(278190,1012,277663,'Мюнхен',10000),(278191,1707,277661,'Наварра',10000),(278192,404,277662,'Намюр',10000),(278193,1786,277668,'Неаполь',10000),(278194,11002,277658,'Ниш',10000),(278195,1012,277663,'Ольденбург',10000),(278196,277555,277556,'Орадя',10000),(278197,2897,277664,'Остроленка',10000),(278198,10874,277670,'Пардубице',10000),(278199,10648,277667,'Пелло',10000),(278200,1786,277668,'Перуджа',10000),(278201,277555,277556,'Петрошани',10000),(278202,11002,277658,'Печ',10000),(278203,1012,277663,'Плауен',10000),(278204,11002,277658,'Плевля',10000),(278205,277555,277556,'Плоешти',10000),(278206,10874,277670,'Пльзень',10000),(278207,5673,277671,'Постойна',10000),(278208,1786,277668,'Потенца',10000),(278209,10874,277670,'Прага',10000),(278210,11002,277658,'Призрен',10000),(278211,2897,277664,'Пшемысль',10000),(278212,1786,277668,'Пьяченца',10000),(278213,428,277660,'Разград',10000),(278214,2897,277664,'Рацибуж',10000),(278215,277553,277554,'Риека',10000),(278216,1786,277668,'Римини',10000),(278217,10648,277667,'Рованиеми',10000),(278218,277555,277556,'Роман',10000),(278219,277551,277552,'Роттердам',10000),(278220,428,277660,'Русе',10000),(278221,428,277660,'Сандански',10000),(278222,277555,277556,'Сату-Маре',10000),(278223,10933,277665,'Свег',10000),(278224,428,277660,'Свиленград',10000),(278225,2897,277664,'Свиноуйсвце',10000),(278226,428,277660,'Свиштов',10000),(278227,1707,277661,'Сеговия',10000),(278228,277555,277556,'Сибиу',10000),(278229,1786,277668,'Сиракуза',10000),(278230,277553,277554,'Славонский Брод',10000),(278231,11002,277658,'Сомбор',10000),(278232,1707,277661,'Сория',10000),(278233,277553,277554,'Сплит',10000),(278234,10648,277667,'Суомисалми',10000),(278235,11002,277658,'Сьеница',10000),(278236,10648,277667,'Тампере',10000),(278237,1786,277668,'Тарвизио',10000),(278238,1707,277661,'Теруэль',10000),(278239,1012,277663,'Тетеров',10000),(278240,11002,277658,'Тиват',10000),(278241,277555,277556,'Тимишоара',10000),(278242,1707,277661,'Толедо',10000),(278243,1707,277661,'Тортоса',10000),(278244,2897,277664,'Торунь',10000),(278245,63,277659,'Трибен',10000),(278246,428,277660,'Тырговиште',10000),(278247,277555,277556,'Тырговиште',10000),(278248,277555,277556,'Тыргу-Жиу',10000),(278250,11002,277658,'Улцинь',10000),(278252,10933,277665,'Упсала',10000),(278253,2897,277664,'Устка',10000),(278254,277551,277552,'Утрехт',10000),(278255,1786,277668,'Фаенца',10000),(278256,63,277659,'Фельдкирх',10000),(278257,277555,277556,'Фетешти',10000),(278258,63,277659,'Филлах',10000),(278259,277555,277556,'Флорешти',10000),(278260,1012,277663,'Фрайбург',10000),(278261,63,277659,'Фрайштадт',10000),(278262,277555,277556,'Фэгэраш',10000),(278263,428,277660,'Хасково',10000),(278264,404,277662,'Хасселт',10000),(278265,1707,277661,'Хаэн',10000),(278266,277553,277554,'Хвар',10000),(278267,1012,277663,'Хузум',10000),(278268,2897,277664,'Ченстохова',10000),(278269,428,277660,'Шабла',10000),(278270,10668,277669,'Шамони',10000),(278271,277553,277554,'Шибеник',10000),(278272,277551,277552,'Эйндховен',10000),(278273,2897,277664,'Эльблонг',10000),(278274,277555,277556,'Яссы',10000),(279078,3159,2499002,'Аган',10000),(279122,277563,277564,'Куала-Лумпур',10000),(279123,5681,277672,'Лос-Анджелес',10000),(279124,277565,277566,'Сингапур',10000),(279125,277567,277568,'Тайбэй',10000),(279126,277561,277562,'Амман',10000),(279127,277559,277560,'Джакарта',10000),(279128,1451,277673,'Пуна',10000),(279129,1451,277673,'Бангалор',10000),(279130,1451,277673,'Хайдарабад',10000),(279131,1451,277673,'Мадрас',10000),(279132,1451,277673,'Дели',10000),(279133,1451,277673,'Калькутта',10000),(279134,1451,277673,'Бомбей',10000),(279135,1380,277674,'Александрия',10000),(279136,277557,277558,'Гонконг',10000),(279137,5681,277672,'Сиэтл',10000),(279138,277569,277570,'Ашгабад',10000),(279139,277569,277570,'Кушка',10000),(279140,277569,277570,'Тагтабазар',10000),(1920542,10968,10969,'Куресааре',10000),(1923078,2374,2379,'Маньчжурия',10000),(1923662,3159,5356,'Когалым',10000),(1924057,616,617,'Милтон Кинз',10000),(1924171,3159,3251,'Мирный',10000),(1924532,3159,4925,'Шлиссельбург',10000),(1924719,2880,1924623,'Бодэ',10000),(1924732,2880,1924623,'Боде',10000),(1925143,3159,3761,'Кёнигсберг',10000),(1929637,3159,3296,'Бураево',10000),(1998542,3159,1998532,'Майкоп',10000),(1998584,3159,1998532,'Адыгейск',10000),(2005016,3159,5507,'Снежинск',10000),(2019672,3159,5326,'Белев',10000),(2052982,3159,3529,'нововоронеж',10000),(2116660,3159,3703,'Саянск',10000),(2183651,428,277660,'Добрич',10000),(2184457,3159,5161,'Десногорск',10000),(2185271,3159,3563,'Саров',10000),(2185858,3159,4052,'Курганинск',10000),(2191338,9908,10559,'Нетешин',10000),(2312857,2514,2515,'Висагинас',10000),(2316517,3159,2316497,'Саяногорск',10000),(2331530,1366,2331485,'Копенгаген',10000),(2331847,1012,1152,'Дортмунд',10000),(2372615,582051,2316780,'Дубаи',10000),(2373250,3141,2284951,'Фаро',10000),(2411629,3159,5356,'Излучинск',10000),(2412951,582031,2412885,'Сантьяго',10000),(2413243,3159,4481,'Заозерск',10000),(2414986,9787,9832,'Зарафшан',10000),(2415620,3159,2415585,'Анадырь',10000),(2416390,1786,2416357,'о. Сан-Джорджо Маджоре',10000),(2479040,3159,4105,'Шарыпово',10000),(2494153,582060,2494137,'Бейрут',10000),(2496371,582067,1923301,'Дамаск',10000),(2498687,582077,2483267,'Гавана',10000),(2499035,3159,2499002,'Нижневартовск',10000),(2499082,3159,5080,'Новоуральск',10000),(2505931,2505884,2505921,'Бейрут',10000),(2564724,1894,2564700,'Степногорск',10000),(2567466,2567393,2567441,'Тегусигальпа',10000),(2577926,2880,2577870,'Олесюн',10000),(2578039,2577958,2578001,'Санто-доминго',10000),(2687765,2687701,2687732,'Улан-батор',10000),(2713541,10648,2713529,'Kouvola',10000),(2724870,9908,10111,'Энергодар',10000),(2812698,3159,5356,'Муравленко',10000),(3024146,1012,3024114,'Саарлэнд',10000),(3118538,3159,4312,'Королев',10000),(3138835,3159,3703,'Чунский',10000),(3138841,3159,4312,'Протвино',10000),(3141531,616,617,'Оксфорд',10000),(3145145,3159,3407,'Таксимо',10000),(3408643,3159,5507,'Трехгорный',10000),(3409478,3159,4105,'Зеленогорск',10000),(3410035,1380,3409961,'Шарм эль шейх',10000),(3410583,3410238,3410574,'Багдад',10000),(3410623,3410238,3410602,'Басра',10000),(3410656,3410238,3410645,'Мосул',10000),(3411630,3159,3872,'Елизово',10000),(3411741,3159,3703,'Култук',10000),(3473821,3159,5356,'Ларьяк',10000),(3474011,3159,5225,'Первомайский',10000),(3503075,2374,3331120,'Пекин',10000),(3535020,3159,5356,'Губкинский',10000),(3661609,3661568,3661590,'Йоханесбург',10000),(3662512,1012,1083,'Гральхейм',10000),(3663694,582041,3663676,'Скопье',10000),(3826797,582105,1930798,'Дуглас',10000),(3826891,582105,1930798,'Ончан',10000),(3827069,582105,1930798,'Рамси',10000),(3827103,582105,1930798,'Пил',10000),(3827174,582105,1930798,'Каслтаун',10000),(3827336,582105,1930798,'Порт-Эрин',10000),(3827374,582105,1930798,'Порт-Сент-Мэри',10000),(3839871,1012,1064,'Нойётинг',10000),(3845619,9908,10354,'Южноукраинск',10000),(3863861,2374,2426,'Циндао',10000),(3864538,2788,2789,'Днестровск',10000),(3881459,3159,3371,'Дятьково',10000),(4041912,3159,2499002,'Лянтор',10000),(4042496,582065,4042477,'Морокко',10000),(4049698,1012,1152,'Beckum',10000),(4049790,10648,277667,'Иматра',10000),(4055849,5681,6367,'Сент-Луис',10000),(4093520,3159,5246,'Альметьевск',10000),(4093601,1707,4093580,'Girona',10000),(4093692,3159,2316497,'Абакан',10000),(4119784,582065,4119771,'Танжер',10000),(4121579,245,277654,'Гюмри',10000),(4156345,3159,2499002,'Югорск',10000),(4156678,9908,9964,'Першотравенск',10000),(4157180,9575,9605,'Худжанд',10000),(4159626,1393,1403,'Ариэль',10000),(4211196,1894,277655,'Байконур',10000),(4267241,245,277654,'Раздан',10000),(4276360,3159,5356,'Белоярский',10000),(4285318,1012,1064,'Дингольфинг',10000),(4285366,3159,3784,'Удомля',10000),(4285519,3159,5507,'Озерск',10000),(4285678,1012,1120,'Брауншвейг',10000),(4285698,1012,1120,'Salzgitter',10000),(4691664,9908,10165,'Славутич',10000),(4691841,2374,4691804,'Гуанчжоу',10000),(4692641,1393,1416,'Кирьят-Ата',10000),(4694853,1393,1416,'Кирьят-Ата',10000),(4696311,10968,10969,'Палдиски',10000),(4697440,10968,10969,'Палдиски',10000),(4777963,3159,5052,'Южно-Курильск',10000),(4778019,10933,4778004,'Хапаранда',10000),(4778059,1894,2564700,'Астана',10000),(4778176,924,945,'Мошонмадьяровар',10000),(4778382,1393,1416,'Мигдаль аЭмек',10000),(4778470,3159,4481,'Снежногорск',10000),(4778496,3159,5080,'Лесной',10000),(4778522,3159,2499002,'Мегион',10000),(4778544,1393,1416,'Кацрин',10000),(4869089,1380,277674,'Хургада',10000),(4869166,3159,5191,'Железноводск',10000),(5019404,3159,5019394,'Салехард',10000),(5020365,3159,5019394,'Новый Уренгой',10000),(5020595,3159,4481,'Полярные Зори',10000),(5020614,3159,4105,'Сосновоборск',10000),(5020665,3159,4891,'Сургут (Самарская обл.)',10000),(5020681,3159,2499002,'Сургут',10000),(5036894,1393,1449,'Модиин',10000),(5040660,2297,2298,'Ларнака',10000),(5252498,3159,5019394,'Муравленко',10000),(5498759,3159,5019394,'Губкинский',10000),(5555962,3159,3407,'Северобайкальск',10000),(5556050,3159,3952,'Вятские Поляны',10000),(5556142,2172,2242,'Торнхилл',10000),(5556154,2172,2242,'Уиллоудэйл',10000),(5556193,2172,2242,'Уиллоудэйл',10000),(5556230,582046,5556213,'Лима',10000),(5556340,1012,1064,'Бургхаузен',10000),(5640417,10648,5640357,'Joensuu',10000),(5640607,1012,1201,'Ноймюнстер',10000),(5640888,582090,5640862,'Nabeul',10000),(5641077,3159,5019394,'Пуровск',10000),(5700918,10968,10969,'Азери',10000),(5908265,3159,3675,'Кохма',10000),(5908510,9908,10227,'Щёлкино',10000),(5908547,3159,5019394,'Надым',10000),(5908584,277555,277556,'Брашов',10000),(5908636,2880,2577870,'Молде',10000),(5908671,1393,1403,'Од-а Шарон',10000),(5911547,1786,1802,'Падуя',10000),(5911563,1786,1802,'Венеция',10000),(6113699,3159,2499002,'Нефтеюганск',10000),(6128604,582050,6128546,'Бангкок',10000),(6128656,1258,6128641,'Керкира',10000),(6128703,582082,6128697,'Мапуто',10000),(6453661,582040,6453632,'Dagu',10000),(6454651,3159,5356,'Мегион',10000),(6456567,3159,4105,'Кодинск',10000),(6460485,582043,6460443,'Моста',10000),(6711408,3159,2415585,'Билибино',10000),(6712230,1366,2077237,'Хельсингор',10000),(7592215,3159,4800,'Егорлыкская',10000),(7592385,1012,1053,'Майнинген',10000),(7592923,3159,4312,'Байконур',10000),(7593075,3159,4312,'Краснознаменск',10000),(7593157,2297,2300,'Гирне',10000),(7593225,3159,2499002,'Нягань',10000),(7593385,582044,7593366,'Исламабад',10000),(7593394,582044,7593366,'Карачи',10000),(7593405,582044,7593366,'Лахоре',10000),(7715963,582082,6128697,'Бейра',10000),(7715991,582082,6128697,'Нампула',10000),(7716005,582082,6128697,'Пемба',10000),(7717502,3159,2499002,'Излучинск',10000),(7717702,3159,5019394,'Ноябрьск',10000),(7717820,2374,4691804,'Женьжень',10000),(7717879,1012,1152,'Нидеркассель',10000),(7718155,1012,1083,'Роттвайл',10000),(7718164,1012,1083,'Туттлинген',10000),(7718175,1012,1083,'Филлинген-Швеннинген',10000),(7718218,1012,1152,'Хамм',10000),(7718652,3159,2499002,'Ханты-Мансийск',10000),(7718848,1012,1064,'Розенхейм',10000),(7719220,9908,10504,'Мерефа',10000),(7719232,9908,10504,'Песочин',10000),(7719603,11060,11094,'Цущиура',10000),(7719867,2172,2242,'Ньюмаркет',10000),(7719915,582064,7719907,'Кито',10000),(7720010,9908,10165,'Вышгород',10000),(7720744,10904,277666,'Санкт-Галлен',10000),(10498697,3159,5191,'Солнечнодольск',10000),(10499269,3159,5019394,'Тарко',10000),(10499434,10933,4778004,'Кируна',10000),(10499564,1393,1429,'Наария',10000),(10499672,3159,3872,'Озерновский',10000),(10499792,9908,10165,'Боярка',10000),(10500023,3159,4925,'Коммунар',10000),(10500094,3159,5191,'Изобильный',10000),(10500382,3159,3468,'Кириллов',10000),(10500476,3159,4891,'Красный Яр',10000),(10500739,1786,1810,'Амалфи',10000),(10501002,3159,5291,'Северск',10000),(10501179,9908,10002,'Константиновка',10000),(10501439,1012,1043,'Волмирстэдт',10000),(10501749,9908,10227,'Армянск',10000),(10502412,1786,1810,'Сорренто',10000),(10502714,3159,4105,' Железногорск',10000),(10502867,63,75,'Мистельбах',10000),(10504604,3159,4925,'Пикалёво',10000),(10505044,11060,11178,'Ниигата',10000),(10505313,10933,10956,'Еребру',10000),(10505384,428,446,'Карлово',10000),(10505475,3159,5191,'Зеленокумск',10000),(10685075,2880,2881,'Несбиен',10000),(10688837,3159,2499002,'Покачи',10000),(10689767,3159,4734,'Фокино',10000),(11563592,9908,10407,'Комсомольск',10000),(11564839,582029,11564803,'Нассау',10000),(11566040,582040,11566007,'Кимпо',10000),(11567319,3159,2499002,'Радужный',10000),(11568523,1894,1934356,'Атырау',10000),(11568719,9787,9859,'Ширин',10000),(11568964,5681,7641,'Фредерик',10000),(11569100,3159,2499002,'Урай',10000),(11569394,3159,2499002,'Пыть-Ях',10000),(11910622,3159,2499002,'Игрим',10000),(11910929,5681,6291,'Августа',10000),(11911051,3159,5356,'Унъюган',10000),(11911759,1393,1403,'Кфар Саба',10000),(12363228,248,330,'Дятлово',10000),(12364262,2837,2844,'Крайстчерч',10000),(12364794,3159,2499002,'Лангепас',10000),(12367130,1894,1934356,'Уральска',10000),(12370062,9908,10373,'Южный',10000),(12370243,3159,2499002,'Приобье',10000),(12370550,5681,6591,'Тахо',10000),(12370850,5681,8516,'Строудсбург',10000),(12370942,3159,3872,'Вилючинск',10000),(12371093,3159,5019394,'Заполярный',10000),(15789520,582106,15789405,'Кингстон',10000),(15789521,3159,15789410,'Магас',10000),(15789522,3159,15789410,'Карабулак',10000),(15789523,3159,15789410,'Джейрах',10000),(15789524,3159,15789410,'Плиево',10000),(15789525,3159,15789410,'Барсуки',10000),(15789526,3159,15789410,'Экажево',10000),(15789527,3159,15789410,'Али-Юрт',10000),(15789528,3159,15789410,'Сурхахи',10000),(15789529,3159,15789410,'Яндаре',10000),(15789530,3159,15789410,'Троицкая',10000),(15789531,3159,15789410,'Нестеровская',10000),(15789532,3159,15789410,'Алхасты',10000),(15789533,3159,15789410,'Галашки',10000),(15789534,3159,15789410,'Мужичи',10000),(15789535,3159,15789410,'Алкун',10000),(15789536,3159,15789410,'Гази-Юрт',10000),(15789538,3159,15789410,'Аршты',10000),(15789539,3159,15789410,'Верхние Ачалуки',10000),(15789540,3159,15789410,'Средние Ачалуки',10000),(15789541,3159,15789410,'Нижние Ачалуки',10000),(15789542,3159,15789410,'Аки-Юрт',10000),(15789543,3159,15789410,'Новый Редант',10000),(15789544,3159,15789410,'Сагопши',10000),(15789545,3159,15789410,'Пседах',10000),(15789546,3159,15789410,'Инарки',10000),(15789547,3159,15789410,'Гайрбек-Юрт',10000),(15789548,3159,15789410,'Вежарий-Юрт',10000),(15789549,3159,15789410,'Кантышево',10000),(15789550,3159,15789410,'Зязиков-Юрт',10000),(15789552,3159,15789410,'Чемульга',10000),(15789553,3159,3503,'Красавино',15);
/*!40000 ALTER TABLE `cms_geo_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_geo_countries`
--

DROP TABLE IF EXISTS `cms_geo_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_geo_countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `alpha2` char(2) NOT NULL DEFAULT '',
  `alpha3` char(3) NOT NULL DEFAULT '',
  `iso` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `alpha2` (`alpha2`),
  KEY `alpha3` (`alpha3`),
  KEY `iso` (`iso`),
  KEY `ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3661569 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_geo_countries`
--

LOCK TABLES `cms_geo_countries` WRITE;
/*!40000 ALTER TABLE `cms_geo_countries` DISABLE KEYS */;
INSERT INTO `cms_geo_countries` VALUES (4,'Австралия','AU','AUS',36,100),(63,'Австрия','AT','AUT',40,100),(81,'Азербайджан','AZ','AZE',31,100),(173,'Ангилья','AI','AIA',660,100),(177,'Аргентина','AR','ARG',32,100),(245,'Армения','AM','ARM',51,100),(248,'Беларусь','BY','BLR',112,3),(401,'Белиз','BZ','BLZ',84,100),(404,'Бельгия','BE','BEL',56,100),(425,'Бермуды','BM','BMU',60,100),(428,'Болгария','BG','BGR',100,100),(467,'Бразилия','BR','BRA',76,100),(616,'Великобритания','GB','GBR',826,100),(924,'Венгрия','HU','HUN',348,100),(971,'Вьетнам','VN','VNM',704,100),(994,'Гаити','HT','HTI',332,100),(1007,'Гваделупа','GP','GLP',312,100),(1012,'Германия','DE','DEU',276,100),(1206,'Голландия','NL','NLD',528,100),(1258,'Греция','GR','GRC',300,100),(1280,'Грузия','GE','GEO',268,100),(1366,'Дания','DK','DNK',208,100),(1380,'Египет','EG','EGY',818,100),(1393,'Израиль','IL','ISR',376,100),(1451,'Индия','IN','IND',356,100),(1663,'Иран','IR','IR',364,100),(1696,'Ирландия','IE','IRL',372,100),(1707,'Испания','ES','ESP',724,100),(1786,'Италия','IT','ITA',380,100),(1894,'Казахстан','KZ','KAZ',398,4),(2163,'Камерун','CM','CMR',120,100),(2172,'Канада','CA','CAN',124,100),(2297,'Кипр','CY','CYP',196,100),(2303,'Кыргызстан','KG','KGZ',417,100),(2374,'Китай','CN','CHN',156,100),(2430,'Коста-Рика','CR','CRI',188,100),(2443,'Кувейт','KW','KWT',414,100),(2448,'Латвия','LV','LVA',428,100),(2509,'Ливия','LY','LBY',434,100),(2514,'Литва','LT','LTU',440,100),(2614,'Люксембург','LU','LUX',442,100),(2617,'Мексика','MX','MEX',484,100),(2788,'Молдова','MD','MDA',498,100),(2833,'Монако','MC','MCO',492,100),(2837,'Новая Зеландия','NZ','NZL',554,100),(2880,'Норвегия','NO','NOR',578,100),(2897,'Польша','PL','POL',616,100),(3141,'Португалия','PT','PRT',620,100),(3156,'Реюньон','RE','REU',638,100),(3159,'Россия','RU','RUS',643,1),(5647,'Сальвадор','SV','SLV',222,100),(5666,'Словакия','SK','SVK',703,100),(5673,'Словения','SI','SVN',705,100),(5678,'Суринам','SR','SUR',740,100),(5681,'США','US','USA',0,100),(9575,'Таджикистан','TJ','TJK',762,100),(9638,'Туркменистан','TM','TKM',795,100),(9701,'Туркс и Кейкос','','',0,100),(9705,'Турция','TR','TUR',792,100),(9782,'Уганда','UG','UGA',800,100),(9787,'Узбекистан','UZ','UZB',860,100),(9908,'Украина','UA','UKR',804,2),(10648,'Финляндия','FI','FIN',246,100),(10668,'Франция','FR','FRA',250,100),(10874,'Чехия','CZ','CZE',203,100),(10904,'Швейцария','CH','CHE',756,100),(10933,'Швеция','SE','SWE',752,100),(10968,'Эстония','EE','EST',233,100),(11002,'Югославия','','',0,100),(11014,'Южная Корея','KR','KOR',410,100),(11060,'Япония','JP','JPN',392,100),(277551,'Нидерланды','NL','NLD',528,100),(277553,'Хорватия','HR','HRV',191,100),(277555,'Румыния','RO','ROU',642,100),(277557,'Гонконг','HK','HKG',344,100),(277559,'Индонезия','ID','IDN',360,100),(277561,'Иордания','JO','JOR',400,100),(277563,'Малайзия','MY','MYS',458,100),(277565,'Сингапур','SG','SGP',702,100),(277567,'Тайвань','TW','TWN',158,100),(277569,'Туркмения','TM','TKM',795,100),(582029,'Карибы','','',0,100),(582031,'Чили','CL','CHL',152,100),(582040,'Корея','KR','KOR',410,100),(582041,'Македония','MK','MKD',807,100),(582043,'Мальта','MT','MLT',470,100),(582044,'Пакистан','PK','PAK',586,100),(582046,'Перу','PE','PER',604,100),(582050,'Тайланд','TH','THA',764,100),(582051,'О.А.Э.','AE','ARE',784,100),(582060,'Ливан','LB','LBN',422,100),(582064,'Эквадор','EC','ECU',218,100),(582065,'Марокко','MA','MAR',504,100),(582067,'Сирия','SY','SYR',760,100),(582077,'Куба','CU','CUB',192,100),(582082,'Мозамбик','MZ','MOZ',508,100),(582090,'Тунис','TN','TUN',788,100),(582105,'Остров Мэн','','',0,100),(582106,'Ямайка','JM','JAM',388,100),(2505884,'Ливан','LB','LBN',422,100),(2567393,'Гондурас','HN','HND',340,100),(2577958,'Доминиканская республика','DO','DOM',214,100),(2687701,'Монголия','MN','MNG',496,100),(3410238,'Ирак','IQ','IRQ',368,100),(3661568,'ЮАР','ZA','ZAF',710,100);
/*!40000 ALTER TABLE `cms_geo_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_geo_regions`
--

DROP TABLE IF EXISTS `cms_geo_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_geo_regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `ordering` int(11) unsigned NOT NULL DEFAULT '1000',
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15789411 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_geo_regions`
--

LOCK TABLES `cms_geo_regions` WRITE;
/*!40000 ALTER TABLE `cms_geo_regions` DISABLE KEYS */;
INSERT INTO `cms_geo_regions` VALUES (5,4,'Виктория',1000),(16,4,'Западная Австралия',1000),(23,4,'Кинсленд',1000),(35,4,'Новый Южный Уэльс',1000),(51,4,'Северная Территория',1000),(54,4,'Тасмания',1000),(58,4,'Территория Федеральной столицы',1000),(60,4,'Южная Австралия',1000),(64,63,'Вена',1000),(66,63,'Верхняя Австрия',1000),(70,63,'Зальцбург',1000),(72,63,'Каринтия',1000),(75,63,'Нижняя Австрия',1000),(77,63,'Штирия',1000),(82,81,'Азербайджан',1000),(164,81,'Нагорный Карабах',1000),(167,81,'Нахичеванская обл.',1000),(174,173,'Anguilla',1000),(178,177,'Буэнос-Айрес',1000),(194,177,'Жужуй',1000),(196,177,'Катамарка',1000),(198,177,'Кордоба',1000),(204,177,'Корриентес',1000),(207,177,'Ла-Пампа',1000),(210,177,'Ла-Риоха',1000),(212,177,'Мендоса',1000),(215,177,'Мисьонес',1000),(217,177,'Неукен',1000),(219,177,'Сальта',1000),(221,177,'Сан-Луис',1000),(223,177,'Сан-Хуан',1000),(225,177,'Санта-Крус',1000),(227,177,'Санта-Фе',1000),(230,177,'Сантьяго-дель-Эстеро',1000),(232,177,'Тукуман',1000),(234,177,'Формоса',1000),(236,177,'Чако',1000),(239,177,'Чубут',1000),(241,177,'Энтре-Риос',1000),(246,245,'Ереванская область',1000),(249,248,'Брестская обл.',1000),(272,248,'Витебская обл.',1000),(304,248,'Гомельская обл.',1000),(330,248,'Гродненская обл.',1000),(349,248,'Минская обл.',1000),(377,248,'Могилевская обл.',1000),(402,401,'Belize',1000),(405,404,'Антверпен',1000),(408,404,'Брюссель',1000),(410,404,'Восточная Фландрия',1000),(413,404,'Западная Фландрия',1000),(417,404,'Лимбург',1000),(419,404,'Льеж',1000),(422,404,'Эно',1000),(426,425,'Hamilton',1000),(429,428,'Бургас',1000),(431,428,'Варна',1000),(433,428,'Великотырново',1000),(436,428,'Видин',1000),(438,428,'Габрово',1000),(440,428,'Пазарджик',1000),(442,428,'Перник',1000),(444,428,'Плевен',1000),(446,428,'Пловдив',1000),(449,428,'Русе',1000),(451,428,'Силистра',1000),(453,428,'Сливен',1000),(455,428,'София град',1000),(457,428,'Стара Загора',1000),(460,428,'Хасково',1000),(463,428,'Шумен',1000),(465,428,'Ямбол',1000),(468,467,'Акри',1000),(470,467,'Алагоас',1000),(473,467,'Амазонас',1000),(475,467,'Амапа',1000),(477,467,'Баия',1000),(490,467,'Гояс',1000),(493,467,'Мараньян',1000),(497,467,'Мату-Гросу',1000),(499,467,'Мату-Гросу-ду-Сул',1000),(503,467,'Минас-Жерайс',1000),(521,467,'Пара',1000),(524,467,'Параиба',1000),(527,467,'Парана',1000),(533,467,'Пернамбуку',1000),(539,467,'Пиауи',1000),(542,467,'Рио-де-Жанейро',1000),(550,467,'Риу-Гранди-ду-Норти',1000),(554,467,'Риу-Гранди-ду-Сул',1000),(568,467,'Рондония',1000),(570,467,'Сан-Паулу',1000),(595,467,'Санта-Катарина',1000),(603,467,'Сеара',1000),(609,467,'Сержипи',1000),(611,467,'Федеральный округ',1000),(613,467,'Эспириту-Санту',1000),(617,616,'Англия',1000),(881,616,'Северная Ирландия',1000),(889,616,'Уэльс',1000),(899,616,'Шотландия',1000),(925,924,'Jasz-Nagykun-Szolnok',1000),(928,924,'Баранья',1000),(930,924,'Бач-Кишкун',1000),(934,924,'Бекеш',1000),(936,924,'Боршод-Абауй-Земплен',1000),(939,924,'Будапешт',1000),(941,924,'Ваш',1000),(943,924,'Веспрем',1000),(945,924,'Дьёр-Шопрон',1000),(947,924,'Зала',1000),(950,924,'Комаром',1000),(952,924,'Ноград',1000),(954,924,'Пешт',1000),(956,924,'Сабольч-Сатмар',1000),(958,924,'Фейер',1000),(961,924,'Хайду-Бихар',1000),(964,924,'Хевеш',1000),(967,924,'Чонград',1000),(972,971,'Dong Bang Song Cuu Long',1000),(975,971,'Dong Bang Song Hong',1000),(979,971,'Dong Nam',1000),(982,971,'Duyen Hai Mien Trung',1000),(987,971,'Khu Bon',1000),(990,971,'Mien Nui Va Trung',1000),(992,971,'Thai Nguyen',1000),(995,994,'Artibonite',1000),(997,994,'Grand`Anse',1000),(999,994,'Nord-Ouest',1000),(1001,994,'Ouest',1000),(1003,994,'Sud',1000),(1005,994,'Sud-Est',1000),(1008,1007,'Grande-Terre',1000),(1010,1007,'Бас-Тер',1000),(1013,1012,'Berlin',1000),(1015,1012,'Brandenburg',1000),(1020,1012,'Mecklenburg-Vorpommern',1000),(1028,1012,'Sachsen',1000),(1043,1012,'Sachsen-Anhalt',1000),(1053,1012,'Thuringen',1000),(1064,1012,'Бавария',1000),(1083,1012,'Баден-Вюртемберг',1000),(1103,1012,'Бремен',1000),(1106,1012,'Гамбург',1000),(1108,1012,'Гессен',1000),(1120,1012,'Нижняя Саксония',1000),(1137,1012,'Рейнланд-Пфальц',1000),(1149,1012,'Саарская область',1000),(1152,1012,'Северный Рейн-Вестфалия',1000),(1201,1012,'Шлезвиг-Гольштейн',1000),(1207,1206,'Гелдерланд',1000),(1213,1206,'Гронинген',1000),(1215,1206,'Дренте',1000),(1217,1206,'Лимбург',1000),(1222,1206,'Оверэйсел',1000),(1227,1206,'Северная Голландия',1000),(1235,1206,'Северный Брабант',1000),(1240,1206,'Утрехт',1000),(1244,1206,'Фрисландия',1000),(1246,1206,'Южная Голландия',1000),(1259,1258,'Ahaia',1000),(1261,1258,'Attiki',1000),(1264,1258,'Drama',1000),(1266,1258,'Evros',1000),(1268,1258,'Hania',1000),(1270,1258,'Ioannina',1000),(1272,1258,'Iraklion',1000),(1274,1258,'Kavala',1000),(1276,1258,'Magnisia',1000),(1278,1258,'Thessaloniki',1000),(1281,1280,'Абхазия',1000),(1292,1280,'Аджария',1000),(1296,1280,'Грузия',1000),(1363,1280,'Южная Осетия',1000),(1367,1366,'Baйле',1000),(1369,1366,'Ceверная Ютландия',1000),(1371,1366,'Opxyс',1000),(1374,1366,'Pocкилле',1000),(1376,1366,'Pибе',1000),(1378,1366,'Фюн',1000),(1381,1380,'Аль-Кахира',1000),(1383,1380,'Асуан',1000),(1385,1380,'Асьют',1000),(1387,1380,'Бени-Суэйф',1000),(1389,1380,'Гарбия',1000),(1391,1380,'Думьят',1000),(1394,1393,'Хадаром',1000),(1403,1393,'Хамеркац',1000),(1416,1393,'Хацафон',1000),(1429,1393,'Хефа',1000),(1440,1393,'Тель-Авив',1000),(1449,1393,'Иерусалим',1000),(1452,1451,'Bangla',1000),(1468,1451,'Chhattisgarh',1000),(1473,1451,'Karnataka',1000),(1488,1451,'Uttaranchal',1000),(1491,1451,'Андхра-Прадеш',1000),(1509,1451,'Ассам',1000),(1512,1451,'Бихар',1000),(1521,1451,'Гуджарат',1000),(1539,1451,'Джамму и Кашмир',1000),(1545,1451,'Керала',1000),(1548,1451,'Мадхья-Прадеш',1000),(1561,1451,'Манипур',1000),(1563,1451,'Махараштра',1000),(1586,1451,'Мегхалая',1000),(1588,1451,'Орисса',1000),(1591,1451,'Пенджаб',1000),(1596,1451,'Пондишери',1000),(1598,1451,'Раджастхан',1000),(1612,1451,'Тамилнад',1000),(1629,1451,'Трипура',1000),(1631,1451,'Уттар-Прадеш',1000),(1656,1451,'Харьяна',1000),(1661,1451,'Чандигарх',1000),(1664,1663,'Azarbayjan-e Khavari',1000),(1667,1663,'Esfahan',1000),(1669,1663,'Hamadan',1000),(1671,1663,'Kordestan',1000),(1673,1663,'Markazi',1000),(1675,1663,'Sistan-e Baluches',1000),(1677,1663,'Yazd',1000),(1679,1663,'Керман',1000),(1681,1663,'Керманшахан',1000),(1683,1663,'Мазендеран',1000),(1686,1663,'Тегеран',1000),(1688,1663,'Фарс',1000),(1691,1663,'Хорасан',1000),(1693,1663,'Хузистан',1000),(1697,1696,'Cork',1000),(1699,1696,'Dublin',1000),(1702,1696,'Limerick',1000),(1704,1696,'Waterford',1000),(1708,1707,'Cantabria',1000),(1710,1707,'Ceuta',1000),(1712,1707,'Granada',1000),(1714,1707,'La Rioja',1000),(1716,1707,'Salamanca',1000),(1718,1707,'Алава',1000),(1720,1707,'Аликанте',1000),(1724,1707,'Альбасете',1000),(1726,1707,'Альмерия',1000),(1728,1707,'Астурия',1000),(1731,1707,'Барселона',1000),(1738,1707,'Бискайя',1000),(1740,1707,'Бургос',1000),(1742,1707,'Валенсия',1000),(1744,1707,'Валья­долид',1000),(1746,1707,'Кадис',1000),(1749,1707,'Касерес',1000),(1753,1707,'Кордова',1000),(1755,1707,'Лас-Пальмас',1000),(1757,1707,'Леон',1000),(1759,1707,'Лерида',1000),(1761,1707,'Луго',1000),(1763,1707,'Мадрид',1000),(1765,1707,'Малага',1000),(1767,1707,'Мурсия',1000),(1769,1707,'Острова Балеарские',1000),(1771,1707,'Паленсия',1000),(1774,1707,'Самора',1000),(1776,1707,'Санта-Крус-де-Тенерифе',1000),(1778,1707,'Сарагоса',1000),(1780,1707,'Севилья',1000),(1782,1707,'Сьюдад-Реаль',1000),(1784,1707,'Хаэн',1000),(1787,1786,'Абруцци',1000),(1789,1786,'Апулия',1000),(1802,1786,'Венеция',1000),(1806,1786,'Калабрия',1000),(1810,1786,'Кампания',1000),(1819,1786,'Лацио',1000),(1821,1786,'Лигурия',1000),(1826,1786,'Ломбардия',1000),(1838,1786,'Марке',1000),(1841,1786,'О. Сардиния',1000),(1844,1786,'О. Сицилия',1000),(1858,1786,'Пьемонт',1000),(1864,1786,'Тоскана',1000),(1876,1786,'Трентино-Альто-Адидже',1000),(1879,1786,'Умбрия',1000),(1882,1786,'Фриули-Венеция-Джулия',1000),(1885,1786,'Эмилия-Романья',1000),(1895,1894,'Актюбинская обл.',1000),(1911,1894,'Алма-Атинская обл.',1000),(1924,1894,'Восточно-Казахстанская обл.',1000),(1942,1894,'Гурьевская обл.',1000),(1954,1894,'Джамбулская обл.',1000),(1974,1894,'Джезказганская обл.',1000),(1994,1894,'Карагандинская обл.',1000),(2010,1894,'Кзыл-Ординская обл.',1000),(2021,1894,'Кокчетавская обл.',1000),(2040,1894,'Кустанайская обл.',1000),(2055,1894,'Мангышлакская обл.',1000),(2061,1894,'Павлодарская обл.',1000),(2074,1894,'Северо-Казахстанская обл.',1000),(2084,1894,'Семипалатинская обл.',1000),(2105,1894,'Талды-Курганская обл.',1000),(2120,1894,'Тургайская обл.',1000),(2128,1894,'Целиноградская обл.',1000),(2146,1894,'Чимкентская обл.',1000),(2164,2163,'Littoral',1000),(2166,2163,'Sudouest',1000),(2168,2163,'Северная',1000),(2170,2163,'Центральная',1000),(2173,2172,'Альберта',1000),(2181,2172,'Британская Колумбия',1000),(2201,2172,'Квебек',1000),(2229,2172,'Манитоба',1000),(2232,2172,'Новая Шотландия',1000),(2235,2172,'Нью-Брунсвик',1000),(2239,2172,'Ньюфаундленд',1000),(2242,2172,'Онтарио',1000),(2291,2172,'Принц Эдуард',1000),(2293,2172,'Саскачеван',1000),(2298,2297,'Government controlled area',1000),(2300,2297,'Turkish controlled area',1000),(2304,2303,'Иссык-Кульская обл.',1000),(2316,2303,'Кыргызстан',1000),(2327,2303,'Нарынская обл.',1000),(2340,2303,'Ошская обл.',1000),(2365,2303,'Таласская обл.',1000),(2375,2374,'Xinjiang',1000),(2379,2374,'Внутренняя Монголия',1000),(2382,2374,'Ганьсу',1000),(2386,2374,'Гуанси',1000),(2388,2374,'Ляонин',1000),(2393,2374,'Сычуань',1000),(2396,2374,'Фуцзянь',1000),(2398,2374,'Хубэй',1000),(2401,2374,'Хунань',1000),(2404,2374,'Хэбэй',1000),(2406,2374,'Хэйлунцзян',1000),(2408,2374,'Хэнань',1000),(2411,2374,'Цзилинь',1000),(2414,2374,'Цзянси',1000),(2416,2374,'Цзянсу',1000),(2419,2374,'Чжэцзян',1000),(2424,2374,'Шанхай',1000),(2426,2374,'Шаньдун',1000),(2428,2374,'Шаньси',1000),(2431,2430,'Alajuela',1000),(2433,2430,'Guanacaste',1000),(2435,2430,'Heredia',1000),(2437,2430,'Limon',1000),(2439,2430,'Puntarenas',1000),(2441,2430,'San Jose',1000),(2444,2443,'al-Jahra',1000),(2446,2443,'al-Kuwayt',1000),(2449,2448,'Латвия',1000),(2510,2509,'Tarabulus',1000),(2512,2509,'Бенгази',1000),(2515,2514,'Литва',1000),(2615,2614,'Люксембург',1000),(2618,2617,'Агуаскальентес',1000),(2620,2617,'Веракрус',1000),(2639,2617,'Герреро',1000),(2646,2617,'Гуанахуато',1000),(2656,2617,'Дуранго',1000),(2661,2617,'Идальго',1000),(2666,2617,'Кампече',1000),(2668,2617,'Керетаро',1000),(2670,2617,'Керетаро',1000),(2672,2617,'Коауила',1000),(2679,2617,'Колима',1000),(2683,2617,'Мехико',1000),(2690,2617,'Мичоакан',1000),(2700,2617,'Морелос',1000),(2704,2617,'Наярит',1000),(2709,2617,'Нижняя Калифорния',1000),(2713,2617,'Нуэво-Леон',1000),(2717,2617,'Оахака',1000),(2725,2617,'Пуэбла',1000),(2730,2617,'Сакатекас',1000),(2735,2617,'Сан-Луис-Потоси',1000),(2741,2617,'Синалоа',1000),(2746,2617,'Сонора',1000),(2755,2617,'Табаско',1000),(2759,2617,'Тамаулипас',1000),(2766,2617,'Федеральный округ',1000),(2768,2617,'Халиско',1000),(2778,2617,'Чиуауа',1000),(2780,2617,'Чьяпас',1000),(2786,2617,'Юкатан',1000),(2789,2788,'Молдова',1000),(2834,2833,'Монако',1000),(2838,2837,'Auckland',1000),(2841,2837,'Bay of Plenty',1000),(2844,2837,'Canterbury',1000),(2847,2837,'Gisborne',1000),(2849,2837,'Hawke`s Bay',1000),(2852,2837,'Manawatu-Wanganui',1000),(2855,2837,'Marlborough',1000),(2857,2837,'Nelson',1000),(2859,2837,'Northland',1000),(2861,2837,'Otago',1000),(2863,2837,'Southland',1000),(2866,2837,'Taranaki',1000),(2869,2837,'Tasman',1000),(2871,2837,'Waikato',1000),(2874,2837,'Wellington',1000),(2878,2837,'West Coast',1000),(2881,2880,'Бускеруд',1000),(2883,2880,'Вестагдер',1000),(2885,2880,'Нурлан',1000),(2887,2880,'Осло',1000),(2889,2880,'Ругаланн',1000),(2891,2880,'Сёр-Трённелаг',1000),(2893,2880,'Телемарк',1000),(2895,2880,'Хуралан',1000),(2898,2897,'Dolnoslaskie',1000),(2919,2897,'Kujawsko-Pomorskie',1000),(2929,2897,'Lubuskie',1000),(2937,2897,'Malopolskie',1000),(2958,2897,'Mazowieckie',1000),(2983,2897,'Podkarpackie',1000),(2994,2897,'Podlaskie',1000),(3003,2897,'Pomorskie',1000),(3018,2897,'Slaskie',1000),(3049,2897,'Swietokrzyskie',1000),(3056,2897,'Warminsko-Mazurskie',1000),(3068,2897,'Wielkopolskie',1000),(3090,2897,'Zachodnio-Pomorskie',1000),(3101,2897,'Лодзинское',1000),(3118,2897,'Люблинское',1000),(3133,2897,'Опольское',1000),(3142,3141,'Centro',1000),(3144,3141,'O-ва Мадейра',1000),(3146,3141,'Лисабон',1000),(3150,3141,'Орта',1000),(3157,3156,'Saint-Denis',1000),(3160,3159,'Алтайский край',1000),(3223,3159,'Амурская обл.',1000),(3251,3159,'Архангельская обл.',1000),(3282,3159,'Астраханская обл.',1000),(3296,3159,'Башкортостан(Башкирия)',1000),(3352,3159,'Белгородская обл.',1000),(3371,3159,'Брянская обл.',1000),(3407,3159,'Бурятия',1000),(3437,3159,'Владимирская обл.',1000),(3468,3159,'Волгоградская обл.',1000),(3503,3159,'Вологодская обл.',1000),(3529,3159,'Воронежская обл.',1000),(3563,3159,'Нижегородская (Горьковская)',1000),(3630,3159,'Дагестан',1000),(3673,3159,'Еврейская обл.',1000),(3675,3159,'Ивановская обл.',1000),(3703,3159,'Иркутская обл.',1000),(3751,3159,'Кабардино-Балкария',1000),(3761,3159,'Калининградская обл.',1000),(3784,3159,'Тверская обл.',1000),(3827,3159,'Калмыкия',1000),(3841,3159,'Калужская обл.',1000),(3872,3159,'Камчатская обл.',1000),(3892,3159,'Карелия',1000),(3921,3159,'Кемеровская обл.',1000),(3952,3159,'Кировская обл.',1000),(3994,3159,'Коми',1000),(4026,3159,'Костромская обл.',1000),(4052,3159,'Краснодарский край',1000),(4105,3159,'Красноярский край',1000),(4176,3159,'Курганская обл.',1000),(4198,3159,'Курская обл.',1000),(4227,3159,'Липецкая обл.',1000),(4243,3159,'Магаданская обл.',1000),(4270,3159,'Марий Эл',1000),(4287,3159,'Мордовия',1000),(4312,3159,'Москва и Московская обл.',1000),(4481,3159,'Мурманская обл.',1000),(4503,3159,'Новгородская обл.',1000),(4528,3159,'Новосибирская обл.',1000),(4561,3159,'Омская обл.',1000),(4593,3159,'Оренбургская обл.',1000),(4633,3159,'Орловская обл.',1000),(4657,3159,'Пензенская обл.',1000),(4689,3159,'Пермская обл.',1000),(4734,3159,'Приморский край',1000),(4773,3159,'Псковская обл.',1000),(4800,3159,'Ростовская обл.',1000),(4861,3159,'Рязанская обл.',1000),(4891,3159,'Самарская обл.',1000),(4925,3159,'Санкт-Петербург и область',1000),(4969,3159,'Саратовская обл.',1000),(5011,3159,'Саха (Якутия)',1000),(5052,3159,'Сахалин',1000),(5080,3159,'Свердловская обл.',1000),(5151,3159,'Северная Осетия',1000),(5161,3159,'Смоленская обл.',1000),(5191,3159,'Ставропольский край',1000),(5225,3159,'Тамбовская обл.',1000),(5246,3159,'Татарстан',1000),(5291,3159,'Томская обл.',1000),(5312,3159,'Тува (Тувинская Респ.)',1000),(5326,3159,'Тульская обл.',1000),(5356,3159,'Тюменская обл.',1000),(5404,3159,'Удмуртия',1000),(5432,3159,'Ульяновская обл.',1000),(5458,3159,'Уральская обл.',1000),(5473,3159,'Хабаровский край',1000),(5507,3159,'Челябинская обл.',1000),(5543,3159,'Чеченская республика',1000),(5555,3159,'Забайкальский край',1000),(5600,3159,'Чувашия',1000),(5625,3159,'Ярославская обл.',1000),(5648,5647,'Ahuachapan',1000),(5650,5647,'Cuscatlan',1000),(5652,5647,'La Libertad',1000),(5654,5647,'La Paz',1000),(5656,5647,'La Union',1000),(5658,5647,'San Miguel',1000),(5660,5647,'San Salvador',1000),(5662,5647,'Santa Ana',1000),(5664,5647,'Sonsonate',1000),(5667,5666,'Trnavsky',1000),(5669,5666,'Братислава',1000),(5671,5666,'Жилина',1000),(5674,5673,'Osrednjeslovenska',1000),(5676,5673,'Podravska',1000),(5679,5678,'Paramaribo',1000),(5682,5681,'Айдахо',1000),(5694,5681,'Айова',1000),(5752,5681,'Алабама',1000),(5924,5681,'Аляска',1000),(5927,5681,'Аризона',1000),(5983,5681,'Арканзас',1000),(6098,5681,'Вайоминг',1000),(6103,5681,'Вашингтон',1000),(6167,5681,'Вермонт',1000),(6176,5681,'Виргиния',1000),(6242,5681,'Висконсин',1000),(6266,5681,'Гаваи',1000),(6280,5681,'Делавар',1000),(6291,5681,'Джорджия',1000),(6352,5681,'Западная Виргиния',1000),(6367,5681,'Иллинойс',1000),(6520,5681,'Индиана',1000),(6591,5681,'Калифорния',1000),(6864,5681,'Канзас',1000),(6917,5681,'Кентукки',1000),(6973,5681,'Колорадо',1000),(7015,5681,'Коннектикут',1000),(7055,5681,'Луизиана',1000),(7120,5681,'Массачусетс',1000),(7228,5681,'Миннесота',1000),(7288,5681,'Миссисипи',1000),(7411,5681,'Миссури',1000),(7493,5681,'Мичиган',1000),(7598,5681,'Монтана',1000),(7613,5681,'Мэн',1000),(7641,5681,'Мэриленд',1000),(7691,5681,'Небраска',1000),(7714,5681,'Невада',1000),(7733,5681,'Нью-Гэмпшир',1000),(7744,5681,'Нью-Джерси',1000),(7859,5681,'Нью-Йорк',1000),(8089,5681,'Нью-Мексико',1000),(8145,5681,'Огайо',1000),(8439,5681,'Оклахома',1000),(8479,5681,'окр.Колумбия',1000),(8483,5681,'Орегон',1000),(8516,5681,'Пенсильвания',1000),(8751,5681,'Род-Айленд',1000),(8760,5681,'Северная Дакота',1000),(8768,5681,'Северная Каролина',1000),(8856,5681,'Теннесси',1000),(9047,5681,'Техас',1000),(9185,5681,'Флорида',1000),(9477,5681,'Южная Дакота',1000),(9489,5681,'Южная Каролина',1000),(9515,5681,'Юта',1000),(9576,9575,'Горно-Бадахшанская обл.',1000),(9589,9575,'Кулябская обл.',1000),(9596,9575,'Курган-Тюбинская обл.',1000),(9605,9575,'Согдийская обл.',1000),(9627,9575,'Таджикистан',1000),(9639,9638,'Ашхабадская обл.',1000),(9653,9638,'Красноводская обл.',1000),(9670,9638,'Марыйская обл.',1000),(9682,9638,'Ташаузская обл.',1000),(9685,9638,'Чарджоуская обл.',1000),(9702,9701,'Grand Turk',1000),(9706,9705,'Bartin',1000),(9708,9705,'Bayburt',1000),(9710,9705,'Karabuk',1000),(9712,9705,'Адана',1000),(9714,9705,'Айдын',1000),(9716,9705,'Амасья',1000),(9718,9705,'Анкара',1000),(9720,9705,'Анталья',1000),(9722,9705,'Артвин',1000),(9724,9705,'Афьон',1000),(9726,9705,'Балыкесир',1000),(9728,9705,'Биледжик',1000),(9730,9705,'Бурса',1000),(9732,9705,'Газиантеп',1000),(9734,9705,'Денизли',1000),(9736,9705,'Измир',1000),(9738,9705,'Испарта',1000),(9740,9705,'Ичель',1000),(9742,9705,'Кайсери',1000),(9744,9705,'Карс',1000),(9746,9705,'Коджаэли',1000),(9749,9705,'Конья',1000),(9751,9705,'Кыркларели',1000),(9753,9705,'Кютахья',1000),(9755,9705,'Малатья',1000),(9757,9705,'Маниса',1000),(9759,9705,'Сакарья',1000),(9761,9705,'Самсун',1000),(9763,9705,'Сивас',1000),(9765,9705,'Стамбул',1000),(9767,9705,'Трабзон',1000),(9770,9705,'Чорум',1000),(9772,9705,'Эдирне',1000),(9774,9705,'Элязыг',1000),(9776,9705,'Эрзинджан',1000),(9778,9705,'Эрзурум',1000),(9780,9705,'Эскишехир',1000),(9783,9782,'Jinja',1000),(9785,9782,'Kampala',1000),(9788,9787,'Андижанская обл.',1000),(9796,9787,'Бухарская обл.',1000),(9806,9787,'Джизакская обл.',1000),(9813,9787,'Каракалпакия',1000),(9825,9787,'Кашкадарьинская обл.',1000),(9832,9787,'Навоийская обл.',1000),(9836,9787,'Наманганская обл.',1000),(9844,9787,'Самаркандская обл.',1000),(9851,9787,'Сурхандарьинская обл.',1000),(9859,9787,'Сырдарьинская обл.',1000),(9869,9787,'Ташкентская обл.',1000),(9892,9787,'Ферганская обл.',1000),(9905,9787,'Хорезмская обл.',1000),(9909,9908,'Винницкая обл.',1000),(9943,9908,'Волынская обл.',1000),(9964,9908,'Днепропетровская обл.',1000),(10002,9908,'Донецкая обл.',1000),(10061,9908,'Житомирская обл.',1000),(10094,9908,'Закарпатская обл.',1000),(10111,9908,'Запорожская обл.',1000),(10133,9908,'Ивано-Франковская обл.',1000),(10165,9908,'Киевская обл.',1000),(10201,9908,'Кировоградская обл.',1000),(10227,9908,'Крымская обл.',1000),(10259,9908,'Луганская обл.',1000),(10318,9908,'Львовская обл.',1000),(10354,9908,'Николаевская обл.',1000),(10373,9908,'Одесская обл.',1000),(10407,9908,'Полтавская обл.',1000),(10437,9908,'Ровенская обл.',1000),(10455,9908,'Сумская обл.',1000),(10480,9908,'Тернопольская обл.',1000),(10504,9908,'Харьковская обл.',1000),(10535,9908,'Херсонская обл.',1000),(10559,9908,'Хмельницкая обл.',1000),(10583,9908,'Черкасская обл.',1000),(10607,9908,'Черниговская обл.',1000),(10633,9908,'Черновицкая обл.',1000),(10649,10648,'Etela-Karjala',1000),(10651,10648,'Paijat-Hame',1000),(10653,10648,'Pohjanmaa',1000),(10655,10648,'Pohjois-Pohjanmaa',1000),(10657,10648,'Pohjois-Savo',1000),(10659,10648,'Satakunta',1000),(10661,10648,'Varsinais-Suomi',1000),(10663,10648,'Кески-Суоми',1000),(10665,10648,'Усима',1000),(10669,10668,'Cotes-d`Armor',1000),(10671,10668,'Алье',1000),(10673,10668,'Альпы Верхние',1000),(10675,10668,'Альпы Приморские',1000),(10679,10668,'Арденны',1000),(10681,10668,'Бельфор',1000),(10683,10668,'Буш-дю-Рон',1000),(10686,10668,'Валь-д` Уаз',1000),(10688,10668,'Валь-де-Марн',1000),(10699,10668,'Вар',1000),(10702,10668,'Вогезы',1000),(10704,10668,'Воклюз',1000),(10706,10668,'Вьенна',1000),(10708,10668,'Вьенна Верхняя',1000),(10710,10668,'Гар',1000),(10712,10668,'Гаронна Верхняя',1000),(10714,10668,'Дё-Севр',1000),(10716,10668,'Дром',1000),(10719,10668,'Ду',1000),(10721,10668,'Жиронда',1000),(10723,10668,'Ивелин',1000),(10725,10668,'Иль и Виден',1000),(10728,10668,'Коррез',1000),(10730,10668,'Корсика Верхняя',1000),(10732,10668,'Корсика Южная',1000),(10734,10668,'Кот-д`Ор',1000),(10736,10668,'Ланды',1000),(10738,10668,'Ло и Гаронна',1000),(10740,10668,'Лозер',1000),(10742,10668,'Луар и Шер',1000),(10744,10668,'Луара',1000),(10747,10668,'Луара Атлантическая',1000),(10750,10668,'Луара Верхняя',1000),(10752,10668,'Луаре',1000),(10754,10668,'Майенн',1000),(10756,10668,'Марна',1000),(10759,10668,'Мен и Луара',1000),(10762,10668,'Мёрт и Мозель',1000),(10764,10668,'Мозель',1000),(10766,10668,'Морбиан',1000),(10768,10668,'Нор',1000),(10774,10668,'Ньевр',1000),(10776,10668,'О-де-Сен',1000),(10794,10668,'Об',1000),(10796,10668,'Од',1000),(10798,10668,'Орн',1000),(10800,10668,'Па-де-Кале',1000),(10804,10668,'Париж',1000),(10806,10668,'Пиренеи Атлантические',1000),(10809,10668,'Пиренеи Верхние',1000),(10811,10668,'Пиренеи Восточные',1000),(10813,10668,'Рейн Верхний',1000),(10817,10668,'Рейн Нижний',1000),(10819,10668,'Рона',1000),(10823,10668,'Савойя',1000),(10825,10668,'Савойя Верхняя',1000),(10827,10668,'Сарта',1000),(10829,10668,'Сен-Сен-Дени',1000),(10841,10668,'Сена Приморская',1000),(10844,10668,'Сомма',1000),(10846,10668,'Сона и Луара',1000),(10849,10668,'Тарн',1000),(10851,10668,'Уаза',1000),(10853,10668,'Финистер',1000),(10856,10668,'Шаранта',1000),(10858,10668,'Шаранта Приморская',1000),(10860,10668,'Шер',1000),(10862,10668,'Эна',1000),(10864,10668,'Эндр',1000),(10866,10668,'Эндр и Луара',1000),(10868,10668,'Эр',1000),(10870,10668,'Эро',1000),(10872,10668,'Эссонн',1000),(10875,10874,'Jihochesky',1000),(10877,10874,'Jihomoravsky',1000),(10879,10874,'Karlovarsky',1000),(10881,10874,'Kralovehradecky',1000),(10883,10874,'Liberecky',1000),(10886,10874,'Moravskoslezsky',1000),(10892,10874,'Olomoucky',1000),(10896,10874,'Stredochesky',1000),(10898,10874,'Ustecky',1000),(10905,10904,'Аргау',1000),(10908,10904,'Базель-Штадт',1000),(10910,10904,'Берн',1000),(10914,10904,'Во',1000),(10916,10904,'Женева',1000),(10918,10904,'Золотурн',1000),(10920,10904,'Люцерн',1000),(10922,10904,'Невшатель',1000),(10925,10904,'Тичино',1000),(10927,10904,'Фрибур',1000),(10930,10904,'Цюрих',1000),(10934,10933,'Skine',1000),(10938,10933,'Vastra Gotaland',1000),(10942,10933,'Вермланд',1000),(10944,10933,'Вестерботтен',1000),(10946,10933,'Вестернорланд',1000),(10948,10933,'Вестманланд',1000),(10950,10933,'Евлеборг',1000),(10952,10933,'Емтланд',1000),(10954,10933,'Йёнчёпинг',1000),(10956,10933,'Сёдерманланд',1000),(10958,10933,'Стокгольм',1000),(10962,10933,'Упсала',1000),(10964,10933,'Халланд',1000),(10966,10933,'Эстерйетланд',1000),(10969,10968,'Эстония',1000),(11003,11002,'Воеводина',1000),(11008,11002,'Косово',1000),(11010,11002,'Сербия',1000),(11015,11014,'Cheju',1000),(11017,11014,'Chollabuk',1000),(11020,11014,'Chollanam',1000),(11024,11014,'Chungcheongbuk',1000),(11027,11014,'Chungcheongnam',1000),(11029,11014,'Incheon',1000),(11031,11014,'Kangweon',1000),(11035,11014,'Kwangju',1000),(11037,11014,'Kyeonggi',1000),(11040,11014,'Kyeongsangbuk',1000),(11045,11014,'Kyeongsangnam',1000),(11050,11014,'Pusan',1000),(11052,11014,'Seoul',1000),(11054,11014,'Taegu',1000),(11056,11014,'Taejeon',1000),(11058,11014,'Ulsan',1000),(11061,11060,'Айти',1000),(11068,11060,'Акита',1000),(11074,11060,'Аомори',1000),(11080,11060,'Вакаяма',1000),(11083,11060,'Гифу',1000),(11088,11060,'Гумма',1000),(11094,11060,'Ибараки',1000),(11102,11060,'Ивате',1000),(11108,11060,'Исикава',1000),(11113,11060,'Кагава',1000),(11116,11060,'Кагосима',1000),(11121,11060,'Канагава',1000),(11133,11060,'Киото',1000),(11139,11060,'Коти',1000),(11142,11060,'Кумамото',1000),(11146,11060,'Миэ',1000),(11151,11060,'Мияги',1000),(11155,11060,'Миядзаки',1000),(11162,11060,'Нагано',1000),(11168,11060,'Нагасаки',1000),(11173,11060,'Нара',1000),(11178,11060,'Ниигата',1000),(11185,11060,'Окаяма',1000),(11189,11060,'Окинава',1000),(11192,11060,'Осака',1000),(11209,11060,'Сага',1000),(11215,11060,'Сайтама',1000),(11227,11060,'Сига',1000),(11230,11060,'Сидзуока',1000),(11233,11060,'Симане',1000),(11248,11060,'Тиба',1000),(11261,11060,'Токио',1000),(11270,11060,'Токусима',1000),(11273,11060,'Тотиги',1000),(11279,11060,'Тоттори',1000),(11283,11060,'Тояма',1000),(11289,11060,'Фукуи',1000),(11295,11060,'Фукуока',1000),(11304,11060,'Фукусима',1000),(11307,11060,'Хиросима',1000),(11312,11060,'Хоккайдо',1000),(11330,11060,'Хпого',1000),(11340,11060,'Эхиме',1000),(11346,11060,'Ямагата',1000),(11354,11060,'Ямагути',1000),(11363,11060,'Яманаси',1000),(277552,277551,'Нидерланды',1000),(277554,277553,'Хорватия',1000),(277556,277555,'Румыния',1000),(277558,277557,'Гонконг',1000),(277560,277559,'Индонезия',1000),(277562,277561,'Иордания',1000),(277564,277563,'Малайзия',1000),(277566,277565,'Сингапур',1000),(277568,277567,'Тайвань',1000),(277570,277569,'Туркмения',1000),(277654,245,'Армения',1000),(277655,1894,'Казахстан',1000),(277656,9908,'Украина',1000),(277657,616,'Великобритания',1000),(277658,11002,'Югославия',1000),(277659,63,'Австрия',1000),(277660,428,'Болгария',1000),(277661,1707,'Испания',1000),(277662,404,'Бельгия',1000),(277663,1012,'Германия',1000),(277664,2897,'Польша',1000),(277665,10933,'Швеция',1000),(277666,10904,'Швейцария',1000),(277667,10648,'Финляндия',1000),(277668,1786,'Италия',1000),(277669,10668,'Франция',1000),(277670,10874,'Чехия',1000),(277671,5673,'Словения',1000),(277672,5681,'США',1000),(277673,1451,'Индия',1000),(277674,1380,'Египет',1000),(1923301,582067,'Дамаск',1000),(1924623,2880,'Нордланд',1000),(1930798,582105,'Остров Мэн',1000),(1934356,1894,'Западно-Казахстанская обл.',1000),(1998532,3159,'Адыгея',1000),(2077237,1366,'Хельсингор',1000),(2284951,3141,'Фаро',1000),(2316497,3159,'Хакасия',1000),(2316780,582051,'Дубаи',1000),(2331485,1366,'Копенгаген',1000),(2412885,582031,'Сантьяго',1000),(2415585,3159,'Чукотский АО',1000),(2416357,1786,'о. Сан-Джорджо Маджоре',1000),(2483267,582077,'Гавана',1000),(2494137,582060,'Бейрут',1000),(2499002,3159,'Ханты-Мансийский АО',1000),(2505921,2505884,'Бейрут',1000),(2564700,1894,'Акмолинская обл.',1000),(2567441,2567393,'Тегусигальпа',1000),(2577870,2880,'Ромсдал',1000),(2578001,2577958,'Санто-доминго',1000),(2687732,2687701,'Улан-батор',1000),(2713529,10648,'Kouvola',1000),(3024114,1012,'Саарлэнд',1000),(3331120,2374,'Пекин',1000),(3409961,1380,'Синай',1000),(3410574,3410238,'Багдад',1000),(3410602,3410238,'Басра',1000),(3410645,3410238,'Мосул',1000),(3661590,3661568,'Йоханесбург',1000),(3663676,582041,'Скопье',1000),(4042477,582065,'Морокко',1000),(4093580,1707,'Gerona',1000),(4119771,582065,'Танжер',1000),(4691804,2374,'Гуандон',1000),(4778004,10933,'Норрботтен',1000),(5019394,3159,'Ямало-Ненецкий АО',1000),(5556213,582046,'Перу',1000),(5640357,10648,'Pohjois-Karjala',1000),(5640862,582090,'Tunisia',1000),(6128546,582050,'Тайланд',1000),(6128641,1258,'Корфу',1000),(6128697,582082,'Мозамбик',1000),(6453632,582040,'Korea',1000),(6460443,582043,'Мальта',1000),(7593366,582044,'Пакистан',1000),(7716133,7716093,'Арулько',1000),(7719907,582064,'Пичинча',1000),(11564803,582029,'Багамы',1000),(11566007,582040,'Южная Корея',1000),(15789405,582106,'Ямайка',1000),(15789410,3159,'Республика Ингушетия',1000);
/*!40000 ALTER TABLE `cms_geo_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_groups`
--

DROP TABLE IF EXISTS `cms_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) unsigned DEFAULT NULL COMMENT 'Создатель',
  `date_pub` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
  `title` varchar(128) NOT NULL COMMENT 'Название',
  `description` text COMMENT 'Описание',
  `logo` text COMMENT 'Логотип группы',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT 'Рейтинг',
  `members_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Кол-во членов',
  `join_policy` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Политика вступления',
  `edit_policy` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Политика редактирования',
  `wall_policy` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Политика стены',
  `wall_reply_policy` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Политика комментирования стены',
  `is_closed` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Закрытая?',
  `cover` text COMMENT 'Обложка группы',
  `slug` varchar(100) DEFAULT NULL,
  `content_policy` varchar(500) DEFAULT NULL COMMENT 'Политика контента',
  `content_groups` varchar(1000) DEFAULT NULL COMMENT 'Группы, которым разрешено добавление контента',
  `roles` varchar(2000) DEFAULT NULL,
  `content_roles` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_count` (`members_count`),
  KEY `date_pub` (`date_pub`),
  KEY `rating` (`rating`),
  KEY `owner_id` (`owner_id`,`members_count`),
  KEY `slug` (`slug`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Группы (сообщества)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_groups`
--

LOCK TABLES `cms_groups` WRITE;
/*!40000 ALTER TABLE `cms_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_groups_fields`
--

DROP TABLE IF EXISTS `cms_groups_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_groups_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `hint` varchar(200) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_list` tinyint(1) unsigned DEFAULT NULL,
  `is_in_item` tinyint(1) unsigned DEFAULT NULL,
  `is_in_filter` tinyint(1) unsigned DEFAULT NULL,
  `is_in_closed` tinyint(3) unsigned DEFAULT NULL,
  `is_private` tinyint(1) unsigned DEFAULT NULL,
  `is_fixed` tinyint(1) unsigned DEFAULT NULL,
  `is_fixed_type` tinyint(1) unsigned DEFAULT NULL,
  `is_system` tinyint(1) unsigned DEFAULT NULL,
  `values` text,
  `options` text,
  `groups_read` text,
  `groups_edit` text,
  `filter_view` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Поля групп';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_groups_fields`
--

LOCK TABLES `cms_groups_fields` WRITE;
/*!40000 ALTER TABLE `cms_groups_fields` DISABLE KEYS */;
INSERT INTO `cms_groups_fields` VALUES (1,NULL,'title','Заголовок',NULL,1,'Основная информация','caption',1,1,1,1,NULL,1,1,1,NULL,'---\nmin_length: 1\nmax_length: 128\nin_fulltext_search: 1\nprofile_value:\n','---\n- 0\n','---\n- 0\n','---\n- 0\n'),(2,NULL,'description','Описание группы',NULL,2,'Основная информация','html',1,1,NULL,1,NULL,1,1,NULL,NULL,'---\neditor: redactor\nis_html_filter: 1\nbuild_redirect_link: 1\nteaser_len: 200\nin_fulltext_search: null\nlabel_in_list: none\nlabel_in_item: none\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\nprofile_value:\n','---\n- 0\n','---\n- 0\n','---\n- 0\n'),(3,NULL,'logo','Логотип группы',NULL,3,'Основная информация','image',1,1,NULL,1,NULL,1,1,1,NULL,'---\nsize_teaser: small\nsize_full: micro\nsize_modal:\nsizes:\n  - micro\n  - small\nallow_import_link: 1\nprofile_value:\n','---\n- 0\n','---\n- 0\n','---\n- 0\n'),(5,NULL,'cover','Обложка группы',NULL,4,'Основная информация','image',NULL,1,NULL,1,NULL,1,1,1,NULL,'---\nsize_teaser: small\nsize_full: original\nsize_modal:\nsizes:\n  - small\n  - original\nallow_import_link: 1\nprofile_value:\n','---\n- 0\n','---\n- 0\n','---\n- 0\n');
/*!40000 ALTER TABLE `cms_groups_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_groups_invites`
--

DROP TABLE IF EXISTS `cms_groups_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_groups_invites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned DEFAULT NULL COMMENT 'ID группы',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT 'ID пригласившего',
  `invited_id` int(11) unsigned DEFAULT NULL COMMENT 'ID приглашенного',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `invited_id` (`invited_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Приглашения в группы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_groups_invites`
--

LOCK TABLES `cms_groups_invites` WRITE;
/*!40000 ALTER TABLE `cms_groups_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_groups_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_groups_member_roles`
--

DROP TABLE IF EXISTS `cms_groups_member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_groups_member_roles` (
  `user_id` int(11) unsigned DEFAULT NULL,
  `group_id` int(11) unsigned DEFAULT NULL,
  `role_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_groups_member_roles`
--

LOCK TABLES `cms_groups_member_roles` WRITE;
/*!40000 ALTER TABLE `cms_groups_member_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_groups_member_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_groups_members`
--

DROP TABLE IF EXISTS `cms_groups_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_groups_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `role` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'Роль пользователя в группе',
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата обновления роли',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`,`date_updated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Члены групп (сообществ)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_groups_members`
--

LOCK TABLES `cms_groups_members` WRITE;
/*!40000 ALTER TABLE `cms_groups_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_groups_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_images_presets`
--

DROP TABLE IF EXISTS `cms_images_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_images_presets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `is_square` tinyint(1) unsigned DEFAULT NULL,
  `is_watermark` tinyint(1) unsigned DEFAULT NULL,
  `wm_image` text,
  `wm_origin` varchar(16) DEFAULT NULL,
  `wm_margin` int(11) unsigned DEFAULT NULL,
  `is_internal` tinyint(1) unsigned DEFAULT NULL,
  `quality` tinyint(1) NOT NULL DEFAULT '90',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_square` (`is_square`),
  KEY `is_watermark` (`is_watermark`),
  KEY `is_internal` (`is_internal`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_images_presets`
--

LOCK TABLES `cms_images_presets` WRITE;
/*!40000 ALTER TABLE `cms_images_presets` DISABLE KEYS */;
INSERT INTO `cms_images_presets` VALUES (1,'micro','Микро',32,32,1,NULL,NULL,NULL,NULL,NULL,90),(2,'small','Маленький',64,64,1,NULL,NULL,NULL,NULL,NULL,90),(3,'normal','Средний',NULL,256,NULL,NULL,NULL,NULL,NULL,NULL,90),(4,'big','Большой',690,690,NULL,NULL,NULL,'bottom-right',NULL,NULL,90),(5,'wysiwyg_markitup','Редактор: markItUp!',400,400,NULL,NULL,NULL,'top-left',NULL,1,90),(6,'wysiwyg_redactor','Редактор: Redactor',800,800,NULL,NULL,NULL,'top-left',NULL,1,90),(7,'wysiwyg_live','Редактор: Live',690,690,NULL,NULL,NULL,'top-left',NULL,1,90);
/*!40000 ALTER TABLE `cms_images_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menu`
--

DROP TABLE IF EXISTS `cms_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT 'Системное имя',
  `title` varchar(64) DEFAULT NULL COMMENT 'Название меню',
  `is_fixed` tinyint(1) unsigned DEFAULT NULL COMMENT 'Запрещено удалять?',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Меню сайта';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menu`
--

LOCK TABLES `cms_menu` WRITE;
/*!40000 ALTER TABLE `cms_menu` DISABLE KEYS */;
INSERT INTO `cms_menu` VALUES (1,'main','Главное меню',1),(2,'personal','Персональное меню',1),(3,'footer','Нижнее меню',1),(4,'toolbar','Меню действий',1),(5,'header','Верхнее меню',NULL),(6,'notices','Уведомления',NULL);
/*!40000 ALTER TABLE `cms_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menu_items`
--

DROP TABLE IF EXISTS `cms_menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menu_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned DEFAULT NULL COMMENT 'ID меню',
  `parent_id` int(11) unsigned DEFAULT '0' COMMENT 'ID родительского пункта',
  `title` varchar(64) DEFAULT NULL COMMENT 'Заголовок пункта',
  `url` varchar(255) DEFAULT NULL COMMENT 'Ссылка',
  `ordering` int(11) unsigned DEFAULT NULL COMMENT 'Порядковый номер',
  `options` text COMMENT 'Массив опций',
  `groups_view` text COMMENT 'Массив разрешенных групп пользователей',
  `groups_hide` text COMMENT 'Массив запрещенных групп пользователей',
  PRIMARY KEY (`id`),
  KEY `menu_id` (`menu_id`),
  KEY `parent_id` (`parent_id`),
  KEY `ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='Пункты меню';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menu_items`
--

LOCK TABLES `cms_menu_items` WRITE;
/*!40000 ALTER TABLE `cms_menu_items` DISABLE KEYS */;
INSERT INTO `cms_menu_items` VALUES (6,1,0,'Фото','albums',4,'---\ntarget: _self\nclass:','---\n- 0\n',NULL),(13,2,0,'Мой профиль','users/{user.id}',1,'---\ntarget: _self\nclass: profile','---\n- 0\n',NULL),(14,2,0,'Мои сообщения','{messages:view}',2,'---\nclass: messages messages-counter ajax-modal\n','---\n- 0\n',NULL),(18,3,0,'О проекте','about.html',1,'---\nclass: \n','---\n- 0\n',NULL),(19,3,0,'Правила сайта','rules.html',2,'---\nclass: \n','---\n- 0\n',NULL),(24,2,0,'Создать','{content:add}',6,'---\nclass: add\n',NULL,NULL),(25,2,0,'Панель управления','{admin:menu}',7,'---\nclass: cpanel\n','---\n- 6\n',NULL),(27,1,0,'Блоги','posts',3,'---\ntarget: _self\nclass:','---\n- 0\n',NULL),(29,1,0,'Люди','users',9,'---\nclass: \n','---\n- 0\n',NULL),(30,6,0,'Уведомления','{messages:notices}',1,'---\ntarget: _self\nclass: bell ajax-modal notices-counter\n','---\n- 0\n','---\n- 1\n'),(31,1,0,'Активность','activity',7,'---\nclass:','---\n- 0\n',NULL),(32,1,0,'Группы','groups',6,'---\nclass:','---\n- 0\n',NULL),(33,2,0,'Мои группы','{groups:my}',5,'---\nclass: group','---\n- 0\n',NULL),(34,5,0,'Войти','auth/login',9,'---\nclass: ajax-modal key','---\n- 1\n',NULL),(35,5,0,'Регистрация','auth/register',10,'---\nclass: user_add','---\n- 1\n',NULL),(37,2,0,'Модерация','{moderation:panel}',4,'---\nclass: checklist','---\n- 5\n- 6\n',NULL),(38,1,0,'Комментарии','comments',8,'---\ntarget: _self\nclass:\n',NULL,'---\n- 1\n- 3\n- 4\n- 5\n- 6\n'),(39,1,0,'Объявления','board',5,'---\ntarget: _self\nclass:','---\n- 0\n',NULL),(40,1,0,'Новости','{content:news}',1,'---\ntarget: _self\nclass:','---\n- 0\n',NULL),(42,1,0,'Статьи','{content:articles}',2,'---\ntarget: _self\nclass:','---\n- 0\n',NULL),(43,2,0,'Выйти','auth/logout',12,'---\ntarget: _self\nclass: logout','---\n- 0\n',NULL);
/*!40000 ALTER TABLE `cms_menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_moderators`
--

DROP TABLE IF EXISTS `cms_moderators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_moderators` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `date_assigned` timestamp NULL DEFAULT NULL,
  `ctype_name` varchar(32) DEFAULT NULL,
  `count_approved` int(11) unsigned NOT NULL DEFAULT '0',
  `count_deleted` int(11) unsigned NOT NULL DEFAULT '0',
  `count_idle` int(11) unsigned NOT NULL DEFAULT '0',
  `trash_left_time` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `ctype_name` (`ctype_name`),
  KEY `count_idle` (`count_idle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_moderators`
--

LOCK TABLES `cms_moderators` WRITE;
/*!40000 ALTER TABLE `cms_moderators` DISABLE KEYS */;
INSERT INTO `cms_moderators` VALUES (1,1,'2017-09-24 07:10:55','articles',0,0,0,NULL);
/*!40000 ALTER TABLE `cms_moderators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_moderators_logs`
--

DROP TABLE IF EXISTS `cms_moderators_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_moderators_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `moderator_id` int(11) unsigned DEFAULT NULL,
  `author_id` int(11) unsigned DEFAULT NULL,
  `action` tinyint(1) unsigned DEFAULT NULL,
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_expired` timestamp NULL DEFAULT NULL,
  `target_id` int(11) unsigned DEFAULT NULL,
  `target_controller` varchar(32) DEFAULT NULL,
  `target_subject` varchar(32) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `moderator_id` (`moderator_id`),
  KEY `target_id` (`target_id`,`target_subject`,`target_controller`),
  KEY `author_id` (`author_id`),
  KEY `date_expired` (`date_expired`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_moderators_logs`
--

LOCK TABLES `cms_moderators_logs` WRITE;
/*!40000 ALTER TABLE `cms_moderators_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_moderators_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_moderators_tasks`
--

DROP TABLE IF EXISTS `cms_moderators_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_moderators_tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `moderator_id` int(11) unsigned DEFAULT NULL,
  `author_id` int(11) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `ctype_name` varchar(32) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `date_pub` timestamp NULL DEFAULT NULL,
  `is_new_item` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `moderator_id` (`moderator_id`),
  KEY `author_id` (`author_id`),
  KEY `ctype_name` (`ctype_name`),
  KEY `date_pub` (`date_pub`),
  KEY `item_id` (`item_id`),
  KEY `is_new` (`is_new_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_moderators_tasks`
--

LOCK TABLES `cms_moderators_tasks` WRITE;
/*!40000 ALTER TABLE `cms_moderators_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_moderators_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_perms_rules`
--

DROP TABLE IF EXISTS `cms_perms_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_perms_rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(32) DEFAULT NULL COMMENT 'Компонент (владелец)',
  `name` varchar(32) NOT NULL COMMENT 'Название правила',
  `type` enum('flag','list','number') NOT NULL DEFAULT 'flag' COMMENT 'Тип выбора (flag,list...)',
  `options` varchar(128) DEFAULT NULL COMMENT 'Массив возможных значений',
  PRIMARY KEY (`id`),
  KEY `controller` (`controller`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='Перечь всех возможных правил доступа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_perms_rules`
--

LOCK TABLES `cms_perms_rules` WRITE;
/*!40000 ALTER TABLE `cms_perms_rules` DISABLE KEYS */;
INSERT INTO `cms_perms_rules` VALUES (1,'content','add','flag',NULL),(2,'content','edit','list','own,all'),(3,'content','delete','list','own,all'),(4,'content','add_cat','flag',NULL),(5,'content','edit_cat','flag',NULL),(6,'content','delete_cat','flag',NULL),(8,'content','rate','flag',NULL),(9,'content','privacy','flag',NULL),(10,'comments','add','flag',NULL),(11,'comments','edit','list','own,all'),(12,'comments','delete','list','own,all,full_delete'),(13,'content','view_all','flag',NULL),(14,'comments','view_all','flag',NULL),(15,'groups','add','flag',NULL),(16,'groups','edit','list','own,all'),(17,'groups','delete','list','own,all'),(18,'content','limit','number',NULL),(19,'users','vote_karma','flag',NULL),(20,'comments','rate','flag',NULL),(21,'comments','karma','number',NULL),(22,'content','karma','number',NULL),(23,'activity','delete','flag',NULL),(24,'content','pub_late','flag',NULL),(25,'content','pub_long','list','days,any'),(26,'content','pub_max_days','number',NULL),(27,'content','pub_max_ext','flag',NULL),(28,'content','pub_on','flag',NULL),(29,'content','disable_comments','flag',NULL),(30,'comments','add_approved','flag',NULL),(31,'comments','is_moderator','flag',NULL),(32,'content','add_to_parent','list','to_own,to_other,to_all'),(33,'content','bind_to_parent','list','own_to_own,own_to_other,own_to_all,other_to_own,other_to_other,other_to_all,all_to_own,all_to_other,all_to_all'),(34,'content','bind_off_parent','list','own,all'),(35,'content','move_to_trash','list','own,all'),(36,'content','restore','list','own,all'),(37,'content','trash_left_time','number',NULL),(38,'users','delete','list','my,anyuser'),(39,'groups','invite_users','flag',NULL),(40,'groups','bind_to_parent','list','own_to_own,own_to_other,own_to_all,other_to_own,other_to_other,other_to_all,all_to_own,all_to_other,all_to_all'),(41,'users','bind_to_parent','list','own_to_own,own_to_other,own_to_all,other_to_own,other_to_other,other_to_all,all_to_own,all_to_other,all_to_all'),(42,'groups','bind_off_parent','list','own,all'),(43,'users','bind_off_parent','list','own,all'),(44,'groups','content_access','flag',NULL);
/*!40000 ALTER TABLE `cms_perms_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_perms_users`
--

DROP TABLE IF EXISTS `cms_perms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_perms_users` (
  `rule_id` int(11) unsigned DEFAULT NULL COMMENT 'ID правила',
  `group_id` int(11) unsigned DEFAULT NULL COMMENT 'ID группы',
  `subject` varchar(32) DEFAULT NULL COMMENT 'Субъект действия правила',
  `value` varchar(16) NOT NULL COMMENT 'Значение правила',
  KEY `rule_id` (`rule_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Привязка правил доступа к группам пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_perms_users`
--

LOCK TABLES `cms_perms_users` WRITE;
/*!40000 ALTER TABLE `cms_perms_users` DISABLE KEYS */;
INSERT INTO `cms_perms_users` VALUES (10,4,'comments','1'),(11,4,'comments','own'),(15,4,'groups','1'),(17,4,'groups','own'),(16,4,'groups','own'),(19,4,'users','1'),(10,5,'comments','1'),(12,5,'comments','all'),(11,5,'comments','all'),(14,5,'comments','1'),(15,5,'groups','1'),(17,5,'groups','all'),(16,5,'groups','all'),(19,5,'users','1'),(10,3,'comments','1'),(12,3,'comments','own'),(11,3,'comments','own'),(1,4,'albums','1'),(1,5,'albums','1'),(1,6,'albums','1'),(3,4,'albums','own'),(3,5,'albums','all'),(3,6,'albums','all'),(2,4,'albums','own'),(2,5,'albums','all'),(2,6,'albums','all'),(9,4,'albums','1'),(9,5,'albums','1'),(9,6,'albums','1'),(8,4,'albums','1'),(8,5,'albums','1'),(8,6,'albums','1'),(13,5,'albums','1'),(13,6,'albums','1'),(10,6,'comments','1'),(12,6,'comments','all'),(11,6,'comments','all'),(20,4,'comments','1'),(20,5,'comments','1'),(20,6,'comments','1'),(14,6,'comments','1'),(21,4,'comments','1'),(23,5,'activity','1'),(23,6,'activity','1'),(1,3,'albums','1'),(3,3,'albums','own'),(2,3,'albums','own'),(1,4,'articles','1'),(1,5,'articles','1'),(1,6,'articles','1'),(4,5,'articles','1'),(4,6,'articles','1'),(3,4,'articles','own'),(3,5,'articles','all'),(3,6,'articles','all'),(6,5,'articles','1'),(6,6,'articles','1'),(2,4,'articles','own'),(2,5,'articles','all'),(2,6,'articles','all'),(5,5,'articles','1'),(5,6,'articles','1'),(9,4,'articles','1'),(9,5,'articles','1'),(9,6,'articles','1'),(8,4,'articles','1'),(8,5,'articles','1'),(8,6,'articles','1'),(13,5,'articles','1'),(13,6,'articles','1'),(1,4,'posts','1'),(1,5,'posts','1'),(1,6,'posts','1'),(3,4,'posts','own'),(3,5,'posts','all'),(3,6,'posts','all'),(2,4,'posts','own'),(2,5,'posts','all'),(9,4,'posts','1'),(9,5,'posts','1'),(9,6,'posts','1'),(8,4,'posts','1'),(8,5,'posts','1'),(8,6,'posts','1'),(1,4,'board','1'),(1,5,'board','1'),(1,6,'board','1'),(4,5,'board','1'),(4,6,'board','1'),(3,4,'board','own'),(3,5,'board','all'),(3,6,'board','all'),(6,5,'board','1'),(6,6,'board','1'),(2,4,'board','own'),(2,5,'board','all'),(2,6,'board','all'),(5,5,'board','1'),(5,6,'board','1'),(9,5,'board','1'),(9,6,'board','1'),(8,5,'board','1'),(8,6,'board','1'),(13,5,'board','1'),(13,6,'board','1'),(1,4,'news','1'),(1,5,'news','1'),(1,6,'news','1'),(4,6,'news','1'),(3,4,'news','own'),(3,5,'news','all'),(3,6,'news','all'),(6,6,'news','1'),(2,4,'news','own'),(2,5,'news','all'),(2,6,'news','all'),(5,6,'news','1'),(9,5,'news','1'),(9,6,'news','1'),(8,4,'news','1'),(8,5,'news','1'),(8,6,'news','1'),(13,6,'news','1'),(1,3,'articles','1'),(3,3,'articles','own'),(2,3,'articles','own'),(1,3,'posts','1'),(3,3,'posts','own'),(2,3,'posts','own'),(1,3,'board','1'),(3,3,'board','own'),(2,3,'board','own');
/*!40000 ALTER TABLE `cms_perms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_photos`
--

DROP TABLE IF EXISTS `cms_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_photos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(11) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_photo` timestamp NULL DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `content_source` text,
  `content` text,
  `image` text NOT NULL,
  `exif` varchar(250) DEFAULT NULL,
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sizes` varchar(250) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `comments` int(11) unsigned DEFAULT '0',
  `hits_count` int(11) unsigned NOT NULL DEFAULT '0',
  `orientation` enum('square','landscape','portrait','') DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `camera` varchar(50) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `is_private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `downloads_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`date_pub`),
  KEY `album_id` (`album_id`,`date_pub`,`id`),
  KEY `slug` (`slug`),
  KEY `camera` (`camera`),
  KEY `ordering` (`ordering`),
  FULLTEXT KEY `title` (`title`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_photos`
--

LOCK TABLES `cms_photos` WRITE;
/*!40000 ALTER TABLE `cms_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_rating_log`
--

DROP TABLE IF EXISTS `cms_rating_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_rating_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT 'ID пользователя',
  `target_controller` varchar(32) DEFAULT NULL COMMENT 'Компонент (владелец оцениваемого контента)',
  `target_subject` varchar(32) DEFAULT NULL COMMENT 'Субъект (тип оцениваемого контента)',
  `target_id` int(11) unsigned DEFAULT NULL COMMENT 'ID субъекта (записи оцениваемого контента)',
  `score` tinyint(1) DEFAULT NULL COMMENT 'Значение оценки',
  `ip` int(10) unsigned DEFAULT NULL COMMENT 'ip-адрес проголосовавшего',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `target_id` (`target_id`,`target_controller`,`target_subject`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Оценки рейтинга';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_rating_log`
--

LOCK TABLES `cms_rating_log` WRITE;
/*!40000 ALTER TABLE `cms_rating_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_rating_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_rss_feeds`
--

DROP TABLE IF EXISTS `cms_rss_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_rss_feeds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) unsigned DEFAULT NULL,
  `ctype_name` varchar(32) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` text,
  `image` text,
  `mapping` text,
  `limit` int(11) unsigned NOT NULL DEFAULT '15',
  `is_enabled` tinyint(1) unsigned DEFAULT NULL,
  `is_cache` tinyint(1) unsigned DEFAULT NULL,
  `cache_interval` int(11) unsigned DEFAULT '60',
  `date_cached` timestamp NULL DEFAULT NULL,
  `template` varchar(30) NOT NULL DEFAULT 'feed' COMMENT 'Шаблон ленты',
  PRIMARY KEY (`id`),
  KEY `ctype_id` (`ctype_id`),
  KEY `ctype_name` (`ctype_name`),
  KEY `is_enabled` (`is_enabled`),
  KEY `is_cache` (`is_cache`),
  KEY `cache_interval` (`cache_interval`),
  KEY `date_cached` (`date_cached`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_rss_feeds`
--

LOCK TABLES `cms_rss_feeds` WRITE;
/*!40000 ALTER TABLE `cms_rss_feeds` DISABLE KEYS */;
INSERT INTO `cms_rss_feeds` VALUES (1,NULL,'comments','Комментарии',NULL,NULL,'---\r\ntitle: target_title\r\ndescription: content_html\r\npubDate: date_pub\r\n',15,1,NULL,60,NULL,'feed'),(2,5,'articles','Статьи',NULL,NULL,'---\ntitle: title\ndescription: teaser\npubDate: date_pub\nimage:\nimage_size: normal\n',15,1,NULL,60,NULL,'feed'),(3,6,'posts','Посты','Лента пользовательских постов',NULL,'---\ntitle: title\ndescription: content\npubDate: date_pub\nimage: picture\nimage_size: normal\n',15,1,NULL,60,NULL,'feed'),(4,7,'albums','Фотоальбомы',NULL,NULL,'---\ntitle: title\ndescription: content\npubDate: date_pub\nimage: cover_image\nimage_size: normal\n',15,1,NULL,60,NULL,'feed'),(5,9,'board','Объявления','Коммерческие объявления',NULL,'---\ntitle: title\ndescription: content\npubDate: date_pub\nimage: photo\nimage_size: normal\n',15,1,NULL,60,NULL,'feed'),(6,10,'news','Новости','Информационные сообщения',NULL,'---\ntitle: title\ndescription: content\npubDate: date_pub\nimage: photo\nimage_size: normal\n',15,1,NULL,60,NULL,'feed');
/*!40000 ALTER TABLE `cms_rss_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_scheduler_tasks`
--

DROP TABLE IF EXISTS `cms_scheduler_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_scheduler_tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `controller` varchar(32) DEFAULT NULL,
  `hook` varchar(32) DEFAULT NULL,
  `period` int(11) unsigned DEFAULT NULL,
  `date_last_run` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) unsigned DEFAULT NULL,
  `is_new` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `period` (`period`),
  KEY `date_last_run` (`date_last_run`),
  KEY `is_enabled` (`is_active`),
  KEY `is_new` (`is_new`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_scheduler_tasks`
--

LOCK TABLES `cms_scheduler_tasks` WRITE;
/*!40000 ALTER TABLE `cms_scheduler_tasks` DISABLE KEYS */;
INSERT INTO `cms_scheduler_tasks` VALUES (1,'Перевод пользователей между группами','users','migration',1440,'2017-10-11 13:55:03',1,0),(2,'Создание карты сайта','sitemap','generate',1440,'2017-10-11 13:55:04',1,0),(3,'Выдача приглашений пользователям','auth','send_invites',1440,'2017-10-11 13:55:04',1,0),(4,'Публикация контента по расписанию','content','publication',1440,'2017-10-11 13:55:04',1,0),(5,'Очистка удалённых личных сообщений','messages','clean',1440,'2017-10-11 13:55:04',1,0),(6,'Удаление пользователей, не прошедших верификацию','auth','delete_expired_unverified',60,'2017-10-11 16:05:04',1,0),(7,'Удаление просроченных записей из корзины','moderation','trash',30,'2017-10-11 16:05:06',1,0);
/*!40000 ALTER TABLE `cms_scheduler_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_sessions_online`
--

DROP TABLE IF EXISTS `cms_sessions_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_sessions_online` (
  `session_id` varchar(32) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `session_id` (`session_id`),
  KEY `user_id` (`user_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_sessions_online`
--

LOCK TABLES `cms_sessions_online` WRITE;
/*!40000 ALTER TABLE `cms_sessions_online` DISABLE KEYS */;
INSERT INTO `cms_sessions_online` VALUES (NULL,2,'2017-10-11 16:17:14');
/*!40000 ALTER TABLE `cms_sessions_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tags`
--

DROP TABLE IF EXISTS `cms_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(32) NOT NULL,
  `frequency` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`),
  UNIQUE KEY `frequency` (`frequency`,`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Список тегов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tags`
--

LOCK TABLES `cms_tags` WRITE;
/*!40000 ALTER TABLE `cms_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_tags_bind`
--

DROP TABLE IF EXISTS `cms_tags_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tags_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) unsigned DEFAULT NULL,
  `target_controller` varchar(32) DEFAULT NULL,
  `target_subject` varchar(32) DEFAULT NULL,
  `target_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `target_id` (`target_id`,`target_controller`,`target_subject`),
  KEY `tag_id` (`tag_id`),
  KEY `target_controller` (`target_controller`,`target_subject`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Привязка тегов к материалам';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tags_bind`
--

LOCK TABLES `cms_tags_bind` WRITE;
/*!40000 ALTER TABLE `cms_tags_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_tags_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_uploaded_files`
--

DROP TABLE IF EXISTS `cms_uploaded_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_uploaded_files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL COMMENT 'Путь к файлу',
  `name` varchar(255) DEFAULT NULL COMMENT 'Имя файла',
  `size` int(11) unsigned DEFAULT NULL COMMENT 'Размер файла',
  `counter` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Счетчик скачиваний',
  `type` enum('file','image','audio','video') NOT NULL DEFAULT 'file' COMMENT 'Тип файла',
  `target_controller` varchar(32) DEFAULT NULL COMMENT 'Контроллер привязки',
  `target_subject` varchar(32) DEFAULT NULL COMMENT 'Субъект привязки',
  `target_id` int(11) unsigned DEFAULT NULL COMMENT 'ID субъекта',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT 'ID владельца',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата добавления',
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `user_id` (`user_id`),
  KEY `target_controller` (`target_controller`,`target_subject`,`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_uploaded_files`
--

LOCK TABLES `cms_uploaded_files` WRITE;
/*!40000 ALTER TABLE `cms_uploaded_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_uploaded_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groups` text COMMENT 'Массив групп пользователя',
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL COMMENT 'Хэш пароля',
  `password_salt` varchar(16) DEFAULT NULL COMMENT 'Соль пароля',
  `is_admin` tinyint(1) unsigned DEFAULT NULL COMMENT 'Администратор?',
  `nickname` varchar(100) NOT NULL COMMENT 'Имя',
  `date_reg` timestamp NULL DEFAULT NULL COMMENT 'Дата регистрации',
  `date_log` timestamp NULL DEFAULT NULL COMMENT 'Дата последней авторизации',
  `date_group` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время последней смены группы',
  `ip` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint(1) unsigned DEFAULT NULL COMMENT 'Удалён',
  `is_locked` tinyint(1) unsigned DEFAULT NULL COMMENT 'Заблокирован',
  `lock_until` timestamp NULL DEFAULT NULL COMMENT 'Блокировка до',
  `lock_reason` varchar(250) DEFAULT NULL COMMENT 'Причина блокировки',
  `pass_token` varchar(32) DEFAULT NULL COMMENT 'Ключ для восстановления пароля',
  `date_token` timestamp NULL DEFAULT NULL COMMENT 'Дата создания ключа восстановления пароля',
  `files_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Кол-во загруженных файлов',
  `friends_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Кол-во друзей',
  `time_zone` varchar(32) DEFAULT NULL COMMENT 'Часовой пояс',
  `karma` int(11) NOT NULL DEFAULT '0' COMMENT 'Репутация',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT 'Рейтинг',
  `theme` text COMMENT 'Настройки темы профиля',
  `notify_options` text COMMENT 'Настройки уведомлений',
  `privacy_options` text COMMENT 'Настройки приватности',
  `status_id` int(11) unsigned DEFAULT NULL COMMENT 'Текстовый статус',
  `status_text` varchar(140) DEFAULT NULL COMMENT 'Текст статуса',
  `inviter_id` int(11) unsigned DEFAULT NULL,
  `invites_count` int(11) unsigned NOT NULL DEFAULT '0',
  `date_invites` timestamp NULL DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `city` int(11) unsigned DEFAULT NULL,
  `city_cache` varchar(128) DEFAULT NULL,
  `hobby` text,
  `avatar` text,
  `skype` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `music` varchar(255) DEFAULT NULL,
  `movies` varchar(255) DEFAULT NULL,
  `site` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `pass_token` (`pass_token`),
  KEY `birth_date` (`birth_date`),
  KEY `city` (`city`),
  KEY `is_admin` (`is_admin`),
  KEY `friends_count` (`friends_count`),
  KEY `karma` (`karma`),
  KEY `rating` (`rating`),
  KEY `is_locked` (`is_locked`),
  KEY `date_reg` (`date_reg`),
  KEY `date_log` (`date_log`),
  KEY `date_group` (`date_group`),
  KEY `inviter_id` (`inviter_id`),
  KEY `date_invites` (`date_invites`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'---\n- 6\n','admin@regvo.ru','7a2a1a3779d170f39fde296c551fd40a','02480f1963292bd8',1,'nizkovsky','2017-09-24 07:10:24','2017-09-24 07:55:22','2017-09-24 07:10:24','127.0.0.1',NULL,NULL,NULL,NULL,NULL,'2017-09-24 08:05:42',0,0,'Europe/Moscow',0,0,'---\nbg_img: null\nbg_color: \'#ffffff\'\nbg_repeat: no-repeat\nbg_pos_x: left\nbg_pos_y: top\nmargin_top: 0\n','---\nusers_friend_add: both\nusers_friend_delete: both\ncomments_new: both\ncomments_reply: email\nusers_friend_aссept: pm\ngroups_invite: email\nusers_wall_write: email\n','---\nusers_profile_view: anyone\nmessages_pm: anyone\n',NULL,NULL,NULL,0,'2017-09-24 08:05:42','1974-05-01 00:00:00',15789553,'Красавино',NULL,'---\nnormal: 000/u2/cb/76/e9a66712.jpg\nsmall: 000/u2/b8/cd/d28f9ec6.jpg\nmicro: 000/u2/c4/dc/44066336.jpg\n',NULL,NULL,NULL,NULL,NULL),(2,'---\n- 6\n','administrator@regvo.ru','62d936edfa8c91e951c245628cc38768','1e17624282235180',1,'Администратор','2017-09-24 07:55:13','2017-10-11 16:17:14','2017-09-24 07:55:13','::1',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'Europe/Moscow',0,0,NULL,'---\ncomments_new: email\ncomments_reply: email\ngroups_invite: both\nmessages_new: email\nusers_friend_add: email\nusers_friend_accept: pm\nusers_friend_delete: email\nusers_wall_write: email\n',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'---\n- 4\n','senn@bk.ru','a0dd133d4ca70d320c5ef2072ce9243a','bc95b28156875856',NULL,'snn','2017-10-02 15:49:04','2017-10-11 03:43:38','2017-10-02 15:49:04','::1',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'Europe/Moscow',0,0,NULL,'---\ncomments_new: email\ncomments_reply: email\ngroups_invite: both\nmessages_new: email\nusers_friend_add: email\nusers_friend_accept: pm\nusers_friend_delete: email\nusers_wall_write: email\n',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_auth_tokens`
--

DROP TABLE IF EXISTS `cms_users_auth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_auth_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `auth_token` varchar(32) DEFAULT NULL,
  `date_auth` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_log` timestamp NULL DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `access_type` varchar(100) DEFAULT NULL,
  `ip` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_token` (`auth_token`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_auth_tokens`
--

LOCK TABLES `cms_users_auth_tokens` WRITE;
/*!40000 ALTER TABLE `cms_users_auth_tokens` DISABLE KEYS */;
INSERT INTO `cms_users_auth_tokens` VALUES (1,'497e167befabca570d1257746b05ef00','2017-09-24 07:56:05','2017-10-11 16:17:10',2,'---\ntype: desktop\nsubj: null\n',2130706433);
/*!40000 ALTER TABLE `cms_users_auth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_contacts`
--

DROP TABLE IF EXISTS `cms_users_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_contacts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT 'ID пользователя',
  `contact_id` int(11) unsigned DEFAULT NULL COMMENT 'ID контакта (другого пользователя)',
  `date_last_msg` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата последнего сообщения',
  `messages` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Кол-во сообщений',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`contact_id`),
  KEY `contact_id` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Контакты пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_contacts`
--

LOCK TABLES `cms_users_contacts` WRITE;
/*!40000 ALTER TABLE `cms_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_users_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_fields`
--

DROP TABLE IF EXISTS `cms_users_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ctype_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `hint` varchar(200) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `fieldset` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_in_list` tinyint(1) unsigned DEFAULT NULL,
  `is_in_item` tinyint(1) unsigned DEFAULT NULL,
  `is_in_filter` tinyint(1) unsigned DEFAULT NULL,
  `is_private` tinyint(1) unsigned DEFAULT NULL,
  `is_fixed` tinyint(1) unsigned DEFAULT NULL,
  `is_fixed_type` tinyint(1) unsigned DEFAULT NULL,
  `is_system` tinyint(1) unsigned DEFAULT NULL,
  `values` text,
  `options` text,
  `groups_read` text,
  `groups_edit` text,
  `filter_view` text,
  PRIMARY KEY (`id`),
  KEY `ordering` (`ordering`),
  KEY `is_in_list` (`is_in_list`),
  KEY `is_in_item` (`is_in_item`),
  KEY `is_in_filter` (`is_in_filter`),
  KEY `is_private` (`is_private`),
  KEY `is_fixed` (`is_fixed`),
  KEY `is_system` (`is_system`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Поля профилей пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_fields`
--

LOCK TABLES `cms_users_fields` WRITE;
/*!40000 ALTER TABLE `cms_users_fields` DISABLE KEYS */;
INSERT INTO `cms_users_fields` VALUES (1,NULL,'birth_date','Возраст',NULL,4,'Анкета','age',NULL,1,1,NULL,NULL,NULL,NULL,NULL,'---\ndate_title: Дата рождения\nshow_y: 1\nshow_m: \nshow_d: \nshow_h: \nshow_i: \nrange: YEAR\nlabel_in_item: left\nis_required: \nis_digits: \nis_alphanumeric: \nis_email: \nis_unique: \n','---\n- 0\n','---\n- 0\n',NULL),(2,NULL,'city','Город','Укажите город, в котором вы живете',3,'Анкета','city',NULL,1,1,NULL,NULL,NULL,NULL,NULL,'---\nlocation_type: cities\nlocation_group:\noutput_string:\nlabel_in_list: none\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n','---\n- 0\n'),(3,NULL,'hobby','Расскажите о себе','Расскажите о ваших интересах и увлечениях',10,'О себе','text',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nmin_length: 0\nmax_length: 255\nlabel_in_item: none\nis_required: \nis_digits: \nis_alphanumeric: \nis_email: \nis_unique: \n','---\n- 0\n','---\n- 0\n',NULL),(5,NULL,'nickname','Никнейм','Ваше имя для отображения на сайте',1,'Анкета','string',1,1,1,NULL,1,NULL,1,NULL,'---\nmin_length: 2\nmax_length: 100\nshow_symbol_count: 1\nis_autolink: null\nis_required: 1\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n','---\n- 0\n'),(6,NULL,'avatar','Аватар','Ваша основная фотография',2,'Анкета','image',1,1,NULL,NULL,1,NULL,1,NULL,'---\nsize_teaser: micro\nsize_full: normal\nsizes:\n  - micro\n  - small\n  - normal\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\n','---\n- 0\n','---\n- 0\n',NULL),(8,NULL,'skype','Skype',NULL,8,'Контакты','string',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nmin_length: 0\nmax_length: 32\nlabel_in_item: left\nis_required: \nis_digits: \nis_alphanumeric: \nis_email: \nis_unique: \n','---\n- 0\n','---\n- 0\n',NULL),(9,NULL,'phone','Телефон',NULL,7,'Контакты','string',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nmin_length: 0\nmax_length: 255\nlabel_in_item: left\nis_required: \nis_digits: \nis_alphanumeric: \nis_email: \nis_unique: \n','---\n- 0\n','---\n- 0\n',NULL),(10,NULL,'music','Любимая музыка',NULL,6,'Предпочтения','string',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nmin_length: 0\nmax_length: 255\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\n','---\n- 0\n','---\n- 0\n',NULL),(11,NULL,'movies','Любимые фильмы',NULL,5,'Предпочтения','string',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nmin_length: 0\nmax_length: 255\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\n','---\n- 0\n','---\n- 0\n',NULL),(12,NULL,'site','Сайт','Ваш персональный веб-сайт',9,'Контакты','url',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'---\nredirect: 1\nauto_http: 1\nlabel_in_item: left\nis_required: null\nis_digits: null\nis_alphanumeric: null\nis_email: null\nis_unique: null\n','---\n- 0\n','---\n- 0\n',NULL);
/*!40000 ALTER TABLE `cms_users_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_friends`
--

DROP TABLE IF EXISTS `cms_users_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_friends` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT 'ID пользователя',
  `friend_id` int(11) unsigned DEFAULT NULL COMMENT 'ID друга',
  `is_mutual` tinyint(1) unsigned DEFAULT NULL COMMENT 'Дружба взаимна?',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`is_mutual`),
  KEY `friend_id` (`friend_id`,`is_mutual`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Дружба пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_friends`
--

LOCK TABLES `cms_users_friends` WRITE;
/*!40000 ALTER TABLE `cms_users_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_users_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_groups`
--

DROP TABLE IF EXISTS `cms_users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT 'Системное имя',
  `title` varchar(32) NOT NULL COMMENT 'Название группы',
  `is_fixed` tinyint(1) unsigned DEFAULT NULL COMMENT 'Системная?',
  `is_public` tinyint(1) unsigned DEFAULT NULL COMMENT 'Группу можно выбрать при регистрации?',
  `is_filter` tinyint(1) unsigned DEFAULT NULL COMMENT 'Выводить группу в фильтре пользователей?',
  PRIMARY KEY (`id`),
  KEY `is_fixed` (`is_fixed`),
  KEY `is_public` (`is_public`),
  KEY `is_filter` (`is_filter`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Группы пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_groups`
--

LOCK TABLES `cms_users_groups` WRITE;
/*!40000 ALTER TABLE `cms_users_groups` DISABLE KEYS */;
INSERT INTO `cms_users_groups` VALUES (1,'guests','Гости',1,NULL,NULL),(3,'newbies','Новые',NULL,NULL,NULL),(4,'members','Пользователи',NULL,NULL,NULL),(5,'moderators','Модераторы',NULL,NULL,NULL),(6,'admins','Администраторы',NULL,NULL,1);
/*!40000 ALTER TABLE `cms_users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_groups_members`
--

DROP TABLE IF EXISTS `cms_users_groups_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_groups_members` (
  `user_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Привязка пользователей к группам';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_groups_members`
--

LOCK TABLES `cms_users_groups_members` WRITE;
/*!40000 ALTER TABLE `cms_users_groups_members` DISABLE KEYS */;
INSERT INTO `cms_users_groups_members` VALUES (2,6),(1,6),(3,4);
/*!40000 ALTER TABLE `cms_users_groups_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_groups_migration`
--

DROP TABLE IF EXISTS `cms_users_groups_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_groups_migration` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) unsigned DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `group_from_id` int(11) unsigned DEFAULT NULL,
  `group_to_id` int(11) unsigned DEFAULT NULL,
  `is_keep_group` tinyint(1) unsigned DEFAULT NULL,
  `is_passed` tinyint(1) unsigned DEFAULT NULL,
  `is_rating` tinyint(1) unsigned DEFAULT NULL,
  `is_karma` tinyint(1) unsigned DEFAULT NULL,
  `passed_days` int(11) unsigned DEFAULT NULL,
  `passed_from` tinyint(1) unsigned DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `karma` int(11) DEFAULT NULL,
  `is_notify` tinyint(1) unsigned DEFAULT NULL,
  `notify_text` text,
  PRIMARY KEY (`id`),
  KEY `group_from_id` (`group_from_id`),
  KEY `group_to_id` (`group_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Правила перевода между группами';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_groups_migration`
--

LOCK TABLES `cms_users_groups_migration` WRITE;
/*!40000 ALTER TABLE `cms_users_groups_migration` DISABLE KEYS */;
INSERT INTO `cms_users_groups_migration` VALUES (1,1,'Проверка временем',3,4,0,1,NULL,NULL,3,0,NULL,NULL,1,'С момента вашей регистрации прошло 3 дня.\r\nТеперь вам доступны все функции сайта.');
/*!40000 ALTER TABLE `cms_users_groups_migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_ignors`
--

DROP TABLE IF EXISTS `cms_users_ignors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_ignors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL COMMENT 'ID пользователя',
  `ignored_user_id` int(11) unsigned NOT NULL COMMENT 'ID игнорируемого пользователя',
  PRIMARY KEY (`id`),
  KEY `ignored_user_id` (`ignored_user_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_ignors`
--

LOCK TABLES `cms_users_ignors` WRITE;
/*!40000 ALTER TABLE `cms_users_ignors` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_users_ignors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_invites`
--

DROP TABLE IF EXISTS `cms_users_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_invites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `email` (`email`),
  KEY `key` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_invites`
--

LOCK TABLES `cms_users_invites` WRITE;
/*!40000 ALTER TABLE `cms_users_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_users_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_karma`
--

DROP TABLE IF EXISTS `cms_users_karma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_karma` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT 'Кто поставил',
  `profile_id` int(11) unsigned DEFAULT NULL COMMENT 'Кому поставил',
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата оценки',
  `points` tinyint(2) DEFAULT NULL COMMENT 'Оценка',
  `comment` varchar(256) DEFAULT NULL COMMENT 'Пояснение',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `profile_id` (`profile_id`),
  KEY `date_pub` (`date_pub`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Оценки репутации пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_karma`
--

LOCK TABLES `cms_users_karma` WRITE;
/*!40000 ALTER TABLE `cms_users_karma` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_users_karma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_messages`
--

DROP TABLE IF EXISTS `cms_users_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` int(11) unsigned NOT NULL COMMENT 'ID отправителя',
  `to_id` int(11) unsigned NOT NULL COMMENT 'ID получателя',
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
  `date_delete` timestamp NULL DEFAULT NULL COMMENT 'Дата удаления',
  `is_new` tinyint(1) unsigned DEFAULT '1' COMMENT 'Не прочитано?',
  `content` text NOT NULL COMMENT 'Текст сообщения',
  `is_deleted` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from_id` (`from_id`,`to_id`),
  KEY `to_id` (`to_id`,`is_new`,`is_deleted`),
  KEY `date_delete` (`date_delete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Личные сообщения пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_messages`
--

LOCK TABLES `cms_users_messages` WRITE;
/*!40000 ALTER TABLE `cms_users_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_users_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_notices`
--

DROP TABLE IF EXISTS `cms_users_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_notices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `date_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text,
  `options` text,
  `actions` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`date_pub`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_notices`
--

LOCK TABLES `cms_users_notices` WRITE;
/*!40000 ALTER TABLE `cms_users_notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_users_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_personal_settings`
--

DROP TABLE IF EXISTS `cms_users_personal_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_personal_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `skey` varchar(150) DEFAULT NULL,
  `settings` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`skey`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_personal_settings`
--

LOCK TABLES `cms_users_personal_settings` WRITE;
/*!40000 ALTER TABLE `cms_users_personal_settings` DISABLE KEYS */;
INSERT INTO `cms_users_personal_settings` VALUES (1,1,'admin.grid_filter.set_scheduler','page=1&perpage=30&order_by=id&order_to=asc&advanced_filter='),(2,1,'admin.grid_filter.controllers','order_by=title&order_to=asc&title=&version=&author=&advanced_filter='),(3,1,'admin.grid_filter.events','order_by=ordering&order_to=asc&event=&listener=&advanced_filter='),(4,1,'admin.grid_filter.users','page=1&perpage=30&order_by=id&order_to=asc&id=&nickname=&email=&ip=&date_reg=&karma=&rating=&advanced_filter='),(5,2,'admin.grid_filter.controllers','order_by=title&order_to=asc&title=&version=&author=&advanced_filter='),(6,2,'admin.grid_filter.content.pages','page=1&perpage=30&order_by=id&order_to=desc&id=&title=&advanced_filter=&ctype_changed=0'),(7,2,'admin.grid_filter.content.articles','page=1&perpage=30&order_by=id&order_to=desc&id=&title=&advanced_filter=&ctype_changed=1'),(9,2,'admin.grid_filter.content.posts','page=1&perpage=30&order_by=id&order_to=desc&id=&title=&advanced_filter=&ctype_changed=1'),(10,2,'admin.grid_filter.content.albums','page=1&perpage=30&order_by=id&order_to=desc&id=&title=&advanced_filter=&ctype_changed=1'),(11,2,'admin.grid_filter.content.board','page=1&perpage=30&order_by=id&order_to=desc&id=&title=&advanced_filter=&ctype_changed=1'),(13,2,'admin.grid_filter.content.news','page=1&perpage=30&order_by=id&order_to=desc&id=&title=&advanced_filter=&ctype_changed=0'),(14,2,'admin.grid_filter.set_scheduler','page=1&perpage=30&order_by=id&order_to=asc&advanced_filter='),(15,2,'admin.grid_filter.events','order_by=ordering&order_to=asc&event=&listener=&advanced_filter='),(16,2,'admin.grid_filter.ctypes','page=1&perpage=30&order_by=id&order_to=asc&id=&title=&name=&description=&advanced_filter='),(17,2,'admin.grid_filter.users','page=1&perpage=30&order_by=id&order_to=asc&id=&nickname=&email=&ip=&date_reg=&karma=&rating=&advanced_filter=');
/*!40000 ALTER TABLE `cms_users_personal_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_statuses`
--

DROP TABLE IF EXISTS `cms_users_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_statuses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT 'Пользователь',
  `date_pub` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата публикации',
  `content` varchar(140) DEFAULT NULL COMMENT 'Текст статуса',
  `replies_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Количество ответов',
  `wall_entry_id` int(11) unsigned DEFAULT NULL COMMENT 'ID записи на стене',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `date_pub` (`date_pub`),
  KEY `replies_count` (`replies_count`),
  KEY `wall_entry_id` (`wall_entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Текстовые статусы пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_statuses`
--

LOCK TABLES `cms_users_statuses` WRITE;
/*!40000 ALTER TABLE `cms_users_statuses` DISABLE KEYS */;
INSERT INTO `cms_users_statuses` VALUES (1,1,'2017-09-24 07:10:56','We are all made of stars © Moby',1,1);
/*!40000 ALTER TABLE `cms_users_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_tabs`
--

DROP TABLE IF EXISTS `cms_users_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users_tabs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL,
  `controller` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `is_active` tinyint(1) unsigned DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `groups_view` text,
  `groups_hide` text,
  `show_only_owner` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `is_active` (`is_active`,`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_tabs`
--

LOCK TABLES `cms_users_tabs` WRITE;
/*!40000 ALTER TABLE `cms_users_tabs` DISABLE KEYS */;
INSERT INTO `cms_users_tabs` VALUES (1,'Лента','activity','activity',1,1,NULL,NULL,NULL),(3,'Друзья','users','friends',1,2,NULL,NULL,NULL),(4,'Комментарии','comments','comments',1,10,NULL,NULL,NULL),(5,'Группы','groups','groups',1,3,NULL,NULL,NULL),(6,'Репутация','users','karma',1,11,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_users_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_wall_entries`
--

DROP TABLE IF EXISTS `cms_wall_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_wall_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date_pub` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата публикации',
  `controller` varchar(32) DEFAULT NULL COMMENT 'Компонент владелец профиля',
  `profile_type` varchar(32) DEFAULT NULL COMMENT 'Тип профиля (пользователь/группа)',
  `profile_id` int(11) unsigned DEFAULT NULL COMMENT 'ID профиля',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT 'ID автора',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'ID родительской записи',
  `status_id` int(11) unsigned DEFAULT NULL COMMENT 'Связь со статусом пользователя',
  `content` text COMMENT 'Текст записи',
  `content_html` text COMMENT 'Текст после типографа',
  PRIMARY KEY (`id`),
  KEY `date_pub` (`date_pub`),
  KEY `user_id` (`user_id`),
  KEY `parent_id` (`parent_id`),
  KEY `profile_id` (`profile_id`,`profile_type`),
  KEY `status_id` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Записи на стенах профилей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_wall_entries`
--

LOCK TABLES `cms_wall_entries` WRITE;
/*!40000 ALTER TABLE `cms_wall_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_wall_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_widgets`
--

DROP TABLE IF EXISTS `cms_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_widgets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(32) DEFAULT NULL COMMENT 'Контроллер',
  `name` varchar(32) NOT NULL COMMENT 'Системное имя',
  `title` varchar(64) DEFAULT NULL COMMENT 'Название',
  `author` varchar(128) DEFAULT NULL COMMENT 'Имя автора',
  `url` varchar(250) DEFAULT NULL COMMENT 'Сайт автора',
  `version` varchar(8) DEFAULT NULL COMMENT 'Версия',
  `is_external` tinyint(1) DEFAULT '1',
  `files` varchar(10000) DEFAULT NULL,
  `addon_id` int(11) unsigned DEFAULT NULL COMMENT 'ID дополнения в официальном каталоге',
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `name` (`name`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_widgets`
--

LOCK TABLES `cms_widgets` WRITE;
/*!40000 ALTER TABLE `cms_widgets` DISABLE KEYS */;
INSERT INTO `cms_widgets` VALUES (1,NULL,'text','Текстовый блок','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(2,'users','list','Список пользователей','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(3,NULL,'menu','Меню','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(4,'content','list','Список контента','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(5,'content','categories','Категории','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(6,'activity','list','Лента активности','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(7,'comments','list','Новые комментарии','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(8,'users','online','Кто онлайн','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(9,'users','avatar','Аватар пользователя','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(10,'tags','cloud','Облако тегов','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(11,'content','slider','Слайдер контента','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(12,NULL,'auth','Авторизация','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(13,'search','search','Поиск','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(14,NULL,'html','HTML блок','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(15,'content','filter','Фильтр контента','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(16,'photos','list','Список фотографий','InstantCMS Team','http://www.instantcms.ru','2.0',NULL,NULL,NULL),(17,NULL,'visually_impaired','Версия для слабовидящих','My-InstantCMS.Ru','http://my-instantcms.ru/','1.0.0',1,'---\ntemplates:\n  boxed:\n    js:\n      - jquery.newsticker.js\n      - my.js\n      - flexmenu.min.js\n    0: scheme.html\n    css:\n      0: responsive.css\n      1: my.css\n      2: bootstrap.min.css\n      content:\n        - wcl_top_grid.css\n      boxedFont:\n        fonts:\n          - boxedFont.eot\n          - boxedFont.svg\n          - boxedFont.ttf\n          - boxedFont.woff\n        0: style.css\n      3: styles.css\n    1: options.css.php\n    images:\n      - nophoto_normal.png\n      - nophoto_micro.png\n      - nophoto_small.png\n      - header-logo-bg.png\n      - nophoto_big.png\n    controllers:\n      comments:\n        widgets:\n          list:\n            - simple.tpl.php\n      photos:\n        widgets:\n          list:\n            - small.tpl.php\n      content:\n        widgets:\n          list:\n            - top_grid.tpl.php\n            - ticker.tpl.php\n      search:\n        widgets:\n          search:\n            - top.tpl.php\n    widgets:\n      0: menu_mobile.tpl.php\n      visually_impaired:\n        - visually_impaired.tpl.php\n    profiles:\n      - styler.php\n      - options.form.php\n    2: options.form.php\n    3: main.tpl.php\nsystem:\n  widgets:\n    visually_impaired:\n      - widget.php\n  languages:\n    en:\n      templates:\n        - boxed.php\n    ru:\n      templates:\n        - boxed.php\n',497),(18,NULL,'cbrf','Курсы валют','Me','https://regvo.ru','2.8.2',1,NULL,NULL),(20,NULL,'updownscroll','Скролл Вверх/Вниз','Val',NULL,'1.1',1,'---\ntemplates:\n  default:\n    js:\n      - updownscroll.min.js\n      - updownscroll.js\n    css:\n      - updownscroll.css\n    widgets:\n      updownscroll:\n        - updownscroll.tpl.php\nsystem:\n  widgets:\n    updownscroll:\n      - widget.php\n      - options.form.php\n  languages:\n    ru:\n      widgets:\n        - updownscroll.php\n',NULL);
/*!40000 ALTER TABLE `cms_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_widgets_bind`
--

DROP TABLE IF EXISTS `cms_widgets_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_widgets_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(30) DEFAULT NULL COMMENT 'Привязка к шаблону',
  `template_layouts` varchar(500) DEFAULT NULL,
  `widget_id` int(11) unsigned NOT NULL,
  `title` varchar(128) NOT NULL COMMENT 'Заголовок',
  `links` text,
  `class` varchar(64) DEFAULT NULL COMMENT 'CSS класс',
  `class_title` varchar(64) DEFAULT NULL,
  `class_wrap` varchar(64) DEFAULT NULL,
  `is_title` tinyint(1) unsigned DEFAULT '1' COMMENT 'Показывать заголовок',
  `is_enabled` tinyint(1) unsigned DEFAULT NULL COMMENT 'Включен?',
  `is_tab_prev` tinyint(1) unsigned DEFAULT NULL COMMENT 'Объединять с предыдущим?',
  `groups_view` text COMMENT 'Показывать группам',
  `groups_hide` text COMMENT 'Не показывать группам',
  `options` text COMMENT 'Опции',
  `page_id` int(11) unsigned DEFAULT NULL COMMENT 'ID страницы для вывода',
  `position` varchar(32) DEFAULT NULL COMMENT 'Имя позиции',
  `ordering` int(11) unsigned DEFAULT NULL COMMENT 'Порядковый номер',
  `tpl_body` varchar(128) DEFAULT NULL,
  `tpl_wrap` varchar(128) DEFAULT NULL,
  `device_types` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position`),
  KEY `widget_id` (`widget_id`),
  KEY `page_id` (`page_id`,`position`,`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='Виджеты сайта';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_widgets_bind`
--

LOCK TABLES `cms_widgets_bind` WRITE;
/*!40000 ALTER TABLE `cms_widgets_bind` DISABLE KEYS */;
INSERT INTO `cms_widgets_bind` VALUES (1,'default',NULL,3,'Главное меню',NULL,NULL,NULL,NULL,NULL,1,NULL,'---\n- 0\n',NULL,'---\nmenu: main\nis_detect: 1\nmax_items: 8\n',0,'top',1,NULL,NULL,NULL),(2,'default',NULL,3,'Меню авторизации',NULL,NULL,NULL,NULL,NULL,1,NULL,'---\n- 1\n',NULL,'---\nmenu: header\nis_detect: 1\nmax_items: 0\n',0,'header',1,NULL,NULL,NULL),(5,'default',NULL,3,'Меню действий',NULL,NULL,NULL,'fixed_actions_menu',NULL,1,NULL,'---\n- 0\n',NULL,'---\nmenu: toolbar\ntemplate: menu\nis_detect: null\nmax_items: 0\n',0,'left-top',1,'menu','wrapper',NULL),(6,'default',NULL,8,'Сейчас онлайн',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nis_avatars: 1\ngroups: null\n',1,'right-bottom',1,NULL,NULL,NULL),(8,'default',NULL,10,'Облако тегов',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nordering: tag\nstyle: cloud\nmax_fs: 22\nmin_fs: 12\nlimit: 10\n',1,'right-bottom',4,NULL,NULL,NULL),(9,'default',NULL,6,'Активность','Вся | activity\r\n{Моих друзей | activity/index/friends}\r\n{Моя | activity/index/my}',NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\ndataset: all\nshow_avatars: 1\ndate_group: null\nlimit: 5\n',1,'left-bottom',4,NULL,NULL,NULL),(10,'default',NULL,4,'Статьи','Все статьи | articles\r\n{Добавить статью | articles/add}','columns-2',NULL,NULL,1,1,1,'---\n- 0\n',NULL,'---\nctype_id: 5\ndataset:\nimage_field:\nteaser_field:\nstyle: basic\nshow_details: 1\nlimit: 5\n',1,'left-bottom',2,NULL,NULL,NULL),(11,'default',NULL,7,'Комментарии','Все | comments\r\n{Моих друзей | comments/index/friends}\r\n{Мои | comments/index/my}',NULL,NULL,NULL,1,1,1,'---\n- 0\n',NULL,'---\nshow_avatars: 1\nshow_text: 1\nlimit: 10\n',1,'left-bottom',5,NULL,NULL,NULL),(12,'default',NULL,5,'Категории',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nctype_name: 0\nis_root: null\n',147,'right-bottom',1,NULL,NULL,NULL),(13,'default',NULL,4,'Фотоальбомы','Все альбомы | albums\r\n{Загрузить фото | photos/upload}',NULL,NULL,NULL,1,1,1,'---\n- 0\n',NULL,'---\nctype_id: 7\ndataset:\nimage_field: cover_image\nteaser_field:\nstyle: tiles_big\nshow_details: null\nlimit: 5\n',1,'left-bottom',3,NULL,NULL,NULL),(14,'default',NULL,2,'Новые пользователи','Все | users',NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nshow: all\ndataset: latest\nstyle: tiles\ngroups: null\nlimit: 10\n',1,'right-bottom',2,NULL,NULL,NULL),(15,'default',NULL,3,'Нижнее меню',NULL,NULL,NULL,NULL,NULL,1,NULL,'---\n- 0\n',NULL,'---\nmenu: footer\nis_detect: 1\nmax_items: 0\n',0,'footer',1,NULL,NULL,NULL),(16,'default',NULL,4,'Новости','Все новости | news\r\nОбсуждаемые | news-discussed\r\n{Приватные | news/from_friends}',NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nctype_id: 10\ncategory_id: 1\ndataset: 0\nimage_field: photo\nteaser_field:\nstyle: featured\nshow_details: 1\nteaser_len:\nlimit: 5\n',1,'left-bottom',1,NULL,NULL,NULL),(17,'default',NULL,11,'Слайдер контента',NULL,NULL,NULL,NULL,NULL,1,NULL,'---\n- 0\n',NULL,'---\nctype_id: 10\ncategory_id: 1\ndataset: 0\nimage_field: photo\nbig_image_field:\nbig_image_preset: big\nteaser_field: teaser\ndelay: 5\nlimit: 5\n',1,'left-top',1,NULL,NULL,NULL),(18,'default',NULL,4,'Новые объявления','Все | board',NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nctype_id: 9\ndataset:\nimage_field: photo\nteaser_field:\nstyle: compact\nshow_details: null\nlimit: 10\n',1,'right-bottom',3,NULL,NULL,NULL),(20,'default',NULL,12,'Войти на сайт',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'',0,'right-center',1,NULL,NULL,NULL),(21,'default',NULL,13,'Поиск',NULL,NULL,NULL,NULL,NULL,1,NULL,'---\n- 0\n',NULL,'',1,'right-top',1,NULL,NULL,NULL),(22,'default',NULL,9,'Меню пользователя',NULL,NULL,NULL,NULL,NULL,1,NULL,'---\n- 0\n','---\n- 1\n','---\nmenu: personal\nis_detect: 1\nmax_items: 0\n',0,'header',3,'avatar','wrapper',NULL),(23,'default',NULL,3,'Уведомления',NULL,NULL,NULL,NULL,NULL,1,NULL,'---\n- 0\n','---\n- 1\n','---\nmenu: notices\ntemplate: menu\nis_detect: null\nmax_items: 0\n',0,'header',3,'menu','wrapper',NULL),(24,'boxed',NULL,14,'Иконки',NULL,NULL,NULL,NULL,1,NULL,NULL,'---\n- 0\n',NULL,'---\ncontent: |\n  <ul class=\"my_socialicons\">\r\n    <li><a href=\"https://www.facebook.com/instantcms/\"><i class=\"bx-facebook-f\"></i></a></li>\r\n    <li><a href=\"https://vk.com/instantcms2\"><i class=\"bx-vk\"></i></a></li>\r\n    <li><a href=\"#\"><i class=\"bx-odnoklassniki\"></i></a></li>\r\n    <li><a href=\"https://twitter.com/\"><i class=\"bx-twitter\"></i></a></li>\r\n    <li><a href=\"https://www.youtube.com/channel/UCAEMbDswp1KnaRe7Ig80IMA\"><i class=\"bx-youtube\"></i></a></li>\r\n  </ul>\n',0,'topbar_right',1,'html','wrapper',NULL),(25,'boxed',NULL,3,'Верхнее меню',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nmenu: header\ntemplate: menu\nis_detect: 1\nmax_items: 0\n',0,'topbar_right',2,'menu','wrapper_plain',NULL),(26,'boxed',NULL,14,'Баннер',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- 0\n',NULL,'---\ncontent: \'<a href=\"http://www.instantcms.ru/\" title=\"InstantCMS\"><img src=\"http://www.instantcms.ru/images/banners/banner468x60v1.gif\" border=\"0\"/></a>\'\n',0,'topbar_banner',1,'html','wrapper_plain',NULL),(27,'boxed',NULL,3,'Главное меню',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nmenu: main\ntemplate: menu\nis_detect: 1\nmax_items: 0\n',0,'main_menu',1,'menu','wrapper',NULL),(28,'boxed',NULL,3,'Нижнее меню',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nmenu: footer\ntemplate: menu\nis_detect: 1\nmax_items: 0\n',0,'footer',1,'menu','wrapper',NULL),(29,'boxed',NULL,1,'О шаблоне','Скачать | redirect?url=https://github.com/my-instantcms/boxedTheme_icms2\r\n<i class=\"bx-thumbs-o-up\"></i> | redirect?url=http://addons.instantcms.ru/addons/reviews/497',NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\ncontent: \'<p>Бесплатная тема для InstantCMS</p>\'\n',NULL,'_unused',2,'text','wrapper',NULL),(30,'boxed',NULL,1,'Поддержать проект',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\ncontent: \'<p>WebMoney: R380642925354 | Z170841179282<br>Яндекс деньги: 410012099984285<br>Qiwi: +79269354436</p>\'\n',NULL,'_unused',1,'text','wrapper',NULL),(31,'boxed',NULL,9,'Аватар пользователя',NULL,NULL,NULL,NULL,NULL,1,NULL,'---\n- 0\n',NULL,'---\nmenu: personal\nis_detect: 1\nmax_items: 0\n',0,'topbar_right',3,'avatar','wrapper_plain',NULL),(32,'boxed',NULL,11,'Слайдер контента',NULL,NULL,NULL,NULL,NULL,1,NULL,'---\n- 0\n',NULL,'---\nctype_id: 10\ncategory_id: 1\ndataset: 0\nimage_field: photo\nbig_image_field:\nbig_image_preset: big\nteaser_field: teaser\nteaser_len:\ndelay: 5\nlimit: 4\n',1,'left-top',1,'slider','wrapper_plain',NULL),(33,'boxed',NULL,4,'Бегущая строка',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nctype_id: 10\ncategory_id: 1\ndataset: 0\nimage_field:\nteaser_field:\nstyle:\nshow_details: 1\nteaser_len: 50\nlimit: 6\n',0,'topbar_left',1,'ticker','wrapper_plain',NULL),(34,'boxed',NULL,12,'Войти на сайт',NULL,NULL,NULL,NULL,1,NULL,NULL,'---\n- 0\n',NULL,NULL,0,'right-center',1,'auth','wrapper',NULL),(35,'boxed',NULL,9,'Аватар пользователя',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- 0\n',NULL,'---\nmenu: personal\nis_detect: 1\nmax_items: 0\n',0,'right-center',2,'avatar','wrapper',NULL),(36,'boxed',NULL,3,'Меню действий',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- 0\n',NULL,'---\nmenu: toolbar\ntemplate: menu\nis_detect: 1\nmax_items: 0\n',0,'right-center',3,'menu','wrapper',NULL),(37,'boxed',NULL,2,'Пользователи','Все | users',NULL,NULL,NULL,1,NULL,NULL,'---\n- 0\n',NULL,'---\nshow: all\ndataset: latest\nstyle: tiles\ngroups: null\nlimit: 10\n',1,'right-center',3,'list','wrapper',NULL),(38,'boxed','---\n- 0\n',8,'Кто онлайн',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nis_avatars: 1\ngroups: null\n',1,'right-center',2,'online','wrapper','---\n- 0\n'),(39,'boxed',NULL,10,'Облако тегов',NULL,'is_blocks',NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\nsubjects:\n  - 0\nordering: tag\nstyle: list\nmax_fs: 22\nmin_fs: 12\nmin_freq: 0\nmin_len: 0\nlimit: 10\ncolors:\nshuffle: null\n',1,'right-center',4,'cloud','wrapper',NULL),(40,'boxed',NULL,6,'Активность','Вся | activity\r\n{Моих друзей | activity/index/friends}\r\n{Моя | activity/index/my}',NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\ndataset: all\nshow_avatars: 1\ndate_group: null\nlimit: 10\n',1,'left-bottom',1,'list','wrapper',NULL),(41,'boxed',NULL,7,'Комментарии','Все | comments\r\n{Моих друзей | comments/index/friends}\r\n{Мои | comments/index/my}',NULL,NULL,NULL,1,1,1,'---\n- 0\n',NULL,'---\nshow_avatars: 1\nshow_text: 1\nlimit: 10\n',1,'left-bottom',2,'list','wrapper',NULL),(42,'boxed',NULL,3,'Меню действий',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- 0\n',NULL,'---\nmenu: toolbar\ntemplate: menu\nis_detect: 1\nmax_items: 0\n',0,'left-top',1,'menu','wrapper_plain',NULL),(43,'boxed',NULL,13,'Поиск',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,NULL,0,'topbar_right',4,'top','wrapper',NULL),(44,'boxed',NULL,3,'Меню действий (fixed)',NULL,NULL,NULL,'fixed_actions_menu',NULL,1,NULL,'---\n- 0\n',NULL,'---\nmenu: toolbar\ntemplate: menu\nis_detect: 1\nmax_items: 0\n',0,'top',1,'menu','wrapper',NULL),(45,'boxed','---\n- 0\n',18,'Курсы валют',NULL,NULL,NULL,NULL,1,1,NULL,'---\n- 0\n',NULL,'---\ncache_interval: 240\nview_date: 1\nview_nominal: null\nAUD: null\nAZN: null\nGBP: null\nAMD: null\nBYN: null\nBGN: null\nBRL: null\nHUF: null\nHKD: null\nDKK: null\nUSD: 1\nEUR: 1\nINR: null\nKZT: null\nCAD: null\nKGS: null\nCNY: 1\nMDL: null\nNOK: null\nPLN: null\nRON: null\nXDR: null\nSGD: null\nTJS: null\nTRY: null\nTMT: null\nUZS: null\nUAH: 1\nCZK: null\nSEK: null\nCHF: null\nZAR: null\nKRW: null\nJPY: 1\n',1,'right-center',1,'cbrf','wrapper','---\n- 0\n'),(46,'boxed','---\n- 0\n',19,'Скролл Вверх/Вниз',NULL,NULL,NULL,NULL,NULL,1,NULL,'---\n- 0\n',NULL,'---\ndistance_scroll: 40\nscroll_speed: 600\nz_index: 99\nposition_top:\nposition_right:\nposition_bottom: 15\nposition_left: 15\nbtn_shape: square\nsize: 50\nis_height: null\nbtn_icon: angle\nbtn_color: \'#34495E\'\nbtn_color_hover: \'#27AE60\'\nicon_color: \'#FFFFFF\'\nicon_color_hover: \'#FFFFFF\'\ntitle_up: Наверх\ntitle_down: Вниз\n',0,'bottom',1,'updownscroll','wrapper','---\n- 0\n'),(47,'boxed','---\n- 0\n',20,'Скролл Вверх/Вниз',NULL,NULL,NULL,NULL,NULL,1,NULL,'---\n- 0\n',NULL,'---\ndistance_scroll: 40\nscroll_speed: 600\nz_index: 99\nposition_top:\nposition_right:\nposition_bottom: 15\nposition_left: 15\nbtn_shape: square\nsize: 50\nis_height: null\nbtn_icon: angle\nbtn_color: \'#34495E\'\nbtn_color_hover: \'#27AE60\'\nicon_color: \'#FFFFFF\'\nicon_color_hover: \'#FFFFFF\'\ntitle_up: Наверх\ntitle_down: Вниз\n',0,'left-bottom',1,'updownscroll','wrapper','---\n- 0\n');
/*!40000 ALTER TABLE `cms_widgets_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_widgets_pages`
--

DROP TABLE IF EXISTS `cms_widgets_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_widgets_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(32) DEFAULT NULL COMMENT 'Компонент',
  `name` varchar(64) DEFAULT NULL COMMENT 'Системное имя',
  `title_const` varchar(64) DEFAULT NULL COMMENT 'Название страницы (языковая константа)',
  `title_subject` varchar(64) DEFAULT NULL COMMENT 'Название субъекта (передается в языковую константу)',
  `title` varchar(64) DEFAULT NULL,
  `url_mask` text COMMENT 'Маска URL',
  `url_mask_not` text COMMENT 'Отрицательная маска',
  `groups` text COMMENT 'Группы доступа',
  `countries` text COMMENT 'Страны доступа',
  PRIMARY KEY (`id`),
  KEY `controller` (`controller`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_widgets_pages`
--

LOCK TABLES `cms_widgets_pages` WRITE;
/*!40000 ALTER TABLE `cms_widgets_pages` DISABLE KEYS */;
INSERT INTO `cms_widgets_pages` VALUES (0,NULL,'all','LANG_WP_ALL_PAGES',NULL,NULL,NULL,NULL,NULL,NULL),(100,'users','list','LANG_USERS_LIST',NULL,NULL,'users\r\nusers/index\r\nusers/index/*',NULL,NULL,NULL),(101,'users','profile','LANG_USERS_PROFILE',NULL,NULL,'users/%*','users/%/edit',NULL,NULL),(102,'users','edit','LANG_USERS_EDIT_PROFILE',NULL,NULL,'users/%/edit',NULL,NULL,NULL),(143,'content','pages.all','LANG_WP_CONTENT_ALL_PAGES',NULL,NULL,'pages\npages-*\npages/*',NULL,NULL,NULL),(144,'content','pages.list','LANG_WP_CONTENT_LIST',NULL,NULL,'pages\npages-*\npages/*','pages/*/view-*\npages/*.html\npages/add\npages/add/%\npages/addcat\npages/addcat/%\npages/editcat/%\npages/edit/*',NULL,NULL),(145,'content','pages.item','LANG_WP_CONTENT_ITEM',NULL,NULL,'pages/*.html',NULL,NULL,NULL),(146,'content','pages.edit','LANG_WP_CONTENT_ITEM_EDIT',NULL,NULL,'pages/add\npages/edit/*',NULL,NULL,NULL),(147,'content','articles.all','LANG_WP_CONTENT_ALL_PAGES',NULL,NULL,'articles\narticles-*\narticles/*',NULL,NULL,NULL),(148,'content','articles.list','LANG_WP_CONTENT_LIST',NULL,NULL,'articles\narticles-*\narticles/*','articles/*/view-*\narticles/*.html\narticles/add\narticles/add/%\narticles/addcat\narticles/addcat/%\narticles/editcat/%\narticles/edit/*',NULL,NULL),(149,'content','articles.item','LANG_WP_CONTENT_ITEM',NULL,NULL,'articles/*.html',NULL,NULL,NULL),(150,'content','articles.edit','LANG_WP_CONTENT_ITEM_EDIT',NULL,NULL,'articles/add\narticles/edit/*',NULL,NULL,NULL),(151,'content','posts.all','LANG_WP_CONTENT_ALL_PAGES',NULL,NULL,'posts\nposts-*\nposts/*',NULL,NULL,NULL),(152,'content','posts.list','LANG_WP_CONTENT_LIST',NULL,NULL,'posts\nposts-*\nposts/*','posts/*/view-*\nposts/*.html\nposts/add\nposts/add/%\nposts/addcat\nposts/addcat/%\nposts/editcat/%\nposts/edit/*',NULL,NULL),(153,'content','posts.item','LANG_WP_CONTENT_ITEM',NULL,NULL,'posts/*.html',NULL,NULL,NULL),(154,'content','posts.edit','LANG_WP_CONTENT_ITEM_EDIT',NULL,NULL,'posts/add\nposts/edit/*',NULL,NULL,NULL),(155,'content','albums.all','LANG_WP_CONTENT_ALL_PAGES',NULL,NULL,'albums\nalbums-*\nalbums/*',NULL,NULL,NULL),(156,'content','albums.list','LANG_WP_CONTENT_LIST',NULL,NULL,'albums\nalbums-*\nalbums/*','albums/*/view-*\nalbums/*.html\nalbums/add\nalbums/add/%\nalbums/addcat\nalbums/addcat/%\nalbums/editcat/%\nalbums/edit/*',NULL,NULL),(157,'content','albums.item','LANG_WP_CONTENT_ITEM',NULL,NULL,'albums/*.html',NULL,NULL,NULL),(158,'content','albums.edit','LANG_WP_CONTENT_ITEM_EDIT',NULL,NULL,'albums/add\nalbums/add/%\nalbums/edit/*',NULL,NULL,NULL),(159,'content','board.all','LANG_WP_CONTENT_ALL_PAGES',NULL,NULL,'board\nboard-*\nboard/*',NULL,NULL,NULL),(160,'content','board.list','LANG_WP_CONTENT_LIST',NULL,NULL,'board\nboard-*\nboard/*','board/*/view-*\nboard/*.html\nboard/add\nboard/add/%\nboard/addcat\nboard/addcat/%\nboard/editcat/%\nboard/edit/*',NULL,NULL),(161,'content','board.item','LANG_WP_CONTENT_ITEM',NULL,NULL,'board/*.html',NULL,NULL,NULL),(162,'content','board.edit','LANG_WP_CONTENT_ITEM_EDIT',NULL,NULL,'board/add\nboard/edit/*',NULL,NULL,NULL),(163,'content','news.all','LANG_WP_CONTENT_ALL_PAGES',NULL,NULL,'news\nnews-*\nnews/*',NULL,NULL,NULL),(164,'content','news.list','LANG_WP_CONTENT_LIST',NULL,NULL,'news\nnews-*\nnews/*','news/*/view-*\nnews/*.html\nnews/add\nnews/add/%\nnews/addcat\nnews/addcat/%\nnews/editcat/%\nnews/edit/*',NULL,NULL),(165,'content','news.item','LANG_WP_CONTENT_ITEM',NULL,NULL,'news/*.html',NULL,NULL,NULL),(166,'content','news.edit','LANG_WP_CONTENT_ITEM_EDIT',NULL,NULL,'news/add\nnews/edit/*',NULL,NULL,NULL),(167,'photos','item','LANG_PHOTOS_WP_ITEM',NULL,NULL,'photos/*.html',NULL,NULL,NULL),(168,'photos','upload','LANG_PHOTOS_WP_UPLOAD',NULL,NULL,'photos/upload/%\r\nphotos/upload',NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_widgets_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s1_widgets`
--

DROP TABLE IF EXISTS `s1_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s1_widgets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(32) DEFAULT NULL COMMENT 'Контроллер',
  `name` varchar(32) NOT NULL COMMENT 'Системное имя',
  `title` varchar(64) DEFAULT NULL COMMENT 'Название',
  `author` varchar(128) DEFAULT NULL COMMENT 'Имя автора',
  `url` varchar(250) DEFAULT NULL COMMENT 'Сайт автора',
  `version` varchar(8) DEFAULT NULL COMMENT 'Версия',
  `is_external` tinyint(1) DEFAULT '1',
  `files` varchar(4000) DEFAULT NULL,
  `addon_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `name` (`name`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s1_widgets`
--

LOCK TABLES `s1_widgets` WRITE;
/*!40000 ALTER TABLE `s1_widgets` DISABLE KEYS */;
INSERT INTO `s1_widgets` VALUES (18,NULL,'cbrf','Курсы валют','me','https://regvo.ru','2.2.0',1,NULL,NULL),(19,NULL,'updownscroll','Скролл Вверх/Вниз','Val',NULL,'1.1',1,NULL,NULL);
/*!40000 ALTER TABLE `s1_widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-11 19:28:12
