DROP TABLE IF EXISTS `3d_media`;
CREATE TABLE `3d_media` (
  `id` char(36) NOT NULL,
  `url` varchar(2048) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `type` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `3d_media` VALUES 
('898e23ec-0049-41b4-bd02-01a8c52ff703','https://d3polnwtp0nqe6.cloudfront.net/DecorateItems/898e23ec-0049-41b4-bd02-01a8c52ff703','booth','this is a content to update booth',0),
('8b25ff4e-39a1-4af6-883e-b4253487c637','https://d3polnwtp0nqe6.cloudfront.net/DecorateItems/8b25ff4e-39a1-4af6-883e-b4253487c637','Chair','Chair 1',0);
