DROP TABLE IF EXISTS `company_booth_layout`;
CREATE TABLE `company_booth_layout` (
  `id` char(36) NOT NULL,
  `company_booth_id` char(36) NOT NULL,
  `version` int NOT NULL,
  `create_date` bigint NOT NULL,
  `url` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_booth_layout_company_booth_fk` (`company_booth_id`),
  CONSTRAINT `company_booth_layout_company_booth_fk` FOREIGN KEY (`company_booth_id`) REFERENCES `company_booth` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `company_booth_layout` (`id`, `company_booth_id`, `version`, `create_date`, `url`)
VALUES ('1009fb64-a4fe-495e-aa88-83542d07b3f2', 'b996bfea-b032-4b1c-9990-6bcdda209230', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/1009fb64-a4fe-495e-aa88-83542d07b3f2'),
       ('17481e57-f5e2-4c47-a408-130802af59dd', '232a64f5-1e0a-489e-9971-7ad3e7fae7f0', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/17481e57-f5e2-4c47-a408-130802af59dd'),
       ('2a1fd9f7-002e-450c-90c1-6016e56111b1', 'eb7a12ae-cabb-4d81-b16f-4f04911028de', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/2a1fd9f7-002e-450c-90c1-6016e56111b1'),
       ('3aaa9a5b-773f-4bf1-abae-aabaf043fd00', 'ac71f5ae-1240-477c-9825-50af1955ce2b', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/b3100fc7-55a0-4b31-aae7-a6c4dba38ba3'),
       ('40e104a2-6c33-48c1-9090-29c3a45fd1da', '4695512f-613a-4c81-ad96-fdb3c0e5cb52', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/40e104a2-6c33-48c1-9090-29c3a45fd1da'),
       ('5d6a1c24-02e7-46c8-b055-4ab98a0a06dd', '5809602b-4f05-4bb9-920b-fba16cbc1bf1', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/5d6a1c24-02e7-46c8-b055-4ab98a0a06dd'),
       ('7bd03002-1a5a-47a7-b2a2-20ad67b686c9', 'bf336098-474b-486c-ad52-d98de1b7156e', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/7bd03002-1a5a-47a7-b2a2-20ad67b686c9'),
       ('8fbc80c0-b9fd-4710-a660-dd02fb6ee4e1', '63f7acde-069b-4899-bbab-37c0960db177', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/b3100fc7-55a0-4b31-aae7-a6c4dba38ba3'),
       ('9b0de66a-f111-4775-bb72-05b1fa314e22', '73730f6a-c84b-4588-931e-e6c5d2d51b3b', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/17481e57-f5e2-4c47-a408-130802af59dd'),
       ('9d1567a0-1bc2-4365-b287-a30e4e492c12', 'f18e8f28-67dc-402f-ab75-1ca416f43ca3', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/7bd03002-1a5a-47a7-b2a2-20ad67b686c9'),
       ('a5e6cf7b-541e-469a-82ff-db7e2dfcc026', '8940a53f-13c4-4d5f-8d67-3fa14235288f', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/cab59242-a4e2-4441-9a44-73103b7ac359'),
       ('b22f0187-501b-4a70-a3bd-8873c8b4bde2', '5b60093b-5831-4689-a115-75df499858a3', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/fbd53f00-a78b-4f49-9319-35b8f0a8ada5'),
       ('b3100fc7-55a0-4b31-aae7-a6c4dba38ba3', '7245eb9b-cf23-48be-b21b-51b97912a095', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/b3100fc7-55a0-4b31-aae7-a6c4dba38ba3'),
       ('be42e809-1038-4aa3-8943-fd8353089605', '0319c0ce-73db-489b-9b7f-771c73435517', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/7bd03002-1a5a-47a7-b2a2-20ad67b686c9'),
       ('c3a8b272-132a-4048-a7a1-a65fb5a114e7', 'be9ae6fd-49da-4078-b14c-0197e59d9de2', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/c3a8b272-132a-4048-a7a1-a65fb5a114e7'),
       ('c6e88ba2-2ea9-479b-b5cf-a3796ce90206', 'eda1b4f0-82ad-499a-8455-c66e669048be', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/c6e88ba2-2ea9-479b-b5cf-a3796ce90206'),
       ('cab59242-a4e2-4441-9a44-73103b7ac359', 'd3efd6d4-a7c4-49bf-9361-91cda66f6bfb', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/cab59242-a4e2-4441-9a44-73103b7ac359'),
       ('d884bbc9-981c-48fb-9db0-5fbd8373aded', '947f4dfc-32c4-4c0f-ad57-4a89fc44bb72', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/b3100fc7-55a0-4b31-aae7-a6c4dba38ba3'),
       ('e33e8482-cd34-445c-8552-8602f1409d81', '415c0c74-40d3-4176-9552-a198c17018dd', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/e33e8482-cd34-445c-8552-8602f1409d81'),
       ('fbd53f00-a78b-4f49-9319-35b8f0a8ada5', 'e0777372-f042-41d8-b249-e970bcd57351', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/fbd53f00-a78b-4f49-9319-35b8f0a8ada5'),
       ('fdc9f581-73c9-4a3d-b076-49f49fd8b794', '20a32c67-e023-46c7-ab8f-995008408a2a', 0, 1641085200000,
        'https://d3polnwtp0nqe6.cloudfront.net/Booth/fdc9f581-73c9-4a3d-b076-49f49fd8b794');
