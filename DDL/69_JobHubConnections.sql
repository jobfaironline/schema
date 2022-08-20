DROP TABLE IF EXISTS `JobHubConnections`;
CREATE TABLE `JobHubConnections`
(
    `connectionId` varchar(100) NOT NULL,
    `userId`       varchar(100) DEFAULT NULL,
    PRIMARY KEY (`connectionId`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
