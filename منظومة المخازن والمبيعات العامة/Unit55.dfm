object Form55: TForm55
  Left = 207
  Top = 99
  Width = 667
  Height = 638
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1593#1583#1610#1604' '#1601#1609' '#1587#1593#1585' '#1576#1610#1593' '#1604#1601#1575#1578#1608#1585#1577
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
    Width = 641
    Height = 585
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 285
      Top = 248
      Width = 67
      Height = 13
      Caption = #1576#1610#1575#1606#1575#1578' '#1575#1604#1601#1575#1578#1608#1585#1577
    end
    object Label2: TLabel
      Left = 350
      Top = 438
      Width = 74
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593' '#1575#1604#1580#1583#1610#1583
    end
    object Label3: TLabel
      Left = 561
      Top = 440
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label4: TLabel
      Left = 567
      Top = 476
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label5: TLabel
      Left = 349
      Top = 400
      Width = 72
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1601#1575#1578#1608#1585#1577
    end
    object Label6: TLabel
      Left = 346
      Top = 475
      Width = 86
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1587#1593#1585' '#1575#1604#1603#1605#1610#1577
    end
    object Label7: TLabel
      Left = 172
      Top = 399
      Width = 24
      Height = 13
      Caption = #1575#1604#1601#1585#1602
    end
    object Label8: TLabel
      Left = 170
      Top = 439
      Width = 35
      Height = 13
      Caption = #1575#1604#1605#1583#1601#1608#1593
    end
    object Label9: TLabel
      Left = 561
      Top = 399
      Width = 23
      Height = 13
      Caption = #1575#1604#1573#1587#1605
    end
    object Label10: TLabel
      Left = 171
      Top = 471
      Width = 34
      Height = 13
      Caption = #1575#1604#1605#1578#1576#1602#1610
    end
    object Label11: TLabel
      Left = 472
      Top = 520
      Width = 118
      Height = 13
      Caption = #1575#1604#1605#1576#1604#1594' '#1575#1604#1584#1610' '#1610#1580#1576' '#1573#1585#1580#1575#1593#1607' '#1604#1600#1600
    end
    object Label12: TLabel
      Left = 467
      Top = 520
      Width = 3
      Height = 13
    end
    object RadioButton1: TRadioButton
      Left = 512
      Top = 13
      Width = 113
      Height = 17
      Caption = #1593#1585#1590' '#1576#1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 131
      Top = 13
      Width = 113
      Height = 17
      Caption = #1593#1585#1590' '#1576#1573#1587#1605' '#1575#1604#1586#1576#1608#1606
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object Edit1: TEdit
      Left = 384
      Top = 9
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = Edit1Change
    end
    object ComboBox1: TComboBox
      Left = 7
      Top = 8
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnChange = ComboBox1Change
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 33
      Width = 235
      Height = 208
      DataSource = DataSource3
      TabOrder = 4
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
          FieldName = 'SALE_NUM'
          Title.Alignment = taCenter
          Title.Caption = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
          Width = 103
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = #1605#1604#1575#1581#1592#1575#1578
          Width = 89
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 7
      Top = 264
      Width = 622
      Height = 120
      DataSource = DataSource1
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid2CellClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 183
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 190
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
          Title.Caption = #1573#1580#1605#1575#1604#1609' '#1587#1593#1585' '#1575#1604#1603#1605#1610#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUM'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SALE_NUM'
          Visible = False
        end>
    end
    object Button1: TButton
      Left = 409
      Top = 48
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      Enabled = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 186
      Top = 552
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 7
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 402
      Top = 552
      Width = 75
      Height = 25
      Caption = #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
      Enabled = False
      TabOrder = 8
      OnClick = Button3Click
    end
    object Edit2: TEdit
      Left = 435
      Top = 434
      Width = 121
      Height = 21
      TabOrder = 9
    end
    object Edit3: TEdit
      Left = 435
      Top = 468
      Width = 121
      Height = 21
      TabOrder = 10
    end
    object Edit4: TEdit
      Left = 212
      Top = 434
      Width = 121
      Height = 21
      TabOrder = 11
      OnChange = Edit4Change
    end
    object Edit5: TEdit
      Left = 211
      Top = 397
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 12
    end
    object Edit6: TEdit
      Left = 212
      Top = 466
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 13
      OnChange = Edit6Change
    end
    object Edit7: TEdit
      Left = 36
      Top = 397
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 14
      OnChange = Edit7Change
    end
    object Edit8: TEdit
      Left = 37
      Top = 432
      Width = 121
      Height = 21
      TabOrder = 15
      OnChange = Edit8Change
    end
    object Edit9: TEdit
      Left = 433
      Top = 396
      Width = 121
      Height = 21
      TabOrder = 16
    end
    object Edit10: TEdit
      Left = 37
      Top = 466
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 17
    end
    object DateTimePicker1: TDateTimePicker
      Left = 40
      Top = 504
      Width = 186
      Height = 21
      Date = 39277.821977719900000000
      Time = 39277.821977719900000000
      TabOrder = 18
      Visible = False
    end
    object Edit11: TEdit
      Left = 213
      Top = 515
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 19
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select SALE_NUM from PAID'
      'where customer_name=:var1'
      'order by sale_num')
    Left = 304
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery3SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 272
    Top = 8
  end
  object DataSource13: TDataSource
    DataSet = IBTable3
    Left = 272
    Top = 48
  end
  object IBTable3: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAIED_DEBTS'
    Left = 304
    Top = 48
    object IBTable3NAME: TIBStringField
      FieldName = 'NAME'
    end
    object IBTable3AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Precision = 9
      Size = 3
    end
    object IBTable3INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(CUSTOMER_NAME) from PAID')
    Left = 304
    Top = 80
    object IBQuery4CUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 272
    Top = 80
  end
  object DataSource5: TDataSource
    DataSet = edit_in_sales
    Left = 272
    Top = 120
  end
  object edit_in_sales: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SALES'
      
        'where (sale_num=:var1) and (num=:var2) and (quantity=:var3) and ' +
        '(kind=:var4) and (name=:var5)')
    UpdateObject = IBUpdateSQL2
    Left = 304
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftInteger
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftInteger
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
    object edit_in_salesQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'SALES.QUANTITY'
      Required = True
    end
    object edit_in_salesSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'SALES.SALE_NUM'
      Required = True
    end
    object edit_in_salesSALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'SALES.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_salesNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'SALES.NUM'
      Required = True
    end
    object edit_in_salesTOTAL_PIECE_PRICE: TIBBCDField
      FieldName = 'TOTAL_PIECE_PRICE'
      Origin = 'SALES.TOTAL_PIECE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_salesKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'SALES.KIND'
      Required = True
      Size = 100
    end
    object edit_in_salesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SALES.NAME'
      Required = True
      Size = 100
    end
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  QUANTITY,'
      '  SALE_NUM,'
      '  SALE_PRICE,'
      '  NUM,'
      '  TOTAL_PIECE_PRICE,'
      '  KIND,'
      '  NAME'
      'from SALES '
      'where'
      '  QUANTITY = :QUANTITY and'
      '  SALE_NUM = :SALE_NUM and'
      '  SALE_PRICE = :SALE_PRICE and'
      '  NUM = :NUM and'
      '  TOTAL_PIECE_PRICE = :TOTAL_PIECE_PRICE and'
      '  KIND = :KIND and'
      '  NAME = :NAME')
    ModifySQL.Strings = (
      'update SALES'
      'set'
      '  QUANTITY = :QUANTITY,'
      '  SALE_NUM = :SALE_NUM,'
      '  SALE_PRICE = :SALE_PRICE,'
      '  NUM = :NUM,'
      '  TOTAL_PIECE_PRICE = :TOTAL_PIECE_PRICE,'
      '  KIND = :KIND,'
      '  NAME = :NAME'
      'where'
      '  QUANTITY = :OLD_QUANTITY and'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  NUM = :OLD_NUM and'
      '  TOTAL_PIECE_PRICE = :OLD_TOTAL_PIECE_PRICE and'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME')
    InsertSQL.Strings = (
      'insert into SALES'
      
        '  (QUANTITY, SALE_NUM, SALE_PRICE, NUM, TOTAL_PIECE_PRICE, KIND,' +
        ' NAME)'
      'values'
      
        '  (:QUANTITY, :SALE_NUM, :SALE_PRICE, :NUM, :TOTAL_PIECE_PRICE, ' +
        ':KIND, '
      '   :NAME)')
    DeleteSQL.Strings = (
      'delete from SALES'
      'where'
      '  QUANTITY = :OLD_QUANTITY and'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  NUM = :OLD_NUM and'
      '  TOTAL_PIECE_PRICE = :OLD_TOTAL_PIECE_PRICE and'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME')
    Left = 336
    Top = 120
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DEBTS_NAMES'
    Left = 304
    Top = 152
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
    end
  end
  object DataSource7: TDataSource
    DataSet = IBTable1
    Left = 272
    Top = 152
  end
  object DataSource8: TDataSource
    DataSet = max_debts
    Left = 272
    Top = 192
  end
  object max_debts: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from DEBTS')
    Left = 304
    Top = 192
    object max_debtsMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object max_collecting: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from COLLECTING_DEBT')
    Left = 304
    Top = 224
    object max_collectingMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource12: TDataSource
    DataSet = max_collecting
    Left = 272
    Top = 224
  end
  object DataSource15: TDataSource
    DataSet = all_collcting
    Left = 376
    Top = 192
  end
  object all_collcting: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(amount) from PAIED_DEBTS where name=:var1')
    Left = 408
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object all_collctingSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 552
    Top = 56
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SALES'
      'where sale_num=:var1')
    Left = 520
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'SALES.QUANTITY'
      Required = True
    end
    object IBQuery1SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'SALES.SALE_NUM'
      Required = True
    end
    object IBQuery1SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'SALES.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'SALES.NUM'
      Required = True
    end
    object IBQuery1TOTAL_PIECE_PRICE: TIBBCDField
      FieldName = 'TOTAL_PIECE_PRICE'
      Origin = 'SALES.TOTAL_PIECE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'SALES.KIND'
      Required = True
      Size = 100
    end
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SALES.NAME'
      Required = True
      Size = 100
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
    Left = 488
    Top = 88
  end
  object edit_in_paid: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID'
      'where sale_num=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 520
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object edit_in_paidNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAID.NUM'
      Required = True
    end
    object edit_in_paidPAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object edit_in_paidBILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object edit_in_paidPAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_paidTOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_paidSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object edit_in_paidINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object edit_in_paidCUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object edit_in_paidREMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object DataSource2: TDataSource
    DataSet = edit_in_paid
    Left = 552
    Top = 88
  end
  object DataSource6: TDataSource
    DataSet = see_if_the_name_in_debts_names
    Left = 552
    Top = 120
  end
  object see_if_the_name_in_debts_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DEBTS_NAMES'
      'where name=:var1')
    UpdateObject = IBUpdateSQL3
    Left = 520
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object see_if_the_name_in_debts_namesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DEBTS_NAMES.NAME'
      Required = True
    end
  end
  object IBUpdateSQL3: TIBUpdateSQL
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
    Left = 488
    Top = 120
  end
  object IBUpdateSQL4: TIBUpdateSQL
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
    Left = 488
    Top = 152
  end
  object edit_in_collecting_debts: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAIED_DEBTS'
      'where name=:var1'
      'order by input_date desc')
    UpdateObject = IBUpdateSQL4
    Left = 520
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object edit_in_collecting_debtsNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAIED_DEBTS.NAME'
      Required = True
    end
    object edit_in_collecting_debtsAMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'PAIED_DEBTS.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_collecting_debtsINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAIED_DEBTS.INPUT_DATE'
      Required = True
    end
  end
  object DataSource9: TDataSource
    DataSet = edit_in_collecting_debts
    Left = 552
    Top = 152
  end
  object all_paid_and_all_bills_total: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(PAID_VALUE),sum(TOTAL_BILL_PRICE) from  PAID'
      'where customer_name=:var1')
    Left = 520
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object all_paid_and_all_bills_totalSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
    object all_paid_and_all_bills_totalSUM1: TIBBCDField
      FieldName = 'SUM1'
      Precision = 18
      Size = 3
    end
  end
  object DataSource10: TDataSource
    DataSet = all_paid_and_all_bills_total
    Left = 552
    Top = 184
  end
  object DataSource11: TDataSource
    DataSet = IBTable2
    Left = 552
    Top = 216
  end
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAIED_DEBTS'
    Left = 520
    Top = 216
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
  object DataSource14: TDataSource
    DataSet = edit_in_profit
    Left = 488
    Top = 248
  end
  object edit_in_profit: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROFITABLE'
      'where (sale_num=:var1)  and (kind=:var2) and (name=:var3)')
    UpdateObject = IBUpdateSQL6
    Left = 520
    Top = 248
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
    object edit_in_profitSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PROFITABLE.SALE_NUM'
      Required = True
    end
    object edit_in_profitBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'PROFITABLE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_profitSALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'PROFITABLE.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_profitGAIN: TIBBCDField
      FieldName = 'GAIN'
      Origin = 'PROFITABLE.GAIN'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_profitNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PROFITABLE.NUM'
      Required = True
    end
    object edit_in_profitQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'PROFITABLE.QUANTITY'
      Required = True
    end
    object edit_in_profitNUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'PROFITABLE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
    object edit_in_profitKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'PROFITABLE.KIND'
      Required = True
      Size = 100
    end
    object edit_in_profitNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROFITABLE.NAME'
      Required = True
      Size = 100
    end
  end
  object IBUpdateSQL6: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SALE_NUM,'
      '  BUY_PRICE,'
      '  SALE_PRICE,'
      '  GAIN,'
      '  NUM,'
      '  QUANTITY,'
      '  NUM_IN_STORGE_HISTORY,'
      '  KIND,'
      '  NAME'
      'from PROFITABLE '
      'where'
      '  SALE_NUM = :SALE_NUM and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  SALE_PRICE = :SALE_PRICE and'
      '  GAIN = :GAIN and'
      '  NUM = :NUM and'
      '  QUANTITY = :QUANTITY and'
      '  NUM_IN_STORGE_HISTORY = :NUM_IN_STORGE_HISTORY and'
      '  KIND = :KIND and'
      '  NAME = :NAME')
    ModifySQL.Strings = (
      'update PROFITABLE'
      'set'
      '  SALE_NUM = :SALE_NUM,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  SALE_PRICE = :SALE_PRICE,'
      '  GAIN = :GAIN,'
      '  NUM = :NUM,'
      '  QUANTITY = :QUANTITY,'
      '  NUM_IN_STORGE_HISTORY = :NUM_IN_STORGE_HISTORY,'
      '  KIND = :KIND,'
      '  NAME = :NAME'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  GAIN = :OLD_GAIN and'
      '  NUM = :OLD_NUM and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_STORGE_HISTORY = :OLD_NUM_IN_STORGE_HISTORY and'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME')
    InsertSQL.Strings = (
      'insert into PROFITABLE'
      
        '  (SALE_NUM, BUY_PRICE, SALE_PRICE, GAIN, NUM, QUANTITY, NUM_IN_' +
        'STORGE_HISTORY, '
      '   KIND, NAME)'
      'values'
      
        '  (:SALE_NUM, :BUY_PRICE, :SALE_PRICE, :GAIN, :NUM, :QUANTITY, :' +
        'NUM_IN_STORGE_HISTORY, '
      '   :KIND, :NAME)')
    DeleteSQL.Strings = (
      'delete from PROFITABLE'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  GAIN = :OLD_GAIN and'
      '  NUM = :OLD_NUM and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_STORGE_HISTORY = :OLD_NUM_IN_STORGE_HISTORY and'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME')
    Left = 560
    Top = 248
  end
end
