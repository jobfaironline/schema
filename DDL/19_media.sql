DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`
(
    `id`         char(36)      NOT NULL,
    `url`        varchar(2048) NOT NULL,
    `company_id` char(36) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `media_company_id_fk` (`company_id`),
    CONSTRAINT `media_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;


