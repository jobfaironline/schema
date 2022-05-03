drop table if exists choices; 
create table choices
(
    id         char(36)   not null,
    content    nvarchar(255) null,
    isCorrect  tinyint       null,
    questionId char(36)      null,
    constraint choices_pk
        primary key (id),
    constraint choices_questions_id_fk
        foreign key (questionId) references questions (id)
);


