DROP TABLE IF EXISTS `reference`;
CREATE TABLE `reference`
(
    `id`           char(36) NOT NULL,
    `full_name`    varchar(1000) DEFAULT NULL,
    `position`     varchar(100)  DEFAULT NULL,
    `company`      varchar(1000) DEFAULT NULL,
    `email`        varchar(322)  DEFAULT NULL,
    `phone_number` char(11)      DEFAULT NULL,
    `attendant_id` char(36)      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `reference_attendant_id_fk` (`attendant_id`),
    CONSTRAINT `reference_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
