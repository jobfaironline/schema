DROP TABLE IF EXISTS `application_work_history`;
CREATE TABLE `application_work_history`
(
    `id`                   char(36) NOT NULL,
    `position`             varchar(100)  DEFAULT '',
    `company`              varchar(100)  DEFAULT '',
    `from_date`            bigint        DEFAULT '0',
    `to_date`              bigint        DEFAULT '0',
    `is_current_job`       tinyint(1)    DEFAULT '0',
    `description`          varchar(5000) DEFAULT '',
    `application_id`       char(36)      DEFAULT NULL,
    `description_key_word` text,
    PRIMARY KEY (`id`),
    KEY `application_work_history_application_id_fk` (`application_id`),
    CONSTRAINT `application_work_history_application_id_fk` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
