DROP TABLE IF EXISTS `company_benefit`;
CREATE TABLE `company_benefit`
(
    `id`          int NOT NULL AUTO_INCREMENT,
    `benefit_id`  int       DEFAULT NULL,
    `company_id`  char(36)  DEFAULT NULL,
    `description` char(200) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `company_benefit_company_id_fk` (`company_id`),
    KEY `company_benefit_benefit_id_fk` (`benefit_id`),
    CONSTRAINT `company_benefit_benefit_id_fk` FOREIGN KEY (`benefit_id`) REFERENCES `benefit` (`id`),
    CONSTRAINT `company_benefit_company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 66
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

