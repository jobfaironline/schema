DROP TABLE IF EXISTS `company_booth_layout`;
CREATE TABLE `company_booth_layout` (
  `id` char(36) NOT NULL,
  `company_booth_id` char(36) NOT NULL,
  `version` int NOT NULL,
  `create_date` bigint NOT NULL,
  `url` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_booth_layout_company_booth_fk` (`company_booth_id`),
  CONSTRAINT `company_booth_layout_company_booth_fk` FOREIGN KEY (`company_booth_id`) REFERENCES `company_booth` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `company_booth_layout` VALUES 
('19c37f1b-f558-4d5b-9363-098acfbb24b5','9f5fb4c3-d2e7-48f3-8896-cfbd4a58ed3d',0,1645953804563,'https://d3polnwtp0nqe6.cloudfront.net/Booth/19c37f1b-f558-4d5b-9363-098acfbb24b5'),
('4644d3ac-b688-4a69-8b11-a7f55b007327','dde7937b-9c16-4261-9121-4f185e752b39',0,1645953749934,'https://d3polnwtp0nqe6.cloudfront.net/Booth/4644d3ac-b688-4a69-8b11-a7f55b007327'),
('57b5da3d-6281-4243-a02d-e6256b4aa756','2d5dbbc8-ac69-4016-bc65-c28d7c148298',1,1645350975060,'https://d3polnwtp0nqe6.cloudfront.net/Booth/57b5da3d-6281-4243-a02d-e6256b4aa756'),
('66dc1da7-1a53-402d-bd77-c605c2d71fba','2d5dbbc8-ac69-4016-bc65-c28d7c148298',0,1645350568711,'https://d3polnwtp0nqe6.cloudfront.net/Booth/66dc1da7-1a53-402d-bd77-c605c2d71fba'),
('add3f38c-3ee1-4c76-88ef-0d246de506e8','2d5dbbc8-ac69-4016-bc65-c28d7c148298',2,1645428390713,'https://d3polnwtp0nqe6.cloudfront.net/Booth/add3f38c-3ee1-4c76-88ef-0d246de506e8'),
('ca4dd443-3b8e-4c61-8a62-28b9c3c8e9cb','e41bf62a-2215-4ddf-a2d4-9416dc602412',0,1645953609212,'https://d3polnwtp0nqe6.cloudfront.net/Booth/ca4dd443-3b8e-4c61-8a62-28b9c3c8e9cb'),
('fba2c504-ff97-421b-9433-d83282bdb853','a36834d7-5988-442d-a699-54ec409d8bd0',0,1645953686480,'https://d3polnwtp0nqe6.cloudfront.net/Booth/fba2c504-ff97-421b-9433-d83282bdb853');
