DROP TABLE IF EXISTS `company_booth`;
CREATE TABLE `company_booth` (
  `booth_id` char(36) NOT NULL,
  `price` float DEFAULT NULL,
  `order_id` char(36) NOT NULL,
  `id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_booth_booth_id_fk` (`booth_id`),
  KEY `company_booth_order_id_fk` (`order_id`),
  CONSTRAINT `company_booth_booth_id_fk` FOREIGN KEY (`booth_id`) REFERENCES `booth` (`id`),
  CONSTRAINT `company_booth_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `company_booth` VALUES 
('dc07b68e-ee8c-4718-922e-9902c8f382d9',10,'3faab7ea-3ad4-4e1a-a772-71b283f275ef','2d5dbbc8-ac69-4016-bc65-c28d7c148298'),
('61257b41-8ff0-4171-b92d-38a0f947f168',0,'23cd7e71-975d-454b-acc7-2706765ae485','9f5fb4c3-d2e7-48f3-8896-cfbd4a58ed3d'),
('156068ed-3058-478a-a3a7-e29ec4b0e3fd',0,'9611b74e-bbcd-4a8a-9626-0198eb6f7338','a36834d7-5988-442d-a699-54ec409d8bd0'),
('6fcf8f32-e769-46f9-bcd1-c58dd3a89be2',0,'8f54ad31-c936-41ac-b86c-a66761c7ed1b','dde7937b-9c16-4261-9121-4f185e752b39'),
('db163176-4934-4a57-aff0-f6d2a62b14ab',0,'5e8029c7-a059-49a0-a971-4690ee0012b3','e41bf62a-2215-4ddf-a2d4-9416dc602412');
