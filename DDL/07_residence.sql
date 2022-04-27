DROP TABLE IF EXISTS `residence`;
CREATE TABLE `residence`
(
    `id`   int NOT NULL AUTO_INCREMENT,
    `name` varchar(1000) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
