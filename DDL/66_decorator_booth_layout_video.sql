DROP TABLE IF EXISTS `decorator_booth_layout_video`;

CREATE TABLE `decorator_booth_layout_video`
(
    `id`                        char(36) NOT NULL,
    `url`                       varchar(2048) DEFAULT NULL,
    `item_name`                 varchar(100)  DEFAULT NULL,
    `decorator_booth_layout_id` char(36)      DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `decorator_booth_layout_video_decorator_booth_layout_id_fk` (`decorator_booth_layout_id`),
    CONSTRAINT `decorator_booth_layout_video_decorator_booth_layout_id_fk` FOREIGN KEY (`decorator_booth_layout_id`) REFERENCES `decorator_booth_layout` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
