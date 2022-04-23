drop table if exists questions;
create table questions
(
    id            char(36)  not null
        primary key,
    content       varchar(500) null,
    createDate    bigint       null,
    updateDate    bigint       null,
    status        int          null,
    jobPositionId char(36)  null,
    constraint question_job_position_id_fk
        foreign key (jobPositionId) references job_position (id)
);
