DROP EVENT IF EXISTS `Calculate_Company_Jobfair_Status`;
CREATE EVENT `Calculate_Company_Jobfair_Status`
    ON SCHEDULE EVERY 5 MINUTE STARTS '2022-03-07 22:00:40'
    ON COMPLETION NOT PRESERVE ENABLE
    DO CALL CALCULATE_COMPANY_JOB_FAIR_STATUS;

DROP EVENT IF EXISTS `Calculate_Attendant_Jobfair_Status`;
CREATE EVENT `Calculate_Attendant_Jobfair_Status`
    ON SCHEDULE EVERY 5 MINUTE
        STARTS '2022-03-07 22:00:40' ON COMPLETION NOT PRESERVE ENABLE
    DO CALL CALCULATE_ATTENDANT_JOB_FAIR_STATUS;

DROP EVENT IF EXISTS `Calculate_Admin_Jobfair_Status`;
CREATE EVENT `Calculate_Admin_Jobfair_Status`
    ON SCHEDULE EVERY 5 MINUTE
        STARTS '2022-03-07 22:00:40' ON COMPLETION NOT PRESERVE ENABLE
    DO CALL CALCULATE_ADMIN_JOB_FAIR_STATUS;