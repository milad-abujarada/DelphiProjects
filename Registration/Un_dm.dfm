object DataM: TDataM
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 150
  Width = 215
  object Query_n_ds: TDataSource
    DataSet = Query_n
    Left = 24
    Top = 16
  end
  object Query_n: TQuery
    DatabaseName = '1'
    RequestLive = True
    SQL.Strings = (
      'SELECT *FROM STUDENT'
      'WHERE'
      '(AR_NAME = :var1)')
    Left = 72
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object Query_num_ds: TDataSource
    DataSet = Query_num
    Left = 16
    Top = 80
  end
  object Query_num: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT *FROM STUDENT'
      'WHERE'
      '(STUDENT_ID = :var1)'
      '')
    Left = 88
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object Query_nat: TQuery
    DatabaseName = '1'
    ParamCheck = False
    RequestLive = True
    SQL.Strings = (
      'select * from nationality')
    Left = 24
    Top = 144
    object Query_natAR_NATION: TStringField
      FieldName = 'AR_NATION'
      Origin = '9.NATIONALITY.AR_NATION'
      Size = 15
    end
    object Query_natEN_NATION: TStringField
      FieldName = 'EN_NATION'
      Origin = '9.NATIONALITY.EN_NATION'
      Size = 16
    end
  end
  object Query_nat_ds: TDataSource
    DataSet = Query_nat
    Left = 80
    Top = 144
  end
  object Query_dep: TQuery
    DatabaseName = '1'
    RequestLive = True
    SQL.Strings = (
      'select*from departments')
    Left = 24
    Top = 208
    object Query_depDEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      Origin = '1.DEPARTMENTS.DEPARTMENT'
      Size = 4
    end
    object Query_depAR_TITLE: TStringField
      FieldName = 'AR_TITLE'
      Origin = '1.DEPARTMENTS.AR_TITLE'
      Size = 40
    end
    object Query_depEN_TITLE: TStringField
      FieldName = 'EN_TITLE'
      Origin = '1.DEPARTMENTS.EN_TITLE'
      Size = 40
    end
    object Query_depFACULTY: TStringField
      FieldName = 'FACULTY'
      Origin = '1.DEPARTMENTS.FACULTY'
      Size = 40
    end
    object Query_depTOTAL_HOURS: TSmallintField
      FieldName = 'TOTAL_HOURS'
      Origin = '1.DEPARTMENTS.TOTAL_HOURS'
    end
  end
  object Query_dep_ds: TDataSource
    DataSet = Query_dep
    Left = 96
    Top = 200
  end
  object Query_serch_nat_ds: TDataSource
    DataSet = Query_serch_nat
    Left = 24
    Top = 264
  end
  object Query_serch_nat: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'select * from student'
      'where '
      'NATIONALITY=:var1')
    Left = 104
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object Query_rep_ds: TDataSource
    DataSet = Query_rep
    Left = 32
    Top = 320
  end
  object Query_rep: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT * FROM STUDENT S, RESULTS R, COURSES C, DEPARTMENTS D'
      'WHERE'
      '(S.STUDENT_ID = :var1)'
      ' AND (D.AR_TITLE = :var2)'
      ' AND (R.STUDENT_ID = S.STUDENT_ID)'
      ' AND (C.COURSE_ID = R.COURSE_ID)'
      ' AND (C.DEPARTMENT = S.DEPARTMET)'
      ' AND (D.DEPARTMENT = C.DEPARTMENT)')
    Left = 104
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
        Value = '100'
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
        Value = #1581#1575#1587#1608#1576
      end>
    object Query_reptagder: TStringField
      FieldKind = fkCalculated
      FieldName = 'tagder'
      Calculated = True
    end
  end
  object Query_fac_ds: TDataSource
    DataSet = Query_fac
    Left = 408
    Top = 8
  end
  object Query_fac: TQuery
    DatabaseName = '1'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DEPARTMENTS '
      'WHERE'
      '(FACULTY =:var1)')
    Left = 480
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_facDEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      Origin = '7.DEPARTMENTS.DEPARTMENT'
      Size = 4
    end
    object Query_facAR_TITLE: TStringField
      FieldName = 'AR_TITLE'
      Origin = '7.DEPARTMENTS.AR_TITLE'
      Size = 40
    end
    object Query_facEN_TITLE: TStringField
      FieldName = 'EN_TITLE'
      Origin = '7.DEPARTMENTS.EN_TITLE'
      Size = 40
    end
    object Query_facFACULTY: TStringField
      FieldName = 'FACULTY'
      Origin = '7.DEPARTMENTS.FACULTY'
      Size = 40
    end
  end
  object Query_rep_goout: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT *FROM STUDENT S, DEPARTMENTS D, RESULTS R, COURSES C, '
      ' DEPT_COURSES D1, DEPARTMENT D2'
      'WHERE'
      '(S.STUDENT_ID = :var1)'
      ' AND (D.DEPARTMENT = S.DEPARTMET)'
      ' AND (D.FACULTY = S.FACULTY)'
      ' AND (R.STUDENT_ID = S.STUDENT_ID)'
      ' AND (C.COURSE_ID = R.COURSE_ID)'
      ' AND (C.DEPARTMENT = D.DEPARTMENT)'
      ' AND (D1.COURSE_ID = C.COURSE_ID)'
      ' AND (D1.DEPARTMENT = C.DEPARTMENT)'
      ' AND (D2.STUDENT_ID = S.STUDENT_ID)'
      ' AND (S.REG_ADJ= '#39#1582#1585#1610#1580#39')'
      ' AND (D2.DEPARTMENT = D.DEPARTMENT)')
    Left = 272
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
        Value = '100'
      end>
    object Query_rep_goouttagder: TStringField
      FieldKind = fkCalculated
      FieldName = 'tagder'
      Calculated = True
    end
  end
  object Query_rep_goout_ds: TDataSource
    DataSet = Query_rep_goout
    Left = 208
    Top = 8
  end
  object Query_go_name: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT *FROM DEPARTMENT D, STUDENT S, DEPARTMENTS D1'
      'WHERE'
      '(S.STUDENT_ID = D.STUDENT_ID)'
      ' AND (S.DEPARTMET = D.DEPARTMENT)'
      ' AND (S.REG_ADJ = '#39#1582#1585#1610#1580#39')'
      ' AND (S.SCHOOL_END >= :var2) AND (S.SCHOOL_END <= :var3)'
      ' AND (D1.DEPARTMENT = S.DEPARTMET)'
      ' AND (D1.AR_TITLE = :var1)')
    Left = 464
    Top = 72
    ParamData = <
      item
        DataType = ftDate
        Name = 'var2'
        ParamType = ptInputOutput
        Value = 37257d
      end
      item
        DataType = ftDate
        Name = 'var3'
        ParamType = ptInputOutput
        Value = 37317d
      end
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
        Value = #1581#1575#1587#1608#1576
      end>
  end
  object Query_go_name_ds: TDataSource
    DataSet = Query_go_name
    Left = 376
    Top = 72
  end
  object Q_st_status_ds: TDataSource
    DataSet = Q_st_status
    Left = 376
    Top = 144
  end
  object Q_st_status: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT *FROM STUDENT S, DEPARTMENT D, DEPARTMENTS D1, RESULTS R'
      'WHERE'
      '(S.SCHOLARSHIP_SATUS =:var1)'
      ' AND (D.STUDENT_ID = S.STUDENT_ID)'
      'OR (D.STUDENT_STATUS = :var2)'
      ' AND (D.DEPARTMENT = S.DEPARTMET)'
      ' AND (D1.DEPARTMENT = D.DEPARTMENT)'
      ' AND (D1.AR_TITLE = :var3)'
      ' AND (D1.FACULTY = S.FACULTY)'
      ' AND (D1.FACULTY = :var4)'
      ' AND (R.STUDENT_ID = S.STUDENT_ID)'
      ' AND (R.symester_time =:var5)')
    Left = 472
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var4'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var5'
        ParamType = ptInputOutput
      end>
  end
  object Q_sh_ship_ds: TDataSource
    DataSet = Q_sh_ship
    Left = 384
    Top = 200
  end
  object Q_stu_status: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT S.STUDENT_ID, S.AR_NAME, S.EN_NAME, S.NATIONALITY, '
      
        ' S.DEPARTMET, S.REG_ADJ, S.FACULTY, R.STUDENT_ID, R.symester_tim' +
        'e,'
      ' D.DEPARTMENT, D.AR_TITLE, D.FACULTY, D1.STUDENT_ID, '
      ' D1.STUDENT_STATUS, D1.DEPARTMENT'
      'FROM STUDENT S, RESULTS R, DEPARTMENTS D, DEPARTMENT D1'
      'WHERE'
      '(S.NATIONALITY = :var1)'
      ' AND (S.FACULTY = :var2)'
      ' AND (R.STUDENT_ID = S.STUDENT_ID)'
      ' AND (R.symester_time = :var3)'
      ' AND (D.DEPARTMENT = S.DEPARTMET)'
      ' AND (D.AR_TITLE = :var4)'
      ' AND (D.FACULTY = S.FACULTY)'
      ' AND (D1.STUDENT_ID = R.STUDENT_ID)'
      ' AND (D1.STUDENT_STATUS =:var5)'
      ' AND (D1.DEPARTMENT = D.DEPARTMENT)')
    Left = 448
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var4'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var5'
        ParamType = ptInputOutput
      end>
    object Q_stu_statusSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 7
    end
    object Q_stu_statusAR_NAME: TStringField
      FieldName = 'AR_NAME'
      Size = 40
    end
    object Q_stu_statusEN_NAME: TStringField
      FieldName = 'EN_NAME'
      Size = 40
    end
    object Q_stu_statusNATIONALITY: TStringField
      FieldName = 'NATIONALITY'
      Size = 15
    end
    object Q_stu_statusDEPARTMET: TStringField
      FieldName = 'DEPARTMET'
      Size = 4
    end
    object Q_stu_statusREG_ADJ: TStringField
      FieldName = 'REG_ADJ'
      Size = 10
    end
    object Q_stu_statusFACULTY: TStringField
      FieldName = 'FACULTY'
      Size = 40
    end
    object Q_stu_statusSTUDENT_ID_1: TStringField
      FieldName = 'STUDENT_ID_1'
      Size = 7
    end
    object Q_stu_statusSYMESTER_TIME: TStringField
      FieldName = 'SYMESTER_TIME'
      Size = 8
    end
    object Q_stu_statusDEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      Size = 4
    end
    object Q_stu_statusAR_TITLE: TStringField
      FieldName = 'AR_TITLE'
      Size = 40
    end
    object Q_stu_statusFACULTY_1: TStringField
      FieldName = 'FACULTY_1'
      Size = 40
    end
    object Q_stu_statusSTUDENT_ID_2: TStringField
      FieldName = 'STUDENT_ID_2'
      Size = 7
    end
    object Q_stu_statusSTUDENT_STATUS: TStringField
      FieldName = 'STUDENT_STATUS'
      Size = 15
    end
    object Q_stu_statusDEPARTMENT_1: TStringField
      FieldName = 'DEPARTMENT_1'
      Size = 4
    end
  end
  object Q_stu_status_ds: TDataSource
    DataSet = Q_stu_status
    Left = 384
    Top = 264
  end
  object Q_pass: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT  S.STUDENT_ID, S.AR_NAME, S.EN_NAME, S.NATIONALITY, '
      ' S.DEPARTMET, S.REG_ADJ, S.FACULTY, R.STUDENT_ID, R.COURSE_ID, '
      ' R.GRADE, R.symester_time, D.DEPARTMENT, D.AR_TITLE, D.FACULTY, '
      ' D1.STUDENT_ID, D1.DEPARTMENT'
      'FROM STUDENT S, RESULTS R, DEPARTMENTS D, DEPARTMENT D1'
      'WHERE'
      '(S.FACULTY = :var1)'
      ' AND (R.STUDENT_ID = S.STUDENT_ID)'
      ' AND (R.symester_time= :var2)'
      ' AND (D.DEPARTMENT = S.DEPARTMET)'
      ' AND (D.AR_TITLE = :var3)'
      ' AND (D.FACULTY = S.FACULTY)'
      ' AND (D1.STUDENT_ID = R.STUDENT_ID)'
      ' AND (D1.DEPARTMENT = D.DEPARTMENT)')
    Left = 440
    Top = 312
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
        Value = #1575#1604#1593#1604#1608#1605
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
        Value = #1582#1585#1610#1601'2002'
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
        Value = #1581#1575#1587#1608#1576
      end>
    object Q_passSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 7
    end
    object Q_passAR_NAME: TStringField
      FieldName = 'AR_NAME'
      Size = 40
    end
    object Q_passEN_NAME: TStringField
      FieldName = 'EN_NAME'
      Size = 40
    end
    object Q_passNATIONALITY: TStringField
      FieldName = 'NATIONALITY'
      Size = 15
    end
    object Q_passDEPARTMET: TStringField
      FieldName = 'DEPARTMET'
      Size = 4
    end
    object Q_passREG_ADJ: TStringField
      FieldName = 'REG_ADJ'
      Size = 10
    end
    object Q_passFACULTY: TStringField
      FieldName = 'FACULTY'
      Size = 40
    end
    object Q_passSTUDENT_ID_1: TStringField
      FieldName = 'STUDENT_ID_1'
      Size = 7
    end
    object Q_passCOURSE_ID: TStringField
      FieldName = 'COURSE_ID'
      Size = 8
    end
    object Q_passGRADE: TIntegerField
      FieldName = 'GRADE'
    end
    object Q_passSYMESTER_TIME: TStringField
      FieldName = 'SYMESTER_TIME'
      Size = 8
    end
    object Q_passDEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      Size = 4
    end
    object Q_passAR_TITLE: TStringField
      FieldName = 'AR_TITLE'
      Size = 40
    end
    object Q_passFACULTY_1: TStringField
      FieldName = 'FACULTY_1'
      Size = 40
    end
    object Q_passSTUDENT_ID_2: TStringField
      FieldName = 'STUDENT_ID_2'
      Size = 7
    end
    object Q_passDEPARTMENT_1: TStringField
      FieldName = 'DEPARTMENT_1'
      Size = 4
    end
  end
  object Q_pass_ds: TDataSource
    DataSet = Q_pass
    Left = 384
    Top = 312
  end
  object Query1: TQuery
    DatabaseName = '1'
    RequestLive = True
    SQL.Strings = (
      'SELECT  STUDENT_ID, COURSE_ID, SYMESTER_TIME, GRADE'
      'FROM RESULTS '
      'WHERE'
      '(STUDENT_ID = :var1)'
      ' AND (symester_time = :var2)')
    Left = 192
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end>
    object Query1STUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Origin = '1.RESULTS.STUDENT_ID'
      Size = 7
    end
    object Query1COURSE_ID: TStringField
      FieldName = 'COURSE_ID'
      Origin = '1.RESULTS.COURSE_ID'
      Size = 8
    end
    object Query1SYMESTER_TIME: TStringField
      FieldName = 'SYMESTER_TIME'
      Origin = '1.RESULTS.SYMESTER_TIME'
      Size = 8
    end
    object Query1GRADE: TIntegerField
      FieldName = 'GRADE'
      Origin = '1.RESULTS.GRADE'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 280
    Top = 72
  end
  object Q_name_pass_ds: TDataSource
    DataSet = Q_name_pass
    Left = 168
    Top = 152
  end
  object Q_name_pass: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT  S.STUDENT_ID, S.AR_NAME, S.DEPARTMET, S.FACULTY, '
      
        ' R.STUDENT_ID, R.COURSE_ID, R.SYMESTER_TIME, R.GRADE, D.DEPARTME' +
        'NT, '
      ' D.AR_TITLE, D.FACULTY'
      'FROM STUDENT S, RESULTS R, DEPARTMENTS D'
      'WHERE'
      '(S.FACULTY = :var1)'
      ' AND (R.STUDENT_ID = S.STUDENT_ID)'
      ' AND (R.SYMESTER_TIME = :var2)'
      ' AND (D.DEPARTMENT = S.DEPARTMET)'
      ' AND (D.AR_TITLE = :var3)'
      ' AND (D.FACULTY = S.FACULTY)')
    Left = 248
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object Q_name_passSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 7
    end
    object Q_name_passAR_NAME: TStringField
      FieldName = 'AR_NAME'
      Size = 40
    end
    object Q_name_passDEPARTMET: TStringField
      FieldName = 'DEPARTMET'
      Size = 4
    end
    object Q_name_passFACULTY: TStringField
      FieldName = 'FACULTY'
      Size = 40
    end
    object Q_name_passSTUDENT_ID_1: TStringField
      FieldName = 'STUDENT_ID_1'
      Size = 7
    end
    object Q_name_passCOURSE_ID: TStringField
      FieldName = 'COURSE_ID'
      Size = 8
    end
    object Q_name_passSYMESTER_TIME: TStringField
      FieldName = 'SYMESTER_TIME'
      Size = 8
    end
    object Q_name_passGRADE: TIntegerField
      FieldName = 'GRADE'
    end
    object Q_name_passDEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      Size = 4
    end
    object Q_name_passAR_TITLE: TStringField
      FieldName = 'AR_TITLE'
      Size = 40
    end
    object Q_name_passFACULTY_1: TStringField
      FieldName = 'FACULTY_1'
      Size = 40
    end
  end
  object Query2: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT  S.STUDENT_ID, S.AR_NAME, S.DEPARTMET, S.FACULTY, '
      
        ' R.STUDENT_ID, R.COURSE_ID, R.SYMESTER_TIME, R.GRADE, D.DEPARTME' +
        'NT, '
      ' D.AR_TITLE, D.FACULTY, C.COURSE_ID, C.HOURS, C.DEPARTMENT'
      'FROM STUDENT S, RESULTS R, DEPARTMENTS D, COURSES C'
      'WHERE'
      '(S.STUDENT_ID = :var1)'
      ' AND (S.FACULTY = :var2)'
      ' AND (R.STUDENT_ID = S.STUDENT_ID)'
      ' AND (R.SYMESTER_TIME = :var3)'
      ' AND (D.DEPARTMENT = S.DEPARTMET)'
      ' AND (D.AR_TITLE = :var4)'
      ' AND (D.FACULTY = S.FACULTY)'
      ' AND (C.COURSE_ID = R.COURSE_ID)'
      ' AND (C.DEPARTMENT = D.DEPARTMENT)')
    Left = 264
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var4'
        ParamType = ptInputOutput
      end>
    object Query2STUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 7
    end
    object Query2AR_NAME: TStringField
      FieldName = 'AR_NAME'
      Size = 40
    end
    object Query2DEPARTMET: TStringField
      FieldName = 'DEPARTMET'
      Size = 4
    end
    object Query2FACULTY: TStringField
      FieldName = 'FACULTY'
      Size = 40
    end
    object Query2STUDENT_ID_1: TStringField
      FieldName = 'STUDENT_ID_1'
      Size = 7
    end
    object Query2COURSE_ID: TStringField
      FieldName = 'COURSE_ID'
      Size = 8
    end
    object Query2SYMESTER_TIME: TStringField
      FieldName = 'SYMESTER_TIME'
      Size = 8
    end
    object Query2GRADE: TIntegerField
      FieldName = 'GRADE'
    end
    object Query2DEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      Size = 4
    end
    object Query2AR_TITLE: TStringField
      FieldName = 'AR_TITLE'
      Size = 40
    end
    object Query2FACULTY_1: TStringField
      FieldName = 'FACULTY_1'
      Size = 40
    end
    object Query2COURSE_ID_1: TStringField
      FieldName = 'COURSE_ID_1'
      Size = 8
    end
    object Query2HOURS: TSmallintField
      FieldName = 'HOURS'
    end
    object Query2DEPARTMENT_1: TStringField
      FieldName = 'DEPARTMENT_1'
      Size = 4
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 208
    Top = 216
  end
  object Q_temp: TQuery
    DatabaseName = '1'
    RequestLive = True
    SQL.Strings = (
      'select * from temp')
    Left = 448
    Top = 368
    object Q_tempSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Origin = '1.TEMP.STUDENT_ID'
      Size = 10
    end
    object Q_tempAR_NAME: TStringField
      FieldName = 'AR_NAME'
      Origin = '1.TEMP.AR_NAME'
      Size = 60
    end
    object Q_tempTAGDER: TStringField
      FieldName = 'TAGDER'
      Origin = '1.TEMP.TAGDER'
    end
  end
  object Q_temp_ds: TDataSource
    DataSet = Q_temp
    Left = 384
    Top = 376
  end
  object Query_com_dep_ds: TDataSource
    DataSet = Query_com_dep
    Left = 200
    Top = 280
  end
  object Query_com_dep: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT  DEPARTMENT, AR_TITLE'
      'FROM DEPARTMENTS '
      'WHERE'
      '(AR_TITLE = :var1)')
    Left = 264
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_com_depDEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      Origin = '1.DEPARTMENTS.DEPARTMENT'
      Size = 4
    end
    object Query_com_depAR_TITLE: TStringField
      FieldName = 'AR_TITLE'
      Origin = '1.DEPARTMENTS.AR_TITLE'
      Size = 40
    end
  end
  object Query_no_ds: TDataSource
    DataSet = Query_no
    Left = 32
    Top = 392
  end
  object Query_no: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT  AR_TITLE, TOTAL_HOURS'
      'FROM DEPARTMENTS '
      'WHERE'
      '(AR_TITLE = :var1)')
    Left = 96
    Top = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_noAR_TITLE: TStringField
      FieldName = 'AR_TITLE'
      Origin = '1.DEPARTMENTS.AR_TITLE'
      Size = 40
    end
    object Query_noTOTAL_HOURS: TSmallintField
      FieldName = 'TOTAL_HOURS'
      Origin = '1.DEPARTMENTS.TOTAL_HOURS'
    end
  end
  object Q_sh_ship: TQuery
    DatabaseName = '1'
    SQL.Strings = (
      'SELECT  D.DEPARTMENT, D.AR_TITLE, D.FACULTY, S.STUDENT_ID, '
      ' S.AR_NAME, S.EN_NAME, S.DEPARTMET, S.NATIONALITY'
      ' ,S.SCHOLARSHIP_SATUS, S.FACULTY, '
      '  R.STUDENT_ID, R.symester_time'
      'FROM DEPARTMENTS D, STUDENT S, RESULTS R'
      'WHERE'
      '(D.AR_TITLE = :var1)'
      ' AND (D.FACULTY = :var2)'
      ' AND (S.DEPARTMET = D.DEPARTMENT)'
      ' AND (S.SCHOLARSHIP_SATUS = :var3)'
      'AND (S.NATIONALITY = :var5) '
      'AND (S.FACULTY = D.FACULTY)'
      ' AND (R.STUDENT_ID = S.STUDENT_ID)'
      ' AND (R.symester_time = :var4)'
      '')
    Left = 448
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var5'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var4'
        ParamType = ptInputOutput
      end>
    object Q_sh_shipDEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      Size = 4
    end
    object Q_sh_shipAR_TITLE: TStringField
      FieldName = 'AR_TITLE'
      Size = 40
    end
    object Q_sh_shipFACULTY: TStringField
      FieldName = 'FACULTY'
      Size = 40
    end
    object Q_sh_shipSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 7
    end
    object Q_sh_shipAR_NAME: TStringField
      FieldName = 'AR_NAME'
      Size = 40
    end
    object Q_sh_shipEN_NAME: TStringField
      FieldName = 'EN_NAME'
      Size = 40
    end
    object Q_sh_shipDEPARTMET: TStringField
      FieldName = 'DEPARTMET'
      Size = 4
    end
    object Q_sh_shipNATIONALITY: TStringField
      FieldName = 'NATIONALITY'
      Size = 15
    end
    object Q_sh_shipSCHOLARSHIP_SATUS: TStringField
      FieldName = 'SCHOLARSHIP_SATUS'
      Size = 10
    end
    object Q_sh_shipFACULTY_1: TStringField
      FieldName = 'FACULTY_1'
      Size = 40
    end
    object Q_sh_shipSTUDENT_ID_1: TStringField
      FieldName = 'STUDENT_ID_1'
      Size = 7
    end
    object Q_sh_shipSYMESTER_TIME: TStringField
      FieldName = 'SYMESTER_TIME'
      Size = 8
    end
  end
  object Database1: TDatabase
    AliasName = 'INTRBASE2'
    DatabaseName = '1'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=D:\DATABASE\STDREG1.GDB'
      'USER NAME=SYSDBA'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 136
    Top = 8
  end
end
