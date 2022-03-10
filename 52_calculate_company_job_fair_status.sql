DROP PROCEDURE IF EXISTS CALCULATE_COMPANY_JOB_FAIR_STATUS;
DELIMITER ;;
CREATE PROCEDURE CALCULATE_COMPANY_JOB_FAIR_STATUS()
BEGIN
    DECLARE n INT DEFAULT 0;
    DECLARE i INT DEFAULT 0;
    DECLARE companyId CHAR(36);
    DECLARE jobFairId CHAR(36);
    DECLARE registrationId CHAR(36);
    DECLARE companyBoothId CHAR(36);
    DECLARE registrationStatus INT;
    DECLARE id CHAR(36);
    DECLARE status INT;
    DECLARE currentTime BIGINT;
    DECLARE company_register_start_time BIGINT;
    DECLARE company_register_end_time BIGINT;
    DECLARE company_buy_booth_start_time BIGINT;
    DECLARE company_buy_booth_end_time BIGINT;
    DECLARE start_time BIGINT;
    DECLARE end_time BIGINT;

    SET currentTime = UNIX_TIMESTAMP() * 1000;
    DELETE FROM company_job_fair_status;
    SELECT COUNT(*) FROM company_job_fair_status_view INTO n;
    SET i=0;
    WHILE i<n DO
            SET status = 0;
            SELECT a.jobFairId, a.companyId, a.company_register_start_time, a.company_register_end_time, a.start_time, a.registrationId, a.registrationStatus, a.company_buy_booth_start_time, a.company_buy_booth_end_time, a.companyBoothId, a.end_time
            INTO jobFairId, companyId, company_register_start_time, company_register_end_time, start_time, registrationId, registrationStatus, company_buy_booth_start_time, company_buy_booth_end_time, companyBoothId, end_time
            FROM company_job_fair_status_view a LIMIT i,1;
            SET id = uuid();

            IF currentTime < company_register_start_time THEN
                SET status = 0;
            END IF ;
            IF currentTime > company_register_start_time AND currentTime < company_register_end_time THEN
                SET status = 1;
            END IF ;
            IF registrationId IS NOT NULL AND currentTime < start_time THEN
                IF registrationStatus = 2 AND currentTime < company_register_end_time THEN
                    SET status = 2;
                END IF ;
                IF registrationStatus = 4 AND currentTime < company_buy_booth_start_time THEN
                    SET status = 3;
                END IF ;
                IF registrationStatus = 5 AND currentTime < company_register_end_time THEN
                    SET status = 4;
                END IF ;
                IF registrationStatus = 4 AND currentTime > company_buy_booth_start_time AND currentTime < company_buy_booth_end_time THEN
                    SET status = 5;
                END IF ;
                IF registrationStatus = 4 AND companyBoothId IS NOT NULL AND currentTime < start_time THEN
                    SET status = 6;
                END IF ;
                IF registrationStatus = 6 AND currentTime < company_register_end_time THEN
                    SET status = 10;
                END IF ;
            END IF ;
            IF currentTime > start_time AND currentTime < end_time THEN
                SET status = 7;
            END IF ;
            IF currentTime > end_time THEN
                IF companyBoothId IS NOT NULL THEN
                    SET status = 8;
                ELSE
                    SET status = 9;
                END IF;
            END IF ;


            INSERT INTO company_job_fair_status (id, companyId, jobFairId, status) VALUES (id, companyId, jobFairId, status);
            SET i = i + 1;
    END WHILE;
End;
;;
DELIMITER ;

CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();