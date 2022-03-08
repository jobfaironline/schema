DROP TABLE IF EXISTS `attendant_registration`;
CREATE TABLE `attendant_registration` (
  `id` char(36) NOT NULL,
  `attendant_id` char(36) NOT NULL,
  `job_fair_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attendant_register_job_fair_attendant_id_fk` (`attendant_id`),
  KEY `attendant_register_job_fair_job_fair_id_fk` (`job_fair_id`),
  CONSTRAINT `attendant_register_job_fair_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`),
  CONSTRAINT `attendant_register_job_fair_job_fair_id_fk` FOREIGN KEY (`job_fair_id`) REFERENCES `job_fair` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `attendant_registration` VALUES 
('9a5d8134-9c2d-4bc2-afbc-c914e640dd2b','3f6eda7f-4c49-4f6c-83b2-a4c72612510a','7db636cb-a50c-41f0-968a-f5655bfb0760'),
('9e293105-fa0e-449c-82c2-9892c569e23a','4b890178-0652-43fb-8ecf-55436fa80fdc','7db636cb-a50c-41f0-968a-f5655bfb0760'),
('a8a294c1-bb39-44bc-aa4e-13351bd251ba','3dd5446f-7cfd-4bb9-8fcb-843caf910659','7db636cb-a50c-41f0-968a-f5655bfb0760'),
('d4bc9cdf-c30c-4db9-addc-96c45e07bec5','31ba4aff-a7c7-4398-9359-92fe8d305e3c','7db636cb-a50c-41f0-968a-f5655bfb0760'),
('efd1bab5-ae94-4f80-8f74-ab4944648ab8','81038a5b-a211-4f0a-aba7-4a869fcf3f26','7db636cb-a50c-41f0-968a-f5655bfb0760');
