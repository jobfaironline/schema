DROP TABLE IF EXISTS cv_reference;
CREATE TABLE cv_reference
(
    id           char(36) NOT NULL,
    full_name    varchar(1000) DEFAULT NULL,
    position     varchar(100)  DEFAULT NULL,
    company      varchar(1000) DEFAULT NULL,
    email        varchar(322)  DEFAULT NULL,
    phone_number char(11)      DEFAULT NULL,
    cv_id        char(36)      DEFAULT NULL,
    PRIMARY KEY (id),
    KEY reference_cv_id_fk (cv_id),
    CONSTRAINT reference_cv_id_fk FOREIGN KEY (cv_id) REFERENCES cv (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO dbo.cv_reference (id, full_name, position, company, email, phone_number, cv_id)
VALUES ('55ca2390-de34-458f-90f7-01a8b4e493d1', 'Bui Minh Khoi', 'Lao cong', 'Apple', 'ceo@apple.com', '0917499917',
        '7cbe9910-8bf5-4e11-90bb-63d7a8d16c79');
INSERT INTO dbo.cv_reference (id, full_name, position, company, email, phone_number, cv_id)
VALUES ('6b1fc476-a7f9-11ec-a83b-f7e48e1bdaf5', 'Bui Minh Khoi', 'CEO', 'Apple', 'ceo@apple.com', '0917499917',
        'd45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5');
INSERT INTO dbo.cv_reference (id, full_name, position, company, email, phone_number, cv_id)
VALUES ('79451060-5c26-4348-8974-183c6195e023', 'Bui Minh Khoi', 'Hốt rác', 'Apple', 'ceo@apple.com', '0917499917',
        '7cbe9910-8bf5-4e11-90bb-63d7a8d16c79');

