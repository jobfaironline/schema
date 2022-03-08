DROP TABLE IF EXISTS `application`;
CREATE TABLE `application` (
  `id` char(36) NOT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `create_date` bigint DEFAULT NULL,
  `attendant_id` char(36) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `registration_job_position_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cv_attendant_id_fk` (`attendant_id`),
  KEY `application_registration_job_position_fk` (`registration_job_position_id`),
  CONSTRAINT `application_registration_job_position_fk` FOREIGN KEY (`registration_job_position_id`) REFERENCES `registration_job_position` (`id`),
  CONSTRAINT `cv_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `application` VALUES 
('21c0a5f8-2a96-4310-b5f1-eef1356666bb','xin xo con de',1645323163187,'81038a5b-a211-4f0a-aba7-4a869fcf3f26',1,'6f299327-6317-4cae-9fd5-03e27456fa87'),
('25762fd7-9410-48ed-a6ee-6c8b98f5a3a1','xin xo con bo',1645323101352,'81038a5b-a211-4f0a-aba7-4a869fcf3f26',1,'6f299327-6317-4cae-9fd5-03e27456fa87'),
('2993be5e-51f4-4e67-a980-b1038f47022e','string',1645322908735,'81038a5b-a211-4f0a-aba7-4a869fcf3f26',1,'6f299327-6317-4cae-9fd5-03e27456fa87'),
('2c0b7827-0b3c-4dfa-8033-83c9d45a0a1b','xin xo con de',1645328926581,'81038a5b-a211-4f0a-aba7-4a869fcf3f26',1,'6f299327-6317-4cae-9fd5-03e27456fa87'),
('69bbebe6-f11c-426e-bf9e-b87ef1e4850a','xin xo con de',1645324813410,'81038a5b-a211-4f0a-aba7-4a869fcf3f26',1,'6f299327-6317-4cae-9fd5-03e27456fa87'),
('80536bad-7b93-435c-9fcd-743876820c12','string',1645334878824,'81038a5b-a211-4f0a-aba7-4a869fcf3f26',1,'8ffef4cb-0ec9-430e-bae0-3b09da157a38'),
('bbf10a15-5bd3-40c4-877d-e300d1251ff8','xin xo con de',1645328715145,'81038a5b-a211-4f0a-aba7-4a869fcf3f26',1,'6f299327-6317-4cae-9fd5-03e27456fa87');
