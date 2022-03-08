DROP TABLE IF EXISTS `job_fair`;
CREATE TABLE `job_fair` (
                            `id` char(36) NOT NULL,
                            `company_register_start_time` bigint DEFAULT NULL,
                            `company_register_end_time` bigint DEFAULT NULL,
                            `company_buy_booth_start_time` bigint DEFAULT NULL,
                            `company_buy_booth_end_time` bigint DEFAULT NULL,
                            `attendant_register_start_time` bigint DEFAULT NULL,
                            `start_time` bigint DEFAULT NULL,
                            `end_time` bigint DEFAULT NULL,
                            `description` text,
                            `layout_id` char(36) DEFAULT NULL,
                            `status` int NOT NULL,
                            `creator_id` char(36) NOT NULL,
                            `authorizer_id` char(36) DEFAULT NULL,
                            `reject_reason` varchar(500) DEFAULT NULL,
                            `cancel_reason` varchar(500) DEFAULT NULL,
                            `thumbnail` varchar(2048) DEFAULT NULL,
                            `name` varchar(100) DEFAULT '',
                            `estimate_participant` int DEFAULT '0',
                            `target_company` varchar(500) DEFAULT '',
                            `target_attendant` varchar(500) DEFAULT '',
                            PRIMARY KEY (`id`),
                            KEY `job_fair_layout_id_fk` (`layout_id`),
                            KEY `job_fair_authorizer_id_fk` (`authorizer_id`),
                            KEY `job_fair_creator_id_fk` (`creator_id`),
                            CONSTRAINT `job_fair_creator_id_fk` FOREIGN KEY (`creator_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `job_fair` (`id`, `company_register_start_time`, `company_register_end_time`, `company_buy_booth_start_time`, `company_buy_booth_end_time`, `attendant_register_start_time`, `start_time`, `end_time`, `description`, `layout_id`, `status`, `creator_id`, `authorizer_id`, `reject_reason`, `cancel_reason`, `thumbnail`, `name`, `estimate_participant`, `target_company`, `target_attendant`) VALUES ('368943bd-7cec-424e-8d60-b779ecf4df45',1652451662544,1655081462544,1655081462544,1657711262544,1657711262544,1657711262544,1660341062544,'FPT K17 Job fair','string',0,'8ddd27e1-fa08-486a-a752-77f6971b23e3',NULL,NULL,NULL,NULL,'',0,'',''),('383d03a1-bbef-4b8a-9703-8a5275cf6e47',1652451662544,1655081462544,1655081462544,1657711262544,1657711262544,1657711262544,1660341062544,'FPT K18 Job fair','string',3,'8ddd27e1-fa08-486a-a752-77f6971b23e3',NULL,NULL,'cancel for no reason',NULL,'',0,'',''),('3bf4133b-7416-4282-ab4e-b0e8267d12ac',0,0,0,0,0,NULL,0,NULL,NULL,5,'8ddd27e1-fa08-486a-a752-77f6971b23e3','8ddd27e1-fa08-486a-a752-77f6971b23e3','test evaluate',NULL,NULL,'',0,'',''),('43b323d8-1faf-41bf-b4f7-eaee946b81da',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'8ddd27e1-fa08-486a-a752-77f6971b23e3',NULL,NULL,'fuck you',NULL,'',0,'',''),('656c1947-aadb-401a-9b22-e769ecef2583',1645685162694,1648314962694,1648314962694,1650944762694,1650944762694,1650944762694,1653574562694,'sint dolore adipisicing','est ul',0,'8ddd27e1-fa08-486a-a752-77f6971b23e3',NULL,NULL,NULL,NULL,'',0,'',''),('6cddbdc0-a728-4c04-bbbd-158a4d0ca82f',1645679927050,1648309727050,1648309727050,1650939527050,1650939527050,1650939527050,1653569327050,'sint dolore adipisicing','est ul',0,'8ddd27e1-fa08-486a-a752-77f6971b23e3',NULL,NULL,NULL,NULL,'',0,'',''),('7db636cb-a50c-41f0-968a-f5655bfb0760',1652451662544,1655081462544,1655081462544,1657711262544,1657711262544,1657711262544,1660341062544,'FPT K19 Job fair','string',2,'8ddd27e1-fa08-486a-a752-77f6971b23e3',NULL,NULL,NULL,NULL,'',0,'',''),('a50a9875-93aa-4605-8afd-29923d3310fe',1644567515003,1655081462544,1655081462544,1657711262544,1657711262544,1657711262544,1660341062544,'FPT K20 Job fair','string',4,'8ddd27e1-fa08-486a-a752-77f6971b23e3','8ddd27e1-fa08-486a-a752-77f6971b23e3','string',NULL,NULL,'',0,'',''),('aa887cc1-240a-41de-99b4-5ffe26075279',1643677200000,1643850000000,1644195600000,1644454800000,1644714000000,1644886800000,1662771600000,'Tien\'s job fair','a4210be6-ad6f-429b-a66b-4090929bf11f',4,'4398c22f-3b23-47cb-81c2-4c6a6ddf6c73','4398c22f-3b23-47cb-81c2-4c6a6ddf6c73',NULL,NULL,NULL,'',0,'',''),('ca71e897-1722-4f76-a95c-8b8ed84c567d',1652451662544,1655081462544,1655081462544,1657711262544,1657711262544,1657711262544,1660341062544,'FPT K21 Job fair','string',5,'8ddd27e1-fa08-486a-a752-77f6971b23e3','8ddd27e1-fa08-486a-a752-77f6971b23e3','Bullshit',NULL,NULL,'',0,'',''),('e5cef55c-d8b1-42ac-8715-239d8f50ac8e',1645680003829,1648309803829,1648309803829,1650939603829,1650939603829,1650939603829,1653569403829,'sint dolore adipisicing','est ul',1,'8ddd27e1-fa08-486a-a752-77f6971b23e3',NULL,NULL,NULL,NULL,'',0,'',''),('f1c7a0e6-79c1-4500-bc75-3e4adc0cba8b',1645685164653,1648314964653,1648314964653,1650944764653,1650944764653,1650944764653,1653574564653,'sint dolore adipisicing','est ul',0,'8ddd27e1-fa08-486a-a752-77f6971b23e3',NULL,NULL,NULL,NULL,'',0,'',''),('f753bfca-e804-4d21-9a83-cb7a88957ac7',1645679930376,1648309730376,1648309730376,1650939530376,1650939530376,1650939530376,1653569330376,'sint dolore adipisicing','est ul',0,'8ddd27e1-fa08-486a-a752-77f6971b23e3',NULL,NULL,NULL,NULL,'',0,'','');
