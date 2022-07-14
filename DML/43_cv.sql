DELETE
FROM `cv`;

INSERT INTO `cv` (`id`, `attendant_id`, `email`, `phone`, `year_of_exp`, `job_level`, `job_title`, `name`)
VALUES ('d45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5', '3f6eda7f-4c49-4f6c-83b2-a4c72612510a', 'default@email.com',
        '0912345678', 0, 0, 'Nhân viên full time', 'CV số 1');

INSERT INTO `cv` (`id`, `attendant_id`, `email`, `phone`, `year_of_exp`, `job_level`, `job_title`, `name`, `full_name`, `country_id`, `about_me`, `profile_image_url`, `create_time`, `update_time`) VALUES ('47d6d762-351a-45bf-943f-db50d36fd5e3', '3f6eda7f-4c49-4f6c-83b2-a4c72612510a', 'attendant4@jobfair.com', '0917499917', 1, 4, 'Engineering Manager', 'Elon Musk CV', 'Yi Long Ma', 60, null, 'https://d3polnwtp0nqe6.cloudfront.net/CvPictureProfile/47d6d762-351a-45bf-943f-db50d36fd5e3', 1657768932474, 1657768980554);