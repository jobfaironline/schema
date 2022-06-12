DROP TABLE IF EXISTS `shift`;
CREATE TABLE `shift`
(
    `id`          char(36) NOT NULL,
    `begin_time`  bigint   DEFAULT NULL,
    `end_time`    bigint   DEFAULT NULL,
    `job_fair_id` char(36) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `shift_job_fair_id_fk` (`job_fair_id`),
    CONSTRAINT `shift_job_fair_id_fk` FOREIGN KEY (`job_fair_id`) REFERENCES `job_fair` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

