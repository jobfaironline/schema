DROP TABLE IF EXISTS `password_reset_token`;
CREATE TABLE `password_reset_token`
(
    `id`             char(36) NOT NULL,
    `otp`            char(6)    DEFAULT NULL,
    `expired_time`   bigint     DEFAULT NULL,
    `create_time`    bigint     DEFAULT NULL,
    `is_invalidated` tinyint(1) DEFAULT NULL,
    `account_id`     char(36)   DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `password_reset_token_account_id_fk` (`account_id`),
    CONSTRAINT `password_reset_token_account_id_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;


