DROP TABLE IF EXISTS `quiz`;
CREATE TABLE `quiz`
(
    `id`                 char(36) NOT NULL,
    `begin_time`         bigint   DEFAULT NULL,
    `end_time`           bigint   DEFAULT NULL,
    `is_submitted`       tinyint  DEFAULT NULL,
    `mark`               double   DEFAULT NULL,
    `application_id`     char(36) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `quiz_application_id_fk` (`application_id`),
    CONSTRAINT `quiz_application_id_fk` FOREIGN KEY (`application_id`) 
REFERENCES `application` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
