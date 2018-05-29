-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tostringshop
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrito` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cliente` bigint(20) DEFAULT NULL,
  `date_add` datetime(6) DEFAULT NULL,
  `date_update` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10134 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` VALUES (1,1,'2018-04-02 12:49:01.413000',NULL),(2,NULL,'2018-04-06 14:58:53.280000',NULL),(3,NULL,'2018-04-06 14:59:05.977000',NULL),(4,NULL,'2018-04-06 14:59:06.683000',NULL),(5,NULL,'2018-04-06 15:00:18.080000',NULL),(6,NULL,'2018-04-06 15:00:18.793000',NULL),(7,NULL,'2018-04-06 15:06:51.743000',NULL),(8,NULL,'2018-04-06 15:10:00.323000',NULL),(9,NULL,'2018-04-06 15:10:01.503000',NULL),(10,NULL,'2018-04-06 15:10:02.180000',NULL),(11,NULL,'2018-04-06 15:10:02.350000',NULL),(12,NULL,'2018-04-06 15:10:02.527000',NULL),(13,NULL,'2018-04-06 15:10:02.707000',NULL),(14,NULL,'2018-04-06 15:10:02.887000',NULL),(15,NULL,'2018-04-06 15:10:03.133000',NULL),(16,NULL,'2018-04-06 15:10:03.220000',NULL),(17,NULL,'2018-04-06 15:10:03.370000',NULL),(18,NULL,'2018-04-06 15:13:10.593000',NULL),(19,NULL,'2018-04-06 15:13:12.600000',NULL),(20,NULL,'2018-04-06 15:13:29.543000',NULL),(21,NULL,'2018-04-06 15:13:30.070000',NULL),(22,NULL,'2018-04-06 15:13:30.257000',NULL),(23,NULL,'2018-04-06 15:13:30.447000',NULL),(24,NULL,'2018-04-06 15:13:30.607000',NULL),(25,NULL,'2018-04-06 15:13:36.130000',NULL),(26,NULL,'2018-04-06 15:14:57.493000',NULL),(27,NULL,'2018-04-06 15:14:58.213000',NULL),(28,NULL,'2018-04-06 15:15:17.507000',NULL),(29,NULL,'2018-04-06 15:15:18.150000',NULL),(30,NULL,'2018-04-06 15:15:19.090000',NULL),(31,NULL,'2018-04-06 15:15:56.300000',NULL),(32,NULL,'2018-04-06 15:18:01.680000',NULL),(33,NULL,'2018-04-06 15:18:03.050000',NULL),(34,NULL,'2018-04-06 15:18:03.647000',NULL),(35,NULL,'2018-04-06 15:18:03.857000',NULL),(36,NULL,'2018-04-06 15:18:04.027000',NULL),(37,NULL,'2018-04-06 15:18:04.187000',NULL),(38,NULL,'2018-04-06 15:18:04.410000',NULL),(39,NULL,'2018-04-06 15:18:06.497000',NULL),(40,NULL,'2018-04-06 15:18:07.017000',NULL),(41,NULL,'2018-04-06 15:18:07.183000',NULL),(42,NULL,'2018-04-06 15:18:47.763000',NULL),(43,NULL,'2018-04-06 15:18:50.050000',NULL),(44,NULL,'2018-04-06 15:18:50.213000',NULL),(45,NULL,'2018-04-06 15:18:50.390000',NULL),(46,NULL,'2018-04-06 15:18:50.860000',NULL),(47,NULL,'2018-04-06 15:18:51.113000',NULL),(48,NULL,'2018-04-06 15:20:45.010000',NULL),(49,NULL,'2018-04-06 15:20:46.290000',NULL),(50,NULL,'2018-04-06 15:20:46.910000',NULL),(51,NULL,'2018-04-06 15:22:09.590000',NULL),(52,NULL,'2018-04-06 15:22:10.187000',NULL),(53,NULL,'2018-04-06 15:22:10.380000',NULL),(54,NULL,'2018-04-06 15:22:10.567000',NULL),(55,NULL,'2018-04-06 15:22:10.757000',NULL),(56,NULL,'2018-04-06 15:22:11.297000',NULL),(57,NULL,'2018-04-06 15:22:13.213000',NULL),(58,NULL,'2018-04-06 15:22:13.497000',NULL),(59,NULL,'2018-04-06 15:22:13.843000',NULL),(60,NULL,'2018-04-06 15:22:14.093000',NULL),(61,NULL,'2018-04-06 15:22:35.210000',NULL),(62,NULL,'2018-04-06 15:22:36.150000',NULL),(63,NULL,'2018-04-06 15:22:38.033000',NULL),(64,NULL,'2018-04-06 15:22:38.223000',NULL),(65,NULL,'2018-04-06 15:22:38.413000',NULL),(66,NULL,'2018-04-06 15:22:38.600000',NULL),(67,NULL,'2018-04-06 15:22:38.790000',NULL),(68,NULL,'2018-04-06 15:22:39.000000',NULL),(69,NULL,'2018-04-06 15:22:39.233000',NULL),(70,NULL,'2018-04-06 15:22:49.023000',NULL),(71,NULL,'2018-04-06 15:22:58.207000',NULL),(72,NULL,'2018-04-06 15:23:04.130000',NULL),(73,NULL,'2018-04-06 15:23:17.700000',NULL),(74,NULL,'2018-04-06 15:23:43.840000',NULL),(75,NULL,'2018-04-06 15:23:47.017000',NULL),(76,NULL,'2018-04-06 15:24:09.920000',NULL),(77,NULL,'2018-04-06 15:24:28.337000',NULL),(78,NULL,'2018-04-06 15:24:37.560000',NULL),(79,NULL,'2018-04-06 15:24:43.977000',NULL),(80,NULL,'2018-04-06 15:25:21.497000',NULL),(81,NULL,'2018-04-06 15:25:23.357000',NULL),(82,NULL,'2018-04-06 15:25:25.567000',NULL),(83,NULL,'2018-04-06 15:25:26.240000',NULL),(84,NULL,'2018-04-06 15:25:26.423000',NULL),(85,NULL,'2018-04-06 15:25:26.623000',NULL),(86,NULL,'2018-04-06 15:25:26.817000',NULL),(87,NULL,'2018-04-06 15:25:39.480000',NULL),(88,NULL,'2018-04-06 15:25:40.377000',NULL),(89,NULL,'2018-04-06 15:25:40.640000',NULL),(90,NULL,'2018-04-06 15:25:40.830000',NULL),(91,NULL,'2018-04-06 15:25:42.960000',NULL),(92,NULL,'2018-04-06 15:25:43.120000',NULL),(93,1,'2018-04-09 08:28:48.097000',NULL),(94,1,'2018-04-09 08:31:31.187000',NULL),(95,146,'2018-04-09 09:18:45.247000',NULL),(96,1,'2018-04-09 09:28:57.663000',NULL),(97,1,'2018-04-09 13:48:49.583000',NULL),(98,1,'2018-04-09 15:51:56.267000',NULL),(99,1,'2018-04-09 16:10:50.257000',NULL),(100,1,'2018-04-09 16:19:54.527000',NULL),(101,1,'2018-04-09 16:45:23.933000',NULL),(102,1,'2018-04-09 16:47:27.227000',NULL),(103,1,'2018-04-09 16:48:24.670000',NULL),(104,1,'2018-04-09 16:52:35.790000',NULL),(105,1,'2018-04-09 17:15:03.823000',NULL),(106,1,'2018-04-09 17:34:57.390000',NULL),(107,1,'2018-04-09 18:05:56.587000',NULL),(108,1,'2018-04-10 10:07:39.267000',NULL),(109,1,'2018-04-10 13:37:07.373000',NULL),(110,1,'2018-04-11 08:56:24.727000',NULL),(111,1,'2018-04-11 08:59:27.333000',NULL),(112,1,'2018-04-11 09:15:18.783000',NULL),(113,149,'2018-04-11 09:26:24.333000',NULL),(114,1,'2018-04-11 12:18:00.287000',NULL),(115,1,'2018-04-11 13:34:41.860000',NULL),(116,1,'2018-04-12 12:30:44.327000',NULL),(117,1,'2018-04-12 13:20:47.877000',NULL),(118,1,'2018-04-12 13:33:03.477000',NULL),(119,1,'2018-04-13 10:30:02.977000',NULL),(120,152,'2018-04-13 10:37:17.530000',NULL),(121,153,'2018-04-13 10:49:44.330000',NULL),(122,1,'2018-04-13 11:06:48.633000',NULL),(123,1,'2018-04-17 10:23:24.360000',NULL),(124,1,'2018-04-19 11:19:08.060000',NULL),(125,1,'2018-05-03 11:51:01.687000',NULL),(126,1,'2018-05-03 17:53:09.493000',NULL),(127,1,'2018-05-04 10:08:27.320000',NULL),(128,1,'2018-05-04 13:17:59.693000',NULL),(129,1,'2018-05-04 13:26:03.983000',NULL),(130,1,'2018-05-07 10:28:35.840000',NULL),(10117,1,'2018-05-09 15:13:30.347000',NULL),(10118,1,'2018-05-10 10:11:02.013000',NULL),(10119,1,'2018-05-11 13:20:55.027000',NULL),(10120,1,'2018-05-15 10:12:57.620000',NULL),(10121,1,'2018-05-15 10:18:50.823000',NULL),(10122,1,'2018-05-21 10:58:51.000000',NULL),(10123,165,'2018-05-21 12:47:50.000000',NULL),(10124,1,'2018-05-21 16:00:20.000000',NULL),(10125,1,'2018-05-22 11:06:12.000000',NULL),(10126,1,'2018-05-22 12:45:39.000000',NULL),(10127,1,'2018-05-22 15:49:39.000000',NULL),(10128,1,'2018-05-23 10:05:38.000000',NULL),(10129,1,'2018-05-24 09:46:23.000000',NULL),(10130,1,'2018-05-25 09:12:48.000000',NULL),(10131,1,'2018-05-25 09:17:19.000000',NULL),(10132,1,'2018-05-28 09:44:07.000000',NULL),(10133,1,'2018-05-29 09:46:59.000000',NULL);
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito_producto`
--

DROP TABLE IF EXISTS `carrito_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrito_producto` (
  `id_carrito` bigint(20) NOT NULL,
  `id_producto` bigint(20) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_carrito`,`id_producto`),
  KEY `FK_carrito_producto_productos` (`id_producto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito_producto`
--

LOCK TABLES `carrito_producto` WRITE;
/*!40000 ALTER TABLE `carrito_producto` DISABLE KEYS */;
INSERT INTO `carrito_producto` VALUES (1,1,2),(1,2,2),(1,3,2),(94,3,3),(94,4,3),(96,3,4),(96,4,2),(96,5,1),(96,8,1),(96,10,2),(96,11,4),(96,12,3),(96,14,2),(96,17,3),(97,6,1),(98,1,1),(98,2,1),(98,3,1),(98,4,1),(98,5,1),(98,6,3),(98,7,4),(98,11,1),(98,18,2),(99,5,1),(10122,5,1),(10122,8,5),(10122,7,2),(10122,10,1),(10122,12,1),(10125,5,1),(10124,12,2),(10124,5,1),(10124,869,1),(10124,837,1),(10124,829,1),(10124,18,1),(10125,4,1),(10125,3,1),(10125,2,1),(10127,4,1),(10127,3,1),(10127,1,1),(10127,741,2),(10128,5,1),(10129,4,1),(10129,2,1),(10129,869,2),(10131,3,1),(10131,4,3),(10131,5,2),(10132,2957,1),(10132,2961,4),(10132,2962,1),(10132,2963,1),(10132,2970,1),(10132,2971,1),(10133,3,2),(10133,2971,1),(10133,2970,3),(10133,2966,4),(10133,2798,1);
/*!40000 ALTER TABLE `carrito_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `descripcion` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `logo` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `categoria_padre` int(11) DEFAULT NULL,
  `date_add` datetime(6) DEFAULT NULL,
  `date_update` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Guitarra Electrica','<p>Cuerdas para Guitarra Electrica</p>','images/fotos_tienda/electric-head.png',1,1,'2018-04-02 10:07:54.880000',NULL),(2,'Guitarra Acustica','<p>Cuerdas para Guitarra Acustica y ElectroAcustica</p>','images/fotos_tienda/acustic-head.png',1,2,'2018-04-02 10:07:54.880000',NULL),(3,'Guitarra Clasica','<p>Cuerdas para Guitarra Clasica y Flamenca</p>','images/fotos_tienda/classic-head.png',1,3,'2018-04-02 10:07:54.880000',NULL),(4,'Bajo Electrico','<p>Cuerdas para Bajo Electrico</p>','images/fotos_tienda/bass-head.png',1,4,'2018-04-02 10:07:54.880000',NULL),(5,'Bajo Acustico','<p>Cuerdas para Bajo Acustico y ElectroAcustio</p>','images/fotos_tienda/bass-head.png',1,5,'2018-04-02 10:07:54.880000',NULL),(6,'Accesorios','<p>Cuerdas para Guitarra Electrica</p>','images/fotos_tienda/accesorios.png',1,6,'2018-04-02 10:07:54.880000',NULL),(7,'Puas','<p>Puas</p>','images/fotos_tienda/puas.png',1,6,'2018-04-02 10:07:54.880000',NULL),(8,'Cables','<p>Cables para instrumenos electricos</p>','images/fotos_tienda/cables.png',1,6,'2018-04-02 10:07:54.880000',NULL),(10,'Cuerda Suelta G.Electrica','<p>Cuerdas Sueltas para Guitarra Electrica</p>',NULL,1,1,'2018-05-10 10:00:53.083000',NULL),(11,'Cuerda Suelta G.Acustica','<p>Cuerdas Sueltas para Guitarra Acustica y ElectroAcustica</p>',NULL,1,2,'2018-05-10 10:00:53.083000',NULL),(12,'Cuerda Suelta G.Clasica','<p>Cuerdas Sueltas para Guitarra Clasica y Flamenca</p>',NULL,1,3,'2018-05-10 10:00:53.083000',NULL),(13,'Cuerda Suelta B.Electrico','<p>Cuerdas Sueltas para Bajo Electrico</p>',NULL,1,4,'2018-05-10 10:00:53.083000',NULL),(14,'Cuerda Suelta B.Acustico','<p>Cuerdas Sueltas para Bajo Acustico y ElectroAcustio</p>',NULL,1,5,'2018-05-10 10:00:53.083000',NULL),(25,'Set Cuerda G.Electrica','<p>Set de Cuerdas para Guitarra Electrica</p>',NULL,1,1,'2018-05-10 10:05:17.453000',NULL),(26,'Set Cuerda G.Acustica','<p>Set de Cuerdas para Guitarra Acustica y ElectroAcustica</p>',NULL,1,2,'2018-05-10 10:05:17.453000',NULL),(27,'Set Cuerda G.Clasica','<p>Set de Cuerdas para Guitarra Clasica y Flamenca</p>',NULL,1,3,'2018-05-10 10:05:17.453000',NULL),(28,'Set Cuerda B.Electrico','<p>Set de Cuerdas para Bajo Electrico</p>',NULL,1,4,'2018-05-10 10:05:17.453000',NULL),(29,'Set Cuerda B.Acustico','<p>Set de Cuerdas para Bajo Acustico y ElectroAcustio</p>',NULL,1,5,'2018-05-10 10:05:17.453000',NULL),(30,'Set Custom Guitarra','<p>Set de Cuerdas Custom para Guitarra</p>',NULL,1,1,NULL,NULL),(31,'Set Custom Bajo','<p>Set de Cuerdas Custom para Bajo</p>',NULL,1,4,NULL,NULL);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(200) CHARACTER SET latin1 NOT NULL,
  `codigo_postal` smallint(6) DEFAULT NULL,
  `ciudad` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `provincia` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `comunidad_autonoma` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `date_add` datetime(6) DEFAULT NULL,
  `date_update` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'Calle Alextebuna Nº 35',29680,'Estepona','Málaga','Andalucia','2018-04-02 10:13:39.023000',NULL),(2,'Calle Diego de Almaguer 5 4-7',29006,'Málaga','Málaga','Andalucia','2018-04-02 10:13:39.023000',NULL),(3,'Calle Torrepija Nº 27',29785,'Tomelloso','Cuenca','Murcia','2018-04-05 10:38:50.810000',NULL),(4,'Calle Marmoles Nº2',29007,'Malaga','Malaga','Andalucia','2018-04-05 10:40:40.650000',NULL),(5,'Calle Marmoles Nº2',29007,'Malaga','Malaga','Andalucia','2018-04-05 10:57:29.707000',NULL),(6,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:00:01.213000',NULL),(7,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:02:33.223000',NULL),(8,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:02:35.360000',NULL),(9,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:04:16.750000',NULL),(10,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:04:25.390000',NULL),(11,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:04:56.170000',NULL),(12,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:05:20.503000',NULL),(13,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:18:59.110000',NULL),(14,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:19:21.040000',NULL),(15,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:19:51.037000',NULL),(16,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:20:16.027000',NULL),(17,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:20:23.483000',NULL),(18,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:20:26.123000',NULL),(19,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:20:31.980000',NULL),(20,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:20:43.603000',NULL),(21,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:21:51.370000',NULL),(22,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:42:53.950000',NULL),(23,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:45:31.590000',NULL),(24,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:46:52.600000',NULL),(25,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:48:48.980000',NULL),(26,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:49:15.870000',NULL),(27,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:54:01.070000',NULL),(28,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:54:25.160000',NULL),(29,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:55:53.790000',NULL),(30,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:55:55.837000',NULL),(31,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:56:38.867000',NULL),(32,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:57:55.303000',NULL),(33,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:57:57.733000',NULL),(34,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:58:36.650000',NULL),(35,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 13:59:01.390000',NULL),(36,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:00:34.237000',NULL),(37,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:00:46.257000',NULL),(38,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:03:18.380000',NULL),(39,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:08:45.787000',NULL),(40,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:09:36.433000',NULL),(41,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:12:59.757000',NULL),(42,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:14:24.093000',NULL),(43,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:14:56.463000',NULL),(44,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:15:00.517000',NULL),(45,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:15:30.303000',NULL),(46,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:15:34.140000',NULL),(47,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:15:37.203000',NULL),(48,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:20:23.393000',NULL),(49,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:21:15.380000',NULL),(50,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:21:31.087000',NULL),(51,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:23:01.043000',NULL),(52,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:23:16.547000',NULL),(53,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:27:32.570000',NULL),(54,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:28:03.573000',NULL),(55,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:28:27.667000',NULL),(56,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:45:11.217000',NULL),(57,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:46:23.460000',NULL),(58,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:46:26.520000',NULL),(59,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:46:27.993000',NULL),(60,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:46:31.530000',NULL),(61,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:50:35.050000',NULL),(62,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:50:38.983000',NULL),(63,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:50:52.337000',NULL),(64,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:51:23.570000',NULL),(65,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:51:34.727000',NULL),(66,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:51:38.333000',NULL),(67,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:53:25.807000',NULL),(68,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:55:17.000000',NULL),(69,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:55:35.800000',NULL),(70,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:57:03.333000',NULL),(71,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:57:06.807000',NULL),(72,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:57:50.317000',NULL),(73,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:57:52.727000',NULL),(74,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 14:57:55.133000',NULL),(75,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:00:28.017000',NULL),(76,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:00:30.013000',NULL),(77,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:00:31.190000',NULL),(78,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:11.997000',NULL),(79,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:13.117000',NULL),(80,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:13.677000',NULL),(81,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:13.923000',NULL),(82,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:14.127000',NULL),(83,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:14.323000',NULL),(84,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:14.510000',NULL),(85,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:14.710000',NULL),(86,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:14.917000',NULL),(87,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:15.110000',NULL),(88,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:15.310000',NULL),(89,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:15.517000',NULL),(90,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:15.723000',NULL),(91,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:15.923000',NULL),(92,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:16.133000',NULL),(93,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:16.790000',NULL),(94,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:18.030000',NULL),(95,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:01:19.277000',NULL),(96,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:02:25.837000',NULL),(97,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:04:26.413000',NULL),(98,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:04:59.180000',NULL),(99,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:05:22.947000',NULL),(100,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:08:15.800000',NULL),(101,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:12:40.080000',NULL),(102,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:12:58.337000',NULL),(103,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:13:06.567000',NULL),(104,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:13:25.317000',NULL),(105,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:21:33.403000',NULL),(106,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:22:06.077000',NULL),(107,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:22:26.447000',NULL),(108,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:25:36.827000',NULL),(109,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:25:50.763000',NULL),(110,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:27:10.157000',NULL),(111,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:27:26.403000',NULL),(112,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:27:42.277000',NULL),(113,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:28:47.610000',NULL),(114,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 15:28:59.020000',NULL),(127,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 16:05:34.923000',NULL),(128,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 16:07:28.800000',NULL),(129,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 16:08:53.117000',NULL),(130,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-04-05 16:13:09.537000',NULL),(131,'calle juan ',26980,'juan','juan','juan','2018-04-05 18:50:07.333000',NULL),(132,'Calle Elperanto NÂº78',32145,'Marbella','Asturias','ANDALUCIA','2018-04-09 09:16:33.623000',NULL),(133,'CALLE MARMOLES NÂº2 5-IZQUIERDA',29006,'MALAGA','MALAGA','ANDALUCIA','2018-04-09 09:25:01.887000',NULL),(134,'Calle Elperanto NÂº78',29680,'MALAGA','MALAGA','ANDALUCIA','2018-04-11 09:25:10.970000',NULL),(135,'Calle Elperanto NÂº78',29680,'MALAGA','MALAGA','ANDALUCIA','2018-04-11 09:30:57.063000',NULL),(136,'Calle Elperanto NÂº78',29380,'MALAGA','MALAGA','ANDALUCIA','2018-04-11 13:33:29.170000',NULL),(137,'Calle Elperanto NÂº78',25478,'Marbella','MALAGA','ANDALUCIA','2018-04-13 10:35:49.110000',NULL),(138,'Calle Elperanto NÂº78',29680,'Estepona','MALAGA','ANDALUCIA','2018-04-13 10:48:58.930000',NULL),(139,'Calle Elperanto Nº78',25487,'Marbella','Asturias','Galicia','2018-05-21 00:00:00.000000',NULL),(140,'Calle Elperanto NÂº78',25487,'Marbella','Asturias','Galicia','2018-05-21 00:00:00.000000',NULL);
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_pedido`
--

DROP TABLE IF EXISTS `estado_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `color` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_pedido`
--

LOCK TABLES `estado_pedido` WRITE;
/*!40000 ALTER TABLE `estado_pedido` DISABLE KEYS */;
INSERT INTO `estado_pedido` VALUES (1,'Pago Aceptado','#08D8D3'),(2,'Preparación en curso','#DE840E'),(3,'Enviado','#2875C3'),(4,'En reparto','#4C784F'),(5,'Incidecia','#000000'),(6,'En transito','#4C784F'),(7,'Esperando Transferencia','#D80896'),(8,'Pago denegado','#BF0808'),(9,'Esperando reposicion de productos','#D80896'),(10,'Entregado','#00A10C');
/*!40000 ALTER TABLE `estado_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_producto`
--

DROP TABLE IF EXISTS `estado_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `descripcion` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_producto`
--

LOCK TABLES `estado_producto` WRITE;
/*!40000 ALTER TABLE `estado_producto` DISABLE KEYS */;
INSERT INTO `estado_producto` VALUES (1,'Disponible','<p>Disponible para envio inmediato</p>'),(2,'Pocas Unidades','<p>Disponible para envio, pero quedan pocas unidades (Entre 1 o 3)</p>'),(3,'Sin Stock','<p>No hay stock, disponible en 4-5 dias</p>'),(4,'DESCATALOGADO','<p>¡Articulo descatalogado!</p>');
/*!40000 ALTER TABLE `estado_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `descripcion` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `imagen` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricantes`
--

LOCK TABLES `fabricantes` WRITE;
/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` VALUES (1,'Ernie Ball','<p>Fabricante de cuerdas</p>','ernieball.png'),(2,'Daddario','<p>Fabricante de cuerdas</p>',NULL),(3,'DR','<p>Fabricante de cuerdas</p>',NULL),(4,'ELIXIR','<p>Fabricante de cuerdas</p>',NULL),(5,'TO STRING SHOP',NULL,NULL);
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cliente` bigint(20) DEFAULT NULL,
  `fecha_factura` datetime(6) DEFAULT NULL,
  `precio_sin_iva` bigint(20) DEFAULT NULL,
  `precio_iva` bigint(20) DEFAULT NULL,
  `direccion_facturacion` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `direccion_envio` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `referencia` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_FACUTRA_CLIENTE` (`id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=10023 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,1,'2018-04-09 09:29:26.163000',30,36,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.96'),(2,1,'2018-04-09 12:48:29.873000',472,571,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.96'),(3,1,'2018-04-09 13:23:27.997000',603,730,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.96'),(4,149,'2018-04-11 09:27:29.587000',22,27,'Calle Elperanto NÂº78','Calle Elperanto NÂº78','149.149.113'),(5,1,'2018-04-11 13:37:23.360000',54,65,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.115'),(6,1,'2018-04-12 13:35:24.513000',52,63,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.118'),(7,153,'2018-04-13 10:51:52.233000',154,186,'Calle Elperanto NÂº78','Calle Elperanto NÂº78','153.153.121'),(10006,1,'2018-05-15 10:13:03.990000',15,18,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10120'),(10007,1,'2018-05-21 11:26:52.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10008,1,'2018-05-21 11:34:31.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10009,1,'2018-05-21 11:37:15.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10010,1,'2018-05-21 11:37:39.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10011,1,'2018-05-21 11:37:50.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10012,1,'2018-05-21 11:38:43.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10013,1,'2018-05-21 11:38:57.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10014,1,'2018-05-21 11:39:35.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10015,1,'2018-05-21 11:39:36.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10016,1,'2018-05-21 11:40:53.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10017,1,'2018-05-21 11:41:18.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10018,1,'2018-05-21 11:41:27.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10019,1,'2018-05-21 11:41:41.000000',137,166,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10122'),(10020,1,'2018-05-24 11:30:41.000000',26,32,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10129'),(10021,1,'2018-05-24 11:31:42.000000',26,32,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10129'),(10022,1,'2018-05-25 09:17:50.000000',45,54,'Calle Alextebuna Nº 35','Calle Alextebuna Nº 35','1.1.10131');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` bigint(20) DEFAULT NULL,
  `id_carrito` bigint(20) DEFAULT NULL,
  `id_tipo_pago` int(11) DEFAULT NULL,
  `id_transporte` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_factura` bigint(20) DEFAULT NULL,
  `date_add` datetime(6) DEFAULT NULL,
  `date_update` datetime(6) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `total_IVA` int(11) DEFAULT NULL,
  `referencia` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PEDIDOS_USUARIOS` (`id_cliente`),
  KEY `FK_PEDIDOS_CARRITO` (`id_carrito`),
  KEY `FK_PEDIDOS_TIPO_PAGO` (`id_tipo_pago`),
  KEY `FK_PEDIDOS_TRANSPORTE` (`id_transporte`),
  KEY `FK_PEDIDOS_ESTADO` (`id_estado`),
  KEY `FK_PEDIDOS_FACTURA` (`id_factura`)
) ENGINE=MyISAM AUTO_INCREMENT=1022 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,96,NULL,NULL,NULL,NULL,'2018-04-09 09:29:01.360000',NULL,NULL,NULL,NULL),(2,146,95,NULL,NULL,NULL,NULL,'2018-04-09 09:40:43.097000',NULL,NULL,NULL,NULL),(3,1,97,NULL,NULL,NULL,NULL,'2018-04-09 13:52:10.890000',NULL,NULL,NULL,NULL),(4,1,100,NULL,NULL,NULL,NULL,'2018-04-09 16:20:27.737000',NULL,NULL,NULL,NULL),(5,1,105,NULL,NULL,NULL,NULL,'2018-04-09 17:32:54.040000',NULL,NULL,NULL,NULL),(6,1,108,NULL,NULL,NULL,NULL,'2018-04-10 13:15:08.347000',NULL,NULL,NULL,NULL),(7,1,110,NULL,NULL,NULL,NULL,'2018-04-11 08:57:05.047000',NULL,NULL,NULL,NULL),(8,1,112,NULL,NULL,NULL,NULL,'2018-04-11 09:15:20.700000',NULL,NULL,NULL,NULL),(9,149,113,NULL,NULL,NULL,NULL,'2018-04-11 09:27:26.957000',NULL,NULL,NULL,NULL),(10,1,114,NULL,NULL,NULL,NULL,'2018-04-11 12:18:31.110000',NULL,NULL,NULL,NULL),(11,1,115,NULL,NULL,NULL,NULL,'2018-04-11 13:37:01.143000',NULL,NULL,NULL,NULL),(12,1,118,NULL,NULL,NULL,NULL,'2018-04-12 13:35:05.283000',NULL,NULL,NULL,NULL),(13,153,121,NULL,NULL,NULL,NULL,'2018-04-13 10:51:32.217000',NULL,NULL,NULL,NULL),(14,1,122,NULL,NULL,NULL,NULL,'2018-04-13 13:23:30.020000',NULL,NULL,NULL,NULL),(15,1,123,NULL,NULL,NULL,NULL,'2018-04-17 15:32:10.477000',NULL,NULL,NULL,NULL),(16,1,125,NULL,NULL,NULL,NULL,'2018-05-03 11:54:09.263000',NULL,NULL,NULL,NULL),(17,1,126,NULL,NULL,NULL,NULL,'2018-05-03 17:53:14.980000',NULL,NULL,NULL,NULL),(18,1,129,NULL,NULL,NULL,NULL,'2018-05-04 16:04:47.520000',NULL,NULL,NULL,NULL),(19,1,130,NULL,NULL,NULL,NULL,'2018-05-07 10:28:43.110000',NULL,NULL,NULL,NULL),(1012,1,10118,NULL,NULL,NULL,NULL,'2018-05-10 10:21:25.170000',NULL,NULL,NULL,NULL),(1013,1,10120,NULL,NULL,NULL,NULL,'2018-05-15 10:13:02.640000',NULL,NULL,NULL,NULL),(1014,1,10122,NULL,NULL,NULL,NULL,'2018-05-21 11:09:48.000000',NULL,NULL,NULL,NULL),(1015,1,10124,NULL,NULL,NULL,NULL,'2018-05-21 16:00:26.000000',NULL,NULL,NULL,NULL),(1016,1,10125,NULL,NULL,NULL,NULL,'2018-05-22 12:10:01.000000',NULL,NULL,NULL,NULL),(1017,1,10126,NULL,NULL,NULL,NULL,'2018-05-22 12:49:46.000000',NULL,NULL,NULL,NULL),(1018,1,10127,NULL,NULL,NULL,NULL,'2018-05-22 15:50:03.000000',NULL,NULL,NULL,NULL),(1019,1,10129,NULL,NULL,NULL,NULL,'2018-05-24 10:37:58.000000',NULL,NULL,NULL,NULL),(1020,1,10131,NULL,NULL,NULL,NULL,'2018-05-25 09:17:39.000000',NULL,NULL,NULL,NULL),(1021,1,10132,NULL,NULL,NULL,NULL,'2018-05-28 11:31:34.000000',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_fabricante` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `referencia` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `descripcion` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `descripcion_corta` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `ean13` smallint(6) DEFAULT NULL,
  `precio` bigint(20) DEFAULT NULL,
  `precio_iva` bigint(20) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `date_add` datetime(6) DEFAULT NULL,
  `date_update` datetime(6) DEFAULT NULL,
  `imagen` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `calibre` int(11) DEFAULT NULL,
  `id_set` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_productos_categorias` (`id_categoria`),
  KEY `FK_productos_fabricantes` (`id_fabricante`),
  KEY `FK_productos_estado` (`estado`)
) ENGINE=MyISAM AUTO_INCREMENT=2972 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,1,25,'EB2627',1,'Ernie Ball EB2627','Juego de cuerdas. Calibre .011 .015 .022p .030 .042 .054 Óptimas para Afinaciones Bajas** Las cuerdas Ernie Ball Beefy Slinky son ideales para aquellos guitarristas que deseen afinar su insturmento en afinaciones alternativas por debajo del tono original y muchos metaleros han encontrado en las Not Even el set perfecto en calibres para afinaciones alternativas en Re & Do. ','Juego de cuerdas para guitarra Electrica Calibre .011 .015 .022p .030 .042 .054 ',1,0,7,9,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2627',NULL,NULL),(2,1,25,'EB2626',1,'Ernie Ball EB2626','Juego de cuerdas. Calibre .012 .016 .024p .032 .044 .056 Óptimas para Afinaciones Bajas** Las cuerdas Ernie Ball Not Even Slinky son ideales para aquellos guitarristas que deseen afinar su insturmento en afinaciones alternativas por debajo del tono original y muchos metaleros han encontrado en las Not Even el set perfecto en calibres para afinaciones alternativas en Re & Do. ','Juego de cuerdas para guitarra Electrica Calibre .012 .016 .024p .032 .044 .056',1,0,8,9,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2626',NULL,NULL),(3,1,25,'EB2620',1,'Ernie Ball EB2620','Juego de cuerdas. Calibre .011 .014 .018p .028 .038 .048 .058 Las cuerdas Ernie Ball 7st Power Slinky son profundamente alabadas por músicos de todo el mundo y pensadas para los amantes de las siete cuerdas. Además, están fabricadas con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración..','Juego de cuerdas para guitarra Electrica Calibre .011 .014 .018p .028 .038 .048 .058 ',1,0,8,9,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2620',NULL,NULL),(4,1,25,'EB2223',1,'Ernie Ball EB2223','Juego de cuerdas. Calibre .008 .011 .014 .022w .030 .038 Las cuerdas Ernie Ball Extra Slinky te ofrecen ese timbre a tu guitarra mudialmente reconocido. Estas cuerdas has sido fabricadas de con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración','Juego de cuerdas para guitarra Electrica Calibre .008 .011 .014 .022w .030 .038 ',1,0,8,9,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2223',NULL,NULL),(5,1,25,'EB2222',1,'Ernie Ball EB2222','Juego de cuerdas. Calibre .009 .011 .016 .026 .036 .046 Las cuerdas Ernie Ball Hybrid Slinky son una elección perfecta para quien busca la combinación de las Super y Regular Slinky. Estas cuerdas han sido fabricadas con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración. ','Juego de cuerdas para guitarra Electrica Calibre .009 .011 .016 .026 .036 .046',1,0,8,9,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2222',NULL,NULL),(6,1,25,'EB2225',1,'Ernie Ball EB2225','Juego de cuerdas. Calibre .008 .011 .014 .022w .030 .038 Las cuerdas Ernie Ball Extra Slinky te ofrecen ese timbre a tu guitarra mudialmente reconocido. Estas cuerdas has sido fabricadas de con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración.','Juego de cuerdas para guitarra Electrica Calibre .008 .011 .014 .022w .030 .038',1,0,8,9,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2225',NULL,NULL),(7,1,25,'EB2221',1,'Ernie Ball EB2221','Juego de cuerdas. Calibre .010 .013 .017 .026 .036 .046 Las cuerdas Ernie Ball Regular Slinky son las mas vendidas y avaladas por legiones de guitarristas por todo el mundo. Estas cuerdas han sido fabricadas de con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración.','Juego de cuerdas para guitarra Electrica Calibre .010 .013 .017 .026 .036 .046',1,0,8,9,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2221',NULL,NULL),(8,1,25,'EB2220',1,'Ernie Ball EB2220','Juego de cuerdas. Calibre .011 .014 .018p .028 .038 .048 Las cuerdas Ernie Ball Power Slinky Electric Strings son perfectas para tocar Rock o Blues. Estas cuerdas has sido fabricadas con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración.','Juego de cuerdas para guitarra Electrica Calibre .011 .014 .018p .028 .038 .048 ',1,0,8,9,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2220',NULL,NULL),(9,1,25,'EB2215',1,'Ernie Ball EB2215','Juego de cuerdas. Calibre .010 .014 .020w .028 .040 .050 Las cuerdas Ernie Ball Skinny Top Heavy Bottom Slinky son el juego híbrido perfecto para los guitarristas que desean bordones con calibres gruesos pero sin sacrificar la capacidad de Solos que le ofrecen calibres más finos en las primas.','Juego de cuerdas para guitarra Electrica Calibre .010 .014 .020w .028 .040 .050',1,0,8,9,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2215',NULL,NULL),(10,1,28,'EB2838',1,'Ernie Ball EB2838','Juego de cuerdas. Calibre .050 .070 .085 .105 Ideales para los bajos con escala larga, las cuerdas para bajo Ernie Ball Slinky Bass 6 Strings están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley del Sur de California.','Juego de cuerdas para bajo Electrica Calibre .050 .070 .085 .105',1,0,39,47,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2838',NULL,NULL),(11,1,28,'EB2836',1,'Ernie Ball EB2836','Juego de cuerdas. Calibre .040 .060 .070 .095 Las cuerdas para bajo Ernie Ball Regular Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .040 .060 .070 .095',1,0,39,47,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2836',NULL,NULL),(12,1,28,'EB2835',1,'Ernie Ball EB2835','Juego de cuerdas. Calibre .050 .070 .085 .105 Las cuerdas para bajo Ernie Ball Extra Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .050 .070 .085 .105',1,0,39,47,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2835',NULL,NULL),(13,1,28,'EB2834',1,'Ernie Ball EB2834','Juego de cuerdas. Calibre .045 .065 .080 .100 Las cuerdas para bajo Ernie Ball Super Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .045 .065 .080',1,0,39,47,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2834',NULL,NULL),(14,1,28,'EB2832',1,'Ernie Ball EB2832','Juego de cuerdas. Calibre .050 .070 .085 .105 Las cuerdas para bajo Ernie Ball Regular Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .050 .070 .085 .105',1,0,39,47,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2832',NULL,NULL),(15,1,28,'EB2831',1,'Ernie Ball EB2831','Juego de cuerdas. Calibre .050 .070 .085 .105 Las cuerdas para bajo Ernie Ball Power Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .050 .070 .085 .105 ',1,0,39,47,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2831',NULL,NULL),(16,1,28,'EB2824',1,'Ernie Ball EB2824','Juego de cuerdas. Calibre .040 .060 .075 .095 .125 Las cuerdas para bajo Ernie Ball Super Slinky 5 StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .040 .060 .075 .095 .125',1,0,39,47,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2824',NULL,NULL),(17,1,28,'EB2821',1,'Ernie Ball EB2821','Juego de cuerdas. Calibre .050 .070 .085 .105 .135 Las cuerdas para bajo Ernie Ball Power Slinky 5 StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .050 .070 .085 .105 .135',1,0,39,47,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2821',NULL,NULL),(18,1,28,'EB2833',1,'Ernie Ball EB2833','Juego de cuerdas. Calibre .045 .065 .085 .105 Las cuerdas para bajo Ernie Ball Hybrid Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California. Caracterizada por una combinación de las Super Slinky y Regular Slinky, el juego Hybrid ha resultado ser uno de los más populares en las tiendas de todo el mundo.','Juego de cuerdas para bajo Electrica Calibre .045 .065 .085 .105',1,0,39,47,10,'2018-04-02 12:48:32.267000',NULL,'/codespace/images\\productos\\EB2833',NULL,NULL),(728,1,10,'EB2222',1,'ERNIE BALL EB2222','CUERDA ELECTRICA  S.STEEL ENTORCHADA 046','CUERDA ELECTRICA  S.STEEL ENTORCHADA 046',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1946.jpg',46,NULL),(729,1,10,'EB2223',1,'ERNIE BALL EB2223','CUERDA ELECTRICA REINFORCED PLANA 008','CUERDA ELECTRICA REINFORCED PLANA 008',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1028.jpg',8,NULL),(730,1,10,'EB2225',1,'ERNIE BALL EB2225','CUERDA ELECTRICA REINFORCED PLANA 009','CUERDA ELECTRICA REINFORCED PLANA 009',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1029.jpg',9,NULL),(731,1,10,'EB2230',1,'ERNIE BALL EB2230','CUERDA ELECTRICA REINFORCED PLANA 010','CUERDA ELECTRICA REINFORCED PLANA 010',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1030.jpg',10,NULL),(732,1,10,'EB2233',1,'ERNIE BALL EB2233','CUERDA ELECTRICA REINFORCED PLANA 011','CUERDA ELECTRICA REINFORCED PLANA 011',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1031.jpg',11,NULL),(733,1,10,'EB2236',1,'ERNIE BALL EB2236','CUERDA ELECTRICA REINFORCED PLANA 012','CUERDA ELECTRICA REINFORCED PLANA 012',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1032.jpg',12,NULL),(734,1,10,'EB2238',1,'ERNIE BALL EB2238','CUERDA ELECTRICA REINFORCED PLANA 013','CUERDA ELECTRICA REINFORCED PLANA 013',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1033.jpg',13,NULL),(735,1,10,'EB2239',1,'ERNIE BALL EB2239','CUERDA ELECTRICA REINFORCED PLANA 014','CUERDA ELECTRICA REINFORCED PLANA 014',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb1034.jpg',14,NULL),(736,1,10,'EB2240',1,'ERNIE BALL EB2240','CUERDA ELECTRICA REINFORCED PLANA 016','CUERDA ELECTRICA REINFORCED PLANA 016',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1036.jpg',16,NULL),(737,1,10,'EB2241',1,'ERNIE BALL EB2241','CUERDA ELECTRICA REINFORCED PLANA 017','CUERDA ELECTRICA REINFORCED PLANA 017',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb1038.jpg',17,NULL),(738,1,10,'EB2242',1,'ERNIE BALL EB2242','CUERDA ELECTRICA REINFORCED PLANA 018','CUERDA ELECTRICA REINFORCED PLANA 018',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1038.jpg',18,NULL),(739,1,10,'EB2245',1,'ERNIE BALL EB2245','CUERDA ELECTRICA S.STEEL ENTORCHADA 020','CUERDA ELECTRICA S.STEEL ENTORCHADA 020',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1920.jpg',20,NULL),(740,1,10,'EB2246',1,'ERNIE BALL EB2246','CUERDA ELECTRICA S.STEEL ENTORCHADA 026','CUERDA ELECTRICA S.STEEL ENTORCHADA 026',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1926.jpg',26,NULL),(741,1,10,'EB2247',1,'ERNIE BALL EB2247','CUERDA ELECTRICA S.STEEL ENTORCHADA 030','CUERDA ELECTRICA S.STEEL ENTORCHADA 030',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1930.jpg',30,NULL),(742,1,10,'EB2248',1,'ERNIE BALL EB2248','CUERDA ELECTRICA S.STEEL ENTORCHADA 036','CUERDA ELECTRICA S.STEEL ENTORCHADA 036',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1936.jpg',36,NULL),(743,1,10,'EB2249',1,'ERNIE BALL EB2249','CUERDA ELECTRICA S.STEEL ENTORCHADA 038','CUERDA ELECTRICA S.STEEL ENTORCHADA 038',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1938.jpg',38,NULL),(744,1,10,'EB2250',1,'ERNIE BALL EB2250','CUERDA ELECTRICA SLINKY ENTORCHADA 018','CUERDA ELECTRICA SLINKY ENTORCHADA 018',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1118.jpg',18,NULL),(745,1,10,'EB2251',1,'ERNIE BALL EB2251','CUERDA ELECTRICA SLINKY ENTORCHADA 020','CUERDA ELECTRICA SLINKY ENTORCHADA 020',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1120.jpg',20,NULL),(746,1,10,'EB2252',1,'ERNIE BALL EB2252','CUERDA ELECTRICA SLINKY ENTORCHADA 022','CUERDA ELECTRICA SLINKY ENTORCHADA 022',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1122.jpg',22,NULL),(747,1,10,'EB2253',1,'ERNIE BALL EB2253','CUERDA ELECTRICA SLINKY ENTORCHADA 024','CUERDA ELECTRICA SLINKY ENTORCHADA 024',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1124.jpg',24,NULL),(748,1,10,'EB2255',1,'ERNIE BALL EB2255','CUERDA ELECTRICA SLINKY ENTORCHADA 026','CUERDA ELECTRICA SLINKY ENTORCHADA 026',1,NULL,2,2,0,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1126.jpg',26,NULL),(749,1,10,'EB1008',1,'ERNIE BALL EB1008','CUERDA ELECTRICA SLINKY ENTORCHADA 028','CUERDA ELECTRICA SLINKY ENTORCHADA 028',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1128.jpg',28,NULL),(750,1,10,'EB1009',1,'ERNIE BALL EB1009','CUERDA ELECTRICA SLINKY ENTORCHADA 030','CUERDA ELECTRICA SLINKY ENTORCHADA 030',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1130.jpg',30,NULL),(751,1,10,'EB1010',1,'ERNIE BALL EB1010','CUERDA ELECTRICA SLINKY ENTORCHADA 032','CUERDA ELECTRICA SLINKY ENTORCHADA 032',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1132.jpg',32,NULL),(752,1,10,'EB1011',1,'ERNIE BALL EB1011','CUERDA ELECTRICA SLINKY ENTORCHADA 034','CUERDA ELECTRICA SLINKY ENTORCHADA 034',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1134.jpg',34,NULL),(753,1,10,'EB1012',1,'ERNIE BALL EB1012','CUERDA ELECTRICA SLINKY ENTORCHADA 036','CUERDA ELECTRICA SLINKY ENTORCHADA 036',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1136.jpg',36,NULL),(754,1,10,'EB1013',1,'ERNIE BALL EB1013','CUERDA ELECTRICA SLINKY ENTORCHADA 040','CUERDA ELECTRICA SLINKY ENTORCHADA 040',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1140.jpg',40,NULL),(755,1,10,'EB1014',1,'ERNIE BALL EB1014','CUERDA ELECTRICA SLINKY ENTORCHADA 042','CUERDA ELECTRICA SLINKY ENTORCHADA 042',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1142.jpg',42,NULL),(756,1,10,'EB1015',1,'ERNIE BALL EB1015','CUERDA ELECTRICA SLINKY ENTORCHADA 044','CUERDA ELECTRICA SLINKY ENTORCHADA 044',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1144.jpg',44,NULL),(757,1,10,'EB1016',1,'ERNIE BALL EB1016','CUERDA ELECTRICA SLINKY ENTORCHADA 046','CUERDA ELECTRICA SLINKY ENTORCHADA 046',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1146.jpg',46,NULL),(758,1,10,'EB1017',1,'ERNIE BALL EB1017','CUERDA ELECTRICA SLINKY ENTORCHADA 048','CUERDA ELECTRICA SLINKY ENTORCHADA 048',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1148.jpg',48,NULL),(759,1,10,'EB1018',1,'ERNIE BALL EB1018','CUERDA ELECTRICA SLINKY ENTORCHADA 050','CUERDA ELECTRICA SLINKY ENTORCHADA 050',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1150.jpg',50,NULL),(760,1,10,'EB1020',1,'ERNIE BALL EB1020','CUERDA ELECTRICA SLINKY ENTORCHADA 052','CUERDA ELECTRICA SLINKY ENTORCHADA 052',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1152.jpg',52,NULL),(761,1,10,'EB1022',1,'ERNIE BALL EB1022','CUERDA ELECTRICA SLINKY ENTORCHADA 054','CUERDA ELECTRICA SLINKY ENTORCHADA 054',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1154.jpg',54,NULL),(762,1,10,'EB1024',1,'ERNIE BALL EB1024','CUERDA ELECTRICA SLINKY ENTORCHADA 056','CUERDA ELECTRICA SLINKY ENTORCHADA 056',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1156.jpg',56,NULL),(763,1,10,'EB1028',1,'ERNIE BALL EB1028','CUERDA ELECTRICA SLINKY ENTORCHADA 058','CUERDA ELECTRICA SLINKY ENTORCHADA 058',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1158.jpg',58,NULL),(764,1,10,'EB1029',1,'ERNIE BALL EB1029','CUERDA ELECTRICA SLINKY ENTORCHADA 060','CUERDA ELECTRICA SLINKY ENTORCHADA 060',1,NULL,3,3,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1160.jpg',60,NULL),(765,1,10,'EB1030',1,'ERNIE BALL EB1030','CUERDA ELECTRICA SLINKY ENTORCHADA 062','CUERDA ELECTRICA SLINKY ENTORCHADA 062',1,NULL,3,3,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1162.jpg',62,NULL),(766,1,10,'EB1031',1,'ERNIE BALL EB1031','CUERDA ELECTRICA SLINKY ENTORCHADA 064','CUERDA ELECTRICA SLINKY ENTORCHADA 064',1,NULL,3,3,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1164.jpg',64,NULL),(767,1,10,'EB1032',1,'ERNIE BALL EB1032','CUERDA ELECTRICA SLINKY ENTORCHADA 066','CUERDA ELECTRICA SLINKY ENTORCHADA 066',1,NULL,3,3,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1166.jpg',66,NULL),(768,1,10,'EB1033',1,'ERNIE BALL EB1033','CUERDA ELECTRICA SLINKY ENTORCHADA 068','CUERDA ELECTRICA SLINKY ENTORCHADA 068',1,NULL,4,4,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1168.jpg',68,NULL),(769,1,10,'EB1034',1,'ERNIE BALL EB1034','CUERDA ELECTRICA SLINKY ENTORCHADA 070','CUERDA ELECTRICA SLINKY ENTORCHADA 070',1,NULL,4,4,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1170.jpg',70,NULL),(770,1,10,'EB1036',1,'ERNIE BALL EB1036','CUERDA ELECTRICA SLINKY ENTORCHADA 072','CUERDA ELECTRICA SLINKY ENTORCHADA 072',1,NULL,4,4,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1172.jpg',72,NULL),(771,1,10,'EB1037',1,'ERNIE BALL EB1037','CUERDA ELECTRICA SLINKY ENTORCHADA 074','CUERDA ELECTRICA SLINKY ENTORCHADA 074',1,NULL,4,4,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1174.jpg',74,NULL),(772,1,10,'EB1038',1,'ERNIE BALL EB1038','CUERDA ELECTRICA SLINKY ENTORCHADA 080','CUERDA ELECTRICA SLINKY ENTORCHADA 080',1,NULL,4,4,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb1180.jpg',80,NULL),(773,1,10,'EB11098',1,'ERNIE BALL EB11098','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 020','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 020',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1220.jpg',20,NULL),(774,1,10,'EB1118',1,'ERNIE BALL EB1118','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 024','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 024',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1224.jpg',24,NULL),(775,1,10,'EB1120',1,'ERNIE BALL EB1120','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 026','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 026',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1226.jpg',26,NULL),(776,1,10,'EB1122',1,'ERNIE BALL EB1122','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 030','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 030',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1230.jpg',30,NULL),(777,1,10,'EB1124',1,'ERNIE BALL EB1124','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 036','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 036',1,NULL,2,2,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1236.jpg',36,NULL),(778,1,10,'EB1126',1,'ERNIE BALL EB1126','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 040','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 040',1,NULL,3,3,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1240.jpg',40,NULL),(779,1,10,'EB1128',1,'ERNIE BALL EB1128','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 046','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 046',1,NULL,3,3,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1246.jpg',46,NULL),(780,1,10,'EB1130',1,'ERNIE BALL EB1130','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 050','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 050',1,NULL,3,3,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1250.jpg',50,NULL),(781,1,10,'EB1132',1,'ERNIE BALL EB1132','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 052','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 052',1,NULL,3,3,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1252.jpg',52,NULL),(782,1,10,'EB1134',1,'ERNIE BALL EB1134','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 056','CUERDA ELECTRICA SLINKY P.NICKEL ENTORCHADA 056',1,NULL,3,3,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1256.jpg',56,NULL),(783,1,10,'EB1136',1,'ERNIE BALL EB1136','CUERDA ELECTRICA SLINKY PLANA 008','CUERDA ELECTRICA SLINKY PLANA 008',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1008.jpg',8,NULL),(784,1,10,'EB1140',1,'ERNIE BALL EB1140','CUERDA ELECTRICA SLINKY PLANA 009','CUERDA ELECTRICA SLINKY PLANA 009',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1009.jpg',9,NULL),(785,1,10,'EB1142',1,'ERNIE BALL EB1142','CUERDA ELECTRICA SLINKY PLANA 010','CUERDA ELECTRICA SLINKY PLANA 010',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1010.jpg',10,NULL),(786,1,10,'EB1144',1,'ERNIE BALL EB1144','CUERDA ELECTRICA SLINKY PLANA 011','CUERDA ELECTRICA SLINKY PLANA 011',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1011.jpg',11,NULL),(787,1,10,'EB1146',1,'ERNIE BALL EB1146','CUERDA ELECTRICA SLINKY PLANA 012','CUERDA ELECTRICA SLINKY PLANA 012',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1012.jpg',12,NULL),(788,1,10,'EB1148',1,'ERNIE BALL EB1148','CUERDA ELECTRICA SLINKY PLANA 013','CUERDA ELECTRICA SLINKY PLANA 013',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1013.jpg',13,NULL),(789,1,10,'EB1150',1,'ERNIE BALL EB1150','CUERDA ELECTRICA SLINKY PLANA 014','CUERDA ELECTRICA SLINKY PLANA 014',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1014.jpg',14,NULL),(790,1,10,'EB1152',1,'ERNIE BALL EB1152','CUERDA ELECTRICA SLINKY PLANA 015','CUERDA ELECTRICA SLINKY PLANA 015',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1015.jpg',15,NULL),(791,1,10,'EB1154',1,'ERNIE BALL EB1154','CUERDA ELECTRICA SLINKY PLANA 016','CUERDA ELECTRICA SLINKY PLANA 016',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1016.jpg',16,NULL),(792,1,10,'EB1156',1,'ERNIE BALL EB1156','CUERDA ELECTRICA SLINKY PLANA 017','CUERDA ELECTRICA SLINKY PLANA 017',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1017.jpg',17,NULL),(793,1,10,'EB1158',1,'ERNIE BALL EB1158','CUERDA ELECTRICA SLINKY PLANA 018','CUERDA ELECTRICA SLINKY PLANA 018',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1018.jpg',18,NULL),(794,1,10,'EB1160',1,'ERNIE BALL EB1160','CUERDA ELECTRICA SLINKY PLANA 020','CUERDA ELECTRICA SLINKY PLANA 020',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1020.jpg',20,NULL),(795,1,10,'EB1162',1,'ERNIE BALL EB1162','CUERDA ELECTRICA SLINKY PLANA 022','CUERDA ELECTRICA SLINKY PLANA 022',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1022.jpg',22,NULL),(796,1,10,'EB1164',1,'ERNIE BALL EB1164','CUERDA ELECTRICA SLINKY PLANA 024','CUERDA ELECTRICA SLINKY PLANA 024',1,NULL,1,1,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1024.jpg',24,NULL),(797,1,1,'EB1236',1,'ERNIE BALL EB1236','ELECTRICA SLINKY STAINLESS STEEL 10St. 13-38','ELECTRICA SLINKY STAINLESS STEEL 10St. 13-38',1,NULL,12,12,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2504.jpg',NULL,NULL),(798,1,25,'EB1765',1,'ERNIE BALL EB1765','JUEGO ELECTRICA  SLINKY  BLUE 8-38','JUEGO ELECTRICA  SLINKY  BLUE 8-38',1,NULL,7,7,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02225-front-111417-2000x2000px.jpg',NULL,NULL),(799,1,25,'EB1798',1,'ERNIE BALL EB1798','JUEGO ELECTRICA  SLINKY  ORANGE HYBRID 9-46','JUEGO ELECTRICA  SLINKY  ORANGE HYBRID 9-46',1,NULL,6,6,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02222-front-111417-2000x2000px.jpg',NULL,NULL),(800,1,25,'EB1820',1,'ERNIE BALL EB1820','JUEGO ELECTRICA  SLINKY  ORANGE HYBRID 9-46 TRIPACK (3)','JUEGO ELECTRICA  SLINKY  ORANGE HYBRID 9-46 TRIPACK (3)',1,NULL,19,19,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/tripack-0946.jpg',NULL,NULL),(801,1,25,'EB1822',1,'ERNIE BALL EB1822','JUEGO ELECTRICA  SLINKY  PINK 9-42','JUEGO ELECTRICA  SLINKY  PINK 9-42',1,NULL,6,6,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02223-front-111417-2000x2000px.jpg',NULL,NULL),(802,1,25,'EB1824',1,'ERNIE BALL EB1824','JUEGO ELECTRICA  SLINKY  PINK 9-42 TRIPACK (3)','JUEGO ELECTRICA  SLINKY  PINK 9-42 TRIPACK (3)',1,NULL,19,19,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/tripack-0942.jpg',NULL,NULL),(803,1,25,'EB1826',1,'ERNIE BALL EB1826','JUEGO ELECTRICA  SLINKY  PURPLE 11-48','JUEGO ELECTRICA  SLINKY  PURPLE 11-48',1,NULL,6,6,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02220-front-111417-2000x2000px.jpg',NULL,NULL),(804,1,25,'EB1828',1,'ERNIE BALL EB1828','JUEGO ELECTRICA  SLINKY  PURPLE 11-48 TRIPACK (3)','JUEGO ELECTRICA  SLINKY  PURPLE 11-48 TRIPACK (3)',1,NULL,19,19,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/power-slinky-nickel1148.jpg',NULL,NULL),(805,1,25,'EB1830',1,'ERNIE BALL EB1830','JUEGO ELECTRICA  SLINKY CUSTOM GAUGE 8St. 10-74','JUEGO ELECTRICA  SLINKY CUSTOM GAUGE 8St. 10-74',1,NULL,13,13,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2625.jpg',NULL,NULL),(806,1,25,'EB1832',1,'ERNIE BALL EB1832','JUEGO ELECTRICA ERNIE BALL SLINKY LIME 10-46 TRIPACK (3)','JUEGO ELECTRICA ERNIE BALL SLINKY LIME 10-46 TRIPACK (3)',1,NULL,19,19,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/regular-slinky-nickel-010046.jpg',NULL,NULL),(807,1,25,'EB1834',1,'ERNIE BALL EB1834','JUEGO ELECTRICA PARADIGM BEEFY SLINKY 11-54','JUEGO ELECTRICA PARADIGM BEEFY SLINKY 11-54',1,NULL,19,19,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/p02027-angled.png',NULL,NULL),(808,1,25,'EB1836',1,'ERNIE BALL EB1836','JUEGO ELECTRICA PARADIGM HYBRID SLINKY 9-46','JUEGO ELECTRICA PARADIGM HYBRID SLINKY 9-46',1,NULL,19,19,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/p02022-angled.png',NULL,NULL),(809,1,25,'EB1838',1,'ERNIE BALL EB1838','JUEGO ELECTRICA PARADIGM NOT EVEN SLINKY 12-56','JUEGO ELECTRICA PARADIGM NOT EVEN SLINKY 12-56',1,NULL,19,19,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/p02026-angled.png',NULL,NULL),(810,1,25,'EB1840',1,'ERNIE BALL EB1840','JUEGO ELECTRICA PARADIGM POWER SLINKY 11-48','JUEGO ELECTRICA PARADIGM POWER SLINKY 11-48',1,NULL,20,20,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/p02020-angled.png',NULL,NULL),(811,1,25,'EB1842',1,'ERNIE BALL EB1842','JUEGO ELECTRICA PARADIGM REGULAR SLINKY 10-46','JUEGO ELECTRICA PARADIGM REGULAR SLINKY 10-46',1,NULL,19,19,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/p02021-angled.png',NULL,NULL),(812,1,25,'EB1846',1,'ERNIE BALL EB1846','JUEGO ELECTRICA PARADIGM REGULAR SLINKY 7ST. 10-56','JUEGO ELECTRICA PARADIGM REGULAR SLINKY 7ST. 10-56',1,NULL,21,21,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/p02028-angled.png',NULL,NULL),(813,1,25,'EB1848',1,'ERNIE BALL EB1848','JUEGO ELECTRICA PARADIGM SKINNY TOP HEAVY BOTTOM SLINKY 10-52','JUEGO ELECTRICA PARADIGM SKINNY TOP HEAVY BOTTOM SLINKY 10-52',1,NULL,20,20,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/p02015-angled.png',NULL,NULL),(814,1,25,'EB1852',1,'ERNIE BALL EB1852','JUEGO ELECTRICA PARADIGM STHB SLINKY 7ST 10-62','JUEGO ELECTRICA PARADIGM STHB SLINKY 7ST 10-62\"',1,NULL,21,21,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/p02030-angled.png',NULL,NULL),(815,1,25,'EB1854',1,'ERNIE BALL EB1854','JUEGO ELECTRICA PARADIGM SUPER SLINKY 9-42','JUEGO ELECTRICA PARADIGM SUPER SLINKY 9-42',1,NULL,20,20,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/p02023-angled.png',NULL,NULL),(816,1,25,'EB1856',1,'ERNIE BALL EB1856','JUEGO ELECTRICA S. COATED TITANIUM 10-52','JUEGO ELECTRICA S. COATED TITANIUM 10-52',1,NULL,15,15,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3115.jpg',NULL,NULL),(817,1,25,'EB2504',1,'ERNIE BALL EB2504','JUEGO ELECTRICA S. COATED TITANIUM BEEFY 11-54','JUEGO ELECTRICA S. COATED TITANIUM BEEFY 11-54',1,NULL,15,15,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3127.jpg',NULL,NULL),(818,1,25,'EB2544',1,'ERNIE BALL EB2544','JUEGO ELECTRICA S. COATED TITANIUM EXTR 8-38','JUEGO ELECTRICA S. COATED TITANIUM EXTR 8-38',1,NULL,13,13,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3125.jpg',NULL,NULL),(819,1,25,'EB2546',1,'ERNIE BALL EB2546','JUEGO ELECTRICA S. COATED TITANIUM HYBRID 9-46','JUEGO ELECTRICA S. COATED TITANIUM HYBRID 9-46',1,NULL,14,14,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3122.jpg',NULL,NULL),(820,1,25,'EB2548',1,'ERNIE BALL EB2548','JUEGO ELECTRICA S. COATED TITANIUM NOT EVEN 12-5','JUEGO ELECTRICA S. COATED TITANIUM NOT EVEN 12-5',1,NULL,15,15,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3126.jpg',NULL,NULL),(821,1,25,'EB2550',1,'ERNIE BALL EB2550','JUEGO ELECTRICA S. COATED TITANIUM POWER 11-48','JUEGO ELECTRICA S. COATED TITANIUM POWER 11-48',1,NULL,13,13,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3120.jpg',NULL,NULL),(822,1,25,'EB2554',1,'ERNIE BALL EB2554','JUEGO ELECTRICA S. COATED TITANIUM REGULAR 10-46','JUEGO ELECTRICA S. COATED TITANIUM REGULAR 10-46',1,NULL,14,14,21,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3121.jpg',NULL,NULL),(823,1,25,'EB2556',1,'ERNIE BALL EB2556','JUEGO ELECTRICA S. COATED TITANIUM SUPER 9-42','JUEGO ELECTRICA S. COATED TITANIUM SUPER 9-42',1,NULL,14,14,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3123.jpg',NULL,NULL),(824,1,25,'EB2558',1,'ERNIE BALL EB2558','JUEGO ELECTRICA S. COBALT 7St.POWER 11-58','JUEGO ELECTRICA S. COBALT 7St.POWER 11-58',1,NULL,17,17,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2729.jpg',NULL,NULL),(825,1,25,'EB2560',1,'ERNIE BALL EB2560','JUEGO ELECTRICA S. COBALT 7St.REGULAR 10-56','JUEGO ELECTRICA S. COBALT 7St.REGULAR 10-56',1,NULL,17,17,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2728.jpg',NULL,NULL),(826,1,25,'EB2564',1,'ERNIE BALL EB2564','JUEGO ELECTRICA S. COBALT 7St.SKINNY TOP/HV10-62','JUEGO ELECTRICA S. COBALT 7St.SKINNY TOP/HV10-62',1,NULL,19,19,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2730.jpg',NULL,NULL),(827,1,25,'EB2566',1,'ERNIE BALL EB2566','JUEGO ELECTRICA S. COBALT BEEFY 11-54','JUEGO ELECTRICA S. COBALT BEEFY 11-54',1,NULL,15,15,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2727.jpg',NULL,NULL),(828,1,25,'EB2568',1,'ERNIE BALL EB2568','JUEGO ELECTRICA S. COBALT EXTRA 8-38','JUEGO ELECTRICA S. COBALT EXTRA 8-38',1,NULL,14,14,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2725.jpg',NULL,NULL),(829,1,25,'EB2570',1,'ERNIE BALL EB2570','JUEGO ELECTRICA S. COBALT HYBRID 9-46','JUEGO ELECTRICA S. COBALT HYBRID 9-46',1,NULL,14,14,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2722.jpg',NULL,NULL),(830,1,25,'EB2620',1,'ERNIE BALL EB2620','JUEGO ELECTRICA S. COBALT NOT EVEN 12-56','JUEGO ELECTRICA S. COBALT NOT EVEN 12-56',1,NULL,15,15,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2726.jpg',NULL,NULL),(831,1,25,'EB2621',1,'ERNIE BALL EB2621','JUEGO ELECTRICA S. COBALT POWER 11-48','JUEGO ELECTRICA S. COBALT POWER 11-48',1,NULL,14,14,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2720.jpg',NULL,NULL),(832,1,25,'EB2623',1,'ERNIE BALL EB2623','JUEGO ELECTRICA S. COBALT REGULAR 10-46','JUEGO ELECTRICA S. COBALT REGULAR 10-46',1,NULL,13,13,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2721.jpg',NULL,NULL),(833,1,25,'EB2624',1,'ERNIE BALL EB2624','JUEGO ELECTRICA S. COBALT REGULAR 10-46 TRIPACK (3)','JUEGO ELECTRICA S. COBALT REGULAR 10-46 TRIPACK (3)',1,NULL,37,37,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/tri-pack-cobalt.jpg',NULL,NULL),(834,1,25,'EB2625',1,'ERNIE BALL EB2625','JUEGO ELECTRICA S. COBALT SUPER 9-42','JUEGO ELECTRICA S. COBALT SUPER 9-42',1,NULL,12,12,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2723.jpg',NULL,NULL),(835,1,25,'EB2626',1,'ERNIE BALL EB2626','JUEGO ELECTRICA S.COBALT HEAVY BOTTOM 10-52','JUEGO ELECTRICA S.COBALT HEAVY BOTTOM 10-52',1,NULL,13,13,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2715.jpg',NULL,NULL),(836,1,25,'EB2627',1,'ERNIE BALL EB2627','JUEGO ELECTRICA SLINKY ENTORCHADA LIME 10-46','JUEGO ELECTRICA SLINKY ENTORCHADA LIME 10-46',1,NULL,5,5,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02221-front-111417-2000x2000px.jpg',NULL,NULL),(837,1,25,'EB2628',1,'ERNIE BALL EB2628','JUEGO ELECTRICA SLINKY M-STEEL 10-46','JUEGO ELECTRICA SLINKY M-STEEL 10-46',1,NULL,17,17,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2921.jpg',NULL,NULL),(838,1,25,'EB2715',1,'ERNIE BALL EB2715','JUEGO ELECTRICA SLINKY M-STEEL 10-52','JUEGO ELECTRICA SLINKY M-STEEL 10-52',1,NULL,18,18,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2915-2.jpg',NULL,NULL),(839,1,25,'EB2720',1,'ERNIE BALL EB2720','JUEGO ELECTRICA SLINKY M-STEEL 11-48','JUEGO ELECTRICA SLINKY M-STEEL 11-48',1,NULL,17,17,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2920.jpg',NULL,NULL),(840,1,25,'EB2721',1,'ERNIE BALL EB2721','JUEGO ELECTRICA SLINKY M-STEEL 9-42','JUEGO ELECTRICA SLINKY M-STEEL 9-42',1,NULL,17,17,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2923.jpg',NULL,NULL),(841,1,25,'EB2722',1,'ERNIE BALL EB2722','JUEGO ELECTRICA SLINKY M-STEEL 9-46','JUEGO ELECTRICA SLINKY M-STEEL 9-46',1,NULL,17,17,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2922.jpg',NULL,NULL),(842,1,25,'EB4034',1,'ERNIE BALL EB4034','SET ELECTRICA  POWER SLINKY S. STEEL 11-48','SET ELECTRICA  POWER SLINKY S. STEEL 11-48',1,NULL,7,7,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2245.jpg',NULL,NULL),(843,1,25,'EB4035',1,'ERNIE BALL EB4035','SET ELECTRICA  SLINKY 8St. SUPER 9-80','SET ELECTRICA  SLINKY 8St. SUPER 9-80',1,NULL,14,14,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2624.jpg',NULL,NULL),(844,1,25,'EB4036',1,'ERNIE BALL EB4036','SET ELECTRICA  SLINKY BEEFY 11-54','SET ELECTRICA  SLINKY BEEFY 11-54',1,NULL,7,7,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02627-front-111417-2000x2000px.jpg',NULL,NULL),(845,1,25,'EB4040',1,'ERNIE BALL EB4040','SET ELECTRICA SLINKY 12 St. 8-40','SET ELECTRICA SLINKY 12 St. 8-40',1,NULL,11,11,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2230.jpg',NULL,NULL),(846,1,25,'EB4044',1,'ERNIE BALL EB4044','SET ELECTRICA SLINKY 12 St. LIGHT 9-46','SET ELECTRICA SLINKY 12 St. LIGHT 9-46',1,NULL,12,12,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2233.jpg',NULL,NULL),(847,1,25,'EB4045',1,'ERNIE BALL EB4045','SET ELECTRICA SLINKY 12 St. MEDIU 11-52','SET ELECTRICA SLINKY 12 St. MEDIU 11-52',1,NULL,13,13,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2236.jpg',NULL,NULL),(848,1,25,'EB4046',1,'ERNIE BALL EB4046','SET ELECTRICA SLINKY 7St. POWER 11-58','SET ELECTRICA SLINKY 7St. POWER 11-58',1,NULL,9,9,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02620-front-112817-2000x2000px.jpg',NULL,NULL),(849,1,25,'EB4047',1,'ERNIE BALL EB4047','SET ELECTRICA SLINKY 7St. REGULAR 10-56','SET ELECTRICA SLINKY 7St. REGULAR 10-56',1,NULL,9,9,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2621.jpg',NULL,NULL),(850,1,25,'EB4048',1,'ERNIE BALL EB4048','SET ELECTRICA SLINKY 7St. SUPER 9-52','SET ELECTRICA SLINKY 7St. SUPER 9-52',1,NULL,9,9,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2623.jpg',NULL,NULL),(851,1,25,'EB4049',1,'ERNIE BALL EB4049','SET ELECTRICA SLINKY HEAVY BOTTOM 10-52','SET ELECTRICA SLINKY HEAVY BOTTOM 10-52',1,NULL,7,7,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02215-front-111417-2000x2000px.jpg',NULL,NULL),(852,1,25,'EB4050',1,'ERNIE BALL EB4050','SET ELECTRICA SLINKY LIGHT 11-52','SET ELECTRICA SLINKY LIGHT 11-52',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2208.jpg',NULL,NULL),(853,1,25,'EB4090',1,'ERNIE BALL EB4090','SET ELECTRICA SLINKY MED.LIGHT 12-54','SET ELECTRICA SLINKY MED.LIGHT 12-54',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2206.jpg',NULL,NULL),(854,1,25,'EB4091',1,'ERNIE BALL EB4091','SET ELECTRICA SLINKY MEDIUM 13-56','SET ELECTRICA SLINKY MEDIUM 13-56',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2204.jpg',NULL,NULL),(855,1,25,'EB4092',1,'ERNIE BALL EB4092','SET ELECTRICA SLINKY NOT EVEN 12-56','SET ELECTRICA SLINKY NOT EVEN 12-56',1,NULL,6,6,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02626-front-111417-2000x2000px.jpg',NULL,NULL),(856,1,25,'EB4093',1,'ERNIE BALL EB4093','SET ELECTRICA SLINKY P.NICKEL EXTRA 8-38','SET ELECTRICA SLINKY P.NICKEL EXTRA 8-38',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2255.jpg',NULL,NULL),(857,1,25,'EB4094',1,'ERNIE BALL EB4094','SET ELECTRICA SLINKY P.NICKEL HYBRID 9-46','SET ELECTRICA SLINKY P.NICKEL HYBRID 9-46',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2252.jpg',NULL,NULL),(858,1,25,'EB4095',1,'ERNIE BALL EB4095','SET ELECTRICA SLINKY P.NICKEL POWER 11-48','SET ELECTRICA SLINKY P.NICKEL POWER 11-48',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2250.jpg',NULL,NULL),(859,1,25,'EB4096',1,'ERNIE BALL EB4096','SET ELECTRICA SLINKY P.NICKEL REGULAR 10-46','SET ELECTRICA SLINKY P.NICKEL REGULAR 10-46',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2251.jpg',NULL,NULL),(860,1,25,'EB4097',1,'ERNIE BALL EB4097','SET ELECTRICA SLINKY P.NICKEL SUPER 9-42','SET ELECTRICA SLINKY P.NICKEL SUPER 9-42',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2253.jpg',NULL,NULL),(861,1,25,'EB4098',1,'ERNIE BALL EB4098','SET ELECTRICA SLINKY PLANAS  RPS 10-46','SET ELECTRICA SLINKY PLANAS  RPS 10-46',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2240.jpg',NULL,NULL),(862,1,25,'EB4100',1,'ERNIE BALL EB4100','SET ELECTRICA SLINKY PLANAS  RPS 11-48','SET ELECTRICA SLINKY PLANAS  RPS 11-48',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2242.jpg',NULL,NULL),(863,1,25,'EB4105',1,'ERNIE BALL EB4105','SET ELECTRICA SLINKY PLANAS  RPS 8-38','SET ELECTRICA SLINKY PLANAS  RPS 8-38',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2238.jpg',NULL,NULL),(864,1,25,'EB4107',1,'ERNIE BALL EB4107','SET ELECTRICA SLINKY PLANAS  RPS 9-42','SET ELECTRICA SLINKY PLANAS  RPS 9-42',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2239.jpg',NULL,NULL),(865,1,25,'EB4108',1,'ERNIE BALL EB4108','SET ELECTRICA SLINKY PLANAS  RPS 9-46','SET ELECTRICA SLINKY PLANAS  RPS 9-46',1,NULL,8,8,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2241.jpg',NULL,NULL),(866,1,25,'EB4112',1,'ERNIE BALL EB4112','SET ELECTRICA SLINKY S. STEEL HYBRID 9-46','SET ELECTRICA SLINKY S. STEEL HYBRID 9-46',1,NULL,7,7,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2247.jpg',NULL,NULL),(867,1,25,'EB4113',1,'ERNIE BALL EB4113','SET ELECTRICA SLINKY S. STEEL REGULAR 10-46','SET ELECTRICA SLINKY S. STEEL REGULAR 10-46',1,NULL,7,7,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2246.jpg',NULL,NULL),(868,1,25,'EB4114',1,'ERNIE BALL EB4114','SET ELECTRICA SLINKY S. STEEL SUPER 9-42','SET ELECTRICA SLINKY S. STEEL SUPER 9-42',1,NULL,7,7,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2248.jpg',NULL,NULL),(869,1,25,'EB4119',1,'ERNIE BALL EB4119','SET ELECTRICA SLINKY STAINLESS EXTRA SLINKY 8-38','SET ELECTRICA SLINKY STAINLESS EXTRA SLINKY 8-38',1,NULL,7,7,10,'2018-05-15 11:27:23.517000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2249.jpg',NULL,NULL),(2918,4,26,'CEL11000',1,'ELIXIR CEL11000','JUEGO ACUSTICA POLYWEB XL 10-47','JUEGO ACUSTICA POLYWEB XL 10-47',1,NULL,15,15,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11000.png',NULL,NULL),(2919,4,26,'CEL11002',1,'ELIXIR CEL11002','JUEGO ACUSTICA NANOWEB BRONZE 80/20 XL 10-47','JUEGO ACUSTICA NANOWEB BRONZE 80/20 XL 10-47',1,NULL,18,18,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11002.png',NULL,NULL),(2920,4,26,'CEL11025',1,'ELIXIR CEL11025','JUEGO ACUSTICA POLYWEB CL 11-52','JUEGO ACUSTICA POLYWEB CL 11-52',1,NULL,15,15,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11025.png',NULL,NULL),(2921,4,26,'CEL11027',1,'ELIXIR CEL11027','JUEGO ACUSTICA NANOWEB BRONZE 80/20 CL 11-52','JUEGO ACUSTICA NANOWEB BRONZE 80/20 CL 11-52',1,NULL,15,15,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11027.png',NULL,NULL),(2922,4,26,'CEL11028',1,'ELIXIR CEL11028','PACK100 - JUEGO ACUSTICA NANOWEB 80/20 BRONZE CL 11-52','PACK100 - JUEGO ACUSTICA NANOWEB 80/20 BRONZE CL 11-52',1,NULL,1260,1260,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11028.png',NULL,NULL),(2923,4,26,'CEL11050',1,'ELIXIR CEL11050','JUEGO ACUSTICA POLYWEB L 12-53','JUEGO ACUSTICA POLYWEB L 12-53',1,NULL,18,18,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11050.png',NULL,NULL),(2924,4,26,'CEL11052',1,'ELIXIR CEL11052','JUEGO ACUSTICA NANOWEB 80/20 BRONZE L 12-53','JUEGO ACUSTICA NANOWEB 80/20 BRONZE L 12-53',1,NULL,14,14,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11052.png',NULL,NULL),(2925,4,26,'CEL11054',1,'ELIXIR CEL11054','PACK 50 - JUEGO ACUSTICA NANOWEB 80/20 BRONZE L 12-53','PACK 50 - JUEGO ACUSTICA NANOWEB 80/20 BRONZE L 12-53',1,NULL,808,808,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11054.png',NULL,NULL),(2926,4,26,'CEL11075',1,'ELIXIR CEL11075','JUEGO ACUSTICA POLYWEB ML 12-56','JUEGO ACUSTICA POLYWEB ML 12-56',1,NULL,18,18,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11075.png',NULL,NULL),(2927,4,26,'CEL11077',1,'ELIXIR CEL11077','JUEGO ACUSTICA NANOWEB 80/20 BRONZE ML 12-56','JUEGO ACUSTICA NANOWEB 80/20 BRONZE ML 12-56',1,NULL,18,18,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11077.png',NULL,NULL),(2928,4,26,'CEL11100',1,'ELIXIR CEL11100','JUEGO ACUSTICA POLYWEB M 13-56','JUEGO ACUSTICA POLYWEB M 13-56',1,NULL,15,15,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11100.png',NULL,NULL),(2929,4,26,'CEL11102',1,'ELIXIR CEL11102','JUEGO ACUSTICA NANOWEB 80/20 BRONZE M 13-56','JUEGO ACUSTICA NANOWEB 80/20 BRONZE M 13-56',1,NULL,17,17,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11102.png',NULL,NULL),(2930,4,26,'CEL11125',1,'ELIXIR CEL11125','JUEGO RESONATOR NANOWEB 80/20 BRONZE 16-56','JUEGO RESONATOR NANOWEB 80/20 BRONZE 16-56',1,NULL,16,16,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11125.png',NULL,NULL),(2931,4,26,'CEL11150',1,'ELIXIR CEL11150','JUEGO ACUSTICA 12St. POLYWEB L 10-47 / 10-27','JUEGO ACUSTICA 12St. POLYWEB L 10-47 / 10-27',1,NULL,27,27,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11150.png',NULL,NULL),(2932,4,26,'CEL11152',1,'ELIXIR CEL11152','JUEGO ACUSTICA 12St. NANOWEB 80/20 BRONZE 10-47 / 10-27','JUEGO ACUSTICA 12St. NANOWEB 80/20 BRONZE 10-47 / 10-27',1,NULL,23,23,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11152.png',NULL,NULL),(2933,4,26,'CEL11182',1,'ELIXIR CEL11182','JUEGO ACUSTICA NANOWEB 80/20 BRONZE HD LIGHT 13-53','JUEGO ACUSTICA NANOWEB 80/20 BRONZE HD LIGHT 13-53',1,NULL,18,18,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11182.png',NULL,NULL),(2934,4,26,'CEL11306',1,'ELIXIR CEL11306','JUEGO ACUSTICA NANOWEB 6St. BRONZE 80/20 BARITONO 16-70','JUEGO ACUSTICA NANOWEB 6St. BRONZE 80/20 BARITONO 16-70',1,NULL,18,18,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11306.png',NULL,NULL),(2935,4,26,'CEL11308',1,'ELIXIR CEL11308','JUEGO ACUSTICA NANOWEB 8St. BRONZE 80/20 BARITONO 16-70','JUEGO ACUSTICA NANOWEB 8St. BRONZE 80/20 BARITONO 16-70',1,NULL,22,22,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-11308.png',NULL,NULL),(2936,4,25,'CEL12000',1,'ELIXIR CEL12000','JUEGO ELÉCTRICA POLYWEB SUPER LIGHT 09-42','JUEGO ELÉCTRICA POLYWEB SUPER LIGHT 09-42',1,NULL,14,14,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12000.png',NULL,NULL),(2937,4,25,'CEL12002',1,'ELIXIR CEL12002','JUEGO ELÉCTRICA NANOWEB XL 09-42','JUEGO ELÉCTRICA NANOWEB XL 09-42',1,NULL,14,14,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12002.png',NULL,NULL),(2938,4,25,'CEL12027',1,'ELIXIR CEL12027','JUEGO ELÉCTRICA NANOWEB CL 09-46','JUEGO ELÉCTRICA NANOWEB CL 09-46',1,NULL,11,11,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12027.png',NULL,NULL),(2939,4,25,'CEL12050',1,'ELIXIR CEL12050','JUEGO ELÉCTRICA POLYWEB L 10-46','JUEGO ELÉCTRICA POLYWEB L 10-46',1,NULL,14,14,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12050.png',NULL,NULL),(2940,4,25,'CEL12052',1,'ELIXIR CEL12052','JUEGO ELÉCTRICA NANOWEB L 10-46','JUEGO ELÉCTRICA NANOWEB L 10-46',1,NULL,14,14,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12052.png',NULL,NULL),(2941,4,25,'CEL12054',1,'ELIXIR CEL12054','PACK 50 - JUEGO ELÉCTRICA NANOWEB L 10-46','PACK 50 - JUEGO ELÉCTRICA NANOWEB L 10-46',1,NULL,513,513,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12054.png',NULL,NULL),(2942,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:00:03.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2943,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:00:44.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2944,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:02:39.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2945,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:02:52.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2946,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:02:54.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2947,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELECTRICA NANOWEB 7St. - 10-56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:03:08.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2948,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELECTRICA NANOWEB 7St. - 10-56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:03:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2949,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELECTRICA NANOWEB 7St. - 10-56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:03:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2950,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELECTRICA NANOWEB 7St. - 10-56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:03:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2951,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELECTRICA NANOWEB 7St. - 10-56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:03:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2952,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELECTRICA NANOWEB 7St. - 10-56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:03:11.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2953,4,25,'CEL12057',1,'ELIXIR CEL12057','JUEGO ELÉCTRICA NANOWEB 7St. 10 56','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:03:23.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2954,4,25,'CEL12057',1,'ELIXIR CEL12057','','JUEGO ELÉCTRICA NANOWEB 7St. - 10-56',1,NULL,14,14,10,'2018-05-25 10:03:31.000000',NULL,'http://www.musicdistribucion.com/upload/producte/cel-12057.png',NULL,NULL),(2618,1,11,'EB9172',1,'ERNIE BALL EB9172','CUERDA ACÚSTICA EARTHWOOD BRONZE 020','CUERDA ACÚSTICA EARTHWOOD BRONZE 020',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1420.jpg',NULL,NULL),(2619,1,11,'EB9174',1,'ERNIE BALL EB9174','CUERDA ACÚSTICA EARTHWOOD BRONZE 022','CUERDA ACÚSTICA EARTHWOOD BRONZE 022',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1422.jpg',NULL,NULL),(2620,1,11,'EB9179',1,'ERNIE BALL EB9179','CUERDA ACÚSTICA EARTHWOOD BRONZE 024','CUERDA ACÚSTICA EARTHWOOD BRONZE 024',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1424.jpg',NULL,NULL),(2621,1,11,'EB9181',1,'ERNIE BALL EB9181','CUERDA ACÚSTICA EARTHWOOD BRONZE 026','CUERDA ACÚSTICA EARTHWOOD BRONZE 026',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1426.jpg',NULL,NULL),(2622,1,11,'EB9190',1,'ERNIE BALL EB9190','CUERDA ACÚSTICA EARTHWOOD BRONZE 028','CUERDA ACÚSTICA EARTHWOOD BRONZE 028',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1428.jpg',NULL,NULL),(2623,1,11,'EB9191',1,'ERNIE BALL EB9191','CUERDA ACÚSTICA EARTHWOOD BRONZE 030','CUERDA ACÚSTICA EARTHWOOD BRONZE 030',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1430.jpg',NULL,NULL),(2624,1,11,'EB9193',1,'ERNIE BALL EB9193','CUERDA ACÚSTICA EARTHWOOD BRONZE 032','CUERDA ACÚSTICA EARTHWOOD BRONZE 032',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1432.jpg',NULL,NULL),(2625,1,11,'EB9194',1,'ERNIE BALL EB9194','CUERDA ACÚSTICA EARTHWOOD BRONZE 034','CUERDA ACÚSTICA EARTHWOOD BRONZE 034',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1434.jpg',NULL,NULL),(2626,1,11,'EB9195',1,'ERNIE BALL EB9195','CUERDA ACÚSTICA EARTHWOOD BRONZE 036','CUERDA ACÚSTICA EARTHWOOD BRONZE 036',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1436.jpg',NULL,NULL),(2627,1,11,'EB9196',1,'ERNIE BALL EB9196','CUERDA ACÚSTICA EARTHWOOD BRONZE 038','CUERDA ACÚSTICA EARTHWOOD BRONZE 038',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1438.jpg',NULL,NULL),(2628,1,11,'EB9199',1,'ERNIE BALL EB9199','CUERDA ACÚSTICA EARTHWOOD BRONZE 040','CUERDA ACÚSTICA EARTHWOOD BRONZE 040',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1440.jpg',NULL,NULL),(2629,1,11,'EB9200',1,'ERNIE BALL EB9200','CUERDA ACÚSTICA EARTHWOOD BRONZE 042','CUERDA ACÚSTICA EARTHWOOD BRONZE 042',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1442.jpg',NULL,NULL),(2630,1,11,'EB9201',1,'ERNIE BALL EB9201','CUERDA ACÚSTICA EARTHWOOD BRONZE 044','CUERDA ACÚSTICA EARTHWOOD BRONZE 044',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1444.jpg',NULL,NULL),(2631,1,11,'EB9202',1,'ERNIE BALL EB9202','CUERDA ACÚSTICA EARTHWOOD BRONZE 046','CUERDA ACÚSTICA EARTHWOOD BRONZE 046',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1446.jpg',NULL,NULL),(2632,1,11,'EB9203',1,'ERNIE BALL EB9203','CUERDA ACÚSTICA EARTHWOOD BRONZE 048','CUERDA ACÚSTICA EARTHWOOD BRONZE 048',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1448.jpg',NULL,NULL),(2633,1,11,'EB9210',1,'ERNIE BALL EB9210','CUERDA ACÚSTICA EARTHWOOD BRONZE 050','CUERDA ACÚSTICA EARTHWOOD BRONZE 050',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1450.jpg',NULL,NULL),(2634,1,11,'EB9213',1,'ERNIE BALL EB9213','CUERDA ACÚSTICA EARTHWOOD BRONZE 052','CUERDA ACÚSTICA EARTHWOOD BRONZE 052',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1452.jpg',NULL,NULL),(2635,1,11,'EB9222',1,'ERNIE BALL EB9222','CUERDA ACÚSTICA EARTHWOOD BRONZE 054','CUERDA ACÚSTICA EARTHWOOD BRONZE 054',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1454.jpg',NULL,NULL),(2636,1,11,'EB2303',1,'ERNIE BALL EB2303','CUERDA ACÚSTICA EARTHWOOD BRONZE 056','CUERDA ACÚSTICA EARTHWOOD BRONZE 056',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1456.jpg',NULL,NULL),(2637,1,11,'EB2306',1,'ERNIE BALL EB2306','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 020','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 020',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1820.jpg',NULL,NULL),(2638,1,11,'EB2309',1,'ERNIE BALL EB2309','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 022','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 022',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1822.jpg',NULL,NULL),(2639,1,11,'EB2312',1,'ERNIE BALL EB2312','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 024','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 024',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1824.jpg',NULL,NULL),(2640,1,11,'EB2320',1,'ERNIE BALL EB2320','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 026','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 026',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1826.jpg',NULL,NULL),(2641,1,11,'EB2323',1,'ERNIE BALL EB2323','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 028','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 028',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1828.jpg',NULL,NULL),(2642,1,11,'EB2403',1,'ERNIE BALL EB2403','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 030','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 030',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1830.jpg',NULL,NULL),(2643,1,11,'EB2406',1,'ERNIE BALL EB2406','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 032','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 032',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1832.jpg',NULL,NULL),(2644,1,11,'EB2409',1,'ERNIE BALL EB2409','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 034','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 034',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1834.jpg',NULL,NULL),(2645,1,11,'EB5160',1,'ERNIE BALL EB5160','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 036','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 036',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1836.jpg',NULL,NULL),(2646,1,11,'EB1920',1,'ERNIE BALL EB1920','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 038','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 038',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb1838.jpg',NULL,NULL),(2647,1,11,'EB1926',1,'ERNIE BALL EB1926','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 040','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 040',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb1840.jpg',NULL,NULL),(2648,1,11,'EB1930',1,'ERNIE BALL EB1930','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 042','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 042',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1842.jpg',NULL,NULL),(2649,1,11,'EB1936',1,'ERNIE BALL EB1936','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 046','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 046',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb1846.jpg',NULL,NULL),(2650,1,11,'EB1938',1,'ERNIE BALL EB1938','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 048','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 048',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb1848.jpg',NULL,NULL),(2651,1,11,'EB1946',1,'ERNIE BALL EB1946','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 052','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 052',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1852.jpg',NULL,NULL),(2652,1,11,'EB2002',1,'ERNIE BALL EB2002','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 054','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 054',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1854.jpg',NULL,NULL),(2653,1,11,'EB2003',1,'ERNIE BALL EB2003','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 056','CUERDA ACÚSTICA SLINKY PHOSPHOR/BZ 056',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1856.jpg',NULL,NULL),(2654,1,26,'EB1246',1,'ERNIE BALL EB1246','JUEGO ACÚSTICA  ALUMINUM BRONZE EXTRA LIGHT 10-50','JUEGO ACÚSTICA  ALUMINUM BRONZE EXTRA LIGHT 10-50',1,NULL,12,12,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2570.jpg',NULL,NULL),(2655,1,26,'EB1250',1,'ERNIE BALL EB1250','JUEGO ACÚSTICA  ALUMINUM BRONZE LIGHT 11-52','JUEGO ACÚSTICA  ALUMINUM BRONZE LIGHT 11-52',1,NULL,12,12,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2568.jpg',NULL,NULL),(2656,1,26,'EB1252',1,'ERNIE BALL EB1252','JUEGO ACÚSTICA  ALUMINUM BRONZE MEDIUM 13-56','JUEGO ACÚSTICA  ALUMINUM BRONZE MEDIUM 13-56',1,NULL,12,12,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2564.jpg',NULL,NULL),(2657,1,26,'EB1256',1,'ERNIE BALL EB1256','JUEGO ACÚSTICA  ALUMINUM BRONZE MEDIUM LIGHT 12-54','JUEGO ACÚSTICA  ALUMINUM BRONZE MEDIUM LIGHT 12-54',1,NULL,12,12,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2566-1.jpg',NULL,NULL),(2658,1,26,'EB1339',1,'ERNIE BALL EB1339','JUEGO ACÚSTICA  EVERLAST BRONCE EXTRA LIGHT 10-50','JUEGO ACÚSTICA  EVERLAST BRONCE EXTRA LIGHT 10-50',1,NULL,18,18,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2560.jpg',NULL,NULL),(2659,1,26,'EB1340',1,'ERNIE BALL EB1340','JUEGO ACÚSTICA  EVERLAST BRONCE LIGHT 11-52','JUEGO ACÚSTICA  EVERLAST BRONCE LIGHT 11-52',1,NULL,18,18,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2558.jpg',NULL,NULL),(2660,1,26,'EB1345',1,'ERNIE BALL EB1345','JUEGO ACÚSTICA  EVERLAST BRONCE MEDIUM 13-56','JUEGO ACÚSTICA  EVERLAST BRONCE MEDIUM 13-56',1,NULL,18,18,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2554.jpg',NULL,NULL),(2661,1,26,'EB1360',1,'ERNIE BALL EB1360','JUEGO ACÚSTICA  EVERLAST BRONCE MEDIUM LIGHT 12-54','JUEGO ACÚSTICA  EVERLAST BRONCE MEDIUM LIGHT 12-54',1,NULL,25,25,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2556.jpg',NULL,NULL),(2662,1,26,'EB1365',1,'ERNIE BALL EB1365','JUEGO ACÚSTICA  EVERLAST PHOSPHOR/BZ LIGHT 11-52','JUEGO ACÚSTICA  EVERLAST PHOSPHOR/BZ LIGHT 11-52',1,NULL,18,18,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2548.jpg',NULL,NULL),(2663,1,26,'EB1380',1,'ERNIE BALL EB1380','JUEGO ACÚSTICA  EVERLAST PHOSPHOR/BZ M.LIGHT 12-54','JUEGO ACÚSTICA  EVERLAST PHOSPHOR/BZ M.LIGHT 12-54',1,NULL,18,18,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2546.jpg',NULL,NULL),(2664,1,26,'EB1385',1,'ERNIE BALL EB1385','JUEGO ACÚSTICA  EVERLAST PHOSPHOR/BZ MEDIUM 13-56','JUEGO ACÚSTICA  EVERLAST PHOSPHOR/BZ MEDIUM 13-56',1,NULL,18,18,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2544.jpg',NULL,NULL),(2665,1,26,'EB1392',1,'ERNIE BALL EB1392','JUEGO ACÚSTICA  EVERLAST PHOSPHOR/BZ XLIGHT 10-50','JUEGO ACÚSTICA  EVERLAST PHOSPHOR/BZ XLIGHT 10-50',1,NULL,18,18,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2550.jpg',NULL,NULL),(2666,1,26,'EB1393',1,'ERNIE BALL EB1393','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ 12S XLIGHT 9-46','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ 12S XLIGHT 9-46',1,NULL,13,13,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2153.jpg',NULL,NULL),(2667,1,26,'EB1395',1,'ERNIE BALL EB1395','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ HYBRID 10-52','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ HYBRID 10-52',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2151.jpg',NULL,NULL),(2668,1,26,'EB1397',1,'ERNIE BALL EB1397','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ LIGHT 11-52','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ LIGHT 11-52',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2148.jpg',NULL,NULL),(2669,1,26,'EB1398',1,'ERNIE BALL EB1398','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ M.LIGHT 12-54','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ M.LIGHT 12-54',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2146.jpg',NULL,NULL),(2670,1,26,'EB1399',1,'ERNIE BALL EB1399','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ MEDIUM 13-56','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ MEDIUM 13-56',1,NULL,9,9,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2144.jpg',NULL,NULL),(2671,1,26,'EB1420',1,'ERNIE BALL EB1420','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ XLIGHT 10-50','JUEGO ACÚSTICA EARTH PHOSPHOR/BZ XLIGHT 10-50',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2150.jpg',NULL,NULL),(2672,1,26,'EB1422',1,'ERNIE BALL EB1422','JUEGO ACÚSTICA EARTHWOOD BZ. 12 ST. LIGHT 9-46','JUEGO ACÚSTICA EARTHWOOD BZ. 12 ST. LIGHT 9-46',1,NULL,12,12,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2010.jpg',NULL,NULL),(2673,1,26,'EB1424',1,'ERNIE BALL EB1424','JUEGO ACÚSTICA EARTHWOOD BZ. 12 ST.MEDIUM 11-52','JUEGO ACÚSTICA EARTHWOOD BZ. 12 ST.MEDIUM 11-52',1,NULL,13,13,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2012.jpg',NULL,NULL),(2674,1,26,'EB1426',1,'ERNIE BALL EB1426','JUEGO ACÚSTICA EARTHWOOD BZ. EXTRA LIGHT 10-50','JUEGO ACÚSTICA EARTHWOOD BZ. EXTRA LIGHT 10-50',1,NULL,7,7,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2006.jpg',NULL,NULL),(2675,1,26,'EB1428',1,'ERNIE BALL EB1428','JUEGO ACÚSTICA EARTHWOOD BZ. LIGHT 11-52','JUEGO ACÚSTICA EARTHWOOD BZ. LIGHT 11-52',1,NULL,7,7,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2004.jpg',NULL,NULL),(2676,1,26,'EB1430',1,'ERNIE BALL EB1430','JUEGO ACÚSTICA EARTHWOOD BZ. LIGHT 11-52 TRIPACK (3)','JUEGO ACÚSTICA EARTHWOOD BZ. LIGHT 11-52 TRIPACK (3)',1,NULL,21,21,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/earthwood-light-tri-pack.jpg',NULL,NULL),(2677,1,26,'EB1432',1,'ERNIE BALL EB1432','JUEGO ACÚSTICA EARTHWOOD BZ. MEDIUM 13-56','JUEGO ACÚSTICA EARTHWOOD BZ. MEDIUM 13-56',1,NULL,7,7,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2002.jpg',NULL,NULL),(2678,1,26,'EB1434',1,'ERNIE BALL EB1434','JUEGO ACÚSTICA EARTHWOOD BZ. MEDIUM LIGHT 12-54','JUEGO ACÚSTICA EARTHWOOD BZ. MEDIUM LIGHT 12-54',1,NULL,7,7,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2003.jpg',NULL,NULL),(2679,1,26,'EB1436',1,'ERNIE BALL EB1436','JUEGO ACÚSTICA EARTHWOOD BZ. MEDIUM LIGHT 12-54 TRIPACK (3)','JUEGO ACÚSTICA EARTHWOOD BZ. MEDIUM LIGHT 12-54 TRIPACK (3)',1,NULL,21,21,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/earthwood-medium-light-tri-pack.jpg',NULL,NULL),(2680,1,26,'EB1438',1,'ERNIE BALL EB1438','JUEGO ACÚSTICA EARTHWOOD BZ. ROCK & BLUES 10-52','JUEGO ACÚSTICA EARTHWOOD BZ. ROCK & BLUES 10-52',1,NULL,7,7,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2008.jpg',NULL,NULL),(2681,1,26,'EB1440',1,'ERNIE BALL EB1440','JUEGO ACÚSTICA EARTHWOOD BZ. SILKSTEEL SOFT 11-52','JUEGO ACÚSTICA EARTHWOOD BZ. SILKSTEEL SOFT 11-52',1,NULL,13,13,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2045.jpg',NULL,NULL),(2682,1,26,'EB1444',1,'ERNIE BALL EB1444','JUEGO ACÚSTICA EARTHWOOD BZ. SILKSTEEL XSOFT10-50','JUEGO ACÚSTICA EARTHWOOD BZ. SILKSTEEL XSOFT10-50',1,NULL,13,13,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2047.jpg',NULL,NULL),(2683,1,26,'EB1446',1,'ERNIE BALL EB1446','JUEGO ACÚSTICA PARADIGM EX LIGHT 80/20 BRONZE 10-50','JUEGO ACÚSTICA PARADIGM EX LIGHT 80/20 BRONZE 10-50',1,NULL,19,19,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/p02090-angled.png',NULL,NULL),(2684,1,26,'EB1448',1,'ERNIE BALL EB1448','JUEGO ACÚSTICA PARADIGM EX LIGHT PHOSPHOR BRONZE  10-50','JUEGO ACÚSTICA PARADIGM EX LIGHT PHOSPHOR BRONZE  10-50',1,NULL,19,19,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/p02080-angled.png',NULL,NULL),(2685,1,26,'EB1450',1,'ERNIE BALL EB1450','JUEGO ACÚSTICA PARADIGM LIGHT 80/20 BRONZE 11-52','JUEGO ACÚSTICA PARADIGM LIGHT 80/20 BRONZE 11-52',1,NULL,19,19,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/p02088-angled.png',NULL,NULL),(2686,1,26,'EB1452',1,'ERNIE BALL EB1452','JUEGO ACÚSTICA PARADIGM LIGHT PHOSPHOR BRONZE  11-52','JUEGO ACÚSTICA PARADIGM LIGHT PHOSPHOR BRONZE  11-52',1,NULL,19,19,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/p02078-angled.png',NULL,NULL),(2687,1,26,'EB1454',1,'ERNIE BALL EB1454','JUEGO ACÚSTICA PARADIGM MED LIGHT 80/20 BRONZE  12-54','JUEGO ACÚSTICA PARADIGM MED LIGHT 80/20 BRONZE  12-54',1,NULL,19,19,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/p02086-angled.png',NULL,NULL),(2688,1,26,'EB1456',1,'ERNIE BALL EB1456','JUEGO ACÚSTICA PARADIGM MED LIGHT PHOSPHOR BRONZE 12-54','JUEGO ACÚSTICA PARADIGM MED LIGHT PHOSPHOR BRONZE 12-54',1,NULL,20,20,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/p02076-angled.png',NULL,NULL),(2689,1,26,'EB1501',1,'ERNIE BALL EB1501','JUEGO ACÚSTICA PARADIGM MEDIUM 80/20 BRONZE  13-56','JUEGO ACÚSTICA PARADIGM MEDIUM 80/20 BRONZE  13-56',1,NULL,19,19,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/p02084-angled.png',NULL,NULL),(2690,1,26,'EB1502',1,'ERNIE BALL EB1502','JUEGO ACÚSTICA PARADIGM MEDIUM PHOSPHOR BRONZE 13-56','JUEGO ACÚSTICA PARADIGM MEDIUM PHOSPHOR BRONZE 13-56',1,NULL,20,20,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/p02074-angled.png',NULL,NULL),(2691,1,12,'EB2206',1,'ERNIE BALL EB2206','CUERDA CLASICA  GOLD ERNESTO PALLA 4th.','CUERDA CLASICA  GOLD ERNESTO PALLA 4th.',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1544.jpg',NULL,NULL),(2692,1,12,'EB2208',1,'ERNIE BALL EB2208','CUERDA CLASICA  GOLD ERNESTO PALLA 5th.','CUERDA CLASICA  GOLD ERNESTO PALLA 5th.',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1545.jpg',NULL,NULL),(2693,1,12,'EB2210',1,'ERNIE BALL EB2210','CUERDA CLASICA  GOLD ERNESTO PALLA 6th.','CUERDA CLASICA  GOLD ERNESTO PALLA 6th.',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1546.jpg',NULL,NULL),(2694,1,12,'EB2215',1,'ERNIE BALL EB2215','CUERDA CLASICA  SILVER ERNESTO PALLA 4th.','CUERDA CLASICA  SILVER ERNESTO PALLA 4th.',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1534.jpg',NULL,NULL),(2695,1,12,'EB2220',1,'ERNIE BALL EB2220','CUERDA CLASICA  SILVER ERNESTO PALLA 5th.','CUERDA CLASICA  SILVER ERNESTO PALLA 5th.',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1535.jpg',NULL,NULL),(2696,1,12,'EB2221',1,'ERNIE BALL EB2221','CUERDA CLASICA  SILVER ERNESTO PALLA 6th.','CUERDA CLASICA  SILVER ERNESTO PALLA 6th.',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1536.jpg',NULL,NULL),(2697,1,12,'EB1166',1,'ERNIE BALL EB1166','CUERDA NYLON  BALL END ERNESTO PALLA 1st.','CUERDA NYLON  BALL END ERNESTO PALLA 1st.',1,NULL,1,1,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1521.jpg',NULL,NULL),(2698,1,12,'EB1168',1,'ERNIE BALL EB1168','CUERDA NYLON  BLACK ERNESTO PALLA 1st.','CUERDA NYLON  BLACK ERNESTO PALLA 1st.',1,NULL,1,1,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1511.jpg',NULL,NULL),(2699,1,12,'EB1170',1,'ERNIE BALL EB1170','CUERDA NYLON  BLACK ERNESTO PALLA 2nd.','CUERDA NYLON  BLACK ERNESTO PALLA 2nd.',1,NULL,1,1,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1512.jpg',NULL,NULL),(2700,1,12,'EB1172',1,'ERNIE BALL EB1172','CUERDA NYLON  BLACK ERNESTO PALLA 3rd.','CUERDA NYLON  BLACK ERNESTO PALLA 3rd.',1,NULL,1,1,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1513.jpg',NULL,NULL),(2701,1,12,'EB1174',1,'ERNIE BALL EB1174','CUERDA NYLON  CLEAR ERNESTO PALLA 1st.','CUERDA NYLON  CLEAR ERNESTO PALLA 1st.',1,NULL,1,1,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1501.jpg',NULL,NULL),(2702,1,12,'EB1220',1,'ERNIE BALL EB1220','CUERDA NYLON  CLEAR ERNESTO PALLA 2nd.','CUERDA NYLON  CLEAR ERNESTO PALLA 2nd.',1,NULL,1,1,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1502.jpg',NULL,NULL),(2703,1,12,'EB1224',1,'ERNIE BALL EB1224','CUERDA NYLON  CLEAR ERNESTO PALLA 3rd.','CUERDA NYLON  CLEAR ERNESTO PALLA 3rd.',1,NULL,1,1,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1503.jpg',NULL,NULL),(2704,1,27,'EB4220',1,'ERNIE BALL EB4220','SET ELÉCTRICA SLINKY XTRA LIGHT 10-50','SET ELÉCTRICA SLINKY XTRA LIGHT 10-50',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2210.jpg',NULL,NULL),(2705,1,27,'EB4276',1,'ERNIE BALL EB4276','SET NYLON BLACK & SILVER ERNESTO PALLA','SET NYLON BLACK & SILVER ERNESTO PALLA',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2406.jpg',NULL,NULL),(2706,1,27,'EB4277',1,'ERNIE BALL EB4277','SET NYLON CLEAR & SILVER ERNESTO PALLA','SET NYLON CLEAR & SILVER ERNESTO PALLA',1,NULL,7,7,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2403.jpg',NULL,NULL),(2707,1,27,'EB4278',1,'ERNIE BALL EB4278','SET NYLON CON BOLA ERNESTO PALLA','SET NYLON CON BOLA ERNESTO PALLA',1,NULL,9,9,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2409.jpg',NULL,NULL),(2708,1,13,'EB2004',1,'ERNIE BALL EB2004','CUERDA BAJO  ENTORCHADA PLANO 105','CUERDA BAJO  ENTORCHADA PLANO 105',1,NULL,16,16,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb1798.jpg',NULL,NULL),(2709,1,13,'EB2006',1,'ERNIE BALL EB2006','CUERDA BAJO  ENTORCHADO PLANO 065','CUERDA BAJO  ENTORCHADO PLANO 065',1,NULL,16,16,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1765.jpg',NULL,NULL),(2710,1,13,'EB2008',1,'ERNIE BALL EB2008','CUERDA BAJO  ENTORCHADO PLANO 130','CUERDA BAJO  ENTORCHADO PLANO 130',1,NULL,21,21,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1713.jpg',NULL,NULL),(2711,1,13,'EB2010',1,'ERNIE BALL EB2010','CUERDA BAJO GUITAR  SLINKY ENTORCHADA 090','CUERDA BAJO GUITAR  SLINKY ENTORCHADA 090',1,NULL,9,9,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb1691.jpg',NULL,NULL),(2712,1,13,'EB2012',1,'ERNIE BALL EB2012','CUERDA BAJO SLINKY ENTORCHADO REDONDO 026','CUERDA BAJO SLINKY ENTORCHADO REDONDO 026',1,NULL,6,6,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1626.jpg',NULL,NULL),(2713,1,13,'EB2015',1,'ERNIE BALL EB2015','CUERDA BAJO SLINKY ENTORCHADO REDONDO 032','CUERDA BAJO SLINKY ENTORCHADO REDONDO 032',1,NULL,7,7,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1632.jpg',NULL,NULL),(2714,1,13,'EB2020',1,'ERNIE BALL EB2020','CUERDA BAJO SLINKY ENTORCHADO REDONDO 040','CUERDA BAJO SLINKY ENTORCHADO REDONDO 040',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1640.jpg',NULL,NULL),(2715,1,13,'EB2021',1,'ERNIE BALL EB2021','CUERDA BAJO SLINKY ENTORCHADO REDONDO 045','CUERDA BAJO SLINKY ENTORCHADO REDONDO 045',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1645.jpg',NULL,NULL),(2716,1,13,'EB2022',1,'ERNIE BALL EB2022','CUERDA BAJO SLINKY ENTORCHADO REDONDO 050','CUERDA BAJO SLINKY ENTORCHADO REDONDO 050',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1650.jpg',NULL,NULL),(2717,1,13,'EB2023',1,'ERNIE BALL EB2023','CUERDA BAJO SLINKY ENTORCHADO REDONDO 055','CUERDA BAJO SLINKY ENTORCHADO REDONDO 055',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1655.jpg',NULL,NULL),(2718,1,13,'EB2026',1,'ERNIE BALL EB2026','CUERDA BAJO SLINKY ENTORCHADO REDONDO 060','CUERDA BAJO SLINKY ENTORCHADO REDONDO 060',1,NULL,9,9,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1660.jpg',NULL,NULL),(2719,1,13,'EB2027',1,'ERNIE BALL EB2027','CUERDA BAJO SLINKY ENTORCHADO REDONDO 065','CUERDA BAJO SLINKY ENTORCHADO REDONDO 065',1,NULL,9,9,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1665.jpg',NULL,NULL),(2720,1,13,'EB2028',1,'ERNIE BALL EB2028','CUERDA BAJO SLINKY ENTORCHADO REDONDO 070','CUERDA BAJO SLINKY ENTORCHADO REDONDO 070',1,NULL,10,10,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1670.jpg',NULL,NULL),(2721,1,13,'EB2030',1,'ERNIE BALL EB2030','CUERDA BAJO SLINKY ENTORCHADO REDONDO 075','CUERDA BAJO SLINKY ENTORCHADO REDONDO 075',1,NULL,10,10,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1675.jpg',NULL,NULL),(2722,1,13,'EB2043',1,'ERNIE BALL EB2043','CUERDA BAJO SLINKY ENTORCHADO REDONDO 080','CUERDA BAJO SLINKY ENTORCHADO REDONDO 080',1,NULL,10,10,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1680.jpg',NULL,NULL),(2723,1,13,'EB2045',1,'ERNIE BALL EB2045','CUERDA BAJO SLINKY ENTORCHADO REDONDO 085','CUERDA BAJO SLINKY ENTORCHADO REDONDO 085',1,NULL,10,10,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1685.jpg',NULL,NULL),(2724,1,13,'EB2047',1,'ERNIE BALL EB2047','CUERDA BAJO SLINKY ENTORCHADO REDONDO 090','CUERDA BAJO SLINKY ENTORCHADO REDONDO 090',1,NULL,10,10,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb1690.jpg',NULL,NULL),(2725,1,13,'EB2061',1,'ERNIE BALL EB2061','CUERDA BAJO SLINKY ENTORCHADO REDONDO 095','CUERDA BAJO SLINKY ENTORCHADO REDONDO 095',1,NULL,11,11,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1695.jpg',NULL,NULL),(2726,1,13,'EB2063',1,'ERNIE BALL EB2063','CUERDA BAJO SLINKY ENTORCHADO REDONDO 100','CUERDA BAJO SLINKY ENTORCHADO REDONDO 100',1,NULL,11,11,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1697.jpg',NULL,NULL),(2727,1,13,'EB2065',1,'ERNIE BALL EB2065','CUERDA BAJO SLINKY ENTORCHADO REDONDO 105','CUERDA BAJO SLINKY ENTORCHADO REDONDO 105',1,NULL,11,11,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1698.jpg',NULL,NULL),(2728,1,13,'EB2067',1,'ERNIE BALL EB2067','CUERDA BAJO SLINKY ENTORCHADO REDONDO 110','CUERDA BAJO SLINKY ENTORCHADO REDONDO 110',1,NULL,11,11,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1699.jpg',NULL,NULL),(2729,1,13,'EB2069',1,'ERNIE BALL EB2069','CUERDA BAJO SLINKY ENTORCHADO REDONDO 115','CUERDA BAJO SLINKY ENTORCHADO REDONDO 115',1,NULL,11,11,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1615.jpg',NULL,NULL),(2730,1,13,'EB2070',1,'ERNIE BALL EB2070','CUERDA BAJO SLINKY ENTORCHADO REDONDO 125','CUERDA BAJO SLINKY ENTORCHADO REDONDO 125',1,NULL,12,12,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1625.jpg',NULL,NULL),(2731,1,13,'EB2074',1,'ERNIE BALL EB2074','CUERDA BAJO SLINKY ENTORCHADO REDONDO 130','CUERDA BAJO SLINKY ENTORCHADO REDONDO 130',1,NULL,14,14,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1613.jpg',NULL,NULL),(2732,1,13,'EB2076',1,'ERNIE BALL EB2076','CUERDA BAJO SLINKY ENTORCHADO REDONDO 135','CUERDA BAJO SLINKY ENTORCHADO REDONDO 135',1,NULL,14,14,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1614.jpg',NULL,NULL),(2733,1,13,'EB2078',1,'ERNIE BALL EB2078','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 028','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 028',1,NULL,6,6,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1339.jpg',NULL,NULL),(2734,1,13,'EB2080',1,'ERNIE BALL EB2080','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 040','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 040',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1340.jpg',NULL,NULL),(2735,1,13,'EB2084',1,'ERNIE BALL EB2084','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 045','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 045',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1345.jpg',NULL,NULL),(2736,1,13,'EB2086',1,'ERNIE BALL EB2086','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 060','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 060',1,NULL,9,9,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1360.jpg',NULL,NULL),(2737,1,13,'EB2088',1,'ERNIE BALL EB2088','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 065','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 065',1,NULL,9,9,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1365.jpg',NULL,NULL),(2738,1,13,'EB2090',1,'ERNIE BALL EB2090','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 080','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 080',1,NULL,10,10,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1380.jpg',NULL,NULL),(2739,1,13,'EB2144',1,'ERNIE BALL EB2144','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 085','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 085',1,NULL,10,10,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1385.jpg',NULL,NULL),(2740,1,13,'EB2146',1,'ERNIE BALL EB2146','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 095','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 095',1,NULL,11,11,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1395.jpg',NULL,NULL),(2741,1,13,'EB2148',1,'ERNIE BALL EB2148','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 100','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 100',1,NULL,11,11,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1397.jpg',NULL,NULL),(2742,1,13,'EB2150',1,'ERNIE BALL EB2150','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 105','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 105',1,NULL,11,11,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1398.jpg',NULL,NULL),(2743,1,13,'EB2151',1,'ERNIE BALL EB2151','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 110','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 110',1,NULL,11,11,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1399.jpg',NULL,NULL),(2744,1,13,'EB2153',1,'ERNIE BALL EB2153','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 125','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 125',1,NULL,11,11,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1392.jpg',NULL,NULL),(2745,1,13,'EB2204',1,'ERNIE BALL EB2204','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 130','CUERDA BAJO SLINKY S.STEEL ENTORCHADA 130',1,NULL,14,14,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB1393.jpg',NULL,NULL),(2746,1,28,'EB1503',1,'ERNIE BALL EB1503','JUEGO BAJO  COATED SLINKY 5 St. 45-130','JUEGO BAJO  COATED SLINKY 5 St. 45-130',1,NULL,44,44,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3836.jpg',NULL,NULL),(2747,1,28,'EB1511',1,'ERNIE BALL EB1511','JUEGO BAJO  COATED SLINKY HYBRID 45-105','JUEGO BAJO  COATED SLINKY HYBRID 45-105',1,NULL,37,37,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3833.jpg',NULL,NULL),(2748,1,28,'EB1512',1,'ERNIE BALL EB1512','JUEGO BAJO  COATED SLINKY REGULAR 50-105','JUEGO BAJO  COATED SLINKY REGULAR 50-105',1,NULL,37,37,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3832.jpg',NULL,NULL),(2749,1,28,'EB1513',1,'ERNIE BALL EB1513','JUEGO BAJO  COATED SLINKY SUPER 45-100','JUEGO BAJO  COATED SLINKY SUPER 45-100',1,NULL,37,37,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB3834.jpg',NULL,NULL),(2750,1,28,'EB1521',1,'ERNIE BALL EB1521','JUEGO BAJO  ENTORCHADA PLANO 5St.45-130','JUEGO BAJO  ENTORCHADA PLANO 5St.45-130',1,NULL,72,72,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2810.jpg',NULL,NULL),(2751,1,28,'EB1534',1,'ERNIE BALL EB1534','JUEGO BAJO  ENTORCHADO PLANO GROUP II 50-105','JUEGO BAJO  ENTORCHADO PLANO GROUP II 50-105',1,NULL,47,47,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2804.jpg',NULL,NULL),(2752,1,28,'EB1535',1,'ERNIE BALL EB1535','JUEGO BAJO  ENTORCHADO PLANO GROUP III 45-100','JUEGO BAJO  ENTORCHADO PLANO GROUP III 45-100',1,NULL,52,52,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2806.jpg',NULL,NULL),(2753,1,28,'EB1536',1,'ERNIE BALL EB1536','JUEGO BAJO  ENTORCHADO PLANO GROUP IV 40-95','JUEGO BAJO  ENTORCHADO PLANO GROUP IV 40-95',1,NULL,52,52,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2808.jpg',NULL,NULL),(2754,1,28,'EB1544',1,'ERNIE BALL EB1544','JUEGO BAJO  ENTORCHADO PLANO SLINKY 5ST. REGULAR 45-130','JUEGO BAJO  ENTORCHADO PLANO SLINKY 5ST. REGULAR 45-130',1,NULL,67,67,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2816-regular-slinky-flatwound.jpg',NULL,NULL),(2755,1,28,'EB1545',1,'ERNIE BALL EB1545','JUEGO BAJO  ENTORCHADO PLANO SLINKY EXTRA 40-95','JUEGO BAJO  ENTORCHADO PLANO SLINKY EXTRA 40-95',1,NULL,53,53,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2815-extra-slinky-flatwound.jpg',NULL,NULL),(2756,1,28,'EB1546',1,'ERNIE BALL EB1546','JUEGO BAJO  ENTORCHADO PLANO SLINKY HYBRID 45-105','JUEGO BAJO  ENTORCHADO PLANO SLINKY HYBRID 45-105',1,NULL,53,53,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2813-hybrid-slinky-flatwound.jpg',NULL,NULL),(2757,1,28,'EB1613',1,'ERNIE BALL EB1613','JUEGO BAJO  ENTORCHADO PLANO SLINKY POWER 55-110','JUEGO BAJO  ENTORCHADO PLANO SLINKY POWER 55-110',1,NULL,53,53,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2811-power-slinky-flatwound.jpg',NULL,NULL),(2758,1,28,'EB1614',1,'ERNIE BALL EB1614','JUEGO BAJO  ENTORCHADO PLANO SLINKY REGULAR 50-105','JUEGO BAJO  ENTORCHADO PLANO SLINKY REGULAR 50-105',1,NULL,53,53,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2812-super-slinky-flatwound.jpg',NULL,NULL),(2759,1,28,'EB1615',1,'ERNIE BALL EB1615','JUEGO BAJO  ENTORCHADO PLANO SLINKY SUPER 45-100','JUEGO BAJO  ENTORCHADO PLANO SLINKY SUPER 45-100',1,NULL,53,53,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2814-super-slinky-flatwound.jpg',NULL,NULL),(2760,1,28,'EB1625',1,'ERNIE BALL EB1625','JUEGO BAJO  SLINKY COBALT 5 St. 45-130','JUEGO BAJO  SLINKY COBALT 5 St. 45-130',1,NULL,43,43,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2736.jpg',NULL,NULL),(2761,1,28,'EB1626',1,'ERNIE BALL EB1626','JUEGO BAJO  SLINKY COBALT EXTRA 40-95','JUEGO BAJO  SLINKY COBALT EXTRA 40-95',1,NULL,37,37,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2735.jpg',NULL,NULL),(2762,1,28,'EB1632',1,'ERNIE BALL EB1632','JUEGO BAJO  SLINKY COBALT HYBRID 45-105','JUEGO BAJO  SLINKY COBALT HYBRID 45-105',1,NULL,39,39,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2733.jpg',NULL,NULL),(2763,1,28,'EB1640',1,'ERNIE BALL EB1640','JUEGO BAJO  SLINKY COBALT POWER 55-110','JUEGO BAJO  SLINKY COBALT POWER 55-110',1,NULL,39,39,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2731.jpg',NULL,NULL),(2764,1,28,'EB1645',1,'ERNIE BALL EB1645','JUEGO BAJO  SLINKY COBALT REGULAR 50-105','JUEGO BAJO  SLINKY COBALT REGULAR 50-105',1,NULL,39,39,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2732.jpg',NULL,NULL),(2765,1,28,'EB1650',1,'ERNIE BALL EB1650','JUEGO BAJO  SLINKY COBALT SUPER 45-100','JUEGO BAJO  SLINKY COBALT SUPER 45-100',1,NULL,39,39,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2734.jpg',NULL,NULL),(2766,1,28,'EB1655',1,'ERNIE BALL EB1655','JUEGO BAJO SLINKY  5 St. 45-130','JUEGO BAJO SLINKY  5 St. 45-130',1,NULL,31,31,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02836-front-111617-2000x2000px.jpg',NULL,NULL),(2767,1,28,'EB1660',1,'ERNIE BALL EB1660','JUEGO BAJO SLINKY  6 St. 32-130','JUEGO BAJO SLINKY  6 St. 32-130',1,NULL,42,42,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02838-front-111617-2000x2000px.jpg',NULL,NULL),(2768,1,28,'EB1665',1,'ERNIE BALL EB1665','JUEGO BAJO SLINKY  6 St. Baritono','JUEGO BAJO SLINKY  6 St. Baritono',1,NULL,9,9,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2839.jpg',NULL,NULL),(2769,1,28,'EB1670',1,'ERNIE BALL EB1670','JUEGO BAJO SLINKY EXTRA 40-95','JUEGO BAJO SLINKY EXTRA 40-95',1,NULL,29,29,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02835-front-111617-2000x2000px.jpg',NULL,NULL),(2770,1,28,'EB1675',1,'ERNIE BALL EB1675','JUEGO BAJO SLINKY HYBRID 45-105','JUEGO BAJO SLINKY HYBRID 45-105',1,NULL,25,25,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02833-front-111617-2000x2000px.jpg',NULL,NULL),(2771,1,28,'EB1680',1,'ERNIE BALL EB1680','JUEGO BAJO SLINKY POWER 55-110','JUEGO BAJO SLINKY POWER 55-110',1,NULL,23,23,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02831-front-111617-2000x2000px.jpg',NULL,NULL),(2772,1,28,'EB1685',1,'ERNIE BALL EB1685','JUEGO BAJO SLINKY REGULAR 50-105','JUEGO BAJO SLINKY REGULAR 50-105',1,NULL,23,23,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02832-front-111617-2000x2000px.jpg',NULL,NULL),(2773,1,28,'EB1690',1,'ERNIE BALL EB1690','JUEGO BAJO SLINKY SUPER 45-100','JUEGO BAJO SLINKY SUPER 45-100',1,NULL,25,25,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02834-front-111617-2000x2000px.jpg',NULL,NULL),(2774,1,28,'EB3220',1,'ERNIE BALL EB3220','SET BAJO ACÚSTICO  EARTHWOOD BRONCE 40-95','SET BAJO ACÚSTICO  EARTHWOOD BRONCE 40-95',1,NULL,31,31,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2070-2.jpg',NULL,NULL),(2775,1,28,'EB3221',1,'ERNIE BALL EB3221','SET BAJO SLINKY 5 St.40-125','SET BAJO SLINKY 5 St.40-125',1,NULL,31,31,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02824-front-111617-2000x2000px.jpg',NULL,NULL),(2776,1,28,'EB3222',1,'ERNIE BALL EB3222','SET BAJO SLINKY 5 St.50-135 P','SET BAJO SLINKY 5 St.50-135 P',1,NULL,31,31,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/web-p02821-front-111617-2000x2000px.jpg',NULL,NULL),(2777,1,28,'EB3223',1,'ERNIE BALL EB3223','SET BAJO SLINKY S.STEEL EXTRA 40-95','SET BAJO SLINKY S.STEEL EXTRA 40-95',1,NULL,29,29,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2845.jpg',NULL,NULL),(2778,1,28,'EB3721',1,'ERNIE BALL EB3721','SET BAJO SLINKY S.STEEL HYBRID 45-105','SET BAJO SLINKY S.STEEL HYBRID 45-105',1,NULL,29,29,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2843.jpg',NULL,NULL),(2779,1,28,'EB3832',1,'ERNIE BALL EB3832','SET BAJO SLINKY S.STEEL REGULAR 50-105','SET BAJO SLINKY S.STEEL REGULAR 50-105',1,NULL,29,29,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2842.jpg',NULL,NULL),(2780,1,28,'EB3833',1,'ERNIE BALL EB3833','SET BAJO SLINKY S.STEEL SUPER 45-100','SET BAJO SLINKY S.STEEL SUPER 45-100',1,NULL,29,29,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/EB2844.jpg',NULL,NULL),(2781,1,28,'EB3834',1,'ERNIE BALL EB3834','SET BAJO SLINKY SHORT SCALE REGULAR 40-100','SET BAJO SLINKY SHORT SCALE REGULAR 40-100',1,NULL,29,29,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2854.jpg',NULL,NULL),(2782,1,28,'EB3836',1,'ERNIE BALL EB3836','SET BAJO SLINKY SHORT SCALE REGULAR 45-105','SET BAJO SLINKY SHORT SCALE REGULAR 45-105',1,NULL,29,29,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb2852.jpg',NULL,NULL),(2783,1,6,'EB1240',1,'ERNIE BALL EB1240','GAMUZA GUITARRA','GAMUZA GUITARRA',1,NULL,4,4,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4220-2.jpg',NULL,NULL),(2784,1,6,'EB2723',1,'ERNIE BALL EB2723','KIT MANTENIMIENTO ERNIEBAL GUITARRA/BAJO','KIT MANTENIMIENTO ERNIEBAL GUITARRA/BAJO',1,NULL,50,50,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/tool-kit-1.jpg',NULL,NULL),(2785,1,6,'EB2725',1,'ERNIE BALL EB2725','LIMPIA CUERPO GUITARRA  20 Un.','LIMPIA CUERPO GUITARRA  20 Un.',1,NULL,5,5,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/ernieballlogo-3.jpg',NULL,NULL),(2786,1,6,'EB2726',1,'ERNIE BALL EB2726','LIMPIADOR  DIAPASONES  Caja 6 Un.','LIMPIADOR  DIAPASONES  Caja 6 Un.',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4276.jpg',NULL,NULL),(2787,1,6,'EB2727',1,'ERNIE BALL EB2727','LIMPIADOR CUERDAS  Caja 6 Un.','LIMPIADOR CUERDAS  Caja 6 Un.',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4277.jpg',NULL,NULL),(2788,1,6,'EB2728',1,'ERNIE BALL EB2728','LIMPIADOR GUITARRAS COMBO PACK  Caja 6 Un. Surtido','LIMPIADOR GUITARRAS COMBO PACK  Caja 6 Un. Surtido',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4279.jpg',NULL,NULL),(2789,1,6,'EB2729',1,'ERNIE BALL EB2729','MANIVELA AFINACION GUITARRA','MANIVELA AFINACION GUITARRA',1,NULL,3,3,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4119.jpg',NULL,NULL),(2790,1,7,'EB2832',1,'ERNIE BALL EB2832','PUAS NYLON  MEDIUM CAMUFLAGE ERNIEBALL Bolsa 12 Un.','PUAS NYLON  MEDIUM CAMUFLAGE ERNIEBALL Bolsa 12 Un.',1,NULL,5,5,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9222.jpg',NULL,NULL),(2791,1,7,'EB2833',1,'ERNIE BALL EB2833','PUAS NYLON COLORES Y DUREZAS SURTIDAS ERNIEBALL Caja 144 Unds.','PUAS NYLON COLORES Y DUREZAS SURTIDAS ERNIEBALL Caja 144 Unds.',1,NULL,48,48,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9201.jpg',NULL,NULL),(2792,1,7,'EB2834',1,'ERNIE BALL EB2834','PUAS NYLON HEAVY COLORES SURTIDOS ERNIEBALL Bolsa 24 Unds.','PUAS NYLON HEAVY COLORES SURTIDOS ERNIEBALL Bolsa 24 Unds.',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9174.jpg',NULL,NULL),(2793,1,7,'EB2835',1,'ERNIE BALL EB2835','PUAS NYLON INYECTADO HEAVY ERNIEBALL 50 Unds.','PUAS NYLON INYECTADO HEAVY ERNIEBALL 50 Unds.',1,NULL,12,12,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9132.jpg',NULL,NULL),(2794,1,7,'EB2836',1,'ERNIE BALL EB2836','PUAS NYLON INYECTADO MEDIUM ERNIEBALL 50 Unds.','PUAS NYLON INYECTADO MEDIUM ERNIEBALL 50 Unds.',1,NULL,12,12,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9131.jpg',NULL,NULL),(2795,1,7,'EB2838',1,'ERNIE BALL EB2838','PUAS NYLON INYECTADO SURTIDO VARIADO ERNIEBALL 50 Unds.','PUAS NYLON INYECTADO SURTIDO VARIADO ERNIEBALL 50 Unds.',1,NULL,12,12,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9133.jpg',NULL,NULL),(2796,1,7,'EB2839',1,'ERNIE BALL EB2839','PUAS NYLON INYECTADO THIN ERNIEBALL Caja 50 Unds.','PUAS NYLON INYECTADO THIN ERNIEBALL Caja 50 Unds.',1,NULL,12,12,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9130.jpg',NULL,NULL),(2797,1,7,'EB2842',1,'ERNIE BALL EB2842','PUAS NYLON MEDIUM COLORES SURTIDOS ERNIEBALL Bolsa 24 Unds.','PUAS NYLON MEDIUM COLORES SURTIDOS ERNIEBALL Bolsa 24 Unds.',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9172.jpg',NULL,NULL),(2798,1,7,'EB2843',1,'ERNIE BALL EB2843','PUAS NYLON MEDIUM SLINKY PINK ERNIEBALL Caja 144 Unds.','PUAS NYLON MEDIUM SLINKY PINK ERNIEBALL Caja 144 Unds.',1,NULL,46,46,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9115.jpg',NULL,NULL),(2799,1,7,'EB2844',1,'ERNIE BALL EB2844','PUAS NYLON MEDIUM WHITE ERNIEBALL Caja 144 Unds.','PUAS NYLON MEDIUM WHITE ERNIEBALL Caja 144 Unds.',1,NULL,46,46,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9111.jpg',NULL,NULL),(2800,1,7,'EB2845',1,'ERNIE BALL EB2845','PUAS NYLON THIN COLORES SURTIDOS ERNIEBALL Bolsa 24 Unds.','PUAS NYLON THIN COLORES SURTIDOS ERNIEBALL Bolsa 24 Unds.',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9170.jpg',NULL,NULL),(2801,1,7,'EB2852',1,'ERNIE BALL EB2852','PUAS NYLON THIN MIXED COLORS ERNIEBALL Caja 144 Unds.','PUAS NYLON THIN MIXED COLORS ERNIEBALL Caja 144 Unds.',1,NULL,33,33,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9108.jpg',NULL,NULL),(2802,1,7,'EB2854',1,'ERNIE BALL EB2854','PUAS NYLON THIN PSYCHO RED ERNIEBALL Caja 144 Unds.','PUAS NYLON THIN PSYCHO RED ERNIEBALL Caja 144 Unds.',1,NULL,37,37,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9103.jpg',NULL,NULL),(2803,1,7,'EB2915',1,'ERNIE BALL EB2915','PUAS NYLON THIN SHELL ERNIEBALL Caja 144 Unds.','PUAS NYLON THIN SHELL ERNIEBALL Caja 144 Unds.',1,NULL,37,37,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9102.jpg',NULL,NULL),(2804,1,7,'EB2920',1,'ERNIE BALL EB2920','PUAS NYLON THIN SLINKY PINK ERNIEBALL Caja 144 Unds.','PUAS NYLON THIN SLINKY PINK ERNIEBALL Caja 144 Unds.',1,NULL,37,37,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9105.jpg',NULL,NULL),(2805,1,7,'EB2921',1,'ERNIE BALL EB2921','PUAS NYLON THIN TRUE BLUE ERNIEBALL Caja 144 Unds.','PUAS NYLON THIN TRUE BLUE ERNIEBALL Caja 144 Unds.',1,NULL,37,37,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9106.jpg',NULL,NULL),(2806,1,7,'EB2922',1,'ERNIE BALL EB2922','PUAS NYLON THIN WHITE ERNIEBALL Caja 144 Unds.','PUAS NYLON THIN WHITE ERNIEBALL Caja 144 Unds.',1,NULL,37,37,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9101.jpg',NULL,NULL),(2807,1,7,'EB2923',1,'ERNIE BALL EB2923','PUAS NYLON THIN YELLOW ERNIEBALL Caja 144 Unds.','PUAS NYLON THIN YELLOW ERNIEBALL Caja 144 Unds.',1,NULL,37,37,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9107.jpg',NULL,NULL),(2808,1,7,'EB3003',1,'ERNIE BALL EB3003','PUAS PULGAR LARGE COLORES SURTIDOS ERNIEBALL Bolsa 24 Unds.','PUAS PULGAR LARGE COLORES SURTIDOS ERNIEBALL Bolsa 24 Unds.',1,NULL,15,15,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9213.jpg',NULL,NULL),(2809,1,7,'EB3004',1,'ERNIE BALL EB3004','PUAS PULGAR MEDIUM COLORES SURTIDOS ERNIEBALL Bolsa 24 Unds.','PUAS PULGAR MEDIUM COLORES SURTIDOS ERNIEBALL Bolsa 24 Unds.',1,NULL,15,15,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb9210.jpg',NULL,NULL),(2810,1,6,'EB3115',1,'ERNIE BALL EB3115','PULIMENTO GUITARRA','PULIMENTO GUITARRA',1,NULL,6,6,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4223.jpg',NULL,NULL),(2811,1,6,'EB3120',1,'ERNIE BALL EB3120','PULIMENTO GUITARRA/BAJO  Caja 6 Un.','PULIMENTO GUITARRA/BAJO  Caja 6 Un.',1,NULL,2,2,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4278.jpg',NULL,NULL),(2812,1,6,'EB3121',1,'ERNIE BALL EB3121','PULIMENTO PARA GUITARRA CON GAMUZA','PULIMENTO PARA GUITARRA CON GAMUZA',1,NULL,8,8,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4222.jpg',NULL,NULL),(2813,1,6,'EB4279',1,'ERNIE BALL EB4279','STRAP LOOCK SUJETA CORREAS  Cromado','STRAP LOOCK SUJETA CORREAS  Cromado',1,NULL,22,22,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4600.jpg',NULL,NULL),(2814,1,6,'EB4600',1,'ERNIE BALL EB4600','STRAP LOOCK SUJETA CORREAS  Dorado','STRAP LOOCK SUJETA CORREAS  Dorado',1,NULL,24,24,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4602.jpg',NULL,NULL),(2815,1,6,'EB4601',1,'ERNIE BALL EB4601','STRAP LOOCK SUJETA CORREAS  Negro','STRAP LOOCK SUJETA CORREAS  Negro',1,NULL,25,25,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4601.jpg',NULL,NULL),(2816,1,6,'EB4602',1,'ERNIE BALL EB4602','SUJETA CORREAS  (12 unidades)','SUJETA CORREAS  (12 unidades)',1,NULL,9,9,10,'2018-05-25 09:44:10.000000',NULL,'http://www.musicdistribucion.com/upload/producte/eb4237.jpg',NULL,NULL),(2955,5,30,'TSS1586',1,'TSS CUSTOM SET TSS1586','Set Custom para Guitarra Eléctrica','Set Custom para Guitarra Eléctrica',1,0,13,13,1,'2018-05-28 10:45:39.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2956,5,30,'TSS1596',1,'TSS CUSTOM SET TSS1596','Set Custom para Guitarra Eléctrica','Set Custom para Guitarra Eléctrica',1,0,11,11,1,'2018-05-28 11:28:45.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2957,5,30,'TSS1606',1,'TSS CUSTOM SET TSS1606','Set Custom para Guitarra Eléctrica','Set Custom para Guitarra Eléctrica',1,0,12,12,1,'2018-05-28 11:30:54.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2958,5,30,'TSS1616',1,'TSS CUSTOM SET TSS1616','Set Custom para Guitarra Eléctrica','Set Custom para Guitarra Eléctrica',1,0,13,13,1,'2018-05-28 11:32:43.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2959,5,30,'TSS1626',1,'TSS CUSTOM SET TSS1626','Set Custom para Guitarra Eléctrica','Set Custom para Guitarra Eléctrica',1,0,12,12,1,'2018-05-28 11:45:46.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2960,5,30,'TSS1636',1,'TSS CUSTOM SET TSS1636','Set Custom para Guitarra Eléctrica','Set Custom para Guitarra Eléctrica',1,0,12,12,1,'2018-05-28 11:55:27.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2961,5,30,'TSS1646',1,'TSS CUSTOM SET TSS1646','Set Custom para Guitarra Eléctrica','Set Custom para Guitarra Eléctrica',1,0,12,12,1,'2018-05-28 11:56:36.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2962,5,30,'TSS1658',1,'TSS CUSTOM SET TSS1658','Set Custom para Guitarra Eléctrica de 7 Cuerdas','Set Custom para Guitarra Eléctrica de 7 Cuerdas',1,0,18,18,1,'2018-05-28 12:18:10.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2963,5,30,'TSS1668',1,'TSS CUSTOM SET TSS1668','Set Custom para Guitarra Eléctrica de 7 Cuerdas','Set Custom para Guitarra Eléctrica de 7 Cuerdas',1,0,18,18,1,'2018-05-28 12:18:58.000000',NULL,'/codespace/images/productos/tsselectrica8',NULL,NULL),(2964,5,30,'TSS1726',1,'TSS CUSTOM SET TSS1726','Set Custom para Guitarra Eléctrica','Set Custom para Guitarra Eléctrica',1,0,12,12,1,'2018-05-28 14:45:48.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2965,5,30,'TSS1736',1,'TSS CUSTOM SET TSS1736','Set Custom para Guitarra Eléctrica','Set Custom para Guitarra Eléctrica',1,0,13,13,1,'2018-05-28 14:47:39.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2966,5,30,'TSS1746',1,'TSS CUSTOM SET TSS1746','Set Custom para Guitarra Eléctrica','Set Custom para Guitarra Eléctrica',1,0,12,12,1,'2018-05-28 14:48:53.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2967,5,30,'TSS1758',1,'TSS CUSTOM SET TSS1758','Set Custom para Guitarra Eléctrica de 8 Cuerdas','Set Custom para Guitarra Eléctrica de 8 Cuerdas',1,0,18,18,1,'2018-05-28 14:49:56.000000',NULL,'/codespace/images/productos/tsselectrica8',NULL,NULL),(2968,5,30,'TSS1767',1,'TSS CUSTOM SET TSS1767','Set Custom para Guitarra Eléctrica de 7 Cuerdas','Set Custom para Guitarra Eléctrica de 7 Cuerdas',1,0,14,14,1,'2018-05-28 14:50:45.000000',NULL,'/codespace/images/productos/tsselectrica7',NULL,NULL),(2969,5,30,'TSS1776',1,'TSS CUSTOM SET TSS1776','Set Custom para Guitarra Eléctrica','Set Custom para Guitarra Eléctrica',1,0,12,12,1,'2018-05-28 14:52:58.000000',NULL,'/codespace/images/productos/tsselectrica',NULL,NULL),(2970,5,30,'TSS1787',1,'TSS CUSTOM SET TSS1787','Set Custom para Guitarra Eléctrica de 7 Cuerdas','Set Custom para Guitarra Eléctrica de 7 Cuerdas',1,0,16,16,1,'2018-05-28 14:53:23.000000',NULL,'/codespace/images/productos/tsselectrica7',NULL,NULL),(2971,5,30,'TSS1798',1,'TSS CUSTOM SET TSS1798','Set Custom para Guitarra Eléctrica de 8 Cuerdas','Set Custom para Guitarra Eléctrica de 8 Cuerdas',1,0,18,18,1,'2018-05-28 14:55:07.000000',NULL,'/codespace/images/productos/tsselectrica8',NULL,NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_sets`
--

DROP TABLE IF EXISTS `productos_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos_sets` (
  `id_set` bigint(20) NOT NULL,
  `id_producto` bigint(20) NOT NULL,
  PRIMARY KEY (`id_set`,`id_producto`),
  KEY `FK_sets_productos_productos` (`id_producto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_sets`
--

LOCK TABLES `productos_sets` WRITE;
/*!40000 ALTER TABLE `productos_sets` DISABLE KEYS */;
INSERT INTO `productos_sets` VALUES (48,741),(48,742),(48,743),(48,745),(48,748),(48,765),(49,732),(49,734),(49,742),(49,747),(49,780),(49,795),(50,733),(50,748),(50,751),(50,754),(50,783),(50,792),(51,730),(51,733),(51,736),(51,742),(51,757),(51,796),(52,732),(52,751),(52,781),(52,786),(52,789),(52,795),(53,730),(53,734),(53,737),(53,747),(53,750),(53,761),(54,729),(54,738),(54,742),(54,757),(54,774),(54,787),(55,732),(55,750),(55,760),(55,775),(55,786),(55,789),(56,733),(56,748),(56,754),(56,776),(56,784),(56,792),(57,733),(57,746),(57,751),(57,761),(57,787),(57,789),(58,730),(58,738),(58,753),(58,775),(58,781),(58,786),(59,729),(59,733),(59,737),(59,741),(59,755),(59,796),(60,729),(60,738),(60,751),(60,781),(60,787),(60,796),(61,729),(61,737),(61,751),(61,774),(61,781),(61,787),(62,730),(62,736),(62,742),(62,748),(62,758),(62,787),(63,743),(63,746),(63,751),(63,783),(63,787),(63,789),(64,730),(64,743),(64,755),(64,775),(64,787),(64,791),(65,733),(65,741),(65,747),(65,758),(65,765),(65,769),(65,786),(65,795),(66,733),(66,737),(66,748),(66,753),(66,755),(66,767),(66,770),(66,787),(67,733),(67,787),(67,796),(68,733),(68,787),(68,796),(69,733),(69,787),(69,796),(70,733),(70,787),(70,796),(71,733),(71,787),(71,796),(72,733),(72,737),(72,740),(72,753),(72,760),(72,783),(73,730),(73,746),(73,750),(73,781),(73,787),(73,792),(74,729),(74,741),(74,759),(74,774),(74,787),(74,792),(75,729),(75,733),(75,751),(75,755),(75,764),(75,770),(75,774),(75,791),(76,729),(76,733),(76,741),(76,756),(76,774),(76,781),(76,789),(77,740),(77,754),(77,777),(77,784),(77,787),(77,793),(78,729),(78,737),(78,747),(78,751),(78,770),(78,781),(78,787),(79,733),(79,754),(79,755),(79,764),(79,769),(79,775),(79,786),(79,791);
/*!40000 ALTER TABLE `productos_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sets`
--

DROP TABLE IF EXISTS `sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num_cuerdas` smallint(6) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `imagen` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nombre` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `referencia` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `date_add` datetime DEFAULT NULL,
  `precio_iva` bigint(20) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sets_categorias` (`categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sets`
--

LOCK TABLES `sets` WRITE;
/*!40000 ALTER TABLE `sets` DISABLE KEYS */;
INSERT INTO `sets` VALUES (5,7,30,NULL,'TSS CUSTOM SET TSS0702 010-062','TSS72',1,'2018-05-25 10:55:17',NULL,NULL),(1,6,30,NULL,'TSS CUSTOM SET TSS0601 09-052','TSS0601',1,'2018-05-25 10:52:35',NULL,NULL),(18,6,30,NULL,'TSS CUSTOM SET TSS1186','TSS1186',1,'2018-05-25 13:16:48',NULL,NULL),(17,6,30,NULL,'TSS CUSTOM SET TSS1176','TSS1176',1,'2018-05-25 13:04:05',NULL,NULL),(16,6,30,NULL,'TSS CUSTOM SET TSS1166','TSS1166',1,'2018-05-25 12:58:45',NULL,NULL),(15,6,30,NULL,'TSS CUSTOM SET TSS1146','TSS1146',1,'2018-05-25 12:57:59',NULL,NULL),(14,6,30,NULL,'TSS CUSTOM SET TSS156','TSS156',1,'2018-05-25 12:57:25',NULL,NULL),(19,6,30,NULL,'TSS CUSTOM SET TSS1196','TSS1196',1,'2018-05-25 13:17:49',NULL,NULL),(20,6,30,NULL,'TSS CUSTOM SET TSS1206','TSS1206',1,'2018-05-25 13:18:32',NULL,NULL),(21,6,30,NULL,'TSS CUSTOM SET TSS1216','TSS1216',1,'2018-05-25 13:18:58',NULL,NULL),(22,6,30,NULL,'TSS CUSTOM SET TSS1226','TSS1226',1,'2018-05-25 13:19:03',NULL,NULL),(23,6,30,NULL,'TSS CUSTOM SET TSS1236','TSS1236',1,'2018-05-25 13:19:06',NULL,NULL),(24,6,30,NULL,'TSS CUSTOM SET TSS1246','TSS1246',1,'2018-05-25 13:19:49',NULL,NULL),(25,6,30,NULL,'TSS CUSTOM SET TSS1256','TSS1256',1,'2018-05-25 13:20:19',NULL,NULL),(26,6,30,NULL,'TSS CUSTOM SET TSS1266','TSS1266',1,'2018-05-25 13:20:38',NULL,NULL),(27,6,30,NULL,'TSS CUSTOM SET TSS1276','TSS1276',1,'2018-05-25 13:31:58',13,NULL),(28,6,30,NULL,'TSS CUSTOM SET TSS1286','TSS1286',1,'2018-05-25 13:38:01',12,NULL),(29,6,30,NULL,'TSS CUSTOM SET TSS1296','TSS1296',1,'2018-05-25 14:16:26',12,NULL),(30,6,30,NULL,'TSS CUSTOM SET TSS1306','TSS1306',1,'2018-05-25 14:16:39',12,NULL),(31,6,30,NULL,'TSS CUSTOM SET TSS1316','TSS1316',1,'2018-05-25 14:17:44',12,NULL),(32,6,30,NULL,'TSS CUSTOM SET TSS1326','TSS1326',1,'2018-05-25 14:18:49',13,NULL),(33,6,30,NULL,'TSS CUSTOM SET TSS1336','TSS1336',1,'2018-05-25 14:19:15',13,NULL),(34,6,30,NULL,'TSS CUSTOM SET TSS1346','TSS1346',1,'2018-05-25 14:19:39',14,NULL),(35,6,30,NULL,'TSS CUSTOM SET TSS1356','TSS1356',1,'2018-05-25 14:20:09',12,NULL),(36,6,30,NULL,'TSS CUSTOM SET TSS1366','TSS1366',1,'2018-05-25 14:21:19',12,NULL),(37,6,30,NULL,'TSS CUSTOM SET TSS1376','TSS1376',1,'2018-05-25 14:21:52',12,NULL),(38,6,30,NULL,'TSS CUSTOM SET TSS1386','TSS1386',1,'2018-05-25 14:22:49',12,NULL),(39,6,30,NULL,'TSS CUSTOM SET TSS1396','TSS1396',1,'2018-05-25 14:25:32',12,NULL),(40,6,30,NULL,'TSS CUSTOM SET TSS1406','TSS1406',1,'2018-05-25 14:27:20',12,NULL),(41,6,30,NULL,'TSS CUSTOM SET TSS1416','TSS1416',1,'2018-05-25 14:29:26',11,NULL),(42,6,30,NULL,'TSS CUSTOM SET TSS1426','TSS1426',1,'2018-05-25 14:29:51',11,NULL),(43,6,30,NULL,'TSS CUSTOM SET TSS1436','TSS1436',1,'2018-05-25 14:47:00',16,1),(44,6,30,NULL,'TSS CUSTOM SET TSS1446','TSS1446',1,'2018-05-25 14:48:04',16,-1),(45,6,30,NULL,'TSS CUSTOM SET TSS1456','TSS1456',1,'2018-05-25 14:50:16',13,1),(46,6,30,NULL,'TSS CUSTOM SET TSS1466','TSS1466',1,'2018-05-25 14:50:52',12,-1),(47,6,30,NULL,'TSS CUSTOM SET TSS1476','TSS1476',1,'2018-05-25 16:33:19',16,-1),(48,6,30,NULL,'TSS CUSTOM SET TSS1486','TSS1486',1,'2018-05-25 16:34:58',16,-1),(49,6,30,NULL,'TSS CUSTOM SET TSS1496','TSS1496',1,'2018-05-25 16:35:39',13,1),(50,6,30,NULL,'TSS CUSTOM SET TSS1506','TSS1506',1,'2018-05-25 16:36:03',12,-1),(51,6,30,NULL,'TSS CUSTOM SET TSS1516','TSS1516',1,'2018-05-28 09:44:18',11,1),(52,6,30,NULL,'TSS CUSTOM SET TSS1526','TSS1526',1,'2018-05-28 09:48:55',12,1),(53,6,30,NULL,'TSS CUSTOM SET TSS1536','TSS1536',1,'2018-05-28 09:49:22',12,1),(54,6,30,NULL,'TSS CUSTOM SET TSS1546','TSS1546',1,'2018-05-28 09:50:35',12,1),(55,6,30,NULL,'TSS CUSTOM SET TSS1556','TSS1556',1,'2018-05-28 09:54:35',12,1),(56,6,30,NULL,'TSS CUSTOM SET TSS1566','TSS1566',1,'2018-05-28 09:56:18',12,-1),(57,6,30,NULL,'TSS CUSTOM SET TSS1576','TSS1576',1,'2018-05-28 09:56:52',12,1),(58,6,30,NULL,'TSS CUSTOM SET TSS1586','TSS1586',1,'2018-05-28 10:45:39',13,1),(59,6,30,NULL,'TSS CUSTOM SET TSS1596','TSS1596',1,'2018-05-28 11:28:45',11,1),(60,6,30,NULL,'TSS CUSTOM SET TSS1606','TSS1606',1,'2018-05-28 11:30:54',12,1),(61,6,30,NULL,'TSS CUSTOM SET TSS1616','TSS1616',1,'2018-05-28 11:32:43',13,1),(62,6,30,NULL,'TSS CUSTOM SET TSS1626','TSS1626',1,'2018-05-28 11:45:46',12,-1),(63,6,30,NULL,'TSS CUSTOM SET TSS1636','TSS1636',1,'2018-05-28 11:55:27',12,1),(64,6,30,NULL,'TSS CUSTOM SET TSS1646','TSS1646',1,'2018-05-28 11:56:36',12,1),(65,8,30,NULL,'TSS CUSTOM SET TSS1658','TSS1658',1,'2018-05-28 12:18:10',18,1),(66,8,30,NULL,'TSS CUSTOM SET TSS1668','TSS1668',1,'2018-05-28 12:18:58',18,-1),(67,7,30,NULL,'TSS CUSTOM SET TSS1677','TSS1677',1,'2018-05-28 13:23:48',13,1),(68,7,30,NULL,'TSS CUSTOM SET TSS1687','TSS1687',1,'2018-05-28 13:23:50',13,1),(69,7,30,NULL,'TSS CUSTOM SET TSS1697','TSS1697',1,'2018-05-28 13:24:29',13,1),(70,7,30,NULL,'TSS CUSTOM SET TSS1707','TSS1707',1,'2018-05-28 13:25:39',12,1),(71,7,30,NULL,'TSS CUSTOM SET TSS1717','TSS1717',1,'2018-05-28 13:25:53',12,1),(72,6,30,NULL,'TSS CUSTOM SET TSS1726','TSS1726',1,'2018-05-28 14:45:48',12,1),(73,6,30,NULL,'TSS CUSTOM SET TSS1736','TSS1736',1,'2018-05-28 14:47:39',13,1),(74,6,30,NULL,'TSS CUSTOM SET TSS1746','TSS1746',1,'2018-05-28 14:48:53',12,1),(75,8,30,NULL,'TSS CUSTOM SET TSS1758','TSS1758',1,'2018-05-28 14:49:56',18,1),(76,7,30,NULL,'TSS CUSTOM SET TSS1767','TSS1767',1,'2018-05-28 14:50:45',14,1),(77,6,30,NULL,'TSS CUSTOM SET TSS1776','TSS1776',1,'2018-05-28 14:52:58',12,1),(78,7,30,NULL,'TSS CUSTOM SET TSS1787','TSS1787',1,'2018-05-28 14:53:23',16,1),(79,8,30,NULL,'TSS CUSTOM SET TSS1798','TSS1798',1,'2018-05-28 14:55:07',18,1);
/*!40000 ALTER TABLE `sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sets_productos`
--

DROP TABLE IF EXISTS `sets_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sets_productos` (
  `id_set` bigint(20) NOT NULL,
  `id_producto` bigint(20) NOT NULL,
  PRIMARY KEY (`id_set`,`id_producto`),
  KEY `FK_sets_productos_productos` (`id_producto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sets_productos`
--

LOCK TABLES `sets_productos` WRITE;
/*!40000 ALTER TABLE `sets_productos` DISABLE KEYS */;
INSERT INTO `sets_productos` VALUES (58,2955),(59,2956),(60,2957),(61,2958),(62,2959),(63,2960),(64,2961),(65,2962),(66,2963),(72,2964),(73,2965),(74,2966),(75,2967),(76,2968),(77,2969),(78,2970),(79,2971);
/*!40000 ALTER TABLE `sets_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexo` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `sexo` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'Masculino'),(2,'Femenino');
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stringbox`
--

DROP TABLE IF EXISTS `stringbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stringbox` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) NOT NULL,
  `dia_fecha_entrega` int(11) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_stringbox_usuarios` (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stringbox`
--

LOCK TABLES `stringbox` WRITE;
/*!40000 ALTER TABLE `stringbox` DISABLE KEYS */;
INSERT INTO `stringbox` VALUES (1,1,24,'2018-05-29 18:09:51'),(2,1,10133,'2018-05-29 18:27:18'),(3,1,10133,'2018-05-29 18:29:33'),(4,1,7,'2018-05-29 18:30:43'),(5,1,2,'2018-05-29 18:32:04'),(6,1,16,'2018-05-29 18:58:27'),(7,1,17,'2018-05-29 19:01:12'),(8,1,25,'2018-05-29 19:03:43'),(9,1,16,'2018-05-29 19:06:45'),(10,1,11,'2018-05-29 19:22:26'),(11,1,11,'2018-05-29 19:23:00'),(12,1,25,'2018-05-29 19:23:10'),(13,1,2,'2018-05-29 19:23:50'),(14,1,18,'2018-05-29 19:25:27'),(15,1,3,'2018-05-29 19:28:09'),(16,1,3,'2018-05-29 19:28:30'),(17,1,17,'2018-05-29 19:29:19'),(18,1,31,'2018-05-29 19:34:16');
/*!40000 ALTER TABLE `stringbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stringbox_carrito`
--

DROP TABLE IF EXISTS `stringbox_carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stringbox_carrito` (
  `id_stringbox` bigint(20) NOT NULL,
  `id_carrito` bigint(20) NOT NULL,
  PRIMARY KEY (`id_stringbox`,`id_carrito`),
  KEY `FK_stringbox_carrito_carrito` (`id_carrito`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stringbox_carrito`
--

LOCK TABLES `stringbox_carrito` WRITE;
/*!40000 ALTER TABLE `stringbox_carrito` DISABLE KEYS */;
INSERT INTO `stringbox_carrito` VALUES (1,10133),(3,10133),(4,10133),(5,10133),(6,10133),(7,10133),(8,10133),(9,10133),(10,10133),(11,10133),(12,10133),(13,10133),(14,10133),(15,10133),(16,10133),(17,10133),(18,10133);
/*!40000 ALTER TABLE `stringbox_carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_pago`
--

DROP TABLE IF EXISTS `tipo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_pago`
--

LOCK TABLES `tipo_pago` WRITE;
/*!40000 ALTER TABLE `tipo_pago` DISABLE KEYS */;
INSERT INTO `tipo_pago` VALUES (1,'Contrareembolso'),(2,'Pago Tarjeta'),(3,'Transferencia'),(4,'Aplazame'),(5,'PayPal');
/*!40000 ALTER TABLE `tipo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` VALUES (1,'Seur'),(2,'CorreosExpress'),(3,'Correos'),(4,'Entrega en mano'),(5,'Redyser');
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_direccion`
--

DROP TABLE IF EXISTS `usuario_direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_direccion` (
  `id_usuario` bigint(20) NOT NULL,
  `id_direccion` bigint(20) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_direccion`),
  KEY `FK_usuario_direccion_direccion` (`id_direccion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_direccion`
--

LOCK TABLES `usuario_direccion` WRITE;
/*!40000 ALTER TABLE `usuario_direccion` DISABLE KEYS */;
INSERT INTO `usuario_direccion` VALUES (1,1),(1,2),(17,3),(18,4),(19,5),(20,6),(21,7),(22,8),(23,9),(24,10),(25,11),(26,12),(27,13),(28,14),(29,15),(30,16),(31,17),(32,18),(33,19),(34,20),(35,21),(36,22),(37,23),(38,24),(39,25),(40,26),(41,27),(42,28),(43,29),(44,30),(45,31),(46,32),(47,33),(48,34),(49,35),(50,36),(51,37),(52,38),(53,39),(54,40),(55,41),(56,42),(57,43),(58,44),(59,45),(60,46),(61,47),(62,48),(63,49),(64,50),(65,51),(66,52),(67,53),(68,54),(69,55),(70,56),(71,57),(72,58),(73,59),(74,60),(75,61),(76,62),(77,63),(78,64),(79,65),(80,66),(81,67),(82,68),(83,69),(84,70),(85,71),(86,72),(87,73),(88,74),(89,75),(90,76),(91,77),(92,78),(93,79),(94,80),(95,81),(96,82),(97,83),(98,84),(99,85),(100,86),(101,87),(102,88),(103,89),(104,90),(105,91),(106,92),(107,93),(108,94),(109,95),(110,96),(111,97),(112,98),(113,99),(114,100),(115,101),(116,102),(117,103),(118,104),(119,105),(120,106),(121,107),(122,108),(123,109),(124,110),(125,111),(126,112),(127,113),(128,114),(141,127),(142,128),(143,129),(144,130),(145,131),(146,132),(147,133),(149,134),(150,135),(151,136),(153,138),(164,139),(165,140);
/*!40000 ALTER TABLE `usuario_direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `apellido_1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `apellido_2` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sexo` tinyint(3) unsigned DEFAULT NULL,
  `active` tinyint(3) unsigned DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `passwd` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_nacimiento` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `direccion` bigint(20) DEFAULT NULL,
  `date_add` datetime(6) DEFAULT NULL,
  `date_update` datetime(6) DEFAULT NULL,
  `last_connection` datetime(6) DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `newsletter_date_add` datetime(6) DEFAULT NULL,
  `dni` varchar(9) CHARACTER SET latin1 DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_USUARIOS_SEXO` (`sexo`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Sergio','Álvarez','García',1,1,'sergioalvarez@tostringshop.com','123456','10-09-1991',1,'2018-04-02 10:11:40.173000',NULL,NULL,NULL,NULL,NULL,NULL),(15,'Sergio','Álvares','Garchia',1,0,'cheput@gmail.com','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Sergihhho','Álvares','Garchia',1,0,'cheput@gmail.com','123456',NULL,NULL,'2018-04-05 10:26:01.520000',NULL,NULL,NULL,NULL,NULL,NULL),(17,'Sergihhho','Álvares','Garchia',1,0,'cheput@gmail.com','123456',NULL,NULL,'2018-04-05 10:38:50.810000',NULL,NULL,NULL,NULL,NULL,NULL),(18,'Jose','Ubago','Alvarez',1,0,'joseubago@gmail.com','1de3356',NULL,NULL,'2018-04-05 10:40:40.650000',NULL,NULL,NULL,NULL,NULL,NULL),(19,'Jose','Ubago','Alvarez',1,0,'joseubago@gmail.com','1de3356',NULL,5,'2018-04-05 10:57:29.707000',NULL,NULL,NULL,NULL,NULL,NULL),(20,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,6,'2018-04-05 13:00:01.213000',NULL,NULL,NULL,NULL,NULL,NULL),(21,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,7,'2018-04-05 13:02:33.223000',NULL,NULL,NULL,NULL,NULL,NULL),(22,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,8,'2018-04-05 13:02:35.360000',NULL,NULL,NULL,NULL,NULL,NULL),(23,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,9,'2018-04-05 13:04:16.750000',NULL,NULL,NULL,NULL,NULL,NULL),(24,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,10,'2018-04-05 13:04:25.390000',NULL,NULL,NULL,NULL,NULL,NULL),(25,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,11,'2018-04-05 13:04:56.170000',NULL,NULL,NULL,NULL,NULL,NULL),(26,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,12,'2018-04-05 13:05:20.503000',NULL,NULL,NULL,NULL,NULL,NULL),(27,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,13,'2018-04-05 13:18:59.110000',NULL,NULL,NULL,NULL,NULL,NULL),(28,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,14,'2018-04-05 13:19:21.040000',NULL,NULL,NULL,NULL,NULL,NULL),(29,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,15,'2018-04-05 13:19:51.037000',NULL,NULL,NULL,NULL,NULL,NULL),(30,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,16,'2018-04-05 13:20:16.027000',NULL,NULL,NULL,NULL,NULL,NULL),(31,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,17,'2018-04-05 13:20:23.483000',NULL,NULL,NULL,NULL,NULL,NULL),(32,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,18,'2018-04-05 13:20:26.123000',NULL,NULL,NULL,NULL,NULL,NULL),(33,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,19,'2018-04-05 13:20:31.980000',NULL,NULL,NULL,NULL,NULL,NULL),(34,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,20,'2018-04-05 13:20:43.603000',NULL,NULL,NULL,NULL,NULL,NULL),(35,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,21,'2018-04-05 13:21:51.370000',NULL,NULL,NULL,NULL,NULL,NULL),(36,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,22,'2018-04-05 13:42:53.950000',NULL,NULL,NULL,NULL,NULL,NULL),(37,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,23,'2018-04-05 13:45:31.590000',NULL,NULL,NULL,NULL,NULL,NULL),(38,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,24,'2018-04-05 13:46:52.600000',NULL,NULL,NULL,NULL,NULL,NULL),(39,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,25,'2018-04-05 13:48:48.980000',NULL,NULL,NULL,NULL,NULL,NULL),(40,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,26,'2018-04-05 13:49:15.870000',NULL,NULL,NULL,NULL,NULL,NULL),(41,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,27,'2018-04-05 13:54:01.070000',NULL,NULL,NULL,NULL,NULL,NULL),(42,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,28,'2018-04-05 13:54:25.160000',NULL,NULL,NULL,NULL,NULL,NULL),(43,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,29,'2018-04-05 13:55:53.790000',NULL,NULL,NULL,NULL,NULL,NULL),(44,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,30,'2018-04-05 13:55:55.837000',NULL,NULL,NULL,NULL,NULL,NULL),(45,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,31,'2018-04-05 13:56:38.867000',NULL,NULL,NULL,NULL,NULL,NULL),(46,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,32,'2018-04-05 13:57:55.303000',NULL,NULL,NULL,NULL,NULL,NULL),(47,'Pepe','Brigotelo','Caceres',2,0,'pepe@homtmail.com','',NULL,33,'2018-04-05 13:57:57.733000',NULL,NULL,NULL,NULL,NULL,NULL),(48,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,34,'2018-04-05 13:58:36.650000',NULL,NULL,NULL,NULL,NULL,NULL),(49,'sadf','Brigotelo','Caceres',1,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,35,'2018-04-05 13:59:01.390000',NULL,NULL,NULL,NULL,NULL,NULL),(50,'sadf','Brigotelo','Caceres',1,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,36,'2018-04-05 14:00:34.237000',NULL,NULL,NULL,NULL,NULL,NULL),(51,'sadf','Brigotelo','Caceres',1,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,37,'2018-04-05 14:00:46.257000',NULL,NULL,NULL,NULL,NULL,NULL),(52,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,38,'2018-04-05 14:03:18.380000',NULL,NULL,NULL,NULL,NULL,NULL),(53,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,39,'2018-04-05 14:08:45.787000',NULL,NULL,NULL,NULL,NULL,NULL),(54,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,40,'2018-04-05 14:09:36.433000',NULL,NULL,NULL,NULL,NULL,NULL),(55,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,41,'2018-04-05 14:12:59.757000',NULL,NULL,NULL,NULL,NULL,NULL),(56,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,42,'2018-04-05 14:14:24.093000',NULL,NULL,NULL,NULL,NULL,NULL),(57,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,43,'2018-04-05 14:14:56.463000',NULL,NULL,NULL,NULL,NULL,NULL),(58,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,44,'2018-04-05 14:15:00.517000',NULL,NULL,NULL,NULL,NULL,NULL),(59,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,45,'2018-04-05 14:15:30.303000',NULL,NULL,NULL,NULL,NULL,NULL),(60,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,46,'2018-04-05 14:15:34.140000',NULL,NULL,NULL,NULL,NULL,NULL),(61,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,47,'2018-04-05 14:15:37.203000',NULL,NULL,NULL,NULL,NULL,NULL),(62,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,48,'2018-04-05 14:20:23.393000',NULL,NULL,NULL,NULL,NULL,NULL),(63,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,49,'2018-04-05 14:21:15.380000',NULL,NULL,NULL,NULL,NULL,NULL),(64,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,50,'2018-04-05 14:21:31.087000',NULL,NULL,NULL,NULL,NULL,NULL),(65,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,51,'2018-04-05 14:23:01.043000',NULL,NULL,NULL,NULL,NULL,NULL),(66,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,52,'2018-04-05 14:23:16.547000',NULL,NULL,NULL,NULL,NULL,NULL),(67,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,53,'2018-04-05 14:27:32.570000',NULL,NULL,NULL,NULL,NULL,NULL),(68,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,54,'2018-04-05 14:28:03.573000',NULL,NULL,NULL,NULL,NULL,NULL),(69,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,55,'2018-04-05 14:28:27.667000',NULL,NULL,NULL,NULL,NULL,NULL),(70,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,56,'2018-04-05 14:45:11.217000',NULL,NULL,NULL,NULL,NULL,NULL),(71,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,57,'2018-04-05 14:46:23.460000',NULL,NULL,NULL,NULL,NULL,NULL),(72,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,58,'2018-04-05 14:46:26.520000',NULL,NULL,NULL,NULL,NULL,NULL),(73,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,59,'2018-04-05 14:46:27.993000',NULL,NULL,NULL,NULL,NULL,NULL),(74,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,60,'2018-04-05 14:46:31.530000',NULL,NULL,NULL,NULL,NULL,NULL),(75,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,61,'2018-04-05 14:50:35.050000',NULL,NULL,NULL,NULL,NULL,NULL),(76,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,62,'2018-04-05 14:50:38.983000',NULL,NULL,NULL,NULL,NULL,NULL),(77,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,63,'2018-04-05 14:50:52.337000',NULL,NULL,NULL,NULL,NULL,NULL),(78,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,64,'2018-04-05 14:51:23.570000',NULL,NULL,NULL,NULL,NULL,NULL),(79,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,65,'2018-04-05 14:51:34.727000',NULL,NULL,NULL,NULL,NULL,NULL),(80,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,66,'2018-04-05 14:51:38.333000',NULL,NULL,NULL,NULL,NULL,NULL),(81,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,67,'2018-04-05 14:53:25.807000',NULL,NULL,NULL,NULL,NULL,NULL),(82,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,68,'2018-04-05 14:55:17.000000',NULL,NULL,NULL,NULL,NULL,NULL),(83,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,69,'2018-04-05 14:55:35.800000',NULL,NULL,NULL,NULL,NULL,NULL),(84,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,70,'2018-04-05 14:57:03.333000',NULL,NULL,NULL,NULL,NULL,NULL),(85,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,71,'2018-04-05 14:57:06.807000',NULL,NULL,NULL,NULL,NULL,NULL),(86,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,72,'2018-04-05 14:57:50.317000',NULL,NULL,NULL,NULL,NULL,NULL),(87,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,73,'2018-04-05 14:57:52.727000',NULL,NULL,NULL,NULL,NULL,NULL),(88,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,74,'2018-04-05 14:57:55.133000',NULL,NULL,NULL,NULL,NULL,NULL),(89,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,75,'2018-04-05 15:00:28.017000',NULL,NULL,NULL,NULL,NULL,NULL),(90,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,76,'2018-04-05 15:00:30.013000',NULL,NULL,NULL,NULL,NULL,NULL),(91,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,77,'2018-04-05 15:00:31.190000',NULL,NULL,NULL,NULL,NULL,NULL),(92,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,78,'2018-04-05 15:01:11.997000',NULL,NULL,NULL,NULL,NULL,NULL),(93,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,79,'2018-04-05 15:01:13.117000',NULL,NULL,NULL,NULL,NULL,NULL),(94,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,80,'2018-04-05 15:01:13.677000',NULL,NULL,NULL,NULL,NULL,NULL),(95,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,81,'2018-04-05 15:01:13.923000',NULL,NULL,NULL,NULL,NULL,NULL),(96,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,82,'2018-04-05 15:01:14.127000',NULL,NULL,NULL,NULL,NULL,NULL),(97,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,83,'2018-04-05 15:01:14.323000',NULL,NULL,NULL,NULL,NULL,NULL),(98,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,84,'2018-04-05 15:01:14.510000',NULL,NULL,NULL,NULL,NULL,NULL),(99,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,85,'2018-04-05 15:01:14.710000',NULL,NULL,NULL,NULL,NULL,NULL),(100,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,86,'2018-04-05 15:01:14.917000',NULL,NULL,NULL,NULL,NULL,NULL),(101,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,87,'2018-04-05 15:01:15.110000',NULL,NULL,NULL,NULL,NULL,NULL),(102,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,88,'2018-04-05 15:01:15.310000',NULL,NULL,NULL,NULL,NULL,NULL),(103,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,89,'2018-04-05 15:01:15.517000',NULL,NULL,NULL,NULL,NULL,NULL),(104,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,90,'2018-04-05 15:01:15.723000',NULL,NULL,NULL,NULL,NULL,NULL),(105,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,91,'2018-04-05 15:01:15.923000',NULL,NULL,NULL,NULL,NULL,NULL),(106,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,92,'2018-04-05 15:01:16.133000',NULL,NULL,NULL,NULL,NULL,NULL),(107,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,93,'2018-04-05 15:01:16.790000',NULL,NULL,NULL,NULL,NULL,NULL),(108,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,94,'2018-04-05 15:01:18.030000',NULL,NULL,NULL,NULL,NULL,NULL),(109,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,95,'2018-04-05 15:01:19.277000',NULL,NULL,NULL,NULL,NULL,NULL),(110,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,96,'2018-04-05 15:02:25.837000',NULL,NULL,NULL,NULL,NULL,NULL),(111,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,97,'2018-04-05 15:04:26.413000',NULL,NULL,NULL,NULL,NULL,NULL),(112,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,98,'2018-04-05 15:04:59.180000',NULL,NULL,NULL,NULL,NULL,NULL),(113,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,99,'2018-04-05 15:05:22.947000',NULL,NULL,NULL,NULL,NULL,NULL),(114,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,100,'2018-04-05 15:08:15.800000',NULL,NULL,NULL,NULL,NULL,NULL),(115,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,101,'2018-04-05 15:12:40.080000',NULL,NULL,NULL,NULL,NULL,NULL),(116,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,102,'2018-04-05 15:12:58.337000',NULL,NULL,NULL,NULL,NULL,NULL),(117,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,103,'2018-04-05 15:13:06.567000',NULL,NULL,NULL,NULL,NULL,NULL),(118,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,104,'2018-04-05 15:13:25.317000',NULL,NULL,NULL,NULL,NULL,NULL),(119,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,105,'2018-04-05 15:21:33.403000',NULL,NULL,NULL,NULL,NULL,NULL),(120,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,106,'2018-04-05 15:22:06.077000',NULL,NULL,NULL,NULL,NULL,NULL),(121,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,107,'2018-04-05 15:22:26.447000',NULL,NULL,NULL,NULL,NULL,NULL),(122,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,108,'2018-04-05 15:25:36.827000',NULL,NULL,NULL,NULL,NULL,NULL),(123,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,109,'2018-04-05 15:25:50.763000',NULL,NULL,NULL,NULL,NULL,NULL),(124,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,110,'2018-04-05 15:27:10.157000',NULL,NULL,NULL,NULL,NULL,NULL),(125,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,111,'2018-04-05 15:27:26.403000',NULL,NULL,NULL,NULL,NULL,NULL),(126,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,112,'2018-04-05 15:27:42.277000',NULL,NULL,NULL,NULL,NULL,NULL),(127,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,113,'2018-04-05 15:28:47.610000',NULL,NULL,NULL,NULL,NULL,NULL),(128,'fasdf','Brigotelo','Caceres',2,0,'<br />\r\n<b>Notice</b>:  Undefined index: email_create in <b>C:\\wamp64\\www\\codespace\\templates\\regist','',NULL,114,'2018-04-05 15:28:59.020000',NULL,NULL,NULL,NULL,NULL,NULL),(141,'mi polla es gorda','Brigotelo','NuÃ±ez',1,0,'maria@gmail.com','',NULL,127,'2018-04-05 16:05:34.923000',NULL,NULL,NULL,NULL,NULL,NULL),(142,'mi polla es gorda','Brigotelo','NuÃ±ez',1,0,'maria@gmail.com','',NULL,128,'2018-04-05 16:07:28.800000',NULL,NULL,NULL,NULL,NULL,NULL),(143,'Noelia','Brigotelo','Caceres',1,1,'noe@gmail.com','123456',NULL,129,'2018-04-05 16:08:53.117000',NULL,NULL,NULL,NULL,NULL,NULL),(144,'Noelia','Brigotelo','Caceres',1,0,'noe@gmail.com','123456',NULL,130,'2018-04-05 16:13:09.537000',NULL,NULL,NULL,NULL,NULL,NULL),(145,'juan','juan','juan',1,1,'juan@gmail.com','juan',NULL,131,'2018-04-05 18:50:07.333000',NULL,NULL,NULL,NULL,NULL,NULL),(146,'Fernando','Jimeno','NuÃ±ez',1,1,'fernando_n_g@hotmail.com','123456',NULL,132,'2018-04-09 09:16:33.623000',NULL,NULL,NULL,NULL,'05069877G',666666666),(147,'Jose ','Ubago','Sotomayor',1,0,'jmubagosotomayor@gmail.com','123456',NULL,133,'2018-04-09 09:25:01.887000',NULL,NULL,NULL,NULL,'77777777X',632548712),(149,'Jose Alberto','Alvarez','Garcia',1,1,'kyubi_109@hotmail.com','123456',NULL,134,'2018-04-11 09:25:10.970000',NULL,NULL,NULL,NULL,'09057066B',635946097),(150,'Jose Alberto','Alvarez','Garcia',1,0,'kyubi_109@hotmail.com','123456',NULL,135,'2018-04-11 09:30:57.063000',NULL,NULL,NULL,NULL,'09057066B',635946097),(151,'jose alberto','alvarez','garcia',1,0,'alvgar0@gmail.com','123456',NULL,136,'2018-04-11 13:33:29.170000',NULL,NULL,NULL,NULL,'09057066b',666666666),(153,'Francisco','Brigotelo','NuÃ±ez',1,1,'pruebasphp1234@gmail.com','123456',NULL,138,'2018-04-13 10:48:58.930000',NULL,NULL,NULL,NULL,'05070866H',652984578),(154,'fasdf','Pedro','dsafasd',1,0,'QWER@GMAIL.COM','123456',NULL,NULL,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666),(155,'fasdf','Pedro','dsafasd',1,0,'QWER@GMAIL.COM','123456',NULL,NULL,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666),(156,'fasdf','Pedro','dsafasd',1,0,'QWER@GMAIL.COM','123456',NULL,NULL,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666),(157,'fasdf','Pedro','dsafasd',1,0,'QWER@GMAIL.COM','123456',NULL,NULL,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666),(158,'fasdf','Pedro','dsafasd',1,0,'QWER@GMAIL.COM','123456',NULL,NULL,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666),(159,'fasdf','Pedro','dsafasd',1,0,'QWER@GMAIL.COM','123456',NULL,NULL,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666),(160,'fasdf','Pedro','dsafasd',1,0,'QWER@GMAIL.COM','123456',NULL,NULL,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666),(161,'fasdf','Pedro','dsafasd',1,0,'QWER@GMAIL.COM','123456',NULL,NULL,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666),(162,'fasdf','Pedro','dsafasd',1,0,'QWER@GMAIL.COM','123456',NULL,NULL,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666),(163,'fasdf','Pedro','dsafasd',1,0,'QWERGMAIL.COM','123456',NULL,NULL,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666),(164,'fasdf','Pedro','dsafasd',1,0,'QWERGMAIL.COM','123456',NULL,139,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666),(165,'frederr','Brigotelo','Caceres',1,1,'adsfasdf@hotmail.com','123456',NULL,140,'2018-05-21 00:00:00.000000',NULL,NULL,NULL,NULL,'05069877G',666666666);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tostringshop'
--
/*!50003 DROP PROCEDURE IF EXISTS `tss_crear_stringbox` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tss_crear_stringbox`(           
			id_usuario bigint,
            id_carrito bigint,
			dia_fecha_entrega int
)
BEGIN
         
			DECLARE id_stringbox BIGINT DEFAULT 0;
         
			insert into stringbox
				(id_usuario,dia_fecha_entrega,date_add)
			values
				(id_usuario,dia_fecha_entrega,now());

			SET id_stringbox = (select id from stringbox order by id desc limit 1);
            
            insert into stringbox_carrito
				(id_stringbox,id_carrito)
			values
				(id_stringbox,id_carrito);
                
			select id from stringbox order by id desc limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tss_insertar_nuevo_set_6` */;
ALTER DATABASE `tostringshop` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tss_insertar_nuevo_set_6`(           
			id_usuario bigint,
			id_head bigint,
			cuerda_1 bigint,
            cuerda_2 bigint,
            cuerda_3 bigint,
            cuerda_4 bigint,
            cuerda_5 bigint,
            cuerda_6 bigint
)
BEGIN

			DECLARE ref VARCHAR(200);
            DECLARE nombre VARCHAR(200);
            DECLARE fecha_add datetime;
            DECLARE idNuevoSet bigint;
            DECLARE precio_cuerda bigint;
            DECLARE precio_total bigint default 0;
            DECLARE stock_cuerda INT DEFAULT 0;
            DECLARE stock_set INT DEFAULT 1;
            DECLARE categoria INT DEFAULT 0;
            DECLARE descripcion VARCHAR(2000);
			DECLARE imagen VARCHAR(100);
            DECLARE id_prod INT DEFAULT 0;
            
			SET idNuevoSet = (select id from sets order by id desc limit 1);
            SET idNuevoSet = idNuevoSet + 1;
            SET ref = CONCAT ('TSS',id_usuario,idNuevoSet,id_head);
            SET nombre = CONCAT('TSS CUSTOM SET ',REF);
			SET fecha_add = NOW();
            
            
			set precio_cuerda = (select precio_iva from productos where id = cuerda_1);
			set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_2);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_3);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_4);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_5);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_6);
            set precio_total = precio_total + precio_cuerda;
            set precio_total = precio_total + 3;
            
            set stock_cuerda = (select stock from productos where id = cuerda_1);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
            set stock_cuerda = (select stock from productos where id = cuerda_2);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_3);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_4);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_5);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_6);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
            
            
            if id_head = 6 then
				set categoria = 30;
                set descripcion = 'Set Custom para Guitarra Eléctrica';
                set imagen = '/codespace/images/productos/tsselectrica';
			end if;
            if id_head = 7 then
				set categoria = 30;
				set descripcion = 'Set Custom para Guitarra Eléctrica';
                set imagen = '/codespace/images/productos/tsselectrica';
			end if;
            if id_head = 8 then
				set categoria = 30;
                set descripcion = 'Set Custom para Guitarra Eléctrica';
                set imagen = '/codespace/images/productos/tsselectrica8';
			end if;
            if id_head = 9 then
				set categoria = 31;
                set descripcion = 'Set Custom para Guitarra Acústica';
			end if;
            if id_head = 10 then
				set categoria = 32;
                set descripcion = 'Set Custom para Guitarra Clasica';
			end if;
            if id_head = 11 then
				set categoria = 33;
                set descripcion = 'Set Custom para Bajo Eléctrico';
			end if;
            if id_head = 12 then
				set categoria = 33;
                set descripcion = 'Set Custom para Bajo Eléctrico';
			end if;
            if id_head = 13 then
				set categoria = 34;
                set descripcion = 'Set Custom para Bajo Acústico';
			end if;
            if id_head = 14 then
				set categoria = 34;
                set descripcion = 'Set Custom para Bajo Acústico';
			end if;
            
			insert into sets
				(num_cuerdas,categoria,nombre, referencia,id_usuario,precio_iva,date_add,stock)
			values
				(id_head,30,nombre,ref,id_usuario,precio_total,now(),stock_set);


				-- Ahora insertamos la direccion
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_1
					);
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_2
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_3
					);
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_4
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_5
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_6
					);
                INSERT INTO productos
                    (
						id_fabricante, id_categoria,referencia,estado,nombre,descripcion,descripcion_corta,activo,ean13,precio, precio_iva,stock,date_add,imagen
                    )
				VALUES 
					(
						5,categoria,ref,1,nombre,descripcion,descripcion,1,0,precio_total, precio_total, 1, now(),imagen
                    );
				
                SET id_prod = (select id from productos order by id desc limit 1);
                
				INSERT INTO sets_productos
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, id_prod
					);
                    
                    select s.*, sp.id_producto as id_prod, p.imagen from sets as s join sets_productos as sp on sp.id_set = s.id join productos as p on p.id = sp.id_producto where s.id = idNuevoSet;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `tostringshop` CHARACTER SET utf8 COLLATE utf8_bin ;
/*!50003 DROP PROCEDURE IF EXISTS `tss_insertar_nuevo_set_7` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tss_insertar_nuevo_set_7`(           
			id_usuario bigint,
			id_head bigint,
			cuerda_1 bigint,
            cuerda_2 bigint,
            cuerda_3 bigint,
            cuerda_4 bigint,
            cuerda_5 bigint,
            cuerda_6 bigint,
            cuerda_7 bigint

)
BEGIN

			DECLARE ref VARCHAR(200);
            DECLARE nombre VARCHAR(200);
            DECLARE fecha_add datetime;
            DECLARE idNuevoSet bigint;
            DECLARE precio_cuerda bigint;
            DECLARE precio_total bigint default 0;
            DECLARE stock_cuerda INT DEFAULT 0;
            DECLARE stock_set INT DEFAULT 1;
            DECLARE categoria INT DEFAULT 0;
            DECLARE descripcion VARCHAR(2000);
			DECLARE imagen VARCHAR(100);
            DECLARE id_prod INT DEFAULT 0;
            
			SET idNuevoSet = (select id from sets order by id desc limit 1);
            SET idNuevoSet = idNuevoSet + 1;
            SET ref = CONCAT ('TSS',id_usuario,idNuevoSet,id_head);
            SET nombre = CONCAT('TSS CUSTOM SET ',REF);
			SET fecha_add = NOW();
            
            
			set precio_cuerda = (select precio_iva from productos where id = cuerda_1);
			set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_2);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_3);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_4);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_5);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_6);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_7);
            set precio_total = precio_total + precio_cuerda;
            set precio_total = precio_total + 2;
            
            set stock_cuerda = (select stock from productos where id = cuerda_1);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
            set stock_cuerda = (select stock from productos where id = cuerda_2);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_3);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_4);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_5);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_6);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_7);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
            
            
				set categoria = 30;
				set descripcion = 'Set Custom para Guitarra Eléctrica de 7 Cuerdas';
                set imagen = '/codespace/images/productos/tsselectrica7';

			insert into sets
				(num_cuerdas,categoria,nombre, referencia,id_usuario,precio_iva,date_add,stock)
			values
				(id_head,30,nombre,ref,id_usuario,precio_total,now(),stock_set);


				-- Ahora insertamos la direccion
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_1
					);
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_2
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_3
					);
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_4
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_5
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_6
					);                
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_7
					);
                INSERT INTO productos
                    (
						id_fabricante, id_categoria,referencia,estado,nombre,descripcion,descripcion_corta,activo,ean13,precio, precio_iva,stock,date_add,imagen
                    )
				VALUES 
					(
						5,categoria,ref,1,nombre,descripcion,descripcion,1,0,precio_total, precio_total, 1, now(),imagen
                    );
				
                SET id_prod = (select id from productos order by id desc limit 1);
                
				INSERT INTO sets_productos
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, id_prod
					);
                    
                    select s.*, sp.id_producto as id_prod, p.imagen from sets as s join sets_productos as sp on sp.id_set = s.id join productos as p on p.id = sp.id_producto where s.id = idNuevoSet;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tss_insertar_nuevo_set_8` */;
ALTER DATABASE `tostringshop` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tss_insertar_nuevo_set_8`(           
			id_usuario bigint,
			id_head bigint,
			cuerda_1 bigint,
            cuerda_2 bigint,
            cuerda_3 bigint,
            cuerda_4 bigint,
            cuerda_5 bigint,
            cuerda_6 bigint,
            cuerda_7 bigint,
            cuerda_8 bigint

)
BEGIN

			DECLARE ref VARCHAR(200);
            DECLARE nombre VARCHAR(200);
            DECLARE fecha_add datetime;
            DECLARE idNuevoSet bigint;
            DECLARE precio_cuerda bigint;
            DECLARE precio_total bigint default 0;
            DECLARE stock_cuerda INT DEFAULT 0;
            DECLARE stock_set INT DEFAULT 1;
            DECLARE categoria INT DEFAULT 0;
            DECLARE descripcion VARCHAR(2000);
			DECLARE imagen VARCHAR(100);
            DECLARE id_prod INT DEFAULT 0;
            
			SET idNuevoSet = (select id from sets order by id desc limit 1);
            SET idNuevoSet = idNuevoSet + 1;
            SET ref = CONCAT ('TSS',id_usuario,idNuevoSet,id_head);
            SET nombre = CONCAT('TSS CUSTOM SET ',REF);
			SET fecha_add = NOW();
            
            
			set precio_cuerda = (select precio_iva from productos where id = cuerda_1);
			set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_2);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_3);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_4);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_5);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_6);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_7);
            set precio_total = precio_total + precio_cuerda;
			set precio_cuerda = (select precio_iva from productos where id = cuerda_8);
            set precio_total = precio_total + precio_cuerda;
            set precio_total = precio_total + 2;
            
            set stock_cuerda = (select stock from productos where id = cuerda_1);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
            set stock_cuerda = (select stock from productos where id = cuerda_2);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_3);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_4);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_5);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_6);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_7);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_8);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
            
				set categoria = 30;
				set descripcion = 'Set Custom para Guitarra Eléctrica de 8 Cuerdas';
                set imagen = '/codespace/images/productos/tsselectrica8';

			insert into sets
				(num_cuerdas,categoria,nombre, referencia,id_usuario,precio_iva,date_add,stock)
			values
				(id_head,30,nombre,ref,id_usuario,precio_total,now(),stock_set);


				-- Ahora insertamos la direccion
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_1
					);
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_2
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_3
					);
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_4
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_5
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_6
					);                
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_7
					);
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_8
					);
                INSERT INTO productos
                    (
						id_fabricante, id_categoria,referencia,estado,nombre,descripcion,descripcion_corta,activo,ean13,precio, precio_iva,stock,date_add,imagen
                    )
				VALUES 
					(
						5,categoria,ref,1,nombre,descripcion,descripcion,1,0,precio_total, precio_total, 1, now(),imagen
                    );
				
                SET id_prod = (select id from productos order by id desc limit 1);
                
				INSERT INTO sets_productos
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, id_prod
					);
                    
                    select s.*, sp.id_producto as id_prod, p.imagen from sets as s join sets_productos as sp on sp.id_set = s.id join productos as p on p.id = sp.id_producto where s.id = idNuevoSet;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `tostringshop` CHARACTER SET utf8 COLLATE utf8_bin ;
/*!50003 DROP PROCEDURE IF EXISTS `tss_insertar_nuevo_usuario` */;
ALTER DATABASE `tostringshop` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tss_insertar_nuevo_usuario`(
			in nombre VARCHAR(50),
            in apellido1 VARCHAR(50),
            in apellido2 VARCHAR(50),
			in dni VARCHAR(9),
			in sexo tinyint,
			in email varchar(100),
			in passwd varchar(30),
			in telefono int,
			in direccion varchar(200),
			in codigo_postal smallint,
			in ciudad varchar(30),
			in provincia varchar(30),
			in comunidad_autonoma varchar(30))
BEGIN
DECLARE active int;
DECLARE fecha_add date;
DECLARE idUsuario int;
DECLARE idDireccion int;
SET active = 0;

			SET fecha_add = now();
                INSERT INTO usuarios
                    (   
                        nombre, apellido_1, apellido_2,dni, sexo, active, email, passwd,telefono, date_add	
                    )
                
                 VALUES
                    (   
						nombre, apellido1, apellido2, dni, sexo, active, email, passwd,telefono, fecha_add
                    );
		/*		--Una vez insertado el usuario, nos hacemos con su id */
			SET idUsuario = (select id from usuarios order by id desc limit 1);

				-- Ahora insertamos la direccion
				INSERT INTO direcciones
					(
						direccion, codigo_postal, ciudad, provincia, comunidad_autonoma, date_add
					)

				VALUES 
					(
						direccion, codigo_postal, ciudad, provincia, comunidad_autonoma, fecha_add
					);
				/*--Una vez insertado la direccion, nos hacemos con su id */
			SET idDireccion = (select id from direcciones order by id desc limit 1);
				
				/*--Ahora que tenmos ambas ids vamos a insertarlas en la tabla usuario_direccion*/
				INSERT INTO usuario_direccion
					(
						id_usuario,id_direccion
					)
				VALUES
					(
						idUsuario, idDireccion
					);
				-- Ahora añadimos el id de la direccion principal a la tabla usuarios.
				UPDATE usuarios SET direccion = idDireccion WHERE id = idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `tostringshop` CHARACTER SET utf8 COLLATE utf8_bin ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-29 19:56:33
