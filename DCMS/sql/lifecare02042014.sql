CREATE DATABASE  IF NOT EXISTS `lifecare` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lifecare`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: lifecare
-- ------------------------------------------------------
-- Server version	5.5.33

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
-- Table structure for table `laboratory_investigation`
--

DROP TABLE IF EXISTS `laboratory_investigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratory_investigation` (
  `LaboratoryInvestigationId` int(11) NOT NULL AUTO_INCREMENT,
  `Urine_Sugar` varchar(30) NOT NULL DEFAULT 'ABSENT',
  `Urine_Albumn` varchar(30) NOT NULL DEFAULT 'ABSENT',
  `Urine_Bilharziasis` varchar(30) NOT NULL DEFAULT 'NOT SEEN',
  `Urine_Others` varchar(30) NOT NULL,
  `Stool_Helminthes` varchar(30) NOT NULL,
  `Stool_Bilharziasis` varchar(30) NOT NULL,
  `Stool_Salmonela` varchar(30) NOT NULL,
  `Stool_Shigella` varchar(30) NOT NULL,
  `Stool_VCholera` varchar(30) NOT NULL,
  `Stool_Others` varchar(30) NOT NULL,
  `Blood_Hemoglobin` varchar(30) NOT NULL,
  `Blood_MalariaFilm` varchar(30) NOT NULL DEFAULT 'NOT SEEN',
  `Serology_Hiv` varchar(30) NOT NULL DEFAULT 'NON REACTIVE',
  `Serology_HBAg` varchar(30) NOT NULL DEFAULT 'NON REACTIVE',
  `Serology_AntiHCV` varchar(30) NOT NULL DEFAULT 'NON REACTIVE',
  `Serology_LFT` varchar(30) NOT NULL DEFAULT 'NORMAL',
  `Serology_Urea` varchar(30) NOT NULL,
  `Serology_Creatinine` varchar(30) NOT NULL,
  `Serology_BloodSugarR` varchar(30) NOT NULL,
  `Serology_BloodGroup` varchar(30) NOT NULL,
  `PregnencyTest` char(1) NOT NULL DEFAULT 'N',
  `LMPDate` date NOT NULL,
  `ChestXRay` varchar(30) NOT NULL DEFAULT 'NORMAL',
  `FK_LabInvest` int(10) unsigned NOT NULL,
  PRIMARY KEY (`LaboratoryInvestigationId`),
  KEY `FK_LabInvest_PerDetail_idx` (`FK_LabInvest`),
  CONSTRAINT `FK_LabInvest_PerDetail` FOREIGN KEY (`FK_LabInvest`) REFERENCES `personal_detail` (`PersonalDetailId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medical_examination`
--

DROP TABLE IF EXISTS `medical_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical_examination` (
  `MedicalExaminationId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `VisionRightEye` varchar(10) NOT NULL,
  `VisionLeftEye` varchar(10) NOT NULL,
  `OtherRightEye` varchar(10) NOT NULL DEFAULT 'NAD',
  `OtherLeftEye` varchar(10) NOT NULL DEFAULT 'NAD',
  `RightEar` varchar(10) NOT NULL DEFAULT 'NAD',
  `LeftEar` varchar(10) NOT NULL DEFAULT 'NAD',
  `Hernia` varchar(30) NOT NULL DEFAULT 'NIL',
  `VaricoseVeins` varchar(30) NOT NULL DEFAULT 'NIL',
  `Extremeties` varchar(30) NOT NULL DEFAULT 'NAD',
  `Skin` varchar(30) NOT NULL DEFAULT 'NAD',
  `Hydrocele` varchar(30) NOT NULL DEFAULT 'NIL',
  `BloodPressure` varchar(30) NOT NULL,
  `Heart` varchar(30) NOT NULL DEFAULT 'NAD',
  `Lungs` varchar(30) NOT NULL DEFAULT 'NAD',
  `Abdomen` varchar(30) NOT NULL DEFAULT 'NAD',
  `VRDL` varchar(30) NOT NULL DEFAULT 'NON REACTIVE',
  `TPHA` varchar(30) DEFAULT 'NON REACTIVE',
  `FK_PersonalDetailId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`MedicalExaminationId`),
  KEY `FK_PersonalDetailId_idx` (`MedicalExaminationId`),
  KEY `FK_MedExam_PerDetail` (`FK_PersonalDetailId`),
  CONSTRAINT `FK_MedExam_PerDetail` FOREIGN KEY (`FK_PersonalDetailId`) REFERENCES `personal_detail` (`PersonalDetailId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personal_detail`
--

DROP TABLE IF EXISTS `personal_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_detail` (
  `PersonalDetailId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PassportNo` varchar(45) NOT NULL,
  `DateOfIssue` date NOT NULL,
  `PlaceOfIssue` varchar(45) NOT NULL,
  `PostAppliedFor` varchar(45) NOT NULL,
  `Height` varchar(10) NOT NULL,
  `Weight` varchar(10) NOT NULL,
  `MaritalStatus` char(1) NOT NULL,
  `Sex` char(1) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `AgeInYears` int(11) NOT NULL,
  `CertificateNo` varchar(100) NOT NULL,
  `NameOfCandidate` varchar(100) NOT NULL,
  `ReferenceNo` varchar(50) NOT NULL,
  `ExamDate` date NOT NULL,
  `FK_UserId` int(10) unsigned NOT NULL,
  `CommonRemarks` varchar(60) DEFAULT NULL,
  `CommonResult` varchar(30) DEFAULT NULL,
  `CommonReason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PersonalDetailId`),
  UNIQUE KEY `PassportNo_UNIQUE` (`PassportNo`),
  UNIQUE KEY `CertificateNo_UNIQUE` (`CertificateNo`),
  KEY `FK_PerDet_User_idx` (`FK_UserId`),
  CONSTRAINT `FK_PerDet_User` FOREIGN KEY (`FK_UserId`) REFERENCES `users` (`UsersId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UsersId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UserName` varchar(30) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`UsersId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-02  1:58:16
