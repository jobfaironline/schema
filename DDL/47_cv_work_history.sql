DROP TABLE IF EXISTS `cv_work_history`;

CREATE TABLE `cv_work_history`
(
    `id`             char(36) NOT NULL,
    `position`       varchar(100)  DEFAULT NULL,
    `company`        varchar(100)  DEFAULT NULL,
    `from_date`      bigint        DEFAULT NULL,
    `to_date`        bigint        DEFAULT NULL,
    `is_current_job` tinyint(1)    DEFAULT NULL,
    `description`    varchar(5000) DEFAULT NULL,
    `cv_id`          char(36)      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `work_history_cv_id_fk` (`cv_id`),
    CONSTRAINT `work_history_cv_id_fk` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

