DROP VIEW IF EXISTS attendant_job_fair_status_view;
CREATE VIEW attendant_job_fair_status_view AS (
     SELECT attendant.account_id as attendantId, job_fair.id as jobFairId, ar.id as registrationId, job_fair.attendant_register_start_time, job_fair.start_time, job_fair.end_time
     FROM attendant
     CROSS JOIN job_fair 
     LEFT JOIN attendant_registration ar
     ON attendant.account_id = ar.attendant_id AND job_fair.id = ar.job_fair_id
     WHERE job_fair.status = 4
     #JOB FAIR MUST BE APPROVED
);