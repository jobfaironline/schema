DROP TABLE IF EXISTS `certification`;
CREATE TABLE `certification` (
  `id` char(36) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `certification_link` varchar(2048) DEFAULT NULL,
  `attendant_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `certification_attendant_id_fk` (`attendant_id`),
  CONSTRAINT `certification_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `certification` VALUES 
('6a4b9dd0-0fb8-4c51-93f1-b1c10a537a65','ga cung lam','lam cung ga',1999,'acawa','9202b073-f95d-49a5-846b-e1ffe0dc3fc1'),
('dd5fd976-01f9-431b-a9a0-fe758165d4e2','CCNP','Cisco',2018,'cisco.com','fba88e6a-742b-4ffa-9ac7-a8058520957f'),
('e18c7626-7357-4900-ac42-ee44dd955052','esse Excepteur nisi consequat','in amet aliquip',40258320,'fugiat qui consectetur sed','81038a5b-a211-4f0a-aba7-4a869fcf3f26');
