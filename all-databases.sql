-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: ehupi22
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ehupi22`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ehupi22` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ehupi22`;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'plugin::content-manager.explorer.create','api::article.article','{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"category\", \"image\", \"author\"]}','[]','2022-07-09 08:49:56.166000','2022-07-09 08:49:56.166000',NULL,NULL),(2,'plugin::content-manager.explorer.create','api::category.category','{\"fields\": [\"name\", \"slug\", \"articles\"]}','[]','2022-07-09 08:49:57.290000','2022-07-09 08:49:57.290000',NULL,NULL),(3,'plugin::content-manager.explorer.create','api::global.global','{\"fields\": [\"siteName\", \"defaultSeo.metaTitle\", \"defaultSeo.metaDescription\", \"defaultSeo.shareImage\", \"favicon\"]}','[]','2022-07-09 08:49:57.832000','2022-07-09 08:49:57.832000',NULL,NULL),(4,'plugin::content-manager.explorer.create','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"hero.title\"]}','[]','2022-07-09 08:49:58.184000','2022-07-09 08:49:58.184000',NULL,NULL),(5,'plugin::content-manager.explorer.create','api::writer.writer','{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}','[]','2022-07-09 08:49:58.975000','2022-07-09 08:49:58.975000',NULL,NULL),(6,'plugin::content-manager.explorer.read','api::article.article','{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"category\", \"image\", \"author\"]}','[]','2022-07-09 08:49:59.252000','2022-07-09 08:49:59.252000',NULL,NULL),(7,'plugin::content-manager.explorer.read','api::category.category','{\"fields\": [\"name\", \"slug\", \"articles\"]}','[]','2022-07-09 08:49:59.657000','2022-07-09 08:49:59.657000',NULL,NULL),(8,'plugin::content-manager.explorer.read','api::global.global','{\"fields\": [\"siteName\", \"defaultSeo.metaTitle\", \"defaultSeo.metaDescription\", \"defaultSeo.shareImage\", \"favicon\"]}','[]','2022-07-09 08:50:00.169000','2022-07-09 08:50:00.169000',NULL,NULL),(9,'plugin::content-manager.explorer.read','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"hero.title\"]}','[]','2022-07-09 08:50:00.452000','2022-07-09 08:50:00.452000',NULL,NULL),(10,'plugin::content-manager.explorer.read','api::writer.writer','{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}','[]','2022-07-09 08:50:00.879000','2022-07-09 08:50:00.879000',NULL,NULL),(11,'plugin::content-manager.explorer.update','api::article.article','{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"category\", \"image\", \"author\"]}','[]','2022-07-09 08:50:01.144000','2022-07-09 08:50:01.144000',NULL,NULL),(12,'plugin::content-manager.explorer.update','api::category.category','{\"fields\": [\"name\", \"slug\", \"articles\"]}','[]','2022-07-09 08:50:01.446000','2022-07-09 08:50:01.446000',NULL,NULL),(13,'plugin::content-manager.explorer.update','api::global.global','{\"fields\": [\"siteName\", \"defaultSeo.metaTitle\", \"defaultSeo.metaDescription\", \"defaultSeo.shareImage\", \"favicon\"]}','[]','2022-07-09 08:50:01.889000','2022-07-09 08:50:01.889000',NULL,NULL),(14,'plugin::content-manager.explorer.update','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"hero.title\"]}','[]','2022-07-09 08:50:02.229000','2022-07-09 08:50:02.229000',NULL,NULL),(15,'plugin::content-manager.explorer.update','api::writer.writer','{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}','[]','2022-07-09 08:50:02.730000','2022-07-09 08:50:02.730000',NULL,NULL),(20,'plugin::content-manager.explorer.delete','api::writer.writer','{}','[]','2022-07-09 08:50:04.315000','2022-07-09 08:50:04.315000',NULL,NULL),(22,'plugin::upload.read',NULL,'{}','[]','2022-07-09 08:50:05.233000','2022-07-09 08:50:05.233000',NULL,NULL),(23,'plugin::upload.assets.create',NULL,'{}','[]','2022-07-09 08:50:05.550000','2022-07-09 08:50:05.550000',NULL,NULL),(24,'plugin::upload.assets.update',NULL,'{}','[]','2022-07-09 08:50:05.883000','2022-07-09 08:50:05.883000',NULL,NULL),(25,'plugin::upload.assets.download',NULL,'{}','[]','2022-07-09 08:50:06.084000','2022-07-09 08:50:06.084000',NULL,NULL),(26,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-07-09 08:50:06.243000','2022-07-09 08:50:06.243000',NULL,NULL),(27,'plugin::content-manager.explorer.create','api::article.article','{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"category\", \"image\", \"author\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:06.400000','2022-07-09 08:50:06.400000',NULL,NULL),(28,'plugin::content-manager.explorer.create','api::category.category','{\"fields\": [\"name\", \"slug\", \"articles\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:06.660000','2022-07-09 08:50:06.660000',NULL,NULL),(29,'plugin::content-manager.explorer.create','api::global.global','{\"fields\": [\"siteName\", \"defaultSeo.metaTitle\", \"defaultSeo.metaDescription\", \"defaultSeo.shareImage\", \"favicon\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:06.752000','2022-07-09 08:50:06.752000',NULL,NULL),(30,'plugin::content-manager.explorer.create','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"hero.title\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:06.868000','2022-07-09 08:50:06.868000',NULL,NULL),(31,'plugin::content-manager.explorer.create','api::writer.writer','{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:07.043000','2022-07-09 08:50:07.043000',NULL,NULL),(32,'plugin::content-manager.explorer.read','api::article.article','{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"category\", \"image\", \"author\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:07.194000','2022-07-09 08:50:07.194000',NULL,NULL),(33,'plugin::content-manager.explorer.read','api::category.category','{\"fields\": [\"name\", \"slug\", \"articles\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:07.403000','2022-07-09 08:50:07.403000',NULL,NULL),(34,'plugin::content-manager.explorer.read','api::global.global','{\"fields\": [\"siteName\", \"defaultSeo.metaTitle\", \"defaultSeo.metaDescription\", \"defaultSeo.shareImage\", \"favicon\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:07.873000','2022-07-09 08:50:07.873000',NULL,NULL),(35,'plugin::content-manager.explorer.read','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"hero.title\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:08.078000','2022-07-09 08:50:08.078000',NULL,NULL),(36,'plugin::content-manager.explorer.read','api::writer.writer','{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:08.236000','2022-07-09 08:50:08.236000',NULL,NULL),(37,'plugin::content-manager.explorer.update','api::article.article','{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"category\", \"image\", \"author\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:08.328000','2022-07-09 08:50:08.328000',NULL,NULL),(38,'plugin::content-manager.explorer.update','api::category.category','{\"fields\": [\"name\", \"slug\", \"articles\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:08.437000','2022-07-09 08:50:08.437000',NULL,NULL),(39,'plugin::content-manager.explorer.update','api::global.global','{\"fields\": [\"siteName\", \"defaultSeo.metaTitle\", \"defaultSeo.metaDescription\", \"defaultSeo.shareImage\", \"favicon\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:09.013000','2022-07-09 08:50:09.013000',NULL,NULL),(40,'plugin::content-manager.explorer.update','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"hero.title\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:09.146000','2022-07-09 08:50:09.146000',NULL,NULL),(41,'plugin::content-manager.explorer.update','api::writer.writer','{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}','[\"admin::is-creator\"]','2022-07-09 08:50:09.263000','2022-07-09 08:50:09.263000',NULL,NULL),(46,'plugin::content-manager.explorer.delete','api::writer.writer','{}','[\"admin::is-creator\"]','2022-07-09 08:50:10.173000','2022-07-09 08:50:10.173000',NULL,NULL),(47,'plugin::upload.read',NULL,'{}','[\"admin::is-creator\"]','2022-07-09 08:50:10.281000','2022-07-09 08:50:10.281000',NULL,NULL),(48,'plugin::upload.assets.create',NULL,'{}','[]','2022-07-09 08:50:10.398000','2022-07-09 08:50:10.398000',NULL,NULL),(49,'plugin::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]','2022-07-09 08:50:10.637000','2022-07-09 08:50:10.637000',NULL,NULL),(50,'plugin::upload.assets.download',NULL,'{}','[]','2022-07-09 08:50:10.798000','2022-07-09 08:50:10.798000',NULL,NULL),(51,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-07-09 08:50:10.923000','2022-07-09 08:50:10.923000',NULL,NULL),(52,'plugin::content-manager.explorer.create','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-07-09 08:50:11.186000','2022-07-09 08:50:11.186000',NULL,NULL),(57,'plugin::content-manager.explorer.create','api::writer.writer','{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}','[]','2022-07-09 08:50:12.300000','2022-07-09 08:50:12.300000',NULL,NULL),(58,'plugin::content-manager.explorer.read','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-07-09 08:50:12.700000','2022-07-09 08:50:12.700000',NULL,NULL),(63,'plugin::content-manager.explorer.read','api::writer.writer','{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}','[]','2022-07-09 08:50:13.735000','2022-07-09 08:50:13.735000',NULL,NULL),(64,'plugin::content-manager.explorer.update','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-07-09 08:50:14.036000','2022-07-09 08:50:14.036000',NULL,NULL),(69,'plugin::content-manager.explorer.update','api::writer.writer','{\"fields\": [\"name\", \"picture\", \"articles\", \"email\"]}','[]','2022-07-09 08:50:14.804000','2022-07-09 08:50:14.804000',NULL,NULL),(70,'plugin::content-manager.explorer.delete','plugin::users-permissions.user','{}','[]','2022-07-09 08:50:15.031000','2022-07-09 08:50:15.031000',NULL,NULL),(75,'plugin::content-manager.explorer.delete','api::writer.writer','{}','[]','2022-07-09 08:50:15.896000','2022-07-09 08:50:15.896000',NULL,NULL),(77,'plugin::content-manager.single-types.configure-view',NULL,'{}','[]','2022-07-09 08:50:16.131000','2022-07-09 08:50:16.131000',NULL,NULL),(78,'plugin::content-manager.collection-types.configure-view',NULL,'{}','[]','2022-07-09 08:50:16.256000','2022-07-09 08:50:16.256000',NULL,NULL),(79,'plugin::content-manager.components.configure-layout',NULL,'{}','[]','2022-07-09 08:50:16.398000','2022-07-09 08:50:16.398000',NULL,NULL),(80,'plugin::content-type-builder.read',NULL,'{}','[]','2022-07-09 08:50:16.677000','2022-07-09 08:50:16.677000',NULL,NULL),(81,'plugin::email.settings.read',NULL,'{}','[]','2022-07-09 08:50:17.023000','2022-07-09 08:50:17.023000',NULL,NULL),(82,'plugin::upload.read',NULL,'{}','[]','2022-07-09 08:50:17.140000','2022-07-09 08:50:17.140000',NULL,NULL),(83,'plugin::upload.assets.create',NULL,'{}','[]','2022-07-09 08:50:17.323000','2022-07-09 08:50:17.323000',NULL,NULL),(84,'plugin::upload.assets.update',NULL,'{}','[]','2022-07-09 08:50:17.483000','2022-07-09 08:50:17.483000',NULL,NULL),(85,'plugin::upload.assets.download',NULL,'{}','[]','2022-07-09 08:50:17.790000','2022-07-09 08:50:17.790000',NULL,NULL),(86,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-07-09 08:50:18.658000','2022-07-09 08:50:18.658000',NULL,NULL),(87,'plugin::upload.settings.read',NULL,'{}','[]','2022-07-09 08:50:19.025000','2022-07-09 08:50:19.025000',NULL,NULL),(88,'plugin::i18n.locale.create',NULL,'{}','[]','2022-07-09 08:50:19.151000','2022-07-09 08:50:19.151000',NULL,NULL),(89,'plugin::i18n.locale.read',NULL,'{}','[]','2022-07-09 08:50:19.621000','2022-07-09 08:50:19.621000',NULL,NULL),(90,'plugin::i18n.locale.update',NULL,'{}','[]','2022-07-09 08:50:20.085000','2022-07-09 08:50:20.085000',NULL,NULL),(91,'plugin::i18n.locale.delete',NULL,'{}','[]','2022-07-09 08:50:20.403000','2022-07-09 08:50:20.403000',NULL,NULL),(92,'plugin::users-permissions.roles.create',NULL,'{}','[]','2022-07-09 08:50:20.519000','2022-07-09 08:50:20.519000',NULL,NULL),(93,'plugin::users-permissions.roles.read',NULL,'{}','[]','2022-07-09 08:50:20.737000','2022-07-09 08:50:20.737000',NULL,NULL),(94,'plugin::users-permissions.roles.update',NULL,'{}','[]','2022-07-09 08:50:21.029000','2022-07-09 08:50:21.029000',NULL,NULL),(95,'plugin::users-permissions.roles.delete',NULL,'{}','[]','2022-07-09 08:50:21.103000','2022-07-09 08:50:21.103000',NULL,NULL),(96,'plugin::users-permissions.providers.read',NULL,'{}','[]','2022-07-09 08:50:21.242000','2022-07-09 08:50:21.242000',NULL,NULL),(97,'plugin::users-permissions.providers.update',NULL,'{}','[]','2022-07-09 08:50:21.344000','2022-07-09 08:50:21.344000',NULL,NULL),(98,'plugin::users-permissions.email-templates.read',NULL,'{}','[]','2022-07-09 08:50:21.540000','2022-07-09 08:50:21.540000',NULL,NULL),(99,'plugin::users-permissions.email-templates.update',NULL,'{}','[]','2022-07-09 08:50:21.653000','2022-07-09 08:50:21.653000',NULL,NULL),(100,'plugin::users-permissions.advanced-settings.read',NULL,'{}','[]','2022-07-09 08:50:21.753000','2022-07-09 08:50:21.753000',NULL,NULL),(101,'plugin::users-permissions.advanced-settings.update',NULL,'{}','[]','2022-07-09 08:50:22.304000','2022-07-09 08:50:22.304000',NULL,NULL),(102,'admin::marketplace.read',NULL,'{}','[]','2022-07-09 08:50:22.471000','2022-07-09 08:50:22.471000',NULL,NULL),(103,'admin::marketplace.plugins.install',NULL,'{}','[]','2022-07-09 08:50:22.580000','2022-07-09 08:50:22.580000',NULL,NULL),(104,'admin::marketplace.plugins.uninstall',NULL,'{}','[]','2022-07-09 08:50:22.691000','2022-07-09 08:50:22.691000',NULL,NULL),(105,'admin::webhooks.create',NULL,'{}','[]','2022-07-09 08:50:22.863000','2022-07-09 08:50:22.863000',NULL,NULL),(106,'admin::webhooks.read',NULL,'{}','[]','2022-07-09 08:50:23.146000','2022-07-09 08:50:23.146000',NULL,NULL),(107,'admin::webhooks.update',NULL,'{}','[]','2022-07-09 08:50:23.272000','2022-07-09 08:50:23.272000',NULL,NULL),(108,'admin::webhooks.delete',NULL,'{}','[]','2022-07-09 08:50:23.408000','2022-07-09 08:50:23.408000',NULL,NULL),(109,'admin::users.create',NULL,'{}','[]','2022-07-09 08:50:23.490000','2022-07-09 08:50:23.490000',NULL,NULL),(110,'admin::users.read',NULL,'{}','[]','2022-07-09 08:50:23.625000','2022-07-09 08:50:23.625000',NULL,NULL),(111,'admin::users.update',NULL,'{}','[]','2022-07-09 08:50:23.740000','2022-07-09 08:50:23.740000',NULL,NULL),(112,'admin::users.delete',NULL,'{}','[]','2022-07-09 08:50:24.083000','2022-07-09 08:50:24.083000',NULL,NULL),(113,'admin::roles.create',NULL,'{}','[]','2022-07-09 08:50:24.298000','2022-07-09 08:50:24.298000',NULL,NULL),(114,'admin::roles.read',NULL,'{}','[]','2022-07-09 08:50:24.448000','2022-07-09 08:50:24.448000',NULL,NULL),(115,'admin::roles.update',NULL,'{}','[]','2022-07-09 08:50:24.701000','2022-07-09 08:50:24.701000',NULL,NULL),(116,'admin::roles.delete',NULL,'{}','[]','2022-07-09 08:50:25.802000','2022-07-09 08:50:25.802000',NULL,NULL),(117,'admin::api-tokens.create',NULL,'{}','[]','2022-07-09 08:50:26.091000','2022-07-09 08:50:26.091000',NULL,NULL),(118,'admin::api-tokens.read',NULL,'{}','[]','2022-07-09 08:50:26.242000','2022-07-09 08:50:26.242000',NULL,NULL),(119,'admin::api-tokens.update',NULL,'{}','[]','2022-07-09 08:50:26.334000','2022-07-09 08:50:26.334000',NULL,NULL),(120,'admin::api-tokens.delete',NULL,'{}','[]','2022-07-09 08:50:26.430000','2022-07-09 08:50:26.430000',NULL,NULL),(121,'admin::project-settings.update',NULL,'{}','[]','2022-07-09 08:50:26.551000','2022-07-09 08:50:26.551000',NULL,NULL),(122,'admin::project-settings.read',NULL,'{}','[]','2022-07-09 08:50:26.677000','2022-07-09 08:50:26.677000',NULL,NULL),(140,'plugin::content-manager.explorer.create','api::article.article','{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"category\", \"image\", \"author\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-24 13:47:13.642000','2022-07-24 13:47:13.642000',NULL,NULL),(141,'plugin::content-manager.explorer.read','api::article.article','{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"category\", \"image\", \"author\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-24 13:47:13.811000','2022-07-24 13:47:13.811000',NULL,NULL),(142,'plugin::content-manager.explorer.update','api::article.article','{\"fields\": [\"title\", \"description\", \"content\", \"slug\", \"category\", \"image\", \"author\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-24 13:47:13.953000','2022-07-24 13:47:13.953000',NULL,NULL),(143,'plugin::content-manager.explorer.delete','api::article.article','{\"locales\": [\"en\", \"es\"]}','[]','2022-07-24 13:47:14.102000','2022-07-24 13:47:14.102000',NULL,NULL),(144,'plugin::content-manager.explorer.publish','api::article.article','{\"locales\": [\"en\", \"es\"]}','[]','2022-07-24 13:47:14.195000','2022-07-24 13:47:14.195000',NULL,NULL),(145,'plugin::content-manager.explorer.create','api::category.category','{\"fields\": [\"name\", \"slug\", \"articles\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-24 13:48:31.205000','2022-07-24 13:48:31.205000',NULL,NULL),(146,'plugin::content-manager.explorer.read','api::category.category','{\"fields\": [\"name\", \"slug\", \"articles\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-24 13:48:31.426000','2022-07-24 13:48:31.426000',NULL,NULL),(147,'plugin::content-manager.explorer.update','api::category.category','{\"fields\": [\"name\", \"slug\", \"articles\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-24 13:48:31.901000','2022-07-24 13:48:31.901000',NULL,NULL),(148,'plugin::content-manager.explorer.delete','api::category.category','{\"locales\": [\"en\", \"es\"]}','[]','2022-07-24 13:48:32.073000','2022-07-24 13:48:32.073000',NULL,NULL),(152,'plugin::content-manager.explorer.delete','api::form.form','{\"locales\": [\"en\", \"es\"]}','[]','2022-07-24 13:49:22.967000','2022-07-24 13:49:22.967000',NULL,NULL),(153,'plugin::content-manager.explorer.publish','api::form.form','{\"locales\": [\"en\", \"es\"]}','[]','2022-07-24 13:49:23.040000','2022-07-24 13:49:23.040000',NULL,NULL),(163,'plugin::content-manager.explorer.create','api::global.global','{\"fields\": [\"siteName\", \"defaultSeo.metaTitle\", \"defaultSeo.metaDescription\", \"defaultSeo.shareImage\", \"favicon\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-25 13:36:04.494000','2022-07-25 13:36:04.494000',NULL,NULL),(164,'plugin::content-manager.explorer.read','api::global.global','{\"fields\": [\"siteName\", \"defaultSeo.metaTitle\", \"defaultSeo.metaDescription\", \"defaultSeo.shareImage\", \"favicon\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-25 13:36:04.634000','2022-07-25 13:36:04.634000',NULL,NULL),(165,'plugin::content-manager.explorer.update','api::global.global','{\"fields\": [\"siteName\", \"defaultSeo.metaTitle\", \"defaultSeo.metaDescription\", \"defaultSeo.shareImage\", \"favicon\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-25 13:36:04.727000','2022-07-25 13:36:04.727000',NULL,NULL),(166,'plugin::content-manager.explorer.delete','api::global.global','{\"locales\": [\"en\", \"es\"]}','[]','2022-07-25 13:36:05.036000','2022-07-25 13:36:05.036000',NULL,NULL),(170,'plugin::content-manager.explorer.delete','api::homepage.homepage','{\"locales\": [\"en\", \"es\"]}','[]','2022-07-25 13:45:40.046000','2022-07-25 13:45:40.046000',NULL,NULL),(174,'plugin::content-manager.explorer.create','api::form.form','{\"fields\": [\"question\", \"slug\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-27 09:55:00.375000','2022-07-27 09:55:00.375000',NULL,NULL),(175,'plugin::content-manager.explorer.read','api::form.form','{\"fields\": [\"question\", \"slug\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-27 09:55:00.515000','2022-07-27 09:55:00.515000',NULL,NULL),(176,'plugin::content-manager.explorer.update','api::form.form','{\"fields\": [\"question\", \"slug\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-27 09:55:00.741000','2022-07-27 09:55:00.741000',NULL,NULL),(180,'plugin::content-manager.explorer.create','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"hero.title\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-27 23:45:46.371000','2022-07-27 23:45:46.371000',NULL,NULL),(181,'plugin::content-manager.explorer.read','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"hero.title\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-27 23:45:46.598000','2022-07-27 23:45:46.598000',NULL,NULL),(182,'plugin::content-manager.explorer.update','api::homepage.homepage','{\"fields\": [\"seo.metaTitle\", \"seo.metaDescription\", \"seo.shareImage\", \"hero.title\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-27 23:45:46.909000','2022-07-27 23:45:46.909000',NULL,NULL),(191,'plugin::content-manager.explorer.delete','api::nav.nav','{\"locales\": [\"en\", \"es\"]}','[]','2022-07-30 01:19:58.728000','2022-07-30 01:19:58.728000',NULL,NULL),(192,'plugin::content-manager.explorer.publish','api::nav.nav','{\"locales\": [\"en\", \"es\"]}','[]','2022-07-30 01:19:59.351000','2022-07-30 01:19:59.351000',NULL,NULL),(204,'plugin::content-manager.explorer.create','api::nav.nav','{\"fields\": [\"nav\", \"slug\", \"navdata\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-30 02:52:05.927000','2022-07-30 02:52:05.927000',NULL,NULL),(205,'plugin::content-manager.explorer.read','api::nav.nav','{\"fields\": [\"nav\", \"slug\", \"navdata\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-30 02:52:06.909000','2022-07-30 02:52:06.909000',NULL,NULL),(206,'plugin::content-manager.explorer.update','api::nav.nav','{\"fields\": [\"nav\", \"slug\", \"navdata\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-30 02:52:07.798000','2022-07-30 02:52:07.798000',NULL,NULL),(207,'plugin::content-manager.explorer.create','api::navdata.navdata','{\"fields\": [\"title\", \"description\", \"content\", \"image\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-30 02:53:43.198000','2022-07-30 02:53:43.198000',NULL,NULL),(208,'plugin::content-manager.explorer.read','api::navdata.navdata','{\"fields\": [\"title\", \"description\", \"content\", \"image\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-30 02:53:43.340000','2022-07-30 02:53:43.340000',NULL,NULL),(209,'plugin::content-manager.explorer.update','api::navdata.navdata','{\"fields\": [\"title\", \"description\", \"content\", \"image\"], \"locales\": [\"en\", \"es\"]}','[]','2022-07-30 02:53:43.582000','2022-07-30 02:53:43.582000',NULL,NULL),(210,'plugin::content-manager.explorer.delete','api::navdata.navdata','{\"locales\": [\"en\", \"es\"]}','[]','2022-07-30 02:53:43.697000','2022-07-30 02:53:43.697000',NULL,NULL),(211,'plugin::content-manager.explorer.publish','api::navdata.navdata','{\"locales\": [\"en\", \"es\"]}','[]','2022-07-30 02:53:43.938000','2022-07-30 02:53:43.938000',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions_role_links` (
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions_role_links`
--

LOCK TABLES `admin_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `admin_permissions_role_links` DISABLE KEYS */;
INSERT INTO `admin_permissions_role_links` VALUES (1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(20,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),(41,3),(46,3),(47,3),(48,3),(49,3),(50,3),(51,3),(52,1),(57,1),(58,1),(63,1),(64,1),(69,1),(70,1),(75,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(152,1),(153,1),(163,1),(164,1),(165,1),(166,1),(170,1),(174,1),(175,1),(176,1),(180,1),(181,1),(182,1),(191,1),(192,1),(204,1),(205,1),(206,1),(207,1),(208,1),(209,1),(210,1),(211,1);
/*!40000 ALTER TABLE `admin_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2022-07-09 08:49:55.441000','2022-07-09 08:49:55.441000',NULL,NULL),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2022-07-09 08:49:55.865000','2022-07-09 08:49:55.865000',NULL,NULL),(3,'Author','strapi-author','Authors can manage the content they have created.','2022-07-09 08:49:55.966000','2022-07-09 08:49:55.966000',NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Alberto','Velazquez',NULL,'albertovelalm@gmail.com','$2a$10$WtDMJq1o55cwcSpjtohDu.GQhWhVyg6CfBShp2Kb2rmV5DJmj5Pl6',NULL,NULL,1,0,NULL,'2022-07-13 08:26:59.663000','2022-07-13 08:26:59.663000',NULL,NULL);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users_roles_links` (
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users_roles_links`
--

LOCK TABLES `admin_users_roles_links` WRITE;
/*!40000 ALTER TABLE `admin_users_roles_links` DISABLE KEYS */;
INSERT INTO `admin_users_roles_links` VALUES (1,1);
/*!40000 ALTER TABLE `admin_users_roles_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_slug_unique` (`slug`),
  KEY `articles_created_by_id_fk` (`created_by_id`),
  KEY `articles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `articles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `articles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'What\'s inside a Black Hole','Maybe the answer is in this article, or not...','Well, we don\'t know yet...','what-s-inside-a-black-hole','2022-07-09 08:49:48.001000','2022-07-25 10:01:58.956000','2022-07-09 08:49:46.539000',NULL,NULL,'en'),(2,'This shrimp is awesome','Mantis shrimps, or stomatopods, are marine crustaceans of the order Stomatopoda. Some species have specialised calcified \"clubs\" that can strike with great power, while others have sharp forelimbs used to capture prey.','# Badass\n\nMantis shrimps, or stomatopods, are marine crustaceans of the order Stomatopoda. Some species have specialised calcified \"*clubs*\" that can strike with **great power**, while others have sharp forelimbs used to capture prey. They branched from other members of the class Malacostraca around 340 million years ago. Mantis shrimps typically grow to around 10 cm (3.9 in) in length. A few can reach up to 38 cm (15 in). The largest mantis shrimp ever caught had a length of 46 cm (18 in); it was caught in the Indian River near Fort Pierce, Florida, in the United States. A mantis shrimp\'s carapace (the bony, thick shell that covers crustaceans and some other species) covers only the rear part of the head and the first four segments of the thorax. Varieties range in color from shades of brown to vivid colors, with more than 450 species of mantis shrimps being known. They are among the most important predators in many shallow, tropical and subtropical marine habitats. However, despite being common, they are poorly understood, as many species spend most of their lives tucked away in burrows and holes.\n\nCalled \"sea locusts\" by ancient Assyrians, \"prawn killers\" in Australia, and now sometimes referred to as \"thumb splitters\"—because of the animal\'s ability to inflict painful gashes if handled incautiously—mantis shrimps have powerful claws that are used to attack and kill prey by spearing, stunning, or dismembering.\n\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CW8NUCPLE1c\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\n\nMantis shrimps have, like mantis, ravishing legs. But theirs are so resilient that they inspire the military to make the armor of the future. Above all, their speed and striking power are the responsibility of the superpowers. As the comic book The Oatmeal recounts, the squid\'s ravishing legs move at the speed of a bullet fired by a 22 caliber and can strike a prey in 1/3000 of a second, with a force of 1,500 Newtons. One tenth of that speed, deployed by a human arm, \"would be enough to send a baseball into orbit.\"\n\nA speed such as it boils water around ravishing legs and creates a shock wave capable of killing a prey missed by the strike.\n\nKept in an aquarium, crustaceans make carnage by dismembering and devouring crabs, shrimps, octopuses, snails and shells (whose shells they break). They would even be able to break the windows of overly fragile aquariums.','this-shrimp-is-awesome','2022-07-09 08:49:48.166000','2022-07-25 09:58:46.242000','2022-07-09 08:49:46.540000',NULL,NULL,'en'),(3,'The internet\'s Own boy','Follow the story of Aaron Swartz, the boy who could change the world','# The Story of Aaron Swartz\n\nAaron Hillel Swartz (November 8, 1986 – January 11, 2013) was an American computer programmer, entrepreneur, writer, political organizer, and Internet hacktivist. He was involved in the development of the web feed format RSS, the Markdown publishing format, the organization Creative Commons, and the website framework web.py, and was a co-founder of the social news site [Reddit](https://reddit.com). He was given the title of co-founder of Reddit by Y Combinator owner [Paul Graham](https://en.wikipedia.org/wiki/Paul_Graham_(programmer)) after the formation of Not a Bug, Inc. (a merger of Swartz\'s project Infogami and Redbrick Solutions, a company run by Alexis Ohanian and Steve Huffman).\n\nSwartz\'s work also focused on civic awareness and activism. He helped launch the Progressive Change Campaign Committee in 2009 to learn more about effective online activism. In 2010, he became a research fellow at Harvard University\'s Safra Research Lab on Institutional Corruption, directed by Lawrence Lessig. He founded the online group Demand Progress, known for its campaign against the Stop Online Piracy Act.\n\n\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PFQGjEJ9PEc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\n\n\nIn 2011, Swartz was arrested by Massachusetts Institute of Technology (MIT) police on state breaking-and-entering charges, after connecting a computer to the MIT network in an unmarked and unlocked closet, and setting it to download academic journal articles systematically from JSTOR using a guest user account issued to him by MIT. Federal prosecutors later charged him with two counts of wire fraud and eleven violations of the Computer Fraud and Abuse Act,[14] carrying a cumulative maximum penalty of $1 million in fines, 35 years in prison, asset forfeiture, restitution, and supervised release.\n\nSwartz declined a plea bargain under which he would have served six months in federal prison. Two days after the prosecution rejected a counter-offer by Swartz, he was found dead in his Brooklyn apartment, where he had hanged himself.\n\nIn 2013, Swartz was inducted posthumously into the [Internet Hall of Fame](https://www.internethalloffame.org//).','the-internet-s-own-boy','2022-07-09 08:49:48.305000','2022-07-25 09:56:08.873000','2022-07-09 08:49:46.538000',NULL,NULL,'en'),(4,'A bug is becoming a meme on the internet','How a bug on MySQL is becoming a meme on the internet','It\'s the story of a user named **Omer Barnir** who reported a bug in 2005 on the MySQL [bug report platform](https://bugs.mysql.com/)\n\nBut the thing is that Omer never got an answer. 15 years later, the bug has never been fix and people are starting to make fun out of it. We let you take a look at the conversation [here](https://bugs.mysql.com/bug.php?id=11472), it\'s pretty funny','a-bug-is-becoming-a-meme-on-the-internet','2022-07-09 08:49:48.649000','2022-07-24 13:56:39.984000','2022-07-09 08:49:46.540000',NULL,NULL,'en'),(5,'Beautiful picture','Description of a beautiful picture','This is an empty blog post with a beautiful picture','beautiful-picture','2022-07-09 08:49:49.099000','2022-07-25 09:53:28.475000','2022-07-09 08:49:46.541000',NULL,NULL,'en'),(6,'We love Pizza','Pizza is so delicious, specially four cheese pizza','We love pizza at Strapi, what about you?','we-love-pizza','2022-07-09 08:49:49.101000','2022-07-25 10:00:17.737000','2022-07-09 08:49:46.542000',NULL,NULL,'en'),(7,'Un error se está convirtiendo en un meme en Internet','Cómo un error en MySQL se está convirtiendo en un meme en Internet\n','Es la historia de un usuario llamado **Omer Barnir** que informó un error en 2005 en MySQL [plataforma de informe de errores] (https://bugs.mysql.com/)','un-bug-se-convierte-en-un-meme-en-internet','2022-07-24 13:56:39.771000','2022-07-26 02:48:04.552000','2022-07-24 13:56:42.503000',1,1,'es'),(8,'hermosa foto','Descripción de una hermosa imagen.\n','Esta es una publicación de blog vacía con una hermosa imagen.','hermosa-imagen','2022-07-25 09:53:28.144000','2022-07-26 02:48:32.376000','2022-07-25 09:53:32.174000',1,1,'es'),(9,'El propio chico de Internet','Sigue la historia de Aaron Swartz, el niño que podría cambiar el mundo','# La historia de Aaron Swartz\n\nAaron Hillel Swartz (8 de noviembre de 1986 - 11 de enero de 2013) fue un programador informático, empresario, escritor, organizador político y hacktivista de Internet estadounidense. Estuvo involucrado en el desarrollo del formato de fuente web RSS, el formato de publicación Markdown, la organización Creative Commons y el marco del sitio web web.py, y fue cofundador del sitio de noticias sociales [Reddit] (https:// reddit.com). El propietario de Y Combinator [Paul Graham](https://en.wikipedia.org/wiki/Paul_Graham_(programmer)) le otorgó el título de cofundador de Reddit después de la formación de Not a Bug, Inc. (una fusión del proyecto Infogami de Swartz y Redbrick Solutions, una empresa dirigida por Alexis Ohanian y Steve Huffman).','el-propio-chico-de-internet','2022-07-25 09:56:08.350000','2022-07-26 02:48:50.122000','2022-07-25 09:56:11.085000',1,1,'es'),(10,'Este camarón es impresionante','Los camarones mantis, o estomatópodos, son crustáceos marinos del orden Stomatopoda. Algunas especies tienen estructuras calcificadas especializadas.','# Impresionante\n\nLos camarones mantis, o estomatópodos, son crustáceos marinos del orden Stomatopoda. Algunas especies tienen \"*garrotes*\" calcificados especializados que pueden golpear con **gran poder**, mientras que otras tienen extremidades delanteras afiladas que se usan para capturar presas. Se ramificaron de otros miembros de la clase Malacostraca hace unos 340 millones de años. Los camarones mantis suelen crecer hasta unos 10 cm (3,9 pulgadas) de largo. Algunos pueden alcanzar hasta 38 cm (15 pulgadas). El camarón mantis más grande jamás capturado tenía una longitud de 46 cm (18 pulgadas); fue capturado en el río Indian cerca de Fort Pierce, Florida, en los Estados Unidos. El caparazón de un camarón mantis (el caparazón huesudo y grueso que cubre a los crustáceos y algunas otras especies) cubre solo la parte posterior de la cabeza y los primeros cuatro segmentos del tórax. Las variedades varían en color desde tonos marrones hasta colores vivos, y se conocen más de 450 especies de camarones mantis. Se encuentran entre los depredadores más importantes en muchos hábitats marinos poco profundos, tropicales y subtropicales. Sin embargo, a pesar de ser comunes, no se conocen bien, ya que muchas especies pasan la mayor parte de su vida escondidas en madrigueras y agujeros.\n\nLlamados \"langostas marinas\" por los antiguos asirios, \"asesinos de gambas\" en Australia, y ahora a veces denominados \"partidores de pulgares\", debido a la capacidad del animal de infligir cortes dolorosos si se manipulan con descuido, los camarones mantis tienen poderosas garras que se utilizan para atacar y matar a la presa con lanza, aturdimiento o desmembramiento.\n\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CW8NUCPLE1c\" frameborder=\"0\" allow=\"acelerómetro; reproducción automática; medios cifrados; giroscopio; entrada de imagen -imagen\" allowfullscreen></iframe>\n\nLos camarones mantis tienen, como mantis, patas deslumbrantes. Pero las suyas son tan resistentes que inspiran a los militares a fabricar la armadura del futuro. Sobre todo, su velocidad y potencia de golpe son responsabilidad de las superpotencias. Como cuenta el cómic The Oatmeal, las deslumbrantes patas del calamar se mueven a la velocidad de una bala disparada por un calibre 22 y pueden golpear a una presa en 1/3000 de segundo, con una fuerza de 1.500 Newtons. Una décima parte de esa velocidad, desplegada por un brazo humano, \"sería suficiente para poner en órbita una pelota de béisbol\".\n\nUna velocidad como la que hierve agua alrededor de sus deslumbrantes piernas y crea una onda de choque capaz de matar a una presa que no alcanza a golpear.\n\nMantenidos en un acuario, los crustáceos hacen carnicería desmembrando y devorando cangrejos, camarones, pulpos, caracoles y conchas (cuyas conchas rompen). Incluso podrían romper las ventanas de acuarios demasiado frágiles.\n','este-camaron-es-impresionante','2022-07-25 09:58:45.912000','2022-07-26 02:49:09.645000','2022-07-25 09:58:48.300000',1,1,'es'),(11,'nos encanta la pizza','La pizza es tan deliciosa, especialmente la pizza de cuatro quesos.','\nNos encanta la pizza en Strapi, ¿y tú?','amamos-la-pizza','2022-07-25 10:00:16.992000','2022-07-26 02:49:35.784000','2022-07-25 10:00:19.677000',1,1,'es'),(12,'¿Qué hay dentro de un agujero negro?','Tal vez la respuesta esté en este artículo, o no...\n','Bueno, aún no lo sabemos...','que-hay-dentro-de-un-agujero-negro','2022-07-25 10:01:58.640000','2022-07-26 02:49:53.430000','2022-07-25 10:02:00.972000',1,1,'es');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_author_links`
--

DROP TABLE IF EXISTS `articles_author_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles_author_links` (
  `article_id` int unsigned DEFAULT NULL,
  `writer_id` int unsigned DEFAULT NULL,
  KEY `articles_author_links_fk` (`article_id`),
  KEY `articles_author_links_inv_fk` (`writer_id`),
  CONSTRAINT `articles_author_links_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `articles_author_links_inv_fk` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_author_links`
--

LOCK TABLES `articles_author_links` WRITE;
/*!40000 ALTER TABLE `articles_author_links` DISABLE KEYS */;
INSERT INTO `articles_author_links` VALUES (2,1),(4,2),(1,2),(3,1),(5,2),(6,1),(7,2),(8,2),(9,1),(10,1),(11,1),(12,2);
/*!40000 ALTER TABLE `articles_author_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_category_links`
--

DROP TABLE IF EXISTS `articles_category_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles_category_links` (
  `article_id` int unsigned DEFAULT NULL,
  `category_id` int unsigned DEFAULT NULL,
  KEY `articles_category_links_fk` (`article_id`),
  KEY `articles_category_links_inv_fk` (`category_id`),
  CONSTRAINT `articles_category_links_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `articles_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_category_links`
--

LOCK TABLES `articles_category_links` WRITE;
/*!40000 ALTER TABLE `articles_category_links` DISABLE KEYS */;
INSERT INTO `articles_category_links` VALUES (3,5),(6,3),(5,4),(8,13),(9,9),(11,12),(12,11),(2,2),(10,10);
/*!40000 ALTER TABLE `articles_category_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_localizations_links`
--

DROP TABLE IF EXISTS `articles_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles_localizations_links` (
  `article_id` int unsigned DEFAULT NULL,
  `inv_article_id` int unsigned DEFAULT NULL,
  KEY `articles_localizations_links_fk` (`article_id`),
  KEY `articles_localizations_links_inv_fk` (`inv_article_id`),
  CONSTRAINT `articles_localizations_links_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `articles_localizations_links_inv_fk` FOREIGN KEY (`inv_article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_localizations_links`
--

LOCK TABLES `articles_localizations_links` WRITE;
/*!40000 ALTER TABLE `articles_localizations_links` DISABLE KEYS */;
INSERT INTO `articles_localizations_links` VALUES (7,4),(4,7),(8,5),(5,8),(9,3),(3,9),(10,2),(2,10),(11,6),(6,11),(12,1),(1,12);
/*!40000 ALTER TABLE `articles_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_created_by_id_fk` (`created_by_id`),
  KEY `categories_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'nature','nature','2022-07-09 08:49:37.859000','2022-07-27 16:33:12.018000',NULL,1,'en'),(3,'tech','tech','2022-07-09 08:49:37.862000','2022-07-25 10:04:06.879000',NULL,NULL,'en'),(4,'history','history','2022-07-09 08:49:37.864000','2022-07-25 19:26:18.618000',NULL,1,'en'),(5,'food','food','2022-07-09 08:49:37.867000','2022-07-25 10:02:35.646000',NULL,NULL,'en'),(9,'alimento','alimento','2022-07-25 10:02:35.436000','2022-07-25 10:02:35.436000',1,1,'es'),(10,'naturaleza','naturaleza','2022-07-25 10:02:58.054000','2022-07-27 16:33:26.905000',1,1,'es'),(11,'noticias','noticias','2022-07-25 10:03:16.618000','2022-07-25 10:03:16.618000',1,1,'es'),(12,'tecnología','tecnologia','2022-07-25 10:04:06.673000','2022-07-25 10:04:06.673000',1,1,'es'),(13,'historia','historia','2022-07-25 19:26:18.288000','2022-07-25 19:26:18.288000',1,1,'es');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_localizations_links`
--

DROP TABLE IF EXISTS `categories_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_localizations_links` (
  `category_id` int unsigned DEFAULT NULL,
  `inv_category_id` int unsigned DEFAULT NULL,
  KEY `categories_localizations_links_fk` (`category_id`),
  KEY `categories_localizations_links_inv_fk` (`inv_category_id`),
  CONSTRAINT `categories_localizations_links_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categories_localizations_links_inv_fk` FOREIGN KEY (`inv_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_localizations_links`
--

LOCK TABLES `categories_localizations_links` WRITE;
/*!40000 ALTER TABLE `categories_localizations_links` DISABLE KEYS */;
INSERT INTO `categories_localizations_links` VALUES (9,5),(5,9),(10,2),(2,10),(12,3),(3,12),(13,4),(4,13);
/*!40000 ALTER TABLE `categories_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_decoration_heroes`
--

DROP TABLE IF EXISTS `components_decoration_heroes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_decoration_heroes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_decoration_heroes`
--

LOCK TABLES `components_decoration_heroes` WRITE;
/*!40000 ALTER TABLE `components_decoration_heroes` DISABLE KEYS */;
INSERT INTO `components_decoration_heroes` VALUES (1,'Hitpoly'),(2,'Hitpoly');
/*!40000 ALTER TABLE `components_decoration_heroes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_shared_seos`
--

DROP TABLE IF EXISTS `components_shared_seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_shared_seos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_shared_seos`
--

LOCK TABLES `components_shared_seos` WRITE;
/*!40000 ALTER TABLE `components_shared_seos` DISABLE KEYS */;
INSERT INTO `components_shared_seos` VALUES (1,'hitpoly','We are entrepeneurs united.'),(2,'Page','We are a group of united entrepreneurs.'),(3,'pagina','Somos un grupo de emprendedores unidos. '),(4,'hitpoly','Somos empresarios unidos.');
/*!40000 ALTER TABLE `components_shared_seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'default-image','default-image','default-image',1208,715,'{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_default_image_480f82bd56.png\", \"hash\": \"large_default_image_480f82bd56\", \"mime\": \"image/png\", \"name\": \"large_default-image\", \"path\": null, \"size\": 297.58, \"width\": 1000, \"height\": 592}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_default_image_480f82bd56.png\", \"hash\": \"small_default_image_480f82bd56\", \"mime\": \"image/png\", \"name\": \"small_default-image\", \"path\": null, \"size\": 63.39, \"width\": 500, \"height\": 296}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_default_image_480f82bd56.png\", \"hash\": \"medium_default_image_480f82bd56\", \"mime\": \"image/png\", \"name\": \"medium_default-image\", \"path\": null, \"size\": 159.25, \"width\": 750, \"height\": 444}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_default_image_480f82bd56.png\", \"hash\": \"thumbnail_default_image_480f82bd56\", \"mime\": \"image/png\", \"name\": \"thumbnail_default-image\", \"path\": null, \"size\": 18.74, \"width\": 245, \"height\": 145}}','default_image_480f82bd56','.png','image/png',81.62,'/uploads/default_image_480f82bd56.png',NULL,'local',NULL,'2022-07-09 08:49:41.163000','2022-07-09 08:49:41.163000',NULL,NULL),(2,'daviddoe@strapi','daviddoe@strapi','daviddoe@strapi',2418,2711,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_daviddoe_strapi_c04d2b4060.jpg\", \"hash\": \"large_daviddoe_strapi_c04d2b4060\", \"mime\": \"image/jpeg\", \"name\": \"large_daviddoe@strapi\", \"path\": null, \"size\": 74.56, \"width\": 892, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_daviddoe_strapi_c04d2b4060.jpg\", \"hash\": \"small_daviddoe_strapi_c04d2b4060\", \"mime\": \"image/jpeg\", \"name\": \"small_daviddoe@strapi\", \"path\": null, \"size\": 22.51, \"width\": 446, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_daviddoe_strapi_c04d2b4060.jpg\", \"hash\": \"medium_daviddoe_strapi_c04d2b4060\", \"mime\": \"image/jpeg\", \"name\": \"medium_daviddoe@strapi\", \"path\": null, \"size\": 44.37, \"width\": 669, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_daviddoe_strapi_c04d2b4060.jpg\", \"hash\": \"thumbnail_daviddoe_strapi_c04d2b4060\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_daviddoe@strapi\", \"path\": null, \"size\": 4.18, \"width\": 139, \"height\": 156}}','daviddoe_strapi_c04d2b4060','.jpg','image/jpeg',587.69,'/uploads/daviddoe_strapi_c04d2b4060.jpg',NULL,'local',NULL,'2022-07-09 08:49:44.921000','2022-07-09 08:49:44.921000',NULL,NULL),(3,'sarahbaker@strapi','sarahbaker@strapi','sarahbaker@strapi',3321,2746,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_sarahbaker_strapi_fc9ad3361c.jpg\", \"hash\": \"large_sarahbaker_strapi_fc9ad3361c\", \"mime\": \"image/jpeg\", \"name\": \"large_sarahbaker@strapi\", \"path\": null, \"size\": 101.82, \"width\": 1000, \"height\": 827}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sarahbaker_strapi_fc9ad3361c.jpg\", \"hash\": \"small_sarahbaker_strapi_fc9ad3361c\", \"mime\": \"image/jpeg\", \"name\": \"small_sarahbaker@strapi\", \"path\": null, \"size\": 30.56, \"width\": 500, \"height\": 413}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sarahbaker_strapi_fc9ad3361c.jpg\", \"hash\": \"medium_sarahbaker_strapi_fc9ad3361c\", \"mime\": \"image/jpeg\", \"name\": \"medium_sarahbaker@strapi\", \"path\": null, \"size\": 61.27, \"width\": 750, \"height\": 620}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sarahbaker_strapi_fc9ad3361c.jpg\", \"hash\": \"thumbnail_sarahbaker_strapi_fc9ad3361c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sarahbaker@strapi\", \"path\": null, \"size\": 6.67, \"width\": 189, \"height\": 156}}','sarahbaker_strapi_fc9ad3361c','.jpg','image/jpeg',698.27,'/uploads/sarahbaker_strapi_fc9ad3361c.jpg',NULL,'local',NULL,'2022-07-09 08:49:44.978000','2022-07-09 08:49:44.978000',NULL,NULL),(4,'what-s-inside-a-black-hole','what-s-inside-a-black-hole','what-s-inside-a-black-hole',800,466,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_what_s_inside_a_black_hole_78acd488cb.jpg\", \"hash\": \"small_what_s_inside_a_black_hole_78acd488cb\", \"mime\": \"image/jpeg\", \"name\": \"small_what-s-inside-a-black-hole\", \"path\": null, \"size\": 3.89, \"width\": 500, \"height\": 291}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_what_s_inside_a_black_hole_78acd488cb.jpg\", \"hash\": \"medium_what_s_inside_a_black_hole_78acd488cb\", \"mime\": \"image/jpeg\", \"name\": \"medium_what-s-inside-a-black-hole\", \"path\": null, \"size\": 6.94, \"width\": 750, \"height\": 437}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_what_s_inside_a_black_hole_78acd488cb.jpg\", \"hash\": \"thumbnail_what_s_inside_a_black_hole_78acd488cb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_what-s-inside-a-black-hole\", \"path\": null, \"size\": 1.55, \"width\": 245, \"height\": 143}}','what_s_inside_a_black_hole_78acd488cb','.jpg','image/jpeg',7.50,'/uploads/what_s_inside_a_black_hole_78acd488cb.jpg',NULL,'local',NULL,'2022-07-09 08:49:47.405000','2022-07-09 08:49:47.405000',NULL,NULL),(5,'this-shrimp-is-awesome','this-shrimp-is-awesome','this-shrimp-is-awesome',1200,630,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_this_shrimp_is_awesome_6b777dafe3.jpg\", \"hash\": \"large_this_shrimp_is_awesome_6b777dafe3\", \"mime\": \"image/jpeg\", \"name\": \"large_this-shrimp-is-awesome\", \"path\": null, \"size\": 72.87, \"width\": 1000, \"height\": 525}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_this_shrimp_is_awesome_6b777dafe3.jpg\", \"hash\": \"small_this_shrimp_is_awesome_6b777dafe3\", \"mime\": \"image/jpeg\", \"name\": \"small_this-shrimp-is-awesome\", \"path\": null, \"size\": 26.93, \"width\": 500, \"height\": 263}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_this_shrimp_is_awesome_6b777dafe3.jpg\", \"hash\": \"medium_this_shrimp_is_awesome_6b777dafe3\", \"mime\": \"image/jpeg\", \"name\": \"medium_this-shrimp-is-awesome\", \"path\": null, \"size\": 48.38, \"width\": 750, \"height\": 394}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_this_shrimp_is_awesome_6b777dafe3.jpg\", \"hash\": \"thumbnail_this_shrimp_is_awesome_6b777dafe3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_this-shrimp-is-awesome\", \"path\": null, \"size\": 9.63, \"width\": 245, \"height\": 129}}','this_shrimp_is_awesome_6b777dafe3','.jpg','image/jpeg',95.48,'/uploads/this_shrimp_is_awesome_6b777dafe3.jpg',NULL,'local',NULL,'2022-07-09 08:49:47.647000','2022-07-09 08:49:47.647000',NULL,NULL),(6,'the-internet-s-own-boy','the-internet-s-own-boy','the-internet-s-own-boy',1200,707,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_the_internet_s_own_boy_5f83a2d685.jpg\", \"hash\": \"large_the_internet_s_own_boy_5f83a2d685\", \"mime\": \"image/jpeg\", \"name\": \"large_the-internet-s-own-boy\", \"path\": null, \"size\": 70.11, \"width\": 1000, \"height\": 589}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_the_internet_s_own_boy_5f83a2d685.jpg\", \"hash\": \"small_the_internet_s_own_boy_5f83a2d685\", \"mime\": \"image/jpeg\", \"name\": \"small_the-internet-s-own-boy\", \"path\": null, \"size\": 25.31, \"width\": 500, \"height\": 295}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_the_internet_s_own_boy_5f83a2d685.jpg\", \"hash\": \"medium_the_internet_s_own_boy_5f83a2d685\", \"mime\": \"image/jpeg\", \"name\": \"medium_the-internet-s-own-boy\", \"path\": null, \"size\": 45.93, \"width\": 750, \"height\": 442}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_the_internet_s_own_boy_5f83a2d685.jpg\", \"hash\": \"thumbnail_the_internet_s_own_boy_5f83a2d685\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_the-internet-s-own-boy\", \"path\": null, \"size\": 8.38, \"width\": 245, \"height\": 144}}','the_internet_s_own_boy_5f83a2d685','.jpg','image/jpeg',91.55,'/uploads/the_internet_s_own_boy_5f83a2d685.jpg',NULL,'local',NULL,'2022-07-09 08:49:47.741000','2022-07-09 08:49:47.741000',NULL,NULL),(7,'a-bug-is-becoming-a-meme-on-the-internet','a-bug-is-becoming-a-meme-on-the-internet','a-bug-is-becoming-a-meme-on-the-internet',3628,2419,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_a_bug_is_becoming_a_meme_on_the_internet_9b8fa72707.jpg\", \"hash\": \"large_a_bug_is_becoming_a_meme_on_the_internet_9b8fa72707\", \"mime\": \"image/jpeg\", \"name\": \"large_a-bug-is-becoming-a-meme-on-the-internet\", \"path\": null, \"size\": 51.08, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_a_bug_is_becoming_a_meme_on_the_internet_9b8fa72707.jpg\", \"hash\": \"small_a_bug_is_becoming_a_meme_on_the_internet_9b8fa72707\", \"mime\": \"image/jpeg\", \"name\": \"small_a-bug-is-becoming-a-meme-on-the-internet\", \"path\": null, \"size\": 19.28, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_a_bug_is_becoming_a_meme_on_the_internet_9b8fa72707.jpg\", \"hash\": \"medium_a_bug_is_becoming_a_meme_on_the_internet_9b8fa72707\", \"mime\": \"image/jpeg\", \"name\": \"medium_a-bug-is-becoming-a-meme-on-the-internet\", \"path\": null, \"size\": 33.61, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_a_bug_is_becoming_a_meme_on_the_internet_9b8fa72707.jpg\", \"hash\": \"thumbnail_a_bug_is_becoming_a_meme_on_the_internet_9b8fa72707\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_a-bug-is-becoming-a-meme-on-the-internet\", \"path\": null, \"size\": 6.74, \"width\": 234, \"height\": 156}}','a_bug_is_becoming_a_meme_on_the_internet_9b8fa72707','.jpg','image/jpeg',198.85,'/uploads/a_bug_is_becoming_a_meme_on_the_internet_9b8fa72707.jpg',NULL,'local',NULL,'2022-07-09 08:49:48.168000','2022-07-09 08:49:48.168000',NULL,NULL),(8,'beautiful-picture','beautiful-picture','beautiful-picture',3824,2548,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_beautiful_picture_723003cf43.jpg\", \"hash\": \"large_beautiful_picture_723003cf43\", \"mime\": \"image/jpeg\", \"name\": \"large_beautiful-picture\", \"path\": null, \"size\": 83.62, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_beautiful_picture_723003cf43.jpg\", \"hash\": \"small_beautiful_picture_723003cf43\", \"mime\": \"image/jpeg\", \"name\": \"small_beautiful-picture\", \"path\": null, \"size\": 23.38, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_beautiful_picture_723003cf43.jpg\", \"hash\": \"medium_beautiful_picture_723003cf43\", \"mime\": \"image/jpeg\", \"name\": \"medium_beautiful-picture\", \"path\": null, \"size\": 47.87, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_beautiful_picture_723003cf43.jpg\", \"hash\": \"thumbnail_beautiful_picture_723003cf43\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_beautiful-picture\", \"path\": null, \"size\": 6.42, \"width\": 234, \"height\": 156}}','beautiful_picture_723003cf43','.jpg','image/jpeg',585.12,'/uploads/beautiful_picture_723003cf43.jpg',NULL,'local',NULL,'2022-07-09 08:49:48.448000','2022-07-09 08:49:48.448000',NULL,NULL),(9,'we-love-pizza','we-love-pizza','we-love-pizza',3782,2522,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_we_love_pizza_29f8520115.jpg\", \"hash\": \"large_we_love_pizza_29f8520115\", \"mime\": \"image/jpeg\", \"name\": \"large_we-love-pizza\", \"path\": null, \"size\": 180.53, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_we_love_pizza_29f8520115.jpg\", \"hash\": \"small_we_love_pizza_29f8520115\", \"mime\": \"image/jpeg\", \"name\": \"small_we-love-pizza\", \"path\": null, \"size\": 52.66, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_we_love_pizza_29f8520115.jpg\", \"hash\": \"medium_we_love_pizza_29f8520115\", \"mime\": \"image/jpeg\", \"name\": \"medium_we-love-pizza\", \"path\": null, \"size\": 106.25, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_we_love_pizza_29f8520115.jpg\", \"hash\": \"thumbnail_we_love_pizza_29f8520115\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_we-love-pizza\", \"path\": null, \"size\": 13.76, \"width\": 234, \"height\": 156}}','we_love_pizza_29f8520115','.jpg','image/jpeg',955.02,'/uploads/we_love_pizza_29f8520115.jpg',NULL,'local',NULL,'2022-07-09 08:49:48.456000','2022-07-09 08:49:48.456000',NULL,NULL),(10,'favicon','favicon','favicon',512,512,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_favicon_c67421f20d.png\", \"hash\": \"small_favicon_c67421f20d\", \"mime\": \"image/png\", \"name\": \"small_favicon\", \"path\": null, \"size\": 26.5, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_favicon_c67421f20d.png\", \"hash\": \"thumbnail_favicon_c67421f20d\", \"mime\": \"image/png\", \"name\": \"thumbnail_favicon\", \"path\": null, \"size\": 5.61, \"width\": 156, \"height\": 156}}','favicon_c67421f20d','.png','image/png',2.78,'/uploads/favicon_c67421f20d.png',NULL,'local',NULL,'2022-07-09 08:49:51.093000','2022-07-09 08:49:51.093000',NULL,NULL),(11,'default-image','default-image','default-image',1208,715,'{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_default_image_a643d962b7.png\", \"hash\": \"large_default_image_a643d962b7\", \"mime\": \"image/png\", \"name\": \"large_default-image\", \"path\": null, \"size\": 297.58, \"width\": 1000, \"height\": 592}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_default_image_a643d962b7.png\", \"hash\": \"small_default_image_a643d962b7\", \"mime\": \"image/png\", \"name\": \"small_default-image\", \"path\": null, \"size\": 63.39, \"width\": 500, \"height\": 296}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_default_image_a643d962b7.png\", \"hash\": \"medium_default_image_a643d962b7\", \"mime\": \"image/png\", \"name\": \"medium_default-image\", \"path\": null, \"size\": 159.25, \"width\": 750, \"height\": 444}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_default_image_a643d962b7.png\", \"hash\": \"thumbnail_default_image_a643d962b7\", \"mime\": \"image/png\", \"name\": \"thumbnail_default-image\", \"path\": null, \"size\": 18.74, \"width\": 245, \"height\": 145}}','default_image_a643d962b7','.png','image/png',81.62,'/uploads/default_image_a643d962b7.png',NULL,'local',NULL,'2022-07-09 08:49:52.191000','2022-07-09 08:49:52.191000',NULL,NULL);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_related_morphs` (
  `file_id` int unsigned DEFAULT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  KEY `files_related_morphs_fk` (`file_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_related_morphs`
--

LOCK TABLES `files_related_morphs` WRITE;
/*!40000 ALTER TABLE `files_related_morphs` DISABLE KEYS */;
INSERT INTO `files_related_morphs` VALUES (2,1,'api::writer.writer','picture',1),(3,2,'api::writer.writer','picture',1),(5,2,'api::article.article','image',1),(6,3,'api::article.article','image',1),(7,4,'api::article.article','image',1),(4,1,'api::article.article','image',1),(9,6,'api::article.article','image',1),(8,5,'api::article.article','image',1),(11,2,'shared.seo','shareImage',1),(10,1,'api::global.global','favicon',1),(1,1,'shared.seo','shareImage',1),(11,3,'shared.seo','shareImage',1),(10,2,'api::global.global','favicon',1),(11,4,'shared.seo','shareImage',1),(7,7,'api::article.article','image',1),(8,8,'api::article.article','image',1),(6,9,'api::article.article','image',1),(5,10,'api::article.article','image',1),(9,11,'api::article.article','image',1),(4,12,'api::article.article','image',1);
/*!40000 ALTER TABLE `files_related_morphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `question` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_created_by_id_fk` (`created_by_id`),
  KEY `forms_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `forms_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `forms_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES (1,'how did you get to hitpoly','2022-07-18 15:51:46.646000','2022-07-27 09:55:37.104000','2022-07-18 15:53:04.238000',1,1,'en','1'),(2,'What do you think about the company?','2022-07-18 15:52:56.739000','2022-07-27 09:55:55.616000','2022-07-18 15:53:00.013000',1,1,'en','2'),(3,'Would you like to be part of the company?','2022-07-18 15:53:29.489000','2022-07-27 09:56:08.106000','2022-07-18 15:53:30.337000',1,1,'en','3'),(6,'Como llegaste a hitpoly','2022-07-25 10:05:05.880000','2022-07-27 10:05:50.731000','2022-07-25 10:05:07.897000',1,1,'es','1'),(7,'Que crees de la empresa','2022-07-25 10:05:43.773000','2022-07-27 10:06:00.320000','2022-07-25 10:05:45.337000',1,1,'es','2'),(8,'Te gustaria ser parte de la empresa','2022-07-25 10:06:15.406000','2022-07-27 10:10:29.452000','2022-07-25 10:06:16.614000',1,1,'es','3');
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_localizations_links`
--

DROP TABLE IF EXISTS `forms_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms_localizations_links` (
  `form_id` int unsigned DEFAULT NULL,
  `inv_form_id` int unsigned DEFAULT NULL,
  KEY `forms_localizations_links_fk` (`form_id`),
  KEY `forms_localizations_links_inv_fk` (`inv_form_id`),
  CONSTRAINT `forms_localizations_links_fk` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `forms_localizations_links_inv_fk` FOREIGN KEY (`inv_form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_localizations_links`
--

LOCK TABLES `forms_localizations_links` WRITE;
/*!40000 ALTER TABLE `forms_localizations_links` DISABLE KEYS */;
INSERT INTO `forms_localizations_links` VALUES (6,1),(1,6),(7,2),(2,7),(8,3),(3,8);
/*!40000 ALTER TABLE `forms_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals`
--

DROP TABLE IF EXISTS `globals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `globals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `globals_created_by_id_fk` (`created_by_id`),
  KEY `globals_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `globals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `globals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals`
--

LOCK TABLES `globals` WRITE;
/*!40000 ALTER TABLE `globals` DISABLE KEYS */;
INSERT INTO `globals` VALUES (1,'Hitpoly','2022-07-09 08:49:52.919000','2022-07-25 13:45:12.815000',NULL,1,'en'),(2,'Hitpoly','2022-07-25 13:45:12.573000','2022-07-26 00:09:08.407000',1,1,'es');
/*!40000 ALTER TABLE `globals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals_components`
--

DROP TABLE IF EXISTS `globals_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `globals_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `globals_field_index` (`field`),
  KEY `globals_component_type_index` (`component_type`),
  KEY `globals_entity_fk` (`entity_id`),
  CONSTRAINT `globals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals_components`
--

LOCK TABLES `globals_components` WRITE;
/*!40000 ALTER TABLE `globals_components` DISABLE KEYS */;
INSERT INTO `globals_components` VALUES (6,1,1,'sections.navbar','navbar',1),(7,1,2,'shared.seo','defaultSeo',1),(9,2,3,'shared.seo','defaultSeo',1);
/*!40000 ALTER TABLE `globals_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals_localizations_links`
--

DROP TABLE IF EXISTS `globals_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `globals_localizations_links` (
  `global_id` int unsigned DEFAULT NULL,
  `inv_global_id` int unsigned DEFAULT NULL,
  KEY `globals_localizations_links_fk` (`global_id`),
  KEY `globals_localizations_links_inv_fk` (`inv_global_id`),
  CONSTRAINT `globals_localizations_links_fk` FOREIGN KEY (`global_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `globals_localizations_links_inv_fk` FOREIGN KEY (`inv_global_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals_localizations_links`
--

LOCK TABLES `globals_localizations_links` WRITE;
/*!40000 ALTER TABLE `globals_localizations_links` DISABLE KEYS */;
INSERT INTO `globals_localizations_links` VALUES (2,1),(1,2);
/*!40000 ALTER TABLE `globals_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepages`
--

DROP TABLE IF EXISTS `homepages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homepages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homepages_created_by_id_fk` (`created_by_id`),
  KEY `homepages_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `homepages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `homepages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepages`
--

LOCK TABLES `homepages` WRITE;
/*!40000 ALTER TABLE `homepages` DISABLE KEYS */;
INSERT INTO `homepages` VALUES (1,'2022-07-09 08:49:41.996000','2022-07-25 13:48:43.473000',NULL,1,'en'),(2,'2022-07-25 13:48:43.069000','2022-07-26 00:10:37.141000',1,1,'es');
/*!40000 ALTER TABLE `homepages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepages_components`
--

DROP TABLE IF EXISTS `homepages_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homepages_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `homepages_field_index` (`field`),
  KEY `homepages_component_type_index` (`component_type`),
  KEY `homepages_entity_fk` (`entity_id`),
  CONSTRAINT `homepages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `homepages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepages_components`
--

LOCK TABLES `homepages_components` WRITE;
/*!40000 ALTER TABLE `homepages_components` DISABLE KEYS */;
INSERT INTO `homepages_components` VALUES (7,1,1,'shared.seo','seo',1),(8,1,1,'sections.hero','hero',1),(13,2,4,'shared.seo','seo',1),(14,2,2,'sections.hero','hero',1);
/*!40000 ALTER TABLE `homepages_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepages_localizations_links`
--

DROP TABLE IF EXISTS `homepages_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homepages_localizations_links` (
  `homepage_id` int unsigned DEFAULT NULL,
  `inv_homepage_id` int unsigned DEFAULT NULL,
  KEY `homepages_localizations_links_fk` (`homepage_id`),
  KEY `homepages_localizations_links_inv_fk` (`inv_homepage_id`),
  CONSTRAINT `homepages_localizations_links_fk` FOREIGN KEY (`homepage_id`) REFERENCES `homepages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `homepages_localizations_links_inv_fk` FOREIGN KEY (`inv_homepage_id`) REFERENCES `homepages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepages_localizations_links`
--

LOCK TABLES `homepages_localizations_links` WRITE;
/*!40000 ALTER TABLE `homepages_localizations_links` DISABLE KEYS */;
INSERT INTO `homepages_localizations_links` VALUES (2,1),(1,2);
/*!40000 ALTER TABLE `homepages_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locale`
--

LOCK TABLES `i18n_locale` WRITE;
/*!40000 ALTER TABLE `i18n_locale` DISABLE KEYS */;
INSERT INTO `i18n_locale` VALUES (1,'English (en)','en','2022-07-09 08:49:33.051000','2022-07-09 08:49:33.051000',NULL,NULL),(2,'Spanish (es)','es','2022-07-24 13:44:00.236000','2022-07-24 13:44:00.236000',1,1);
/*!40000 ALTER TABLE `i18n_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navdatas`
--

DROP TABLE IF EXISTS `navdatas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navdatas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` longtext,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `navdatas_created_by_id_fk` (`created_by_id`),
  KEY `navdatas_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `navdatas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `navdatas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navdatas`
--

LOCK TABLES `navdatas` WRITE;
/*!40000 ALTER TABLE `navdatas` DISABLE KEYS */;
INSERT INTO `navdatas` VALUES (1,'2022-07-30 02:55:01.191000','2022-07-30 02:57:48.919000','2022-07-30 02:57:48.914000',1,1,'Creamos soluciones que impactan el mundo.','Somos un grupo de emprendedores unidos. ','Hemos crecido creyendo que con la unión podemos lograr resultados increíbles, por esa razón dedicamos nuestro valioso tiempo en establecer relaciones con mentes brillantes.\n\nHitpoly no es nada convencional, no somos ni pretendemos ser ejecutivos de empresas clásicas, nos involucramos en proyectos muy desafiantes.\n\nVivimos el día a día buscando constantemente nuevos desafíos. Nos motiva la idea de mejorar la sociedad a través de nuestras innovaciones, estamos dispuestos a asumir el reto y superar todos los obstáculos que se nos presenten.\n\nEn Hitpoly creemos que los programas educativos convencionales ofrecidos por los gobiernos y algunas instituciones privadas, no están totalmente adecuados al mundo de hoy y es la principal causa de los problemas sociales que afectan a nuestros pueblos latinoamericanos.\n\nPero sabemos cómo mantenernos al tanto. Investigamos a fondo, recopilamos mucho conocimiento valioso y trabajamos en guiar a nuestros colaboradores. \n\nVivimos en un tiempo sin precedentes, donde el fácil acceso a la información y la educación de muy alta calidad nos brinda oportunidades de crecer y desarrollar proyectos de gran impacto a nivel global.\n\nEstamos seguros de que la preparación, la disciplina y perseverancia son claves y buscamos complementar al mundo en esta constante evolución, estamos dispuestos a escucharte para juntos poder lograr un mundo mejor.\n','es'),(2,'2022-07-30 02:57:40.197000','2022-07-30 02:57:41.634000','2022-07-30 02:57:41.631000',1,1,'We create solutions that impact the world.','We are a group of united entrepreneurs.','We have grown up believing that with the union we can achieve incredible results, for that reason we dedicate our valuable time to establish relationships with brilliant minds.\n\nHitpoly is not anything conventional, we are not nor do we pretend to be executives of classic companies, we get involved in very challenging projects.\n\nWe live day to day constantly looking for new challenges. We are motivated by the idea of ​​improving society through our innovations, we are willing to take on the challenge and overcome all obstacles that come our way.\n\nAt Hitpoly we believe that conventional educational programs offered by governments and some private institutions are not fully adequate to today\'s world and are the main cause of the social problems that affect our Latin American peoples.\n\nBut we know how to stay in the loop. We do extensive research, collect a lot of valuable knowledge and work on guiding our collaborators.\n\nWe live in unprecedented times, where easy access to information and high-quality education gives us opportunities to grow and develop projects with great impact on a global level.\n\nWe are sure that preparation, discipline and perseverance are key and we seek to complement the world in this constant evolution, we are willing to listen to you so that together we can achieve a better world.\n\n','en'),(3,'2022-07-30 03:42:09.774000','2022-07-30 03:44:56.503000','2022-07-30 03:42:12.386000',1,1,'Fundado por Denis. P. Olivares año 2019','Todo comenzó cuando llegué a la ciudad de Lima, una ciudad en Perú donde cualquier persona del país que deseara tener una vida exitosa quisiera estar...','Cuando me establecí, nada de lo que decían sobre ella se acercaba a mi realidad, busqué trabajo por todos lados y nunca nadie me abrió las puertas y si las abrían era solo para recibir una propuesta miserable y explotadora.\n\nDesde el año 2018 ya practicaba estados meditativos muy profundos en compañía de un amigo, buscando respuestas a la realidad de mi vida actual, fue cuando descubrí a un  apasionado soñador, imparable, que vivía dentro de mí, a quien no conocía por motivos de la vida.\n\nA principios de 2019, logre visualizar a hitpoly de una forma tan real y alguien que me decía “Esto te pertenece Denis ve por ello”. Fue en ese mismo día que mi mejor amigo profesional del marketing me propuso crear “HITPOLY”. Naciendo como una agencia especializada en social media, pero con una ideología de llevar soluciones al rededor del mundo y generar tantos empleos como quisiéramos.\n\nAunque este es apenas el principio, es así como nació, HITPOLY. No ha sido nada fácil, en 2020 mi socio renunció, por problemas que suelen pasar en todo emprendimiento y tome las riendas de la empresa, en oportunidades estuvimos a punto de quebrar, aunque es una gran probabilidad, me prometí nunca rendirme y eso nunca paso.\n\nActualmente, Hitpoly cuenta con amistades de la vida que lograron verle visión al proyecto y se convirtieron en socios para lograr lo que juntos pensamos algún día ser y tener, hemos acordado dar todo por el todo y estamos logrando cosas muy significativas, dentro de nosotros, como también dentro de cada empresa a la cual ayudamos.\n\nCreemos que es nuestro camino de vida y estamos dispuestos a explotar todo nuestros conocimientos y siempre mantenernos en constante aprendizaje con la finalidad de ayudarte a llevar soluciones alrededor del mundo con Eficacia y Eficiencia.\n','es'),(4,'2022-07-30 03:44:55.731000','2022-07-30 03:44:59.585000','2022-07-30 03:44:59.582000',1,1,'Founded by Dennis. P. Olivares year 2019','It all started when I arrived in the city of Lima, a city in Peru where anyone in the country who wanted to have a successful life would like to be...','When I settled down, nothing they said about her came close to my reality, I looked everywhere for work and no one ever opened doors for me and if they did open them it was only to receive a miserable and exploitative proposal.\n\nSince 2018 I was already practicing very deep meditative states in the company of a friend, looking for answers to the reality of my current life, that was when I discovered a passionate, unstoppable dreamer who lived inside me, whom I did not know for reasons of life.\n\nAt the beginning of 2019, I managed to visualize hitpoly in such a real way and someone telling me “This belongs to you Denis go for it”. It was on that same day that my best marketing professional friend approached me to create “HITPOLY”. Born as an agency specialized in social media, but with an ideology of bringing solutions around the world and generating as many jobs as we would like.\n\nAlthough this is just the beginning, this is how HITPOLY was born. It has not been easy at all, in 2020 my partner resigned, due to problems that usually happen in any entrepreneurship and I took the reins of the company, on occasions we were about to go bankrupt, although it is a great probability, I promised myself never to give up and that never happened .\n\nCurrently, Hitpoly has friends from life who managed to see the vision of the project and became partners to achieve what together we think one day to be and have, we have agreed to give everything for everything and we are achieving very significant things, within us, as well as within each company we help.\n\nWe believe that it is our way of life and we are willing to exploit all our knowledge and always keep ourselves in constant learning in order to help you bring solutions around the world with Effectiveness and Efficiency.\n\n','en');
/*!40000 ALTER TABLE `navdatas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navdatas_localizations_links`
--

DROP TABLE IF EXISTS `navdatas_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navdatas_localizations_links` (
  `navdata_id` int unsigned DEFAULT NULL,
  `inv_navdata_id` int unsigned DEFAULT NULL,
  KEY `navdatas_localizations_links_fk` (`navdata_id`),
  KEY `navdatas_localizations_links_inv_fk` (`inv_navdata_id`),
  CONSTRAINT `navdatas_localizations_links_fk` FOREIGN KEY (`navdata_id`) REFERENCES `navdatas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `navdatas_localizations_links_inv_fk` FOREIGN KEY (`inv_navdata_id`) REFERENCES `navdatas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navdatas_localizations_links`
--

LOCK TABLES `navdatas_localizations_links` WRITE;
/*!40000 ALTER TABLE `navdatas_localizations_links` DISABLE KEYS */;
INSERT INTO `navdatas_localizations_links` VALUES (2,1),(1,2),(4,3),(3,4);
/*!40000 ALTER TABLE `navdatas_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navs`
--

DROP TABLE IF EXISTS `navs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nav` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `navs_created_by_id_fk` (`created_by_id`),
  KEY `navs_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `navs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `navs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navs`
--

LOCK TABLES `navs` WRITE;
/*!40000 ALTER TABLE `navs` DISABLE KEYS */;
INSERT INTO `navs` VALUES (1,'HOME','2022-07-30 01:21:16.908000','2022-07-30 02:58:10.989000','2022-07-30 01:21:18.276000',1,1,'en','3'),(2,'PRINCIPAL','2022-07-30 01:21:40.437000','2022-07-30 02:58:20.210000','2022-07-30 01:21:41.811000',1,1,'es','3'),(3,'ABOUT','2022-07-30 01:21:54.520000','2022-07-30 03:45:33.854000','2022-07-30 01:21:55.302000',1,1,'en','1'),(4,'SOBRE NOSOTROS','2022-07-30 01:22:11.881000','2022-07-30 03:45:42.900000','2022-07-30 01:22:13.253000',1,1,'es','1'),(5,'OUR TEAM','2022-07-30 01:22:30.921000','2022-07-30 01:54:00.205000','2022-07-30 01:22:31.638000',1,1,'en','4'),(6,'NUESTRO EQUIPO','2022-07-30 01:22:45.120000','2022-07-30 01:54:04.616000','2022-07-30 01:22:46.209000',1,1,'es','4'),(7,'BLOG','2022-07-30 01:23:15.585000','2022-07-30 01:53:43.240000','2022-07-30 01:23:16.275000',1,1,'en','2'),(8,'BLOG','2022-07-30 01:25:18.364000','2022-07-30 01:53:47.193000','2022-07-30 01:25:20.408000',1,1,'es','2');
/*!40000 ALTER TABLE `navs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navs_localizations_links`
--

DROP TABLE IF EXISTS `navs_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navs_localizations_links` (
  `nav_id` int unsigned DEFAULT NULL,
  `inv_nav_id` int unsigned DEFAULT NULL,
  KEY `navs_localizations_links_fk` (`nav_id`),
  KEY `navs_localizations_links_inv_fk` (`inv_nav_id`),
  CONSTRAINT `navs_localizations_links_fk` FOREIGN KEY (`nav_id`) REFERENCES `navs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `navs_localizations_links_inv_fk` FOREIGN KEY (`inv_nav_id`) REFERENCES `navs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navs_localizations_links`
--

LOCK TABLES `navs_localizations_links` WRITE;
/*!40000 ALTER TABLE `navs_localizations_links` DISABLE KEYS */;
INSERT INTO `navs_localizations_links` VALUES (2,1),(1,2),(4,3),(3,4),(6,5),(5,6),(8,7),(7,8);
/*!40000 ALTER TABLE `navs_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navs_navdata_links`
--

DROP TABLE IF EXISTS `navs_navdata_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navs_navdata_links` (
  `nav_id` int unsigned DEFAULT NULL,
  `navdata_id` int unsigned DEFAULT NULL,
  KEY `navs_navdata_links_fk` (`nav_id`),
  KEY `navs_navdata_links_inv_fk` (`navdata_id`),
  CONSTRAINT `navs_navdata_links_fk` FOREIGN KEY (`nav_id`) REFERENCES `navs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `navs_navdata_links_inv_fk` FOREIGN KEY (`navdata_id`) REFERENCES `navdatas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navs_navdata_links`
--

LOCK TABLES `navs_navdata_links` WRITE;
/*!40000 ALTER TABLE `navs_navdata_links` DISABLE KEYS */;
INSERT INTO `navs_navdata_links` VALUES (1,2),(2,1),(3,4),(4,3);
/*!40000 ALTER TABLE `navs_navdata_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_tokens`
--

LOCK TABLES `strapi_api_tokens` WRITE;
/*!40000 ALTER TABLE `strapi_api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_core_store_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_core_store_settings`
--

LOCK TABLES `strapi_core_store_settings` WRITE;
/*!40000 ALTER TABLE `strapi_core_store_settings` DISABLE KEYS */;
INSERT INTO `strapi_core_store_settings` VALUES (1,'strapi_content_types_schema','{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::article.article\":{\"kind\":\"collectionType\",\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"Article\",\"name\":\"article\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"description\":{\"type\":\"text\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"content\":{\"type\":\"richtext\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"required\":true},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"articles\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"author\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::writer.writer\",\"inversedBy\":\"articles\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"Article\",\"name\":\"article\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"description\":{\"type\":\"text\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"content\":{\"type\":\"richtext\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\",\"required\":true},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"articles\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"author\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::writer.writer\",\"inversedBy\":\"articles\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"article\",\"connection\":\"default\",\"uid\":\"api::article.article\",\"apiName\":\"article\",\"globalId\":\"Article\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"name\":\"category\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"name\":\"category\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"category\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::form.form\":{\"kind\":\"collectionType\",\"collectionName\":\"forms\",\"info\":{\"singularName\":\"form\",\"pluralName\":\"forms\",\"displayName\":\"Form\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"question\":{\"type\":\"richtext\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::form.form\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"forms\",\"info\":{\"singularName\":\"form\",\"pluralName\":\"forms\",\"displayName\":\"Form\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"question\":{\"type\":\"richtext\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"form\",\"connection\":\"default\",\"uid\":\"api::form.form\",\"apiName\":\"form\",\"globalId\":\"Form\",\"actions\":{},\"lifecycles\":{}},\"api::global.global\":{\"kind\":\"singleType\",\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"name\":\"global\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"defaultSeo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::global.global\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"name\":\"global\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"defaultSeo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"global\",\"connection\":\"default\",\"uid\":\"api::global.global\",\"apiName\":\"global\",\"globalId\":\"Global\",\"actions\":{},\"lifecycles\":{}},\"api::homepage.homepage\":{\"kind\":\"singleType\",\"collectionName\":\"homepages\",\"info\":{\"singularName\":\"homepage\",\"pluralName\":\"homepages\",\"displayName\":\"Homepage\",\"name\":\"homepage\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"hero\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"sections.hero\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::homepage.homepage\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"homepages\",\"info\":{\"singularName\":\"homepage\",\"pluralName\":\"homepages\",\"displayName\":\"Homepage\",\"name\":\"homepage\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"seo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"hero\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"sections.hero\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"homepage\",\"connection\":\"default\",\"uid\":\"api::homepage.homepage\",\"apiName\":\"homepage\",\"globalId\":\"Homepage\",\"actions\":{},\"lifecycles\":{}},\"api::nav.nav\":{\"kind\":\"collectionType\",\"collectionName\":\"navs\",\"info\":{\"singularName\":\"nav\",\"pluralName\":\"navs\",\"displayName\":\"Nav\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"nav\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"navdata\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::navdata.navdata\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::nav.nav\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"navs\",\"info\":{\"singularName\":\"nav\",\"pluralName\":\"navs\",\"displayName\":\"Nav\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"nav\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"navdata\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::navdata.navdata\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"nav\",\"connection\":\"default\",\"uid\":\"api::nav.nav\",\"apiName\":\"nav\",\"globalId\":\"Nav\",\"actions\":{},\"lifecycles\":{}},\"api::navdata.navdata\":{\"kind\":\"collectionType\",\"collectionName\":\"navdatas\",\"info\":{\"singularName\":\"navdata\",\"pluralName\":\"navdatas\",\"displayName\":\"Navdata\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"description\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"content\":{\"type\":\"richtext\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::navdata.navdata\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"navdatas\",\"info\":{\"singularName\":\"navdata\",\"pluralName\":\"navdatas\",\"displayName\":\"Navdata\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"description\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"content\":{\"type\":\"richtext\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"navdata\",\"connection\":\"default\",\"uid\":\"api::navdata.navdata\",\"apiName\":\"navdata\",\"globalId\":\"Navdata\",\"actions\":{},\"lifecycles\":{}},\"api::writer.writer\":{\"kind\":\"collectionType\",\"collectionName\":\"writers\",\"info\":{\"singularName\":\"writer\",\"pluralName\":\"writers\",\"displayName\":\"Writer\",\"name\":\"writer\"},\"options\":{\"increments\":true,\"timestamps\":true},\"attributes\":{\"name\":{\"type\":\"string\"},\"picture\":{\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"type\":\"media\",\"multiple\":false},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"author\"},\"email\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"writers\",\"info\":{\"singularName\":\"writer\",\"pluralName\":\"writers\",\"displayName\":\"Writer\",\"name\":\"writer\"},\"options\":{\"increments\":true,\"timestamps\":true},\"attributes\":{\"name\":{\"type\":\"string\"},\"picture\":{\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"type\":\"media\",\"multiple\":false},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"author\"},\"email\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"writer\",\"connection\":\"default\",\"uid\":\"api::writer.writer\",\"apiName\":\"writer\",\"globalId\":\"Writer\",\"actions\":{},\"lifecycles\":{}}}','object',NULL,NULL),(2,'plugin_content_manager_configuration_components::sections.hero','{\"uid\":\"sections.hero\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\"],\"edit\":[[{\"name\":\"title\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(3,'plugin_content_manager_configuration_components::shared.seo','{\"uid\":\"shared.seo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"shareImage\":{\"edit\":{\"label\":\"shareImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shareImage\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"shareImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"shareImage\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(4,'plugin_content_manager_configuration_content_types::admin::permission','{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object',NULL,NULL),(5,'plugin_content_manager_configuration_content_types::admin::user','{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object',NULL,NULL),(6,'plugin_content_manager_configuration_content_types::admin::role','{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object',NULL,NULL),(7,'plugin_content_manager_configuration_content_types::admin::api-token','{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}]]}}','object',NULL,NULL),(8,'plugin_content_manager_configuration_content_types::plugin::upload.file','{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object',NULL,NULL),(9,'plugin_content_manager_configuration_content_types::plugin::i18n.locale','{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object',NULL,NULL),(10,'plugin_content_manager_configuration_content_types::plugin::users-permissions.role','{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object',NULL,NULL),(11,'plugin_content_manager_configuration_content_types::plugin::users-permissions.user','{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object',NULL,NULL),(12,'plugin_content_manager_configuration_content_types::api::article.article','{\"uid\":\"api::article.article\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"author\":{\"edit\":{\"label\":\"author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"author\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"slug\"],\"editRelations\":[\"category\",\"author\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"slug\",\"size\":6},{\"name\":\"image\",\"size\":6}]]}}','object',NULL,NULL),(13,'plugin_content_manager_configuration_content_types::api::category.category','{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"articles\":{\"edit\":{\"label\":\"articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"articles\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"articles\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[\"articles\"]}}','object',NULL,NULL),(14,'plugin_content_manager_configuration_content_types::api::global.global','{\"uid\":\"api::global.global\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"siteName\",\"defaultSortBy\":\"siteName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"siteName\":{\"edit\":{\"label\":\"siteName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"siteName\",\"searchable\":true,\"sortable\":true}},\"defaultSeo\":{\"edit\":{\"label\":\"defaultSeo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"defaultSeo\",\"searchable\":false,\"sortable\":false}},\"favicon\":{\"edit\":{\"label\":\"favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"favicon\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"siteName\",\"defaultSeo\",\"favicon\"],\"edit\":[[{\"name\":\"siteName\",\"size\":6}],[{\"name\":\"defaultSeo\",\"size\":12}],[{\"name\":\"favicon\",\"size\":6}]],\"editRelations\":[]}}','object',NULL,NULL),(15,'plugin_content_manager_configuration_content_types::api::homepage.homepage','{\"uid\":\"api::homepage.homepage\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"seo\":{\"edit\":{\"label\":\"seo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seo\",\"searchable\":false,\"sortable\":false}},\"hero\":{\"edit\":{\"label\":\"hero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hero\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"seo\",\"hero\",\"createdAt\"],\"edit\":[[{\"name\":\"seo\",\"size\":12}],[{\"name\":\"hero\",\"size\":12}]],\"editRelations\":[]}}','object',NULL,NULL),(16,'plugin_content_manager_configuration_content_types::api::writer.writer','{\"uid\":\"api::writer.writer\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"picture\":{\"edit\":{\"label\":\"picture\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"picture\",\"searchable\":false,\"sortable\":false}},\"articles\":{\"edit\":{\"label\":\"articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"articles\",\"searchable\":false,\"sortable\":false}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"picture\",\"articles\"],\"editRelations\":[\"articles\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"picture\",\"size\":6}],[{\"name\":\"email\",\"size\":6}]]}}','object',NULL,NULL),(17,'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission','{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}','object',NULL,NULL),(18,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}','object',NULL,NULL),(19,'plugin_i18n_default_locale','\"en\"','string',NULL,NULL),(20,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object',NULL,NULL),(21,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object',NULL,NULL),(22,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object',NULL,NULL),(23,'type_setup_initHasRun','true','boolean','development',NULL),(24,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object',NULL,NULL),(25,'plugin_content_manager_configuration_content_types::api::form.form','{\"uid\":\"api::form.form\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"question\":{\"edit\":{\"label\":\"question\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"question\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"slug\"],\"edit\":[[{\"name\":\"question\",\"size\":12}],[{\"name\":\"slug\",\"size\":4}]],\"editRelations\":[]}}','object',NULL,NULL),(31,'plugin_content_manager_configuration_content_types::api::nav.nav','{\"uid\":\"api::nav.nav\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nav\",\"defaultSortBy\":\"nav\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nav\":{\"edit\":{\"label\":\"nav\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nav\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"navdata\":{\"edit\":{\"label\":\"navdata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"navdata\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nav\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"nav\",\"size\":6},{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[\"navdata\"]}}','object',NULL,NULL),(32,'plugin_content_manager_configuration_content_types::api::navdata.navdata','{\"uid\":\"api::navdata.navdata\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"title\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"image\",\"size\":6}]],\"editRelations\":[]}}','object',NULL,NULL);
/*!40000 ALTER TABLE `strapi_core_store_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_database_schema`
--

DROP TABLE IF EXISTS `strapi_database_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_database_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_database_schema`
--

LOCK TABLES `strapi_database_schema` WRITE;
/*!40000 ALTER TABLE `strapi_database_schema` DISABLE KEYS */;
INSERT INTO `strapi_database_schema` VALUES (31,'{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"articles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"articles_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"articles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"articles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"articles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"articles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"forms\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"question\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"forms_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"forms_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"forms_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"forms_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"globals\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"site_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"globals_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"globals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"globals_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"globals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homepages\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homepages_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"homepages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"homepages_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homepages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"navs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nav\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"navs_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"navs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"navs_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"navs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"navdatas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"navdatas_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"navdatas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"navdatas_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"navdatas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"writers\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"writers_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"writers_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"writers_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"writers_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_decoration_heroes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_shared_seos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"meta_title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"meta_description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"articles_category_links\", \"columns\": [{\"args\": [], \"name\": \"article_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"articles_category_links_fk\", \"columns\": [\"article_id\"]}, {\"name\": \"articles_category_links_inv_fk\", \"columns\": [\"category_id\"]}], \"foreignKeys\": [{\"name\": \"articles_category_links_fk\", \"columns\": [\"article_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"articles\", \"referencedColumns\": [\"id\"]}, {\"name\": \"articles_category_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"articles_author_links\", \"columns\": [{\"args\": [], \"name\": \"article_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"writer_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"articles_author_links_fk\", \"columns\": [\"article_id\"]}, {\"name\": \"articles_author_links_inv_fk\", \"columns\": [\"writer_id\"]}], \"foreignKeys\": [{\"name\": \"articles_author_links_fk\", \"columns\": [\"article_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"articles\", \"referencedColumns\": [\"id\"]}, {\"name\": \"articles_author_links_inv_fk\", \"columns\": [\"writer_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"writers\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"articles_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"article_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_article_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"articles_localizations_links_fk\", \"columns\": [\"article_id\"]}, {\"name\": \"articles_localizations_links_inv_fk\", \"columns\": [\"inv_article_id\"]}], \"foreignKeys\": [{\"name\": \"articles_localizations_links_fk\", \"columns\": [\"article_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"articles\", \"referencedColumns\": [\"id\"]}, {\"name\": \"articles_localizations_links_inv_fk\", \"columns\": [\"inv_article_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"articles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_localizations_links_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"categories_localizations_links_inv_fk\", \"columns\": [\"inv_category_id\"]}], \"foreignKeys\": [{\"name\": \"categories_localizations_links_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_localizations_links_inv_fk\", \"columns\": [\"inv_category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"forms_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"form_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_form_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"forms_localizations_links_fk\", \"columns\": [\"form_id\"]}, {\"name\": \"forms_localizations_links_inv_fk\", \"columns\": [\"inv_form_id\"]}], \"foreignKeys\": [{\"name\": \"forms_localizations_links_fk\", \"columns\": [\"form_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"forms\", \"referencedColumns\": [\"id\"]}, {\"name\": \"forms_localizations_links_inv_fk\", \"columns\": [\"inv_form_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"forms\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"globals_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"globals_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"globals_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"globals_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"globals_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"globals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"globals_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"global_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_global_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"globals_localizations_links_fk\", \"columns\": [\"global_id\"]}, {\"name\": \"globals_localizations_links_inv_fk\", \"columns\": [\"inv_global_id\"]}], \"foreignKeys\": [{\"name\": \"globals_localizations_links_fk\", \"columns\": [\"global_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"globals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"globals_localizations_links_inv_fk\", \"columns\": [\"inv_global_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"globals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homepages_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": 0, \"notNullable\": false}], \"indexes\": [{\"name\": \"homepages_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"homepages_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"homepages_entity_fk\", \"columns\": [\"entity_id\"]}], \"foreignKeys\": [{\"name\": \"homepages_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homepages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homepages_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"homepage_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_homepage_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homepages_localizations_links_fk\", \"columns\": [\"homepage_id\"]}, {\"name\": \"homepages_localizations_links_inv_fk\", \"columns\": [\"inv_homepage_id\"]}], \"foreignKeys\": [{\"name\": \"homepages_localizations_links_fk\", \"columns\": [\"homepage_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homepages\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homepages_localizations_links_inv_fk\", \"columns\": [\"inv_homepage_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homepages\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"navs_navdata_links\", \"columns\": [{\"args\": [], \"name\": \"nav_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"navdata_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"navs_navdata_links_fk\", \"columns\": [\"nav_id\"]}, {\"name\": \"navs_navdata_links_inv_fk\", \"columns\": [\"navdata_id\"]}], \"foreignKeys\": [{\"name\": \"navs_navdata_links_fk\", \"columns\": [\"nav_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navs\", \"referencedColumns\": [\"id\"]}, {\"name\": \"navs_navdata_links_inv_fk\", \"columns\": [\"navdata_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navdatas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"navs_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"nav_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_nav_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"navs_localizations_links_fk\", \"columns\": [\"nav_id\"]}, {\"name\": \"navs_localizations_links_inv_fk\", \"columns\": [\"inv_nav_id\"]}], \"foreignKeys\": [{\"name\": \"navs_localizations_links_fk\", \"columns\": [\"nav_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navs\", \"referencedColumns\": [\"id\"]}, {\"name\": \"navs_localizations_links_inv_fk\", \"columns\": [\"inv_nav_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navs\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"navdatas_localizations_links\", \"columns\": [{\"args\": [], \"name\": \"navdata_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_navdata_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"navdatas_localizations_links_fk\", \"columns\": [\"navdata_id\"]}, {\"name\": \"navdatas_localizations_links_inv_fk\", \"columns\": [\"inv_navdata_id\"]}], \"foreignKeys\": [{\"name\": \"navdatas_localizations_links_fk\", \"columns\": [\"navdata_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navdatas\", \"referencedColumns\": [\"id\"]}, {\"name\": \"navdatas_localizations_links_inv_fk\", \"columns\": [\"inv_navdata_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"navdatas\", \"referencedColumns\": [\"id\"]}]}]}','2022-07-30 02:53:40','67a5815d892fec103060dae8e92f1afa');
/*!40000 ALTER TABLE `strapi_database_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_migrations`
--

DROP TABLE IF EXISTS `strapi_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_migrations`
--

LOCK TABLES `strapi_migrations` WRITE;
/*!40000 ALTER TABLE `strapi_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions`
--

DROP TABLE IF EXISTS `up_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  KEY `up_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions`
--

LOCK TABLES `up_permissions` WRITE;
/*!40000 ALTER TABLE `up_permissions` DISABLE KEYS */;
INSERT INTO `up_permissions` VALUES (1,'plugin::users-permissions.auth.connect','2022-07-09 08:49:35.000000','2022-07-09 08:49:35.000000',NULL,NULL),(2,'plugin::users-permissions.user.me','2022-07-09 08:49:35.000000','2022-07-09 08:49:35.000000',NULL,NULL),(5,'plugin::users-permissions.auth.callback','2022-07-09 08:49:35.346000','2022-07-09 08:49:35.346000',NULL,NULL),(6,'plugin::users-permissions.auth.connect','2022-07-09 08:49:35.346000','2022-07-09 08:49:35.346000',NULL,NULL),(9,'plugin::users-permissions.auth.register','2022-07-09 08:49:35.346000','2022-07-09 08:49:35.346000',NULL,NULL),(11,'plugin::users-permissions.user.me','2022-07-09 08:49:35.346000','2022-07-09 08:49:35.346000',NULL,NULL),(12,'api::global.global.find','2022-07-09 08:49:36.174000','2022-07-09 08:49:36.174000',NULL,NULL),(13,'api::homepage.homepage.find','2022-07-09 08:49:36.174000','2022-07-09 08:49:36.174000',NULL,NULL),(14,'api::article.article.find','2022-07-09 08:49:36.174000','2022-07-09 08:49:36.174000',NULL,NULL),(15,'api::article.article.findOne','2022-07-09 08:49:36.174000','2022-07-09 08:49:36.174000',NULL,NULL),(16,'api::category.category.find','2022-07-09 08:49:36.174000','2022-07-09 08:49:36.174000',NULL,NULL),(17,'api::category.category.findOne','2022-07-09 08:49:36.174000','2022-07-09 08:49:36.174000',NULL,NULL),(18,'api::writer.writer.find','2022-07-09 08:49:36.174000','2022-07-09 08:49:36.174000',NULL,NULL),(19,'api::writer.writer.findOne','2022-07-09 08:49:36.174000','2022-07-09 08:49:36.174000',NULL,NULL),(20,'api::form.form.find','2022-07-18 16:41:08.137000','2022-07-18 16:41:08.137000',NULL,NULL),(21,'api::form.form.findOne','2022-07-18 16:41:08.137000','2022-07-18 16:41:08.137000',NULL,NULL),(23,'api::nav.nav.find','2022-07-30 01:20:34.286000','2022-07-30 01:20:34.286000',NULL,NULL),(24,'api::nav.nav.findOne','2022-07-30 01:20:34.287000','2022-07-30 01:20:34.287000',NULL,NULL),(25,'api::navdata.navdata.find','2022-07-30 02:50:58.406000','2022-07-30 02:50:58.406000',NULL,NULL),(26,'api::navdata.navdata.findOne','2022-07-30 02:50:58.406000','2022-07-30 02:50:58.406000',NULL,NULL);
/*!40000 ALTER TABLE `up_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions_role_links`
--

DROP TABLE IF EXISTS `up_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions_role_links` (
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions_role_links`
--

LOCK TABLES `up_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `up_permissions_role_links` DISABLE KEYS */;
INSERT INTO `up_permissions_role_links` VALUES (1,1),(2,1),(9,2),(5,2),(11,2),(6,2),(12,2),(19,2),(14,2),(15,2),(18,2),(17,2),(13,2),(16,2),(20,2),(21,2),(23,2),(24,2),(26,2),(25,2);
/*!40000 ALTER TABLE `up_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_roles`
--

DROP TABLE IF EXISTS `up_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_roles`
--

LOCK TABLES `up_roles` WRITE;
/*!40000 ALTER TABLE `up_roles` DISABLE KEYS */;
INSERT INTO `up_roles` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated','2022-07-09 08:49:34.445000','2022-07-09 08:49:34.445000',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public','2022-07-09 08:49:34.570000','2022-07-30 02:50:58.315000',NULL,NULL);
/*!40000 ALTER TABLE `up_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users`
--

DROP TABLE IF EXISTS `up_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users`
--

LOCK TABLES `up_users` WRITE;
/*!40000 ALTER TABLE `up_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users_role_links`
--

DROP TABLE IF EXISTS `up_users_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users_role_links` (
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users_role_links`
--

LOCK TABLES `up_users_role_links` WRITE;
/*!40000 ALTER TABLE `up_users_role_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writers`
--

DROP TABLE IF EXISTS `writers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `writers_created_by_id_fk` (`created_by_id`),
  KEY `writers_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `writers_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `writers_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writers`
--

LOCK TABLES `writers` WRITE;
/*!40000 ALTER TABLE `writers` DISABLE KEYS */;
INSERT INTO `writers` VALUES (1,'David Doe','daviddoe@strapi.io','2022-07-09 08:49:45.163000','2022-07-09 08:49:45.163000',NULL,NULL),(2,'Sarah Baker','sarahbaker@strapi.io','2022-07-09 08:49:45.549000','2022-07-09 08:49:45.549000',NULL,NULL);
/*!40000 ALTER TABLE `writers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-30  4:12:21
