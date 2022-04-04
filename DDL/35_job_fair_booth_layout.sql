DROP TABLE IF EXISTS `job_fair_booth_layout`;
CREATE TABLE `job_fair_booth_layout`
(
    `id`               char(36)      NOT NULL,
    `company_booth_id` char(36)      NOT NULL,
    `version`          int           NOT NULL,
    `create_date`      bigint        NOT NULL,
    `url`              varchar(2048) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `company_booth_layout_company_booth_fk` (`company_booth_id`),
    CONSTRAINT `company_booth_layout_company_booth_fk` FOREIGN KEY (`company_booth_id`) REFERENCES `job_fair_booth` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
