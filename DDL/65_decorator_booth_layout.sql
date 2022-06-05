DROP TABLE IF EXISTS `decorator_booth_layout`;

CREATE TABLE `decorator_booth_layout`
(
    `id`                  char(36) NOT NULL,
    `url`                 varchar(2048) DEFAULT NULL,
    `company_employee_id` char(36)      DEFAULT NULL,
    `name`                varchar(100)  DEFAULT NULL,
    `create_time`         bigint        DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `decorator_booth_layout_company_employee_account_id_fk` (`company_employee_id`),
    CONSTRAINT `decorator_booth_layout_company_employee_account_id_fk` FOREIGN KEY (`company_employee_id`) REFERENCES `company_employee` (`account_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

