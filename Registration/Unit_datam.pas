unit Unit_datam;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDataM = class(TDataModule)
    Query_n_ds: TDataSource;
    Query_n: TQuery;
    Query_num_ds: TDataSource;
    Query_num: TQuery;
    Query_nat: TQuery;
    Query_natAR_NATION: TStringField;
    Query_natEN_NATION: TStringField;
    Query_nat_ds: TDataSource;
    Query_dep: TQuery;
    Query_depDEPARTMENT: TStringField;
    Query_depAR_TITLE: TStringField;
    Query_depEN_TITLE: TStringField;
    Query_depFACULTY: TStringField;
    Query_depTOTAL_HOURS: TSmallintField;
    Query_dep_ds: TDataSource;
    Query_serch_nat_ds: TDataSource;
    Query_serch_nat: TQuery;
    Query_rep_ds: TDataSource;
    Query_rep: TQuery;
    Query_reptagder: TStringField;
    Query_fac_ds: TDataSource;
    Query_fac: TQuery;
    Query_rep_goout: TQuery;
    Query_rep_goouttagder: TStringField;
    Query_rep_goout_ds: TDataSource;
    Query_go_name: TQuery;
    Query_go_name_ds: TDataSource;
    Q_st_status_ds: TDataSource;
    Q_st_status: TQuery;
    Q_sh_ship_ds: TDataSource;
    Q_stu_status: TQuery;
    Q_stu_statusSTUDENT_ID: TStringField;
    Q_stu_statusAR_NAME: TStringField;
    Q_stu_statusEN_NAME: TStringField;
    Q_stu_statusNATIONALITY: TStringField;
    Q_stu_statusDEPARTMET: TStringField;
    Q_stu_statusREG_ADJ: TStringField;
    Q_stu_statusFACULTY: TStringField;
    Q_stu_statusSTUDENT_ID_1: TStringField;
    Q_stu_statusSYMESTER_TIME: TStringField;
    Q_stu_statusDEPARTMENT: TStringField;
    Q_stu_statusAR_TITLE: TStringField;
    Q_stu_statusFACULTY_1: TStringField;
    Q_stu_statusSTUDENT_ID_2: TStringField;
    Q_stu_statusSTUDENT_STATUS: TStringField;
    Q_stu_statusDEPARTMENT_1: TStringField;
    Q_stu_status_ds: TDataSource;
    Q_pass: TQuery;
    Q_passSTUDENT_ID: TStringField;
    Q_passAR_NAME: TStringField;
    Q_passEN_NAME: TStringField;
    Q_passNATIONALITY: TStringField;
    Q_passDEPARTMET: TStringField;
    Q_passREG_ADJ: TStringField;
    Q_passFACULTY: TStringField;
    Q_passSTUDENT_ID_1: TStringField;
    Q_passCOURSE_ID: TStringField;
    Q_passGRADE: TIntegerField;
    Q_passSYMESTER_TIME: TStringField;
    Q_passDEPARTMENT: TStringField;
    Q_passAR_TITLE: TStringField;
    Q_passFACULTY_1: TStringField;
    Q_passSTUDENT_ID_2: TStringField;
    Q_passDEPARTMENT_1: TStringField;
    Q_pass_ds: TDataSource;
    Query1: TQuery;
    Query1STUDENT_ID: TStringField;
    Query1COURSE_ID: TStringField;
    Query1SYMESTER_TIME: TStringField;
    Query1GRADE: TIntegerField;
    DataSource1: TDataSource;
    Q_name_pass_ds: TDataSource;
    Q_name_pass: TQuery;
    Q_name_passSTUDENT_ID: TStringField;
    Q_name_passAR_NAME: TStringField;
    Q_name_passDEPARTMET: TStringField;
    Q_name_passFACULTY: TStringField;
    Q_name_passSTUDENT_ID_1: TStringField;
    Q_name_passCOURSE_ID: TStringField;
    Q_name_passSYMESTER_TIME: TStringField;
    Q_name_passGRADE: TIntegerField;
    Q_name_passDEPARTMENT: TStringField;
    Q_name_passAR_TITLE: TStringField;
    Q_name_passFACULTY_1: TStringField;
    Query2: TQuery;
    Query2STUDENT_ID: TStringField;
    Query2AR_NAME: TStringField;
    Query2DEPARTMET: TStringField;
    Query2FACULTY: TStringField;
    Query2STUDENT_ID_1: TStringField;
    Query2COURSE_ID: TStringField;
    Query2SYMESTER_TIME: TStringField;
    Query2GRADE: TIntegerField;
    Query2DEPARTMENT: TStringField;
    Query2AR_TITLE: TStringField;
    Query2FACULTY_1: TStringField;
    Query2COURSE_ID_1: TStringField;
    Query2HOURS: TSmallintField;
    Query2DEPARTMENT_1: TStringField;
    DataSource2: TDataSource;
    Q_temp: TQuery;
    Q_tempSTUDENT_ID: TStringField;
    Q_tempAR_NAME: TStringField;
    Q_tempTAGDER: TStringField;
    Q_temp_ds: TDataSource;
    Query_com_dep_ds: TDataSource;
    Query_com_dep: TQuery;
    Query_com_depDEPARTMENT: TStringField;
    Query_com_depAR_TITLE: TStringField;
    Query_no_ds: TDataSource;
    Query_no: TQuery;
    Query_noAR_TITLE: TStringField;
    Query_noTOTAL_HOURS: TSmallintField;
    Q_sh_ship: TQuery;
    Q_sh_shipDEPARTMENT: TStringField;
    Q_sh_shipAR_TITLE: TStringField;
    Q_sh_shipFACULTY: TStringField;
    Q_sh_shipSTUDENT_ID: TStringField;
    Q_sh_shipAR_NAME: TStringField;
    Q_sh_shipEN_NAME: TStringField;
    Q_sh_shipDEPARTMET: TStringField;
    Q_sh_shipNATIONALITY: TStringField;
    Q_sh_shipSCHOLARSHIP_SATUS: TStringField;
    Q_sh_shipFACULTY_1: TStringField;
    Q_sh_shipSTUDENT_ID_1: TStringField;
    Q_sh_shipSYMESTER_TIME: TStringField;
    Database1: TDatabase;
    Query_facDEPARTMENT: TStringField;
    Query_facAR_TITLE: TStringField;
    Query_facEN_TITLE: TStringField;
    Query_facFACULTY: TStringField;
    Query_facTOTAL_HOURS: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
     function hours_sunm(no,dep:string):integer;
    function pass(var num,sys:string):string;
    function pass_tagder(var num,faculty,sys,dep:string):string;
  end;

var
  DataM: TDataM;

implementation

{$R *.dfm}

end.
