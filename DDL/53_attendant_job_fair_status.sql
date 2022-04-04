DROP TABLE IF EXISTS `attendant_job_fair_status`;
CREATE TABLE `attendant_job_fair_status`
(
    `id`          char(36) NOT NULL,
    `attendantId` char(36) DEFAULT NULL,
    `jobFairId`   char(36) DEFAULT NULL,
    `status`      int      DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
