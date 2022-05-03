DROP TABLE IF EXISTS `application_certification`;

CREATE TABLE `application_certification`
(
    `id`                 char(36) NOT NULL,
    `name`               varchar(100)  DEFAULT '',
    `institution`        varchar(100)  DEFAULT '',
    `issue_date`         bigint        DEFAULT '0',
    `certification_link` varchar(2048) DEFAULT '',
    `expired_date`       bigint        DEFAULT '0',
    `does_not_expired`   tinyint(1)    DEFAULT '0',
    `application_id`     char(36)      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `application_certification_application_id_fk` (`application_id`),
    CONSTRAINT `application_certification_application_id_fk` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

