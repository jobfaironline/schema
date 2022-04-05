DROP TABLE IF EXISTS `company_category`;
CREATE TABLE `company_category`
(
    `id`              int NOT NULL AUTO_INCREMENT,
    `company_id`      char(36) DEFAULT NULL,
    `sub_category_id` int      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `company_category_sub_category_id_fk` (`sub_category_id`),
    CONSTRAINT `company_category_sub_category_id_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 84
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;