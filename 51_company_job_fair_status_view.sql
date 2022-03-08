DROP VIEW IF EXISTS company_job_fair_status_view;
CREATE VIEW company_job_fair_status_view AS
(
SELECT a.companyId as companyId, a.jobFairId as jobFairId, company_register_start_time, company_register_end_time, company_buy_booth_start_time, company_buy_booth_end_time, start_time, end_time, registrationId, registrationStatus, orderId, orderStatus, companyBoothId 
FROM
    (SELECT company.id as companyId, job_fair.id as jobFairId, job_fair.company_register_start_time, job_fair.company_register_end_time, job_fair.start_time, job_fair.company_buy_booth_start_time, job_fair.company_buy_booth_end_time, job_fair.end_time
     FROM company 
     CROSS JOIN job_fair 
     WHERE job_fair.status = 4 #JOB FAIR MUST BE APPROVED
    ) a
    LEFT JOIN (
        SELECT t.id as registrationId, t.job_fair_id as jobFairId, t.company_id as companyId, t.status as registrationStatus, o.id as orderId, o.status as orderStatus, cb.booth_id as companyBoothId
        FROM company_registration t
        INNER JOIN (
            SELECT company_id, job_fair_id, max(create_date) AS MaxDate
            FROM company_registration
            GROUP BY company_id, job_fair_id
        ) tm
        ON t.company_id = tm.company_id AND t.job_fair_id = tm.job_fair_id AND t.create_date = tm.MaxDate
        LEFT JOIN `order` o on t.id = o.company_registration_id
        LEFT JOIN company_booth cb on o.id = cb.order_id
    ) lr
    ON lr.companyId = a.companyId and a.jobFairId = lr.jobFairId
);