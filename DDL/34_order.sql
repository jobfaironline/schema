DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`
(
    `id`                      char(36) NOT NULL,
    `total`                   float    NOT NULL,
    `create_date`             bigint   NOT NULL,
    `cancel_date`             bigint DEFAULT NULL,
    `status`                  int      NOT NULL,
    `company_registration_id` char(36) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `order_company_registration_id_fk` (`company_registration_id`),
    CONSTRAINT `order_company_registration_id_fk` FOREIGN KEY (`company_registration_id`) REFERENCES `company_registration` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

