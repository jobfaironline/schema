DELETE from `cv_certification`;

INSERT INTO `cv_certification` (`id`, `name`, `institution`, `issue_date`, `certification_link`, `cv_id`,
                                `expired_date`, `does_not_expired`)
VALUES ('04d197da-a7f9-11ec-a83b-f7e48e1bdaf5', 'AWS', 'AWS', 2022, 'https://aws.com',
        'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5', 0, NULL),
       ('1533c682-e872-4998-9ba3-7144e83f810d', 'ut aute', 'proident et laborum in', NULL, 'est enim elit nisi',
        'e7454c16-f564-41dd-a506-025f536329fb', NULL, NULL),
       ('7f333c02-7c65-43d6-99e0-2941fad160bd', 'irure sit et ex fugiat', 'esse anim', NULL,
        'ut dolore enim est veniam', 'e7454c16-f564-41dd-a506-025f536329fb', NULL, NULL),
       ('90c33a61-146d-4161-856c-a0f30ef78ea3', 'ut aute', 'proident et laborum in', 0, 'est enim elit nisi',
        '11c35c17-5aa6-43ce-9b86-dfe79b836869', 0, NULL),
       ('d4829812-722f-4e52-8f2b-9c4386f22741', 'irure sit et ex fugiat', 'esse anim', 0, 'ut dolore enim est veniam',
        '11c35c17-5aa6-43ce-9b86-dfe79b836869', 0, NULL);

INSERT INTO `cv_certification` (`id`, `name`, `institution`, `issue_date`, `certification_link`, `cv_id`,
                                `expired_date`, `does_not_expired`) VALUES ('9b282472-156a-4d14-b10c-4f9f4d1633ba', 'Understanding Software Requirement Using Agile Scrum', ' FPT Software', 1644808067000, 'https://i.imgur.com/ItzAR71.jpg', '47d6d762-351a-45bf-943f-db50d36fd5e3', null, null);
