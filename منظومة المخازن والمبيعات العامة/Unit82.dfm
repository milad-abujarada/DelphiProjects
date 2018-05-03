object Form82: TForm82
  Left = 326
  Top = 195
  Width = 441
  Height = 250
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1573#1593#1575#1583#1577' '#1580#1605#1593' '#1601#1575#1578#1608#1585#1607
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
    Width = 417
    Height = 201
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 294
      Top = 18
      Width = 55
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1607
    end
    object Label2: TLabel
      Left = 141
      Top = 77
      Width = 69
      Height = 13
      Caption = #1605#1580#1605#1608#1593' '#1575#1604#1601#1575#1578#1608#1585#1607
    end
    object Label3: TLabel
      Left = 365
      Top = 118
      Width = 35
      Height = 13
      Caption = #1575#1604#1605#1583#1601#1608#1593
    end
    object Label4: TLabel
      Left = 148
      Top = 119
      Width = 34
      Height = 13
      Caption = #1575#1604#1605#1578#1576#1602#1610
    end
    object Label5: TLabel
      Left = 370
      Top = 80
      Width = 23
      Height = 13
      Caption = #1575#1604#1575#1587#1605
    end
    object Edit1: TEdit
      Left = 165
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Button1: TButton
      Left = 80
      Top = 12
      Width = 75
      Height = 25
      Caption = #1573#1593#1575#1583#1577' '#1575#1604#1580#1605#1593
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 240
      Top = 155
      Width = 75
      Height = 25
      Caption = #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 96
      Top = 155
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 3
      OnClick = Button3Click
    end
    object Edit2: TEdit
      Left = 17
      Top = 74
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 228
      Top = 114
      Width = 121
      Height = 21
      TabOrder = 5
      OnChange = Edit3Change
    end
    object Edit4: TEdit
      Left = 16
      Top = 114
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Edit5: TEdit
      Left = 227
      Top = 74
      Width = 121
      Height = 21
      TabOrder = 7
    end
  end
  object DataSource1: TDataSource
    DataSet = readd
  end
  object DataSource2: TDataSource
    DataSet = edit_bill
    Top = 32
  end
  object readd: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY* SALE_PRICE) from SALES'
      'where SALE_NUM=:var1')
    Left = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object readdSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object edit_bill: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID'
      'where SALE_NUM=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 32
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object edit_billNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAID.NUM'
      Required = True
    end
    object edit_billPAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object edit_billBILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object edit_billPAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_billTOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_billSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object edit_billINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object edit_billCUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object edit_billREMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
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
    Left = 64
    Top = 32
  end
  object DataSource3: TDataSource
    DataSet = IBTable1
    Top = 64
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DEBTS_NAMES'
    Left = 32
    Top = 64
  end
end
