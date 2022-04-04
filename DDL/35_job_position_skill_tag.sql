DROP TABLE IF EXISTS `job_position_skill_tag`;
CREATE TABLE `job_position_skill_tag`
(
    `id`          int NOT NULL AUTO_INCREMENT,
    `tag_id`      int      DEFAULT NULL,
    `position_id` char(36) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `skill_tag_position_job_position_id_fk` (`position_id`),
    KEY `job_position_skill_ll_tag_id_fk` (`tag_id`),
    CONSTRAINT `job_position_skill_ll_tag_id_fk` FOREIGN KEY (`tag_id`) REFERENCES `skill_tag` (`id`),
    CONSTRAINT `job_position_skill_tag_skill_tag_id_fk` FOREIGN KEY (`tag_id`) REFERENCES `skill_tag` (`id`),
    CONSTRAINT `skill_tag_position_job_position_id_fk` FOREIGN KEY (`position_id`) REFERENCES `job_position` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 146
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;



