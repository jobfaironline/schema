DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `function_title` varchar(100) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `from_date` bigint DEFAULT NULL,
  `to_date` bigint DEFAULT NULL,
  `is_current_activity` tinyint(1) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `attendant_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_attendant_id_fk` (`attendant_id`),
  CONSTRAINT `activity_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `activity` VALUES 
('3c9b8ff3-7d4d-4233-b902-ecb1cf03e97c','awd','asc','ac',1549434609000,1580970612000,1,'asc','9202b073-f95d-49a5-846b-e1ffe0dc3fc1'),
('e469951a-677b-4575-b9fb-25a3304ef084','ex aute','deserunt magna enim labo','dolor',-903661730425,-86225250,1,'consequat sunt','81038a5b-a211-4f0a-aba7-4a869fcf3f26'),
('e7303344-8498-4a40-95ff-7d894cf639a5','dolore commodo non','Excepteur ea volupt','ame',-1020427655509,-61839423,1,'commodo anim','81038a5b-a211-4f0a-aba7-4a869fcf3f26'),
('fb77e3c1-dc74-4d93-9c3d-78587386d340','Redhat','Hacker','RedHat',1644825972419,1644825972419,1,'Hacker at FBI','fba88e6a-742b-4ffa-9ac7-a8058520957f');
