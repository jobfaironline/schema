DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`
(
    `id`                  char(36)     NOT NULL,
    `name`                varchar(100) NOT NULL,
    `function_title`      varchar(100) NOT NULL,
    `organization`        varchar(100) NOT NULL,
    `from_date`           bigint        DEFAULT NULL,
    `to_date`             bigint        DEFAULT NULL,
    `is_current_activity` tinyint(1)    DEFAULT NULL,
    `description`         varchar(5000) DEFAULT NULL,
    `attendant_id`        char(36)      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `activity_attendant_id_fk` (`attendant_id`),
    CONSTRAINT `activity_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
