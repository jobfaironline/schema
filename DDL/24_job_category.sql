DROP TABLE IF EXISTS `job_category`;
CREATE TABLE `job_category`
(
    `id`              int NOT NULL AUTO_INCREMENT,
    `job_id`          char(36) DEFAULT NULL,
    `sub_category_id` int      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `job_category_job_position_id_fk` (`job_id`),
    KEY `job_category_sub_category_id_fk` (`sub_category_id`),
    CONSTRAINT `job_category_job_position_id_fk` FOREIGN KEY (`job_id`) REFERENCES `job_position` (`id`),
    CONSTRAINT `job_category_sub_category_id_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 115
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

