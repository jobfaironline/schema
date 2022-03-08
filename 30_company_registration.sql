DROP TABLE IF EXISTS `company_registration`;
CREATE TABLE `company_registration` (
  `id` char(36) NOT NULL,
  `create_date` bigint NOT NULL,
  `description` text,
  `job_fair_id` char(36) NOT NULL,
  `company_id` char(36) NOT NULL,
  `status` int DEFAULT NULL,
  `cancel_reason` text,
  `reject_reason` text,
  `authorizer_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_registration_company_id_fk` (`company_id`),
  KEY `company_registration_job_fair_id_fk` (`job_fair_id`),
  CONSTRAINT `company_registration_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `company_registration_job_fair_id_fk` FOREIGN KEY (`job_fair_id`) REFERENCES `job_fair` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `company_registration` VALUES 
('0b622226-f5ce-48a5-bfaa-5011be0f9ce0',1645923600000,'Tien\'s data. Apple','aa887cc1-240a-41de-99b4-5ffe26075279','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('0baace8b-2e48-4fd6-ac4b-22c3686e9bdb',1645923600000,'Tien\'s data. ACB','aa887cc1-240a-41de-99b4-5ffe26075279','1e925b8d-38a3-4fab-b185-29224ca838cc',2,NULL,NULL,NULL),
('289d72db-ac48-48c7-8df5-22d3d216f1b5',1644567721616,'Success','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('46812ac3-04a5-4d45-8d5c-c91f21d7d2c5',1645684595708,'labore','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('4c80e774-80da-4101-b6ab-dfe297624fe4',1644567721616,'Success','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('4fa069c3-fc22-4d26-8a54-4df7850e6b19',1644567783775,'Apple đại đế','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('4fd9b565-7992-49fd-845f-6ccfdefc8c44',1644567781029,'Apple đại đế','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('78617dc3-6641-4830-8e63-a51b24bb2444',1645684598117,'labore','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('8c08fcc6-65bd-4986-8284-3c2cbbdc486f',1644567782302,'Apple đại đế','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('aca247f4-3b69-4ed1-8478-dfa323c6191e',1645684093660,'labore','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',2,NULL,NULL,NULL),
('aef3b3d5-cd45-433f-9acd-83ce4ead174c',1645684597147,'labore','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('bc4e30e5-c220-49f8-b6b5-26b6c2d71ffe',1645684096818,'labore','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('c930700d-14f9-413b-aada-a1c3f21a3f80',1644567783150,'Apple đại đế','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('d53dece8-39e8-4980-83e9-c5f5b03b85ad',1645684095572,'labore','a50a9875-93aa-4605-8afd-29923d3310fe','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479',0,NULL,NULL,NULL),
('eebd1c44-a685-42c9-a69b-a8ae7ea08bcc',1645923600000,'Tien\'s data. Tiki','aa887cc1-240a-41de-99b4-5ffe26075279','24e2a1b9-f324-4d1e-b933-3887bae79f5c',2,NULL,NULL,NULL),
('f282e27b-89fe-4be7-aadb-b1d6605541ce',1645923600000,'Tien\'s data. KMS','aa887cc1-240a-41de-99b4-5ffe26075279','18def343-36b0-47d8-bf4d-8789f7c48cd1',2,NULL,NULL,NULL);
