DROP TABLE IF EXISTS cv_skill;
CREATE TABLE cv_skill
(
    id          char(36) NOT NULL,
    name        varchar(100) DEFAULT '',
    proficiency int          DEFAULT '0',
    cv_id       char(36)     DEFAULT NULL,
    PRIMARY KEY (id),
    KEY         cv_skill_cv_id_fk (cv_id),
    CONSTRAINT cv_skill_cv_id_fk FOREIGN KEY (cv_id) REFERENCES cv (id)
) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;