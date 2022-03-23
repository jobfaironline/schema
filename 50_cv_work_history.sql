DROP TABLE IF EXISTS cv_work_history;
CREATE TABLE cv_work_history
(
    id             char(36) NOT NULL,
    position       varchar(100)  DEFAULT NULL,
    company        varchar(100)  DEFAULT NULL,
    from_date      bigint        DEFAULT NULL,
    to_date        bigint        DEFAULT NULL,
    is_current_job tinyint(1)    DEFAULT NULL,
    description    varchar(5000) DEFAULT NULL,
    cv_id          char(36)      DEFAULT NULL,
    PRIMARY KEY (id),
    KEY work_history_cv_id_fk (cv_id),
    CONSTRAINT work_history_cv_id_fk FOREIGN KEY (cv_id) REFERENCES cv (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
INSERT INTO cv_work_history (id, position, company, from_date, to_date, is_current_job, description, cv_id)
VALUES ('8a34f37c-a7f9-11ec-a83b-f7e48e1bdaf5', 'CEO', 'Apple', 2022, 2023, 0, 'Apple CEO',
        'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5');
INSERT INTO dbo.cv_work_history (id, position, company, from_date, to_date, is_current_job, description, cv_id)
VALUES ('54bb2b08-343c-4023-aa0a-e95279fd1eb5', 'CEO', 'Keo con chó', 2021, 2024, 1, 'bảo vệ',
        '7cbe9910-8bf5-4e11-90bb-63d7a8d16c79');
INSERT INTO dbo.cv_work_history (id, position, company, from_date, to_date, is_current_job, description, cv_id)
VALUES ('8a34f37c-a7f9-11ec-a83b-f7e48e1bdaf5', 'CEO', 'Apple', 2022, 2023, 0, 'Apple CEO',
        'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5');
INSERT INTO dbo.cv_work_history (id, position, company, from_date, to_date, is_current_job, description, cv_id)
VALUES ('ad9a0bd7-d962-41ce-b280-c0785d931600', 'CEO', 'Keo con Zoi', 2021, 2033, 1, 'thợ chính',
        '7cbe9910-8bf5-4e11-90bb-63d7a8d16c79');