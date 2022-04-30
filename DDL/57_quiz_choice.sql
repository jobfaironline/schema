DROP TABLE IF EXISTS `quiz_choice`;
CREATE TABLE `quiz_choice`
(
    `id`               char(36) NOT NULL,
    `content`          varchar(500) DEFAULT NULL,
    `is_correct`       tinyint      DEFAULT NULL,
    `is_selected`      tinyint      DEFAULT NULL,
    `quiz_question_id` char(36)     DEFAULT NULL,
    `origin_choice_id` char(36)     DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `quiz_choice_quiz_question_id_fk` (`quiz_question_id`),
    CONSTRAINT `quiz_choice_quiz_question_id_fk` FOREIGN KEY 
(`quiz_question_id`) REFERENCES `quiz_question` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
