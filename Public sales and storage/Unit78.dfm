object Form78: TForm78
  Left = 349
  Top = 259
  Width = 342
  Height = 198
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1593#1583#1610#1604' '#1575#1604#1578#1575#1585#1610#1582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 6
    Width = 324
    Height = 153
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 221
      Top = 44
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object DateTimePicker1: TDateTimePicker
      Left = 86
      Top = 40
      Width = 121
      Height = 21
      Date = 39467.582459664350000000
      Time = 39467.582459664350000000
      TabOrder = 0
    end
    object Button1: TButton
      Left = 200
      Top = 104
      Width = 75
      Height = 25
      Caption = #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 72
      Top = 104
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = moved_storge
    Left = 13
    Top = 6
  end
  object DataSource2: TDataSource
    DataSet = provider
    Left = 16
    Top = 40
  end
  object DataSource3: TDataSource
    DataSet = storge
    Left = 16
    Top = 80
  end
  object DataSource4: TDataSource
    DataSet = storge_history
    Left = 16
    Top = 112
  end
  object DataSource5: TDataSource
    DataSet = temp_storge
    Left = 216
    Top = 8
  end
  object moved_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MOVED_STORGE'
      'where NUM_IN_STORGE_HISTORY=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 43
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object moved_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'MOVED_STORGE.NAME'
      Required = True
      Size = 30
    end
    object moved_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'MOVED_STORGE.KIND'
      Required = True
      Size = 30
    end
    object moved_storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'MOVED_STORGE.NUM'
      Required = True
    end
    object moved_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'MOVED_STORGE.INPUT_DATE'
      Required = True
    end
    object moved_storgeMOVED_DATE: TDateField
      FieldName = 'MOVED_DATE'
      Origin = 'MOVED_STORGE.MOVED_DATE'
      Required = True
    end
    object moved_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'MOVED_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object moved_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'MOVED_STORGE.QUANTITY'
      Required = True
    end
    object moved_storgeNUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'MOVED_STORGE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
    object moved_storgePLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'MOVED_STORGE.PLACE'
      Required = True
      Size = 30
    end
    object moved_storgeMOVED_NUM: TIntegerField
      FieldName = 'MOVED_NUM'
      Origin = 'MOVED_STORGE.MOVED_NUM'
      Required = True
    end
  end
  object provider: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROVIDER'
      'where NUM_IN_HISTORY_STORGE=:var1')
    UpdateObject = IBUpdateSQL2
    Left = 48
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object providerPROVIDER_NAME: TIBStringField
      FieldName = 'PROVIDER_NAME'
      Origin = 'PROVIDER.PROVIDER_NAME'
      Required = True
      Size = 30
    end
    object providerTOTAL_BILL: TIBBCDField
      FieldName = 'TOTAL_BILL'
      Origin = 'PROVIDER.TOTAL_BILL'
      Required = True
      Precision = 9
      Size = 3
    end
    object providerPAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'PROVIDER.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object providerREMAINING: TIBBCDField
      FieldName = 'REMAINING'
      Origin = 'PROVIDER.REMAINING'
      Required = True
      Precision = 9
      Size = 3
    end
    object providerNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'PROVIDER.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object providerINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PROVIDER.INPUT_DATE'
      Required = True
    end
    object providerDOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Origin = 'PROVIDER.DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object providerCHANGE: TIBBCDField
      FieldName = 'CHANGE'
      Origin = 'PROVIDER.CHANGE'
      Required = True
      Precision = 9
      Size = 3
    end
    object providerREMAINING_DOLLAR: TIBBCDField
      FieldName = 'REMAINING_DOLLAR'
      Origin = 'PROVIDER.REMAINING_DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object providerTOTAL_DOLLAR: TIBBCDField
      FieldName = 'TOTAL_DOLLAR'
      Origin = 'PROVIDER.TOTAL_DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE'
      'where NUM_IN_HISTORY_STORGE=:var1')
    UpdateObject = IBUpdateSQL3
    Left = 48
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object storge_history: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE_HISTORY'
      'where NUM=:var1')
    UpdateObject = IBUpdateSQL4
    Left = 48
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object storge_historyNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE_HISTORY.NAME'
      Required = True
      Size = 30
    end
    object storge_historyKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE_HISTORY.KIND'
      Required = True
      Size = 30
    end
    object storge_historyNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE_HISTORY.NUM'
      Required = True
    end
    object storge_historyINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE_HISTORY.INPUT_DATE'
      Required = True
    end
    object storge_historyBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE_HISTORY.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object storge_historyQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE_HISTORY.QUANTITY'
      Required = True
    end
    object storge_historyCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE_HISTORY.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object storge_historyTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object storge_historyDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.DOLLAR_PRICE'
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
    Left = 72
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
    Left = 80
    Top = 40
  end
  object IBUpdateSQL3: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  INPUT_DATE,'
      '  BUY_PRICE,'
      '  QUANTITY,'
      '  NUM_IN_HISTORY_STORGE,'
      '  SOLD,'
      '  DOLLAR_PRICE,'
      '  TOTAL_DOLLAR_PRICE,'
      '  CHANGE_PRICE'
      'from STORGE '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  QUANTITY = :QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE and'
      '  SOLD = :SOLD and'
      '  DOLLAR_PRICE = :DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :CHANGE_PRICE')
    ModifySQL.Strings = (
      'update STORGE'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  QUANTITY = :QUANTITY,'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE,'
      '  SOLD = :SOLD,'
      '  DOLLAR_PRICE = :DOLLAR_PRICE,'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE,'
      '  CHANGE_PRICE = :CHANGE_PRICE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  SOLD = :OLD_SOLD and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE')
    InsertSQL.Strings = (
      'insert into STORGE'
      
        '  (NAME, KIND, NUM, INPUT_DATE, BUY_PRICE, QUANTITY, NUM_IN_HIST' +
        'ORY_STORGE, '
      '   SOLD, DOLLAR_PRICE, TOTAL_DOLLAR_PRICE, CHANGE_PRICE)'
      'values'
      
        '  (:NAME, :KIND, :NUM, :INPUT_DATE, :BUY_PRICE, :QUANTITY, :NUM_' +
        'IN_HISTORY_STORGE, '
      '   :SOLD, :DOLLAR_PRICE, :TOTAL_DOLLAR_PRICE, :CHANGE_PRICE)')
    DeleteSQL.Strings = (
      'delete from STORGE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  SOLD = :OLD_SOLD and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE')
    Left = 80
    Top = 80
  end
  object IBUpdateSQL4: TIBUpdateSQL
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
    Left = 80
    Top = 112
  end
  object temp_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TEMP_STORGE'
      'where NUM_IN_HISTORY_STORGE=:var1')
    UpdateObject = IBUpdateSQL5
    Left = 248
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object temp_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TEMP_STORGE.NAME'
      Required = True
      Size = 30
    end
    object temp_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TEMP_STORGE.KIND'
      Required = True
      Size = 30
    end
    object temp_storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TEMP_STORGE.NUM'
      Required = True
    end
    object temp_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'TEMP_STORGE.INPUT_DATE'
      Required = True
    end
    object temp_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'TEMP_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object temp_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'TEMP_STORGE.QUANTITY'
      Required = True
    end
    object temp_storgeNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'TEMP_STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object temp_storgeSOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'TEMP_STORGE.SOLD'
    end
    object temp_storgeDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object temp_storgeTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object temp_storgeCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'TEMP_STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL5: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  INPUT_DATE,'
      '  BUY_PRICE,'
      '  QUANTITY,'
      '  NUM_IN_HISTORY_STORGE,'
      '  SOLD,'
      '  DOLLAR_PRICE,'
      '  TOTAL_DOLLAR_PRICE,'
      '  CHANGE_PRICE'
      'from TEMP_STORGE '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  QUANTITY = :QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE and'
      '  SOLD = :SOLD and'
      '  DOLLAR_PRICE = :DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :CHANGE_PRICE')
    ModifySQL.Strings = (
      'update TEMP_STORGE'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  QUANTITY = :QUANTITY,'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE,'
      '  SOLD = :SOLD,'
      '  DOLLAR_PRICE = :DOLLAR_PRICE,'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE,'
      '  CHANGE_PRICE = :CHANGE_PRICE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  SOLD = :OLD_SOLD and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE')
    InsertSQL.Strings = (
      'insert into TEMP_STORGE'
      
        '  (NAME, KIND, NUM, INPUT_DATE, BUY_PRICE, QUANTITY, NUM_IN_HIST' +
        'ORY_STORGE, '
      '   SOLD, DOLLAR_PRICE, TOTAL_DOLLAR_PRICE, CHANGE_PRICE)'
      'values'
      
        '  (:NAME, :KIND, :NUM, :INPUT_DATE, :BUY_PRICE, :QUANTITY, :NUM_' +
        'IN_HISTORY_STORGE, '
      '   :SOLD, :DOLLAR_PRICE, :TOTAL_DOLLAR_PRICE, :CHANGE_PRICE)')
    DeleteSQL.Strings = (
      'delete from TEMP_STORGE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  SOLD = :OLD_SOLD and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE')
    Left = 288
    Top = 8
  end
end
