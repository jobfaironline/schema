DROP TABLE IF EXISTS `company_benefit`;
CREATE TABLE `company_benefit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `benefit_id` int DEFAULT NULL,
  `company_id` char(36) DEFAULT NULL,
  `description` char(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_benefit_company_id_fk` (`company_id`),
  KEY `company_benefit_benefit_id_fk` (`benefit_id`),
  CONSTRAINT `company_benefit_benefit_id_fk` FOREIGN KEY (`benefit_id`) REFERENCES `benefit` (`id`),
  CONSTRAINT `company_benefit_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `company_benefit` VALUES 
(49,0,'fe99c965-3dc7-4391-9665-1c7c72cce981','$200 a month kindergarten allowance per child under 5 years old'),
(50,1,'fe99c965-3dc7-4391-9665-1c7c72cce981','Lunch and unlimited snacks'),
(51,0,'8e407290-9bdb-4e12-b7d3-d1ffdd1d8479','$200 a month kindergarten allowance per child under 5 years old'),
(52,1,'8e407290-9bdb-4e12-b7d3-d1ffdd1d8479','Lunch and unlimited snacks'),
(53,0,'18def343-36b0-47d8-bf4d-8789f7c48cd1','$200 a month kindergarten allowance per child under 5 years old'),
(54,1,'18def343-36b0-47d8-bf4d-8789f7c48cd1','Lunch and unlimited snacks'),
(55,0,'b337e89c-34f8-4a94-b8b4-ac8cfac41c26','string'),
(56,1,'b337e89c-34f8-4a94-b8b4-ac8cfac41c26','Lunch and unlimited snacks'),
(57,0,'c7ba2ba0-61c5-43a8-978c-920202db39f4','$200 a month kindergarten allowance per child under 5 years old'),
(58,1,'c7ba2ba0-61c5-43a8-978c-920202db39f4','Lunch and unlimited snacks'),
(59,0,'9bc8726f-40ed-45f3-9180-8ef7ce1b7b31','$200 a month kindergarten allowance per child under 5 years old'),
(60,1,'9bc8726f-40ed-45f3-9180-8ef7ce1b7b31','Lunch and unlimited snacks'),
(61,0,'24e2a1b9-f324-4d1e-b933-3887bae79f5c','$200 a month kindergarten allowance per child under 5 years old'),
(62,1,'24e2a1b9-f324-4d1e-b933-3887bae79f5c','Lunch and unlimited snacks'),
(63,0,'1e925b8d-38a3-4fab-b185-29224ca838cc','$200 a month kindergarten allowance per child under 5 years old'),
(64,1,'1e925b8d-38a3-4fab-b185-29224ca838cc','Lunch and unlimited snacks');
