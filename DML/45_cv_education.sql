DELETE
FROM `cv_education`;

INSERT INTO `cv_education` (`id`, `subject`, `school`, `from_date`, `to_date`, `achievement`, `cv_id`,
                            `qualification_id`, `achievement_key_word`)
VALUES ('271f9436-a7f9-11ec-a83b-f7e48e1bdaf5', 'SE', 'FPT', 2018, 2022, 'Excellent',
        'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5', 1, 'something to write');
INSERT INTO `cv_education` (`id`, `subject`, `school`, `from_date`, `to_date`, `achievement`, `cv_id`,
                            `qualification_id`, `achievement_key_word`) VALUES ('990e2d97-0f60-4abe-88ef-6cd7b56c9a08', 'Master of Science (MSc), Computer Science', 'Lancaster University', 1431536400000, 1497373200000, 'Grade: Distintion - 75.78', '47d6d762-351a-45bf-943f-db50d36fd5e3', 1, 'something to write');
