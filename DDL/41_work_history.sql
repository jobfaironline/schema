DROP TABLE IF EXISTS `work_history`;
CREATE TABLE `work_history`
(
    `id`                   char(36) NOT NULL,
    `position`             varchar(100)  DEFAULT NULL,
    `company`              varchar(100)  DEFAULT NULL,
    `from_date`            bigint        DEFAULT NULL,
    `to_date`              bigint        DEFAULT NULL,
    `is_current_job`       tinyint(1)    DEFAULT NULL,
    `description`          varchar(5000) DEFAULT NULL,
    `attendant_id`         char(36)      DEFAULT NULL,
    `description_key_word` text,
    PRIMARY KEY (`id`),
    KEY `work_history_attendant_id_fk` (`attendant_id`),
    CONSTRAINT `work_history_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
