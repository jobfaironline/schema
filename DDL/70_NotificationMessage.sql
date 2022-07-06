DROP TABLE IF EXISTS `NotificationMessage`;
CREATE TABLE `NotificationMessage`
(
    `id`               char(36)      DEFAULT NULL,
    `notificationId`   char(100)     DEFAULT NULL,
    `notificationType` int           DEFAULT NULL,
    `title`            varchar(5000) DEFAULT NULL,
    `message`          text,
    `isRead`           tinyint(1)    DEFAULT NULL,
    `userId`           char(36)      DEFAULT NULL,
    `createDate`       bigint        DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
