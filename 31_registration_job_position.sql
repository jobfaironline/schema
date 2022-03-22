DROP TABLE IF EXISTS `registration_job_position`;

CREATE TABLE `registration_job_position`
(
    `id`                      char(36)     NOT NULL,
    `title`                   varchar(100) NOT NULL,
    `contact_person_name`     varchar(100) NOT NULL,
    `contact_email`           varchar(100) NOT NULL,
    `description`             text         NOT NULL,
    `requirements`            text         NOT NULL,
    `min_salary`              double       NOT NULL,
    `max_salary`              double   DEFAULT NULL,
    `num_of_position`         int          NOT NULL,
    `location_id`             char(36) DEFAULT NULL,
    `level_id`                int          NOT NULL,
    `job_type_id`             int          NOT NULL,
    `preferred_language_id`   char(3)      NOT NULL,
    `company_registration_id` char(36) DEFAULT NULL,
    `origin_job_position_id`  char(36) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `registration_job_position_job_type_id_fk` (`job_type_id`),
    KEY `registration_job_position_language_id_fk` (`preferred_language_id`),
    KEY `registration_job_position_level_id_fk` (`level_id`),
    KEY `registration_job_position_company_registration_fk` (`company_registration_id`),
    CONSTRAINT `registration_job_position_company_registration_fk` FOREIGN KEY (`company_registration_id`) REFERENCES `company_registration` (`id`),
    CONSTRAINT `registration_job_position_job_type_id_fk` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`id`),
    CONSTRAINT `registration_job_position_language_id_fk` FOREIGN KEY (`preferred_language_id`) REFERENCES `language` (`id`),
    CONSTRAINT `registration_job_position_level_id_fk` FOREIGN KEY (`level_id`) REFERENCES `job_level` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO dbo.registration_job_position (id, title, contact_person_name, contact_email, description, requirements, min_salary, max_salary, num_of_position, location_id, level_id, job_type_id, preferred_language_id, company_registration_id, origin_job_position_id) VALUES ('41dd12ed-a332-46aa-94a2-9b62e7fae534', 'Mr.', 'Son Khung', 'sonkhung@gmail.com', 'Khùng mà biết hủ tiếu bánh canh', 'Khùng mà biết giăng mùng trải chiếu', 100, null, 1, '1', 1, 1, 'af', '0d38c868-b05d-4a5b-836a-8631bf34d881', null);
INSERT INTO dbo.registration_job_position (id, title, contact_person_name, contact_email, description, requirements, min_salary, max_salary, num_of_position, location_id, level_id, job_type_id, preferred_language_id, company_registration_id, origin_job_position_id) VALUES ('44f1b0df-c3f7-4465-a130-ff847465fea9', 'Success', 'success', 'success@apple.com', 'lala', 'lala', 3, 44, 2, null, 0, 0, 'vi', '60268e5e-30c8-472f-b84c-0789adcc5812', '6252f39f-a00d-4758-aa3e-f4d2c0b8c359');
INSERT INTO dbo.registration_job_position (id, title, contact_person_name, contact_email, description, requirements, min_salary, max_salary, num_of_position, location_id, level_id, job_type_id, preferred_language_id, company_registration_id, origin_job_position_id) VALUES ('7463da99-03ff-4abc-8b53-a128a6c02b44', 'Sale', 'Pham Cao Son', 'sonpc@coopmart.vn', 'lala', 'lala', 3, 44, 2, null, 0, 0, 'vi', '60268e5e-30c8-472f-b84c-0789adcc5812', '2aaf8266-cd08-4f9e-bc55-43c0ee35806b');
