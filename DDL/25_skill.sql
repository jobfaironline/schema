DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill`
(
    `id`           char(36) NOT NULL,
    `name`         varchar(100) DEFAULT NULL,
    `proficiency`  int          DEFAULT NULL,
    `attendant_id` char(36)     DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `skill_attendant_id_fk` (`attendant_id`),
    CONSTRAINT `skill_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
