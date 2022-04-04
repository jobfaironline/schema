DROP TABLE IF EXISTS `company_booth`;
CREATE TABLE `company_booth`
(
    `booth_id` char(36) NOT NULL,
    `price`    float DEFAULT NULL,
    `order_id` char(36) NOT NULL,
    `id`       char(36) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `company_booth_booth_id_fk` (`booth_id`),
    KEY `company_booth_order_id_fk` (`order_id`),
    CONSTRAINT `company_booth_booth_id_fk` FOREIGN KEY (`booth_id`) REFERENCES `booth` (`id`),
    CONSTRAINT `company_booth_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;


