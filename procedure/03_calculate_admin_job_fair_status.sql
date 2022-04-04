DROP PROCEDURE IF EXISTS CALCULATE_ADMIN_JOB_FAIR_STATUS;
DELIMITER ;;
CREATE PROCEDURE CALCULATE_ADMIN_JOB_FAIR_STATUS()
BEGIN
    DECLARE n INT DEFAULT 0;
    DECLARE i INT DEFAULT 0;

    DECLARE currentTime BIGINT;
    DECLARE status INT;

    DECLARE jobFairId CHAR(36);
    DECLARE company_register_start_time BIGINT;
    DECLARE company_register_end_time BIGINT;
    DECLARE company_buy_booth_start_time BIGINT;
    DECLARE company_buy_booth_end_time BIGINT;
    DECLARE attendant_register_start_time BIGINT;
    DECLARE start_time BIGINT;
    DECLARE end_time BIGINT;


    SET currentTime = UNIX_TIMESTAMP() * 1000;
    DELETE FROM admin_job_fair_status;
    SELECT COUNT(*) FROM job_fair j WHERE j.status = 4 INTO n;
    SET i=0;
    WHILE i<n DO
            SET status = 0;

            SELECT j.id, j.company_register_start_time, j.company_register_end_time, j.company_buy_booth_start_time, j.company_buy_booth_end_time, j.attendant_register_start_time, j.start_time, j.end_time
            INTO jobFairId, company_register_start_time, company_register_end_time, company_buy_booth_start_time, company_buy_booth_end_time, attendant_register_start_time, start_time, end_time
            FROM job_fair j
            WHERE j.status = 4
            LIMIT i,1;

            IF currentTime < company_register_start_time THEN
                SET status = 0;
            END IF;
            IF currentTime > company_register_start_time AND currentTime < company_register_end_time THEN
                SET status = 1;
            END IF;
            IF currentTime > company_register_end_time AND currentTime < company_buy_booth_start_time THEN
                SET status = 7;
            END IF;
            IF currentTime > company_buy_booth_start_time AND currentTime < company_buy_booth_end_time THEN
                SET status = 2;
            END IF;
            IF currentTime > company_buy_booth_end_time AND currentTime < attendant_register_start_time THEN
                set status = 7;
            END IF ;
            IF currentTime > attendant_register_start_time AND currentTime < start_time THEN
                set status = 3;
            END IF;
            IF currentTime > start_time AND currentTime < end_time THEN
                set status = 4;
            END IF;
            IF currentTime > end_time THEN
                set status = 5;
            END IF;

            INSERT INTO admin_job_fair_status(jobFairId, status) VALUES (jobFairId, status);
            SET i = i + 1;
        END WHILE;
END;
;;
DELIMITER ;

CALL CALCULATE_ADMIN_JOB_FAIR_STATUS();
