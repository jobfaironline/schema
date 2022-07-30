DROP TABLE IF EXISTS `subscription_plan`;
CREATE TABLE subscription_plan
(
    id          char(36)     not null
        primary key,
    name        varchar(100) null,
    description varchar(300) null,
    price       double       null
);


