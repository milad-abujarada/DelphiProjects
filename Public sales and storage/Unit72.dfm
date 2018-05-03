object Form72: TForm72
  Left = 170
  Top = 73
  Width = 769
  Height = 661
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1573#1604#1594#1575#1569' '#1601#1575#1578#1608#1585#1607
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
    Top = 8
    Width = 745
    Height = 616
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 411
      Top = 25
      Width = 116
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1607' '#1575#1604#1605#1585#1575#1583' '#1573#1604#1594#1575#1574#1607#1575
    end
    object Label2: TLabel
      Left = 681
      Top = 504
      Width = 23
      Height = 13
      Caption = #1575#1604#1573#1587#1605
    end
    object Label3: TLabel
      Left = 489
      Top = 505
      Width = 38
      Height = 13
      Caption = #1575#1604#1573#1580#1605#1575#1604#1609
    end
    object Label4: TLabel
      Left = 314
      Top = 507
      Width = 35
      Height = 13
      Caption = #1575#1604#1605#1583#1601#1608#1593
    end
    object Label5: TLabel
      Left = 136
      Top = 505
      Width = 34
      Height = 13
      Caption = #1575#1604#1605#1578#1576#1602#1610
    end
    object Label6: TLabel
      Left = 437
      Top = 558
      Width = 127
      Height = 13
      Caption = #1575#1604#1605#1576#1604#1594' '#1575#1604#1584#1610' '#1610#1580#1576' '#1573#1585#1580#1575#1593#1607' '#1604#1600#1600#1600#1600#1600
    end
    object Label7: TLabel
      Left = 400
      Top = 558
      Width = 32
      Height = 13
      Caption = 'Label7'
    end
    object Edit1: TEdit
      Left = 285
      Top = 22
      Width = 122
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Button1: TButton
      Left = 436
      Top = 587
      Width = 75
      Height = 25
      Caption = #1573#1604#1594#1575#1569
      Enabled = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 64
      Width = 705
      Height = 433
      DataSource = DataSource1
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          FieldName = 'SALE_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL_PIECE_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1573#1580#1605#1575#1604#1609' '#1587#1593#1585' '#1575#1604#1603#1605#1610#1607
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALE_NUM'
          Visible = False
        end>
    end
    object Edit2: TEdit
      Left = 544
      Top = 504
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 360
      Top = 504
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 184
      Top = 504
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 8
      Top = 504
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Button2: TButton
      Left = 227
      Top = 587
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 7
      OnClick = Button2Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 16
      Top = 544
      Width = 97
      Height = 21
      Date = 39386.855858287040000000
      Time = 39386.855858287040000000
      TabOrder = 8
      Visible = False
    end
    object Edit6: TEdit
      Left = 184
      Top = 552
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 9
    end
  end
  object sales_data: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SALES where SALE_NUM=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 120
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object sales_dataNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SALES.NAME'
      Required = True
      Size = 30
    end
    object sales_dataKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'SALES.KIND'
      Required = True
      Size = 30
    end
    object sales_dataQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'SALES.QUANTITY'
      Required = True
    end
    object sales_dataSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'SALES.SALE_NUM'
      Required = True
    end
    object sales_dataSALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'SALES.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object sales_dataNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'SALES.NUM'
      Required = True
    end
    object sales_dataTOTAL_PIECE_PRICE: TIBBCDField
      FieldName = 'TOTAL_PIECE_PRICE'
      Origin = 'SALES.TOTAL_PIECE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object paied: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID'
      'where SALE_NUM=:var1')
    UpdateObject = IBUpdateSQL2
    Left = 120
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object paiedNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAID.NUM'
      Required = True
    end
    object paiedPAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object paiedBILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object paiedPAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object paiedTOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object paiedSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object paiedINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object paiedCUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object paiedREMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object profitable: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROFITABLE'
      'where (SALE_NUM=:var1) and (KIND=:var2) and(NAME=:var3)')
    UpdateObject = IBUpdateSQL3
    Left = 120
    Top = 72
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
    object profitableSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PROFITABLE.SALE_NUM'
      Required = True
    end
    object profitableBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'PROFITABLE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object profitableSALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'PROFITABLE.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object profitableGAIN: TIBBCDField
      FieldName = 'GAIN'
      Origin = 'PROFITABLE.GAIN'
      Required = True
      Precision = 9
      Size = 3
    end
    object profitableNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PROFITABLE.NUM'
      Required = True
    end
    object profitableKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'PROFITABLE.KIND'
      Required = True
      Size = 30
    end
    object profitableNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROFITABLE.NAME'
      Required = True
      Size = 30
    end
    object profitableQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'PROFITABLE.QUANTITY'
      Required = True
    end
    object profitableNUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'PROFITABLE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
  end
  object storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE'
      
        'where (kind=:var1) and (name=:var2)and(NUM_IN_HISTORY_STORGE=:va' +
        'r3) and(BUY_PRICE=:var4)')
    UpdateObject = IBUpdateSQL4
    Left = 120
    Top = 104
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
      end
      item
        DataType = ftFloat
        Name = 'var4'
        ParamType = ptInputOutput
      end>
    object storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE.NAME'
      Required = True
      Size = 30
    end
    object storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE.KIND'
      Required = True
      Size = 30
    end
    object storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE.NUM'
      Required = True
    end
    object storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE.INPUT_DATE'
      Required = True
    end
    object storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE.QUANTITY'
      Required = True
    end
    object storgeNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object storgeSOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'STORGE.SOLD'
    end
    object storgeDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object storgeTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object storgeCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  QUANTITY,'
      '  SALE_NUM,'
      '  SALE_PRICE,'
      '  NUM,'
      '  TOTAL_PIECE_PRICE'
      'from SALES '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  QUANTITY = :QUANTITY and'
      '  SALE_NUM = :SALE_NUM and'
      '  SALE_PRICE = :SALE_PRICE and'
      '  NUM = :NUM and'
      '  TOTAL_PIECE_PRICE = :TOTAL_PIECE_PRICE')
    ModifySQL.Strings = (
      'update SALES'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  QUANTITY = :QUANTITY,'
      '  SALE_NUM = :SALE_NUM,'
      '  SALE_PRICE = :SALE_PRICE,'
      '  NUM = :NUM,'
      '  TOTAL_PIECE_PRICE = :TOTAL_PIECE_PRICE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  NUM = :OLD_NUM and'
      '  TOTAL_PIECE_PRICE = :OLD_TOTAL_PIECE_PRICE')
    InsertSQL.Strings = (
      'insert into SALES'
      
        '  (NAME, KIND, QUANTITY, SALE_NUM, SALE_PRICE, NUM, TOTAL_PIECE_' +
        'PRICE)'
      'values'
      
        '  (:NAME, :KIND, :QUANTITY, :SALE_NUM, :SALE_PRICE, :NUM, :TOTAL' +
        '_PIECE_PRICE)')
    DeleteSQL.Strings = (
      'delete from SALES'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  NUM = :OLD_NUM and'
      '  TOTAL_PIECE_PRICE = :OLD_TOTAL_PIECE_PRICE')
    Left = 152
    Top = 8
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NUM,'
      '  PAID_TYPE,'
      '  BILL_NUM,'
      '  PAID_VALUE,'
      '  TOTAL_BILL_PRICE,'
      '  SALE_NUM,'
      '  INPUT_DATE,'
      '  CUSTOMER_NAME,'
      '  REMAINING_VALUE'
      'from PAID '
      'where'
      '  NUM = :NUM and'
      '  PAID_TYPE = :PAID_TYPE and'
      '  BILL_NUM = :BILL_NUM and'
      '  PAID_VALUE = :PAID_VALUE and'
      '  TOTAL_BILL_PRICE = :TOTAL_BILL_PRICE and'
      '  SALE_NUM = :SALE_NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  CUSTOMER_NAME = :CUSTOMER_NAME and'
      '  REMAINING_VALUE = :REMAINING_VALUE')
    ModifySQL.Strings = (
      'update PAID'
      'set'
      '  NUM = :NUM,'
      '  PAID_TYPE = :PAID_TYPE,'
      '  BILL_NUM = :BILL_NUM,'
      '  PAID_VALUE = :PAID_VALUE,'
      '  TOTAL_BILL_PRICE = :TOTAL_BILL_PRICE,'
      '  SALE_NUM = :SALE_NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  CUSTOMER_NAME = :CUSTOMER_NAME,'
      '  REMAINING_VALUE = :REMAINING_VALUE'
      'where'
      '  NUM = :OLD_NUM and'
      '  PAID_TYPE = :OLD_PAID_TYPE and'
      '  BILL_NUM = :OLD_BILL_NUM and'
      '  PAID_VALUE = :OLD_PAID_VALUE and'
      '  TOTAL_BILL_PRICE = :OLD_TOTAL_BILL_PRICE and'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  CUSTOMER_NAME = :OLD_CUSTOMER_NAME and'
      '  REMAINING_VALUE = :OLD_REMAINING_VALUE')
    InsertSQL.Strings = (
      'insert into PAID'
      
        '  (NUM, PAID_TYPE, BILL_NUM, PAID_VALUE, TOTAL_BILL_PRICE, SALE_' +
        'NUM, INPUT_DATE, '
      '   CUSTOMER_NAME, REMAINING_VALUE)'
      'values'
      
        '  (:NUM, :PAID_TYPE, :BILL_NUM, :PAID_VALUE, :TOTAL_BILL_PRICE, ' +
        ':SALE_NUM, '
      '   :INPUT_DATE, :CUSTOMER_NAME, :REMAINING_VALUE)')
    DeleteSQL.Strings = (
      'delete from PAID'
      'where'
      '  NUM = :OLD_NUM and'
      '  PAID_TYPE = :OLD_PAID_TYPE and'
      '  BILL_NUM = :OLD_BILL_NUM and'
      '  PAID_VALUE = :OLD_PAID_VALUE and'
      '  TOTAL_BILL_PRICE = :OLD_TOTAL_BILL_PRICE and'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  CUSTOMER_NAME = :OLD_CUSTOMER_NAME and'
      '  REMAINING_VALUE = :OLD_REMAINING_VALUE')
    Left = 152
    Top = 40
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
    Left = 152
    Top = 72
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'STORGE'
    Left = 632
    Top = 8
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
  object DataSource1: TDataSource
    DataSet = sales_data
    Left = 96
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = paied
    Left = 96
    Top = 40
  end
  object DataSource3: TDataSource
    DataSet = profitable
    Left = 96
    Top = 72
  end
  object DataSource4: TDataSource
    DataSet = storge
    Left = 96
    Top = 104
  end
  object DataSource5: TDataSource
    DataSet = IBTable1
    Left = 608
    Top = 8
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
    Left = 152
    Top = 104
  end
  object DataSource6: TDataSource
    DataSet = num
    Left = 608
    Top = 40
  end
  object num: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from STORGE')
    Left = 632
    Top = 40
    object numMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource7: TDataSource
    DataSet = sum_all
    Left = 608
    Top = 72
  end
  object sum_all: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(PAID_VALUE),sum( TOTAL_BILL_PRICE) from PAID'
      'where (CUSTOMER_NAME=:var1)')
    Left = 632
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object sum_allSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
    object sum_allSUM1: TIBBCDField
      FieldName = 'SUM1'
      Precision = 18
      Size = 3
    end
  end
  object sum_paied_debts: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(AMOUNT) from PAIED_DEBTS'
      'where NAME=:var1')
    Left = 632
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object sum_paied_debtsSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource8: TDataSource
    DataSet = sum_paied_debts
    Left = 608
    Top = 104
  end
  object DataSource9: TDataSource
    DataSet = debts_names
    Left = 96
    Top = 136
  end
  object debts_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from DEBTS_NAMES'
      'where name=:var1')
    UpdateObject = IBUpdateSQL5
    Left = 128
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object debts_namesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DEBTS_NAMES.NAME'
      Required = True
    end
  end
  object IBUpdateSQL5: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME'
      'from DEBTS_NAMES '
      'where'
      '  NAME = :NAME')
    ModifySQL.Strings = (
      'update DEBTS_NAMES'
      'set'
      '  NAME = :NAME'
      'where'
      '  NAME = :OLD_NAME')
    InsertSQL.Strings = (
      'insert into DEBTS_NAMES'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from DEBTS_NAMES'
      'where'
      '  NAME = :OLD_NAME')
    Left = 160
    Top = 136
  end
  object paied_debts: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAIED_DEBTS'
      'where name=:var1'
      'order by input_date desc')
    UpdateObject = IBUpdateSQL6
    Left = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object paied_debtsNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAIED_DEBTS.NAME'
      Required = True
    end
    object paied_debtsAMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'PAIED_DEBTS.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object paied_debtsINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAIED_DEBTS.INPUT_DATE'
      Required = True
    end
  end
  object DataSource10: TDataSource
    DataSet = paied_debts
    Left = 248
  end
  object IBUpdateSQL6: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  AMOUNT,'
      '  INPUT_DATE'
      'from PAIED_DEBTS '
      'where'
      '  NAME = :NAME and'
      '  AMOUNT = :AMOUNT and'
      '  INPUT_DATE = :INPUT_DATE')
    ModifySQL.Strings = (
      'update PAIED_DEBTS'
      'set'
      '  NAME = :NAME,'
      '  AMOUNT = :AMOUNT,'
      '  INPUT_DATE = :INPUT_DATE'
      'where'
      '  NAME = :OLD_NAME and'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    InsertSQL.Strings = (
      'insert into PAIED_DEBTS'
      '  (NAME, AMOUNT, INPUT_DATE)'
      'values'
      '  (:NAME, :AMOUNT, :INPUT_DATE)')
    DeleteSQL.Strings = (
      'delete from PAIED_DEBTS'
      'where'
      '  NAME = :OLD_NAME and'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    Left = 312
  end
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAIED_DEBTS'
    Left = 280
    Top = 32
    object IBTable2NAME: TIBStringField
      FieldName = 'NAME'
    end
    object IBTable2AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Precision = 9
      Size = 3
    end
    object IBTable2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
  end
  object DataSource11: TDataSource
    DataSet = IBTable2
    Left = 248
    Top = 32
  end
  object DataSource12: TDataSource
    DataSet = data_from_storge_history
    Left = 96
    Top = 168
  end
  object data_from_storge_history: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE_HISTORY'
      'where '
      '(NUM=:var1)and(KIND=:var2)and(NAME=:var3)')
    Left = 128
    Top = 168
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
    object data_from_storge_historyNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE_HISTORY.NAME'
      Required = True
      Size = 30
    end
    object data_from_storge_historyKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE_HISTORY.KIND'
      Required = True
      Size = 30
    end
    object data_from_storge_historyNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE_HISTORY.NUM'
      Required = True
    end
    object data_from_storge_historyINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE_HISTORY.INPUT_DATE'
      Required = True
    end
    object data_from_storge_historyBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE_HISTORY.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object data_from_storge_historyQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE_HISTORY.QUANTITY'
      Required = True
    end
    object data_from_storge_historyCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE_HISTORY.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object data_from_storge_historyTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object data_from_storge_historyDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
  end
end
