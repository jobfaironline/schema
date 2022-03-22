DROP TABLE IF EXISTS cv_certification;
CREATE TABLE cv_certification
(
    id                 char(36)      NOT NULL,
    name               varchar(1000) NOT NULL,
    institution        varchar(100)  DEFAULT NULL,
    year               int           DEFAULT NULL,
    certification_link varchar(2048) DEFAULT NULL,
    cv_id              char(36)      DEFAULT NULL,
    PRIMARY KEY (id),
    KEY                certification_cv_id_fk (cv_id),
    CONSTRAINT certification_cv_id_fk FOREIGN KEY (cv_id) REFERENCES cv (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO cv_certification (id, name, institution, year, certification_link, cv_id)
VALUES ('04d197da-a7f9-11ec-a83b-f7e48e1bdaf5', 'AWS', 'AWS', 2022, 'https://aws.com',
        'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5');