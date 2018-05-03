object Form32: TForm32
  Left = 141
  Top = 31
  Width = 825
  Height = 648
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1593#1583#1610#1604' '#1601#1609' '#1587#1593#1585' '#1588#1585#1575#1569' '#1602#1591#1593#1577
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
    Left = 8
    Top = 8
    Width = 801
    Height = 601
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 484
      Top = 21
      Width = 43
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1600#1600#1600#1600#1582
    end
    object Label2: TLabel
      Left = 771
      Top = 504
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label3: TLabel
      Left = 628
      Top = 504
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label4: TLabel
      Left = 478
      Top = 504
      Width = 27
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577
    end
    object Label5: TLabel
      Left = 302
      Top = 498
      Width = 55
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569' '
    end
    object Label6: TLabel
      Left = 122
      Top = 496
      Width = 55
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569' '
    end
    object Label7: TLabel
      Left = 139
      Top = 512
      Width = 27
      Height = 13
      Caption = #1575#1604#1580#1583#1610#1583
    end
    object Label8: TLabel
      Left = 317
      Top = 513
      Width = 31
      Height = 13
      Caption = #1575#1604#1587#1575#1576#1602
    end
    object DateTimePicker1: TDateTimePicker
      Left = 320
      Top = 16
      Width = 154
      Height = 21
      Date = 39243.362409930550000000
      Time = 39243.362409930550000000
      TabOrder = 0
    end
    object Button1: TButton
      Left = 376
      Top = 56
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 652
      Top = 496
      Width = 119
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 507
      Top = 496
      Width = 119
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 360
      Top = 496
      Width = 119
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 184
      Top = 498
      Width = 119
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object Button2: TButton
      Left = 481
      Top = 566
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 238
      Top = 566
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit5: TEdit
      Left = 4
      Top = 497
      Width = 118
      Height = 21
      TabOrder = 8
    end
  end
  object DBGrid1: TDBGrid
    Left = 126
    Top = 96
    Width = 576
    Height = 376
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'KIND'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1589#1606#1601
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NAME'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1606#1608#1593
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QUANTITY'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1603#1605#1610#1577
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BUY_PRICE'
        Title.Alignment = taCenter
        Title.Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'INPUT_DATE'
        Visible = False
      end>
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from STORGE_HISTORY'
      'where input_date=:var1')
    Left = 56
    ParamData = <
      item
        DataType = ftDate
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE_HISTORY.NAME'
      Required = True
      Size = 30
    end
    object IBQuery1KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE_HISTORY.KIND'
      Required = True
      Size = 30
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE_HISTORY.NUM'
      Required = True
    end
    object IBQuery1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE_HISTORY.INPUT_DATE'
      Required = True
    end
    object IBQuery1BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE_HISTORY.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE_HISTORY.QUANTITY'
      Required = True
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
      'and (buy_price=:var5) and (input_date=:var6)')
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
        DataType = ftInteger
        Name = 'var4'
        ParamType = ptInputOutput
      end
      item
        DataType = ftFloat
        Name = 'var5'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var6'
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
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 24
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 24
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
    Top = 64
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE'
      
        'where (NUM_IN_HISTORY_STORGE=:var1) and (kind=:var2) and (name=:' +
        'var3) and (buy_price=:var4)')
    UpdateObject = IBUpdateSQL2
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
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROFITABLE'
      
        'where (NUM_IN_STORGE_HISTORY=:var1) and (kind=:var2) and (name=:' +
        'var3) and (buy_price=:var4)')
    UpdateObject = IBUpdateSQL3
    Left = 56
    Top = 96
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
    object IBQuery4SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PROFITABLE.SALE_NUM'
      Required = True
    end
    object IBQuery4BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'PROFITABLE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery4SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'PROFITABLE.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery4GAIN: TIBBCDField
      FieldName = 'GAIN'
      Origin = 'PROFITABLE.GAIN'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery4NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PROFITABLE.NUM'
      Required = True
    end
    object IBQuery4KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'PROFITABLE.KIND'
      Required = True
      Size = 30
    end
    object IBQuery4NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROFITABLE.NAME'
      Required = True
      Size = 30
    end
    object IBQuery4QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'PROFITABLE.QUANTITY'
      Required = True
    end
    object IBQuery4NUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'PROFITABLE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
  end
  object IBUpdateSQL3: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SALE_NUM,'
      '  BUY_PRICE,'
      '  SALE_PRICE,'
      '  GAIN,'
      '  NUM,'
      '  KIND,'
      '  NAME,'
      '  QUANTITY,'
      '  NUM_IN_STORGE_HISTORY'
      'from PROFITABLE '
      'where'
      '  SALE_NUM = :SALE_NUM and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  SALE_PRICE = :SALE_PRICE and'
      '  GAIN = :GAIN and'
      '  NUM = :NUM and'
      '  KIND = :KIND and'
      '  NAME = :NAME and'
      '  QUANTITY = :QUANTITY and'
      '  NUM_IN_STORGE_HISTORY = :NUM_IN_STORGE_HISTORY')
    ModifySQL.Strings = (
      'update PROFITABLE'
      'set'
      '  SALE_NUM = :SALE_NUM,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  SALE_PRICE = :SALE_PRICE,'
      '  GAIN = :GAIN,'
      '  NUM = :NUM,'
      '  KIND = :KIND,'
      '  NAME = :NAME,'
      '  QUANTITY = :QUANTITY,'
      '  NUM_IN_STORGE_HISTORY = :NUM_IN_STORGE_HISTORY'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  GAIN = :OLD_GAIN and'
      '  NUM = :OLD_NUM and'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_STORGE_HISTORY = :OLD_NUM_IN_STORGE_HISTORY')
    InsertSQL.Strings = (
      'insert into PROFITABLE'
      
        '  (SALE_NUM, BUY_PRICE, SALE_PRICE, GAIN, NUM, KIND, NAME, QUANT' +
        'ITY, NUM_IN_STORGE_HISTORY)'
      'values'
      
        '  (:SALE_NUM, :BUY_PRICE, :SALE_PRICE, :GAIN, :NUM, :KIND, :NAME' +
        ', :QUANTITY, '
      '   :NUM_IN_STORGE_HISTORY)')
    DeleteSQL.Strings = (
      'delete from PROFITABLE'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  GAIN = :OLD_GAIN and'
      '  NUM = :OLD_NUM and'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_STORGE_HISTORY = :OLD_NUM_IN_STORGE_HISTORY')
    Left = 88
    Top = 96
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 24
    Top = 64
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 24
    Top = 96
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Left = 24
    Top = 128
  end
  object DataSource6: TDataSource
    DataSet = IBQuery6
    Left = 24
    Top = 160
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MOVED_STORGE'
      
        'where (NUM_IN_STORGE_HISTORY=:var1) and (kind=:var2) and (name=:' +
        'var3) and (buy_price=:var4)')
    UpdateObject = IBUpdateSQL4
    Left = 56
    Top = 128
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
    object IBQuery5NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'MOVED_STORGE.NAME'
      Required = True
      Size = 30
    end
    object IBQuery5KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'MOVED_STORGE.KIND'
      Required = True
      Size = 30
    end
    object IBQuery5NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'MOVED_STORGE.NUM'
      Required = True
    end
    object IBQuery5INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'MOVED_STORGE.INPUT_DATE'
      Required = True
    end
    object IBQuery5MOVED_DATE: TDateField
      FieldName = 'MOVED_DATE'
      Origin = 'MOVED_STORGE.MOVED_DATE'
      Required = True
    end
    object IBQuery5BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'MOVED_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery5QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'MOVED_STORGE.QUANTITY'
      Required = True
    end
    object IBQuery5NUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'MOVED_STORGE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
    object IBQuery5PLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'MOVED_STORGE.PLACE'
      Required = True
      Size = 30
    end
    object IBQuery5MOVED_NUM: TIntegerField
      FieldName = 'MOVED_NUM'
      Origin = 'MOVED_STORGE.MOVED_NUM'
      Required = True
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
        'var3) and (buy_price=:var4)')
    UpdateObject = IBUpdateSQL5
    Left = 56
    Top = 160
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
  object IBUpdateSQL4: TIBUpdateSQL
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
    Left = 88
    Top = 128
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
    Top = 160
  end
  object DataSource7: TDataSource
    DataSet = IBQuery7
    Left = 24
    Top = 192
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
    Top = 192
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
    Top = 192
  end
  object DataSource8: TDataSource
    DataSet = IBQuery8
    Left = 24
    Top = 224
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
    Top = 224
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
    Top = 256
    object IBTable3NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
  end
  object DataSource9: TDataSource
    DataSet = IBTable3
    Left = 20
    Top = 256
  end
  object DataSource10: TDataSource
    DataSet = IBQuery9
    Left = 24
    Top = 288
  end
  object IBQuery9: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAIED_FROM_MOVED_STORGE'
      
        'where (NUM_IN_STORGE_HISTORY=:var1)and(KIND=:var2)and(NAME=:var3' +
        ')and(BUY_PRICE=:var4)')
    UpdateObject = IBUpdateSQL7
    Left = 56
    Top = 288
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
    object IBQuery9KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'PAIED_FROM_MOVED_STORGE.KIND'
      Required = True
      Size = 30
    end
    object IBQuery9NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAIED_FROM_MOVED_STORGE.NAME'
      Required = True
      Size = 30
    end
    object IBQuery9QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'PAIED_FROM_MOVED_STORGE.QUANTITY'
      Required = True
    end
    object IBQuery9BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'PAIED_FROM_MOVED_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery9SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'PAIED_FROM_MOVED_STORGE.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery9INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAIED_FROM_MOVED_STORGE.INPUT_DATE'
      Required = True
    end
    object IBQuery9PLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'PAIED_FROM_MOVED_STORGE.PLACE'
      Required = True
    end
    object IBQuery9NUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'PAIED_FROM_MOVED_STORGE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
  end
  object IBUpdateSQL7: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  KIND,'
      '  NAME,'
      '  QUANTITY,'
      '  BUY_PRICE,'
      '  SALE_PRICE,'
      '  INPUT_DATE,'
      '  PLACE,'
      '  NUM_IN_STORGE_HISTORY'
      'from PAIED_FROM_MOVED_STORGE '
      'where'
      '  KIND = :KIND and'
      '  NAME = :NAME and'
      '  QUANTITY = :QUANTITY and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  SALE_PRICE = :SALE_PRICE and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  PLACE = :PLACE and'
      '  NUM_IN_STORGE_HISTORY = :NUM_IN_STORGE_HISTORY')
    ModifySQL.Strings = (
      'update PAIED_FROM_MOVED_STORGE'
      'set'
      '  KIND = :KIND,'
      '  NAME = :NAME,'
      '  QUANTITY = :QUANTITY,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  SALE_PRICE = :SALE_PRICE,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  PLACE = :PLACE,'
      '  NUM_IN_STORGE_HISTORY = :NUM_IN_STORGE_HISTORY'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  PLACE = :OLD_PLACE and'
      '  NUM_IN_STORGE_HISTORY = :OLD_NUM_IN_STORGE_HISTORY')
    InsertSQL.Strings = (
      'insert into PAIED_FROM_MOVED_STORGE'
      
        '  (KIND, NAME, QUANTITY, BUY_PRICE, SALE_PRICE, INPUT_DATE, PLAC' +
        'E, NUM_IN_STORGE_HISTORY)'
      'values'
      
        '  (:KIND, :NAME, :QUANTITY, :BUY_PRICE, :SALE_PRICE, :INPUT_DATE' +
        ', :PLACE, '
      '   :NUM_IN_STORGE_HISTORY)')
    DeleteSQL.Strings = (
      'delete from PAIED_FROM_MOVED_STORGE'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  PLACE = :OLD_PLACE and'
      '  NUM_IN_STORGE_HISTORY = :OLD_NUM_IN_STORGE_HISTORY')
    Left = 88
    Top = 288
  end
end
