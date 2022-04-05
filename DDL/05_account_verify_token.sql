DROP TABLE IF EXISTS `account_verify_token`;
CREATE TABLE `account_verify_token`
(
    `id`             char(36)   NOT NULL,
    `created_time`   bigint     NOT NULL,
    `expired_time`   bigint     NOT NULL,
    `is_invalidated` tinyint(1) NOT NULL,
    `account_id`     char(36)   NOT NULL,
    PRIMARY KEY (`id`),
    KEY `account_verify_token_ibfk_1` (`account_id`),
    CONSTRAINT `account_verify_token_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

