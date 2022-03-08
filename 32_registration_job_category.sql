DROP TABLE IF EXISTS `registration_job_category`;
CREATE TABLE `registration_job_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `registration_job_position_id` char(36) NOT NULL,
  `sub_category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `registration_job_category_registration_job_fk` (`registration_job_position_id`),
  KEY `registration_job_category_sub_category_fk` (`sub_category_id`),
  CONSTRAINT `registration_job_category_registration_job_fk` FOREIGN KEY (`registration_job_position_id`) REFERENCES `registration_job_position` (`id`),
  CONSTRAINT `registration_job_category_sub_category_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `registration_job_category` VALUES 
(5,'38d23b38-fa4f-4a98-9fd3-63a10d0e7b66',3),
(6,'38d23b38-fa4f-4a98-9fd3-63a10d0e7b66',5),
(7,'80de1d6e-8d48-4196-8b1e-35636d4ff0df',3),
(8,'80de1d6e-8d48-4196-8b1e-35636d4ff0df',5),
(9,'a3b50a97-5121-46a8-9504-d6325f27de34',3),
(10,'a3b50a97-5121-46a8-9504-d6325f27de34',5),
(11,'a39144c7-65d3-4955-95e8-a39799e285dc',3),
(12,'a39144c7-65d3-4955-95e8-a39799e285dc',5),
(13,'6f299327-6317-4cae-9fd5-03e27456fa87',3),
(14,'6f299327-6317-4cae-9fd5-03e27456fa87',5),
(15,'d6ed7db8-0757-4258-80bd-8bf07e6a72f2',3),
(16,'d6ed7db8-0757-4258-80bd-8bf07e6a72f2',5),
(17,'8ffef4cb-0ec9-430e-bae0-3b09da157a38',3),
(18,'8ffef4cb-0ec9-430e-bae0-3b09da157a38',5),
(19,'179cc49c-2350-4ade-a812-db2d3cf72985',3),
(20,'179cc49c-2350-4ade-a812-db2d3cf72985',5),
(21,'bd97e655-2d59-4124-aa8f-a21d792677a9',3),
(22,'bd97e655-2d59-4124-aa8f-a21d792677a9',5),
(23,'7d052f32-9e5c-4d16-8019-190b8f772928',3),
(24,'7d052f32-9e5c-4d16-8019-190b8f772928',5),
(25,'0c7221c2-5511-42c1-8498-025925795d79',3),
(26,'0c7221c2-5511-42c1-8498-025925795d79',5),
(27,'85300e6e-993b-4b11-8f58-638b8d6afa99',3),
(28,'85300e6e-993b-4b11-8f58-638b8d6afa99',5),
(29,'55715887-5f97-4588-adcf-d97897524069',3),
(30,'55715887-5f97-4588-adcf-d97897524069',5);
