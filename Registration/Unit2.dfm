object DataM: TDataM
  OldCreateOrder = False
  Left = 252
  Top = 187
  Height = 503
  Width = 648
  object Query_n_ds: TDataSource
    DataSet = Query_n
    Left = 24
    Top = 16
  end
  object Query_num_ds: TDataSource
    DataSet = Query_num
    Left = 24
    Top = 72
  end
  object Query_serch_nat_ds: TDataSource
    DataSet = Query_serch_nat
    Left = 24
    Top = 128
  end
  object Query_rep_ds: TDataSource
    DataSet = Query_rep
    Left = 24
    Top = 184
  end
  object Query_fac_ds: TDataSource
    DataSet = Query_fac
    Left = 520
    Top = 24
  end
  object Query_rep_goout_ds: TDataSource
    Left = 24
    Top = 240
  end
  object Query_go_name_ds: TDataSource
    DataSet = Query_go_name
    Left = 264
    Top = 128
  end
  object Q_sh_ship_ds: TDataSource
    DataSet = Q_sh_ship
    Left = 264
    Top = 240
  end
  object RATION_TYPE_ds: TDataSource
    DataSet = RATION_TYPE
    Left = 24
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 72
  end
  object Q_name_pass_ds: TDataSource
    DataSet = Q_name_pass
    Left = 264
    Top = 16
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'E:\'#1575#1604#1576#1581#1579' '#1575#1604#1606#1607#1575#1574#1610' '#1573#1606' '#1588#1575#1569' '#1575#1604#1604#1607'\'#1575#1604#1605#1588#1585#1608#1593' '#1575#1604#1604#1610' '#1605#1575' '#1610#1576#1610' '#1610#1578#1605'\STDREG6.GDB'
    Params.Strings = (
      'sql_role_name=REGISTRAR1'
      'user_name=RSAHL'
      'password=rsa')
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 264
    Top = 296
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 168
    Top = 16
  end
  object Query_efada_ds: TDataSource
    DataSet = Query_efada
    Left = 24
    Top = 352
  end
  object DataSource5: TDataSource
    DataSet = dec
    Left = 264
    Top = 184
  end
  object Query_n: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM STUDENT1_VIEW'
      'where '
      'AR_NAME =:var1;')
    Left = 96
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_nSTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT1_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query_nAR_NAME: TIBStringField
      FieldName = 'AR_NAME'
      Origin = 'STUDENT1_VIEW.AR_NAME'
      Size = 40
    end
    object Query_nEN_NAME: TIBStringField
      FieldName = 'EN_NAME'
      Origin = 'STUDENT1_VIEW.EN_NAME'
      Size = 40
    end
    object Query_nBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
      Origin = 'STUDENT1_VIEW.BIRTH_DATE'
    end
    object Query_nBIRTH_PLACE: TIBStringField
      FieldName = 'BIRTH_PLACE'
      Origin = 'STUDENT1_VIEW.BIRTH_PLACE'
      Size = 15
    end
    object Query_nMOTHER_NAME: TIBStringField
      FieldName = 'MOTHER_NAME'
      Origin = 'STUDENT1_VIEW.MOTHER_NAME'
      Size = 30
    end
    object Query_nSEX: TIBStringField
      FieldName = 'SEX'
      Origin = 'STUDENT1_VIEW.SEX'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Query_nRELIGION: TIBStringField
      FieldName = 'RELIGION'
      Origin = 'STUDENT1_VIEW.RELIGION'
      Size = 7
    end
    object Query_nNATIONALITY: TIBStringField
      FieldName = 'NATIONALITY'
      Origin = 'STUDENT1_VIEW.NATIONALITY'
      Size = 15
    end
    object Query_nADDRESS: TIBStringField
      FieldName = 'ADDRESS'
      Origin = 'STUDENT1_VIEW.ADDRESS'
    end
    object Query_nPHONE_NUMBER: TIBStringField
      FieldName = 'PHONE_NUMBER'
      Origin = 'STUDENT1_VIEW.PHONE_NUMBER'
      Size = 10
    end
    object Query_nID_NUMBER: TIBStringField
      FieldName = 'ID_NUMBER'
      Origin = 'STUDENT1_VIEW.ID_NUMBER'
      Size = 7
    end
    object Query_nID_ISSUE_DATE: TDateField
      FieldName = 'ID_ISSUE_DATE'
      Origin = 'STUDENT1_VIEW.ID_ISSUE_DATE'
    end
    object Query_nPASS_NUMBER: TIBStringField
      FieldName = 'PASS_NUMBER'
      Origin = 'STUDENT1_VIEW.PASS_NUMBER'
      Size = 10
    end
    object Query_nPASS_ISSUEPLACE: TIBStringField
      FieldName = 'PASS_ISSUEPLACE'
      Origin = 'STUDENT1_VIEW.PASS_ISSUEPLACE'
    end
    object Query_nPASS_VALIDITY: TDateField
      FieldName = 'PASS_VALIDITY'
      Origin = 'STUDENT1_VIEW.PASS_VALIDITY'
    end
    object Query_nMARITAL_STATUS: TIBStringField
      FieldName = 'MARITAL_STATUS'
      Origin = 'STUDENT1_VIEW.MARITAL_STATUS'
      Size = 5
    end
    object Query_nFAMILY_NUMBER: TIBStringField
      FieldName = 'FAMILY_NUMBER'
      Origin = 'STUDENT1_VIEW.FAMILY_NUMBER'
      Size = 7
    end
    object Query_nHOUSING_STATUS: TIBStringField
      FieldName = 'HOUSING_STATUS'
      Origin = 'STUDENT1_VIEW.HOUSING_STATUS'
      FixedChar = True
      Size = 5
    end
    object Query_nSUPERIOR_NAME: TIBStringField
      FieldName = 'SUPERIOR_NAME'
      Origin = 'STUDENT1_VIEW.SUPERIOR_NAME'
    end
    object Query_nRELATIVE_NAME: TIBStringField
      FieldName = 'RELATIVE_NAME'
      Origin = 'STUDENT1_VIEW.RELATIVE_NAME'
    end
    object Query_nDEGREE_OWNED: TIBStringField
      FieldName = 'DEGREE_OWNED'
      Origin = 'STUDENT1_VIEW.DEGREE_OWNED'
    end
    object Query_nDEGREE_DATE: TDateField
      FieldName = 'DEGREE_DATE'
      Origin = 'STUDENT1_VIEW.DEGREE_DATE'
    end
    object Query_nGRADUATION_DATE: TDateField
      FieldName = 'GRADUATION_DATE'
      Origin = 'STUDENT1_VIEW.GRADUATION_DATE'
    end
    object Query_nREGISTRATION_DATE: TDateField
      FieldName = 'REGISTRATION_DATE'
      Origin = 'STUDENT1_VIEW.REGISTRATION_DATE'
    end
    object Query_nPIN: TIBStringField
      FieldName = 'PIN'
      Origin = 'STUDENT1_VIEW.PIN'
      Size = 32
    end
    object Query_nCLASS: TSmallintField
      FieldName = 'CLASS'
      Origin = 'STUDENT1_VIEW.CLASS'
    end
    object Query_nPICTURE: TBlobField
      FieldName = 'PICTURE'
      Origin = 'STUDENT1_VIEW.PICTURE'
      Size = 8
    end
    object Query_nSTUDENT_STATUS: TIBStringField
      FieldName = 'STUDENT_STATUS'
      Origin = 'STUDENT1_VIEW.STUDENT_STATUS'
    end
    object Query_nNOTES: TBlobField
      FieldName = 'NOTES'
      Origin = 'STUDENT1_VIEW.NOTES'
      Size = 8
    end
    object Query_nREGISTRATION_TYPE: TIBStringField
      FieldName = 'REGISTRATION_TYPE'
      Origin = 'STUDENT1_VIEW.REGISTRATION_TYPE'
      Size = 16
    end
  end
  object Query_num: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM STUDENT1_VIEW'
      'where '
      'STUDENT_ID =:var1;')
    UpdateObject = IBUpdateSQL2
    Left = 96
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_numSTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT1_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query_numAR_NAME: TIBStringField
      FieldName = 'AR_NAME'
      Origin = 'STUDENT1_VIEW.AR_NAME'
      Size = 40
    end
    object Query_numEN_NAME: TIBStringField
      FieldName = 'EN_NAME'
      Origin = 'STUDENT1_VIEW.EN_NAME'
      Size = 40
    end
    object Query_numBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
      Origin = 'STUDENT1_VIEW.BIRTH_DATE'
    end
    object Query_numBIRTH_PLACE: TIBStringField
      FieldName = 'BIRTH_PLACE'
      Origin = 'STUDENT1_VIEW.BIRTH_PLACE'
      Size = 15
    end
    object Query_numMOTHER_NAME: TIBStringField
      FieldName = 'MOTHER_NAME'
      Origin = 'STUDENT1_VIEW.MOTHER_NAME'
      Size = 30
    end
    object Query_numSEX: TIBStringField
      FieldName = 'SEX'
      Origin = 'STUDENT1_VIEW.SEX'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Query_numRELIGION: TIBStringField
      FieldName = 'RELIGION'
      Origin = 'STUDENT1_VIEW.RELIGION'
      Size = 7
    end
    object Query_numNATIONALITY: TIBStringField
      FieldName = 'NATIONALITY'
      Origin = 'STUDENT1_VIEW.NATIONALITY'
      Size = 15
    end
    object Query_numADDRESS: TIBStringField
      FieldName = 'ADDRESS'
      Origin = 'STUDENT1_VIEW.ADDRESS'
    end
    object Query_numPHONE_NUMBER: TIBStringField
      FieldName = 'PHONE_NUMBER'
      Origin = 'STUDENT1_VIEW.PHONE_NUMBER'
      Size = 10
    end
    object Query_numID_NUMBER: TIBStringField
      FieldName = 'ID_NUMBER'
      Origin = 'STUDENT1_VIEW.ID_NUMBER'
      Size = 7
    end
    object Query_numID_ISSUE_DATE: TDateField
      FieldName = 'ID_ISSUE_DATE'
      Origin = 'STUDENT1_VIEW.ID_ISSUE_DATE'
    end
    object Query_numPASS_NUMBER: TIBStringField
      FieldName = 'PASS_NUMBER'
      Origin = 'STUDENT1_VIEW.PASS_NUMBER'
      Size = 10
    end
    object Query_numPASS_ISSUEPLACE: TIBStringField
      FieldName = 'PASS_ISSUEPLACE'
      Origin = 'STUDENT1_VIEW.PASS_ISSUEPLACE'
    end
    object Query_numPASS_VALIDITY: TDateField
      FieldName = 'PASS_VALIDITY'
      Origin = 'STUDENT1_VIEW.PASS_VALIDITY'
    end
    object Query_numMARITAL_STATUS: TIBStringField
      FieldName = 'MARITAL_STATUS'
      Origin = 'STUDENT1_VIEW.MARITAL_STATUS'
      Size = 5
    end
    object Query_numFAMILY_NUMBER: TIBStringField
      FieldName = 'FAMILY_NUMBER'
      Origin = 'STUDENT1_VIEW.FAMILY_NUMBER'
      Size = 7
    end
    object Query_numHOUSING_STATUS: TIBStringField
      FieldName = 'HOUSING_STATUS'
      Origin = 'STUDENT1_VIEW.HOUSING_STATUS'
      FixedChar = True
      Size = 5
    end
    object Query_numSUPERIOR_NAME: TIBStringField
      FieldName = 'SUPERIOR_NAME'
      Origin = 'STUDENT1_VIEW.SUPERIOR_NAME'
    end
    object Query_numRELATIVE_NAME: TIBStringField
      FieldName = 'RELATIVE_NAME'
      Origin = 'STUDENT1_VIEW.RELATIVE_NAME'
    end
    object Query_numDEGREE_OWNED: TIBStringField
      FieldName = 'DEGREE_OWNED'
      Origin = 'STUDENT1_VIEW.DEGREE_OWNED'
    end
    object Query_numDEGREE_DATE: TDateField
      FieldName = 'DEGREE_DATE'
      Origin = 'STUDENT1_VIEW.DEGREE_DATE'
    end
    object Query_numGRADUATION_DATE: TDateField
      FieldName = 'GRADUATION_DATE'
      Origin = 'STUDENT1_VIEW.GRADUATION_DATE'
    end
    object Query_numREGISTRATION_DATE: TDateField
      FieldName = 'REGISTRATION_DATE'
      Origin = 'STUDENT1_VIEW.REGISTRATION_DATE'
    end
    object Query_numPIN: TIBStringField
      FieldName = 'PIN'
      Origin = 'STUDENT1_VIEW.PIN'
      Size = 32
    end
    object Query_numCLASS: TSmallintField
      FieldName = 'CLASS'
      Origin = 'STUDENT1_VIEW.CLASS'
    end
    object Query_numSTUDENT_STATUS: TIBStringField
      FieldName = 'STUDENT_STATUS'
      Origin = 'STUDENT1_VIEW.STUDENT_STATUS'
    end
    object Query_numREGISTRATION_TYPE: TIBStringField
      FieldName = 'REGISTRATION_TYPE'
      Origin = 'STUDENT1_VIEW.REGISTRATION_TYPE'
      Size = 16
    end
    object Query_numPICTURE: TBlobField
      FieldName = 'PICTURE'
      Origin = 'STUDENT1_VIEW.PICTURE'
      Size = 8
    end
    object Query_numNOTES: TBlobField
      FieldName = 'NOTES'
      Origin = 'STUDENT1_VIEW.NOTES'
      Size = 8
    end
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  STUDENT_ID,'
      '  AR_NAME,'
      '  EN_NAME,'
      '  BIRTH_DATE,'
      '  BIRTH_PLACE,'
      '  MOTHER_NAME,'
      '  SEX,'
      '  RELIGION,'
      '  NATIONALITY,'
      '  ADDRESS,'
      '  PHONE_NUMBER,'
      '  ID_NUMBER,'
      '  ID_ISSUE_DATE,'
      '  PASS_NUMBER,'
      '  PASS_ISSUEPLACE,'
      '  PASS_VALIDITY,'
      '  MARITAL_STATUS,'
      '  FAMILY_NUMBER,'
      '  HOUSING_STATUS,'
      '  SUPERIOR_NAME,'
      '  RELATIVE_NAME,'
      '  DEGREE_OWNED,'
      '  DEGREE_DATE,'
      '  GRADUATION_DATE,'
      '  REGISTRATION_DATE,'
      '  PIN,'
      '  CLASS,'
      '  PICTURE,'
      '  STUDENT_STATUS,'
      '  NOTES,'
      '  REGISTRATION_TYPE'
      'from STUDENT1_VIEW '
      'where'
      '  STUDENT_ID = :STUDENT_ID and'
      '  AR_NAME = :AR_NAME and'
      '  EN_NAME = :EN_NAME and'
      '  BIRTH_DATE = :BIRTH_DATE and'
      '  BIRTH_PLACE = :BIRTH_PLACE and'
      '  MOTHER_NAME = :MOTHER_NAME and'
      '  SEX = :SEX and'
      '  RELIGION = :RELIGION and'
      '  NATIONALITY = :NATIONALITY and'
      '  ADDRESS = :ADDRESS and'
      '  PHONE_NUMBER = :PHONE_NUMBER and'
      '  ID_NUMBER = :ID_NUMBER and'
      '  ID_ISSUE_DATE = :ID_ISSUE_DATE and'
      '  PASS_NUMBER = :PASS_NUMBER and'
      '  PASS_ISSUEPLACE = :PASS_ISSUEPLACE and'
      '  PASS_VALIDITY = :PASS_VALIDITY and'
      '  MARITAL_STATUS = :MARITAL_STATUS and'
      '  FAMILY_NUMBER = :FAMILY_NUMBER and'
      '  HOUSING_STATUS = :HOUSING_STATUS and'
      '  SUPERIOR_NAME = :SUPERIOR_NAME and'
      '  RELATIVE_NAME = :RELATIVE_NAME and'
      '  DEGREE_OWNED = :DEGREE_OWNED and'
      '  DEGREE_DATE = :DEGREE_DATE and'
      '  GRADUATION_DATE = :GRADUATION_DATE and'
      '  REGISTRATION_DATE = :REGISTRATION_DATE and'
      '  PIN = :PIN and'
      '  CLASS = :CLASS and'
      '  PICTURE = :PICTURE and'
      '  STUDENT_STATUS = :STUDENT_STATUS and'
      '  NOTES = :NOTES and'
      '  REGISTRATION_TYPE = :REGISTRATION_TYPE')
    ModifySQL.Strings = (
      'update STUDENT1_VIEW'
      'set'
      '  STUDENT_ID = :STUDENT_ID,'
      '  AR_NAME = :AR_NAME,'
      '  EN_NAME = :EN_NAME,'
      '  BIRTH_DATE = :BIRTH_DATE,'
      '  BIRTH_PLACE = :BIRTH_PLACE,'
      '  MOTHER_NAME = :MOTHER_NAME,'
      '  SEX = :SEX,'
      '  RELIGION = :RELIGION,'
      '  NATIONALITY = :NATIONALITY,'
      '  ADDRESS = :ADDRESS,'
      '  PHONE_NUMBER = :PHONE_NUMBER,'
      '  ID_NUMBER = :ID_NUMBER,'
      '  ID_ISSUE_DATE = :ID_ISSUE_DATE,'
      '  PASS_NUMBER = :PASS_NUMBER,'
      '  PASS_ISSUEPLACE = :PASS_ISSUEPLACE,'
      '  PASS_VALIDITY = :PASS_VALIDITY,'
      '  MARITAL_STATUS = :MARITAL_STATUS,'
      '  FAMILY_NUMBER = :FAMILY_NUMBER,'
      '  HOUSING_STATUS = :HOUSING_STATUS,'
      '  SUPERIOR_NAME = :SUPERIOR_NAME,'
      '  RELATIVE_NAME = :RELATIVE_NAME,'
      '  DEGREE_OWNED = :DEGREE_OWNED,'
      '  DEGREE_DATE = :DEGREE_DATE,'
      '  GRADUATION_DATE = :GRADUATION_DATE,'
      '  REGISTRATION_DATE = :REGISTRATION_DATE,'
      '  PIN = :PIN,'
      '  CLASS = :CLASS,'
      '  PICTURE = :PICTURE,'
      '  STUDENT_STATUS = :STUDENT_STATUS,'
      '  NOTES = :NOTES,'
      '  REGISTRATION_TYPE = :REGISTRATION_TYPE'
      'where'
      '  STUDENT_ID = :OLD_STUDENT_ID and'
      '  AR_NAME = :OLD_AR_NAME and'
      '  EN_NAME = :OLD_EN_NAME and'
      '  BIRTH_DATE = :OLD_BIRTH_DATE and'
      '  BIRTH_PLACE = :OLD_BIRTH_PLACE and'
      '  MOTHER_NAME = :OLD_MOTHER_NAME and'
      '  SEX = :OLD_SEX and'
      '  RELIGION = :OLD_RELIGION and'
      '  NATIONALITY = :OLD_NATIONALITY and'
      '  ADDRESS = :OLD_ADDRESS and'
      '  PHONE_NUMBER = :OLD_PHONE_NUMBER and'
      '  ID_NUMBER = :OLD_ID_NUMBER and'
      '  ID_ISSUE_DATE = :OLD_ID_ISSUE_DATE and'
      '  PASS_NUMBER = :OLD_PASS_NUMBER and'
      '  PASS_ISSUEPLACE = :OLD_PASS_ISSUEPLACE and'
      '  PASS_VALIDITY = :OLD_PASS_VALIDITY and'
      '  MARITAL_STATUS = :OLD_MARITAL_STATUS and'
      '  FAMILY_NUMBER = :OLD_FAMILY_NUMBER and'
      '  HOUSING_STATUS = :OLD_HOUSING_STATUS and'
      '  SUPERIOR_NAME = :OLD_SUPERIOR_NAME and'
      '  RELATIVE_NAME = :OLD_RELATIVE_NAME and'
      '  DEGREE_OWNED = :OLD_DEGREE_OWNED and'
      '  DEGREE_DATE = :OLD_DEGREE_DATE and'
      '  GRADUATION_DATE = :OLD_GRADUATION_DATE and'
      '  REGISTRATION_DATE = :OLD_REGISTRATION_DATE and'
      '  PIN = :OLD_PIN and'
      '  CLASS = :OLD_CLASS and'
      '  PICTURE = :OLD_PICTURE and'
      '  STUDENT_STATUS = :OLD_STUDENT_STATUS and'
      '  NOTES = :OLD_NOTES and'
      '  REGISTRATION_TYPE = :OLD_REGISTRATION_TYPE')
    InsertSQL.Strings = (
      'insert into STUDENT1_VIEW'
      '  (STUDENT_ID, AR_NAME, EN_NAME, BIRTH_DATE, BIRTH_PLACE, '
      'MOTHER_NAME, '
      
        '   SEX, RELIGION, NATIONALITY, ADDRESS, PHONE_NUMBER, ID_NUMBER,' +
        ' '
      'ID_ISSUE_DATE, '
      '   PASS_NUMBER, PASS_ISSUEPLACE, PASS_VALIDITY, MARITAL_STATUS, '
      'FAMILY_NUMBER, '
      '   HOUSING_STATUS, SUPERIOR_NAME, RELATIVE_NAME, DEGREE_OWNED, '
      'DEGREE_DATE, '
      '   GRADUATION_DATE, REGISTRATION_DATE, PIN, CLASS, PICTURE, '
      'STUDENT_STATUS, '
      '   NOTES, REGISTRATION_TYPE)'
      'values'
      '  (:STUDENT_ID, :AR_NAME, :EN_NAME, :BIRTH_DATE, :BIRTH_PLACE, '
      ':MOTHER_NAME, '
      '   :SEX, :RELIGION, :NATIONALITY, :ADDRESS, :PHONE_NUMBER, '
      ':ID_NUMBER, '
      
        '   :ID_ISSUE_DATE, :PASS_NUMBER, :PASS_ISSUEPLACE, :PASS_VALIDIT' +
        'Y, '
      ':MARITAL_STATUS, '
      '   :FAMILY_NUMBER, :HOUSING_STATUS, :SUPERIOR_NAME, '
      ':RELATIVE_NAME, :DEGREE_OWNED, '
      
        '   :DEGREE_DATE, :GRADUATION_DATE, :REGISTRATION_DATE, :PIN, :CL' +
        'ASS, '
      ':PICTURE, '
      '   :STUDENT_STATUS, :NOTES, :REGISTRATION_TYPE)')
    DeleteSQL.Strings = (
      'delete from STUDENT1_VIEW'
      'where'
      '  STUDENT_ID = :OLD_STUDENT_ID and'
      '  AR_NAME = :OLD_AR_NAME and'
      '  EN_NAME = :OLD_EN_NAME and'
      '  BIRTH_DATE = :OLD_BIRTH_DATE and'
      '  BIRTH_PLACE = :OLD_BIRTH_PLACE and'
      '  MOTHER_NAME = :OLD_MOTHER_NAME and'
      '  SEX = :OLD_SEX and'
      '  RELIGION = :OLD_RELIGION and'
      '  NATIONALITY = :OLD_NATIONALITY and'
      '  ADDRESS = :OLD_ADDRESS and'
      '  PHONE_NUMBER = :OLD_PHONE_NUMBER and'
      '  ID_NUMBER = :OLD_ID_NUMBER and'
      '  ID_ISSUE_DATE = :OLD_ID_ISSUE_DATE and'
      '  PASS_NUMBER = :OLD_PASS_NUMBER and'
      '  PASS_ISSUEPLACE = :OLD_PASS_ISSUEPLACE and'
      '  PASS_VALIDITY = :OLD_PASS_VALIDITY and'
      '  MARITAL_STATUS = :OLD_MARITAL_STATUS and'
      '  FAMILY_NUMBER = :OLD_FAMILY_NUMBER and'
      '  HOUSING_STATUS = :OLD_HOUSING_STATUS and'
      '  SUPERIOR_NAME = :OLD_SUPERIOR_NAME and'
      '  RELATIVE_NAME = :OLD_RELATIVE_NAME and'
      '  DEGREE_OWNED = :OLD_DEGREE_OWNED and'
      '  DEGREE_DATE = :OLD_DEGREE_DATE and'
      '  GRADUATION_DATE = :OLD_GRADUATION_DATE and'
      '  REGISTRATION_DATE = :OLD_REGISTRATION_DATE and'
      '  PIN = :OLD_PIN and'
      '  CLASS = :OLD_CLASS and'
      '  PICTURE = :OLD_PICTURE and'
      '  STUDENT_STATUS = :OLD_STUDENT_STATUS and'
      '  NOTES = :OLD_NOTES and'
      '  REGISTRATION_TYPE = :OLD_REGISTRATION_TYPE')
    Left = 168
    Top = 80
  end
  object Query_go_name: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select distinct  s2.STUDENT_ID,s2.AR_NAME,s2.NATIONALITY,s2.GRAD' +
        'UATION_DATE'
      'FROM STUDENT_RESULTS3_VIEW S, '
      ' STUDENT_IN_DEPARTMENT_VIEW S1, FACULTY_DEPARTMENT_VIEW F, '
      ' STUDENT1_VIEW S2'
      'WHERE'
      '(S1.STUDENT_STATUS = '#39#1582#1585#1610#1580#39')'
      ' AND (S2.GRADUATION_DATE >= :var2) '
      'AND (S2.GRADUATION_DATE <= :var3)'
      ' AND (S1.STUDENT_ID = S.STUDENT_ID)'
      ' AND (F.DEPARTMENT_ID = S1.DEPARTMENT_ID)'
      'AND(F.DEPT_AR_TITLE = :var1)'
      ' AND (S2.STUDENT_ID = S1.STUDENT_ID)')
    Left = 328
    Top = 129
    ParamData = <
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
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_go_nameSTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT1_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query_go_nameAR_NAME: TIBStringField
      FieldName = 'AR_NAME'
      Origin = 'STUDENT1_VIEW.AR_NAME'
      Size = 40
    end
    object Query_go_nameNATIONALITY: TIBStringField
      FieldName = 'NATIONALITY'
      Origin = 'STUDENT1_VIEW.NATIONALITY'
      Size = 15
    end
    object Query_go_nameGRADUATION_DATE: TDateField
      FieldName = 'GRADUATION_DATE'
      Origin = 'STUDENT1_VIEW.GRADUATION_DATE'
    end
  end
  object Q_name_pass1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT * FROM COURSE_DEPARTMENT_VIEW C, STUDENT_RESULTS3_VIEW S,' +
        ' '
      ' STUDENT_IN_DEPARTMENT_VIEW S1, FACULTY_DEPARTMENT_VIEW F'
      'WHERE'
      '(F.FACULTY_AR_TITLE = :var1)'
      ' AND (S.COURSE_ID = C.COURSE_ID)'
      ' AND (S.LEVEL_TIME = :var2)'
      ' AND (S1.STUDENT_ID = S.STUDENT_ID)'
      ' AND (S1.DEPARTMENT_ID = C.DEPARTMENT_ID)'
      ' AND (S1.DEPT_AR_TITLE = :var3)'
      ' AND (F.DEPARTMENT_ID = S1.DEPARTMENT_ID)'
      ' AND (F.DEPARTMENT_ID = C.DEPARTMENT_ID)')
    Left = 328
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'var1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'var2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'var3'
        ParamType = ptUnknown
      end>
    object Q_name_pass1COURSE_ID: TIBStringField
      FieldName = 'COURSE_ID'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_ID'
      Size = 8
    end
    object Q_name_pass1COURSE_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_AR_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1COURSE_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_EN_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1DEPARTMENT_ID: TIBStringField
      FieldName = 'DEPARTMENT_ID'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Q_name_pass1DEPT_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1DEPT_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1COURSE_TYPE: TIBStringField
      FieldName = 'COURSE_TYPE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_TYPE'
      Size = 15
    end
    object Q_name_pass1ATTENDENCE_REQ: TIBBCDField
      FieldName = 'ATTENDENCE_REQ'
      Origin = 'COURSE_DEPARTMENT_VIEW.ATTENDENCE_REQ'
      Precision = 9
      Size = 2
    end
    object Q_name_pass1MAX_MIDTERM_MARK: TIBBCDField
      FieldName = 'MAX_MIDTERM_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MAX_MIDTERM_MARK'
      Precision = 9
      Size = 2
    end
    object Q_name_pass1MIN_FINAL_MARK: TIBBCDField
      FieldName = 'MIN_FINAL_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MIN_FINAL_MARK'
      Precision = 9
      Size = 2
    end
    object Q_name_pass1MAX_FINAL_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'MAX_FINAL_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MAX_FINAL_MARK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Q_name_pass1PASSING_GRADE: TIBBCDField
      FieldName = 'PASSING_GRADE'
      Origin = 'COURSE_DEPARTMENT_VIEW.PASSING_GRADE'
      Precision = 9
      Size = 2
    end
    object Q_name_pass1HOURS: TSmallintField
      FieldName = 'HOURS'
      Origin = 'COURSE_DEPARTMENT_VIEW.HOURS'
    end
    object Q_name_pass1PREREQUISITE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'PREREQUISITE'
      Origin = 'COURSE_DEPARTMENT_VIEW.PREREQUISITE'
      ReadOnly = True
      Size = 8
    end
    object Q_name_pass1NOTES: TBlobField
      FieldName = 'NOTES'
      Origin = 'COURSE_DEPARTMENT_VIEW.NOTES'
      Size = 8
    end
    object Q_name_pass1STUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT_RESULTS3_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Q_name_pass1ST_AR_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_AR_NAME'
      Origin = 'STUDENT_RESULTS3_VIEW.ST_AR_NAME'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1ST_EN_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_EN_NAME'
      Origin = 'STUDENT_RESULTS3_VIEW.ST_EN_NAME'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1COURSE_ID1: TIBStringField
      FieldName = 'COURSE_ID1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_ID'
      Size = 8
    end
    object Q_name_pass1COURSE_AR_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_AR_TITLE1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1COURSE_EN_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_EN_TITLE1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1LEVEL_TIME: TIBStringField
      FieldName = 'LEVEL_TIME'
      Origin = 'STUDENT_RESULTS3_VIEW.LEVEL_TIME'
      Size = 15
    end
    object Q_name_pass1LEVEL_NO: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'LEVEL_NO'
      Origin = 'STUDENT_RESULTS3_VIEW.LEVEL_NO'
      ReadOnly = True
    end
    object Q_name_pass1MIDTERM_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'MIDTERM_MARK'
      Origin = 'STUDENT_RESULTS3_VIEW.MIDTERM_MARK'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Q_name_pass1FINAL_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'FINAL_MARK'
      Origin = 'STUDENT_RESULTS3_VIEW.FINAL_MARK'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Q_name_pass1ATTENDENCE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ATTENDENCE'
      Origin = 'STUDENT_RESULTS3_VIEW.ATTENDENCE'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Q_name_pass1GRADE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'GRADE'
      Origin = 'STUDENT_RESULTS3_VIEW.GRADE'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Q_name_pass1PASS: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'PASS'
      Origin = 'STUDENT_RESULTS3_VIEW.PASS'
      ReadOnly = True
    end
    object Q_name_pass1AVERAGE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'AVERAGE'
      Origin = 'STUDENT_RESULTS3_VIEW.AVERAGE'
      ReadOnly = True
      Size = 8
    end
    object Q_name_pass1STUDENT_ID1: TIBStringField
      FieldName = 'STUDENT_ID1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Q_name_pass1ST_AR_NAME1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_AR_NAME1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ST_AR_NAME'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1ST_EN_NAME1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_EN_NAME1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ST_EN_NAME'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1PHONE_NUMBER: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'PHONE_NUMBER'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.PHONE_NUMBER'
      ReadOnly = True
      Size = 10
    end
    object Q_name_pass1ADDRESS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ADDRESS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ADDRESS'
      ReadOnly = True
    end
    object Q_name_pass1SEX: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'SEX'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.SEX'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object Q_name_pass1DEGREE_OWNED: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEGREE_OWNED'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEGREE_OWNED'
      ReadOnly = True
    end
    object Q_name_pass1DEGREE_DATE: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DEGREE_DATE'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEGREE_DATE'
      ReadOnly = True
    end
    object Q_name_pass1PICTURE: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'PICTURE'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.PICTURE'
      ReadOnly = True
      Size = 8
    end
    object Q_name_pass1DEPARTMENT_ID1: TIBStringField
      FieldName = 'DEPARTMENT_ID1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Q_name_pass1DEPT_AR_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1DEPT_EN_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1COMPULSARY_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'COMPULSARY_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.COMPULSARY_HRS'
      ReadOnly = True
    end
    object Q_name_pass1SUPPLEMENT_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'SUPPLEMENT_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.SUPPLEMENT_HRS'
      ReadOnly = True
    end
    object Q_name_pass1ELECTIVE_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ELECTIVE_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ELECTIVE_HRS'
      ReadOnly = True
    end
    object Q_name_pass1CULTURAL_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CULTURAL_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.CULTURAL_HRS'
      ReadOnly = True
    end
    object Q_name_pass1STUDENT_STATUS: TIBStringField
      FieldName = 'STUDENT_STATUS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.STUDENT_STATUS'
      Size = 15
    end
    object Q_name_pass1NOTES1: TBlobField
      FieldName = 'NOTES1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.NOTES'
      Size = 8
    end
    object Q_name_pass1FACULTY_ID: TIBStringField
      FieldName = 'FACULTY_ID'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_ID'
      Size = 4
    end
    object Q_name_pass1FACULTY_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FACULTY_AR_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1FACULTY_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FACULTY_EN_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1DEPARTMENT_ID2: TIBStringField
      FieldName = 'DEPARTMENT_ID2'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Q_name_pass1DEPT_AR_TITLE2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE2'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_pass1DEPT_EN_TITLE2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE2'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
  end
  object Query_serch_nat: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select STUDENT_ID,AR_NAME,NATIONALITY'
      ' from  STUDENT1_VIEW'
      'where '
      'NATIONALITY=:var1')
    Left = 96
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'var1'
        ParamType = ptUnknown
      end>
    object Query_serch_natSTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT1_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query_serch_natAR_NAME: TIBStringField
      FieldName = 'AR_NAME'
      Origin = 'STUDENT1_VIEW.AR_NAME'
      Size = 40
    end
    object Query_serch_natNATIONALITY: TIBStringField
      FieldName = 'NATIONALITY'
      Origin = 'STUDENT1_VIEW.NATIONALITY'
      Size = 15
    end
  end
  object Query_rep: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT * FROM COURSE_DEPARTMENT_VIEW C, STUDENT_RESULTS3_VIEW S,' +
        ' '
      ' STUDENT_IN_DEPARTMENT_VIEW S1,FACULTY_DEPARTMENT_VIEW F'
      'WHERE'
      ' (S.STUDENT_ID = :var1)'
      ' AND(C.DEPT_AR_TITLE = :var2)'
      ' AND (S.COURSE_ID = C.COURSE_ID)'
      ' AND (S1.STUDENT_ID = S.STUDENT_ID)'
      ' AND (S1.DEPARTMENT_ID = C.DEPARTMENT_ID)'
      ' AND (S1.DEPARTMENT_ID = F.DEPARTMENT_ID)'
      'and (S.GRADE>=50)')
    Left = 96
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'var1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'var2'
        ParamType = ptUnknown
      end>
    object Query_repCOURSE_ID: TIBStringField
      FieldName = 'COURSE_ID'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_ID'
      Size = 8
    end
    object Query_repCOURSE_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_AR_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_repCOURSE_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_EN_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_repDEPARTMENT_ID: TIBStringField
      FieldName = 'DEPARTMENT_ID'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Query_repDEPT_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_repDEPT_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_repCOURSE_TYPE: TIBStringField
      FieldName = 'COURSE_TYPE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_TYPE'
      Size = 15
    end
    object Query_repATTENDENCE_REQ: TIBBCDField
      FieldName = 'ATTENDENCE_REQ'
      Origin = 'COURSE_DEPARTMENT_VIEW.ATTENDENCE_REQ'
      Precision = 9
      Size = 2
    end
    object Query_repMAX_MIDTERM_MARK: TIBBCDField
      FieldName = 'MAX_MIDTERM_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MAX_MIDTERM_MARK'
      Precision = 9
      Size = 2
    end
    object Query_repMIN_FINAL_MARK: TIBBCDField
      FieldName = 'MIN_FINAL_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MIN_FINAL_MARK'
      Precision = 9
      Size = 2
    end
    object Query_repMAX_FINAL_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'MAX_FINAL_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MAX_FINAL_MARK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Query_repPASSING_GRADE: TIBBCDField
      FieldName = 'PASSING_GRADE'
      Origin = 'COURSE_DEPARTMENT_VIEW.PASSING_GRADE'
      Precision = 9
      Size = 2
    end
    object Query_repHOURS: TSmallintField
      FieldName = 'HOURS'
      Origin = 'COURSE_DEPARTMENT_VIEW.HOURS'
    end
    object Query_repPREREQUISITE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'PREREQUISITE'
      Origin = 'COURSE_DEPARTMENT_VIEW.PREREQUISITE'
      ReadOnly = True
      Size = 8
    end
    object Query_repNOTES: TBlobField
      FieldName = 'NOTES'
      Origin = 'COURSE_DEPARTMENT_VIEW.NOTES'
      Size = 8
    end
    object Query_repSTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT_RESULTS3_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query_repST_AR_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_AR_NAME'
      Origin = 'STUDENT_RESULTS3_VIEW.ST_AR_NAME'
      ReadOnly = True
      Size = 40
    end
    object Query_repST_EN_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_EN_NAME'
      Origin = 'STUDENT_RESULTS3_VIEW.ST_EN_NAME'
      ReadOnly = True
      Size = 40
    end
    object Query_repCOURSE_ID1: TIBStringField
      FieldName = 'COURSE_ID1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_ID'
      Size = 8
    end
    object Query_repCOURSE_AR_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_AR_TITLE1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_repCOURSE_EN_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_EN_TITLE1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_repLEVEL_TIME: TIBStringField
      FieldName = 'LEVEL_TIME'
      Origin = 'STUDENT_RESULTS3_VIEW.LEVEL_TIME'
      Size = 15
    end
    object Query_repLEVEL_NO: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'LEVEL_NO'
      Origin = 'STUDENT_RESULTS3_VIEW.LEVEL_NO'
      ReadOnly = True
    end
    object Query_repMIDTERM_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'MIDTERM_MARK'
      Origin = 'STUDENT_RESULTS3_VIEW.MIDTERM_MARK'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Query_repFINAL_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'FINAL_MARK'
      Origin = 'STUDENT_RESULTS3_VIEW.FINAL_MARK'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Query_repATTENDENCE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ATTENDENCE'
      Origin = 'STUDENT_RESULTS3_VIEW.ATTENDENCE'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Query_repGRADE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'GRADE'
      Origin = 'STUDENT_RESULTS3_VIEW.GRADE'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Query_repPASS: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'PASS'
      Origin = 'STUDENT_RESULTS3_VIEW.PASS'
      ReadOnly = True
    end
    object Query_repAVERAGE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'AVERAGE'
      Origin = 'STUDENT_RESULTS3_VIEW.AVERAGE'
      ReadOnly = True
      Size = 8
    end
    object Query_repSTUDENT_ID1: TIBStringField
      FieldName = 'STUDENT_ID1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query_repST_AR_NAME1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_AR_NAME1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ST_AR_NAME'
      ReadOnly = True
      Size = 40
    end
    object Query_repST_EN_NAME1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_EN_NAME1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ST_EN_NAME'
      ReadOnly = True
      Size = 40
    end
    object Query_repPHONE_NUMBER: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'PHONE_NUMBER'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.PHONE_NUMBER'
      ReadOnly = True
      Size = 10
    end
    object Query_repADDRESS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ADDRESS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ADDRESS'
      ReadOnly = True
    end
    object Query_repSEX: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'SEX'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.SEX'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object Query_repDEGREE_OWNED: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEGREE_OWNED'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEGREE_OWNED'
      ReadOnly = True
    end
    object Query_repDEGREE_DATE: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DEGREE_DATE'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEGREE_DATE'
      ReadOnly = True
    end
    object Query_repPICTURE: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'PICTURE'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.PICTURE'
      ReadOnly = True
      Size = 8
    end
    object Query_repDEPARTMENT_ID1: TIBStringField
      FieldName = 'DEPARTMENT_ID1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Query_repDEPT_AR_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_repDEPT_EN_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_repCOMPULSARY_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'COMPULSARY_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.COMPULSARY_HRS'
      ReadOnly = True
    end
    object Query_repSUPPLEMENT_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'SUPPLEMENT_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.SUPPLEMENT_HRS'
      ReadOnly = True
    end
    object Query_repELECTIVE_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ELECTIVE_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ELECTIVE_HRS'
      ReadOnly = True
    end
    object Query_repCULTURAL_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CULTURAL_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.CULTURAL_HRS'
      ReadOnly = True
    end
    object Query_repSTUDENT_STATUS: TIBStringField
      FieldName = 'STUDENT_STATUS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.STUDENT_STATUS'
      Size = 15
    end
    object Query_repNOTES1: TBlobField
      FieldName = 'NOTES1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.NOTES'
      Size = 8
    end
    object Query_repFACULTY_ID: TIBStringField
      FieldName = 'FACULTY_ID'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_ID'
      Size = 4
    end
    object Query_repFACULTY_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FACULTY_AR_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_repFACULTY_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FACULTY_EN_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_repDEPARTMENT_ID2: TIBStringField
      FieldName = 'DEPARTMENT_ID2'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Query_repDEPT_AR_TITLE2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE2'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_repDEPT_EN_TITLE2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE2'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
  end
  object Query_rep_goout: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT C.COURSE_ID, C.COURSE_AR_TITLE, C.COURSE_EN_TITLE, '
      
        ' C.DEPARTMENT_ID, C.DEPT_AR_TITLE, C.DEPT_EN_TITLE, C.COURSE_TYP' +
        'E, '
      ' C.ATTENDENCE_REQ, C.MAX_MIDTERM_MARK, C.MIN_FINAL_MARK, '
      ' C.MAX_FINAL_MARK, C.PASSING_GRADE, C.HOURS, C.PREREQUISITE, '
      
        ' C.NOTES, S.STUDENT_ID, S.ST_AR_NAME, S.ST_EN_NAME, S.COURSE_ID,' +
        ' '
      
        ' S.COURSE_AR_TITLE, S.COURSE_EN_TITLE, S.LEVEL_TIME, S.LEVEL_NO,' +
        ' '
      ' S.MIDTERM_MARK, S.FINAL_MARK, S.ATTENDENCE, S.GRADE, S.PASS, '
      ' S.AVERAGE, S1.STUDENT_ID, S1.ST_AR_NAME, S1.ST_EN_NAME, '
      ' S1.PHONE_NUMBER, S1.ADDRESS, S1.SEX, S1.DEGREE_OWNED, '
      
        ' S1.DEGREE_DATE, S1.PICTURE, S1.DEPARTMENT_ID, S1.DEPT_AR_TITLE,' +
        ' '
      ' S1.DEPT_EN_TITLE, S1.COMPULSARY_HRS, S1.SUPPLEMENT_HRS, '
      ' S1.ELECTIVE_HRS, S1.CULTURAL_HRS, S1.STUDENT_STATUS, S1.NOTES'
      'FROM COURSE_DEPARTMENT_VIEW C, STUDENT_RESULTS3_VIEW S, '
      ' STUDENT_IN_DEPARTMENT_VIEW S1'
      'WHERE'
      ' (S.STUDENT_ID = :var1)'
      ' AND (S.COURSE_ID = C.COURSE_ID)'
      ' AND (S1.STUDENT_ID = S.STUDENT_ID)'
      ' AND (S1.DEPARTMENT_ID = C.DEPARTMENT_ID)'
      ' AND (S1.STUDENT_STATUS = '#39#1582#1585#1610#1580#39')')
    Left = 96
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'var1'
        ParamType = ptUnknown
      end>
    object Query_rep_gooutCOURSE_ID: TIBStringField
      FieldName = 'COURSE_ID'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_ID'
      Size = 8
    end
    object Query_rep_gooutCOURSE_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_AR_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutCOURSE_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_EN_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutDEPARTMENT_ID: TIBStringField
      FieldName = 'DEPARTMENT_ID'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Query_rep_gooutDEPT_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutDEPT_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutCOURSE_TYPE: TIBStringField
      FieldName = 'COURSE_TYPE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_TYPE'
      Size = 15
    end
    object Query_rep_gooutATTENDENCE_REQ: TIBBCDField
      FieldName = 'ATTENDENCE_REQ'
      Origin = 'COURSE_DEPARTMENT_VIEW.ATTENDENCE_REQ'
      Precision = 9
      Size = 2
    end
    object Query_rep_gooutMAX_MIDTERM_MARK: TIBBCDField
      FieldName = 'MAX_MIDTERM_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MAX_MIDTERM_MARK'
      Precision = 9
      Size = 2
    end
    object Query_rep_gooutMIN_FINAL_MARK: TIBBCDField
      FieldName = 'MIN_FINAL_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MIN_FINAL_MARK'
      Precision = 9
      Size = 2
    end
    object Query_rep_gooutMAX_FINAL_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'MAX_FINAL_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MAX_FINAL_MARK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Query_rep_gooutPASSING_GRADE: TIBBCDField
      FieldName = 'PASSING_GRADE'
      Origin = 'COURSE_DEPARTMENT_VIEW.PASSING_GRADE'
      Precision = 9
      Size = 2
    end
    object Query_rep_gooutHOURS: TSmallintField
      FieldName = 'HOURS'
      Origin = 'COURSE_DEPARTMENT_VIEW.HOURS'
    end
    object Query_rep_gooutPREREQUISITE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'PREREQUISITE'
      Origin = 'COURSE_DEPARTMENT_VIEW.PREREQUISITE'
      ReadOnly = True
      Size = 8
    end
    object Query_rep_gooutNOTES: TBlobField
      FieldName = 'NOTES'
      Origin = 'COURSE_DEPARTMENT_VIEW.NOTES'
      Size = 8
    end
    object Query_rep_gooutSTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT_RESULTS3_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query_rep_gooutST_AR_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_AR_NAME'
      Origin = 'STUDENT_RESULTS3_VIEW.ST_AR_NAME'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutST_EN_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_EN_NAME'
      Origin = 'STUDENT_RESULTS3_VIEW.ST_EN_NAME'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutCOURSE_ID1: TIBStringField
      FieldName = 'COURSE_ID1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_ID'
      Size = 8
    end
    object Query_rep_gooutCOURSE_AR_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_AR_TITLE1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutCOURSE_EN_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_EN_TITLE1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutLEVEL_TIME: TIBStringField
      FieldName = 'LEVEL_TIME'
      Origin = 'STUDENT_RESULTS3_VIEW.LEVEL_TIME'
      Size = 15
    end
    object Query_rep_gooutLEVEL_NO: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'LEVEL_NO'
      Origin = 'STUDENT_RESULTS3_VIEW.LEVEL_NO'
      ReadOnly = True
    end
    object Query_rep_gooutMIDTERM_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'MIDTERM_MARK'
      Origin = 'STUDENT_RESULTS3_VIEW.MIDTERM_MARK'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Query_rep_gooutFINAL_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'FINAL_MARK'
      Origin = 'STUDENT_RESULTS3_VIEW.FINAL_MARK'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Query_rep_gooutATTENDENCE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ATTENDENCE'
      Origin = 'STUDENT_RESULTS3_VIEW.ATTENDENCE'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Query_rep_gooutGRADE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'GRADE'
      Origin = 'STUDENT_RESULTS3_VIEW.GRADE'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Query_rep_gooutPASS: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'PASS'
      Origin = 'STUDENT_RESULTS3_VIEW.PASS'
      ReadOnly = True
    end
    object Query_rep_gooutAVERAGE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'AVERAGE'
      Origin = 'STUDENT_RESULTS3_VIEW.AVERAGE'
      ReadOnly = True
      Size = 8
    end
    object Query_rep_gooutSTUDENT_ID1: TIBStringField
      FieldName = 'STUDENT_ID1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query_rep_gooutST_AR_NAME1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_AR_NAME1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ST_AR_NAME'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutST_EN_NAME1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_EN_NAME1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ST_EN_NAME'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutPHONE_NUMBER: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'PHONE_NUMBER'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.PHONE_NUMBER'
      ReadOnly = True
      Size = 10
    end
    object Query_rep_gooutADDRESS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ADDRESS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ADDRESS'
      ReadOnly = True
    end
    object Query_rep_gooutSEX: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'SEX'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.SEX'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object Query_rep_gooutDEGREE_OWNED: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEGREE_OWNED'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEGREE_OWNED'
      ReadOnly = True
    end
    object Query_rep_gooutDEGREE_DATE: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DEGREE_DATE'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEGREE_DATE'
      ReadOnly = True
    end
    object Query_rep_gooutPICTURE: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'PICTURE'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.PICTURE'
      ReadOnly = True
      Size = 8
    end
    object Query_rep_gooutDEPARTMENT_ID1: TIBStringField
      FieldName = 'DEPARTMENT_ID1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Query_rep_gooutDEPT_AR_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutDEPT_EN_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_rep_gooutCOMPULSARY_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'COMPULSARY_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.COMPULSARY_HRS'
      ReadOnly = True
    end
    object Query_rep_gooutSUPPLEMENT_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'SUPPLEMENT_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.SUPPLEMENT_HRS'
      ReadOnly = True
    end
    object Query_rep_gooutELECTIVE_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ELECTIVE_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ELECTIVE_HRS'
      ReadOnly = True
    end
    object Query_rep_gooutCULTURAL_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CULTURAL_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.CULTURAL_HRS'
      ReadOnly = True
    end
    object Query_rep_gooutSTUDENT_STATUS: TIBStringField
      FieldName = 'STUDENT_STATUS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.STUDENT_STATUS'
      Size = 15
    end
    object Query_rep_gooutNOTES1: TBlobField
      FieldName = 'NOTES1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.NOTES'
      Size = 8
    end
    object Query_rep_goouttagder: TStringField
      FieldKind = fkCalculated
      FieldName = 'tagder'
      Size = 30
      Calculated = True
    end
  end
  object Q_name_pass: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT* FROM COURSE_DEPARTMENT_VIEW C, STUDENT_RESULTS3_VIEW S, '
      ' STUDENT_IN_DEPARTMENT_VIEW S1, FACULTY_DEPARTMENT_VIEW F'
      'WHERE'
      '  (F.FACULTY_AR_TITLE = :var1)'
      ' AND (S.COURSE_ID = C.COURSE_ID)'
      ' AND (S.LEVEL_TIME = :var2)'
      ' AND (S1.STUDENT_ID = S.STUDENT_ID)'
      ' AND (S1.DEPARTMENT_ID = C.DEPARTMENT_ID)'
      ' AND (S1.DEPT_AR_TITLE = :var3)'
      ' AND (F.DEPARTMENT_ID = S1.DEPARTMENT_ID)'
      ' AND (F.DEPARTMENT_ID = C.DEPARTMENT_ID)')
    Left = 328
    Top = 18
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
    object Q_name_passCOURSE_ID: TIBStringField
      FieldName = 'COURSE_ID'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_ID'
      Size = 8
    end
    object Q_name_passCOURSE_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_AR_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passCOURSE_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_EN_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passDEPARTMENT_ID: TIBStringField
      FieldName = 'DEPARTMENT_ID'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Q_name_passDEPT_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passDEPT_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passCOURSE_TYPE: TIBStringField
      FieldName = 'COURSE_TYPE'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_TYPE'
      Size = 15
    end
    object Q_name_passATTENDENCE_REQ: TIBBCDField
      FieldName = 'ATTENDENCE_REQ'
      Origin = 'COURSE_DEPARTMENT_VIEW.ATTENDENCE_REQ'
      Precision = 9
      Size = 2
    end
    object Q_name_passMAX_MIDTERM_MARK: TIBBCDField
      FieldName = 'MAX_MIDTERM_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MAX_MIDTERM_MARK'
      Precision = 9
      Size = 2
    end
    object Q_name_passMIN_FINAL_MARK: TIBBCDField
      FieldName = 'MIN_FINAL_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MIN_FINAL_MARK'
      Precision = 9
      Size = 2
    end
    object Q_name_passMAX_FINAL_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'MAX_FINAL_MARK'
      Origin = 'COURSE_DEPARTMENT_VIEW.MAX_FINAL_MARK'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Q_name_passPASSING_GRADE: TIBBCDField
      FieldName = 'PASSING_GRADE'
      Origin = 'COURSE_DEPARTMENT_VIEW.PASSING_GRADE'
      Precision = 9
      Size = 2
    end
    object Q_name_passHOURS: TSmallintField
      FieldName = 'HOURS'
      Origin = 'COURSE_DEPARTMENT_VIEW.HOURS'
    end
    object Q_name_passPREREQUISITE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'PREREQUISITE'
      Origin = 'COURSE_DEPARTMENT_VIEW.PREREQUISITE'
      ReadOnly = True
      Size = 8
    end
    object Q_name_passNOTES: TBlobField
      FieldName = 'NOTES'
      Origin = 'COURSE_DEPARTMENT_VIEW.NOTES'
      Size = 8
    end
    object Q_name_passSTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT_RESULTS3_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Q_name_passST_AR_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_AR_NAME'
      Origin = 'STUDENT_RESULTS3_VIEW.ST_AR_NAME'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passST_EN_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_EN_NAME'
      Origin = 'STUDENT_RESULTS3_VIEW.ST_EN_NAME'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passCOURSE_ID1: TIBStringField
      FieldName = 'COURSE_ID1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_ID'
      Size = 8
    end
    object Q_name_passCOURSE_AR_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_AR_TITLE1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passCOURSE_EN_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'COURSE_EN_TITLE1'
      Origin = 'STUDENT_RESULTS3_VIEW.COURSE_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passLEVEL_TIME: TIBStringField
      FieldName = 'LEVEL_TIME'
      Origin = 'STUDENT_RESULTS3_VIEW.LEVEL_TIME'
      Size = 15
    end
    object Q_name_passLEVEL_NO: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'LEVEL_NO'
      Origin = 'STUDENT_RESULTS3_VIEW.LEVEL_NO'
      ReadOnly = True
    end
    object Q_name_passMIDTERM_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'MIDTERM_MARK'
      Origin = 'STUDENT_RESULTS3_VIEW.MIDTERM_MARK'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Q_name_passFINAL_MARK: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'FINAL_MARK'
      Origin = 'STUDENT_RESULTS3_VIEW.FINAL_MARK'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Q_name_passATTENDENCE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ATTENDENCE'
      Origin = 'STUDENT_RESULTS3_VIEW.ATTENDENCE'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Q_name_passGRADE: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'GRADE'
      Origin = 'STUDENT_RESULTS3_VIEW.GRADE'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
    object Q_name_passPASS: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'PASS'
      Origin = 'STUDENT_RESULTS3_VIEW.PASS'
      ReadOnly = True
    end
    object Q_name_passAVERAGE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'AVERAGE'
      Origin = 'STUDENT_RESULTS3_VIEW.AVERAGE'
      ReadOnly = True
      Size = 8
    end
    object Q_name_passSTUDENT_ID1: TIBStringField
      FieldName = 'STUDENT_ID1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Q_name_passST_AR_NAME1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_AR_NAME1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ST_AR_NAME'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passST_EN_NAME1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ST_EN_NAME1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ST_EN_NAME'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passPHONE_NUMBER: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'PHONE_NUMBER'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.PHONE_NUMBER'
      ReadOnly = True
      Size = 10
    end
    object Q_name_passADDRESS: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'ADDRESS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ADDRESS'
      ReadOnly = True
    end
    object Q_name_passSEX: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'SEX'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.SEX'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object Q_name_passDEGREE_OWNED: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEGREE_OWNED'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEGREE_OWNED'
      ReadOnly = True
    end
    object Q_name_passDEGREE_DATE: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DEGREE_DATE'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEGREE_DATE'
      ReadOnly = True
    end
    object Q_name_passPICTURE: TBlobField
      FieldKind = fkInternalCalc
      FieldName = 'PICTURE'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.PICTURE'
      ReadOnly = True
      Size = 8
    end
    object Q_name_passDEPARTMENT_ID1: TIBStringField
      FieldName = 'DEPARTMENT_ID1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Q_name_passDEPT_AR_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passDEPT_EN_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passCOMPULSARY_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'COMPULSARY_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.COMPULSARY_HRS'
      ReadOnly = True
    end
    object Q_name_passSUPPLEMENT_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'SUPPLEMENT_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.SUPPLEMENT_HRS'
      ReadOnly = True
    end
    object Q_name_passELECTIVE_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ELECTIVE_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.ELECTIVE_HRS'
      ReadOnly = True
    end
    object Q_name_passCULTURAL_HRS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CULTURAL_HRS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.CULTURAL_HRS'
      ReadOnly = True
    end
    object Q_name_passSTUDENT_STATUS: TIBStringField
      FieldName = 'STUDENT_STATUS'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.STUDENT_STATUS'
      Size = 15
    end
    object Q_name_passNOTES1: TBlobField
      FieldName = 'NOTES1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.NOTES'
      Size = 8
    end
    object Q_name_passFACULTY_ID: TIBStringField
      FieldName = 'FACULTY_ID'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_ID'
      Size = 4
    end
    object Q_name_passFACULTY_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FACULTY_AR_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passFACULTY_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FACULTY_EN_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passDEPARTMENT_ID2: TIBStringField
      FieldName = 'DEPARTMENT_ID2'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Q_name_passDEPT_AR_TITLE2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE2'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_name_passDEPT_EN_TITLE2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE2'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
  end
  object Query1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT  STUDENT_ID, COURSE_ID, MIDTERM_MARK,  ATTENDENCE, GRADE,' +
        ' LEVEL_NO, LEVEL_TIME, PASS, AVERAGE'
      'FROM RESULT3_VIEW '
      'WHERE'
      '(STUDENT_ID = :var1)'
      ' AND (LEVEL_TIME = :var2)')
    Left = 328
    Top = 73
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
    object Query1STUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'RESULT3_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query1COURSE_ID: TIBStringField
      FieldName = 'COURSE_ID'
      Origin = 'RESULT3_VIEW.COURSE_ID'
      Size = 8
    end
    object Query1MIDTERM_MARK: TIBBCDField
      FieldName = 'MIDTERM_MARK'
      Origin = 'RESULT3_VIEW.MIDTERM_MARK'
      Precision = 9
      Size = 2
    end
    object Query1ATTENDENCE: TIBBCDField
      FieldName = 'ATTENDENCE'
      Origin = 'RESULT3_VIEW.ATTENDENCE'
      Precision = 9
      Size = 2
    end
    object Query1GRADE: TIBBCDField
      FieldName = 'GRADE'
      Origin = 'RESULT3_VIEW.GRADE'
      Precision = 9
      Size = 2
    end
    object Query1LEVEL_NO: TSmallintField
      FieldName = 'LEVEL_NO'
      Origin = 'RESULT3_VIEW.LEVEL_NO'
    end
    object Query1LEVEL_TIME: TIBStringField
      FieldName = 'LEVEL_TIME'
      Origin = 'RESULT3_VIEW.LEVEL_TIME'
      Size = 15
    end
    object Query1PASS: TSmallintField
      FieldName = 'PASS'
      Origin = 'RESULT3_VIEW.PASS'
      Required = True
    end
    object Query1AVERAGE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'AVERAGE'
      Origin = 'RESULT3_VIEW.AVERAGE'
      ReadOnly = True
      Size = 8
    end
  end
  object dec: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  GRADUATION_DATE, REGISTRATION_DATE'
      'FROM STUDENT1_VIEW ')
    Left = 328
    Top = 185
    object decGRADUATION_DATE: TDateField
      FieldName = 'GRADUATION_DATE'
      Origin = 'STUDENT1_VIEW.GRADUATION_DATE'
    end
    object decREGISTRATION_DATE: TDateField
      FieldName = 'REGISTRATION_DATE'
      Origin = 'STUDENT1_VIEW.REGISTRATION_DATE'
    end
  end
  object RATION_TYPE: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct a.student_id,a.ar_name'
      
        'from student1_view a,enrollment1_view b,student_in_department_vi' +
        'ew c'
      'where '
      ' c.dept_ar_title=:var1'
      'and a.student_id=b.student_id'
      'and a.student_id=C.student_id'
      'and B.student_id=C.student_id'
      'and (a.registration_type=:var2  or a.registration_type=:var3 )'
      'and a.student_status='#39#1605#1587#1578#1605#1585' '#1601#1610' '#1583#1585#1575#1587#1578#1607#39
      'and b.section_time=:var4'
      'and a.NATIONALITY=:var5')
    Left = 96
    Top = 296
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
    object RATION_TYPESTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT1_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object RATION_TYPEAR_NAME: TIBStringField
      FieldName = 'AR_NAME'
      Origin = 'STUDENT1_VIEW.AR_NAME'
      Size = 40
    end
  end
  object Query_fac: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  FACULTY_AR_TITLE, DEPT_AR_TITLE'
      'FROM FACULTY_DEPARTMENT_VIEW '
      'WHERE'
      '(FACULTY_AR_TITLE = :var1)')
    Left = 456
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_facFACULTY_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FACULTY_AR_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_facDEPT_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
  end
  object Q_sh_ship: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  S.STUDENT_ID, S.AR_NAME, S.EN_NAME, S.NATIONALITY, '
      ' S.REGISTRATION_TYPE, S1.STUDENT_ID, S1.DEPARTMENT_ID, '
      ' S1.DEPT_AR_TITLE, F.FACULTY_ID, F.FACULTY_AR_TITLE, '
      ' F.FACULTY_EN_TITLE, F.DEPARTMENT_ID, F.DEPT_AR_TITLE, '
      ' F.DEPT_EN_TITLE, E.STUDENT_ID,E.SECTION_TIME'
      'FROM STUDENT3_VIEW S, STUDENT_IN_DEPARTMENT_VIEW S1, '
      ' FACULTY_DEPARTMENT_VIEW F,  ENROLLMENT1_VIEW E'
      'WHERE'
      '(S.NATIONALITY = :var1)'
      ' AND (E.SECTION_TIME = :var2)'
      ' AND (S.REGISTRATION_TYPE =:var3)'
      ' AND (S1.STUDENT_ID = S.STUDENT_ID)'
      ' AND (F.DEPT_AR_TITLE = :var4)'
      ' AND (F.FACULTY_AR_TITLE = :var5)'
      ' AND (F.DEPARTMENT_ID = S1.DEPARTMENT_ID)'
      ' AND (E.STUDENT_ID = S1.STUDENT_ID)')
    Left = 328
    Top = 240
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
    object Q_sh_shipSTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT3_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Q_sh_shipAR_NAME: TIBStringField
      FieldName = 'AR_NAME'
      Origin = 'STUDENT3_VIEW.AR_NAME'
      Size = 40
    end
    object Q_sh_shipEN_NAME: TIBStringField
      FieldName = 'EN_NAME'
      Origin = 'STUDENT3_VIEW.EN_NAME'
      Size = 40
    end
    object Q_sh_shipNATIONALITY: TIBStringField
      FieldName = 'NATIONALITY'
      Origin = 'STUDENT3_VIEW.NATIONALITY'
      Size = 15
    end
    object Q_sh_shipREGISTRATION_TYPE: TIBStringField
      FieldName = 'REGISTRATION_TYPE'
      Origin = 'STUDENT3_VIEW.REGISTRATION_TYPE'
      Size = 16
    end
    object Q_sh_shipSTUDENT_ID1: TIBStringField
      FieldName = 'STUDENT_ID1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Q_sh_shipDEPARTMENT_ID: TIBStringField
      FieldName = 'DEPARTMENT_ID'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Q_sh_shipDEPT_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_sh_shipFACULTY_ID: TIBStringField
      FieldName = 'FACULTY_ID'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_ID'
      Size = 4
    end
    object Q_sh_shipFACULTY_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FACULTY_AR_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_sh_shipFACULTY_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FACULTY_EN_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_sh_shipDEPARTMENT_ID1: TIBStringField
      FieldName = 'DEPARTMENT_ID1'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Q_sh_shipDEPT_AR_TITLE1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE1'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_sh_shipDEPT_EN_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_EN_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPT_EN_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Q_sh_shipSTUDENT_ID2: TIBStringField
      FieldName = 'STUDENT_ID2'
      Origin = 'ENROLLMENT1_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Q_sh_shipSECTION_TIME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'SECTION_TIME'
      Origin = 'ENROLLMENT1_VIEW.SECTION_TIME'
      ReadOnly = True
      Size = 15
    end
  end
  object q_faculty: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  AR_TITLE'
      'FROM FACULTY_VIEW ')
    Left = 456
    Top = 92
    object q_facultyAR_TITLE: TIBStringField
      FieldName = 'AR_TITLE'
      Origin = 'FACULTY_VIEW.AR_TITLE'
      Size = 40
    end
  end
  object q_faculty_ds: TDataSource
    DataSet = q_faculty
    Left = 520
    Top = 94
  end
  object Query_efada: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnCalcFields = Query_efadaCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct  s2.STUDENT_ID,s2.AR_NAME,s2.NATIONALITY,'
      's2.BIRTH_DATE,s2.BIRTH_PLACE,s2.GRADUATION_DATE,'
      's2.REGISTRATION_DATE,f.FACULTY_AR_TITLE,f.DEPT_AR_TITLE'
      'FROM STUDENT_RESULTS3_VIEW S, '
      ' STUDENT_IN_DEPARTMENT_VIEW S1, FACULTY_DEPARTMENT_VIEW F, '
      ' STUDENT1_VIEW S2'
      'WHERE'
      '(S1.STUDENT_STATUS = '#39#1582#1585#1610#1580#39')'
      ' AND(S2.STUDENT_ID = :var1) '
      'AND (F.FACULTY_AR_TITLE= :var2)'
      ' AND (S1.STUDENT_ID = S.STUDENT_ID)'
      ' AND (F.DEPARTMENT_ID = S1.DEPARTMENT_ID)'
      'AND(F.DEPT_AR_TITLE = :var3)'
      ' AND (S2.STUDENT_ID = S1.STUDENT_ID)')
    Left = 96
    Top = 352
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
    object Query_efadaSTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT1_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query_efadaAR_NAME: TIBStringField
      FieldName = 'AR_NAME'
      Origin = 'STUDENT1_VIEW.AR_NAME'
      Size = 40
    end
    object Query_efadaNATIONALITY: TIBStringField
      FieldName = 'NATIONALITY'
      Origin = 'STUDENT1_VIEW.NATIONALITY'
      Size = 15
    end
    object Query_efadaBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
      Origin = 'STUDENT1_VIEW.BIRTH_DATE'
    end
    object Query_efadaBIRTH_PLACE: TIBStringField
      FieldName = 'BIRTH_PLACE'
      Origin = 'STUDENT1_VIEW.BIRTH_PLACE'
      Size = 15
    end
    object Query_efadaGRADUATION_DATE: TDateField
      FieldName = 'GRADUATION_DATE'
      Origin = 'STUDENT1_VIEW.GRADUATION_DATE'
    end
    object Query_efadaREGISTRATION_DATE: TDateField
      FieldName = 'REGISTRATION_DATE'
      Origin = 'STUDENT1_VIEW.REGISTRATION_DATE'
    end
    object Query_efadaFACULTY_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FACULTY_AR_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_efadaDEPT_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query_efadatagder: TStringField
      FieldKind = fkCalculated
      FieldName = 'tagder'
      Size = 40
      Calculated = True
    end
  end
  object Query2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT DISTINCT S.STUDENT_ID, S.AR_NAME, S.NATIONALITY, '
      ' S.REGISTRATION_TYPE, S.STUDENT_STATUS, F.FACULTY_AR_TITLE, '
      
        ' F.DEPARTMENT_ID, F.DEPT_AR_TITLE, S1.STUDENT_ID, S1.DEPARTMENT_' +
        'ID, '
      ' R.STUDENT_ID, R.COURSE_ID, R.GRADE, R.LEVEL_TIME, R.PASS, '
      ' R.AVERAGE, C.COURSE_ID, C.DEPARTMENT_ID, C.HOURS'
      'FROM STUDENT1_VIEW S, FACULTY_DEPARTMENT_VIEW F, '
      ' STUDENT_IN_DEPARTMENT_VIEW S1, RESULT3_VIEW R, '
      ' COURSE_DEPARTMENT_VIEW C'
      'WHERE'
      '(S.STUDENT_ID = :var1)'
      ' AND (S.STUDENT_STATUS = '#39#1582#1585#1610#1580#39')'
      ' AND (F.FACULTY_AR_TITLE =:var2)'
      ' AND (F.DEPT_AR_TITLE =:var3)'
      ' AND (S1.STUDENT_ID = S.STUDENT_ID)'
      ' AND (S1.STUDENT_ID = S.STUDENT_ID)'
      ' AND (S1.DEPARTMENT_ID = F.DEPARTMENT_ID)'
      ' AND (R.STUDENT_ID = S1.STUDENT_ID)'
      ' AND (C.COURSE_ID = R.COURSE_ID)'
      ' AND (C.DEPARTMENT_ID = F.DEPARTMENT_ID)')
    Left = 456
    Top = 160
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
    object Query2STUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT1_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query2AR_NAME: TIBStringField
      FieldName = 'AR_NAME'
      Origin = 'STUDENT1_VIEW.AR_NAME'
      Size = 40
    end
    object Query2NATIONALITY: TIBStringField
      FieldName = 'NATIONALITY'
      Origin = 'STUDENT1_VIEW.NATIONALITY'
      Size = 15
    end
    object Query2REGISTRATION_TYPE: TIBStringField
      FieldName = 'REGISTRATION_TYPE'
      Origin = 'STUDENT1_VIEW.REGISTRATION_TYPE'
      Size = 16
    end
    object Query2STUDENT_STATUS: TIBStringField
      FieldName = 'STUDENT_STATUS'
      Origin = 'STUDENT1_VIEW.STUDENT_STATUS'
    end
    object Query2FACULTY_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FACULTY_AR_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.FACULTY_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query2DEPARTMENT_ID: TIBStringField
      FieldName = 'DEPARTMENT_ID'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Query2DEPT_AR_TITLE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_AR_TITLE'
      Origin = 'FACULTY_DEPARTMENT_VIEW.DEPT_AR_TITLE'
      ReadOnly = True
      Size = 40
    end
    object Query2STUDENT_ID1: TIBStringField
      FieldName = 'STUDENT_ID1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query2DEPARTMENT_ID1: TIBStringField
      FieldName = 'DEPARTMENT_ID1'
      Origin = 'STUDENT_IN_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Query2STUDENT_ID2: TIBStringField
      FieldName = 'STUDENT_ID2'
      Origin = 'RESULT3_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Query2COURSE_ID: TIBStringField
      FieldName = 'COURSE_ID'
      Origin = 'RESULT3_VIEW.COURSE_ID'
      Size = 8
    end
    object Query2GRADE: TIBBCDField
      FieldName = 'GRADE'
      Origin = 'RESULT3_VIEW.GRADE'
      Precision = 9
      Size = 2
    end
    object Query2LEVEL_TIME: TIBStringField
      FieldName = 'LEVEL_TIME'
      Origin = 'RESULT3_VIEW.LEVEL_TIME'
      Size = 15
    end
    object Query2PASS: TSmallintField
      FieldName = 'PASS'
      Origin = 'RESULT3_VIEW.PASS'
      Required = True
    end
    object Query2AVERAGE: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'AVERAGE'
      Origin = 'RESULT3_VIEW.AVERAGE'
      ReadOnly = True
      Size = 8
    end
    object Query2COURSE_ID1: TIBStringField
      FieldName = 'COURSE_ID1'
      Origin = 'COURSE_DEPARTMENT_VIEW.COURSE_ID'
      Size = 8
    end
    object Query2DEPARTMENT_ID2: TIBStringField
      FieldName = 'DEPARTMENT_ID2'
      Origin = 'COURSE_DEPARTMENT_VIEW.DEPARTMENT_ID'
      Size = 4
    end
    object Query2HOURS: TSmallintField
      FieldName = 'HOURS'
      Origin = 'COURSE_DEPARTMENT_VIEW.HOURS'
    end
  end
  object Q_failed: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct a.student_id,a.ar_name'
      'from student1_view a,result1_view b,student_in_department c'
      'where'
      'a.student_id=b.student_id'
      'and a.student_id=c.student_id'
      'and c.student_id=b.student_id'
      'and c.dept_ar_title=:var1'
      'and b.level_time= :var2'
      'and b.grade<=50')
    Left = 328
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'var1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'var2'
        ParamType = ptUnknown
      end>
    object Q_failedSTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT1_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
    object Q_failedAR_NAME: TIBStringField
      FieldName = 'AR_NAME'
      Origin = 'STUDENT1_VIEW.AR_NAME'
      Size = 40
    end
    object Q_failedtagder: TStringField
      FieldKind = fkCalculated
      FieldName = 'tagder'
      Calculated = True
    end
  end
  object Q_failed_ds: TDataSource
    DataSet = Q_failed
    Left = 264
    Top = 352
  end
  object Q_comper_ds: TDataSource
    DataSet = Q_comper
    Left = 544
    Top = 384
  end
  object Q_comper: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select student_id from student1_view')
    Left = 472
    Top = 384
    object Q_comperSTUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT1_VIEW.STUDENT_ID'
      Required = True
      Size = 7
    end
  end
  object DataSource3: TDataSource
    DataSet = IBDataSet1
    Left = 480
    Top = 304
  end
  object IBDataSet1: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT *'
      'FROM STUDENT, RESULTS, COURSES, DEPARTMENTS '
      'WHERE'
      '(STUDENT.STUDENT_ID = :var1)'
      ' AND (DEPARTMENTS.AR_TITLE = :var2)'
      ' AND (RESULTS.STUDENT_ID = STUDENT.STUDENT_ID)'
      ' AND (COURSES.COURSE_ID = RESULTS.COURSE_ID)'
      ' AND (COURSES.DEPARTMENT = STUDENT.DEPARTMENT)'
      ' AND (DEPARTMENTS.DEPARTMENT = COURSES.DEPARTMENT)')
    Left = 536
    Top = 304
    object IBDataSet1STUDENT_ID: TIBStringField
      FieldName = 'STUDENT_ID'
      Origin = 'STUDENT.STUDENT_ID'
      Required = True
      Size = 7
    end
    object IBDataSet1AR_NAME: TIBStringField
      FieldName = 'AR_NAME'
      Origin = 'STUDENT.AR_NAME'
      Required = True
      Size = 40
    end
    object IBDataSet1EN_NAME: TIBStringField
      FieldName = 'EN_NAME'
      Origin = 'STUDENT.EN_NAME'
      Size = 40
    end
    object IBDataSet1BIRTH_PLACE: TIBStringField
      FieldName = 'BIRTH_PLACE'
      Origin = 'STUDENT.BIRTH_PLACE'
      Size = 15
    end
    object IBDataSet1MOTHER_NAME: TIBStringField
      FieldName = 'MOTHER_NAME'
      Origin = 'STUDENT.MOTHER_NAME'
      Size = 30
    end
    object IBDataSet1SEX: TIBStringField
      FieldName = 'SEX'
      Origin = 'STUDENT.SEX'
      FixedChar = True
      Size = 4
    end
    object IBDataSet1RELIGION: TIBStringField
      FieldName = 'RELIGION'
      Origin = 'STUDENT.RELIGION'
      Size = 7
    end
    object IBDataSet1NATIONALITY: TIBStringField
      FieldName = 'NATIONALITY'
      Origin = 'STUDENT.NATIONALITY'
      Size = 15
    end
    object IBDataSet1ADDRESS: TIBStringField
      FieldName = 'ADDRESS'
      Origin = 'STUDENT.ADDRESS'
    end
    object IBDataSet1PHONE_NUMBER: TIBStringField
      FieldName = 'PHONE_NUMBER'
      Origin = 'STUDENT.PHONE_NUMBER'
      Size = 10
    end
    object IBDataSet1ID_NUMBER: TIBStringField
      FieldName = 'ID_NUMBER'
      Origin = 'STUDENT.ID_NUMBER'
      Size = 7
    end
    object IBDataSet1ID_ISSUE_DATE: TDateField
      FieldName = 'ID_ISSUE_DATE'
      Origin = 'STUDENT.ID_ISSUE_DATE'
    end
    object IBDataSet1PASS_NUMBER: TIBStringField
      FieldName = 'PASS_NUMBER'
      Origin = 'STUDENT.PASS_NUMBER'
      Size = 10
    end
    object IBDataSet1PASS_ISSUEPLACE: TIBStringField
      FieldName = 'PASS_ISSUEPLACE'
      Origin = 'STUDENT.PASS_ISSUEPLACE'
    end
    object IBDataSet1PASS_VALIDITY: TDateField
      FieldName = 'PASS_VALIDITY'
      Origin = 'STUDENT.PASS_VALIDITY'
    end
    object IBDataSet1MARITAL_STATUS: TIBStringField
      FieldName = 'MARITAL_STATUS'
      Origin = 'STUDENT.MARITAL_STATUS'
      Size = 5
    end
    object IBDataSet1FAMILY_NUMBER: TIBStringField
      FieldName = 'FAMILY_NUMBER'
      Origin = 'STUDENT.FAMILY_NUMBER'
      Size = 7
    end
    object IBDataSet1HOUSING_STATUS: TIBStringField
      FieldName = 'HOUSING_STATUS'
      Origin = 'STUDENT.HOUSING_STATUS'
      FixedChar = True
      Size = 5
    end
    object IBDataSet1SUPERIOR_NAME: TIBStringField
      FieldName = 'SUPERIOR_NAME'
      Origin = 'STUDENT.SUPERIOR_NAME'
    end
    object IBDataSet1RELATIVE_NAME: TIBStringField
      FieldName = 'RELATIVE_NAME'
      Origin = 'STUDENT.RELATIVE_NAME'
    end
    object IBDataSet1DEGREE_OWNED: TIBStringField
      FieldName = 'DEGREE_OWNED'
      Origin = 'STUDENT.DEGREE_OWNED'
    end
    object IBDataSet1DEGREE_DATE: TDateField
      FieldName = 'DEGREE_DATE'
      Origin = 'STUDENT.DEGREE_DATE'
    end
    object IBDataSet1PICTURE: TBlobField
      FieldName = 'PICTURE'
      Origin = 'STUDENT.PICTURE'
      Size = 8
    end
    object IBDataSet1NOTES: TBlobField
      FieldName = 'NOTES'
      Origin = 'STUDENT.NOTES'
      Size = 8
    end
    object IBDataSet1PIN: TIBStringField
      FieldName = 'PIN'
      Origin = 'STUDENT.PIN'
      Size = 6
    end
    object IBDataSet1REG_ADJ: TIBStringField
      FieldName = 'REG_ADJ'
      Origin = 'STUDENT.REG_ADJ'
      Size = 10
    end
    object IBDataSet1SCHOLARSHIP_SATUS: TIBStringField
      FieldName = 'SCHOLARSHIP_SATUS'
      Origin = 'STUDENT.SCHOLARSHIP_SATUS'
      Size = 10
    end
    object IBDataSet1BIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
      Origin = 'STUDENT.BIRTH_DATE'
    end
    object IBDataSet1FACULTY: TIBStringField
      FieldName = 'FACULTY'
      Origin = 'STUDENT.FACULTY'
      Size = 40
    end
    object IBDataSet1DEPARTMENT: TIBStringField
      FieldName = 'DEPARTMENT'
      Origin = 'STUDENT.DEPARTMENT'
      Size = 4
    end
    object IBDataSet1SCHOOL_END: TDateField
      FieldName = 'SCHOOL_END'
      Origin = 'STUDENT.SCHOOL_END'
    end
    object IBDataSet1REG_DATE: TDateField
      FieldName = 'REG_DATE'
      Origin = 'STUDENT.REG_DATE'
    end
    object IBDataSet1CLASS: TSmallintField
      FieldName = 'CLASS'
      Origin = 'STUDENT.CLASS'
    end
    object IBDataSet1STUDENT_ID1: TIBStringField
      FieldName = 'STUDENT_ID1'
      Origin = 'RESULTS.STUDENT_ID'
      Required = True
      Size = 7
    end
    object IBDataSet1COURSE_ID: TIBStringField
      FieldName = 'COURSE_ID'
      Origin = 'RESULTS.COURSE_ID'
      Required = True
      Size = 8
    end
    object IBDataSet1SYMESTER_TIME: TIBStringField
      FieldName = 'SYMESTER_TIME'
      Origin = 'RESULTS.SYMESTER_TIME'
      Size = 8
    end
    object IBDataSet1GRADE: TIBBCDField
      FieldName = 'GRADE'
      Origin = 'RESULTS.GRADE'
      Precision = 9
      Size = 2
    end
    object IBDataSet1DEPARTMENT1: TIBStringField
      FieldName = 'DEPARTMENT1'
      Origin = 'RESULTS.DEPARTMENT'
      Size = 4
    end
    object IBDataSet1COURSE_ID1: TIBStringField
      FieldName = 'COURSE_ID1'
      Origin = 'COURSES.COURSE_ID'
      Required = True
      Size = 8
    end
    object IBDataSet1AR_TITLE: TIBStringField
      FieldName = 'AR_TITLE'
      Origin = 'COURSES.AR_TITLE'
      Size = 40
    end
    object IBDataSet1EN_TITLE: TIBStringField
      FieldName = 'EN_TITLE'
      Origin = 'COURSES.EN_TITLE'
      Size = 40
    end
    object IBDataSet1HOURS: TSmallintField
      FieldName = 'HOURS'
      Origin = 'COURSES.HOURS'
    end
    object IBDataSet1PREREQUISITE: TIBStringField
      FieldName = 'PREREQUISITE'
      Origin = 'COURSES.PREREQUISITE'
      Size = 24
    end
    object IBDataSet1AR_SYLLABUS: TBlobField
      FieldName = 'AR_SYLLABUS'
      Origin = 'COURSES.AR_SYLLABUS'
      Size = 8
    end
    object IBDataSet1EN_SYLLABUS: TBlobField
      FieldName = 'EN_SYLLABUS'
      Origin = 'COURSES.EN_SYLLABUS'
      Size = 8
    end
    object IBDataSet1DEPARTMENT2: TIBStringField
      FieldName = 'DEPARTMENT2'
      Origin = 'COURSES.DEPARTMENT'
      Size = 4
    end
    object IBDataSet1DEPARTMENT3: TIBStringField
      FieldName = 'DEPARTMENT3'
      Origin = 'DEPARTMENTS.DEPARTMENT'
      Required = True
      Size = 4
    end
    object IBDataSet1AR_TITLE1: TIBStringField
      FieldName = 'AR_TITLE1'
      Origin = 'DEPARTMENTS.AR_TITLE'
      Size = 40
    end
    object IBDataSet1EN_TITLE1: TIBStringField
      FieldName = 'EN_TITLE1'
      Origin = 'DEPARTMENTS.EN_TITLE'
      Size = 40
    end
    object IBDataSet1FACULTY1: TIBStringField
      FieldName = 'FACULTY1'
      Origin = 'DEPARTMENTS.FACULTY'
      Size = 40
    end
    object IBDataSet1COMP_HOURS: TSmallintField
      FieldName = 'COMP_HOURS'
      Origin = 'DEPARTMENTS.COMP_HOURS'
    end
    object IBDataSet1TOTAL_HOURS: TSmallintField
      FieldName = 'TOTAL_HOURS'
      Origin = 'DEPARTMENTS.TOTAL_HOURS'
    end
    object IBDataSet1SUPP_HOURS: TSmallintField
      FieldName = 'SUPP_HOURS'
      Origin = 'DEPARTMENTS.SUPP_HOURS'
    end
  end
  object Q_forigen: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct a.student_id,a.ar_name'
      
        'from student1_view a,enrollment1_view b,student_in_department_vi' +
        'ew c'
      'where'
      ' c.dept_ar_title=:var1'
      'and a.student_id=b.student_id'
      'and a.student_id=C.student_id'
      'and B.student_id=C.student_id'
      'and a.student_status='#39#1605#1587#1578#1605#1585' '#1601#1610' '#1583#1585#1575#1587#1578#1607#39
      'and b.section_time=:var2'
      'and a.NATIONALITY=:var3'
      'and a.housing_status='#39#1583#1575#1582#1604#1610#39
      'and a.sex=:var4')
    Left = 96
    Top = 416
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
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'var4'
        ParamType = ptInputOutput
      end>
  end
  object Q_forigen_ds: TDataSource
    DataSet = Q_forigen
    Left = 24
    Top = 416
  end
end
