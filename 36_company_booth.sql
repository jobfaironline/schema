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

INSERT INTO `company_booth` (`booth_id`, `price`, `order_id`, `id`)
VALUES ('086d69e3-ca58-4393-b1d1-9a1f2abfe48a', 0, '7c5a62f5-0274-4d89-a2f1-33a6779124b3',
        '0319c0ce-73db-489b-9b7f-771c73435517'),
       ('61891a2c-63b7-4830-9b97-2f3acdfc5c85', 0, '09f16bc0-872e-4c52-8dcd-3e12a9af4ab0',
        '20a32c67-e023-46c7-ab8f-995008408a2a'),
       ('86933794-6797-42b3-9679-e72c5b27fb4d', 0, '6dda9d94-337a-47cd-9256-e9700ac6e027',
        '232a64f5-1e0a-489e-9971-7ad3e7fae7f0'),
       ('6ece0f6b-be38-4de2-8cb7-119cddc5de82', 0, '3501a859-d681-4880-a9d4-abfda78e3398',
        '415c0c74-40d3-4176-9552-a198c17018dd'),
       ('0c956e30-7f95-4328-8faf-0e732c1426b8', 0, 'f633f02f-bb93-439c-95a7-ddd925703850',
        '4695512f-613a-4c81-ad96-fdb3c0e5cb52'),
       ('75fff5dc-ca0f-4499-ad74-fe41c3e9925e', 0, 'a5cbcc3e-dd9d-473e-9015-83eb6b0c0ee4',
        '5809602b-4f05-4bb9-920b-fba16cbc1bf1'),
       ('9c5226fc-4152-46c9-8eac-1d62981be58f', 0, '4cec1c02-062b-4f3e-a17e-49fbbbf54395',
        '5b60093b-5831-4689-a115-75df499858a3'),
       ('d4b1b823-3863-4f11-9210-a585cccf1c27', 0, 'dd67829f-19c6-45aa-9f7d-bdb9666dfd8f',
        '63f7acde-069b-4899-bbab-37c0960db177'),
       ('3e838ed0-8649-4efd-b92f-06cc3e7389df', 0, '9d792668-3550-4c7c-b6bd-54aa509ef292',
        '7245eb9b-cf23-48be-b21b-51b97912a095'),
       ('e2d29b7a-1c63-4c81-9bf2-61ad0aa8e809', 0, '545a7988-20a9-45d7-92c0-1f4c6c87991d',
        '73730f6a-c84b-4588-931e-e6c5d2d51b3b'),
       ('9fb94527-8f2e-452f-afd0-7ee3c28701b8', 0, '42c916da-bb98-465b-948e-9906009e2292',
        '8940a53f-13c4-4d5f-8d67-3fa14235288f'),
       ('6849cedd-9b3a-46fb-b110-0fb4c7072956', 0, 'a1b05444-a3ff-4749-ae68-8876528ce824',
        '947f4dfc-32c4-4c0f-ad57-4a89fc44bb72'),
       ('27f5dcc7-2da5-4326-8475-c83174fac71c', 0, 'b72ac362-56a5-407f-82e9-10cd44311d1d',
        'ac71f5ae-1240-477c-9825-50af1955ce2b'),
       ('623112c4-8ff6-4cb7-be9b-aed063f1fb70', 0, 'f660d8c9-931b-429b-97da-ab4919c46465',
        'b996bfea-b032-4b1c-9990-6bcdda209230'),
       ('778443a0-6060-4347-b51d-9edc60d9741b', 0, '53dc4cc4-a37b-469d-8664-afa1bf4f3ab8',
        'be9ae6fd-49da-4078-b14c-0197e59d9de2'),
       ('6dbea6a2-94bc-4fdb-aff3-a449a853cd4b', 0, '7bfcdad0-9c13-460c-b3f8-aa739e275aad',
        'bf336098-474b-486c-ad52-d98de1b7156e'),
       ('42e4084b-8a33-4b55-9fc7-132d1d6c34c8', 0, '4a0d2842-c826-454f-ad12-5c27b7c0d0ab',
        'd3efd6d4-a7c4-49bf-9361-91cda66f6bfb'),
       ('db04624c-5dfa-40c3-83e0-ca71534d786f', 0, '487a52c1-9dcc-48d6-ad7a-3263998fe2b7',
        'e0777372-f042-41d8-b249-e970bcd57351'),
       ('924fa2d9-e328-42fe-9ab3-0dc415cbb9de', 0, 'efaa6cca-bc3b-482d-b679-368ccf01d1a0',
        'eb7a12ae-cabb-4d81-b16f-4f04911028de'),
       ('c418d960-1372-41b8-bc2f-003ca6b22945', 0, '1d849f33-b1e0-4cba-8e27-433faa5f77e2',
        'eda1b4f0-82ad-499a-8455-c66e669048be'),
       ('7a1829e2-9f87-46fb-b6b9-212b7d4b9557', 0, '7d22d1c4-bb8b-455e-8d16-e66c59ff45a1',
        'f18e8f28-67dc-402f-ab75-1ca416f43ca3');

INSERT INTO dbo.company_booth (booth_id, price, order_id, id) VALUES ('7a1829e2-9f87-46fb-b6b9-212b7d4b9557', 20, 'd5405309-edef-4089-a681-d989124387c3', '171be8b2-98ac-4547-82d6-36855ab66e0e');
INSERT INTO dbo.company_booth (booth_id, price, order_id, id) VALUES ('7a1829e2-9f87-46fb-b6b9-212b7d4b9557', 20, '7ce9cca6-16c6-4ef2-a108-e7c017f74a13', '725b9ed0-67d0-452f-8d50-81cc9676615e');
