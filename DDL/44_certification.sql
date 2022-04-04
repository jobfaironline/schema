DROP TABLE IF EXISTS `certification`;
CREATE TABLE `certification`
(
    `id`                 char(36)      NOT NULL,
    `name`               varchar(1000) NOT NULL,
    `institution`        varchar(100)  DEFAULT NULL,
    `year`               int           DEFAULT NULL,
    `certification_link` varchar(2048) DEFAULT NULL,
    `attendant_id`       char(36)      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `certification_attendant_id_fk` (`attendant_id`),
    CONSTRAINT `certification_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
