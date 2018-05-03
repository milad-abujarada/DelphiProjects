object Form69: TForm69
  Left = 134
  Top = 123
  Width = 814
  Height = 480
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1593#1583#1610#1604' '#1573#1587#1605' '#1589#1575#1581#1576' '#1601#1575#1578#1608#1585#1607' '
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
    Width = 793
    Height = 433
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 457
      Top = 20
      Width = 55
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
    end
    object Label2: TLabel
      Left = 589
      Top = 72
      Width = 67
      Height = 13
      Caption = #1576#1610#1575#1606#1575#1578' '#1575#1604#1601#1575#1578#1608#1585#1577
    end
    object Label3: TLabel
      Left = 427
      Top = 104
      Width = 38
      Height = 13
      Caption = #1575#1604#1573#1580#1605#1575#1604#1609
    end
    object Label4: TLabel
      Left = 277
      Top = 104
      Width = 35
      Height = 13
      Caption = #1575#1604#1605#1583#1601#1608#1593
    end
    object Label5: TLabel
      Left = 126
      Top = 104
      Width = 34
      Height = 13
      Caption = #1575#1604#1605#1578#1576#1602#1610
    end
    object Label6: TLabel
      Left = 436
      Top = 152
      Width = 23
      Height = 13
      Caption = #1575#1604#1573#1587#1605
    end
    object Label7: TLabel
      Left = 303
      Top = 271
      Width = 53
      Height = 13
      Caption = #1575#1604#1573#1587#1605' '#1575#1604#1580#1583#1610#1583
    end
    object Edit1: TEdit
      Left = 320
      Top = 16
      Width = 121
      Height = 21
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
    object DBGrid1: TDBGrid
      Left = 467
      Top = 88
      Width = 320
      Height = 337
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
          Width = 142
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
          Title.Caption = #1575#1604#1573#1580#1605#1575#1604#1609
          Visible = True
        end>
    end
    object Edit2: TEdit
      Left = 315
      Top = 100
      Width = 110
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 163
      Top = 100
      Width = 110
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 9
      Top = 99
      Width = 111
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 315
      Top = 148
      Width = 111
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Button2: TButton
      Left = 312
      Top = 384
      Width = 75
      Height = 25
      Caption = #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
      Enabled = False
      TabOrder = 7
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 128
      Top = 384
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 8
      OnClick = Button3Click
    end
    object ComboBox1: TComboBox
      Left = 159
      Top = 267
      Width = 128
      Height = 21
      Style = csDropDownList
      Enabled = False
      ItemHeight = 13
      TabOrder = 9
    end
  end
  object DataSource1: TDataSource
    DataSet = db_data
    Left = 48
    Top = 32
  end
  object DataSource2: TDataSource
    DataSet = paid_data
    Left = 48
    Top = 72
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 48
    Top = 136
  end
  object db_data: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SALES'
      'where sale_num=:var1')
    Left = 80
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object db_dataNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SALES.NAME'
      Required = True
      Size = 30
    end
    object db_dataKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'SALES.KIND'
      Required = True
      Size = 30
    end
    object db_dataQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'SALES.QUANTITY'
      Required = True
    end
    object db_dataSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'SALES.SALE_NUM'
      Required = True
    end
    object db_dataSALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'SALES.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object db_dataNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'SALES.NUM'
      Required = True
    end
    object db_dataTOTAL_PIECE_PRICE: TIBBCDField
      FieldName = 'TOTAL_PIECE_PRICE'
      Origin = 'SALES.TOTAL_PIECE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object paid_data: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID'
      'where sale_num=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 80
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object paid_dataNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAID.NUM'
      Required = True
    end
    object paid_dataPAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object paid_dataBILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object paid_dataPAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object paid_dataTOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object paid_dataSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object paid_dataINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object paid_dataCUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object paid_dataREMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
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
      'select distinct(CUS_NAME) from CUSTOMERS')
    Left = 80
    Top = 136
    object IBQuery3CUS_NAME: TIBStringField
      FieldName = 'CUS_NAME'
      Origin = 'CUSTOMERS.CUS_NAME'
      Required = True
      Size = 30
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
    Left = 112
    Top = 72
  end
end
