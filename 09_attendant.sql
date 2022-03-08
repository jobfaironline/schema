DROP TABLE IF EXISTS `attendant`;
CREATE TABLE `attendant` (
  `account_id` char(36) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `dob` bigint DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `year_of_exp` float DEFAULT NULL,
  `marital_status` tinyint(1) DEFAULT NULL,
  `country_id` char(36) DEFAULT NULL,
  `residence_id` char(36) DEFAULT NULL,
  `job_level_id` int DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `account_residence_id_fk` (`residence_id`),
  KEY `account_country_id_fk` (`country_id`),
  KEY `attendant_job_level_id_fk` (`job_level_id`),
  CONSTRAINT `account_country_id_fk` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `account_residence_id_fk` FOREIGN KEY (`residence_id`) REFERENCES `residence` (`id`),
  CONSTRAINT `attendant_account_id_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `attendant_job_level_id_fk` FOREIGN KEY (`job_level_id`) REFERENCES `job_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `attendant` VALUES 
('31ba4aff-a7c7-4398-9359-92fe8d305e3c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('3dd5446f-7cfd-4bb9-8fcb-843caf910659',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('3f6eda7f-4c49-4f6c-83b2-a4c72612510a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4b890178-0652-43fb-8ecf-55436fa80fdc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('81038a5b-a211-4f0a-aba7-4a869fcf3f26','adipisicing in','dolore cillum',350610405847,'adipisicing',19.575,1,'05a913e9-f3ab-4d7a-9d99-a4d278fd2d86','1c367c94-b621-4460-b882-0f92d8a4c114',2),
('8c5d4179-ec27-4aea-9b83-dd324fc23f4a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('9202b073-f95d-49a5-846b-e1ffe0dc3fc1','ac','quan 9',1158126421000,'ac',51,0,'61e63e3a-7834-4923-a056-df8e712f36de','55d5b9b9-64d9-454b-88af-308d4073d96b',4),
('fba88e6a-742b-4ffa-9ac7-a8058520957f','DevOps','Ho Chi Minh',1644825972,'DevOps',2,0,'00809d2d-c1f8-4d5c-aee4-53c9c8cac197','54c406e1-ff08-4f3f-a2c7-d45c78863f3c',0);
