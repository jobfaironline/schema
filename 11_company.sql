DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` char(36) NOT NULL,
  `taxID` char(15) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(322) DEFAULT NULL,
  `employee_max_num` int DEFAULT NULL,
  `websiteURL` varchar(2048) DEFAULT NULL,
  `size_id` int DEFAULT NULL,
  `status` int NOT NULL,
  `description` text,
  `company_logo_url` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_taxID_uindex` (`taxID`),
  UNIQUE KEY `company_email_uindex` (`email`),
  KEY `company_company_size_id_fk` (`size_id`),
  CONSTRAINT `company_company_size_id_fk` FOREIGN KEY (`size_id`) REFERENCES `company_size` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `company` VALUES 
('18def343-36b0-47d8-bf4d-8789f7c48cd1','0316236745','KMS','KMS','0917499917','email@kms.com',5,'https://kms-technology.com',0,0,'string','https://d3polnwtp0nqe6.cloudfront.net/default.png'),
('1e925b8d-38a3-4fab-b185-29224ca838cc','0226246699','ACB','ACB','0917499917','email@acb.com.vn',5,'https://online.acb.com.vn/acbib/Request?&dse_sessionId=6w6-Wz8OolDNE4FOKGEq_uX&dse_applicationId=-1&dse_pageId=1&dse_operationName=displayPageNotLoginOp&dse_errorPage=login.jsp&dse_processorState=initial&pageName=home.jsp&dse_locale=vi_VN',0,0,'Company description','https://d3polnwtp0nqe6.cloudfront.net/default.png'),
('24e2a1b9-f324-4d1e-b933-3887bae79f5c','0226246640','Tiki','Tiki','0917499917','email@tiki.vn',5,'http://tiki.vn',0,0,'Company description','https://d3polnwtp0nqe6.cloudfront.net/default.png'),
('6d4e3194-d377-439a-92c2-f9c30cd748e6','0316236740','Test Create','hcm','0999999900','testcreate@email.com',5,'sint consectetur esse',3,0,'sed anim dolor','https://d3polnwtp0nqe6.cloudfront.net/default.png'),
('8e407290-9bdb-4e12-b7d3-d1ffdd1d8479','18002752273','Apple','Apple','0917499917','email@apple.com',5,'https://www.apple.com',0,0,'Apple đại đế','https://d3polnwtp0nqe6.cloudfront.net/default.png'),
('9bc8726f-40ed-45f3-9180-8ef7ce1b7b31','0226246645','Shopee','Shopee','0917499917','email@shopee.vn',5,'http://shopee.vn',0,0,'Company description','https://d3polnwtp0nqe6.cloudfront.net/default.png'),
('b337e89c-34f8-4a94-b8b4-ac8cfac41c26','0316246645','string','string','0917499917','email@katalon.com',5,'string',0,0,'string','https://d3polnwtp0nqe6.cloudfront.net/CompanyLogo/b337e89c-34f8-4a94-b8b4-ac8cfac41c26'),
('b3434860-38f0-48c2-9628-a38cae1cfb70','0316286749','Samsung','Samsung','0917499917','khoibmse140038@fpt.edu.vn',5,'https://samsung.com',1,0,NULL,'https://d3polnwtp0nqe6.cloudfront.net/default.png'),
('c7ba2ba0-61c5-43a8-978c-920202db39f4','1900555568','Co-opmart','131 Điện Biên Phủ','0917499917','chamsockhachhang@coopmart.vn',5,'http://www.co-opmart.com.vn/khuyenmai/camnangmuasam.aspx',0,0,'Company description','https://d3polnwtp0nqe6.cloudfront.net/default.png'),
('fe99c965-3dc7-4391-9665-1c7c72cce981','0316236749','FPT Software','FPT Software','0917499917','email@fsoft.vn',5,'https://www.fpt-software.com',1,0,'Company description','https://d3polnwtp0nqe6.cloudfront.net/default.png');
