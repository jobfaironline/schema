DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`
(
    `id`               char(36) NOT NULL,
    `taxID`            char(15) NOT NULL,
    `name`             varchar(1000) DEFAULT NULL,
    `address`          varchar(1000) DEFAULT NULL,
    `phone`            varchar(11)   DEFAULT NULL,
    `email`            varchar(322)  DEFAULT NULL,
    `employee_max_num` int           DEFAULT NULL,
    `websiteURL`       varchar(2048) DEFAULT NULL,
    `size_id`          int           DEFAULT NULL,
    `status`           int      NOT NULL,
    `description`      text,
    `company_logo_url` varchar(2048) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `company_taxID_uindex` (`taxID`),
    UNIQUE KEY `company_email_uindex` (`email`),
    KEY `company_company_size_id_fk` (`size_id`),
    CONSTRAINT `company_company_size_id_fk` FOREIGN KEY (`size_id`) REFERENCES `company_size` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
