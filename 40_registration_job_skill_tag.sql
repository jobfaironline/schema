DROP TABLE IF EXISTS `registration_job_skill_tag`;
CREATE TABLE `registration_job_skill_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `skill_tag_id` int NOT NULL,
  `registration_job_position_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `registration_job_skill_tag_registration_job_fk` (`registration_job_position_id`),
  KEY `registration_job_skill_tag_skill_tag_fk` (`skill_tag_id`),
  CONSTRAINT `registration_job_skill_tag_registration_job_fk` FOREIGN KEY (`registration_job_position_id`) REFERENCES `registration_job_position` (`id`),
  CONSTRAINT `registration_job_skill_tag_skill_tag_fk` FOREIGN KEY (`skill_tag_id`) REFERENCES `skill_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `registration_job_skill_tag` VALUES 
(7,0,'38d23b38-fa4f-4a98-9fd3-63a10d0e7b66'),
(8,1,'38d23b38-fa4f-4a98-9fd3-63a10d0e7b66'),
(9,3,'38d23b38-fa4f-4a98-9fd3-63a10d0e7b66'),
(10,0,'80de1d6e-8d48-4196-8b1e-35636d4ff0df'),
(11,1,'80de1d6e-8d48-4196-8b1e-35636d4ff0df'),
(12,3,'80de1d6e-8d48-4196-8b1e-35636d4ff0df'),
(13,0,'a3b50a97-5121-46a8-9504-d6325f27de34'),
(14,1,'a3b50a97-5121-46a8-9504-d6325f27de34'),
(15,3,'a3b50a97-5121-46a8-9504-d6325f27de34'),
(16,0,'a39144c7-65d3-4955-95e8-a39799e285dc'),
(17,1,'a39144c7-65d3-4955-95e8-a39799e285dc'),
(18,3,'a39144c7-65d3-4955-95e8-a39799e285dc'),
(19,0,'6f299327-6317-4cae-9fd5-03e27456fa87'),
(20,1,'6f299327-6317-4cae-9fd5-03e27456fa87'),
(21,3,'6f299327-6317-4cae-9fd5-03e27456fa87'),
(22,0,'d6ed7db8-0757-4258-80bd-8bf07e6a72f2'),
(23,1,'d6ed7db8-0757-4258-80bd-8bf07e6a72f2'),
(24,3,'d6ed7db8-0757-4258-80bd-8bf07e6a72f2'),
(25,0,'8ffef4cb-0ec9-430e-bae0-3b09da157a38'),
(26,1,'8ffef4cb-0ec9-430e-bae0-3b09da157a38'),
(27,3,'8ffef4cb-0ec9-430e-bae0-3b09da157a38'),
(28,0,'179cc49c-2350-4ade-a812-db2d3cf72985'),
(29,1,'179cc49c-2350-4ade-a812-db2d3cf72985'),
(30,3,'179cc49c-2350-4ade-a812-db2d3cf72985'),
(31,0,'bd97e655-2d59-4124-aa8f-a21d792677a9'),
(32,1,'bd97e655-2d59-4124-aa8f-a21d792677a9'),
(33,3,'bd97e655-2d59-4124-aa8f-a21d792677a9'),
(34,0,'7d052f32-9e5c-4d16-8019-190b8f772928'),
(35,1,'7d052f32-9e5c-4d16-8019-190b8f772928'),
(36,3,'7d052f32-9e5c-4d16-8019-190b8f772928'),
(37,0,'0c7221c2-5511-42c1-8498-025925795d79'),
(38,1,'0c7221c2-5511-42c1-8498-025925795d79'),
(39,3,'0c7221c2-5511-42c1-8498-025925795d79'),
(40,0,'85300e6e-993b-4b11-8f58-638b8d6afa99'),
(41,1,'85300e6e-993b-4b11-8f58-638b8d6afa99'),
(42,3,'85300e6e-993b-4b11-8f58-638b8d6afa99'),
(43,0,'55715887-5f97-4588-adcf-d97897524069'),
(44,1,'55715887-5f97-4588-adcf-d97897524069'),
(45,3,'55715887-5f97-4588-adcf-d97897524069');
