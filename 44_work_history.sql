DROP TABLE IF EXISTS `work_history`;
CREATE TABLE `work_history` (
  `id` char(36) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `from_date` bigint DEFAULT NULL,
  `to_date` bigint DEFAULT NULL,
  `is_current_job` tinyint(1) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `attendant_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `work_history_attendant_id_fk` (`attendant_id`),
  CONSTRAINT `work_history_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `work_history` VALUES 
('cf18f2fb-91fa-47bf-8133-6dda7f7c46e0','ac','ac',1517293682000,1517293687000,0,'ac','9202b073-f95d-49a5-846b-e1ffe0dc3fc1'),
('dcc68de2-54e5-46c4-a63d-b0d06b336fd4','Lorem','veniam eiusmod nisi',-1827948703105,-117978119519,0,'ut ad culpa','81038a5b-a211-4f0a-aba7-4a869fcf3f26');
