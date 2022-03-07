DROP TABLE IF EXISTS `company_employee`;
CREATE TABLE `company_employee` (
  `account_id` char(36) NOT NULL,
  `company_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `company_employee_company_id_fk` (`company_id`),
  CONSTRAINT `company_employee_account_id_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `company_employee_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `company_employee` VALUES 
('04eda9de-e547-4d76-a3e5-4dc04b63d20a','18def343-36b0-47d8-bf4d-8789f7c48cd1'),
('3824bd51-a997-428c-a13e-ba0305335f36','18def343-36b0-47d8-bf4d-8789f7c48cd1'),
('7eddd0a6-0c08-40e1-b432-9477c3e9c8b3','18def343-36b0-47d8-bf4d-8789f7c48cd1'),
('b6aa5729-b939-4d06-9a78-631c7c002197','18def343-36b0-47d8-bf4d-8789f7c48cd1'),
('26262885-2db6-40ce-ae2c-7027d5743145','1e925b8d-38a3-4fab-b185-29224ca838cc'),
('97c5102f-4b16-4225-8841-de33b0acbc69','24e2a1b9-f324-4d1e-b933-3887bae79f5c'),
('9df03397-f66e-49b7-90a1-6858ac414259','24e2a1b9-f324-4d1e-b933-3887bae79f5c'),
('eaa45824-63a4-4f7e-953d-0184776bbd42','24e2a1b9-f324-4d1e-b933-3887bae79f5c'),
('3128aa05-fafa-4790-a8dd-219b6741f9d4','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479'),
('4398c22f-3b23-47cb-81c2-4c6a6ddf6c73','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479'),
('6d684282-a93d-4b10-912a-13cc7a7167e4','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479'),
('705604f1-1192-47e4-95ef-ea7d61938ac8','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479'),
('79dc6dea-8a7d-4ecc-a5cf-6eeb843467f0','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479'),
('c4fba70f-09d3-400b-b062-c00f96cec9e4','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479'),
('f996f062-c1d5-4fcc-a13c-8cae1e210d0d','8e407290-9bdb-4e12-b7d3-d1ffdd1d8479'),
('1aa00264-cd7d-40a3-8584-28728407302a','b337e89c-34f8-4a94-b8b4-ac8cfac41c26'),
('37588965-73c5-489c-b0d1-1a75c1f77bfa','b337e89c-34f8-4a94-b8b4-ac8cfac41c26'),
('44c474a8-4ef3-4568-83be-4ccccb148c42','b337e89c-34f8-4a94-b8b4-ac8cfac41c26'),
('6a8a68e6-b78f-4ae0-9f1d-c1e6115b0a63','b337e89c-34f8-4a94-b8b4-ac8cfac41c26'),
('ad1de7a4-00b3-426d-b5a0-7accde282708','b337e89c-34f8-4a94-b8b4-ac8cfac41c26'),
('47e696d7-ac7e-486d-a293-6c3ca1adc499','c7ba2ba0-61c5-43a8-978c-920202db39f4'),
('4be41663-f3fd-4b35-8d10-5ec714d11299','fe99c965-3dc7-4391-9665-1c7c72cce981'),
('d974e19a-65d3-42f7-9fbc-c5ed2ee2c016','fe99c965-3dc7-4391-9665-1c7c72cce981');

