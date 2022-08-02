DROP TABLE IF EXISTS `subscription`;
CREATE TABLE subscription
(
    id                     char(36)  not null
        primary key,
    status                 int       DEFAULT '0',
    current_period_start   bigint    DEFAULT '0',
    current_period_end     bigint    DEFAULT '0',
    cancel_at              bigint    DEFAULT '0',
    default_payment_method int       DEFAULT '0',
    subscription_plan_id   char(36)  NOT NULL,
    company_id             char(36)  NOT NULL,
    price                  double    DEFAULT '0',
    transaction_id         char(100) DEFAULT '',
    constraint subscription_company_id_fk
        foreign key (company_id) references company (id),
    constraint subscription_subscription_plan_id_fk
        foreign key (subscription_plan_id) references subscription_plan (id)
);
