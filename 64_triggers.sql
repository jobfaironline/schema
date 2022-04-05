DROP TRIGGER IF EXISTS insert_registration;
DELIMITER ;;
CREATE TRIGGER insert_registration AFTER INSERT ON dbo.company_registration
FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
END ;;

DELIMITER ;

DROP TRIGGER IF EXISTS update_registration;
DELIMITER ;;
CREATE TRIGGER update_registration AFTER UPDATE ON dbo.company_registration
    FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
END ;;

DELIMITER ;

DROP TRIGGER IF EXISTS delete_registration;
DELIMITER ;;
CREATE TRIGGER delete_registration AFTER DELETE ON dbo.company_registration
    FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
END ;;

DELIMITER ;

DROP TRIGGER IF EXISTS insert_job_fair;
DELIMITER ;;
CREATE TRIGGER insert_job_fair AFTER INSERT ON dbo.job_fair
    FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
    CALL CALCULATE_ADMIN_JOB_FAIR_STATUS();
    CALL CALCULATE_ATTENDANT_JOB_FAIR_STATUS();
END ;;

DELIMITER ;

DROP TRIGGER IF EXISTS update_job_fair;
DELIMITER ;;
CREATE TRIGGER update_job_fair AFTER UPDATE ON dbo.job_fair
    FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
    CALL CALCULATE_ADMIN_JOB_FAIR_STATUS();
    CALL CALCULATE_ATTENDANT_JOB_FAIR_STATUS();
END ;;

DELIMITER ;

DROP TRIGGER IF EXISTS delete_job_fair;
DELIMITER ;;
CREATE TRIGGER delete_job_fair AFTER DELETE ON dbo.job_fair
    FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
    CALL CALCULATE_ADMIN_JOB_FAIR_STATUS();
    CALL CALCULATE_ATTENDANT_JOB_FAIR_STATUS();
END ;;

DELIMITER ;

DROP TRIGGER IF EXISTS insert_company_booth;
DELIMITER ;;
CREATE TRIGGER insert_company_booth AFTER INSERT ON dbo.company_booth
    FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
END ;;

DELIMITER ;

DROP TRIGGER IF EXISTS update_company_booth;
DELIMITER ;;
CREATE TRIGGER update_company_booth AFTER UPDATE ON dbo.company_booth
    FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
END ;;

DELIMITER ;

DROP TRIGGER IF EXISTS delete_company_booth;
DELIMITER ;;
CREATE TRIGGER delete_company_booth AFTER DELETE ON dbo.company_booth
    FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
END ;;

DELIMITER ;


DROP TRIGGER IF EXISTS insert_company;
DELIMITER ;;
CREATE TRIGGER insert_company AFTER INSERT ON dbo.company
    FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
END ;;

DELIMITER ;

DROP TRIGGER IF EXISTS update_company;
DELIMITER ;;
CREATE TRIGGER update_company AFTER UPDATE ON dbo.company
    FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
END ;;

DELIMITER ;

DROP TRIGGER IF EXISTS delete_company;
DELIMITER ;;
CREATE TRIGGER delete_company AFTER DELETE ON dbo.company
    FOR EACH ROW
BEGIN
    CALL CALCULATE_COMPANY_JOB_FAIR_STATUS();
END ;;

DELIMITER ;