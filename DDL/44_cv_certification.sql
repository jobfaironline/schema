DROP TABLE IF EXISTS `cv_certification`;
CREATE TABLE `cv_certification`
(
    `id`                 char(36)      NOT NULL,
    `name`               varchar(1000) NOT NULL,
    `institution`        varchar(100)  DEFAULT NULL,
    `issue_date`         bigint        DEFAULT NULL,
    `certification_link` varchar(2048) DEFAULT NULL,
    `cv_id`              char(36)      DEFAULT NULL,
    `expired_date`       bigint        DEFAULT NULL,
    `does_not_expired`   tinyint       DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY                  `certification_cv_id_fk` (`cv_id`),
    CONSTRAINT `certification_cv_id_fk` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
