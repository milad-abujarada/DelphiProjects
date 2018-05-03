object Form76: TForm76
  Left = 316
  Top = 110
  Width = 448
  Height = 230
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1593#1583#1610#1604' '#1603#1605#1610#1577' '#1606#1608#1593' '#1578#1605' '#1575#1610#1589#1575#1604#1607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 7
    Width = 425
    Height = 185
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 364
      Top = 32
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label2: TLabel
      Left = 169
      Top = 32
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label3: TLabel
      Left = 348
      Top = 88
      Width = 60
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1602#1583#1610#1605#1577
    end
    object Label4: TLabel
      Left = 145
      Top = 88
      Width = 63
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1580#1583#1610#1583#1607
    end
    object Edit1: TEdit
      Left = 223
      Top = 27
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 18
      Top = 27
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 223
      Top = 82
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 18
      Top = 79
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = Edit4Change
    end
    object Button1: TButton
      Left = 248
      Top = 152
      Width = 75
      Height = 25
      Caption = #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 112
      Top = 152
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 5
      OnClick = Button2Click
    end
    object RadioButton2: TRadioButton
      Left = 88
      Top = 112
      Width = 113
      Height = 17
      Caption = #1605#1582#1586#1606' '#1605#1572#1602#1578
      TabOrder = 6
    end
    object Edit5: TEdit
      Left = 320
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 7
      Visible = False
    end
  end
  object RadioButton1: TRadioButton
    Left = 240
    Top = 120
    Width = 113
    Height = 17
    Caption = #1605#1582#1586#1606' '#1583#1575#1574#1605
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = edit_in_storge_history
    Left = 24
    Top = 65535
  end
  object DataSource2: TDataSource
    DataSet = IBTable1
    Left = 24
    Top = 31
  end
  object edit_in_storge_history: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE_HISTORY'
      'where (NUM=:var1)and(KIND=:var2)and(name=:var3)')
    UpdateObject = IBUpdateSQL1
    Left = 56
    Top = 65535
    ParamData = <
      item
        DataType = ftInteger
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
    object edit_in_storge_historyNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE_HISTORY.NAME'
      Required = True
      Size = 30
    end
    object edit_in_storge_historyKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE_HISTORY.KIND'
      Required = True
      Size = 30
    end
    object edit_in_storge_historyNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE_HISTORY.NUM'
      Required = True
    end
    object edit_in_storge_historyINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE_HISTORY.INPUT_DATE'
      Required = True
    end
    object edit_in_storge_historyBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE_HISTORY.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_storge_historyQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE_HISTORY.QUANTITY'
      Required = True
    end
    object edit_in_storge_historyCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE_HISTORY.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object edit_in_storge_historyTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object edit_in_storge_historyDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'STORGE'
    Left = 56
    Top = 31
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable1NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
    end
    object IBTable1SOLD: TIntegerField
      FieldName = 'SOLD'
    end
    object IBTable1DOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable1TOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable1CHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  INPUT_DATE,'
      '  BUY_PRICE,'
      '  QUANTITY,'
      '  CHANGE_PRICE,'
      '  TOTAL_DOLLAR_PRICE,'
      '  DOLLAR_PRICE'
      'from STORGE_HISTORY '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  QUANTITY = :QUANTITY and'
      '  CHANGE_PRICE = :CHANGE_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE and'
      '  DOLLAR_PRICE = :DOLLAR_PRICE')
    ModifySQL.Strings = (
      'update STORGE_HISTORY'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  QUANTITY = :QUANTITY,'
      '  CHANGE_PRICE = :CHANGE_PRICE,'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE,'
      '  DOLLAR_PRICE = :DOLLAR_PRICE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE')
    InsertSQL.Strings = (
      'insert into STORGE_HISTORY'
      
        '  (NAME, KIND, NUM, INPUT_DATE, BUY_PRICE, QUANTITY, CHANGE_PRIC' +
        'E, TOTAL_DOLLAR_PRICE, '
      '   DOLLAR_PRICE)'
      'values'
      
        '  (:NAME, :KIND, :NUM, :INPUT_DATE, :BUY_PRICE, :QUANTITY, :CHAN' +
        'GE_PRICE, '
      '   :TOTAL_DOLLAR_PRICE, :DOLLAR_PRICE)')
    DeleteSQL.Strings = (
      'delete from STORGE_HISTORY'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE')
    Left = 88
  end
  object DataSource3: TDataSource
    DataSet = edit_in_provider_money
    Left = 24
    Top = 64
  end
  object edit_in_provider_money: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROVIDER'
      'where num_in_history_storge=:var1')
    UpdateObject = IBUpdateSQL2
    Left = 56
    Top = 63
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object edit_in_provider_moneyPROVIDER_NAME: TIBStringField
      FieldName = 'PROVIDER_NAME'
      Origin = 'PROVIDER.PROVIDER_NAME'
      Required = True
      Size = 30
    end
    object edit_in_provider_moneyTOTAL_BILL: TIBBCDField
      FieldName = 'TOTAL_BILL'
      Origin = 'PROVIDER.TOTAL_BILL'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_provider_moneyPAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'PROVIDER.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_provider_moneyREMAINING: TIBBCDField
      FieldName = 'REMAINING'
      Origin = 'PROVIDER.REMAINING'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_provider_moneyNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'PROVIDER.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object edit_in_provider_moneyINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PROVIDER.INPUT_DATE'
      Required = True
    end
    object edit_in_provider_moneyDOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Origin = 'PROVIDER.DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_provider_moneyCHANGE: TIBBCDField
      FieldName = 'CHANGE'
      Origin = 'PROVIDER.CHANGE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_provider_moneyREMAINING_DOLLAR: TIBBCDField
      FieldName = 'REMAINING_DOLLAR'
      Origin = 'PROVIDER.REMAINING_DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_provider_moneyTOTAL_DOLLAR: TIBBCDField
      FieldName = 'TOTAL_DOLLAR'
      Origin = 'PROVIDER.TOTAL_DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PROVIDER_NAME,'
      '  TOTAL_BILL,'
      '  PAID,'
      '  REMAINING,'
      '  NUM_IN_HISTORY_STORGE,'
      '  INPUT_DATE,'
      '  DOLLAR,'
      '  CHANGE,'
      '  REMAINING_DOLLAR,'
      '  TOTAL_DOLLAR'
      'from PROVIDER '
      'where'
      '  PROVIDER_NAME = :PROVIDER_NAME and'
      '  TOTAL_BILL = :TOTAL_BILL and'
      '  PAID = :PAID and'
      '  REMAINING = :REMAINING and'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  DOLLAR = :DOLLAR and'
      '  CHANGE = :CHANGE and'
      '  REMAINING_DOLLAR = :REMAINING_DOLLAR and'
      '  TOTAL_DOLLAR = :TOTAL_DOLLAR')
    ModifySQL.Strings = (
      'update PROVIDER'
      'set'
      '  PROVIDER_NAME = :PROVIDER_NAME,'
      '  TOTAL_BILL = :TOTAL_BILL,'
      '  PAID = :PAID,'
      '  REMAINING = :REMAINING,'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  DOLLAR = :DOLLAR,'
      '  CHANGE = :CHANGE,'
      '  REMAINING_DOLLAR = :REMAINING_DOLLAR,'
      '  TOTAL_DOLLAR = :TOTAL_DOLLAR'
      'where'
      '  PROVIDER_NAME = :OLD_PROVIDER_NAME and'
      '  TOTAL_BILL = :OLD_TOTAL_BILL and'
      '  PAID = :OLD_PAID and'
      '  REMAINING = :OLD_REMAINING and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  DOLLAR = :OLD_DOLLAR and'
      '  CHANGE = :OLD_CHANGE and'
      '  REMAINING_DOLLAR = :OLD_REMAINING_DOLLAR and'
      '  TOTAL_DOLLAR = :OLD_TOTAL_DOLLAR')
    InsertSQL.Strings = (
      'insert into PROVIDER'
      
        '  (PROVIDER_NAME, TOTAL_BILL, PAID, REMAINING, NUM_IN_HISTORY_ST' +
        'ORGE, INPUT_DATE, '
      '   DOLLAR, CHANGE, REMAINING_DOLLAR, TOTAL_DOLLAR)'
      'values'
      
        '  (:PROVIDER_NAME, :TOTAL_BILL, :PAID, :REMAINING, :NUM_IN_HISTO' +
        'RY_STORGE, '
      
        '   :INPUT_DATE, :DOLLAR, :CHANGE, :REMAINING_DOLLAR, :TOTAL_DOLL' +
        'AR)')
    DeleteSQL.Strings = (
      'delete from PROVIDER'
      'where'
      '  PROVIDER_NAME = :OLD_PROVIDER_NAME and'
      '  TOTAL_BILL = :OLD_TOTAL_BILL and'
      '  PAID = :OLD_PAID and'
      '  REMAINING = :OLD_REMAINING and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  DOLLAR = :OLD_DOLLAR and'
      '  CHANGE = :OLD_CHANGE and'
      '  REMAINING_DOLLAR = :OLD_REMAINING_DOLLAR and'
      '  TOTAL_DOLLAR = :OLD_TOTAL_DOLLAR')
    Left = 88
    Top = 63
  end
  object DataSource4: TDataSource
    DataSet = max_no_storge
    Left = 24
    Top = 103
  end
  object max_no_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from STORGE')
    Left = 56
    Top = 103
    object max_no_storgeMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource5: TDataSource
    DataSet = sum_storge
    Left = 208
    Top = 59
  end
  object DataSource6: TDataSource
    DataSet = IBTable2
    Left = 24
    Top = 137
  end
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TEMP_STORGE'
    Left = 56
    Top = 136
    object IBTable2NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable2KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable2NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable2BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable2QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable2NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
    end
    object IBTable2SOLD: TIntegerField
      FieldName = 'SOLD'
    end
    object IBTable2DOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable2TOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable2CHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object sum_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(quantity) from STORGE'
      'where (KIND=:var1)and(NAME=:var2)')
    Left = 240
    Top = 61
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
    object sum_storgeSUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object max_no_temp_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from TEMP_STORGE')
    Left = 232
    Top = 8
    object max_no_temp_storgeMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource7: TDataSource
    DataSet = max_no_temp_storge
    Left = 200
    Top = 7
  end
  object DataSource8: TDataSource
    DataSet = check_provider_status
    Left = 320
    Top = 7
  end
  object check_provider_status: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROVIDES'
      'where name=:var1')
    Left = 360
    Top = 7
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object DataSource9: TDataSource
    DataSet = dicount_from_moved_storge
    Left = 320
    Top = 39
  end
  object DataSource10: TDataSource
    Left = 320
    Top = 71
  end
  object DataSource11: TDataSource
    Left = 320
    Top = 103
  end
  object dicount_from_moved_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MOVED_STORGE'
      
        'where (kind=:var1) and (name=:var2)and(NUM_IN_STORGE_HISTORY<>:v' +
        'ar3)')
    UpdateObject = IBUpdateSQL3
    Left = 352
    Top = 39
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
        DataType = ftInteger
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object dicount_from_moved_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'MOVED_STORGE.NAME'
      Required = True
      Size = 30
    end
    object dicount_from_moved_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'MOVED_STORGE.KIND'
      Required = True
      Size = 30
    end
    object dicount_from_moved_storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'MOVED_STORGE.NUM'
      Required = True
    end
    object dicount_from_moved_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'MOVED_STORGE.INPUT_DATE'
      Required = True
    end
    object dicount_from_moved_storgeMOVED_DATE: TDateField
      FieldName = 'MOVED_DATE'
      Origin = 'MOVED_STORGE.MOVED_DATE'
      Required = True
    end
    object dicount_from_moved_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'MOVED_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object dicount_from_moved_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'MOVED_STORGE.QUANTITY'
      Required = True
    end
    object dicount_from_moved_storgeNUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'MOVED_STORGE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
    object dicount_from_moved_storgePLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'MOVED_STORGE.PLACE'
      Required = True
      Size = 30
    end
    object dicount_from_moved_storgeMOVED_NUM: TIntegerField
      FieldName = 'MOVED_NUM'
      Origin = 'MOVED_STORGE.MOVED_NUM'
      Required = True
    end
  end
  object discount_from_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE'
      
        'where (KIND=:var1)and( NAME=:var2)and(NUM_IN_HISTORY_STORGE<>:va' +
        'r3)')
    Left = 352
    Top = 71
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
        DataType = ftInteger
        Name = 'var3'
        ParamType = ptInputOutput
      end>
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 352
    Top = 103
  end
  object IBUpdateSQL3: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  INPUT_DATE,'
      '  MOVED_DATE,'
      '  BUY_PRICE,'
      '  QUANTITY,'
      '  NUM_IN_STORGE_HISTORY,'
      '  PLACE,'
      '  MOVED_NUM'
      'from MOVED_STORGE '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  MOVED_DATE = :MOVED_DATE and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  QUANTITY = :QUANTITY and'
      '  NUM_IN_STORGE_HISTORY = :NUM_IN_STORGE_HISTORY and'
      '  PLACE = :PLACE and'
      '  MOVED_NUM = :MOVED_NUM')
    ModifySQL.Strings = (
      'update MOVED_STORGE'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  MOVED_DATE = :MOVED_DATE,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  QUANTITY = :QUANTITY,'
      '  NUM_IN_STORGE_HISTORY = :NUM_IN_STORGE_HISTORY,'
      '  PLACE = :PLACE,'
      '  MOVED_NUM = :MOVED_NUM'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  MOVED_DATE = :OLD_MOVED_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_STORGE_HISTORY = :OLD_NUM_IN_STORGE_HISTORY and'
      '  PLACE = :OLD_PLACE and'
      '  MOVED_NUM = :OLD_MOVED_NUM')
    InsertSQL.Strings = (
      'insert into MOVED_STORGE'
      
        '  (NAME, KIND, NUM, INPUT_DATE, MOVED_DATE, BUY_PRICE, QUANTITY,' +
        ' NUM_IN_STORGE_HISTORY, '
      '   PLACE, MOVED_NUM)'
      'values'
      
        '  (:NAME, :KIND, :NUM, :INPUT_DATE, :MOVED_DATE, :BUY_PRICE, :QU' +
        'ANTITY, '
      '   :NUM_IN_STORGE_HISTORY, :PLACE, :MOVED_NUM)')
    DeleteSQL.Strings = (
      'delete from MOVED_STORGE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  MOVED_DATE = :OLD_MOVED_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_STORGE_HISTORY = :OLD_NUM_IN_STORGE_HISTORY and'
      '  PLACE = :OLD_PLACE and'
      '  MOVED_NUM = :OLD_MOVED_NUM')
    Left = 384
    Top = 39
  end
  object IBUpdateSQL4: TIBUpdateSQL
    Left = 384
    Top = 71
  end
  object IBUpdateSQL5: TIBUpdateSQL
    Left = 384
    Top = 103
  end
  object DataSource12: TDataSource
    Left = 208
    Top = 95
  end
  object DataSource13: TDataSource
    Left = 208
    Top = 127
  end
  object IBQuery1: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 240
    Top = 95
  end
  object IBQuery2: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 240
    Top = 127
  end
end
