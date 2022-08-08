DROP TABLE IF EXISTS `subscription`;
create table subscription
(
    id                     char(36)     not null
        primary key,
    status                 int          null,
    current_period_start   bigint       null,
    current_period_end     bigint       null,
    cancel_at              bigint       null,
    default_payment_method int          null,
    subscription_plan_id   char(36)     null,
    company_id             char(36)     null,
    price                  double       null,
    transaction_id         char(100)    null,
    refund_status          int          null,
    refund_reason          varchar(400) null,
    jobfair_quota          int          null,
    max_job_fair_quota     int          null,
    requester_id           char(36)     null,
    constraint subscription_company_id_fk
        foreign key (company_id) references company (id),
    constraint subscription_subscription_plan_id_fk
        foreign key (subscription_plan_id) references subscription_plan (id),
    constraint subscription_requester_id_fk
        foreign key (requester_id) references account (id)
);