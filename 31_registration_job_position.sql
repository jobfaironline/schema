DROP TABLE IF EXISTS `registration_job_position`;
CREATE TABLE `registration_job_position` (
  `id` char(36) NOT NULL,
  `title` varchar(100) NOT NULL,
  `contact_person_name` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `requirements` text NOT NULL,
  `min_salary` double NOT NULL,
  `max_salary` double DEFAULT NULL,
  `num_of_position` int NOT NULL,
  `location_id` char(36) DEFAULT NULL,
  `level_id` int NOT NULL,
  `job_type_id` int NOT NULL,
  `preferred_language_id` char(3) NOT NULL,
  `company_registration_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `registration_job_position_job_type_id_fk` (`job_type_id`),
  KEY `registration_job_position_language_id_fk` (`preferred_language_id`),
  KEY `registration_job_position_level_id_fk` (`level_id`),
  KEY `registration_job_position_company_registration_fk` (`company_registration_id`),
  CONSTRAINT `registration_job_position_company_registration_fk` FOREIGN KEY (`company_registration_id`) REFERENCES `company_registration` (`id`),
  CONSTRAINT `registration_job_position_job_type_id_fk` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`id`),
  CONSTRAINT `registration_job_position_language_id_fk` FOREIGN KEY (`preferred_language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `registration_job_position_level_id_fk` FOREIGN KEY (`level_id`) REFERENCES `job_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `registration_job_position` VALUES 
('0c7221c2-5511-42c1-8498-025925795d79','DevOps','Bui Minh Khoi','khoii@apple.com','in','exercitation dolore voluptate',9999,10000,232,NULL,0,0,'vi','46812ac3-04a5-4d45-8d5c-c91f21d7d2c5'),
('179cc49c-2350-4ade-a812-db2d3cf72985','DevOps','Bui Minh Khoi','khoii@apple.com','in','exercitation dolore voluptate',9999,10000,232,NULL,0,0,'vi','aca247f4-3b69-4ed1-8478-dfa323c6191e'),
('38d23b38-fa4f-4a98-9fd3-63a10d0e7b66','Lao cong','Bui Minh Khoi','khoii@apple.com','CEO Job','Have a lot of money',10,1000,10,NULL,0,0,'vi','4c80e774-80da-4101-b6ab-dfe297624fe4'),
('55715887-5f97-4588-adcf-d97897524069','DevOps','Bui Minh Khoi','khoii@apple.com','in','exercitation dolore voluptate',9999,10000,232,NULL,0,0,'vi','78617dc3-6641-4830-8e63-a51b24bb2444'),
('6f299327-6317-4cae-9fd5-03e27456fa87','Lao cong','Bui Minh Khoi','khoii@apple.com','CEO Job','Have a lot of money',10,1000,10,NULL,0,0,'vi','4fa069c3-fc22-4d26-8a54-4df7850e6b19'),
('7d052f32-9e5c-4d16-8019-190b8f772928','DevOps','Bui Minh Khoi','khoii@apple.com','in','exercitation dolore voluptate',9999,10000,232,NULL,0,0,'vi','bc4e30e5-c220-49f8-b6b5-26b6c2d71ffe'),
('80de1d6e-8d48-4196-8b1e-35636d4ff0df','Lao cong','Bui Minh Khoi','khoii@apple.com','CEO Job','Have a lot of money',10,1000,10,NULL,0,0,'vi','4fd9b565-7992-49fd-845f-6ccfdefc8c44'),
('85300e6e-993b-4b11-8f58-638b8d6afa99','DevOps','Bui Minh Khoi','khoii@apple.com','in','exercitation dolore voluptate',9999,10000,232,NULL,0,0,'vi','aef3b3d5-cd45-433f-9acd-83ce4ead174c'),
('8ffef4cb-0ec9-430e-bae0-3b09da157a38','DevOps','Bui Minh Khoi','khoii@apple.com','Success','Master of ABC',100,1000,2,NULL,0,0,'vi','4c80e774-80da-4101-b6ab-dfe297624fe4'),
('a39144c7-65d3-4955-95e8-a39799e285dc','Lao cong','Bui Minh Khoi','khoii@apple.com','CEO Job','Have a lot of money',10,1000,10,NULL,0,0,'vi','c930700d-14f9-413b-aada-a1c3f21a3f80'),
('a3b50a97-5121-46a8-9504-d6325f27de34','Lao cong','Bui Minh Khoi','khoii@apple.com','CEO Job','Have a lot of money',10,1000,10,NULL,0,0,'vi','8c08fcc6-65bd-4986-8284-3c2cbbdc486f'),
('bd97e655-2d59-4124-aa8f-a21d792677a9','DevOps','Bui Minh Khoi','khoii@apple.com','in','exercitation dolore voluptate',9999,10000,232,NULL,0,0,'vi','d53dece8-39e8-4980-83e9-c5f5b03b85ad'),
('d6ed7db8-0757-4258-80bd-8bf07e6a72f2','Lao cong','Bui Minh Khoi','khoii@apple.com','CEO Job','Have a lot of money',10,1000,10,NULL,0,0,'vi','289d72db-ac48-48c7-8df5-22d3d216f1b5');
