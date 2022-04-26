DROP TABLE IF EXISTS `company_employee`;
CREATE TABLE `company_employee`
(
    `account_id` char(36) NOT NULL,
    `employee_id` varchar(40) NOT NULL UNIQUE,
    `company_id` char(36) DEFAULT NULL,
    `department` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`account_id`),
    KEY `company_employee_company_id_fk` (`company_id`),
    CONSTRAINT `company_employee_account_id_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
    CONSTRAINT `company_employee_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;



