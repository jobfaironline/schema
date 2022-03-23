DROP TABLE IF EXISTS cv_skill;
CREATE TABLE cv_skill
(
    id          char(36) NOT NULL,
    name        varchar(100) DEFAULT '',
    proficiency int          DEFAULT '0',
    cv_id       char(36)     DEFAULT NULL,
    PRIMARY KEY (id),
    KEY cv_skill_cv_id_fk (cv_id),
    CONSTRAINT cv_skill_cv_id_fk FOREIGN KEY (cv_id) REFERENCES cv (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO dbo.cv_skill (id, name, proficiency, cv_id)
VALUES ('6595241a-7ecc-406c-9bb4-2a81e78e8b5b', 'Đọc lệnh', 5, '7cbe9910-8bf5-4e11-90bb-63d7a8d16c79');
INSERT INTO dbo.cv_skill (id, name, proficiency, cv_id)
VALUES ('b84e2912-8a85-499c-a19e-88b0e8133876', 'Giảng hòa', 5, '7cbe9910-8bf5-4e11-90bb-63d7a8d16c79');
