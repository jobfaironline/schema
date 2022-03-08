DROP TABLE IF EXISTS `reference`;
CREATE TABLE `reference` (
  `id` char(36) NOT NULL,
  `full_name` varchar(1000) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `company` varchar(1000) DEFAULT NULL,
  `email` varchar(322) DEFAULT NULL,
  `phone_number` char(11) DEFAULT NULL,
  `attendant_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reference_attendant_id_fk` (`attendant_id`),
  CONSTRAINT `reference_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `reference` VALUES 
('3549c69e-cc3f-4d86-9739-fed0fab485a5','awd','awd','aac','ala@gmail.com','0232152362','9202b073-f95d-49a5-846b-e1ffe0dc3fc1'),
('6d47aabf-8195-44bc-a7d9-abb91733161c','cupidatat quis ullamco pa','Lorem','laborum','pariatu@rc.com','0123456789','81038a5b-a211-4f0a-aba7-4a869fcf3f26'),
('722abc9a-efcf-4a33-8b16-192ee3b38190','do incididunt','Excepteur','velit deserunt dolor','phac@gmail.com','0123456789','81038a5b-a211-4f0a-aba7-4a869fcf3f26');
