DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`
(
    `id`                char(36)      NOT NULL,
    `email`             varchar(322)  NOT NULL,
    `password`          varchar(72)   NOT NULL,
    `status`            int           NOT NULL,
    `phone`             char(11)     DEFAULT NULL,
    `profile_image_url` varchar(2048) NOT NULL,
    `firstname`         varchar(100)  NOT NULL,
    `lastname`          varchar(100)  NOT NULL,
    `middlename`        varchar(100) DEFAULT NULL,
    `gender_id`         int           NOT NULL,
    `role_id`           int           NOT NULL,
    `create_time`       bigint NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `account_email_uindex` (`email`),
    KEY                 `account_role_id_fk` (`role_id`),
    KEY                 `account_gender_id_fk` (`gender_id`),
    CONSTRAINT `account_gender_id_fk` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
    CONSTRAINT `account_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('04eda9de-e547-4d76-a3e5-4dc04b63d20a', 'registercompanymanager@gmail.com',
        '$2a$10$nctKJsOOkSLKzWoY/Zn/EOm7xoHThejHOu74NrBw3Zotv8LNjXVva', 2, '0909090909',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Test register Company ', 'huhu', 'adipisicing cillum ut ',
        2, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('13f5afab-d3d2-4b07-abea-3047e3a49613', 'jude34@gmail.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('198eecce-a30e-4448-a630-a933fe1693c8', 'kovacek.kian@rowe.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('1aa00264-cd7d-40a3-8584-28728407302a', 'testcreateEmployee@fpt.edu.vn',
        '$2a$10$S8oshqehIWBh1rXYbhZopulo/syNMEbysiW4Y9zQf1mPPeQW4y7IG', 0, '0907752100',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Tram', 'DAO', 'Bao', 1, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('227ba11a-1d5c-4be8-8766-0c471a47bd77', 'destini77@weimann.biz',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('23c59a46-4b88-4aef-9e65-6a8fb4072c4c', 'bins.bonnie@klein.biz',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('26262885-2db6-40ce-ae2c-7027d5743145', 'konichiwa@gmail.com',
        '$2a$10$QraFjVsuW9G2L.OfTpu6VuxQVYAibox59MWUjMWUg09tdiRDToo96', 0, '0523787357',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'deadinside', 'dead outside', 'sleep', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('2743f402-6a2c-4281-887d-b2e9e1c26b7d', 'muller.velva@donnelly.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('2894a832-7e14-4383-ab89-afee745d09db', 'madelyn04@renner.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('3128aa05-fafa-4790-a8dd-219b6741f9d4', 'anhktv@bluebolt.vn',
        '$2a$10$QraFjVsuW9G2L.OfTpu6VuxQVYAibox59MWUjMWUg09tdiRDToo96', 0, '0876556789',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'anh', 'tran', 'kim', 1, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('31ba4aff-a7c7-4398-9359-92fe8d305e3c', '1tramdb1501@gmail.com',
        '$2a$10$/TjH76XR6HEHAmKzJLiiIuZytyVIIUNCR2PSzf.vLZ1fs4sr9zldS', 2, '0934972646',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Tram', 'Dao', 'Bao', 1, 4, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('37588965-73c5-489c-b0d1-1a75c1f77bfa', 'khoibmse140039@fpt.edu.vn',
        '$2a$10$jgbVztMV16cKW49ipdhoYOmtLJixEFizSO25XlyHDcDvmCMjbr.aa', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/PictureProfile/37588965-73c5-489c-b0d1-1a75c1f77bfa', '(Katalon) Bui',
        'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('3824bd51-a997-428c-a13e-ba0305335f36', 'test2@gmail.com',
        '$2a$10$36sRMyS3HFZSAlakm0Wcm.ie/IUA5Z0AxFdAq4XdHUc0RsczgU4iK', 1, '0909090909',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Test register Company ', 'huhu', 'adipisicing cillum ut ',
        2, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('38459e05-87cf-43f7-83c2-81b5138a07a7', 'zbeatty@spencer.biz',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('38f70502-4d4e-4736-b422-2ef81463a45e', 'teststaffcreate@gmail.com',
        '$2a$10$wOEZsLvspSqVKt7ARR2QIOHvDtpfiNwteJpsg9bZz3KnqXDl9qVNO', 2, '0908076670',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'staff', 'test', '2', 1, 1, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('3dd5446f-7cfd-4bb9-8fcb-843caf910659', 'teenlonglanh@gmail.com',
        '$2a$10$dTugEJy42oifsemfrujKG.BU4qfA9GZK8EuAfdJhnm/yG.P13u7Ja', 0, '0934972646',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Helen', 'Dao', 'ab', 1, 4, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('3f6eda7f-4c49-4f6c-83b2-a4c72612510a', 'attendant4@jobfair.com',
        '$2a$10$aIKNKQjw89xve7dBka4tweovLqePo.Fb5ZMq0jHEeYGq3ioeGBZzG', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Attendant 4)', 'Minh', 0, 4, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('411ebf11-82fa-40e9-8655-7d4b5b1ee778', 'testcreate@email.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('4398c22f-3b23-47cb-81c2-4c6a6ddf6c73', 'tientt1938@gmail.com',
        '$2a$10$QraFjVsuW9G2L.OfTpu6VuxQVYAibox59MWUjMWUg09tdiRDToo96', 0, '0938815822',
        'https://d3polnwtp0nqe6.cloudfront.net/PictureProfile/4398c22f-3b23-47cb-81c2-4c6a6ddf6c73', 'tien', 'truong',
        'tran', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('44c474a8-4ef3-4568-83be-4ccccb148c42', 'sayonoharem34@gmail.com',
        '$2a$10$DNx8DVjimCuSiVZyCkQPbeI75x0faSarBkmNwKT5KIe8YuLPqTK.a', 2, '0987765674',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Sayo', 'Hikawa', 'I.', 1, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('47c25632-445d-4b7f-b457-fde28a2baa28', 'mable.lesch@rau.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('47e696d7-ac7e-486d-a293-6c3ca1adc499', 'manager@coopmart.com',
        '$2a$10$QraFjVsuW9G2L.OfTpu6VuxQVYAibox59MWUjMWUg09tdiRDToo96', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', '(Co-Opmart) Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('4b890178-0652-43fb-8ecf-55436fa80fdc', '2tramdb1501@gmail.com',
        '$2a$10$zbqzXZ4O.IPRwm.w50i4a.92i8iJ0pnqq.3k2yPIGfPnqf8Y6I4Ji', 2, '0934972646',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Tram', 'Dao', 'Bao', 1, 4, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('4be41663-f3fd-4b35-8d10-5ec714d11299', 'employee@fsoft.vn',
        '$2a$10$aIKNKQjw89xve7dBka4tweovLqePo.Fb5ZMq0jHEeYGq3ioeGBZzG', 0, '0907752100',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Cole', 'Dietrich', 'apple', 1, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('517cffc2-6dbb-4e3d-9d02-9cbc4ad6de68', 'kmorar@runolfsdottir.info',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('588cd6b1-cf88-4a47-9df2-9495c50636ab', 'kenton71@yahoo.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('5cd0b54e-a002-4894-a58e-57fd27539462', 'schneider.marlon@labadie.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('60f6ee12-2ab0-4889-872e-1b71c0dabc56', 'cynthia.herman@hotmail.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('63d0cdd0-9543-4f16-aee6-8aaee3ce3519', 'staff@jobfair.com',
        '$2a$10$jgbVztMV16cKW49ipdhoYOmtLJixEFizSO25XlyHDcDvmCMjbr.aa', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Staff)', 'Minh', 0, 1, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('6a8a68e6-b78f-4ae0-9f1d-c1e6115b0a63', 'zero.kuroshiro94@gmail.com',
        '$2a$10$Fx2q.w/YN60bnSQRY6i/m.a5iaOkNE7y/dGSEEMgC8d83VZ/pUohO', 2, '0986784532',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'zero', 'shiro', 'kuro', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('6b094643-8224-4490-8aab-bdf8cef6574f', 'aziemann@hotmail.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('6d684282-a93d-4b10-912a-13cc7a7167e4', 'kimanh.tvka@gmail.com',
        '$2a$10$5wl9fNxfGyHwkQzW8zwG..MyHxXxH1TszdMUDnTtXWXIiYStaOkJi', 2, '0763751891',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Anh', 'Tran', 'Vu Kim', 1, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('705604f1-1192-47e4-95ef-ea7d61938ac8', 'successed@language.world',
        '$2a$10$ImWUIhrj/kcIpB5tIvw7POrWfK/aZDfX3XKGLAqbKYDqiIeMMjepG', 0, '0917499917', 'string', 'Language', 'Lord',
        'Super', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('726356e9-1a97-42d1-8371-cbbd4711bf0b', 'carolina.haag@zulauf.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('79dc6dea-8a7d-4ecc-a5cf-6eeb843467f0', 'manager@apple.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', '(Apple) Bui ', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('7bc3076c-392f-444a-ae5b-8ebfd8248097', 'phamcaoson1999@gmail.cu',
        '$2a$10$S8oshqehIWBh1rXYbhZopulo/syNMEbysiW4Y9zQf1mPPeQW4y7IG', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Pham', 'Cao', 'Son', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('7dc105e3-d487-48f5-9f96-8ccb90e21811', 'jast.brenna@zulauf.net',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('7eddd0a6-0c08-40e1-b432-9477c3e9c8b3', 'test@gmail.com',
        '$2a$10$c6kQ3b25XUraWudiaSDP.u2Zp8GJCjI8fYKLRM0gq3w76KJYXgUTG', 2, '0909090909',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Test register Company ', 'huhu', 'adipisicing cillum ut ',
        2, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('806cec12-0505-4df1-9c87-1055505ee0b4', 'waelchi.reyes@schamberger.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('81038a5b-a211-4f0a-aba7-4a869fcf3f26', 'abc@gmail.com',
        '$2a$10$V/MFbP21YLJ3gOi2gYDNH.DLx150zXrrQDmsM3T7LXDNv0wpKwU7S', 0, '0123456789',
        'occaecat aliquip sit eiusmod elit', 'aliquip proident et', 'mollit', 'sed', 0, 4, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('85a20eff-88f1-4c6d-8e2f-4b9afb22dd0a', 'rowland.nader@yahoo.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('8c5d4179-ec27-4aea-9b83-dd324fc23f4a', 'tramdb1501@gmail.com',
        '$2a$10$93/o8UxivL5Kw8bKcirFk.C8HKVx/cYftqIT.zBHOiy1cLdrs4oQG', 2, '0934972646',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Tram', 'Dao', 'Bao', 1, 4, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('8ddd27e1-fa08-486a-a752-77f6971b23e3', 'admin@jobfair.com',
        '$2a$10$X2NQ4.TrQQ8jme.KWS4cFO/fZ3t.KqS5q2Mg.5jfiMDiJEWnSn4FK', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/PictureProfile/8ddd27e1-fa08-486a-a752-77f6971b23e3', 'Bui',
        'Khoi (Admin)', 'Minh', 1, 0, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('9202b073-f95d-49a5-846b-e1ffe0dc3fc1', 'attendant3@jobfair.com',
        '$2a$10$zYTAO0DCglCfUbTkB4/csuwy4MnbeDyHZw6QBsmmcWwPAeKNUUD/a', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Attendant 3)', 'Minh', 0, 4, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('93db4026-6147-47a6-894b-7a1c42eb1ab2', 'brenden.borer@rodriguez.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('966eddcc-7bc7-4f83-b6db-d330cc231c5d', 'von.sharon@yahoo.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('97c5102f-4b16-4225-8841-de33b0acbc69', 'tramdbse140878@fpt.edu.vn',
        '$2a$10$W5/SqK/VMEFIndRQK5KBx.7iqfn.wzctKzj1jIIchJ8Ulqt6GEKHG', 2, '0907752100',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Tram', 'DAO', 'Bao', 1, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('9df03397-f66e-49b7-90a1-6858ac414259', 'tramdb@gmail.com',
        '$2a$10$QraFjVsuW9G2L.OfTpu6VuxQVYAibox59MWUjMWUg09tdiRDToo96', 0, '0907752199',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Tram', 'DAO', 'Bao', 1, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('a4d7947a-25c0-45ce-8890-68de8df9cf4f', 'von.katherine@raynor.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('a8078011-2eb8-4f30-aee0-f43cdaadcd2a', 'talon96@gmail.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('aba1a1ce-aea5-4157-aef2-99b3e8e946f5', 'schuppe.jaron@gulgowski.org',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('ad1de7a4-00b3-426d-b5a0-7accde282708', 'anhtvkse161002@fpt.edu.vn',
        '$2a$10$mMVMhJJxxoohWClH2WZAZuji8I4NhOKRAYTHTNXuSH9PCzWJMcVbS', 2, '0797653456',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'kim', 'anh', 'vu', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('afd2ce05-a9f4-464c-be07-05b840b9a825', 'bednar.lilliana@lubowitz.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('b03c2779-dbdc-4939-94f3-f049b2370905', 'dschiller@ward.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('b6aa5729-b939-4d06-9a78-631c7c002197', 'phamcaoson1999@gmail.com',
        '$2a$10$o0nZjD2Py/RVkEqmU4JYweEnJWVZtVr6qdlQ6TsHWhP9yEWOAqkq.', 0, '0907752100',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Test', 'Update', 'Success', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('b71b20f1-0045-4a97-ba87-d8c377e0bdde', 'turner.gail@pagac.info',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('b7ff4921-7246-4d8f-8c1e-b90358e979fb', 'royce.klein@gmail.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('be42412d-ed7b-45db-84ca-dc17f2dbda55', 'legros.wilmer@ziemann.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('c4fba70f-09d3-400b-b062-c00f96cec9e4', 'employee@apple.com',
        '$2a$10$pz.P0cOnN58fu3VQI683Z.TcV9Ys6pm592H0.OKzszdVBTUrJPULq', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', '(Apple) Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('c66fa4b3-9fa3-47a7-b2c6-99284939db52', 'celine45@hotmail.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('cb79d69f-af7d-4de6-9b9b-6b095ef31998', 'wellington.kohler@hotmail.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('cc93d0f9-0192-4b09-b690-e0c5d98ed9dc', 'zoey.emmerich@barrows.biz',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('ceca0267-ec33-4c99-8bcc-b789b224fbe3', 'email@katalon.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('d11089a0-cbe1-4a9f-a747-06968ff475df', 'jenkins.theron@yahoo.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('d8412309-f7f6-4bcd-b4a8-9cccfe73992f', 'tdavis@gmail.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('d974e19a-65d3-42f7-9fbc-c5ed2ee2c016', 'manager@fsoft.vn',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 2, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', '(Fsoft) Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('e1870833-1fce-401b-b347-3246a60ec799', 'yschaefer@yahoo.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('eaa45824-63a4-4f7e-953d-0184776bbd42', 'helen@gmail.com',
        '$2a$10$DxBb1rZ52c8.nOYdtm.2p.AsaGarLrVxb1glzBBsDVK4h6R1ZOc1S', 1, '0907752199',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Tram', 'DAO', 'Bao', 1, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('eb84ca0e-9e99-401a-90a3-6cfdaa4b2b6d', 'rempel.edythe@shanahan.org',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('ec33402d-3e22-4340-aa0d-605e86d926ca', 'amos.bergnaum@yahoo.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('f3161b8b-2ed3-474c-9958-d38067446a84', 'balistreri.ottis@hickle.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('f3e71941-12d4-46ef-95c6-bf7a76c8d840', 'strosin.julian@lemke.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Manager)', 'Minh', 0, 2, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('f996f062-c1d5-4fcc-a13c-8cae1e210d0d', 'employee2@apple.com',
        '$2a$10$S8oshqehIWBh1rXYbhZopulo/syNMEbysiW4Y9zQf1mPPeQW4y7IG', 1, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', '(Apple) Truong', 'Tran (Employee)', 'Tien', 0, 3, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('fba88e6a-742b-4ffa-9ac7-a8058520957f', 'attendant1@jofair.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Attendant 2)', 'Minh', 0, 4, 0);
INSERT INTO dbo.account (id, email, password, status, phone, profile_image_url, firstname, lastname, middlename,
                         gender_id, role_id, create_time)
VALUES ('fc13e76c-47c5-49d0-a97f-6cb2793d7e37', 'zena50@swaniawski.com',
        '$2a$10$qYRho4ZJt9LNkbmQtL4Yc.IzGzzy.smfq2OkUD1IYF.eH9rFpq61O', 0, '0917499917',
        'https://d3polnwtp0nqe6.cloudfront.net/default.png', 'Bui', 'Khoi (Epmloyee)', 'Minh', 0, 3, 0);
