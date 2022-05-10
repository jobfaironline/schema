DROP TABLE IF EXISTS `interview_request_change`;
CREATE TABLE `interview_request_change`
(
    `id`             char(36) NOT NULL,
    `message`        varchar(300) DEFAULT NULL,
    `begin_time`     bigint       DEFAULT NULL,
    `end_time`       bigint       DEFAULT NULL,
    `application_id` char(36)     DEFAULT NULL,
    `status`         int          DEFAULT NULL,
    `create_time`    bigint       DEFAULT NULL,
    `evaluate_time`  bigint       DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `interview_request_change_application_id_fk` (`application_id`),
    CONSTRAINT `interview_request_change_application_id_fk` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
