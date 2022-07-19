DELETE FROM `certification`;

INSERT INTO `certification` (`id`, `name`, `institution`, `issue_date`, `certification_link`, `attendant_id`,
                             `expired_date`, `does_not_expired`)
VALUES ('6a4b9dd0-0fb8-4c51-93f1-b1c10a537a65', 'ga cung lam', 'lam cung ga', 1999, 'acawa',
        '9202b073-f95d-49a5-846b-e1ffe0dc3fc1', 0, NULL),
       ('dd5fd976-01f9-431b-a9a0-fe758165d4e2', 'CCNP', 'Cisco', 2018, 'cisco.com',
        'fba88e6a-742b-4ffa-9ac7-a8058520957f', 0, NULL),
       ('e18c7626-7357-4900-ac42-ee44dd955052', 'esse Excepteur nisi consequat', 'in amet aliquip', 40258320,
        'fugiat qui consectetur sed', '81038a5b-a211-4f0a-aba7-4a869fcf3f26', 0, NULL),
        ('e120x626-7357-4900-ac42-ee44dd955052', 'Cisco Network Certification', 'Cisco Network Company', 1658186685000,
        'https://cdn.slidesharecdn.com/ss_thumbnails/ccnacertificate-13504509776981-phpapp01-121017001746-phpapp01-thumbnail-4.jpg?cb=1350433077', '3f6eda7f-4c49-4f6c-83b2-a4c72612510a', 1658186685000, NULL);
