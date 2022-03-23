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
    KEY certification_cv_id_fk (cv_id),
    CONSTRAINT certification_cv_id_fk FOREIGN KEY (cv_id) REFERENCES cv (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO cv_certification (id, name, institution, year, certification_link, cv_id)
VALUES ('04d197da-a7f9-11ec-a83b-f7e48e1bdaf5', 'AWS', 'AWS', 2022, 'https://aws.com',
        'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5');
INSERT INTO dbo.cv_certification (id, name, institution, year, certification_link, cv_id)
VALUES ('04d197da-a7f9-11ec-a83b-f7e48e1bdaf5', 'AWS', 'AWS', 2022, 'https://aws.com',
        'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5');
INSERT INTO dbo.cv_certification (id, name, institution, year, certification_link, cv_id)
VALUES ('106dabdb-5edd-4467-8639-060b04c5f82f', 'Cloud', 'Cloud', 2021, 'https://github.com',
        '7cbe9910-8bf5-4e11-90bb-63d7a8d16c79');
INSERT INTO dbo.cv_certification (id, name, institution, year, certification_link, cv_id)
VALUES ('d82e5649-0adf-4b50-9822-2e831c24ce48', 'Network', 'Network', 2020, 'https://network.com',
        '7cbe9910-8bf5-4e11-90bb-63d7a8d16c79');

