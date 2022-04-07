DROP TABLE IF EXISTS `job_fair`;

CREATE TABLE `job_fair`
(
    `id`                  char(36) NOT NULL,
    `create_time`         bigint        DEFAULT '0',
    `decorate_start_time` bigint        DEFAULT '0',
    `decorate_end_time`   bigint        DEFAULT '0',
    `public_start_time`   bigint        DEFAULT '0',
    `public_end_time`     bigint        DEFAULT '0',
    `name`                varchar(100)  DEFAULT '',
    `description`         varchar(500)  DEFAULT '',
    `target_attendant`    varchar(100)  DEFAULT '',
    `thumbnail_url`       varchar(2048) DEFAULT '',
    `status`              int           DEFAULT '0',
    `cancel_reason`       varchar(500)  DEFAULT '',
    `host_name`           varchar(100)  DEFAULT '',
    `company_id`          char(36) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `job_fair_company_id_fk` (`company_id`),
    CONSTRAINT `job_fair_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;


