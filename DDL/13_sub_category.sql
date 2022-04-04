DROP TABLE IF EXISTS `sub_category`;
CREATE TABLE `sub_category`
(
    `id`          int NOT NULL,
    `name`        varchar(100) DEFAULT NULL,
    `category_id` int          DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `sub_category_category_id_fk` (`category_id`),
    CONSTRAINT `sub_category_category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `profession_category` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;