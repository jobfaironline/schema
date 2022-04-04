CREATE TABLE `job_fair`
(
    `id`                            char(36) NOT NULL,
    `company_register_start_time`   bigint        DEFAULT NULL,
    `company_register_end_time`     bigint        DEFAULT NULL,
    `company_buy_booth_start_time`  bigint        DEFAULT NULL,
    `company_buy_booth_end_time`    bigint        DEFAULT NULL,
    `attendant_register_start_time` bigint        DEFAULT NULL,
    `start_time`                    bigint        DEFAULT NULL,
    `end_time`                      bigint        DEFAULT NULL,
    `description`                   text,
    `layout_id`                     char(36)      DEFAULT NULL,
    `status`                        int      NOT NULL,
    `creator_id`                    char(36) NOT NULL,
    `authorizer_id`                 char(36)      DEFAULT NULL,
    `reject_reason`                 varchar(500)  DEFAULT NULL,
    `cancel_reason`                 varchar(500)  DEFAULT NULL,
    `thumbnail`                     varchar(2048) DEFAULT NULL,
    `name`                          varchar(100)  DEFAULT '',
    `estimate_participant`          int           DEFAULT '0',
    `target_company`                varchar(500)  DEFAULT '',
    `target_attendant`              varchar(500)  DEFAULT '',
    `created_time`                  bigint        DEFAULT '0',
    `updated_time`                  bigint        DEFAULT '0',
    PRIMARY KEY (`id`),
    KEY `job_fair_layout_id_fk` (`layout_id`),
    KEY `job_fair_authorizer_id_fk` (`authorizer_id`),
    KEY `job_fair_creator_id_fk` (`creator_id`),
    CONSTRAINT `job_fair_creator_id_fk` FOREIGN KEY (`creator_id`) REFERENCES `account` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

