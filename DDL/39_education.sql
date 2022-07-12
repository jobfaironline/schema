DROP TABLE IF EXISTS `education`;
CREATE TABLE `education`
(
    `id`                   char(36)     NOT NULL,
    `subject`              varchar(100) NOT NULL,
    `school`               varchar(100)  DEFAULT NULL,
    `from_date`            bigint        DEFAULT NULL,
    `to_date`              bigint        DEFAULT NULL,
    `achievement`          varchar(5000) DEFAULT NULL,
    `attendant_id`         char(36)      DEFAULT NULL,
    `qualification_id`     int           DEFAULT NULL,
    `achievement_key_word` text,
    PRIMARY KEY (`id`),
    KEY `education_attendant_id_fk` (`attendant_id`),
    KEY `education_qualification_id_fk` (`qualification_id`),
    CONSTRAINT `education_attendant_id_fk` FOREIGN KEY (`attendant_id`) REFERENCES `attendant` (`account_id`),
    CONSTRAINT `education_qualification_id_fk` FOREIGN KEY (`qualification_id`) REFERENCES `qualification` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;