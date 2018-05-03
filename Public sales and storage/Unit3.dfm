object Form3: TForm3
  Left = 8
  Top = 45
  Width = 1015
  Height = 690
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1588#1575#1588#1577' '#1575#1604#1605#1576#1610#1593#1575#1578
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
    Left = 24
    Top = 8
    Width = 969
    Height = 633
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label3: TLabel
      Left = 169
      Top = 72
      Width = 43
      Height = 13
      Caption = #1601#1600#1600#1575#1578#1600#1600#1608#1585#1577
    end
    object Label4: TLabel
      Left = 927
      Top = 353
      Width = 34
      Height = 13
      Caption = #1575#1604#1589#1606#1600#1600#1601
    end
    object Label5: TLabel
      Left = 746
      Top = 354
      Width = 29
      Height = 13
      Caption = #1575#1604#1606#1600#1600#1608#1593
    end
    object Label6: TLabel
      Left = 533
      Top = 356
      Width = 68
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1578#1608#1601#1585#1577
    end
    object Label7: TLabel
      Left = 834
      Top = 422
      Width = 66
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1591#1604#1608#1576#1577
    end
    object Label8: TLabel
      Left = 516
      Top = 570
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label9: TLabel
      Left = 261
      Top = 492
      Width = 38
      Height = 13
      Caption = #1575#1604#1573#1580#1605#1575#1604#1609
    end
    object Label10: TLabel
      Left = 618
      Top = 421
      Width = 76
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593' '#1604#1604#1602#1591#1593#1577
    end
    object Label11: TLabel
      Left = 323
      Top = 571
      Width = 68
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1583#1601#1608#1593#1577
    end
    object Label12: TLabel
      Left = 133
      Top = 572
      Width = 61
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1578#1576#1602#1610#1577
    end
    object Label13: TLabel
      Left = 274
      Top = 528
      Width = 53
      Height = 13
      Caption = #1591#1585#1610#1602#1577' '#1575#1604#1583#1601#1593
    end
    object Label14: TLabel
      Left = 677
      Top = 568
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1586#1576#1608#1606
    end
    object Panel2: TPanel
      Left = 168
      Top = 8
      Width = 649
      Height = 57
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Caption = #1575#1604#1576#1581#1579' '#1575#1604#1587#1585#1610#1593
      TabOrder = 0
      object Label1: TLabel
        Left = 572
        Top = 24
        Width = 37
        Height = 13
        Caption = #1575#1604#1589#1606#1600#1600#1600#1601
      end
      object Label2: TLabel
        Left = 219
        Top = 24
        Width = 38
        Height = 13
        Caption = #1575#1604#1606#1600#1600#1600#1600#1600#1608#1593
      end
      object ComboBox1: TComboBox
        Left = 408
        Top = 24
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = ComboBox1Change
      end
      object ComboBox2: TComboBox
        Left = 64
        Top = 24
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        OnChange = ComboBox2Change
      end
    end
    object DBGrid1: TDBGrid
      Left = 408
      Top = 93
      Width = 513
      Height = 250
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
          Width = 176
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SALE_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
          Width = 89
          Visible = True
        end>
    end
    object DBEdit4: TDBEdit
      Left = 392
      Top = 568
      Width = 121
      Height = 21
      DataField = 'INPUT_DATE'
      DataSource = DataSource11
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 408
      Top = 352
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
      OnChange = Edit1Change
    end
    object DateTimePicker1: TDateTimePicker
      Left = 391
      Top = 568
      Width = 123
      Height = 21
      Date = 39217.780600763880000000
      Time = 39217.780600763880000000
      TabOrder = 3
      OnChange = DateTimePicker1Change
    end
    object DBEdit5: TDBEdit
      Left = 489
      Top = 416
      Width = 121
      Height = 21
      DataField = 'SALE_PRICE'
      DataSource = DataSource8
      TabOrder = 5
    end
    object Button2: TButton
      Left = 752
      Top = 472
      Width = 75
      Height = 25
      Caption = #1573#1590#1575#1601#1577' '#1604#1604#1601#1575#1578#1608#1585#1577
      TabOrder = 6
      OnClick = Button2Click
    end
    object DBEdit6: TDBEdit
      Left = 198
      Top = 564
      Width = 121
      Height = 21
      DataField = 'PAID_VALUE'
      DataSource = DataSource11
      TabOrder = 7
      OnChange = DBEdit6Change
    end
    object DBEdit7: TDBEdit
      Left = 8
      Top = 564
      Width = 121
      Height = 21
      DataField = 'REMAINING_VALUE'
      DataSource = DataSource11
      TabOrder = 8
    end
    object RadioButton1: TRadioButton
      Left = 192
      Top = 528
      Width = 54
      Height = 17
      Caption = #1606#1602#1600#1600#1583#1610
      Enabled = False
      TabOrder = 9
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 80
      Top = 528
      Width = 57
      Height = 17
      Caption = #1570#1580#1600#1600#1604
      Enabled = False
      TabOrder = 10
      OnClick = RadioButton2Click
    end
    object Button3: TButton
      Left = 152
      Top = 597
      Width = 75
      Height = 25
      Caption = #1573#1606#1607#1575#1569
      Enabled = False
      TabOrder = 11
      OnClick = Button3Click
    end
    object DBNavigator1: TDBNavigator
      Left = 96
      Top = 448
      Width = 224
      Height = 25
      DataSource = DataSource5
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Insert record'
        #1581#1584#1601' '#1605#1606' '#1575#1604#1601#1575#1578#1608#1585#1577
        #1578#1593#1583#1610#1604
        #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
        #1573#1604#1594#1575#1569' '#1575#1604#1578#1593#1583#1610#1604
        'Refresh data')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object DBComboBox1: TDBComboBox
      Left = 552
      Top = 568
      Width = 121
      Height = 21
      DataField = 'CUSTOMER_NAME'
      DataSource = DataSource11
      ItemHeight = 13
      TabOrder = 13
    end
    object DBEdit9: TDBEdit
      Left = 832
      Top = 600
      Width = 121
      Height = 21
      DataField = 'QUANTITY'
      DataSource = DataSource14
      TabOrder = 14
      Visible = False
    end
    object Button4: TButton
      Left = 288
      Top = 600
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1577' '#1601#1575#1578#1608#1585#1577
      TabOrder = 15
      OnClick = Button4Click
    end
  end
  object Button1: TButton
    Left = 584
    Top = 480
    Width = 75
    Height = 25
    Caption = #1585#1580#1608#1593
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 822
    Top = 360
    Width = 121
    Height = 21
    DataField = 'KIND'
    DataSource = DataSource8
    Enabled = False
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 631
    Top = 360
    Width = 121
    Height = 21
    DataField = 'NAME'
    DataSource = DataSource8
    Enabled = False
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 727
    Top = 424
    Width = 121
    Height = 21
    DataField = 'QUANTITY'
    DataSource = DataSource8
    TabOrder = 5
  end
  object DBEdit8: TDBEdit
    Left = 152
    Top = 496
    Width = 121
    Height = 21
    DataField = 'TOTAL_BILL_PRICE'
    DataSource = DataSource11
    ReadOnly = True
    TabOrder = 6
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 101
    Width = 393
    Height = 345
    DataSource = DataSource5
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid2DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM'
        Title.Alignment = taCenter
        Title.Caption = #1578
        Width = 20
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'KIND'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1589#1606#1601
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NAME'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1606#1608#1593
        Width = 120
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
      end>
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TYPES'
      'where kind like :var1 ')
    Left = 48
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TYPES.NAME'
      Required = True
      Size = 30
    end
    object IBQuery1KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TYPES.NUM'
      Required = True
    end
    object IBQuery1SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'TYPES.SALE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 80
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 80
    Top = 48
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct( KIND) from TYPES'
      'order by kind')
    Left = 48
    Top = 48
    object IBQuery2KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from TYPES'
      'where kind=:var1'
      'order by name')
    Left = 48
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery3NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TYPES.NAME'
      Required = True
      Size = 30
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 80
    Top = 80
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TYPES'
      'where kind=:var1 and name like :var2 '
      'order by name')
    Left = 48
    Top = 112
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
    object IBQuery4NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TYPES.NAME'
      Required = True
      Size = 30
    end
    object IBQuery4KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
    object IBQuery4NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TYPES.NUM'
      Required = True
    end
    object IBQuery4SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'TYPES.SALE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 80
    Top = 112
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BILL')
    UpdateObject = IBUpdateSQL1
    Left = 152
    Top = 16
    object IBQuery5KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'BILL.KIND'
      Required = True
      Size = 30
    end
    object IBQuery5NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'BILL.NAME'
      Required = True
      Size = 30
    end
    object IBQuery5SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'BILL.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery5QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BILL.QUANTITY'
      Required = True
    end
    object IBQuery5NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'BILL.NUM'
      Required = True
    end
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Left = 120
    Top = 16
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  KIND,'
      '  NAME,'
      '  SALE_PRICE,'
      '  QUANTITY,'
      '  NUM'
      'from BILL '
      'where'
      '  KIND = :KIND and'
      '  NAME = :NAME and'
      '  SALE_PRICE = :SALE_PRICE and'
      '  QUANTITY = :QUANTITY and'
      '  NUM = :NUM')
    ModifySQL.Strings = (
      'update BILL'
      'set'
      '  KIND = :KIND,'
      '  NAME = :NAME,'
      '  SALE_PRICE = :SALE_PRICE,'
      '  QUANTITY = :QUANTITY,'
      '  NUM = :NUM'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM = :OLD_NUM')
    InsertSQL.Strings = (
      'insert into BILL'
      '  (KIND, NAME, SALE_PRICE, QUANTITY, NUM)'
      'values'
      '  (:KIND, :NAME, :SALE_PRICE, :QUANTITY, :NUM)')
    DeleteSQL.Strings = (
      'delete from BILL'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME and'
      '  SALE_PRICE = :OLD_SALE_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM = :OLD_NUM')
    Left = 184
    Top = 16
  end
  object IBQuery6: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY) from STORGE'
      'where kind=:var1 and name=:var2')
    Left = 952
    Top = 8
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
    object IBQuery6SUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object IBQuery7: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY) from BILL'
      'where kind=:var1 and name=:var2')
    Left = 952
    Top = 40
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
    object IBQuery7SUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object DataSource6: TDataSource
    DataSet = IBQuery6
    Left = 920
    Top = 8
  end
  object DataSource7: TDataSource
    DataSet = IBQuery7
    Left = 920
    Top = 40
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'KIND'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SALE_PRICE'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'QUANTITY'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'BILL'
    Left = 864
    Top = 8
    object IBTable1KIND: TIBStringField
      FieldName = 'KIND'
      Required = True
      Size = 30
    end
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Required = True
      Size = 30
    end
    object IBTable1SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBTable1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Required = True
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
      Required = True
    end
  end
  object DataSource8: TDataSource
    DataSet = IBTable1
    Left = 832
    Top = 8
  end
  object IBQuery8: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from BILL')
    Left = 952
    Top = 80
    object IBQuery8MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource9: TDataSource
    DataSet = IBQuery8
    Left = 920
    Top = 80
  end
  object IBQuery9: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY* SALE_PRICE) from BILL')
    Left = 152
    Top = 56
    object IBQuery9SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource10: TDataSource
    DataSet = IBQuery9
    Left = 120
    Top = 56
  end
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAID'
    Left = 64
    Top = 496
    object IBTable2NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable2PAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Size = 10
    end
    object IBTable2BILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
    end
    object IBTable2PAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Precision = 9
      Size = 3
    end
    object IBTable2TOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable2SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
    end
    object IBTable2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable2CUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Size = 30
    end
    object IBTable2REMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Precision = 9
      Size = 3
    end
  end
  object DataSource11: TDataSource
    DataSet = IBTable2
    Left = 32
    Top = 496
  end
  object IBQuery10: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(SALE_NUM) from SALES')
    Left = 144
    Top = 592
    object IBQuery10MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource12: TDataSource
    DataSet = IBQuery10
    Left = 112
    Top = 592
  end
  object IBQuery11: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from SALES')
    Left = 144
    Top = 624
    object IBQuery11MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource13: TDataSource
    DataSet = IBQuery11
    Left = 112
    Top = 624
  end
  object DataSource15: TDataSource
    DataSet = IBTable4
    Left = 432
    Top = 608
  end
  object IBQuery14: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from PROFITABLE')
    Left = 944
    Top = 528
    object IBQuery14MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource16: TDataSource
    DataSet = IBQuery14
    Left = 912
    Top = 528
  end
  object DataSource17: TDataSource
    DataSet = IBTable3
    Left = 912
    Top = 568
  end
  object IBQuery16: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from PAID')
    Left = 736
    Top = 584
    object IBQuery16MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource18: TDataSource
    DataSet = IBQuery16
    Left = 696
    Top = 584
  end
  object IBQuery17: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max( BILL_NUM) from PAID')
    Left = 736
    Top = 616
    object IBQuery17MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource19: TDataSource
    DataSet = IBQuery17
    Left = 704
    Top = 616
  end
  object IBQuery18: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID')
    UpdateObject = IBUpdateSQL5
    Left = 96
    Top = 496
    object IBQuery18NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAID.NUM'
      Required = True
    end
    object IBQuery18PAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object IBQuery18BILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object IBQuery18PAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery18TOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery18SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object IBQuery18INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object IBQuery18CUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object IBQuery18REMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL5: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NUM,'
      '  PAID_TYPE,'
      '  BILL_NUM,'
      '  PAID_VALUE,'
      '  TOTAL_BILL_PRICE,'
      '  SALE_NUM,'
      '  INPUT_DATE,'
      '  CUSTOMER_NAME'
      'from PAID '
      'where'
      '  NUM = :NUM and'
      '  PAID_TYPE = :PAID_TYPE and'
      '  BILL_NUM = :BILL_NUM and'
      '  PAID_VALUE = :PAID_VALUE and'
      '  TOTAL_BILL_PRICE = :TOTAL_BILL_PRICE and'
      '  SALE_NUM = :SALE_NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  CUSTOMER_NAME = :CUSTOMER_NAME')
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
      '  CUSTOMER_NAME = :CUSTOMER_NAME'
      'where'
      '  NUM = :OLD_NUM and'
      '  PAID_TYPE = :OLD_PAID_TYPE and'
      '  BILL_NUM = :OLD_BILL_NUM and'
      '  PAID_VALUE = :OLD_PAID_VALUE and'
      '  TOTAL_BILL_PRICE = :OLD_TOTAL_BILL_PRICE and'
      '  SALE_NUM = :OLD_SALE_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  CUSTOMER_NAME = :OLD_CUSTOMER_NAME')
    InsertSQL.Strings = (
      'insert into PAID'
      
        '  (NUM, PAID_TYPE, BILL_NUM, PAID_VALUE, TOTAL_BILL_PRICE, SALE_' +
        'NUM, INPUT_DATE, '
      '   CUSTOMER_NAME)'
      'values'
      
        '  (:NUM, :PAID_TYPE, :BILL_NUM, :PAID_VALUE, :TOTAL_BILL_PRICE, ' +
        ':SALE_NUM, '
      '   :INPUT_DATE, :CUSTOMER_NAME)')
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
      '  CUSTOMER_NAME = :OLD_CUSTOMER_NAME')
    Left = 128
    Top = 496
  end
  object IBTable3: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'SALE_NUM'
        DataType = ftInteger
      end
      item
        Name = 'BUY_PRICE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'SALE_PRICE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'GAIN'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'NUM'
        DataType = ftInteger
      end
      item
        Name = 'KIND'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'QUANTITY'
        DataType = ftInteger
      end
      item
        Name = 'NUM_IN_STORGE_HISTORY'
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'PROFITABLE'
    Left = 848
    Top = 568
    object IBTable3SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
    end
    object IBTable3BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable3SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable3GAIN: TIBBCDField
      FieldName = 'GAIN'
      Precision = 9
      Size = 3
    end
    object IBTable3NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable3KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable3NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable3QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable3NUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
    end
  end
  object IBQuery12: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE'
      'where kind=:var1 and name=:var2'
      'order by num_in_history_storge')
    UpdateObject = IBUpdateSQL2
    Left = 168
    Top = 536
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
    object IBQuery12NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE.NAME'
      Required = True
      Size = 30
    end
    object IBQuery12KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE.KIND'
      Required = True
      Size = 30
    end
    object IBQuery12NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE.NUM'
      Required = True
    end
    object IBQuery12INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE.INPUT_DATE'
      Required = True
    end
    object IBQuery12BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery12QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE.QUANTITY'
      Required = True
    end
    object IBQuery12NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object IBQuery12SOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'STORGE.SOLD'
    end
  end
  object DataSource14: TDataSource
    DataSet = IBQuery12
    Left = 144
    Top = 536
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
    Left = 192
    Top = 536
  end
  object IBTable4: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SALES'
    Left = 464
    Top = 608
    object IBTable4NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable4KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable4QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable4SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
    end
    object IBTable4SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable4NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable4TOTAL_PIECE_PRICE: TIBBCDField
      FieldName = 'TOTAL_PIECE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBTable5: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DEBTS'
    Left = 952
    Top = 176
    object IBTable5SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
    end
    object IBTable5DEBT_VALUE: TIBBCDField
      FieldName = 'DEBT_VALUE'
      Precision = 9
      Size = 3
    end
    object IBTable5NUM: TIntegerField
      FieldName = 'NUM'
    end
  end
  object DataSource20: TDataSource
    DataSet = IBTable5
    Left = 920
    Top = 176
  end
  object IBQuery13: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from DEBTS')
    Left = 952
    Top = 208
    object IBQuery13MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource21: TDataSource
    DataSet = IBQuery13
    Left = 920
    Top = 216
  end
  object IBQuery15: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SALES, PAID'
      'where'
      '(sales.sale_num =:var1) and (paid.sale_num =:var1)')
    Left = 352
    Top = 624
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery15NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SALES.NAME'
      Required = True
      Size = 30
    end
    object IBQuery15KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'SALES.KIND'
      Required = True
      Size = 30
    end
    object IBQuery15QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'SALES.QUANTITY'
      Required = True
    end
    object IBQuery15SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'SALES.SALE_NUM'
      Required = True
    end
    object IBQuery15SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'SALES.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery15NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'SALES.NUM'
      Required = True
    end
    object IBQuery15TOTAL_PIECE_PRICE: TIBBCDField
      FieldName = 'TOTAL_PIECE_PRICE'
      Origin = 'SALES.TOTAL_PIECE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery15NUM1: TIntegerField
      FieldName = 'NUM1'
      Origin = 'PAID.NUM'
      Required = True
    end
    object IBQuery15PAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object IBQuery15BILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object IBQuery15PAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery15TOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery15SALE_NUM1: TIntegerField
      FieldName = 'SALE_NUM1'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object IBQuery15INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object IBQuery15CUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object IBQuery15REMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object DataSource22: TDataSource
    DataSet = IBQuery15
    Left = 320
    Top = 624
  end
  object IBQuery19: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 480
    Top = 328
  end
  object DataSource23: TDataSource
    DataSet = IBQuery19
    Left = 448
    Top = 328
  end
  object customers_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CUSTOMERS'
      'order by cus_name')
    Left = 488
    Top = 488
    object customers_namesCUS_NAME: TIBStringField
      FieldName = 'CUS_NAME'
      Origin = 'CUSTOMERS.CUS_NAME'
      Required = True
      Size = 30
    end
    object customers_namesNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'CUSTOMERS.NUM'
      Required = True
    end
  end
  object DataSource24: TDataSource
    DataSet = customers_names
    Left = 456
    Top = 488
  end
  object IBTable6: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DEBTS_NAMES'
    Left = 64
    Top = 544
    object IBTable6NAME: TIBStringField
      FieldName = 'NAME'
    end
  end
  object DataSource25: TDataSource
    DataSet = IBTable6
    Left = 32
    Top = 544
  end
  object IBQuery_debts_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DEBTS_NAMES'
      'where name=:var1')
    Left = 64
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery_debts_namesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DEBTS_NAMES.NAME'
      Required = True
    end
  end
  object DataSource26: TDataSource
    DataSet = IBQuery_debts_names
    Left = 32
    Top = 600
  end
end
