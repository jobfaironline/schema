DROP TABLE IF EXISTS `booth`;
CREATE TABLE `booth` (
  `id` char(36) NOT NULL,
  `price` float DEFAULT NULL,
  `layout_id` char(36) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booth_layout_id_fk` (`layout_id`),
  CONSTRAINT `booth_layout_id_fk` FOREIGN KEY (`layout_id`) REFERENCES `layout` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `booth` VALUES 
('156068ed-3058-478a-a3a7-e29ec4b0e3fd',0,'a4210be6-ad6f-429b-a66b-4090929bf11f',0,'company01',-30.8228,2.2,-15.0077),
('61257b41-8ff0-4171-b92d-38a0f947f168',0,'a4210be6-ad6f-429b-a66b-4090929bf11f',0,'company03',3.19508,2.2,-15.3101),
('6fcf8f32-e769-46f9-bcd1-c58dd3a89be2',0,'a4210be6-ad6f-429b-a66b-4090929bf11f',0,'company00',19.5925,2.2,15.2106),
('db163176-4934-4a57-aff0-f6d2a62b14ab',0,'a4210be6-ad6f-429b-a66b-4090929bf11f',0,'company02',-16.0915,2.2,13.9145),
('dc07b68e-ee8c-4718-922e-9902c8f382d9',10,'935163b6-1520-4d8c-b2ca-247ba2c8f38f',0,'Booth 1',NULL,NULL,NULL);
