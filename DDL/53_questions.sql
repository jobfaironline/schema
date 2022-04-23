drop table if exists questions;
create table questions
(
    id            varchar(36)  not null
        primary key,
    content       varchar(255) null,
    createDate    bigint       null,
    updateDate    bigint       null,
    status        int          null,
    jobPositionId varchar(36)  null,
    constraint question_job_position_id_fk
        foreign key (jobPositionId) references job_position (id)
);
