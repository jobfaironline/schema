DROP TABLE IF EXISTS `layout`;
CREATE TABLE `layout`
(
    `id`          char(36) NOT NULL,
    `name`        varchar(100)  DEFAULT NULL,
    `url`         varchar(2048) DEFAULT NULL,
    `description` varchar(500)  DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
