DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `id` char(36) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `proficiency` int DEFAULT NULL,
  `attendant_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `skill_attendant_id_fk` (`attendant_id`),
  CONSTRAINT `skill_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `skill` VALUES 
('268e50bc-3c98-4ff6-b29a-515691195bbd','ac',4,'9202b073-f95d-49a5-846b-e1ffe0dc3fc1'),
('412fb17a-eb57-4143-b40e-cbcda49fbd05','Sing',1,NULL),
('d21ee0b0-7109-4f57-a109-012a3e0da936','in nostrud nisi',3,'81038a5b-a211-4f0a-aba7-4a869fcf3f26'),
('da2a5a4d-851b-440f-8afe-58cb3bb6020c','Singing abc',2,'fba88e6a-742b-4ffa-9ac7-a8058520957f');
