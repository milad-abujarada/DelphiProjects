object Form80: TForm80
  Left = 316
  Top = 243
  Width = 416
  Height = 242
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1593#1583#1610#1604' '#1573#1580#1605#1575#1604#1609' '#1587#1593#1585' '#1575#1604#1583#1608#1604#1575#1585
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
    Left = 7
    Top = 7
    Width = 394
    Height = 194
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 344
      Top = 42
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label3: TLabel
      Left = 147
      Top = 41
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label5: TLabel
      Left = 327
      Top = 91
      Width = 56
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1587#1593#1585
    end
    object Label8: TLabel
      Left = 325
      Top = 106
      Width = 62
      Height = 13
      Caption = #1575#1604#1583#1608#1604#1575#1585' '#1575#1604#1587#1575#1576#1602
    end
    object Label6: TLabel
      Left = 129
      Top = 90
      Width = 56
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1587#1593#1585
    end
    object Label7: TLabel
      Left = 127
      Top = 106
      Width = 58
      Height = 13
      Caption = #1575#1604#1583#1608#1604#1575#1585' '#1575#1604#1580#1583#1610#1583
    end
    object Edit1: TEdit
      Left = 200
      Top = 36
      Width = 119
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 6
      Top = 36
      Width = 119
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 200
      Top = 92
      Width = 119
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 6
      Top = 92
      Width = 118
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 231
      Top = 153
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 94
      Top = 153
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE_HISTORY'
      
        'where  (num=:var1) and (kind=:var2) and (name=:var3) and (quanti' +
        'ty=:var4)'
      'and (TOTAL_DOLLAR_PRICE=:var5) ')
    Left = 56
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
      end
      item
        DataType = ftInteger
        Name = 'var4'
        ParamType = ptInputOutput
      end
      item
        DataType = ftFloat
        Name = 'var5'
        ParamType = ptInputOutput
      end>
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE_HISTORY.NAME'
      Required = True
      Size = 30
    end
    object IBQuery2KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE_HISTORY.KIND'
      Required = True
      Size = 30
    end
    object IBQuery2NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE_HISTORY.NUM'
      Required = True
    end
    object IBQuery2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE_HISTORY.INPUT_DATE'
      Required = True
    end
    object IBQuery2BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE_HISTORY.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE_HISTORY.QUANTITY'
      Required = True
    end
    object IBQuery2CHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE_HISTORY.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object IBQuery2TOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBQuery2DOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE'
      
        'where (NUM_IN_HISTORY_STORGE=:var1) and (kind=:var2) and (name=:' +
        'var3) and (TOTAL_DOLLAR_PRICE=:var4)')
    UpdateObject = IBUpdateSQL2
    Left = 56
    Top = 32
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
      end
      item
        DataType = ftFloat
        Name = 'var4'
        ParamType = ptInputOutput
      end>
    object IBQuery3NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE.NAME'
      Required = True
      Size = 30
    end
    object IBQuery3KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE.KIND'
      Required = True
      Size = 30
    end
    object IBQuery3NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE.NUM'
      Required = True
    end
    object IBQuery3INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE.INPUT_DATE'
      Required = True
    end
    object IBQuery3BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery3QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE.QUANTITY'
      Required = True
    end
    object IBQuery3NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object IBQuery3SOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'STORGE.SOLD'
    end
    object IBQuery3DOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBQuery3TOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBQuery3CHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBQuery6: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TEMP_STORGE'
      
        'where (NUM_IN_HISTORY_STORGE=:var1) and (kind=:var2) and (name=:' +
        'var3) and (TOTAL_DOLLAR_PRICE=:var4)')
    UpdateObject = IBUpdateSQL5
    Left = 56
    Top = 64
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
      end
      item
        DataType = ftFloat
        Name = 'var4'
        ParamType = ptInputOutput
      end>
    object IBQuery6NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TEMP_STORGE.NAME'
      Required = True
      Size = 30
    end
    object IBQuery6KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TEMP_STORGE.KIND'
      Required = True
      Size = 30
    end
    object IBQuery6NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TEMP_STORGE.NUM'
      Required = True
    end
    object IBQuery6INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'TEMP_STORGE.INPUT_DATE'
      Required = True
    end
    object IBQuery6BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'TEMP_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery6QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'TEMP_STORGE.QUANTITY'
      Required = True
    end
    object IBQuery6NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'TEMP_STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object IBQuery6SOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'TEMP_STORGE.SOLD'
    end
    object IBQuery6DOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBQuery6TOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBQuery6CHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'TEMP_STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBQuery7: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROVIDER'
      'where NUM_IN_HISTORY_STORGE=:var1')
    UpdateObject = IBUpdateSQL6
    Left = 56
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery7PROVIDER_NAME: TIBStringField
      FieldName = 'PROVIDER_NAME'
      Origin = 'PROVIDER.PROVIDER_NAME'
      Required = True
      Size = 30
    end
    object IBQuery7TOTAL_BILL: TIBBCDField
      FieldName = 'TOTAL_BILL'
      Origin = 'PROVIDER.TOTAL_BILL'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery7PAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'PROVIDER.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery7REMAINING: TIBBCDField
      FieldName = 'REMAINING'
      Origin = 'PROVIDER.REMAINING'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery7NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'PROVIDER.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object IBQuery7INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PROVIDER.INPUT_DATE'
      Required = True
    end
    object IBQuery7DOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Origin = 'PROVIDER.DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery7CHANGE: TIBBCDField
      FieldName = 'CHANGE'
      Origin = 'PROVIDER.CHANGE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery7REMAINING_DOLLAR: TIBBCDField
      FieldName = 'REMAINING_DOLLAR'
      Origin = 'PROVIDER.REMAINING_DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery7TOTAL_DOLLAR: TIBBCDField
      FieldName = 'TOTAL_DOLLAR'
      Origin = 'PROVIDER.TOTAL_DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object IBQuery8: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select PAY_TYPE from PROVIDES'
      'where name=:var1')
    Left = 56
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery8PAY_TYPE: TIBStringField
      FieldName = 'PAY_TYPE'
      Origin = 'PROVIDES.PAY_TYPE'
      Required = True
      Size = 10
    end
  end
  object IBTable3: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PROVIDERS_DEBTS_NAMES'
    Left = 52
    Top = 160
    object IBTable3NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
  end
  object DataSource9: TDataSource
    DataSet = IBTable3
    Left = 20
    Top = 160
  end
  object DataSource8: TDataSource
    DataSet = IBQuery8
    Left = 24
    Top = 128
  end
  object DataSource7: TDataSource
    DataSet = IBQuery7
    Left = 24
    Top = 96
  end
  object IBUpdateSQL6: TIBUpdateSQL
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
    Top = 96
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
    Left = 88
    Top = 64
  end
  object DataSource6: TDataSource
    DataSet = IBQuery6
    Left = 24
    Top = 64
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 24
    Top = 32
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  INPUT_DATE,'
      '  BUY_PRICE,'
      '  QUANTITY,'
      '  SOLD,'
      '  NUM_IN_HISTORY_STORGE'
      'from STORGE '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  QUANTITY = :QUANTITY and'
      '  SOLD = :SOLD and'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE')
    ModifySQL.Strings = (
      'update STORGE'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  QUANTITY = :QUANTITY,'
      '  SOLD = :SOLD,'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  SOLD = :OLD_SOLD and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE')
    InsertSQL.Strings = (
      'insert into STORGE'
      
        '  (NAME, KIND, NUM, INPUT_DATE, BUY_PRICE, QUANTITY, SOLD, NUM_I' +
        'N_HISTORY_STORGE)'
      'values'
      
        '  (:NAME, :KIND, :NUM, :INPUT_DATE, :BUY_PRICE, :QUANTITY, :SOLD' +
        ', :NUM_IN_HISTORY_STORGE)')
    DeleteSQL.Strings = (
      'delete from STORGE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  SOLD = :OLD_SOLD and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE')
    Left = 88
    Top = 32
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  INPUT_DATE,'
      '  BUY_PRICE,'
      '  QUANTITY'
      'from STORGE_HISTORY '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  QUANTITY = :QUANTITY')
    ModifySQL.Strings = (
      'update STORGE_HISTORY'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  QUANTITY = :QUANTITY'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY')
    InsertSQL.Strings = (
      'insert into STORGE_HISTORY'
      '  (NAME, KIND, NUM, INPUT_DATE, BUY_PRICE, QUANTITY)'
      'values'
      '  (:NAME, :KIND, :NUM, :INPUT_DATE, :BUY_PRICE, :QUANTITY)')
    DeleteSQL.Strings = (
      'delete from STORGE_HISTORY'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY')
    Left = 88
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 24
  end
end
