DROP TABLE IF EXISTS `job_fair_booth_layout_video`;
CREATE TABLE `job_fair_booth_layout_video`
(
    `id`                       char(36)      NOT NULL,
    `url`                      varchar(2048) NOT NULL,
    `item_name`                varchar(100)  NOT NULL,
    `job_fair_booth_layout_id` char(36)      NOT NULL,
    PRIMARY KEY (`id`),
    KEY `company_booth_layout_video_job_fair_booth_layout_fk` (`job_fair_booth_layout_id`),
    CONSTRAINT `company_booth_layout_video_job_fair_booth_layout_fk` FOREIGN KEY (`job_fair_booth_layout_id`) REFERENCES `job_fair_booth_layout` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
