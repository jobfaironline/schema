DELETE
FROM `cv_work_history`;

INSERT INTO `cv_work_history` (`id`, `position`, `company`, `from_date`, `to_date`, `is_current_job`, `description`,
                               `cv_id`)
VALUES ('8a34f37c-a7f9-11ec-a83b-f7e48e1bdaf5', 'CEO', 'Apple', 2022, 2023, 0, 'Apple CEO',
        'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5');

INSERT INTO `cv_work_history` (`id`, `position`, `company`, `from_date`, `to_date`, `is_current_job`, `description`,
                               `cv_id`, `description_key_word`) VALUES ('138c07b2-6a5a-4c08-8a44-6e0950f57eb8', 'Department of Post and Telecommunication · Full-time', 'FPT Education', 1652461200000, 1655139600000, 1, 'I''m a Full Stack Software Engineer with 7 years of experience in Web Development. I have 5 years of experience in Modern Front-End Web Development and 4 years of .NET-related technologies.
With my knowledge in UI/UX design, I enjoy solving front-end related problems, creating the best user experience for users. I also spend time learning new technologies and best practices to become a better engineer.', '47d6d762-351a-45bf-943f-db50d36fd5e3', 'I enjoy solving front-end related problems');
