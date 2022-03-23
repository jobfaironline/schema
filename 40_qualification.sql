DROP TABLE IF EXISTS `qualification`;
CREATE TABLE `qualification`
(
    `id`   int NOT NULL,
    `name` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO dbo.qualification (id, name)
VALUES (0, 'Others');
INSERT INTO dbo.qualification (id, name)
VALUES (1, 'High school');
INSERT INTO dbo.qualification (id, name)
VALUES (2, 'Associate Degree');
INSERT INTO dbo.qualification (id, name)
VALUES (3, 'College');
INSERT INTO dbo.qualification (id, name)
VALUES (4, 'Bachelors');
INSERT INTO dbo.qualification (id, name)
VALUES (5, 'Masters');
INSERT INTO dbo.qualification (id, name)
VALUES (6, 'Doctorate');
