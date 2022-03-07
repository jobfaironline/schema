DROP TABLE IF EXISTS `company_category`;
CREATE TABLE `company_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` char(36) DEFAULT NULL,
  `sub_category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_category_sub_category_id_fk` (`sub_category_id`),
  CONSTRAINT `company_category_sub_category_id_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `company_category` VALUES 
(55,'fe99c965-3dc7-4391-9665-1c7c72cce981',10),
(56,'fe99c965-3dc7-4391-9665-1c7c72cce981',14),
(57,'fe99c965-3dc7-4391-9665-1c7c72cce981',57),
(58,'8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',10),
(59,'8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',14),
(60,'8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',57),
(61,'18def343-36b0-47d8-bf4d-8789f7c48cd1',10),
(62,'18def343-36b0-47d8-bf4d-8789f7c48cd1',14),
(63,'18def343-36b0-47d8-bf4d-8789f7c48cd1',57),
(67,'c7ba2ba0-61c5-43a8-978c-920202db39f4',10),
(68,'c7ba2ba0-61c5-43a8-978c-920202db39f4',14),
(69,'c7ba2ba0-61c5-43a8-978c-920202db39f4',57),
(70,'9bc8726f-40ed-45f3-9180-8ef7ce1b7b31',10),
(71,'9bc8726f-40ed-45f3-9180-8ef7ce1b7b31',14),
(72,'9bc8726f-40ed-45f3-9180-8ef7ce1b7b31',57),
(73,'24e2a1b9-f324-4d1e-b933-3887bae79f5c',10),
(74,'24e2a1b9-f324-4d1e-b933-3887bae79f5c',14),
(75,'24e2a1b9-f324-4d1e-b933-3887bae79f5c',57),
(76,'1e925b8d-38a3-4fab-b185-29224ca838cc',10),
(77,'1e925b8d-38a3-4fab-b185-29224ca838cc',14),
(78,'1e925b8d-38a3-4fab-b185-29224ca838cc',57),
(79,'b3434860-38f0-48c2-9628-a38cae1cfb70',57),
(80,'b3434860-38f0-48c2-9628-a38cae1cfb70',10),
(81,'b3434860-38f0-48c2-9628-a38cae1cfb70',14),
(82,'b337e89c-34f8-4a94-b8b4-ac8cfac41c26',0),
(83,'6d4e3194-d377-439a-92c2-f9c30cd748e6',1);
