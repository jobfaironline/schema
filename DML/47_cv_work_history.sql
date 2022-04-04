DELETE
FROM `cv_work_history`;

INSERT INTO `cv_work_history` (`id`, `position`, `company`, `from_date`, `to_date`, `is_current_job`, `description`,
                               `cv_id`)
VALUES ('8a34f37c-a7f9-11ec-a83b-f7e48e1bdaf5', 'CEO', 'Apple', 2022, 2023, 0, 'Apple CEO',
        'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5');
