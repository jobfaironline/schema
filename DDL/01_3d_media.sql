DROP TABLE IF EXISTS `3d_media`;
CREATE TABLE `3d_media`
(
    `id`            char(36)      NOT NULL,
    `url`           varchar(2048) NOT NULL,
    `name`          varchar(100)  NOT NULL,
    `description`   varchar(500)  NOT NULL,
    `type`          int           NOT NULL,
    `thumbnail_url` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
