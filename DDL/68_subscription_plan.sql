DROP TABLE IF EXISTS `subscription_plan`;
create table subscription_plan
(
    id            char(36)     not null
        primary key,
    name          varchar(100) null,
    description   varchar(300) null,
    price         double       null,
    valid_period  bigint       null,
    jobfair_quota int          null
);


