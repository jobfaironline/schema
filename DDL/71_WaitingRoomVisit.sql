DROP TABLE IF EXISTS `WaitingRoomVisit`;
CREATE TABLE `WaitingRoomVisit`
(
    `channelId`   char(100) NOT NULL,
    `userId`      char(36)   DEFAULT NULL,
    `isAttendant` tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`channelId`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

