DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` char(36) NOT NULL,
  `total` float NOT NULL,
  `create_date` bigint NOT NULL,
  `cancel_date` bigint DEFAULT NULL,
  `status` int NOT NULL,
  `company_registration_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_company_registration_id_fk` (`company_registration_id`),
  CONSTRAINT `order_company_registration_id_fk` FOREIGN KEY (`company_registration_id`) REFERENCES `company_registration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `order` VALUES 
('23cd7e71-975d-454b-acc7-2706765ae485',0,1645923600000,NULL,0,'0b622226-f5ce-48a5-bfaa-5011be0f9ce0'),
('3faab7ea-3ad4-4e1a-a772-71b283f275ef',0,1645339811000,NULL,0,'289d72db-ac48-48c7-8df5-22d3d216f1b5'),
('5e8029c7-a059-49a0-a971-4690ee0012b3',0,1645923600000,NULL,0,'f282e27b-89fe-4be7-aadb-b1d6605541ce'),
('8f54ad31-c936-41ac-b86c-a66761c7ed1b',0,1645923600000,NULL,0,'eebd1c44-a685-42c9-a69b-a8ae7ea08bcc'),
('9611b74e-bbcd-4a8a-9626-0198eb6f7338',0,1645923600000,NULL,0,'0baace8b-2e48-4fd6-ac4b-22c3686e9bdb');
