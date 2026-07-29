-- =====================================================================
-- sdiMain.xfdl 화면 트리에서 사용하는 테이블 구조 (DDL only)
--
--   DB      : edupackdb (MySQL/MariaDB, localhost:3306)
--   추출일  : 2026-07-30
--   추출법  : mysqldump --no-data  (구조만, 실제 데이터 미포함)
--
--   tb_user           : 회원 (로그인/회원가입/라운지 닉네임)
--   tb_notice         : 공지사항
--   tb_lounge_post    : 라운지 게시글
--   tb_lounge_comment : 라운지 댓글
--   tb_book           : 도서 정보
--
--   ※ tbl_* 테이블(교육용 샘플)은 이 화면 트리와 무관하여 제외
-- =====================================================================

﻿
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `USER_ID` varchar(20) NOT NULL,
  `PASS` varchar(20) NOT NULL,
  `USER_NAME` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `TEL_NO` varchar(20) DEFAULT NULL,
  `POST` varchar(50) DEFAULT NULL,
  `ADDR1` varchar(50) DEFAULT NULL,
  `ADDR2` varchar(50) DEFAULT NULL,
  `PROFILE` varchar(50) DEFAULT NULL,
  `REG_DATE` datetime DEFAULT NULL,
  `SEC_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_notice` (
  `NOTICE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(20) NOT NULL,
  `TITLE` varchar(200) NOT NULL,
  `CONTENT` text NOT NULL,
  `REG_DATE` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`NOTICE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COMMENT='공지사항 테이블입니다\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_lounge_post` (
  `POST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOARD_TYPE` varchar(20) NOT NULL,
  `USER_ID` varchar(20) NOT NULL,
  `SEC_NAME` varchar(50) NOT NULL,
  `TITLE` varchar(200) NOT NULL,
  `CONTENT` text NOT NULL,
  `LIKE_CNT` int(11) DEFAULT 0,
  `VIEW_CNT` int(11) DEFAULT 0,
  `REG_DATE` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`POST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_lounge_comment` (
  `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `POST_ID` int(11) NOT NULL,
  `USER_ID` varchar(100) DEFAULT NULL,
  `SEC_NAME` varchar(100) DEFAULT NULL,
  `CONTENT` varchar(500) DEFAULT NULL,
  `REG_DATE` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`COMMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_book` (
  `ISBN` varchar(100) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `AUTHORS` varchar(100) DEFAULT NULL,
  `SALE_PRICE` int(11) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `PUBLISHER` varchar(100) DEFAULT NULL,
  `THUMBNAIL` varchar(200) DEFAULT NULL,
  `URL` varchar(400) DEFAULT NULL,
  `DATETIME` date DEFAULT NULL,
  `CONTENTS` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

