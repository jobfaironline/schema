DROP TABLE IF EXISTS cv_education;
CREATE TABLE cv_education
(
    id               char(36)     NOT NULL,
    subject          varchar(100) NOT NULL,
    school           varchar(100)  DEFAULT NULL,
    from_date        bigint        DEFAULT NULL,
    to_date          bigint        DEFAULT NULL,
    achievement      varchar(5000) DEFAULT NULL,
    cv_id            char(36)      DEFAULT NULL,
    qualification_id int           DEFAULT NULL,
    PRIMARY KEY (id),
    KEY              education_qualification_id_cv__fk (qualification_id),
    KEY              education_cv_id_fk (cv_id),
    CONSTRAINT education_cv_id_fk FOREIGN KEY (cv_id) REFERENCES cv (id),
    CONSTRAINT education_qualification_id_cv__fk FOREIGN KEY (qualification_id) REFERENCES qualification (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO cv_education (id, subject, school, from_date, to_date, achievement, cv_id, qualification_id)
VALUES ('271f9436-a7f9-11ec-a83b-f7e48e1bdaf5', 'SE', 'FPT', 2018, 2022, 'Excellent',
        'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5', 1);