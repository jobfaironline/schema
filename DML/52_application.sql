DELETE
FROM `application`;

INSERT INTO `application` (`id`, `summary`, `create_date`, `status`, `registration_job_position_id`, `cv_id`,
                           `evaluate_message`, `evaluate_date`, `authorizer_id`)
VALUES ('7151284c-fd71-4673-82bf-92895a2d7b73', 'test create application', 1647795873715, 6,
        '6f299327-6317-4cae-9fd5-03e27456fa87', 'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5', 'al', '1647798274534',
        '79dc6dea-8a7d-4ecc-a5cf-6eeb843467f0');
