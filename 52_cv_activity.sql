DROP TABLE IF EXISTS cv_activity;
CREATE TABLE cv_activity
(
    id                  char(36) NOT NULL,
    name                varchar(100)  DEFAULT '',
    function_title      varchar(100)  DEFAULT '',
    organization        varchar(100)  DEFAULT '',
    from_date           bigint        DEFAULT '0',
    to_date             bigint        DEFAULT '0',
    is_current_activity tinyint(1) DEFAULT '0',
    description         varchar(5000) DEFAULT NULL,
    cv_id               char(36)      DEFAULT NULL,
    PRIMARY KEY (id),
    KEY                 cv_activity_cv_id_fk (cv_id),
    CONSTRAINT cv_activity_cv_id_fk FOREIGN KEY (cv_id) REFERENCES cv (id)
) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO dbo.cv_activity (id, name, function_title, organization, from_date, to_date, is_current_activity, description, cv_id) VALUES ('5d64bc19-b475-4551-a8fa-ccdc5815b2a4', 'tap luyen', 'hihi', 'HCM', 2012, 2013, 0, 'kiki', '7cbe9910-8bf5-4e11-90bb-63d7a8d16c79');
INSERT INTO dbo.cv_activity (id, name, function_title, organization, from_date, to_date, is_current_activity, description, cv_id) VALUES ('f91e81e2-66b5-4104-ac7a-ee5af37b14df', 'danh cau', 'kaka', 'FPT', 2022, 2020, 1, 'kaka', '7cbe9910-8bf5-4e11-90bb-63d7a8d16c79');

