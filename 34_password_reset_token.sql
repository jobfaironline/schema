DROP TABLE IF EXISTS `password_reset_token`;
CREATE TABLE `password_reset_token` (
  `id` char(36) NOT NULL,
  `otp` char(6) DEFAULT NULL,
  `expired_time` bigint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  `is_invalidated` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_reset_token_account_id_fk` (`account_id`),
  CONSTRAINT `password_reset_token_account_id_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `password_reset_token` VALUES 
('1f2d7fff-f25b-4a3e-aa2a-2f900710438f','919782',1645463026704,1645403026704,1,'37588965-73c5-489c-b0d1-1a75c1f77bfa'),
('208a3f42-2cff-4e54-87bc-091a720b9277','896378',1644974896685,1644914896685,0,'7bc3076c-392f-444a-ae5b-8ebfd8248097'),
('3f841f20-60ae-4213-9c40-d72c69b5e926','572474',1644546242878,1644486242878,1,'8ddd27e1-fa08-486a-a752-77f6971b23e3'),
('9eeed74c-e171-42b1-8777-b1f0739bb82d','759135',1644891213854,1644831213854,1,'7bc3076c-392f-444a-ae5b-8ebfd8248097'),
('a07c08ec-3504-4690-94b7-4ae70007d152','648297',1645476993189,1645416993189,0,'705604f1-1192-47e4-95ef-ea7d61938ac8'),
('ee4e3a8c-4197-4e2a-adca-56c9985f73d6','571682',1645477210718,1645417210718,1,'3dd5446f-7cfd-4bb9-8fcb-843caf910659');
