CREATE DATABASE  IF NOT EXISTS `gym` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gym`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL,
  `nom_categoria` varchar(45) NOT NULL,
  `precio_categoria` float NOT NULL,
  `tiempo_categoria` int NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Platino',75,1),(2,'Premiun',110,1),(3,'Gold',150,1),(4,'Platino X3',210,1),(5,'Premiun X3',300,1),(6,'Gold X3',410,1),(7,'Platino X6',210,1),(8,'Premiun X6',300,1),(9,'Gold X6',410,1),(10,'Platino X12',750,1),(11,'Premiun X12',1100,1),(12,'Gold X12',1450,1);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int NOT NULL,
  `nombrecliente` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `apellidocliente` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `correocliente` varchar(60) DEFAULT NULL,
  `telefonocliente` int DEFAULT NULL,
  `contraseñacliente` varchar(50) DEFAULT '',
  `pesocliente` float DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `imc` float NOT NULL DEFAULT '0',
  `clasificacionimc` varchar(50) NOT NULL DEFAULT '',
  `id_categoria` int NOT NULL,
  `idtrainer` int NOT NULL,
  `id_Plan_Aliment` int NOT NULL,
  `id_rutina` int NOT NULL,
  PRIMARY KEY (`idcliente`) USING BTREE,
  KEY `id_categoria_idx` (`id_categoria`),
  KEY `id_Plan_Aliment_idx` (`id_Plan_Aliment`),
  KEY `id_rutina_idx` (`id_rutina`),
  KEY `idtrainer_idx` (`idtrainer`),
  CONSTRAINT `id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `id_Plan_Aliment` FOREIGN KEY (`id_Plan_Aliment`) REFERENCES `plan_aliment` (`id_Plan_Aliment`),
  CONSTRAINT `id_rutina` FOREIGN KEY (`id_rutina`) REFERENCES `rutina` (`id_rutina`),
  CONSTRAINT `idtrainer` FOREIGN KEY (`idtrainer`) REFERENCES `entrenador` (`idtrainer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (12345698,'Che Carlitos','Parra','checarlitosss@gmailcom',999888333,'123456',70,1.7,24.2215,'Normal',3,12345678,2,2),(22461309,'Jersson','Garcia','Jersson@gmail.com',987789395,'1236548',80,1.65,29.3848,'Sobrepeso',3,11556688,3,3),(22462584,'cwokwd','sqoqkso','qsqppqs@gna.com',987456123,'13654879',80,1.7,27.6817,'Sobrepeso',3,11556688,3,3),(70462377,'Jhon','Laos','JoLaos@hotmail.com',987357845,'123465897',60,1.74,19.8177,'Normal',3,11556688,2,2),(78459852,'Jose','Aguilar','JoseA@gmail.com',987687495,'123465',65,1.75,21.2245,'Normal',3,11556688,2,2);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrenador`
--

DROP TABLE IF EXISTS `entrenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrenador` (
  `idtrainer` int NOT NULL,
  `nombretrainer` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellidotrainer` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sueldotrainer` double DEFAULT NULL,
  `telefonotrainer` int DEFAULT NULL,
  PRIMARY KEY (`idtrainer`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrenador`
--

LOCK TABLES `entrenador` WRITE;
/*!40000 ALTER TABLE `entrenador` DISABLE KEYS */;
INSERT INTO `entrenador` VALUES (11223344,'saddd','asddd',3000,999888557),(11556688,'Cristian','Laos',1555,977690751),(12345678,'Che Carlitos','Parra',2500,999098809),(70462372,'dwdwdw','wdwd',3200,987465321);
/*!40000 ALTER TABLE `entrenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_aliment`
--

DROP TABLE IF EXISTS `plan_aliment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_aliment` (
  `id_Plan_Aliment` int NOT NULL,
  `meta_cliente` varchar(20) NOT NULL,
  `day_1` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day_2` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day_3` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day_4` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day_5` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_Plan_Aliment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_aliment`
--

LOCK TABLES `plan_aliment` WRITE;
/*!40000 ALTER TABLE `plan_aliment` DISABLE KEYS */;
INSERT INTO `plan_aliment` VALUES (1,'Adaptación','Desayuno: Avena cocida con leche entera, miel y frutas.\r\nSnack a Media Mañana: Un puñado de frutos secos y un batido de proteínas con leche entera y frutas. \r\nAlmuerzo: Pechuga de pollo a la parrilla, quinoa y verduras asadas.\r\nSnack de la Tarde: Manzana con mantequilla de almendra.\r\nCena: Salmón al horno, batata asada y ensalada verde.\r\nSnack Nocturno: Requesón con uvas.','Desayuno: Tostadas integrales con aguacate y huevo.\r\nSnack a Media Mañana: Yogur natural con frutas.\r\nAlmuerzo: Lentejas cocidas, arroz integral y brócoli.\r\nSnack de la Tarde: Pera con mantequilla de cacahuate.\r\nCena: Pollo a la parrilla, quinoa y espárragos.\r\nSnack Nocturno: Queso cottage con bayas.','Desayuno: Batido de proteínas con plátano y avena.\r\nSnack a Media Mañana: Frutas y nueces.\r\nAlmuerzo: Sopa de garbanzos, arroz integral y espinacas.\r\nSnack de la Tarde: Yogur griego con miel.\r\nCena: Tilapia al horno, camote asado y ensalada verde.\r\nSnack Nocturno: Manzana con mantequilla de almendra.','Desayuno: Tortilla de espinacas y queso con aguacate.\r\nSnack a Media Mañana: Batido de proteínas y almendras.\r\nAlmuerzo: Ensalada de pollo, quinoa y aguacate.\r\nSnack de la Tarde: Kiwi con yogur natural.\r\nCena: Salmón a la parrilla, arroz integral y brócoli.\r\nSnack Nocturno: Queso cottage con uvas.','Desayuno: Panqueques de avena con plátano.\r\nSnack a Media Mañana: Taza de requesón con frutas.\r\nAlmuerzo: Pollo al curry con arroz integral y verduras.\r\nSnack de la Tarde: Batido de proteínas con leche entera.\r\nCena: Pescado a la parrilla, batata asada y ensalada.\r\nSnack Nocturno: Yogur griego con nueces.'),(2,'Volumen','Desayuno: Batido de proteínas con leche, plátano y avena.\r\nSnack a Media Mañana: Yogur griego con almendras.\r\nAlmuerzo: Ensalada de pollo a la parrilla, quinoa, aguacate y verduras variadas.\r\nSnack de la Tarde: Batata asada con hummus.\r\nCena: Salmón al horno, arroz integral y espárragos.\r\nSnack Nocturno: Taza de requesón con frutas.','Desayuno: Tostadas integrales con aguacate, huevo pochado y espinacas.\r\nSnack a Media Mañana: Batido de proteínas con leche de almendra y frutas.\r\nAlmuerzo: Pechuga de pavo, batata asada y brócoli.\r\nSnack de la Tarde: Manzana con mantequilla de almendra.\r\nCena: Filete de ternera a la parrilla, quinoa, y ensalada verde.\r\nSnack Nocturno: Queso cottage con nueces.','Desayuno: Omelette de claras de huevo con espinacas, champiñones y queso.\r\nSnack a Media Mañana: Yogur natural con bayas y almendras.\r\nAlmuerzo: Sopa de lentejas, arroz integral y verduras.\r\nSnack de la Tarde: Batata asada con mantequilla de cacahuate.\r\nCena: Trucha al horno, quinoa, y espárragos.\r\nSnack Nocturno: Batido de proteínas con leche entera.','Desayuno: Panqueques de avena con frutas frescas.\r\nSnack a Media Mañana: Taza de requesón con frutas y almendras.\r\nAlmuerzo: Ensalada de atún, garbanzos, aguacate y espinacas.\r\nSnack de la Tarde: Pera con queso cheddar.\r\nCena: Pollo al curry con arroz integral y verduras.\r\nSnack Nocturno: Yogur griego con nueces.','Desayuno: Batido de proteínas con leche, plátano y espinacas.\r\nSnack a Media Mañana: Tortitas de arroz con aguacate y salmón ahumado.\r\nAlmuerzo: Ensalada de camarones, quinoa, y verduras variadas.\r\nSnack de la Tarde: Zanahorias con hummus.\r\nCena: Pechuga de pollo al horno, batata asada y brócoli.\r\nSnack Nocturno: Queso cottage con uvas.'),(3,'Bajar Grasa	','Day 1 - Desayunoss: Avena cocida con rodajas de plátano, Almuerzo: Pechuga de pollo a la parrilla','Day 2 - Desayuno:Batido de proteínas con leche, plátano y espinacas, Almuerzo:  Carne magra (ternera o pavo)','Day 3 -Desayuno:Yogur griego con frutas (fresas, arándanos), Almuerzo:Ensalada de atún con garbanzos, espinacas y tomates','Day 4 - Desayuno: Avena cocida con rodajas de plátano, Almuerzo: Pechuga de pollo a la parrilla','Day 5 - Desayuno:Batido de proteínas con leche, plátano y espinacas, Almuerzo:  Carne magra (ternera o pavo)'),(4,'Bajar de Peso	','Day 1 - Desayuno: Avena cocida con rodajas de plátano, Almuerzo: Pechuga de pollo a la parrilla','Day 2 - Desayuno:Batido de proteínas con leche, plátano y espinacas, Almuerzo:  Carne magra (ternera o pavo)','Day 3 -Desayuno:Yogur griego con frutas (fresas, arándanos), Almuerzo:Ensalada de atún con garbanzos, espinacas y tomates','Day 4 - Desayuno: Avena cocida con rodajas de plátano, Almuerzo: Pechuga de pollo a la parrilla','Day 5 - Desayuno:Batido de proteínas con leche, plátano y espinacas, Almuerzo:  Carne magra (ternera o pavo)');
/*!40000 ALTER TABLE `plan_aliment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutina`
--

DROP TABLE IF EXISTS `rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutina` (
  `id_rutina` int NOT NULL,
  `meta_cliente` varchar(20) NOT NULL,
  `day_1` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day_2` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day_3` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day_4` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day_5` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_rutina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutina`
--

LOCK TABLES `rutina` WRITE;
/*!40000 ALTER TABLE `rutina` DISABLE KEYS */;
INSERT INTO `rutina` VALUES (1,'Adaptación',' Ejercicio 1: Presss de banca (máquina o con barra): 3 series de 10-12 repeticiones.  Ejercicio 2:Fondos en paralelas o máquina de dips: 3 series de 10-12 repeticiones.  Ejercicio 3:Aperturas con mancuernas: 3 series de 12-15 repeticiones.  Ejercicio 4:Extensiones de tríceps en polea alta: 3 series de 12-15 repeticiones.  Ejercicio 5:Fondos en máquina para tríceps: 2 series de 15 repeticiones.',' Ejercicio 1:Pull-ups (dominadas) o pull-downs en polea alta: 3 series de 10-12 repeticiones.  Ejercicio 2:Remo con barra T: 3 series de 12-15 repeticiones.  Ejercicio 3:Peso muerto con barra o mancuernas: 3 series de 10 repeticiones.  Ejercicio 4:Curl de bíceps con barra: 3 series de 12-15 repeticiones.  Ejercicio 5:Curl martillo con mancuernas: 2 series de 15 repeticiones.)',' Ejercicio 1:Sentadillas (pueden ser con peso corporal al principio): 3 series de 12-15 repeticiones.  Ejercicio 2:Prensa de piernas (máquina): 3 series de 10-12 repeticiones.  Ejercicio 3:Extensiones de cuádriceps: 3 series de 12-15 repeticiones.  Ejercicio 4:Curl de piernas (máquina): 3 series de 12-15 repeticiones.  Ejercicio 5:Elevación de talones (gemelos) de pie: 3 series de 15 repeticiones.',' Ejercicio 1:Press militar con barra o mancuernas: 3 series de 10-12 repeticiones.  Ejercicio 2:Elevaciones laterales con mancuernas: 3 series de 12-15 repeticiones.  Ejercicio 3:Pájaros (rear delt fly) con mancuernas: 3 series de 12-15 repeticiones.  Ejercicio 4:Tríceps en polea alta (cuerda): 3 series de 12-15 repeticiones.  Ejercicio 5:Fondos en máquina para tríceps: 2 series de 15 repeticiones.',' Ejercicio 1:Sentadillas: 3 series de 12 repeticiones.  Ejercicio 2:Fondos en paralelas o en máquina: 3 series de 12 repeticiones.  Ejercicio 3:Pull-ups o pull-downs en polea alta: 3 series de 10 repeticiones.  Ejercicio 4:Press de banca con barra o máquina: 3 series de 12 repeticiones.  Ejercicio 5:Plancha abdominal: 3 series de 30 segundos.'),(2,'Volumen',' \r\nEjercicio 1:Sentadillas: 3 series de 12 repeticiones.\r\n  Ejercicio 2:Fondos en paralelas o máquina de dips: 4 series de 8-10 repeticiones.\r\n  Ejercicio 3:Press inclinado con mancuernas: 3 series de 10-12 repeticiones.\r\n  Ejercicio 4:Fondos en máquina de tríceps (peso corporal): 3 series de 12-15 repeticiones.\r\n  Ejercicio 5:Fondos en máquina de tríceps (con peso añadido): 2 series de 10-12 repeticiones.',' \r\n Ejercicio 1: Pull-ups (dominadas) o pull-downs en polea alta: 3 series de 10-12 repeticiones.\r\n Ejercicio 2: Remo con barra T: 3 series de 12-15 repeticiones.\r\n Ejercicio 3:Peso muerto con barra o mancuernas: 3 series de 10 repeticiones.\r\n Ejercicio 4:Curl de bíceps con barra: 3 series de 12-15 repeticiones.\r\n Ejercicio 5:Curl martillo con mancuernas: 2 series de 15 repeticiones.',' \r\n Ejercicio 1:Sentadillas: 4 series de 8-10 repeticiones.\r\n Ejercicio 2:Prensa de piernas (máquina): 4 series de 10-12 repeticiones.\r\n Ejercicio 3:Extensiones de cuádriceps: 3 series de 10-12 repeticiones.\r\n Ejercicio 4:Peso muerto rumano con barra o mancuernas: 3 series de 10 repeticiones.\r\n Ejercicio 5:Elevación de talones (gemelos) de pie: 4 series de 12-15 repeticiones..',' \r\n Ejercicio 1:Press militar con barra: 4 series de 8-10 repeticiones.\r\n Ejercicio 2:Elevaciones laterales con mancuernas: 4 series de 10-12 repeticiones.\r\n Ejercicio 3:Pájaros (rear delt fly) con máquina o cables: 3 series de 12-15 repeticiones.\r\n Ejercicio 4:Tríceps en polea alta (cuerda): 4 series de 10-12 repeticiones.\r\n Ejercicio 5:Fondos en máquina de tríceps (con peso añadido): 3 series de 10-12 repeticiones.',' \r\n Ejercicio 1:Ejercicio 1: Calentamiento general (5-10 minutos de cardio ligero).\r\n Ejercicio 2:Press militar con barra: 4 series de 8-10 repeticiones.\r\n Ejercicio 3:Elevaciones laterales con mancuernas: 4 series de 10-12 repeticiones.\r\n Ejercicio 4:Pájaros (rear delt fly) con máquina o cables: 3 series de 12-15 repeticiones.\r\n Ejercicio 5:Tríceps en polea alta (cuerda): 4 series de 10-12 repeticiones.\r\n Ejercicio 6:Fondos en máquina de tríceps (con peso añadido): 3 series de 10-12 repeticiones.'),(3,'Bajar Grasa','Entrenamiento de Piernas y Tríceps\r\nSentadillas: 3 series de 10-12 repeticiones.\r\nPrensa de piernas (máquina): 3 series de 12-15 repeticiones.\r\nExtensiones de cuádriceps: 3 series de 10-12 repeticiones.\r\nPeso muerto rumano con barra o mancuernas: 3 series de 10 repeticiones.\r\nElevación de talones (gemelos) de pie: 4 series de 12-15 repeticiones.','Pull-ups (dominadas) o pull-downs en polea alta: 3 series de 10-12 repeticiones.\r\nRemo con barra T: 3 series de 12-15 repeticiones.\r\nPeso muerto con barra o mancuernas: 3 series de 10 repeticiones.\r\nCurl de bíceps con barra: 3 series de 12-15 repeticiones.\r\nCurl martillo con mancuernas: 2 series de 15 repeticiones.','Sentadillas: 4 series de 8-10 repeticiones.\r\nPrensa de piernas (máquina): 4 series de 10-12 repeticiones.\r\nExtensiones de cuádriceps: 3 series de 10-12 repeticiones.\r\nPeso muerto rumano con barra o mancuernas: 3 series de 10 repeticiones.\r\nElevación de talones (gemelos) de pie: 4 series de 12-15 repeticiones.','Press militar con barra: 4 series de 8-10 repeticiones.\r\nElevaciones laterales con mancuernas: 4 series de 10-12 repeticiones.\r\nPájaros (rear delt fly) con máquina o cables: 3 series de 12-15 repeticiones.\r\nTríceps en polea alta (cuerda): 4 series de 10-12 repeticiones.\r\nFondos en máquina de tríceps (con peso añadido): 3 series de 10-12 repeticiones.','Calentamiento general (5-10 minutos de cardio ligero).\r\nPress militar con barra: 4 series de 8-10 repeticiones.\r\nElevaciones laterales con mancuernas: 4 series de 10-12 repeticiones.\r\nPájaros (rear delt fly) con máquina o cables: 3 series de 12-15 repeticiones.\r\nTríceps en polea alta (cuerda): 4 series de 10-12 repeticiones.\r\nFondos en máquina de tríceps (con peso añadido): 3 series de 10-12 repeticiones.'),(4,'Bajar de Peso ','Calentamiento (10 minutos): Caminar rápido o hacer bicicleta estática.\r\nCardiovascular (30 minutos): Correr suave, caminar rápido, nadar, o hacer ciclismo.\r\nEntrenamiento de resistencia (pesas ligeras):\r\nSentadillas con el peso del cuerpo: 3 series de 15 repeticiones.\r\nFlexiones de rodillas en máquina: 3 series de 12 repeticiones.\r\nPress de banca con mancuernas ligeros: 3 series de 12 repeticiones.\r\nFondos en máquina de tríceps (peso corporal): 3 series de 15 repeticiones.\r\nElevaciones laterales con mancuernas ligeras: 3 series de 15 repeticiones.','Calentamiento (10 minutos): Ejercicios de movilidad y estiramientos ligeros.\r\nCardiovascular (30 minutos): Elíptica, bicicleta estática o nadar.\r\nEjercicios de flexibilidad (15 minutos): Yoga o estiramientos estáticos para mejorar la movilidad.','Calentamiento (10 minutos): Saltar la cuerda o hacer jumping jacks.\r\nCardiovascular (30 minutos): Caminar en una cinta inclinada, correr o nadar.\r\nEntrenamiento del core:\r\nPlanchas: 3 series de 30 segundos.\r\nCrunches: 3 series de 15 repeticiones.\r\nGiros rusos: 3 series de 15 repeticiones por lado.\r\nSupermans: 3 series de 12 repeticiones.','Calentamiento (10 minutos): Caminar rápido o hacer bicicleta estática.\r\nCardiovascular (30 minutos): Correr suave, caminar rápido, nadar o hacer ciclismo.\r\nEntrenamiento de resistencia (pesas ligeras):\r\nPrensa de piernas en máquina: 3 series de 15 repeticiones.\r\nFondos en paralelas o máquina de dips: 3 series de 12 repeticiones.\r\nCurl de bíceps con mancuernas ligeras: 3 series de 15 repeticiones.\r\nTríceps en polea alta (cuerda): 3 series de 12 repeticiones.','Calentamiento (10 minutos): Ejercicios de movilidad y estiramientos ligeros.\r\nCardiovascular (30 minutos): Elíptica, bicicleta estática o nadar.\r\nEjercicios de flexibilidad (15 minutos): Yoga o estiramientos estáticos para mejorar la movilidad.\r\nRecuerda adaptar la intensidad y la duración de los ejercicios según la capacidad física y las limitaciones individuales. Además, siempre es recomendable consultar con un profesional de la salud antes de comenzar un nuevo programa de ejercicios, especialmente en casos de sobrepeso u obesidad.\r\n\r\n\r\n\r\n\r\n\r\n\r\n');
/*!40000 ALTER TABLE `rutina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL,
  `contraseñausuario` varchar(30) NOT NULL,
  `nombreusuario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellidousuariop` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellidousuariom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (70462372,'123456','Cristian','Javier','Laos'),(73042819,'123456','Rodrigo','Alvarez','Cahuana');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gym'
--

--
-- Dumping routines for database 'gym'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-15  4:26:21
