DROP TABLE IF EXISTS `JobFairVisit`;

CREATE TABLE `JobFairVisit`
(
    `id`             char(36) NOT NULL,
    `jobFairId`      char(36) DEFAULT NULL,
    `userId`         char(36) DEFAULT NULL,
    `jobFairBoothId` char(36) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/