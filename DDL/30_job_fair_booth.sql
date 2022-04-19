DROP TABLE IF EXISTS `job_fair_booth`;
CREATE TABLE `job_fair_booth`
(
    `id`          char(36) NOT NULL,
    `booth_id`    char(36) NOT NULL,
    `job_fair_id` char(36)     DEFAULT NULL,
    `description` varchar(500) DEFAULT '',
    PRIMARY KEY (`id`),
    KEY `company_booth_booth_id_fk` (`booth_id`),
    KEY `job_fair_booth_job_fair_id_fk` (`job_fair_id`),
    CONSTRAINT `company_booth_booth_id_fk` FOREIGN KEY (`booth_id`) REFERENCES `layout_booth` (`id`),
    CONSTRAINT `job_fair_booth_job_fair_id_fk` FOREIGN KEY (`job_fair_id`) REFERENCES `job_fair` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
