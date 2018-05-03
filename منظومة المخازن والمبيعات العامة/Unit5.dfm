object Form5: TForm5
  Left = 150
  Top = 108
  Width = 859
  Height = 619
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1588#1575#1588#1577' '#1573#1585#1580#1575#1593' '#1576#1590#1575#1593#1577
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
    Left = 16
    Top = 8
    Width = 825
    Height = 569
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 495
      Top = 21
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label2: TLabel
      Left = 764
      Top = 393
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label3: TLabel
      Left = 573
      Top = 394
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label4: TLabel
      Left = 347
      Top = 396
      Width = 61
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1576#1575#1593#1577
    end
    object Label5: TLabel
      Left = 135
      Top = 398
      Width = 64
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1585#1580#1593#1577
    end
    object Label6: TLabel
      Left = 751
      Top = 448
      Width = 52
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1602#1591#1593#1577
    end
    object Label7: TLabel
      Left = 558
      Top = 450
      Width = 56
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1587#1593#1585
    end
    object Label8: TLabel
      Left = 339
      Top = 454
      Width = 89
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1587#1593#1585' '#1575#1604#1603#1605#1610#1577' '
    end
    object Label9: TLabel
      Left = 367
      Top = 470
      Width = 34
      Height = 13
      Caption = #1575#1604#1605#1585#1580#1593#1577
    end
    object Label10: TLabel
      Left = 555
      Top = 466
      Width = 61
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1576#1575#1593#1577
    end
    object Label11: TLabel
      Left = 140
      Top = 460
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1586#1576#1608#1606
    end
    object Label12: TLabel
      Left = 536
      Top = 512
      Width = 118
      Height = 13
      Alignment = taCenter
      Caption = #1575#1604#1605#1576#1604#1594' '#1575#1604#1584#1610' '#1610#1580#1576' '#1573#1585#1580#1575#1593#1607' '#1604#1600#1600
    end
    object Label13: TLabel
      Left = 531
      Top = 512
      Width = 3
      Height = 13
    end
    object DateTimePicker1: TDateTimePicker
      Left = 300
      Top = 16
      Width = 186
      Height = 21
      Date = 39222.471654178240000000
      Time = 39222.471654178240000000
      TabOrder = 0
    end
    object Button1: TButton
      Left = 380
      Top = 48
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 1
      OnClick = Button1Click
    end
    object DBGrid1: TDBGrid
      Left = 56
      Top = 80
      Width = 681
      Height = 297
      DataSource = DataSource1
      TabOrder = 2
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
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 160
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 160
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
          Title.Caption = #1587#1593#1585' '#1575#1604#1602#1591#1593#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL_PIECE_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1587#1593#1585' '#1575#1604#1573#1580#1605#1575#1604#1609
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTOMER_NAME'
          Visible = False
        end>
    end
    object Edit5: TEdit
      Left = 624
      Top = 448
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Edit6: TEdit
      Left = 434
      Top = 449
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit7: TEdit
      Left = 208
      Top = 453
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object Button3: TButton
      Left = 515
      Top = 536
      Width = 75
      Height = 25
      Caption = #1573#1585#1580#1575#1593
      Enabled = False
      TabOrder = 6
      OnClick = Button3Click
    end
    object DateTimePicker2: TDateTimePicker
      Left = 16
      Top = 528
      Width = 186
      Height = 21
      Date = 39224.749031932870000000
      Time = 39224.749031932870000000
      TabOrder = 7
      Visible = False
    end
    object Edit8: TEdit
      Left = 11
      Top = 451
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 8
    end
    object Edit9: TEdit
      Left = 304
      Top = 504
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 9
    end
  end
  object Button2: TButton
    Left = 264
    Top = 544
    Width = 75
    Height = 25
    Caption = #1585#1580#1608#1593
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 639
    Top = 396
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 447
    Top = 400
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 224
    Top = 400
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 24
    Top = 400
    Width = 121
    Height = 21
    TabOrder = 5
    OnChange = Edit4Change
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SALES, paid'
      
        'where (sales.sale_num = paid.sale_num) and (paid.input_date=:var' +
        '1)')
    Left = 56
    Top = 24
    ParamData = <
      item
        DataType = ftDate
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SALES.NAME'
      Required = True
      Size = 30
    end
    object IBQuery1KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'SALES.KIND'
      Required = True
      Size = 30
    end
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
    object IBQuery1NUM1: TIntegerField
      FieldName = 'NUM1'
      Origin = 'PAID.NUM'
      Required = True
    end
    object IBQuery1PAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object IBQuery1BILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object IBQuery1PAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1TOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1SALE_NUM1: TIntegerField
      FieldName = 'SALE_NUM1'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object IBQuery1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object IBQuery1CUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object IBQuery1REMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 24
    Top = 24
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(debts.DEBT_VALUE) from DEBTS, paid'
      
        'where (debts.sale_num=paid.sale_num) and (paid.CUSTOMER_NAME=:va' +
        'r1)')
    Left = 56
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 24
    Top = 64
  end
  object bring_data_from_profitable_to_edit: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROFITABLE'
      
        'where ((sale_num=:var1) and (kind=:var2) and (name=:var3) and (q' +
        'uantity=:var4) and (sale_price=:var5))'
      'order by  NUM_IN_STORGE_HISTORY desc')
    UpdateObject = IBUpdateSQL1
    Left = 192
    Top = 24
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
    object bring_data_from_profitable_to_editSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PROFITABLE.SALE_NUM'
      Required = True
    end
    object bring_data_from_profitable_to_editBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'PROFITABLE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object bring_data_from_profitable_to_editSALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'PROFITABLE.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object bring_data_from_profitable_to_editGAIN: TIBBCDField
      FieldName = 'GAIN'
      Origin = 'PROFITABLE.GAIN'
      Required = True
      Precision = 9
      Size = 3
    end
    object bring_data_from_profitable_to_editNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PROFITABLE.NUM'
      Required = True
    end
    object bring_data_from_profitable_to_editKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'PROFITABLE.KIND'
      Required = True
      Size = 30
    end
    object bring_data_from_profitable_to_editNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROFITABLE.NAME'
      Required = True
      Size = 30
    end
    object bring_data_from_profitable_to_editQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'PROFITABLE.QUANTITY'
      Required = True
    end
    object bring_data_from_profitable_to_editNUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'PROFITABLE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
  end
  object DataSource3: TDataSource
    DataSet = bring_data_from_profitable_to_edit
    Left = 160
    Top = 24
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SALE_NUM,'
      '  BUY_PRICE,'
      '  SALE_PRICE,'
      '  GAIN,'
      '  NUM,'
      '  KIND,'
      '  NAME,'
      '  QUANTITY'
      'from PROFITABLE '
      'where'
      '  SALE_NUM = :SALE_NUM and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  SALE_PRICE = :SALE_PRICE and'
      '  GAIN = :GAIN and'
      '  NUM = :NUM and'
      '  KIND = :KIND and'
      '  NAME = :NAME and'
      '  QUANTITY = :QUANTITY')
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
      '  QUANTITY = :QUANTITY'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  GAIN = :OLD_GAIN and'
      '  NUM = :OLD_NUM and'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME and'
      '  QUANTITY = :OLD_QUANTITY')
    InsertSQL.Strings = (
      'insert into PROFITABLE'
      
        '  (SALE_NUM, BUY_PRICE, SALE_PRICE, GAIN, NUM, KIND, NAME, QUANT' +
        'ITY)'
      'values'
      
        '  (:SALE_NUM, :BUY_PRICE, :SALE_PRICE, :GAIN, :NUM, :KIND, :NAME' +
        ', :QUANTITY)')
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
      '  QUANTITY = :OLD_QUANTITY')
    Left = 224
    Top = 24
  end
  object select_data_from_storge_to_add_the_retrive: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE'
      
        'where (kind=:var1) and (name=:var2) and (NUM_IN_HISTORY_STORGE=:' +
        'var3)')
    UpdateObject = IBUpdateSQL2
    Left = 192
    Top = 56
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
    object select_data_from_storge_to_add_the_retriveNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE.NAME'
      Required = True
      Size = 30
    end
    object select_data_from_storge_to_add_the_retriveKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE.KIND'
      Required = True
      Size = 30
    end
    object select_data_from_storge_to_add_the_retriveNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE.NUM'
      Required = True
    end
    object select_data_from_storge_to_add_the_retriveINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE.INPUT_DATE'
      Required = True
    end
    object select_data_from_storge_to_add_the_retriveBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object select_data_from_storge_to_add_the_retriveQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE.QUANTITY'
      Required = True
    end
    object select_data_from_storge_to_add_the_retriveSOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'STORGE.SOLD'
      Required = True
    end
    object select_data_from_storge_to_add_the_retriveNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
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
      '  SOLD'
      'from STORGE '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  QUANTITY = :QUANTITY and'
      '  SOLD = :SOLD')
    ModifySQL.Strings = (
      'update STORGE'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  QUANTITY = :QUANTITY,'
      '  SOLD = :SOLD'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  SOLD = :OLD_SOLD')
    InsertSQL.Strings = (
      'insert into STORGE'
      '  (NAME, KIND, NUM, INPUT_DATE, BUY_PRICE, QUANTITY, SOLD)'
      'values'
      
        '  (:NAME, :KIND, :NUM, :INPUT_DATE, :BUY_PRICE, :QUANTITY, :SOLD' +
        ')')
    DeleteSQL.Strings = (
      'delete from STORGE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  SOLD = :OLD_SOLD')
    Left = 224
    Top = 56
  end
  object DataSource4: TDataSource
    DataSet = select_data_from_storge_to_add_the_retrive
    Left = 160
    Top = 56
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Left = 24
    Top = 96
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from STORGE')
    Left = 56
    Top = 96
    object IBQuery5MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource6: TDataSource
    DataSet = data_from_paid_to_the_bill
    Left = 488
    Top = 16
  end
  object data_from_paid_to_the_bill: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID'
      'where sale_num=:var1')
    UpdateObject = IBUpdateSQL3
    Left = 528
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object data_from_paid_to_the_billNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAID.NUM'
      Required = True
    end
    object data_from_paid_to_the_billPAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object data_from_paid_to_the_billBILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object data_from_paid_to_the_billPAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object data_from_paid_to_the_billTOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object data_from_paid_to_the_billSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object data_from_paid_to_the_billINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object data_from_paid_to_the_billCUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object data_from_paid_to_the_billREMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL3: TIBUpdateSQL
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
    Left = 568
    Top = 16
  end
  object see_if_there_are_any_more_items_in_the_same_bill_from_profitabl: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROFITABLE'
      'where sale_num=:var1')
    Left = 528
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object see_if_there_are_any_more_items_in_the_same_bill_from_profitablSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PROFITABLE.SALE_NUM'
      Required = True
    end
    object see_if_there_are_any_more_items_in_the_same_bill_from_profitablBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'PROFITABLE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object see_if_there_are_any_more_items_in_the_same_bill_from_profitablSALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'PROFITABLE.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object see_if_there_are_any_more_items_in_the_same_bill_from_profitablGAIN: TIBBCDField
      FieldName = 'GAIN'
      Origin = 'PROFITABLE.GAIN'
      Required = True
      Precision = 9
      Size = 3
    end
    object see_if_there_are_any_more_items_in_the_same_bill_from_profitablNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PROFITABLE.NUM'
      Required = True
    end
    object see_if_there_are_any_more_items_in_the_same_bill_from_profitablKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'PROFITABLE.KIND'
      Required = True
      Size = 30
    end
    object see_if_there_are_any_more_items_in_the_same_bill_from_profitablNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROFITABLE.NAME'
      Required = True
      Size = 30
    end
    object see_if_there_are_any_more_items_in_the_same_bill_from_profitablQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'PROFITABLE.QUANTITY'
      Required = True
    end
  end
  object see_if_there_are_any_debts_collected_for_the_same_bill: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from COLLECTING_DEBT'
      'where sale_num=:var1')
    UpdateObject = IBUpdateSQL5
    Left = 528
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object see_if_there_are_any_debts_collected_for_the_same_billSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'COLLECTING_DEBT.SALE_NUM'
      Required = True
    end
    object see_if_there_are_any_debts_collected_for_the_same_billPAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'COLLECTING_DEBT.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object see_if_there_are_any_debts_collected_for_the_same_billNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'COLLECTING_DEBT.NUM'
      Required = True
    end
  end
  object IBUpdateSQL5: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SALE_NUM,'
      '  PAID_VALUE,'
      '  NUM'
      'from COLLECTING_DEBT '
      'where'
      '  SALE_NUM = :SALE_NUM and'
      '  PAID_VALUE = :PAID_VALUE and'
      '  NUM = :NUM')
    ModifySQL.Strings = (
      'update COLLECTING_DEBT'
      'set'
      '  SALE_NUM = :SALE_NUM,'
      '  PAID_VALUE = :PAID_VALUE,'
      '  NUM = :NUM'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  PAID_VALUE = :OLD_PAID_VALUE and'
      '  NUM = :OLD_NUM')
    InsertSQL.Strings = (
      'insert into COLLECTING_DEBT'
      '  (SALE_NUM, PAID_VALUE, NUM)'
      'values'
      '  (:SALE_NUM, :PAID_VALUE, :NUM)')
    DeleteSQL.Strings = (
      'delete from COLLECTING_DEBT'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  PAID_VALUE = :OLD_PAID_VALUE and'
      '  NUM = :OLD_NUM')
    Left = 568
    Top = 80
  end
  object DataSource7: TDataSource
    DataSet = see_if_there_are_any_more_items_in_the_same_bill_from_profitabl
    Left = 488
    Top = 48
  end
  object DataSource8: TDataSource
    DataSet = see_if_there_are_any_debts_collected_for_the_same_bill
    Left = 488
    Top = 80
  end
  object DataSource9: TDataSource
    DataSet = see_if_there_are_items_in_the_same_bill_in_sales_table
    Left = 664
    Top = 16
  end
  object see_if_there_are_items_in_the_same_bill_in_sales_table: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SALES'
      'where sale_num=:var1')
    UpdateObject = IBUpdateSQL4
    Left = 704
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object see_if_there_are_items_in_the_same_bill_in_sales_tableNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SALES.NAME'
      Required = True
      Size = 30
    end
    object see_if_there_are_items_in_the_same_bill_in_sales_tableKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'SALES.KIND'
      Required = True
      Size = 30
    end
    object see_if_there_are_items_in_the_same_bill_in_sales_tableQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'SALES.QUANTITY'
      Required = True
    end
    object see_if_there_are_items_in_the_same_bill_in_sales_tableSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'SALES.SALE_NUM'
      Required = True
    end
    object see_if_there_are_items_in_the_same_bill_in_sales_tableSALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'SALES.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object see_if_there_are_items_in_the_same_bill_in_sales_tableNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'SALES.NUM'
      Required = True
    end
    object see_if_there_are_items_in_the_same_bill_in_sales_tableTOTAL_PIECE_PRICE: TIBBCDField
      FieldName = 'TOTAL_PIECE_PRICE'
      Origin = 'SALES.TOTAL_PIECE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL4: TIBUpdateSQL
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
    Left = 744
    Top = 16
  end
  object see_if_he_has_any_other_debts: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DEBTS,PAID'
      
        'where (debts.sale_num=paid.sale_num) and (paid.customer_name=:va' +
        'r1)')
    UpdateObject = IBUpdateSQL6
    Left = 712
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object see_if_he_has_any_other_debtsSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'DEBTS.SALE_NUM'
      Required = True
    end
    object see_if_he_has_any_other_debtsDEBT_VALUE: TIBBCDField
      FieldName = 'DEBT_VALUE'
      Origin = 'DEBTS.DEBT_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object see_if_he_has_any_other_debtsNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'DEBTS.NUM'
      Required = True
    end
    object see_if_he_has_any_other_debtsNUM1: TIntegerField
      FieldName = 'NUM1'
      Origin = 'PAID.NUM'
      Required = True
    end
    object see_if_he_has_any_other_debtsPAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object see_if_he_has_any_other_debtsBILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object see_if_he_has_any_other_debtsPAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object see_if_he_has_any_other_debtsTOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object see_if_he_has_any_other_debtsSALE_NUM1: TIntegerField
      FieldName = 'SALE_NUM1'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object see_if_he_has_any_other_debtsINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object see_if_he_has_any_other_debtsCUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object see_if_he_has_any_other_debtsREMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object DataSource10: TDataSource
    DataSet = see_if_he_has_any_other_debts
    Left = 664
    Top = 56
  end
  object IBUpdateSQL6: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SALE_NUM,'
      '  DEBT_VALUE,'
      '  NUM'
      'from DEBTS '
      'where'
      '  SALE_NUM = :SALE_NUM and'
      '  DEBT_VALUE = :DEBT_VALUE and'
      '  NUM = :NUM')
    ModifySQL.Strings = (
      'update DEBTS'
      'set'
      '  SALE_NUM = :SALE_NUM,'
      '  DEBT_VALUE = :DEBT_VALUE,'
      '  NUM = :NUM'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  DEBT_VALUE = :OLD_DEBT_VALUE and'
      '  NUM = :OLD_NUM')
    InsertSQL.Strings = (
      'insert into DEBTS'
      '  (SALE_NUM, DEBT_VALUE, NUM)'
      'values'
      '  (:SALE_NUM, :DEBT_VALUE, :NUM)')
    DeleteSQL.Strings = (
      'delete from DEBTS'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  DEBT_VALUE = :OLD_DEBT_VALUE and'
      '  NUM = :OLD_NUM')
    Left = 752
    Top = 56
  end
  object save_in_collecting_debts: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'COLLECTING_DEBT'
    Left = 816
    Top = 16
    object save_in_collecting_debtsSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
    end
    object save_in_collecting_debtsPAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Precision = 9
      Size = 3
    end
    object save_in_collecting_debtsNUM: TIntegerField
      FieldName = 'NUM'
    end
  end
  object DataSource11: TDataSource
    DataSet = save_in_collecting_debts
    Left = 784
    Top = 16
  end
  object IBQuery11: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from COLLECTING_DEBT')
    Left = 56
    Top = 128
    object IBQuery11MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource12: TDataSource
    DataSet = IBQuery11
    Left = 24
    Top = 128
  end
  object delete_from_sales_when_the_mount_is_the_same_but_still_items: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SALES'
      
        'where (kind=:var1) and (name=:var2) and (sale_num=:var3) and (qu' +
        'antity=:var4) and (sale_price=:var5)')
    UpdateObject = IBUpdateSQL7
    Left = 384
    Top = 520
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
        DataType = ftInteger
        Name = 'var4'
        ParamType = ptInputOutput
      end
      item
        DataType = ftFloat
        Name = 'var5'
        ParamType = ptInputOutput
      end>
    object delete_from_sales_when_the_mount_is_the_same_but_still_itemsNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SALES.NAME'
      Required = True
      Size = 30
    end
    object delete_from_sales_when_the_mount_is_the_same_but_still_itemsKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'SALES.KIND'
      Required = True
      Size = 30
    end
    object delete_from_sales_when_the_mount_is_the_same_but_still_itemsQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'SALES.QUANTITY'
      Required = True
    end
    object delete_from_sales_when_the_mount_is_the_same_but_still_itemsSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'SALES.SALE_NUM'
      Required = True
    end
    object delete_from_sales_when_the_mount_is_the_same_but_still_itemsSALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'SALES.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object delete_from_sales_when_the_mount_is_the_same_but_still_itemsNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'SALES.NUM'
      Required = True
    end
    object delete_from_sales_when_the_mount_is_the_same_but_still_itemsTOTAL_PIECE_PRICE: TIBBCDField
      FieldName = 'TOTAL_PIECE_PRICE'
      Origin = 'SALES.TOTAL_PIECE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL7: TIBUpdateSQL
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
    Left = 416
    Top = 520
  end
  object DataSource13: TDataSource
    DataSet = delete_from_sales_when_the_mount_is_the_same_but_still_items
    Left = 352
    Top = 520
  end
  object edit_paid_value_and_remaining_value_after_delete_and_still_item: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID'
      'where sale_num=:var1')
    UpdateObject = IBUpdateSQL8
    Left = 384
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object edit_paid_value_and_remaining_value_after_delete_and_still_itemNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAID.NUM'
      Required = True
    end
    object edit_paid_value_and_remaining_value_after_delete_and_still_itemPAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object edit_paid_value_and_remaining_value_after_delete_and_still_itemBILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object edit_paid_value_and_remaining_value_after_delete_and_still_itemPAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_paid_value_and_remaining_value_after_delete_and_still_itemTOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_paid_value_and_remaining_value_after_delete_and_still_itemSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object edit_paid_value_and_remaining_value_after_delete_and_still_itemINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object edit_paid_value_and_remaining_value_after_delete_and_still_itemCUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object edit_paid_value_and_remaining_value_after_delete_and_still_itemREMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL8: TIBUpdateSQL
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
    Left = 416
    Top = 552
  end
  object DataSource14: TDataSource
    DataSet = edit_paid_value_and_remaining_value_after_delete_and_still_item
    Left = 352
    Top = 552
  end
  object edit_in_debts_if_paid_less_than_retrive_money: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DEBTS'
      'where sale_num=:var1')
    UpdateObject = IBUpdateSQL9
    Left = 736
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object edit_in_debts_if_paid_less_than_retrive_moneySALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'DEBTS.SALE_NUM'
      Required = True
    end
    object edit_in_debts_if_paid_less_than_retrive_moneyDEBT_VALUE: TIBBCDField
      FieldName = 'DEBT_VALUE'
      Origin = 'DEBTS.DEBT_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_debts_if_paid_less_than_retrive_moneyNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'DEBTS.NUM'
      Required = True
    end
  end
  object IBUpdateSQL9: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SALE_NUM,'
      '  DEBT_VALUE,'
      '  NUM'
      'from DEBTS '
      'where'
      '  SALE_NUM = :SALE_NUM and'
      '  DEBT_VALUE = :DEBT_VALUE and'
      '  NUM = :NUM')
    ModifySQL.Strings = (
      'update DEBTS'
      'set'
      '  SALE_NUM = :SALE_NUM,'
      '  DEBT_VALUE = :DEBT_VALUE,'
      '  NUM = :NUM'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  DEBT_VALUE = :OLD_DEBT_VALUE and'
      '  NUM = :OLD_NUM')
    InsertSQL.Strings = (
      'insert into DEBTS'
      '  (SALE_NUM, DEBT_VALUE, NUM)'
      'values'
      '  (:SALE_NUM, :DEBT_VALUE, :NUM)')
    DeleteSQL.Strings = (
      'delete from DEBTS'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  DEBT_VALUE = :OLD_DEBT_VALUE and'
      '  NUM = :OLD_NUM')
    Left = 768
    Top = 496
  end
  object DataSource15: TDataSource
    DataSet = edit_in_debts_if_paid_less_than_retrive_money
    Left = 704
    Top = 496
  end
  object edit_in_collecting_debt_if_retrive_money_less_than_paid: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from COLLECTING_DEBT'
      'where sale_num=:var1')
    UpdateObject = IBUpdateSQL10
    Left = 736
    Top = 528
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object edit_in_collecting_debt_if_retrive_money_less_than_paidSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'COLLECTING_DEBT.SALE_NUM'
      Required = True
    end
    object edit_in_collecting_debt_if_retrive_money_less_than_paidPAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'COLLECTING_DEBT.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_collecting_debt_if_retrive_money_less_than_paidNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'COLLECTING_DEBT.NUM'
      Required = True
    end
  end
  object IBUpdateSQL10: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SALE_NUM,'
      '  PAID_VALUE,'
      '  NUM'
      'from COLLECTING_DEBT '
      'where'
      '  SALE_NUM = :SALE_NUM and'
      '  PAID_VALUE = :PAID_VALUE and'
      '  NUM = :NUM')
    ModifySQL.Strings = (
      'update COLLECTING_DEBT'
      'set'
      '  SALE_NUM = :SALE_NUM,'
      '  PAID_VALUE = :PAID_VALUE,'
      '  NUM = :NUM'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  PAID_VALUE = :OLD_PAID_VALUE and'
      '  NUM = :OLD_NUM')
    InsertSQL.Strings = (
      'insert into COLLECTING_DEBT'
      '  (SALE_NUM, PAID_VALUE, NUM)'
      'values'
      '  (:SALE_NUM, :PAID_VALUE, :NUM)')
    DeleteSQL.Strings = (
      'delete from COLLECTING_DEBT'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  PAID_VALUE = :OLD_PAID_VALUE and'
      '  NUM = :OLD_NUM')
    Left = 773
    Top = 528
  end
  object DataSource16: TDataSource
    DataSet = edit_in_collecting_debt_if_retrive_money_less_than_paid
    Left = 704
    Top = 528
  end
  object max_num_in_debt: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from COLLECTING_DEBT')
    Left = 56
    Top = 160
  end
  object DataSource17: TDataSource
    DataSet = max_num_in_debt
    Left = 24
    Top = 160
  end
  object delete_from_debts_if_nothing_left_in_bill: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DEBTS'
      'where sale_num=:var1')
    UpdateObject = IBUpdateSQL11
    Left = 96
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object delete_from_debts_if_nothing_left_in_billSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'DEBTS.SALE_NUM'
      Required = True
    end
    object delete_from_debts_if_nothing_left_in_billDEBT_VALUE: TIBBCDField
      FieldName = 'DEBT_VALUE'
      Origin = 'DEBTS.DEBT_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object delete_from_debts_if_nothing_left_in_billNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'DEBTS.NUM'
      Required = True
    end
  end
  object IBUpdateSQL11: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SALE_NUM,'
      '  DEBT_VALUE,'
      '  NUM'
      'from DEBTS '
      'where'
      '  SALE_NUM = :SALE_NUM and'
      '  DEBT_VALUE = :DEBT_VALUE and'
      '  NUM = :NUM')
    ModifySQL.Strings = (
      'update DEBTS'
      'set'
      '  SALE_NUM = :SALE_NUM,'
      '  DEBT_VALUE = :DEBT_VALUE,'
      '  NUM = :NUM'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  DEBT_VALUE = :OLD_DEBT_VALUE and'
      '  NUM = :OLD_NUM')
    InsertSQL.Strings = (
      'insert into DEBTS'
      '  (SALE_NUM, DEBT_VALUE, NUM)'
      'values'
      '  (:SALE_NUM, :DEBT_VALUE, :NUM)')
    DeleteSQL.Strings = (
      'delete from DEBTS'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  DEBT_VALUE = :OLD_DEBT_VALUE and'
      '  NUM = :OLD_NUM')
    Left = 128
    Top = 504
  end
  object DataSource18: TDataSource
    DataSet = delete_from_debts_if_nothing_left_in_bill
    Left = 64
    Top = 504
  end
  object DataSource19: TDataSource
    DataSet = edit_in_collecting_if_paid_less_than_money
    Left = 56
    Top = 552
  end
  object edit_in_collecting_if_paid_less_than_money: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from COLLECTING_DEBT'
      'where sale_num=:var1')
    UpdateObject = IBUpdateSQL12
    Left = 96
    Top = 555
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object edit_in_collecting_if_paid_less_than_moneySALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'COLLECTING_DEBT.SALE_NUM'
      Required = True
    end
    object edit_in_collecting_if_paid_less_than_moneyPAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'COLLECTING_DEBT.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_collecting_if_paid_less_than_moneyNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'COLLECTING_DEBT.NUM'
      Required = True
    end
  end
  object IBUpdateSQL12: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SALE_NUM,'
      '  PAID_VALUE,'
      '  NUM'
      'from COLLECTING_DEBT '
      'where'
      '  SALE_NUM = :SALE_NUM and'
      '  PAID_VALUE = :PAID_VALUE and'
      '  NUM = :NUM')
    ModifySQL.Strings = (
      'update COLLECTING_DEBT'
      'set'
      '  SALE_NUM = :SALE_NUM,'
      '  PAID_VALUE = :PAID_VALUE,'
      '  NUM = :NUM'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  PAID_VALUE = :OLD_PAID_VALUE and'
      '  NUM = :OLD_NUM')
    InsertSQL.Strings = (
      'insert into COLLECTING_DEBT'
      '  (SALE_NUM, PAID_VALUE, NUM)'
      'values'
      '  (:SALE_NUM, :PAID_VALUE, :NUM)')
    DeleteSQL.Strings = (
      'delete from COLLECTING_DEBT'
      'where'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  PAID_VALUE = :OLD_PAID_VALUE and'
      '  NUM = :OLD_NUM')
    Left = 136
    Top = 554
  end
  object DataSource20: TDataSource
    DataSet = edit_in_paid_when_less_than_retrive
    Left = 216
    Top = 496
  end
  object edit_in_paid_when_less_than_retrive: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID'
      'where sale_num=:var1')
    UpdateObject = IBUpdateSQL13
    Left = 248
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object edit_in_paid_when_less_than_retriveNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAID.NUM'
      Required = True
    end
    object edit_in_paid_when_less_than_retrivePAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object edit_in_paid_when_less_than_retriveBILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object edit_in_paid_when_less_than_retrivePAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_paid_when_less_than_retriveTOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_paid_when_less_than_retriveSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object edit_in_paid_when_less_than_retriveINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object edit_in_paid_when_less_than_retriveCUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object edit_in_paid_when_less_than_retriveREMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL13: TIBUpdateSQL
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
    Left = 280
    Top = 496
  end
  object sum_bill: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY* SALE_PRICE) from SALES'
      'where sale_num=:var1')
    Left = 512
    Top = 488
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object sum_billSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource21: TDataSource
    DataSet = sum_bill
    Left = 480
    Top = 488
  end
  object DataSource22: TDataSource
    DataSet = IBquery3
    Left = 360
    Top = 56
  end
  object IBquery3: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TEMP_PROFIT'
    Left = 328
    Top = 56
    object IBquery3TEMP: TIntegerField
      FieldName = 'TEMP'
    end
    object IBquery3QUAN: TIntegerField
      FieldName = 'QUAN'
    end
  end
  object input_in_storge: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'STORGE'
    Left = 272
    Top = 24
    object input_in_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object input_in_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object input_in_storgeNUM: TIntegerField
      FieldName = 'NUM'
    end
    object input_in_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object input_in_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object input_in_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object input_in_storgeNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
    end
    object input_in_storgeSOLD: TIntegerField
      FieldName = 'SOLD'
    end
    object input_in_storgeDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object input_in_storgeTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object input_in_storgeCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object DataSource23: TDataSource
    DataSet = input_in_storge
    Left = 304
    Top = 24
  end
  object query_loop: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROFITABLE'
      'where (sale_num=:var1) and (kind=:var2) and (name=:var3)'
      'order by  NUM_IN_STORGE_HISTORY desc')
    Left = 760
    Top = 208
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
    object query_loopSALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PROFITABLE.SALE_NUM'
      Required = True
    end
    object query_loopBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'PROFITABLE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object query_loopSALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'PROFITABLE.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object query_loopGAIN: TIBBCDField
      FieldName = 'GAIN'
      Origin = 'PROFITABLE.GAIN'
      Required = True
      Precision = 9
      Size = 3
    end
    object query_loopNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PROFITABLE.NUM'
      Required = True
    end
    object query_loopKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'PROFITABLE.KIND'
      Required = True
      Size = 30
    end
    object query_loopNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROFITABLE.NAME'
      Required = True
      Size = 30
    end
    object query_loopQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'PROFITABLE.QUANTITY'
      Required = True
    end
    object query_loopNUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'PROFITABLE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
  end
  object DataSource24: TDataSource
    DataSet = query_loop
    Left = 792
    Top = 208
  end
  object see_if_sum_collecting_more_than_debt: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(PAID_VALUE) from COLLECTING_DEBT'
      'where sale_num=:var1')
    Left = 784
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object see_if_sum_collecting_more_than_debtSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource25: TDataSource
    DataSet = see_if_sum_collecting_more_than_debt
    Left = 816
    Top = 128
  end
  object remaing_value: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select REMAINING_VALUE from PAID'
      'where sale_num=:var1')
    Left = 784
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object remaing_valueREMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object DataSource26: TDataSource
    DataSet = remaing_value
    Left = 816
    Top = 160
  end
  object DataSource27: TDataSource
    DataSet = IBTable1
    Left = 24
    Top = 192
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAIED_DEBTS'
    Left = 56
    Top = 192
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
    end
    object IBTable1AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Precision = 9
      Size = 3
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
  end
  object DataSource28: TDataSource
    DataSet = bring_dollar_data
    Left = 24
    Top = 224
  end
  object bring_dollar_data: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE_HISTORY'
      'where (num=:var1)  and (kind=:var2) and (name=:var3)')
    Left = 56
    Top = 224
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
    object bring_dollar_dataNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE_HISTORY.NAME'
      Required = True
      Size = 30
    end
    object bring_dollar_dataKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE_HISTORY.KIND'
      Required = True
      Size = 30
    end
    object bring_dollar_dataNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE_HISTORY.NUM'
      Required = True
    end
    object bring_dollar_dataINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE_HISTORY.INPUT_DATE'
      Required = True
    end
    object bring_dollar_dataBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE_HISTORY.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object bring_dollar_dataQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE_HISTORY.QUANTITY'
      Required = True
    end
    object bring_dollar_dataCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE_HISTORY.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object bring_dollar_dataTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object bring_dollar_dataDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object sum_all_paied_and_total_bills: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(PAID_VALUE), sum(TOTAL_BILL_PRICE) from PAID'
      'where customer_name=:var1')
    Left = 56
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object sum_all_paied_and_total_billsSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
    object sum_all_paied_and_total_billsSUM1: TIBBCDField
      FieldName = 'SUM1'
      Precision = 18
      Size = 3
    end
  end
  object DataSource29: TDataSource
    DataSet = sum_all_paied_and_total_bills
    Left = 24
    Top = 256
  end
  object DataSource30: TDataSource
    DataSet = sum_collecting
    Left = 24
    Top = 288
  end
  object sum_collecting: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(AMOUNT) from PAIED_DEBTS'
      'where name=:var1')
    Left = 56
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object sum_collectingSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object see_if_he_in_debts_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DEBTS_NAMES'
      'where name=:var1')
    UpdateObject = IBUpdateSQL14
    Left = 56
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object DataSource31: TDataSource
    DataSet = see_if_he_in_debts_names
    Left = 24
    Top = 320
  end
  object IBUpdateSQL14: TIBUpdateSQL
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
    Left = 88
    Top = 320
  end
  object IBUpdateSQL15: TIBUpdateSQL
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
    Left = 88
    Top = 352
  end
  object edit_in_collecting: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAIED_DEBTS'
      'where name=:var1'
      'order by  input_date desc')
    UpdateObject = IBUpdateSQL15
    Left = 56
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object edit_in_collectingNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAIED_DEBTS.NAME'
      Required = True
    end
    object edit_in_collectingAMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'PAIED_DEBTS.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_collectingINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAIED_DEBTS.INPUT_DATE'
      Required = True
    end
  end
  object DataSource32: TDataSource
    Left = 24
    Top = 352
  end
end
