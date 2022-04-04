DROP TABLE IF EXISTS `layout_booth`;
CREATE TABLE `layout_booth`
(
    `id`        char(36)     NOT NULL,
    `layout_id` char(36) DEFAULT NULL,
    `name`      varchar(100) NOT NULL,
    `x`         float    DEFAULT NULL,
    `y`         float    DEFAULT NULL,
    `z`         float    DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `booth_layout_id_fk` (`layout_id`),
    CONSTRAINT `booth_layout_id_fk` FOREIGN KEY (`layout_id`) REFERENCES `layout` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;


