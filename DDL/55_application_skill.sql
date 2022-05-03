DROP TABLE IF EXISTS `application_skill`;

CREATE TABLE `application_skill`
(
    `id`             char(36) NOT NULL,
    `name`           varchar(100) DEFAULT '',
    `proficiency`    int          DEFAULT '0',
    `application_id` char(36)     DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `application_skill_application_id_fk` (`application_id`),
    CONSTRAINT `application_skill_application_id_fk` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
