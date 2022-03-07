DROP PROCEDURE IF EXISTS CALCULATE_ATTENDANT_JOB_FAIR_STATUS;
DELIMITER ;;
CREATE PROCEDURE CALCULATE_ATTENDANT_JOB_FAIR_STATUS()
BEGIN
    DECLARE n INT DEFAULT 0;
    DECLARE i INT DEFAULT 0;

    DECLARE currentTime BIGINT;
    DECLARE status INT;
    DECLARE id CHAR(36);

    DECLARE attendantId CHAR(36);
    DECLARE jobFairId CHAR(36);
    DECLARE registrationId CHAR(36);
    DECLARE attendant_register_start_time BIGINT;
    DECLARE start_time BIGINT;
    DECLARE end_time BIGINT;


    SET currentTime = UNIX_TIMESTAMP() * 1000;
    DELETE FROM attendant_job_fair_status;
    SELECT COUNT(*) FROM attendant_job_fair_status_view INTO n;
    SET i=0;
    WHILE i<n DO
            SET status = 0;
            SET id = uuid();

            SELECT view.attendantId, view.jobFairId, view.registrationId, view.attendant_register_start_time, view.start_time, view.end_time
            INTO attendantId, jobFairId, registrationId, attendant_register_start_time, start_time, end_time
            FROM attendant_job_fair_status_view view
            LIMIT i,1;

            IF currentTime < attendant_register_start_time THEN
                SET status = 0;
            END IF;
            IF currentTime > attendant_register_start_time AND currentTime < start_time THEN
                IF registrationId IS NULL THEN
                    SET status = 1;
                ELSE
                    SET status = 2;
                END IF ;
            END IF;
            IF currentTime > start_time AND currentTime < end_time THEN
                SET status = 3;
            END IF;
            IF currentTime > end_time THEN
                IF registrationId IS NOT NULL THEN
                    SET status = 4;
                ELSE
                    SET status = 5;
                END IF;
            END IF;

            INSERT INTO attendant_job_fair_status(id, attendantId, jobFairId, status) VALUES (id, attendantId, jobFairId, status);
            SET i = i + 1;
        END WHILE;
END;
;;
DELIMITER ;

CALL CALCULATE_ATTENDANT_JOB_FAIR_STATUS();