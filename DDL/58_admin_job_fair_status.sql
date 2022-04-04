DROP TABLE IF EXISTS admin_job_fair_status;
CREATE TABLE admin_job_fair_status
(
    jobFairId CHAR(36) PRIMARY KEY,
    status    int,
    FOREIGN KEY (jobFairId) REFERENCES job_fair (id)

);

