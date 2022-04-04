DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`
(
    `id`                char(36)      NOT NULL,
    `email`             varchar(322)  NOT NULL,
    `password`          varchar(72)   NOT NULL,
    `status`            int           NOT NULL,
    `phone`             char(11)     DEFAULT NULL,
    `profile_image_url` varchar(2048) NOT NULL,
    `firstname`         varchar(100)  NOT NULL,
    `lastname`          varchar(100)  NOT NULL,
    `middlename`        varchar(100) DEFAULT NULL,
    `gender_id`         int           NOT NULL,
    `role_id`           int           NOT NULL,
    `create_time`       bigint       DEFAULT '0',
    PRIMARY KEY (`id`),
    UNIQUE KEY `account_email_uindex` (`email`),
    KEY `account_role_id_fk` (`role_id`),
    KEY `account_gender_id_fk` (`gender_id`),
    CONSTRAINT `account_gender_id_fk` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
    CONSTRAINT `account_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;