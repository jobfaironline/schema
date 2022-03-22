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
    KEY                       `order_company_registration_id_fk` (`company_registration_id`),
    CONSTRAINT `order_company_registration_id_fk` FOREIGN KEY (`company_registration_id`) REFERENCES `company_registration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `order` (`id`, `total`, `create_date`, `cancel_date`, `status`, `company_registration_id`)
VALUES ('09f16bc0-872e-4c52-8dcd-3e12a9af4ab0', 0, 1641085200000, NULL, 1, '60268e5e-30c8-472f-b84c-0789adcc5812'),
       ('1d849f33-b1e0-4cba-8e27-433faa5f77e2', 0, 1641085200000, NULL, 1, '37457cca-37cb-4a5f-b6c4-c00e2d9157ab'),
       ('3501a859-d681-4880-a9d4-abfda78e3398', 0, 1641085200000, NULL, 1, 'e6aedd15-0d09-43ae-97c6-931dfd421912'),
--        ('42c916da-bb98-465b-948e-9906009e2292', 0, 1641085200000, NULL, 1, '12731309-d8cd-4e0e-84d6-02c4a79f830a'),
       ('487a52c1-9dcc-48d6-ad7a-3263998fe2b7', 0, 1641085200000, NULL, 1, '905e48b0-9162-4b01-8f7c-369f97169e08'),
       ('4a0d2842-c826-454f-ad12-5c27b7c0d0ab', 0, 1641085200000, NULL, 1, 'a2cd645c-0e82-40b6-a164-7601f3686f2d'),
       ('4cec1c02-062b-4f3e-a17e-49fbbbf54395', 0, 1641085200000, NULL, 1, '3f65251d-763f-4d91-bd62-7412ae805d18'),
       ('53dc4cc4-a37b-469d-8664-afa1bf4f3ab8', 0, 1641085200000, NULL, 1, '5da775d3-2cc3-42ba-a6c3-07357ce9cf35'),
       ('545a7988-20a9-45d7-92c0-1f4c6c87991d', 0, 1641085200000, NULL, 1, 'f018a145-fd55-4c6d-ae50-2606eb5d8acb'),
       ('6dda9d94-337a-47cd-9256-e9700ac6e027', 0, 1641085200000, NULL, 1, '47cc3325-8d35-4287-816f-faddc7e0d2db'),
       ('7bfcdad0-9c13-460c-b3f8-aa739e275aad', 0, 1641085200000, NULL, 1, '785533cd-9790-4f28-823a-e0d2e3371b12'),
       ('7c5a62f5-0274-4d89-a2f1-33a6779124b3', 0, 1641085200000, NULL, 1, 'b12a8b6f-9658-4ae5-abb2-be2f21d5f65b'),
--        ('7ce9cca6-16c6-4ef2-a108-e7c017f74a13', 20, 1647419622000, NULL, 1, '80676959-e18f-4597-b865-82437134a25e'),
       ('7d22d1c4-bb8b-455e-8d16-e66c59ff45a1', 0, 1641085200000, NULL, 1, 'c5c4c2ef-fec6-4270-9267-13cc114f7802'),
       ('9d792668-3550-4c7c-b6bd-54aa509ef292', 0, 1641085200000, NULL, 1, '56dcc15d-b836-42e8-814e-d72318401de9'),
       ('a1b05444-a3ff-4749-ae68-8876528ce824', 0, 1641085200000, NULL, 1, 'a82e5c52-6ce9-4abd-a6f3-a735ae01760a'),
       ('a5cbcc3e-dd9d-473e-9015-83eb6b0c0ee4', 0, 1641085200000, NULL, 1, '367aec52-21b5-47db-97db-9046780e69f8'),
       ('b72ac362-56a5-407f-82e9-10cd44311d1d', 0, 1641085200000, NULL, 1, 'f637d7eb-fda6-43b1-824a-bc173dbf11b2'),
       ('d5405309-edef-4089-a681-d989124387c3', 20, 1647419622000, NULL, 1, '28ecc452-2cec-4dac-83fc-e1570cf6bb73'),
       ('dd67829f-19c6-45aa-9f7d-bdb9666dfd8f', 0, 1641085200000, NULL, 1, '8fdfaf52-0e69-48f3-a875-1424ef7a7e90'),
       ('efaa6cca-bc3b-482d-b679-368ccf01d1a0', 0, 1641085200000, NULL, 1, '0d38c868-b05d-4a5b-836a-8631bf34d881'),
       ('f633f02f-bb93-439c-95a7-ddd925703850', 0, 1641085200000, NULL, 1, 'f9b7cb4b-5841-4c1d-8d71-a26510a62eda'),
       ('f660d8c9-931b-429b-97da-ab4919c46465', 0, 1641085200000, NULL, 1, '5485aa8c-e05b-4566-973a-8416e3680568');