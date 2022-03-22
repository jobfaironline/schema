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