DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender`
(
    `id`          int NOT NULL AUTO_INCREMENT,
    `name`        varchar(100)  DEFAULT NULL,
    `description` varchar(1000) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
