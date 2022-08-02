DROP TABLE IF EXISTS `subscription_plan`;
CREATE TABLE subscription_plan
(
    id          char(36)     not null
        primary key,
    name        varchar(100) DEFAULT '',
    description varchar(300) DEFAULT '',
    price       double       DEFAULT '0',
    valid_period bigint      DEFAULT '0'

);


