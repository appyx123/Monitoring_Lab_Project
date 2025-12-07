-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: db_monitoring_praktikum
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `mst_asisten`
--

DROP TABLE IF EXISTS `mst_asisten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mst_asisten` (
  `id_asisten` int NOT NULL AUTO_INCREMENT,
  `stambuk` varchar(13) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_asisten` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `angkatan` year DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_kelamin` enum('Pria','Wanita') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `photo_profil` text COLLATE utf8mb4_general_ci,
  `photo_path` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_asisten`),
  UNIQUE KEY `stambuk` (`stambuk`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `mst_asisten_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `mst_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_asisten`
--

LOCK TABLES `mst_asisten` WRITE;
/*!40000 ALTER TABLE `mst_asisten` DISABLE KEYS */;
INSERT INTO `mst_asisten` VALUES (1,'13020200103','Adam Adnan, S.Kom',2020,'Asisten','Pria',2,'public/img/uploads/Adam Adnan.png','public/img/signature/Adam Adnan.png'),(2,'13020200318','As\'syahrin Nanda, S.Kom',2020,'Asisten','Pria',3,'public/img/uploads/fotoProfile.jpeg','public/img/signature/TTDku-As\'syahrinNanda.png'),(3,'13020210048','Ahmad Rendi',2021,'Asisten','Pria',4,'public/img/uploads/Ahmad Rendi.JPG','public/img/signature/Ahmad Rendi.png'),(4,'13020210287','Athar Fathana Rakasyah',2021,'Asisten','Pria',5,'public/img/uploads/Athar Fathana Rakasyah.jpg','TIDAK'),(5,'13020210023','Annisa Pratama Putri',2021,'Asisten','Wanita',6,'public/img/uploads/Annisa Pratama Putri.jpg','public/img/signature/nisa ttd.png'),(6,'13120210008','Muhammad Akbar',2021,'Asisten','Pria',7,'public/img/uploads/Muhammad Akbar.png','public/img/signature/Akbar-removebg-preview.png'),(7,'13120210004','Muhammad Dani Arya Putra',2021,'Asisten','Pria',8,'public/img/uploads/Muhammad Dani Arya Putra.jpg','public/img/signature/arya ttd.png'),(8,'13020210134','Nasrullah',2021,'Asisten','Pria',9,'public/img/uploads/Nasrullah.jpg','public/img/signature/Nasrullah.png'),(9,'13020210205','Naufal Abiyyu Supriadi',2021,'Asisten','Pria',10,'public/img/uploads/Naufal Abiyyu Supriadi.jpg','public/img/signature/Naufal ttd.png'),(10,'13020210242','Nirmala',2021,'Asisten','Wanita',11,'public/img/uploads/Nirmala.jpg','public/img/signature/IMG_20241008_135850_104-removebg-preview.png'),(11,'13020210066','Nurul Azmi',2021,'Asisten','Wanita',12,'public/img/uploads/Nurul Azmi.JPG','public/img/signature/Azmi (1).png'),(12,'13020210053','Imran Afdillah Dahlan',2021,'Asisten','Pria',13,'public/img/uploads/Imran Abdillah.JPG','public/img/signature/Abdillah ttd.png'),(13,'13120210005','Furqon Fatahillah',2021,'Asisten','Pria',14,'public/img/uploads/Furqon Fatahillah.jpg','public/img/signature/Furqon ttd.png'),(14,'13020220227','Ahmad Mufli Ramadhan',2022,'Calon Asisten','Pria',15,'TIDAK','public/img/signature/Ahmad Mufli Ramadhan.png'),(15,'13020220292','Maharani Safwa Andini',2022,'Calon Asisten','Wanita',16,'TIDAK','public/img/signature/Maharani_.png'),(16,'13020220265','Farid Wajdi Mufti',2022,'Calon Asisten','Pria',17,'TIDAK','public/img/signature/Farid Wajdi Mufti.png'),(17,'13020210093','Rahma Puspitasari',2021,'Calon Asisten','Wanita',18,'public/img/uploads/RHM03397.JPG','public/img/signature/Rahma.png'),(18,'13020220301','Julisa',2022,'Calon Asisten','Wanita',19,NULL,'public/img/signature/Julisa ttd.png'),(19,'13020220223','Muhammad Alif Maulana. R',2022,'Calon Asisten','Pria',20,'TIDAK','public/img/signature/Alif.png'),(20,'13020220183','Annisa Uz Zahrah Askar',2022,'Calon Asisten','Wanita',21,'TIDAK','TIDAK'),(21,'13020220081','Wahyu Kadri Rahmat Suat',2022,'Calon Asisten','Pria',22,'public/img/uploads/RHM03414.JPG','public/img/signature/Wahyu ttd.png'),(22,'13020210143','Berlian Septiani',2021,'Calon Asisten','Wanita',23,NULL,'public/img/signature/Berlian Septiani.png'),(23,'13020220323','Dewi Ernita Rahma',2022,'Calon Asisten','Wanita',24,NULL,'public/img/signature/Dewi_Ernita_Rahma.png'),(24,'13020220109','Tazkirah Amaliah',2022,'Calon Asisten','Wanita',25,'public/img/uploads/RHM03395.JPG','public/img/signature/TTD_Tazkirah.png'),(25,'13020220057','Muhammad Afrizaldi Attalah',2022,'Calon Asisten','Pria',26,'TIDAK','public/img/signature/Muhammad Afrizaldi Attalah.png'),(26,'13020200141','Rizal Rahmadani, S.Kom., MCF',2020,'Asisten','Pria',27,NULL,'public/img/signature/Rizal.png');
/*!40000 ALTER TABLE `mst_asisten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_dosen`
--

DROP TABLE IF EXISTS `mst_dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mst_dosen` (
  `id_dosen` int NOT NULL AUTO_INCREMENT,
  `nip` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_dosen` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo_path` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_dosen`),
  UNIQUE KEY `nip` (`nip`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_dosen`
--

LOCK TABLES `mst_dosen` WRITE;
/*!40000 ALTER TABLE `mst_dosen` DISABLE KEYS */;
INSERT INTO `mst_dosen` VALUES (1,'0919027301','Ir. Purnawansyah, S.Kom.,M.Kom., MTA','public/img/signature/Pak Pur (2).PNG'),(2,'0922078101','Ir. Yulita Salim, S.Kom.,M.T., MTA','public/img/signature/yuli.PNG'),(6,'0910126901','Tasrif Hasanuddin, S.Kom., M.Cs.','public/img/signature/tasrif.PNG'),(7,'0428077401','Dr. Ir. Dolly Indra, S.Kom.,M.M.SI., MTA','public/img/signature/Dolly.png'),(8,'0913038506','Ir. Herman, S.Kom.,M.Cs., MTA','TIDAK'),(9,'0931018001','Ir. Abdul Rachman Manga’, S.Kom.,M.T., MTA','TIDAK'),(10,'0920098801','Ir. Huzain Azis, S.Kom.,M.Cs., MTA','public/img/signature/uceng.PNG'),(11,'0917068601','Ir. Dedy Atmajaya, S.Kom.,M.Eng., MTA','TIDAK'),(12,'0911098601','Ir. Farniwati Fattah, S.T.,M.T., MTA','TIDAK'),(13,'0906078701','Mardiyyah Hasnawi, S.Kom.,M.T., MTA','TIDAK'),(14,'0906048205','Lilis Nur Hayati, S.Kom.,M.Eng., MTA','TIDAK'),(15,'0922088701','Siska Anraeni, S.Kom., M.T.','TIDAK'),(16,'0919056501','Ramdan Satra, S.Kom.,M.Kom., MTA','TIDAK'),(17,'0920107601','Ir. Muh. Aliyazid Mude, S.Kom.,M.Kom.','TIDAK'),(18,'0915028503','Irawati, S.Kom.,M.T., MTA','TIDAK'),(19,'0919018501','Ir. St. Hajrah Mansyur, S.Kom.,M.Cs., MTA','TIDAK'),(20,'0926048704','Ir. Syahrul Mubarak Abdullah, S.Kom.,M.Kom., MTA','TIDAK'),(21,'0915068601','Ir. Nia Kurniati, S.Kom.,M.Kom., MTA','TIDAK'),(22,'0924048501','Sugiarti, S.Kom.,M.Kom., MTA.','TIDAK'),(23,'0906128504','Ir. Erick Irawadi Alwi, S.Kom.,M.Eng., MTA','TIDAK'),(24,'0921018902','Lutfi Budi Ilmawan, S.Kom.,M.Cs., MTA','public/img/signature/lutfi.PNG'),(25,'0924069001','Ir. Herdianti, S.Si., M.Eng., MTA','TIDAK'),(26,'0922078801','Fitriyani Umar, S.Si., M.Eng.','TIDAK'),(27,'0922118003','Ir. Lukman Syafie, S.Si., M.Si., MTA','TIDAK'),(28,'0908089202','Andi Ulfah Tenripada, S.Kom., M.Kom.','TIDAK'),(29,'2107057202','Ihwana As’ad, S.Ag., M.Sc., Ph.D., MTA.','TIDAK'),(30,'1302902','Fahmi, S.Kom., M.T','public/img/signature/fahmi.png'),(31,'0908099401','Andi Widya Mufila Gaffar, S.T., M.Kom','TIDAK'),(32,'0911039301','Ramdaniah, S.Kom., M.T., MTA','TIDAK'),(33,'0909029203','Muhammad Arfah Asis, S.Kom., M.T., MTA','TIDAK'),(34,'0924049303','Amaliah Faradibah, S.Kom., M.Kom., MTA., MCF','public/img/signature/paraf amel.jpg'),(35,'0901019302','Dewi Widyawati, S.Kom., M.Kom., MTA','TIDAK'),(37,'130014','Syariful Mujaddid, S.Kom., M.T','TIDAK'),(38,'','Lukman, S.E., M.Acc',NULL);
/*!40000 ALTER TABLE `mst_dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_jurusan`
--

DROP TABLE IF EXISTS `mst_jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mst_jurusan` (
  `id_jurusan` int NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `singkatan_jurusan` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_jurusan`
--

LOCK TABLES `mst_jurusan` WRITE;
/*!40000 ALTER TABLE `mst_jurusan` DISABLE KEYS */;
INSERT INTO `mst_jurusan` VALUES (1,'Teknik Informatika','TI'),(2,'Sistem Informasi','SI');
/*!40000 ALTER TABLE `mst_jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_kelas`
--

DROP TABLE IF EXISTS `mst_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mst_kelas` (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `id_jurusan` int DEFAULT NULL,
  `kelas` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `frekuensi` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `angkatan` year NOT NULL,
  PRIMARY KEY (`id_kelas`),
  KEY `id_jurusan` (`id_jurusan`),
  CONSTRAINT `mst_kelas_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `mst_jurusan` (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_kelas`
--

LOCK TABLES `mst_kelas` WRITE;
/*!40000 ALTER TABLE `mst_kelas` DISABLE KEYS */;
INSERT INTO `mst_kelas` VALUES (1,1,'A1',NULL,2024),(2,1,'A2',NULL,2024),(3,1,'A3',NULL,2024),(4,1,'A4',NULL,2024),(5,1,'A5',NULL,2024),(6,1,'A6',NULL,2024),(7,1,'A7',NULL,2024),(8,1,'A8',NULL,2024),(9,1,'B1',NULL,2024),(10,1,'B2',NULL,2024),(11,1,'B3',NULL,2024),(12,1,'B4',NULL,2024),(13,1,'B5',NULL,2024),(14,1,'D1',NULL,2024),(15,2,'A1',NULL,2024),(16,2,'B1',NULL,2024),(17,1,'A1',NULL,2023),(18,1,'A2',NULL,2023),(19,1,'A3',NULL,2023),(20,1,'A4',NULL,2023),(21,1,'A5',NULL,2023),(22,1,'A6',NULL,2023),(23,1,'A7',NULL,2023),(24,1,'A8',NULL,2023),(25,1,'A9',NULL,2023),(26,1,'A10',NULL,2023),(27,1,'B1',NULL,2023),(28,1,'B2',NULL,2023),(29,1,'B3',NULL,2023),(30,1,'B4',NULL,2023),(31,1,'C1',NULL,2023),(32,1,'D1',NULL,2023),(33,2,'A1',NULL,2023),(34,2,'B1',NULL,2023),(35,2,'D1',NULL,2023),(36,1,'A1',NULL,2022),(37,1,'A2',NULL,2022),(38,1,'A3',NULL,2022),(39,1,'A4',NULL,2022),(40,1,'A5',NULL,2022),(41,1,'A6',NULL,2022),(42,1,'A7',NULL,2022),(43,1,'A8',NULL,2022),(44,1,'B1',NULL,2022),(45,1,'B2',NULL,2022),(46,1,'B3',NULL,2022),(47,1,'B4',NULL,2022),(48,1,'B5',NULL,2022),(49,1,'C1',NULL,2022),(50,1,'D1',NULL,2022),(51,2,'A1',NULL,2022),(52,2,'B1',NULL,2022),(53,2,'D1',NULL,2022),(54,1,'C2',NULL,2021);
/*!40000 ALTER TABLE `mst_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_matakuliah`
--

DROP TABLE IF EXISTS `mst_matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mst_matakuliah` (
  `id_matkul` int NOT NULL AUTO_INCREMENT,
  `kode_matkul` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_matkul` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `singkatan` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `semester` enum('GANJIL','GENAP') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sks` int DEFAULT NULL,
  `id_jurusan` int DEFAULT NULL,
  PRIMARY KEY (`id_matkul`),
  UNIQUE KEY `kode_matkul` (`kode_matkul`),
  KEY `id_jurusan` (`id_jurusan`),
  CONSTRAINT `mst_matakuliah_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `mst_jurusan` (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_matakuliah`
--

LOCK TABLES `mst_matakuliah` WRITE;
/*!40000 ALTER TABLE `mst_matakuliah` DISABLE KEYS */;
INSERT INTO `mst_matakuliah` VALUES (1,'1303PPA104','Pengantar Teknologi Informasi','PTI','GANJIL',3,1),(2,'1303PPA105','Algoritma dan Pemrograman 1','ALPRO1','GANJIL',3,1),(3,'1303PPA302','Struktur Data','SD','GANJIL',3,1),(4,'1303PPA304','Basis Data II','BD2','GANJIL',3,1),(5,'1303KKA504','Microcontroller ','MICRO','GANJIL',3,1),(6,'1303KKA713','Pemrograman Mobile','MOBILE','GANJIL',3,1),(7,'1313KKB107','Algoritma Pemrograman','ALPRO','GANJIL',3,2),(8,'1313KKB109','Sistem dan Teknologi Informasi ','STI','GANJIL',3,2),(9,'1313KKB304','Jaringan Komputer','JARKOM','GANJIL',3,2),(10,'1313KKB306','Pemrograman Web','WEB','GANJIL',3,2),(11,'1313KKB309','Basis Data II','BD2','GANJIL',3,2),(12,'1313KKB503','Sistem Operasi','SO','GANJIL',3,2),(13,'1313PPB507','Aplikasi Akuntansi','AA','GANJIL',3,2),(14,'1303KKA203','Elektronika Dasar','ELEKTRO','GENAP',3,1),(15,'1303PPA205','Algoritma & Pemrograman 2','ALPRO2','GENAP',3,1),(16,'1303PPA207','Basis Data I','BD1','GENAP',3,1),(17,'1303KKA403','Pemrograman Berorientasi Objek','PBO','GENAP',3,1),(18,'1303KKA407','Jaringan Komputer','JARKOM','GENAP',3,1),(19,'1303KKA408','Pemrograman Web','WEB','GENAP',3,1),(20,'1313KKB204','Basis Data I ','BD1','GENAP',3,2),(21,'1313KKB205','Algoritma & Struktur Data ','ASD','GENAP',3,2),(22,'1313KKB401','Pemrograman Berorientasi Objek','PBO','GENAP',3,2),(23,'1313KKB402','Desain Grafis ','DG','GENAP',3,2),(24,'1313KKB407','Pemrograman Mobile ','MOBILE','GENAP',3,2),(25,'1313KKB604','Multimedia System','MS','GENAP',3,2);
/*!40000 ALTER TABLE `mst_matakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_ruangan`
--

DROP TABLE IF EXISTS `mst_ruangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mst_ruangan` (
  `id_ruangan` int NOT NULL AUTO_INCREMENT,
  `nama_ruangan` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_ruangan`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_ruangan`
--

LOCK TABLES `mst_ruangan` WRITE;
/*!40000 ALTER TABLE `mst_ruangan` DISABLE KEYS */;
INSERT INTO `mst_ruangan` VALUES (1,'Laboratorium IoT'),(2,'Laboratorium StartUp'),(3,'Laboratorium Data Science'),(4,'Laboratorium Computer Vision'),(5,'Laboratorium Computer Network'),(6,'Laboratorium Multimedia'),(7,'Laboratorium Microcontroller'),(8,'Laboratorium Riset 1'),(9,'Laboratorium Riset 2'),(10,'Laboratorium Riset 3');
/*!40000 ALTER TABLE `mst_ruangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_tahun_ajaran`
--

DROP TABLE IF EXISTS `mst_tahun_ajaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mst_tahun_ajaran` (
  `id_tahun` int NOT NULL AUTO_INCREMENT,
  `tahun_ajaran` varchar(9) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_tahun_ajaran`
--

LOCK TABLES `mst_tahun_ajaran` WRITE;
/*!40000 ALTER TABLE `mst_tahun_ajaran` DISABLE KEYS */;
INSERT INTO `mst_tahun_ajaran` VALUES (1,'2023/2024'),(2,'2024/2025'),(3,'2025/2026'),(4,'2026/2027'),(5,'2027/2028'),(6,'2028/2029'),(7,'2029/2030');
/*!40000 ALTER TABLE `mst_tahun_ajaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_user`
--

DROP TABLE IF EXISTS `mst_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mst_user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_user`
--

LOCK TABLES `mst_user` WRITE;
/*!40000 ALTER TABLE `mst_user` DISABLE KEYS */;
INSERT INTO `mst_user` VALUES (1,'Fatima A.R. Tuasamu','admin@gmail.com','admin12345','Admin'),(2,'Adam Adnan','adnan100701@gmail.com','iclabs-umi','Asisten'),(3,'As\'syahrin Nanda','syahrinnanda@gmail.com','sahrin1sahrin','Asisten'),(4,'Ahmad Rendi','ahmadrendiajah@gmail.com','iclabs-umi','Asisten'),(5,'Athar Fathana Rakasyah','atharfathanarakasyah.iclabs@umi.ac.id','iclabs-umi','Asisten'),(6,'Annisa Pratama Putri','ichaicha.iic63@gmail.com','iclabs-umi','Asisten'),(7,'Muhammad Akbar','muhakbar1141@gmail.com','iclabs-umi','Asisten'),(8,'Muhammad Dani Arya Putra','daniaryap01@gmail.com','danimkz01','Asisten'),(9,'Nasrullah','nasrullah.iclabs@umi.ac.id','iclabs-umi','Asisten'),(10,'Naufal Abiyyu Supriadi','naufal.supriadi02@gmail.com','iclabs-umi','Asisten'),(11,'Nirmala','malaaaanir.iclabs@umi.ac.id','Mala0404','Asisten'),(12,'Nurul Azmi','nrl.azmi160103@gmail.com','iclabs-umi-ami','Asisten'),(13,'Imran Afdillah Dahlan','imranafdillah9c@gmail.com','iclabs-umi','Asisten'),(14,'Furqon Fatahillah','furqonfatahillah999@gmail.com','iclabs-umi','Asisten'),(15,'Ahmad Mufli Ramadhan','Laxmiwatimaani@gmail.com','iclabs-umi','Asisten'),(16,'Maharani Safwa Andini','maharanisafwandini@gmail.com','iclabs-umi','Asisten'),(17,'Farid Wajdi Mufti','faridwajedi.m@gmail.com','iclabs-umi','Asisten'),(18,'Rahma Puspitasari','rahma86788@gmail.com','iclabs-umi','Asisten'),(19,'Julisa','julisabahtiar77@gmail.com','iclabs-umi','Asisten'),(20,'Muhammad Alif Maulana. R','muhalif.maulana17@gmail.com','iclabs-umi','Asisten'),(21,'Annisa Uz Zahrah Askar','annisauzzahrahaskar@gmail.com','iclabs-umi','Asisten'),(22,'Wahyu Kadri Rahmat Suat','wahyusuat101@gmail.com','iclabs-umi','Asisten'),(23,'Berlian Septiani','berliansptn@gmail.com','iclabs-umi','Asisten'),(24,'Dewi Ernita Rahma','dewiernitarahma@gmail.com','iclabs-umi','Asisten'),(25,'Tazkirah Amaliah','tazkirah1804@gmail.com','iclabs-umi','Asisten'),(26,'Muhammad Afrizaldi Attalah','Dedeaftrizaldi1003@gmail.com','iclabs-umi','Asisten'),(27,'Rizal Rahmadani','13020200141@umi.ac.id','iclabs-umi','Asisten');
/*!40000 ALTER TABLE `mst_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trs_frekuensi`
--

DROP TABLE IF EXISTS `trs_frekuensi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trs_frekuensi` (
  `id_frekuensi` int NOT NULL AUTO_INCREMENT,
  `id_jurusan` int DEFAULT NULL,
  `id_matkul` int DEFAULT NULL,
  `frekuensi` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_tahun` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `hari` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `id_ruangan` int DEFAULT NULL,
  `id_dosen` int DEFAULT NULL,
  `id_asisten1` int DEFAULT NULL,
  `id_asisten2` int DEFAULT NULL,
  PRIMARY KEY (`id_frekuensi`),
  KEY `id_jurusan` (`id_jurusan`),
  KEY `id_matkul` (`id_matkul`),
  KEY `id_tahun` (`id_tahun`),
  KEY `id_kelas` (`id_kelas`),
  KEY `id_ruangan` (`id_ruangan`),
  KEY `id_dosen` (`id_dosen`),
  KEY `id_asisten1` (`id_asisten1`),
  KEY `id_asisten2` (`id_asisten2`),
  CONSTRAINT `trs_frekuensi_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `mst_jurusan` (`id_jurusan`),
  CONSTRAINT `trs_frekuensi_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `mst_matakuliah` (`id_matkul`),
  CONSTRAINT `trs_frekuensi_ibfk_3` FOREIGN KEY (`id_tahun`) REFERENCES `mst_tahun_ajaran` (`id_tahun`),
  CONSTRAINT `trs_frekuensi_ibfk_4` FOREIGN KEY (`id_kelas`) REFERENCES `mst_kelas` (`id_kelas`),
  CONSTRAINT `trs_frekuensi_ibfk_5` FOREIGN KEY (`id_ruangan`) REFERENCES `mst_ruangan` (`id_ruangan`),
  CONSTRAINT `trs_frekuensi_ibfk_6` FOREIGN KEY (`id_dosen`) REFERENCES `mst_dosen` (`id_dosen`),
  CONSTRAINT `trs_frekuensi_ibfk_7` FOREIGN KEY (`id_asisten1`) REFERENCES `mst_asisten` (`id_asisten`),
  CONSTRAINT `trs_frekuensi_ibfk_8` FOREIGN KEY (`id_asisten2`) REFERENCES `mst_asisten` (`id_asisten`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trs_frekuensi`
--

LOCK TABLES `trs_frekuensi` WRITE;
/*!40000 ALTER TABLE `trs_frekuensi` DISABLE KEYS */;
INSERT INTO `trs_frekuensi` VALUES (2,1,1,'TI_PTI-1',2,1,'Sabtu','07:00:00','09:30:00',2,27,8,5),(3,1,1,'TI_PTI-2',2,2,'Sabtu','07:00:00','09:30:00',1,27,7,15),(4,1,1,'TI_PTI-3',2,3,'Jumat','15:40:00','18:10:00',2,22,7,23),(5,1,1,'TI_PTI-4',2,4,'Jumat','15:40:00','18:10:00',1,22,6,25),(6,1,1,'TI_PTI-5',2,5,'Jumat','13:00:00','15:30:00',2,27,7,13),(7,1,1,'TI_PTI-6',2,6,'Jumat','13:00:00','15:30:00',1,27,2,21),(8,1,1,'TI_PTI-7',2,7,'Selasa','07:00:00','09:30:00',2,29,3,14),(9,1,1,'TI_PTI-8',2,8,'Selasa','15:40:00','18:10:00',3,27,1,21),(10,1,1,'TI_PTI-9',2,9,'Sabtu','13:00:00','15:30:00',2,29,6,10),(11,1,1,'TI_PTI-10',2,10,'Sabtu','13:00:00','15:30:00',1,29,5,19),(12,1,1,'TI_PTI-11',2,11,'Sabtu','09:40:00','12:10:00',2,22,11,15),(13,1,1,'TI_PTI-12',2,12,'Sabtu','09:40:00','12:10:00',1,22,13,25),(14,1,1,'TI_PTI-13',2,13,'Selasa','15:40:00','18:10:00',4,27,9,10),(15,1,2,'TI_ALPRO1-1',2,1,'Selasa','13:00:00','15:30:00',2,24,9,5),(16,1,2,'TI_ALPRO1-2',2,2,'Selasa','13:00:00','15:30:00',1,24,2,23),(17,1,2,'TI_ALPRO1-3',2,3,'Selasa','15:40:00','18:10:00',2,15,8,14),(18,1,2,'TI_ALPRO1-4',2,4,'Selasa','15:40:00','18:10:00',1,15,11,25),(19,1,2,'TI_ALPRO1-5',2,5,'Senin','09:40:00','12:10:00',2,15,3,25),(20,1,2,'TI_ALPRO1-6',2,6,'Senin','09:40:00','12:10:00',1,15,8,18),(21,1,2,'TI_ALPRO1-7',2,7,'Jumat','09:40:00','12:10:00',2,10,6,23),(22,1,2,'TI_ALPRO1-8',2,8,'Jumat','09:40:00','12:10:00',1,10,13,5),(23,1,2,'TI_ALPRO1-9',2,9,'Rabu','13:00:00','15:30:00',2,10,10,21),(24,1,2,'TI_ALPRO1-10',2,10,'Rabu','13:00:00','15:30:00',1,10,6,18),(25,1,2,'TI_ALPRO1-11',2,11,'Rabu','15:40:00','18:10:00',2,15,13,17),(26,1,2,'TI_ALPRO1-12',2,12,'Rabu','15:40:00','18:10:00',1,15,7,21),(27,1,2,'TI_ALPRO1-13',2,13,'Jumat','15:40:00','18:10:00',4,10,10,17),(28,1,3,'TI_SD-1',2,17,'Rabu','09:40:00','12:10:00',4,24,5,14),(29,1,3,'TI_SD-2',2,18,'Rabu','09:40:00','12:10:00',3,24,12,16),(30,1,3,'TI_SD-3',2,19,'Kamis','07:00:00','09:30:00',4,24,3,15),(31,1,3,'TI_SD-4',2,20,'Kamis','07:00:00','09:30:00',3,24,11,12),(32,1,3,'TI_SD-5',2,21,'Senin','13:00:00','15:30:00',4,37,2,14),(33,1,3,'TI_SD-6',2,22,'Senin','15:40:00','18:10:00',4,37,26,8),(34,1,3,'TI_SD-7',2,23,'Senin','13:00:00','15:30:00',3,37,5,17),(35,1,3,'TI_SD-8',2,24,'Senin','15:40:00','18:10:00',3,37,11,19),(36,1,3,'TI_SD-9',2,25,'Sabtu','09:40:00','12:10:00',4,34,3,23),(37,1,3,'TI_SD-10',2,26,'Sabtu','09:40:00','12:10:00',3,34,6,16),(38,1,3,'TI_SD-11',2,27,'Selasa','07:00:00','09:30:00',4,32,8,25),(39,1,3,'TI_SD-12',2,28,'Selasa','07:00:00','21:30:00',3,32,2,19),(40,1,3,'TI_SD-13',2,29,'Rabu','13:00:00','15:30:00',4,32,8,14),(41,1,3,'TI_SD-14',2,30,'Rabu','13:00:00','15:30:00',3,32,26,11),(42,1,3,'TI_SD-10',2,32,'Sabtu','09:40:00','12:10:00',3,34,6,16),(43,1,4,'TI_BD2-1',2,17,'Selasa','13:00:00','15:30:00',4,34,10,18),(44,1,5,'TI_MICRO-1',2,36,'Jumat','07:00:00','09:30:00',7,33,26,9),(45,1,4,'TI_BD2-2',2,18,'Selasa','13:00:00','15:30:00',3,34,26,17),(46,1,4,'TI_BD2-3',2,19,'Selasa','09:40:00','12:10:00',4,34,6,3),(47,1,5,'TI_MICRO-2',2,37,'Jumat','09:40:00','12:10:00',7,33,3,12),(48,1,4,'TI_BD2-4',2,20,'Selasa','09:40:00','12:10:00',3,34,26,13),(49,1,4,'TI_BD2-5',2,21,'Rabu','07:00:00','09:30:00',4,34,10,13),(50,1,4,'TI_BD2-6',2,22,'Rabu','07:00:00','09:30:00',3,34,7,21),(51,1,4,'TI_BD2-7',2,23,'Rabu','15:40:00','18:10:00',4,28,2,23),(52,1,4,'TI_BD2-8',2,24,'Rabu','15:40:00','18:10:00',3,28,12,18),(53,1,4,'TI_BD2-9',2,25,'Kamis','09:40:00','12:10:00',4,34,1,5),(54,1,4,'TI_BD2-10',2,26,'Rabu','07:00:00','21:30:00',1,11,2,25),(55,1,4,'TI_BD2-11',2,27,'Jumat','07:00:00','09:30:00',2,11,11,15),(56,1,4,'TI_BD2-12',2,28,'Jumat','07:00:00','09:30:00',1,11,2,3),(57,1,4,'TI_BD2-13',2,29,'Rabu','09:40:00','12:10:00',1,11,2,3),(58,1,4,'TI_BD2-14',2,30,'Rabu','07:00:00','09:30:00',2,11,8,17),(59,1,4,'TI_BD2-15',2,31,'Sabtu','15:40:00','18:10:00',4,8,10,15),(60,1,4,'TI_BD2-15',2,32,'Sabtu','15:40:00','18:10:00',4,8,10,15),(61,1,5,'TI_MICRO-3',2,38,'Sabtu','13:00:00','15:30:00',7,33,26,21),(62,1,5,'TI_MICRO-4',2,39,'Kamis','07:00:00','21:30:00',7,33,1,22),(63,1,5,'TI_MICRO-5',2,40,'Jumat','13:00:00','15:30:00',7,31,26,1),(64,1,5,'TI_MICRO-6',2,41,'Jumat','15:40:00','18:10:00',7,31,9,22),(65,1,5,'TI_MICRO-7',2,42,'Rabu','09:40:00','12:10:00',7,6,1,22),(66,1,5,'TI_MICRO-8',2,43,'Rabu','07:00:00','09:30:00',7,6,26,9),(67,1,5,'TI_MICRO-9',2,44,'Selasa','07:00:00','09:30:00',7,31,1,22),(68,1,5,'TI_MICRO-10',2,45,'Selasa','09:40:00','12:10:00',7,31,9,22),(69,1,5,'TI_MICRO-11',2,46,'Senin','09:40:00','12:10:00',7,31,1,22),(70,1,5,'TI_MICRO-12',2,47,'Kamis','13:00:00','15:30:00',7,31,9,11),(71,1,5,'TI_MICRO-13',2,48,'Senin','07:00:00','09:30:00',7,31,9,17),(72,1,5,'TI_MICRO-14',2,49,'Sabtu','09:40:00','12:10:00',7,31,9,22),(73,1,6,'TI_MOBILE-1',2,54,'Kamis','09:40:00','12:10:00',5,24,26,26),(74,1,6,'TI_MOBILE-1',2,54,'Kamis','09:40:00','12:10:00',5,24,26,26),(75,2,7,'SI_ALPRO-1',2,15,'Kamis','07:00:00','09:30:00',2,19,6,13),(76,2,7,'SI_ALPRO-2',2,16,'Kamis','07:00:00','21:30:00',1,19,13,16),(77,2,8,'SI_STI-1',2,15,'Sabtu','15:40:00','18:10:00',2,7,8,7),(78,2,8,'SI_STI-2',2,16,'Sabtu','15:40:00','18:10:00',1,7,12,11),(79,2,9,'SI_JARKOM-1',2,33,'Selasa','09:40:00','12:10:00',6,30,12,18),(80,2,9,'SI_JARKOM-2',2,34,'Selasa','15:40:00','18:10:00',6,30,12,19),(81,2,10,'SI_WEB-1',2,33,'Kamis','09:40:00','12:10:00',1,8,8,16),(82,2,10,'SI_WEB-2',2,34,'Kamis','09:40:00','12:10:00',2,8,2,23),(83,2,11,'SI_BD2-1',2,33,'Kamis','15:40:00','18:10:00',1,28,3,11),(84,2,11,'SI_BD2-2',2,34,'Kamis','15:40:00','18:10:00',2,28,10,19),(85,2,12,'SI_SO-1',2,51,'Kamis','13:00:00','15:30:00',4,33,7,19),(86,2,12,'SI_SO-2',2,52,'Kamis','13:00:00','15:30:00',3,33,6,5),(87,2,13,'SI_AA-1',2,51,'Senin','15:40:00','18:10:00',2,38,7,18),(88,2,13,'SI_AA-2',2,52,'Senin','15:40:00','18:10:00',1,38,10,15);
/*!40000 ALTER TABLE `trs_frekuensi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trs_mentoring`
--

DROP TABLE IF EXISTS `trs_mentoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trs_mentoring` (
  `id_mentoring` int NOT NULL AUTO_INCREMENT,
  `id_frekuensi` int DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `uraian_materi` text COLLATE utf8mb4_general_ci,
  `uraian_tugas` text COLLATE utf8mb4_general_ci,
  `hadir` int DEFAULT NULL,
  `alpa` int DEFAULT NULL,
  `status_dosen` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_asisten1` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_asisten2` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_asisten_pengganti` int DEFAULT NULL,
  PRIMARY KEY (`id_mentoring`),
  KEY `id_frekuensi` (`id_frekuensi`),
  KEY `id_asisten_pengganti` (`id_asisten_pengganti`),
  CONSTRAINT `trs_mentoring_ibfk_1` FOREIGN KEY (`id_frekuensi`) REFERENCES `trs_frekuensi` (`id_frekuensi`),
  CONSTRAINT `trs_mentoring_ibfk_2` FOREIGN KEY (`id_asisten_pengganti`) REFERENCES `mst_asisten` (`id_asisten`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trs_mentoring`
--

LOCK TABLES `trs_mentoring` WRITE;
/*!40000 ALTER TABLE `trs_mentoring` DISABLE KEYS */;
INSERT INTO `trs_mentoring` VALUES (1,7,'2024-09-28','Pengenalan Komponen PC','Tugas Merakit PC',20,5,'Hadir','Hadir','Hadir',NULL),(2,32,'2024-10-07','Penggunaan Array dan Struct','Tugas penduhuan \r\nMengetahui apa itu stact dan queue',24,4,'Hadir','Hadir','Hadir',NULL),(3,87,'2024-10-07','Pengenalan Aplikasi Sidek','-',12,8,'Hadir','Hadir','Hadir',NULL),(4,88,'2024-10-07','Pengenalan Aplikasi Sidek,\r\nPenjelasan terkait langkah-langkah pengisian disetiap menu yang ada di aplikasi\r\n','-',18,2,'Hadir','Hadir',NULL,22),(5,35,'2024-10-07','Array and Struct','Tugas Pendahulian I, Tugas Evaluasi Praktikum I',14,6,'Hadir','Hadir','Hadir',NULL),(6,33,'2024-10-07','Array and Struct','Tugas Pendahuluan I\r\nTugas Evaluasi Praktikum I',22,5,'Hadir','Hadir','Hadir',NULL),(7,46,'2024-10-08','Relationship(ERD), DDL','Pengenalan Penggunaan Workbench\r\nStudi Kasus membuat database apotek',12,7,'Hadir','Hadir','Hadir',NULL),(8,38,'2024-10-08','Stack','1. Studi Kasus\r\n2. Tugas Evaluasi 1',25,2,'Hadir','Hadir','Hadir',NULL),(9,48,'2024-10-08','membuat database dan tabel menggunakan MySql Workbench dan insert data','Tugas evaluasi praktikum 1',15,9,'Hadir','Hadir','Hadir',NULL),(10,34,'2024-10-07','struktur pemrograman pada c++','TP1 stack dan queu dan konsep FIFO dan LIFO',21,3,'Hadir','Hadir','Hadir',NULL),(11,68,'2024-10-08','tinkercard, push-button & Buzzer','mengerjakan kegiatan praktikum dan soal kasus materi dosen, pemberian tugas tinkercard untuk dikerja dirumah',21,3,'Hadir','Hadir','Hadir',NULL),(12,43,'2024-10-08','Modul 1 ERD dan DLL serta pengenalan aplikasi Workbench','Studi Kasus Modul 1 dan Evaluasi Praktikum 1',21,3,'Hadir','Hadir','Hadir',NULL),(13,45,'2024-10-08','Relationship (ERD), DDL','membuat database dan membuat tabel yang saling berelasi',22,2,'Hadir','Hadir','Hadir',NULL),(14,39,'2024-10-08','Pengimplementasian kode stack\r\n- pop\r\n- push\r\n- create stack\r\n- clear stack','Tugas Evaluasi \r\n- menginputkan kalimat Struktur Data menggunakan Stack\r\n- outputnya ataD rutkurtS',23,1,'Hadir','Hadir','Hadir',NULL),(15,50,'2024-10-09','Relationship (ERD) dan DDL. (Modul 1)','Mengerjakan kegiatan praktikum, yakni membuat schema database sekaligus menginput data ke 2 tabel di database',19,5,'Hadir','Hadir','Hadir',NULL),(16,29,'2024-10-09','Materi mengenai tentang Double Linked List ','Tugas yang dikerjakan yaitu membuat program stack dan queue',14,7,'Hadir','Hadir','Hadir',NULL),(17,49,'2024-10-09','Modul 1 ERD dan DLL serta pengenalan aplikasi Workbench','Evaluasi Praktikum Modul 1',22,3,'Hadir','Hadir','Hadir',NULL),(18,28,'2024-10-09','double linklist','Tugas Evaluasi stuck and queu',21,2,'Hadir',NULL,'Hadir',NULL),(19,40,'2024-10-09','Stack','1. Pengerjaan Studi Kasus\r\n2. Tugas Evaluasi Praktikum I',24,0,'Hadir','Hadir','Hadir',NULL),(20,66,'2024-10-09','Pertemuan 5 : Push Button & Buzzer','merancang dengan komponen push button dan buzzer',24,3,'Hadir','Hadir','Hadir',NULL),(21,65,'2024-10-09',' Simulator\r\n Tinkercad\r\n Penggunaan Tinkercad\r\n Soal Kasus','Merangkai Led berdasarkan tugas praktikum dan studi kasus',15,9,'Hadir','Hadir','Hadir',NULL),(22,41,'2024-10-09','Stack','Pengerjaan Studi Kasus Dan Tugas Evaluasi Praktikum I',20,0,'Hadir','Hadir','Hadir',NULL),(23,41,'2024-10-09','Stack','Pengerjaan Studi Kasus Dan Tugas Evaluasi Praktikum I',20,0,'Hadir','Hadir','Hadir',NULL),(24,67,'2024-10-08','Switch\r\nPush Button\r\n Buzzer','Merangkai push button, buzzer sesuai tugas praktikum dan studi kasus',24,1,'Hadir','Hadir','Hadir',NULL),(25,30,'2024-10-10','Stack & Queue','Implementasi program Stack & Queue',13,8,'Hadir','Hadir','Hadir',NULL),(26,53,'2024-10-10','erd, dan ddl','lembar evaluasi praktikum 1, modul 1 mengenai erd dan ddl',16,5,'Hadir','Hadir','Hadir',NULL),(27,70,'2024-10-10','Pertemuan 5 : Push Button dan Buzzer','Tugas Pembuatan rangkaian dengan komponen Push Button dan Buzzer',19,3,'Hadir','Hadir','Hadir',NULL),(28,44,'2024-10-11','Pertemuan 5 : Push-Button & BUzzer','merangkai dengan komponen push-button & buzzer',12,10,'Hadir','Hadir','Hadir',NULL),(29,47,'2024-10-11','pertemuan 5 : Push-Buttom & Buzzer','merangkai menggunakan komponen push button & buzzer',12,10,'Hadir',NULL,'Hadir',9),(30,63,'2024-10-11','Switch\r\nPush Button\r\nBuzzer','Merangkai komponen pushbutton, buzzer, dan led sesuai dengan tugas praktikum dan studi kasus',13,9,'Hadir','Hadir','Hadir',NULL),(31,62,'2024-10-10','Switch Push Button Buzzer','Merangkai komponen pushbutton, buzzer, dan led sesuai dengan tugas praktikum dan studi kasus',5,20,'Hadir','Hadir','Hadir',NULL),(32,64,'2024-10-11','pertemuan 5 menjelaskan penggunaan switch, push button dan buzzer serta bagaimana cara merangkainya. Mengerjakan tugas praktikum 1-4 dan studi kasus','mengerjakan tugas pertemuan 2 dan 3 pada tingkercard',3,14,'Hadir','Hadir','Hadir',NULL),(33,72,'2024-10-12','Pertemuan 5 : Push-Button & Buzzer','merangkai menggunakan komponen push button dan buzzer',7,19,'Hadir','Hadir','Hadir',NULL),(34,36,'2024-10-12','Struct','Membuat  struct di dalam function',13,7,NULL,NULL,'Hadir',1);
/*!40000 ALTER TABLE `trs_mentoring` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-12 14:49:21
