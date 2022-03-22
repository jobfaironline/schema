DROP TABLE IF EXISTS `company_employee`;
CREATE TABLE `company_employee` (
  `account_id` char(36) NOT NULL,
  `company_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `company_employee_company_id_fk` (`company_id`),
  CONSTRAINT `company_employee_account_id_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `company_employee_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('47c25632-445d-4b7f-b457-fde28a2baa28', '05e96a38-86c0-4f4b-871c-a3c6ae1152d8');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('cc93d0f9-0192-4b09-b690-e0c5d98ed9dc', '05e96a38-86c0-4f4b-871c-a3c6ae1152d8');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('a4d7947a-25c0-45ce-8890-68de8df9cf4f', '07b44e18-c265-4dba-923d-8c5e4da84c0d');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('b7ff4921-7246-4d8f-8c1e-b90358e979fb', '07b44e18-c265-4dba-923d-8c5e4da84c0d');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('85a20eff-88f1-4c6d-8e2f-4b9afb22dd0a', '0a807d71-8eaa-4010-b94b-5d1edcff9e88');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('b03c2779-dbdc-4939-94f3-f049b2370905', '0a807d71-8eaa-4010-b94b-5d1edcff9e88');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('7dc105e3-d487-48f5-9f96-8ccb90e21811', '0c84974b-23e6-4f25-9617-20fe5883fb6b');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('806cec12-0505-4df1-9c87-1055505ee0b4', '0c84974b-23e6-4f25-9617-20fe5883fb6b');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('13f5afab-d3d2-4b07-abea-3047e3a49613', '15f2c2e0-682d-4e9d-b9f1-f5b6285b8b76');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('2894a832-7e14-4383-ab89-afee745d09db', '15f2c2e0-682d-4e9d-b9f1-f5b6285b8b76');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('04eda9de-e547-4d76-a3e5-4dc04b63d20a', '18def343-36b0-47d8-bf4d-8789f7c48cd1');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('3824bd51-a997-428c-a13e-ba0305335f36', '18def343-36b0-47d8-bf4d-8789f7c48cd1');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('7eddd0a6-0c08-40e1-b432-9477c3e9c8b3', '18def343-36b0-47d8-bf4d-8789f7c48cd1');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('b6aa5729-b939-4d06-9a78-631c7c002197', '18def343-36b0-47d8-bf4d-8789f7c48cd1');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('26262885-2db6-40ce-ae2c-7027d5743145', '1e925b8d-38a3-4fab-b185-29224ca838cc');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('93db4026-6147-47a6-894b-7a1c42eb1ab2', '239bc566-e076-44a9-88c2-767e55ef5d46');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('aba1a1ce-aea5-4157-aef2-99b3e8e946f5', '239bc566-e076-44a9-88c2-767e55ef5d46');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('97c5102f-4b16-4225-8841-de33b0acbc69', '24e2a1b9-f324-4d1e-b933-3887bae79f5c');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('9df03397-f66e-49b7-90a1-6858ac414259', '24e2a1b9-f324-4d1e-b933-3887bae79f5c');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('eaa45824-63a4-4f7e-953d-0184776bbd42', '24e2a1b9-f324-4d1e-b933-3887bae79f5c');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('d8412309-f7f6-4bcd-b4a8-9cccfe73992f', '349243fd-37ec-48ad-a498-17030a0f2c71');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('e1870833-1fce-401b-b347-3246a60ec799', '349243fd-37ec-48ad-a498-17030a0f2c71');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('eb84ca0e-9e99-401a-90a3-6cfdaa4b2b6d', '40e8bc31-6034-4079-a113-fdb2f0d8e268');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('f3e71941-12d4-46ef-95c6-bf7a76c8d840', '40e8bc31-6034-4079-a113-fdb2f0d8e268');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('198eecce-a30e-4448-a630-a933fe1693c8', '470ad461-0b08-46f7-867a-ed9cab56d72c');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('a8078011-2eb8-4f30-aee0-f43cdaadcd2a', '470ad461-0b08-46f7-867a-ed9cab56d72c');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('411ebf11-82fa-40e9-8655-7d4b5b1ee778', '6d4e3194-d377-439a-92c2-f9c30cd748e6');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('517cffc2-6dbb-4e3d-9d02-9cbc4ad6de68', '6d4e3194-d377-439a-92c2-f9c30cd748e6');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('afd2ce05-a9f4-464c-be07-05b840b9a825', '7a876edf-51bf-465d-93ec-847d71045af8');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('ec33402d-3e22-4340-aa0d-605e86d926ca', '7a876edf-51bf-465d-93ec-847d71045af8');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('2743f402-6a2c-4281-887d-b2e9e1c26b7d', '7b61a726-b1c2-43ca-81dd-0a7883d1ad14');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('d11089a0-cbe1-4a9f-a747-06968ff475df', '7b61a726-b1c2-43ca-81dd-0a7883d1ad14');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('588cd6b1-cf88-4a47-9df2-9495c50636ab', '7dce8588-d055-4740-bd49-95056a9f9c35');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('6b094643-8224-4490-8aab-bdf8cef6574f', '7dce8588-d055-4740-bd49-95056a9f9c35');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('726356e9-1a97-42d1-8371-cbbd4711bf0b', '829cf49c-2147-4c7b-a390-1c1776eb1ae6');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('966eddcc-7bc7-4f83-b6db-d330cc231c5d', '829cf49c-2147-4c7b-a390-1c1776eb1ae6');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('38459e05-87cf-43f7-83c2-81b5138a07a7', '872fa510-3880-449e-b2c0-e05d43aeacfc');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('cb79d69f-af7d-4de6-9b9b-6b095ef31998', '872fa510-3880-449e-b2c0-e05d43aeacfc');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('5cd0b54e-a002-4894-a58e-57fd27539462', '87331de1-9a67-4d80-acf7-4180b0f367d6');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('c66fa4b3-9fa3-47a7-b2c6-99284939db52', '87331de1-9a67-4d80-acf7-4180b0f367d6');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('3128aa05-fafa-4790-a8dd-219b6741f9d4', '8e407290-9bdb-4e12-b7d3-d1ffdd1d8479');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('4398c22f-3b23-47cb-81c2-4c6a6ddf6c73', '8e407290-9bdb-4e12-b7d3-d1ffdd1d8479');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('6d684282-a93d-4b10-912a-13cc7a7167e4', '8e407290-9bdb-4e12-b7d3-d1ffdd1d8479');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('705604f1-1192-47e4-95ef-ea7d61938ac8', '8e407290-9bdb-4e12-b7d3-d1ffdd1d8479');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('79dc6dea-8a7d-4ecc-a5cf-6eeb843467f0', '8e407290-9bdb-4e12-b7d3-d1ffdd1d8479');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('c4fba70f-09d3-400b-b062-c00f96cec9e4', '8e407290-9bdb-4e12-b7d3-d1ffdd1d8479');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('f996f062-c1d5-4fcc-a13c-8cae1e210d0d', '8e407290-9bdb-4e12-b7d3-d1ffdd1d8479');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('60f6ee12-2ab0-4889-872e-1b71c0dabc56', '99abb788-1d1f-4a1d-82e8-47513d1ed9d4');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('f3161b8b-2ed3-474c-9958-d38067446a84', '99abb788-1d1f-4a1d-82e8-47513d1ed9d4');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('b71b20f1-0045-4a97-ba87-d8c377e0bdde', '9c491229-7c1c-45c2-96af-5a7fdea2559e');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('be42412d-ed7b-45db-84ca-dc17f2dbda55', '9c491229-7c1c-45c2-96af-5a7fdea2559e');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('1aa00264-cd7d-40a3-8584-28728407302a', 'b337e89c-34f8-4a94-b8b4-ac8cfac41c26');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('37588965-73c5-489c-b0d1-1a75c1f77bfa', 'b337e89c-34f8-4a94-b8b4-ac8cfac41c26');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('44c474a8-4ef3-4568-83be-4ccccb148c42', 'b337e89c-34f8-4a94-b8b4-ac8cfac41c26');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('6a8a68e6-b78f-4ae0-9f1d-c1e6115b0a63', 'b337e89c-34f8-4a94-b8b4-ac8cfac41c26');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('ad1de7a4-00b3-426d-b5a0-7accde282708', 'b337e89c-34f8-4a94-b8b4-ac8cfac41c26');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('47e696d7-ac7e-486d-a293-6c3ca1adc499', 'c7ba2ba0-61c5-43a8-978c-920202db39f4');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('23c59a46-4b88-4aef-9e65-6a8fb4072c4c', 'cad7b0b9-7a0d-4ae5-90ab-6fd9cb71aa46');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('ceca0267-ec33-4c99-8bcc-b789b224fbe3', 'cad7b0b9-7a0d-4ae5-90ab-6fd9cb71aa46');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('227ba11a-1d5c-4be8-8766-0c471a47bd77', 'ce69439c-0d1b-48ea-b805-02c5c9e8049b');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('fc13e76c-47c5-49d0-a97f-6cb2793d7e37', 'ce69439c-0d1b-48ea-b805-02c5c9e8049b');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('4be41663-f3fd-4b35-8d10-5ec714d11299', 'fe99c965-3dc7-4391-9665-1c7c72cce981');
INSERT INTO dbo.company_employee (account_id, company_id)
VALUES ('d974e19a-65d3-42f7-9fbc-c5ed2ee2c016', 'fe99c965-3dc7-4391-9665-1c7c72cce981');

