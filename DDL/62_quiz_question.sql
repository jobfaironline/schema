DROP TABLE IF EXISTS `quiz_question`;
CREATE TABLE `quiz_question`
(
    `id`      char(36) NOT NULL,
    `content` varchar(500) DEFAULT NULL,
    `quiz_id` char(36)     DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `quiz_question_quiz_id_fk` (`quiz_id`),
    CONSTRAINT `quiz_question_quiz_id_fk` FOREIGN KEY (`quiz_id`) 
REFERENCES `quiz` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
