DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment`
(
    `id`                  char(36) NOT NULL,
    `type`                int      NOT NULL,
    `job_fair_booth_id`   char(36) DEFAULT NULL,
    `company_employee_id` char(36) DEFAULT NULL,
    `create_time`         bigint        DEFAULT '0',
    PRIMARY KEY (`id`),
    KEY `assignment_company_employee_account_id_fk` (`company_employee_id`),
    KEY `assignment_job_fair_booth_id_fk` (`job_fair_booth_id`),
    CONSTRAINT `assignment_company_employee_account_id_fk` FOREIGN KEY (`company_employee_id`) REFERENCES `company_employee` (`account_id`),
    CONSTRAINT `assignment_job_fair_booth_id_fk` FOREIGN KEY (`job_fair_booth_id`) REFERENCES `job_fair_booth` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
