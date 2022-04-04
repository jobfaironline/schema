DROP TABLE IF EXISTS `benefit`;
CREATE TABLE `benefit`
(
    `id`          int NOT NULL,
    `name`        varchar(1000) DEFAULT NULL,
    `description` varchar(1000) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
