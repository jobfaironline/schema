DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `id` char(36) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `school` varchar(100) DEFAULT NULL,
  `from_date` bigint DEFAULT NULL,
  `to_date` bigint DEFAULT NULL,
  `achievement` varchar(5000) DEFAULT NULL,
  `attendant_id` char(36) DEFAULT NULL,
  `qualification_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `education_attendant_id_fk` (`attendant_id`),
  KEY `education_qualification_id_fk` (`qualification_id`),
  CONSTRAINT `education_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`),
  CONSTRAINT `education_qualification_id_fk` FOREIGN KEY (`qualification_id`) REFERENCES `qualification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `education` VALUES 
('9b8a5951-69ac-4bfd-8525-047c94ad1109','Frog research','FPT University',1644825972419,1644825972419,'Golden frog','fba88e6a-742b-4ffa-9ac7-a8058520957f',0),
('df5d62ba-a1ea-404a-9e50-661688beddc5','ac','ac',1548743302000,1547533704000,'ac','9202b073-f95d-49a5-846b-e1ffe0dc3fc1',1),('f5576511-1f4d-4de6-8d48-afb9b1f56c5f','elit amet','est non',-776589910153,-2123855530766,'minim sint a','81038a5b-a211-4f0a-aba7-4a869fcf3f26',1),
('f597e3d9-77fa-4e91-a153-2a0413f71fc4','dol','minim quis',-579876664828,-1127385634480,'dolore mollit eiusmod dolor ut','81038a5b-a211-4f0a-aba7-4a869fcf3f26',5);
