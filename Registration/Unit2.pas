unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, IBDatabase, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDataM = class(TDataModule)
    Query_n_ds: TDataSource;
    Query_num_ds: TDataSource;
    Query_serch_nat_ds: TDataSource;
    Query_rep_ds: TDataSource;
    Query_fac_ds: TDataSource;
    Query_rep_goout_ds: TDataSource;
    Query_go_name_ds: TDataSource;
    Q_sh_ship_ds: TDataSource;
    RATION_TYPE_ds: TDataSource;
    DataSource1: TDataSource;
    Q_name_pass_ds: TDataSource;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    Query_efada_ds: TDataSource;
    DataSource5: TDataSource;
    Query_n: TIBQuery;
    Query_num: TIBQuery;
    IBUpdateSQL2: TIBUpdateSQL;
    Query_go_name: TIBQuery;
    Q_name_pass1: TIBQuery;
    Query_serch_nat: TIBQuery;
    Query_rep: TIBQuery;
    Query_rep_goout: TIBQuery;
    Q_name_pass: TIBQuery;
    Query1: TIBQuery;
    dec: TIBQuery;
    RATION_TYPE: TIBQuery;
    Query_fac: TIBQuery;
    Q_sh_ship: TIBQuery;
    q_faculty: TIBQuery;
    q_faculty_ds: TDataSource;
    Query_efada: TIBQuery;
    Query2: TIBQuery;
    Query_serch_natSTUDENT_ID: TIBStringField;
    Query_serch_natAR_NAME: TIBStringField;
    Query_serch_natNATIONALITY: TIBStringField;
    Query1STUDENT_ID: TIBStringField;
    Query1COURSE_ID: TIBStringField;
    Query1MIDTERM_MARK: TIBBCDField;
    Query1ATTENDENCE: TIBBCDField;
    Query1GRADE: TIBBCDField;
    Query1LEVEL_NO: TSmallintField;
    Query1LEVEL_TIME: TIBStringField;
    Query1PASS: TSmallintField;
    Query1AVERAGE: TIBStringField;
    Query_nSTUDENT_ID: TIBStringField;
    Query_nAR_NAME: TIBStringField;
    Query_nEN_NAME: TIBStringField;
    Query_nBIRTH_DATE: TDateField;
    Query_nBIRTH_PLACE: TIBStringField;
    Query_nMOTHER_NAME: TIBStringField;
    Query_nSEX: TIBStringField;
    Query_nRELIGION: TIBStringField;
    Query_nNATIONALITY: TIBStringField;
    Query_nADDRESS: TIBStringField;
    Query_nPHONE_NUMBER: TIBStringField;
    Query_nID_NUMBER: TIBStringField;
    Query_nID_ISSUE_DATE: TDateField;
    Query_nPASS_NUMBER: TIBStringField;
    Query_nPASS_ISSUEPLACE: TIBStringField;
    Query_nPASS_VALIDITY: TDateField;
    Query_nMARITAL_STATUS: TIBStringField;
    Query_nFAMILY_NUMBER: TIBStringField;
    Query_nHOUSING_STATUS: TIBStringField;
    Query_nSUPERIOR_NAME: TIBStringField;
    Query_nRELATIVE_NAME: TIBStringField;
    Query_nDEGREE_OWNED: TIBStringField;
    Query_nDEGREE_DATE: TDateField;
    Query_nGRADUATION_DATE: TDateField;
    Query_nREGISTRATION_DATE: TDateField;
    Query_nPIN: TIBStringField;
    Query_nCLASS: TSmallintField;
    Query_nPICTURE: TBlobField;
    Query_nSTUDENT_STATUS: TIBStringField;
    Query_nNOTES: TBlobField;
    Query_nREGISTRATION_TYPE: TIBStringField;
    Query_numSTUDENT_ID: TIBStringField;
    Query_numAR_NAME: TIBStringField;
    Query_numEN_NAME: TIBStringField;
    Query_numBIRTH_DATE: TDateField;
    Query_numBIRTH_PLACE: TIBStringField;
    Query_numMOTHER_NAME: TIBStringField;
    Query_numSEX: TIBStringField;
    Query_numRELIGION: TIBStringField;
    Query_numNATIONALITY: TIBStringField;
    Query_numADDRESS: TIBStringField;
    Query_numPHONE_NUMBER: TIBStringField;
    Query_numID_NUMBER: TIBStringField;
    Query_numID_ISSUE_DATE: TDateField;
    Query_numPASS_NUMBER: TIBStringField;
    Query_numPASS_ISSUEPLACE: TIBStringField;
    Query_numPASS_VALIDITY: TDateField;
    Query_numMARITAL_STATUS: TIBStringField;
    Query_numFAMILY_NUMBER: TIBStringField;
    Query_numHOUSING_STATUS: TIBStringField;
    Query_numSUPERIOR_NAME: TIBStringField;
    Query_numRELATIVE_NAME: TIBStringField;
    Query_numDEGREE_OWNED: TIBStringField;
    Query_numDEGREE_DATE: TDateField;
    Query_numGRADUATION_DATE: TDateField;
    Query_numREGISTRATION_DATE: TDateField;
    Query_numPIN: TIBStringField;
    Query_numCLASS: TSmallintField;
    Query_numSTUDENT_STATUS: TIBStringField;
    Query_numREGISTRATION_TYPE: TIBStringField;
    Query_repCOURSE_ID: TIBStringField;
    Query_repCOURSE_AR_TITLE: TIBStringField;
    Query_repCOURSE_EN_TITLE: TIBStringField;
    Query_repDEPARTMENT_ID: TIBStringField;
    Query_repDEPT_AR_TITLE: TIBStringField;
    Query_repDEPT_EN_TITLE: TIBStringField;
    Query_repCOURSE_TYPE: TIBStringField;
    Query_repATTENDENCE_REQ: TIBBCDField;
    Query_repMAX_MIDTERM_MARK: TIBBCDField;
    Query_repMIN_FINAL_MARK: TIBBCDField;
    Query_repMAX_FINAL_MARK: TIBBCDField;
    Query_repPASSING_GRADE: TIBBCDField;
    Query_repHOURS: TSmallintField;
    Query_repPREREQUISITE: TIBStringField;
    Query_repNOTES: TBlobField;
    Query_repSTUDENT_ID: TIBStringField;
    Query_repST_AR_NAME: TIBStringField;
    Query_repST_EN_NAME: TIBStringField;
    Query_repCOURSE_ID1: TIBStringField;
    Query_repCOURSE_AR_TITLE1: TIBStringField;
    Query_repCOURSE_EN_TITLE1: TIBStringField;
    Query_repLEVEL_TIME: TIBStringField;
    Query_repLEVEL_NO: TSmallintField;
    Query_repMIDTERM_MARK: TIBBCDField;
    Query_repFINAL_MARK: TIBBCDField;
    Query_repATTENDENCE: TIBBCDField;
    Query_repGRADE: TIBBCDField;
    Query_repPASS: TSmallintField;
    Query_repAVERAGE: TIBStringField;
    Query_repSTUDENT_ID1: TIBStringField;
    Query_repST_AR_NAME1: TIBStringField;
    Query_repST_EN_NAME1: TIBStringField;
    Query_repPHONE_NUMBER: TIBStringField;
    Query_repADDRESS: TIBStringField;
    Query_repSEX: TIBStringField;
    Query_repDEGREE_OWNED: TIBStringField;
    Query_repDEGREE_DATE: TDateField;
    Query_repPICTURE: TBlobField;
    Query_repDEPARTMENT_ID1: TIBStringField;
    Query_repDEPT_AR_TITLE1: TIBStringField;
    Query_repDEPT_EN_TITLE1: TIBStringField;
    Query_repCOMPULSARY_HRS: TIntegerField;
    Query_repSUPPLEMENT_HRS: TIntegerField;
    Query_repELECTIVE_HRS: TIntegerField;
    Query_repCULTURAL_HRS: TIntegerField;
    Query_repSTUDENT_STATUS: TIBStringField;
    Query_repNOTES1: TBlobField;
    Query_repFACULTY_ID: TIBStringField;
    Query_repFACULTY_AR_TITLE: TIBStringField;
    Query_repFACULTY_EN_TITLE: TIBStringField;
    Query_repDEPARTMENT_ID2: TIBStringField;
    Query_repDEPT_AR_TITLE2: TIBStringField;
    Query_repDEPT_EN_TITLE2: TIBStringField;
    Query_rep_gooutCOURSE_ID: TIBStringField;
    Query_rep_gooutCOURSE_AR_TITLE: TIBStringField;
    Query_rep_gooutCOURSE_EN_TITLE: TIBStringField;
    Query_rep_gooutDEPARTMENT_ID: TIBStringField;
    Query_rep_gooutDEPT_AR_TITLE: TIBStringField;
    Query_rep_gooutDEPT_EN_TITLE: TIBStringField;
    Query_rep_gooutCOURSE_TYPE: TIBStringField;
    Query_rep_gooutATTENDENCE_REQ: TIBBCDField;
    Query_rep_gooutMAX_MIDTERM_MARK: TIBBCDField;
    Query_rep_gooutMIN_FINAL_MARK: TIBBCDField;
    Query_rep_gooutMAX_FINAL_MARK: TIBBCDField;
    Query_rep_gooutPASSING_GRADE: TIBBCDField;
    Query_rep_gooutHOURS: TSmallintField;
    Query_rep_gooutPREREQUISITE: TIBStringField;
    Query_rep_gooutNOTES: TBlobField;
    Query_rep_gooutSTUDENT_ID: TIBStringField;
    Query_rep_gooutST_AR_NAME: TIBStringField;
    Query_rep_gooutST_EN_NAME: TIBStringField;
    Query_rep_gooutCOURSE_ID1: TIBStringField;
    Query_rep_gooutCOURSE_AR_TITLE1: TIBStringField;
    Query_rep_gooutCOURSE_EN_TITLE1: TIBStringField;
    Query_rep_gooutLEVEL_TIME: TIBStringField;
    Query_rep_gooutLEVEL_NO: TSmallintField;
    Query_rep_gooutMIDTERM_MARK: TIBBCDField;
    Query_rep_gooutFINAL_MARK: TIBBCDField;
    Query_rep_gooutATTENDENCE: TIBBCDField;
    Query_rep_gooutGRADE: TIBBCDField;
    Query_rep_gooutPASS: TSmallintField;
    Query_rep_gooutAVERAGE: TIBStringField;
    Query_rep_gooutSTUDENT_ID1: TIBStringField;
    Query_rep_gooutST_AR_NAME1: TIBStringField;
    Query_rep_gooutST_EN_NAME1: TIBStringField;
    Query_rep_gooutPHONE_NUMBER: TIBStringField;
    Query_rep_gooutADDRESS: TIBStringField;
    Query_rep_gooutSEX: TIBStringField;
    Query_rep_gooutDEGREE_OWNED: TIBStringField;
    Query_rep_gooutDEGREE_DATE: TDateField;
    Query_rep_gooutPICTURE: TBlobField;
    Query_rep_gooutDEPARTMENT_ID1: TIBStringField;
    Query_rep_gooutDEPT_AR_TITLE1: TIBStringField;
    Query_rep_gooutDEPT_EN_TITLE1: TIBStringField;
    Query_rep_gooutCOMPULSARY_HRS: TIntegerField;
    Query_rep_gooutSUPPLEMENT_HRS: TIntegerField;
    Query_rep_gooutELECTIVE_HRS: TIntegerField;
    Query_rep_gooutCULTURAL_HRS: TIntegerField;
    Query_rep_gooutSTUDENT_STATUS: TIBStringField;
    Query_rep_gooutNOTES1: TBlobField;
    Q_name_passCOURSE_ID: TIBStringField;
    Q_name_passCOURSE_AR_TITLE: TIBStringField;
    Q_name_passCOURSE_EN_TITLE: TIBStringField;
    Q_name_passDEPARTMENT_ID: TIBStringField;
    Q_name_passDEPT_AR_TITLE: TIBStringField;
    Q_name_passDEPT_EN_TITLE: TIBStringField;
    Q_name_passCOURSE_TYPE: TIBStringField;
    Q_name_passATTENDENCE_REQ: TIBBCDField;
    Q_name_passMAX_MIDTERM_MARK: TIBBCDField;
    Q_name_passMIN_FINAL_MARK: TIBBCDField;
    Q_name_passMAX_FINAL_MARK: TIBBCDField;
    Q_name_passPASSING_GRADE: TIBBCDField;
    Q_name_passHOURS: TSmallintField;
    Q_name_passPREREQUISITE: TIBStringField;
    Q_name_passNOTES: TBlobField;
    Q_name_passSTUDENT_ID: TIBStringField;
    Q_name_passST_AR_NAME: TIBStringField;
    Q_name_passST_EN_NAME: TIBStringField;
    Q_name_passCOURSE_ID1: TIBStringField;
    Q_name_passCOURSE_AR_TITLE1: TIBStringField;
    Q_name_passCOURSE_EN_TITLE1: TIBStringField;
    Q_name_passLEVEL_TIME: TIBStringField;
    Q_name_passLEVEL_NO: TSmallintField;
    Q_name_passMIDTERM_MARK: TIBBCDField;
    Q_name_passFINAL_MARK: TIBBCDField;
    Q_name_passATTENDENCE: TIBBCDField;
    Q_name_passGRADE: TIBBCDField;
    Q_name_passPASS: TSmallintField;
    Q_name_passAVERAGE: TIBStringField;
    Q_name_passSTUDENT_ID1: TIBStringField;
    Q_name_passST_AR_NAME1: TIBStringField;
    Q_name_passST_EN_NAME1: TIBStringField;
    Q_name_passPHONE_NUMBER: TIBStringField;
    Q_name_passADDRESS: TIBStringField;
    Q_name_passSEX: TIBStringField;
    Q_name_passDEGREE_OWNED: TIBStringField;
    Q_name_passDEGREE_DATE: TDateField;
    Q_name_passPICTURE: TBlobField;
    Q_name_passDEPARTMENT_ID1: TIBStringField;
    Q_name_passDEPT_AR_TITLE1: TIBStringField;
    Q_name_passDEPT_EN_TITLE1: TIBStringField;
    Q_name_passCOMPULSARY_HRS: TIntegerField;
    Q_name_passSUPPLEMENT_HRS: TIntegerField;
    Q_name_passELECTIVE_HRS: TIntegerField;
    Q_name_passCULTURAL_HRS: TIntegerField;
    Q_name_passSTUDENT_STATUS: TIBStringField;
    Q_name_passNOTES1: TBlobField;
    Q_name_passFACULTY_ID: TIBStringField;
    Q_name_passFACULTY_AR_TITLE: TIBStringField;
    Q_name_passFACULTY_EN_TITLE: TIBStringField;
    Q_name_passDEPARTMENT_ID2: TIBStringField;
    Q_name_passDEPT_AR_TITLE2: TIBStringField;
    Q_name_passDEPT_EN_TITLE2: TIBStringField;
    Query_rep_goouttagder: TStringField;
    Query2STUDENT_ID: TIBStringField;
    Query2AR_NAME: TIBStringField;
    Query2NATIONALITY: TIBStringField;
    Query2REGISTRATION_TYPE: TIBStringField;
    Query2STUDENT_STATUS: TIBStringField;
    Query2FACULTY_AR_TITLE: TIBStringField;
    Query2DEPARTMENT_ID: TIBStringField;
    Query2DEPT_AR_TITLE: TIBStringField;
    Query2STUDENT_ID1: TIBStringField;
    Query2DEPARTMENT_ID1: TIBStringField;
    Query2STUDENT_ID2: TIBStringField;
    Query2COURSE_ID: TIBStringField;
    Query2GRADE: TIBBCDField;
    Query2LEVEL_TIME: TIBStringField;
    Query2PASS: TSmallintField;
    Query2AVERAGE: TIBStringField;
    Query2COURSE_ID1: TIBStringField;
    Query2DEPARTMENT_ID2: TIBStringField;
    Query2HOURS: TSmallintField;
    decGRADUATION_DATE: TDateField;
    decREGISTRATION_DATE: TDateField;
    Q_name_pass1COURSE_ID: TIBStringField;
    Q_name_pass1COURSE_AR_TITLE: TIBStringField;
    Q_name_pass1COURSE_EN_TITLE: TIBStringField;
    Q_name_pass1DEPARTMENT_ID: TIBStringField;
    Q_name_pass1DEPT_AR_TITLE: TIBStringField;
    Q_name_pass1DEPT_EN_TITLE: TIBStringField;
    Q_name_pass1COURSE_TYPE: TIBStringField;
    Q_name_pass1ATTENDENCE_REQ: TIBBCDField;
    Q_name_pass1MAX_MIDTERM_MARK: TIBBCDField;
    Q_name_pass1MIN_FINAL_MARK: TIBBCDField;
    Q_name_pass1MAX_FINAL_MARK: TIBBCDField;
    Q_name_pass1PASSING_GRADE: TIBBCDField;
    Q_name_pass1HOURS: TSmallintField;
    Q_name_pass1PREREQUISITE: TIBStringField;
    Q_name_pass1NOTES: TBlobField;
    Q_name_pass1STUDENT_ID: TIBStringField;
    Q_name_pass1ST_AR_NAME: TIBStringField;
    Q_name_pass1ST_EN_NAME: TIBStringField;
    Q_name_pass1COURSE_ID1: TIBStringField;
    Q_name_pass1COURSE_AR_TITLE1: TIBStringField;
    Q_name_pass1COURSE_EN_TITLE1: TIBStringField;
    Q_name_pass1LEVEL_TIME: TIBStringField;
    Q_name_pass1LEVEL_NO: TSmallintField;
    Q_name_pass1MIDTERM_MARK: TIBBCDField;
    Q_name_pass1FINAL_MARK: TIBBCDField;
    Q_name_pass1ATTENDENCE: TIBBCDField;
    Q_name_pass1GRADE: TIBBCDField;
    Q_name_pass1PASS: TSmallintField;
    Q_name_pass1AVERAGE: TIBStringField;
    Q_name_pass1STUDENT_ID1: TIBStringField;
    Q_name_pass1ST_AR_NAME1: TIBStringField;
    Q_name_pass1ST_EN_NAME1: TIBStringField;
    Q_name_pass1PHONE_NUMBER: TIBStringField;
    Q_name_pass1ADDRESS: TIBStringField;
    Q_name_pass1SEX: TIBStringField;
    Q_name_pass1DEGREE_OWNED: TIBStringField;
    Q_name_pass1DEGREE_DATE: TDateField;
    Q_name_pass1PICTURE: TBlobField;
    Q_name_pass1DEPARTMENT_ID1: TIBStringField;
    Q_name_pass1DEPT_AR_TITLE1: TIBStringField;
    Q_name_pass1DEPT_EN_TITLE1: TIBStringField;
    Q_name_pass1COMPULSARY_HRS: TIntegerField;
    Q_name_pass1SUPPLEMENT_HRS: TIntegerField;
    Q_name_pass1ELECTIVE_HRS: TIntegerField;
    Q_name_pass1CULTURAL_HRS: TIntegerField;
    Q_name_pass1STUDENT_STATUS: TIBStringField;
    Q_name_pass1NOTES1: TBlobField;
    Q_name_pass1FACULTY_ID: TIBStringField;
    Q_name_pass1FACULTY_AR_TITLE: TIBStringField;
    Q_name_pass1FACULTY_EN_TITLE: TIBStringField;
    Q_name_pass1DEPARTMENT_ID2: TIBStringField;
    Q_name_pass1DEPT_AR_TITLE2: TIBStringField;
    Q_name_pass1DEPT_EN_TITLE2: TIBStringField;
    Query_facFACULTY_AR_TITLE: TIBStringField;
    Query_facDEPT_AR_TITLE: TIBStringField;
    q_facultyAR_TITLE: TIBStringField;
    Q_sh_shipSTUDENT_ID: TIBStringField;
    Q_sh_shipAR_NAME: TIBStringField;
    Q_sh_shipEN_NAME: TIBStringField;
    Q_sh_shipNATIONALITY: TIBStringField;
    Q_sh_shipREGISTRATION_TYPE: TIBStringField;
    Q_sh_shipSTUDENT_ID1: TIBStringField;
    Q_sh_shipDEPARTMENT_ID: TIBStringField;
    Q_sh_shipDEPT_AR_TITLE: TIBStringField;
    Q_sh_shipFACULTY_ID: TIBStringField;
    Q_sh_shipFACULTY_AR_TITLE: TIBStringField;
    Q_sh_shipFACULTY_EN_TITLE: TIBStringField;
    Q_sh_shipDEPARTMENT_ID1: TIBStringField;
    Q_sh_shipDEPT_AR_TITLE1: TIBStringField;
    Q_sh_shipDEPT_EN_TITLE: TIBStringField;
    Q_sh_shipSTUDENT_ID2: TIBStringField;
    Q_sh_shipSECTION_TIME: TIBStringField;
    Q_failed: TIBQuery;
    Q_failed_ds: TDataSource;
    RATION_TYPESTUDENT_ID: TIBStringField;
    RATION_TYPEAR_NAME: TIBStringField;
    Q_failedSTUDENT_ID: TIBStringField;
    Q_failedAR_NAME: TIBStringField;
    Query_numPICTURE: TBlobField;
    Query_numNOTES: TBlobField;
    Q_comper_ds: TDataSource;
    Q_comper: TIBQuery;
    Q_comperSTUDENT_ID: TIBStringField;
    Query_efadaSTUDENT_ID: TIBStringField;
    Query_efadaAR_NAME: TIBStringField;
    Query_efadaNATIONALITY: TIBStringField;
    Query_efadaBIRTH_DATE: TDateField;
    Query_efadaBIRTH_PLACE: TIBStringField;
    Query_efadaGRADUATION_DATE: TDateField;
    Query_efadaREGISTRATION_DATE: TDateField;
    Query_efadaFACULTY_AR_TITLE: TIBStringField;
    Query_efadaDEPT_AR_TITLE: TIBStringField;
    Query_go_nameSTUDENT_ID: TIBStringField;
    Query_go_nameAR_NAME: TIBStringField;
    Query_go_nameNATIONALITY: TIBStringField;
    Query_go_nameGRADUATION_DATE: TDateField;
    Q_failedtagder: TStringField;
    DataSource3: TDataSource;
    IBDataSet1: TIBDataSet;
    IBDataSet1STUDENT_ID: TIBStringField;
    IBDataSet1AR_NAME: TIBStringField;
    IBDataSet1EN_NAME: TIBStringField;
    IBDataSet1BIRTH_PLACE: TIBStringField;
    IBDataSet1MOTHER_NAME: TIBStringField;
    IBDataSet1SEX: TIBStringField;
    IBDataSet1RELIGION: TIBStringField;
    IBDataSet1NATIONALITY: TIBStringField;
    IBDataSet1ADDRESS: TIBStringField;
    IBDataSet1PHONE_NUMBER: TIBStringField;
    IBDataSet1ID_NUMBER: TIBStringField;
    IBDataSet1ID_ISSUE_DATE: TDateField;
    IBDataSet1PASS_NUMBER: TIBStringField;
    IBDataSet1PASS_ISSUEPLACE: TIBStringField;
    IBDataSet1PASS_VALIDITY: TDateField;
    IBDataSet1MARITAL_STATUS: TIBStringField;
    IBDataSet1FAMILY_NUMBER: TIBStringField;
    IBDataSet1HOUSING_STATUS: TIBStringField;
    IBDataSet1SUPERIOR_NAME: TIBStringField;
    IBDataSet1RELATIVE_NAME: TIBStringField;
    IBDataSet1DEGREE_OWNED: TIBStringField;
    IBDataSet1DEGREE_DATE: TDateField;
    IBDataSet1PICTURE: TBlobField;
    IBDataSet1NOTES: TBlobField;
    IBDataSet1PIN: TIBStringField;
    IBDataSet1REG_ADJ: TIBStringField;
    IBDataSet1SCHOLARSHIP_SATUS: TIBStringField;
    IBDataSet1BIRTH_DATE: TDateField;
    IBDataSet1FACULTY: TIBStringField;
    IBDataSet1DEPARTMENT: TIBStringField;
    IBDataSet1SCHOOL_END: TDateField;
    IBDataSet1REG_DATE: TDateField;
    IBDataSet1CLASS: TSmallintField;
    IBDataSet1STUDENT_ID1: TIBStringField;
    IBDataSet1COURSE_ID: TIBStringField;
    IBDataSet1SYMESTER_TIME: TIBStringField;
    IBDataSet1GRADE: TIBBCDField;
    IBDataSet1DEPARTMENT1: TIBStringField;
    IBDataSet1COURSE_ID1: TIBStringField;
    IBDataSet1AR_TITLE: TIBStringField;
    IBDataSet1EN_TITLE: TIBStringField;
    IBDataSet1HOURS: TSmallintField;
    IBDataSet1PREREQUISITE: TIBStringField;
    IBDataSet1AR_SYLLABUS: TBlobField;
    IBDataSet1EN_SYLLABUS: TBlobField;
    IBDataSet1DEPARTMENT2: TIBStringField;
    IBDataSet1DEPARTMENT3: TIBStringField;
    IBDataSet1AR_TITLE1: TIBStringField;
    IBDataSet1EN_TITLE1: TIBStringField;
    IBDataSet1FACULTY1: TIBStringField;
    IBDataSet1COMP_HOURS: TSmallintField;
    IBDataSet1TOTAL_HOURS: TSmallintField;
    IBDataSet1SUPP_HOURS: TSmallintField;
    Q_forigen: TIBQuery;
    Q_forigen_ds: TDataSource;
    Query_efadatagder: TStringField;
    procedure Query_rep_goou1tCalcFields(DataSet: TDataSet);
    procedure temp1CalcFields(DataSet: TDataSet);
    procedure Query_efadaCalcFields(DataSet: TDataSet);
 
  private
    { Private declarations }
  public
    { Public declarations }
function pass_AVRAGE1(var num,faculty,dep:string):real;
function hours_sunm(no,dep:string):integer;
function pass(var num,sys:string):string;
function pass_AVRAGE(var num,faculty,sys,dep:string):real;
function pass_tagder(var AVRAGE:real):STRING;
function decode_date(date1:tdate):string;
end;
var
  DataM: TDataM;

implementation

uses Unit21, Unit22, Unit13;

{$R *.DFM}
function  TDataM.decode_date(date1:tdate):string;
var
Year, Month, Day: word;
symester:string;
begin
dec.close;
dec.Prepare;
dec.open;
DecodeDate(date1, Year, Month, Day);
if (Month>=9)and  (Month<=12)then symester:='Œ—Ì›'+IntToStr(year);
if (Month>=1)and  (Month<=2)then symester:='Œ—Ì›'+IntToStr(year);
if (Month>=3)and  (Month<=7)then symester:='—»Ì⁄'+IntToStr(year);
result:=symester;
end;
function TDataM.hours_sunm(no,dep:string):integer;
var
sum:integer;
begin
with IBDataSet1 do
begin
sum:=0;
close;
Prepare;
params[0].value:=no;
params[1].value:=dep;
open;
if  recordcount<>0 then
begin
first;
while not(eof) do
begin
sum:=(sum+IBDataSet1HOURS.Value);
next;
end;
end;
result:=sum;
end;
end;
//***********************//
function TDataM.pass(var num,sys:string):string;
var i:integer;
begin
with Query1 do
begin
i:=0;
close;
Prepare;
params[0].Value:=num;
params[1].Value:=sys;
open;
if RecordCount<>0 then
begin
first;
while not(eof) do
begin
if (Query1pass.value=1) then
begin
i:=1;
next;
end
else
begin
i:=2;
break;
end;
end;
if i=1 then
begin
result:='‰«ÃÕ';
end
else
begin
result:='—«”»';
end;
end;
end;
end;

function TDataM.pass_AVRAGE(var num,faculty,sys,dep:string):real;
var
a,sum_units:integer;
b,sum_u_g:real;
a1:string;
begin
with Query2 do
begin
sum_units:=0;
sum_u_g:=0;
close;
Prepare;
params[0].Value:=num;
params[1].Value:=faculty;
params[2].Value:=sys;
params[3].Value:=dep;
open;
if RecordCount<>0 then
begin
first;
while not(eof) do
begin
if (Query2GRADE.value>=50) then
begin
sum_units:=(sum_units+DataM.Query2HOURS.Value);
sum_u_g:=(sum_u_g+(DataM.Query2GRADE.value*DataM.Query2HOURS.Value));
next;
end
else
begin
sum_u_g:=0;
sum_units:=1;
break;
end;
end;
b:=(sum_u_g/sum_units);
//a1:=floattostr(b);
//a:=strtoint(a1);
end;
end;
result:=b;
end;
//((((((((((((((((((((((((((((((((((//

/////////////////////////////////////////
function TDataM.pass_tagder(var AVRAGE:real):string;
begin
 if (AVRAGE<35) then  result:='÷⁄Ì› Ãœ«';
 if (AVRAGE>=35)and(AVRAGE<50) then  result:='÷⁄Ì›';
 if( (AVRAGE>=50)and(AVRAGE<65)) then result:='„ﬁ»Ê·';
if (AVRAGE>=65)and(AVRAGE<75) then result:='ÃÌœ';
if (AVRAGE>=75)and(AVRAGE<85) then result:='ÃÌœÃœ«';
if (AVRAGE>=85) then  result:='„„ «“';
end;

procedure TDataM.Query_rep_goou1tCalcFields(DataSet: TDataSet);
begin
  if (DataM.Query_rep_gooutGRADE.value<35) then  DataM.Query_rep_goouttagder.value:='÷⁄Ì› Ãœ«';
  if (DataM.Query_rep_gooutGRADE.value>=35)and(DataM.Query_rep_gooutGRADE.value<50) then   DataM.Query_rep_goouttagder.value:='÷⁄Ì›';
  if( (DataM.Query_rep_gooutGRADE.value>=50)and(DataM.Query_rep_gooutGRADE.value<65)) then   DataM.Query_rep_goouttagder.value:='„ﬁ»Ê·';
  if (DataM.Query_rep_gooutGRADE.value>=65)and(DataM.Query_rep_gooutGRADE.value<75) then   DataM.Query_rep_goouttagder.value:='ÃÌœ';
  if (DataM.Query_rep_gooutGRADE.value>=75)and(DataM.Query_rep_gooutGRADE.value<85) then  DataM.Query_rep_goouttagder.value:='ÃÌœÃœ«';
  if (DataM.Query_rep_gooutGRADE.value>=85) then  DataM.Query_rep_goouttagder.value:='„„ «“';
end;


procedure TDataM.temp1CalcFields(DataSet: TDataSet);
var
  AVRAGE:real;
 begin
{ i:=datam.tempSTUDENT_ID.value;
fac:=F_count.ComboBox1.Text;
dep:=F_count.ComboBox2.text;
sys:=F_count.Edit1.Text;
 AVRAGE:=DataM.pass_AVRAGE(i,fac,sys,dep);}


end;

function TDataM.pass_AVRAGE1(var num,faculty,dep:string):real;
var
a,sum_units:integer;
b,sum_u_g:real;
a1:string;
begin
with Query2 do
begin
sum_units:=0;
sum_u_g:=0;
close;
Prepare;
params[0].Value:=num;
params[1].Value:=faculty;
params[2].Value:=dep;
open;
if RecordCount<>0 then
begin
first;
while not(eof) do
begin
if (Query2GRADE.value>=50) then
begin
sum_units:=(sum_units+DataM.Query2HOURS.Value);
sum_u_g:=(sum_u_g+(DataM.Query2GRADE.value*DataM.Query2HOURS.Value));
next;
end
else
begin
sum_u_g:=0;
sum_units:=1;
break;
end;
end;
b:=(sum_u_g/sum_units);
//a1:=floattostr(b);
//a:=strtoint(a1);
end;
end;
result:=b;
end;

procedure TDataM.Query_efadaCalcFields(DataSet: TDataSet);
var te:real;
a,b,c:string;
begin
a:=F_enter_num.edit2.text;
b:=F_enter_num.combobox1.text;
c:=F_enter_num.combobox2.text;
te:=pass_AVRAGE1(a,b,c);
Query_efadatagder.Value:=pass_tagder(te);
end;

end.
