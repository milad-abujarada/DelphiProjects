object Form42: TForm42
  Left = 137
  Top = 89
  Width = 780
  Height = 630
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1576#1610#1593' '#1605#1606' '#1575#1604#1576#1590#1575#1593#1577' '#1575#1604#1605#1581#1608#1604#1607
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
    Left = 7
    Top = 6
    Width = 761
    Height = 585
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 718
      Top = 53
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label2: TLabel
      Left = 553
      Top = 56
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label3: TLabel
      Left = 699
      Top = 112
      Width = 61
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1576#1575#1593#1607
    end
    object Label4: TLabel
      Left = 335
      Top = 51
      Width = 60
      Height = 13
      Caption = #1605#1603#1575#1606' '#1575#1604#1578#1581#1608#1610#1604
    end
    object Label5: TLabel
      Left = 138
      Top = 56
      Width = 62
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1581#1608#1604#1607
    end
    object Label6: TLabel
      Left = 529
      Top = 112
      Width = 44
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
    end
    object Label7: TLabel
      Left = 683
      Top = 472
      Width = 49
      Height = 13
      Caption = #1602#1610#1605#1577' '#1575#1604#1605#1576#1575#1593
    end
    object Label8: TLabel
      Left = 521
      Top = 472
      Width = 35
      Height = 13
      Caption = #1575#1604#1605#1583#1601#1608#1593
    end
    object Label9: TLabel
      Left = 192
      Top = 469
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label10: TLabel
      Left = 355
      Top = 470
      Width = 34
      Height = 13
      Caption = #1575#1604#1605#1578#1576#1602#1610
    end
    object Label11: TLabel
      Left = 698
      Top = 510
      Width = 25
      Height = 13
      Caption = #1575#1604#1576#1610#1575#1606
    end
    object DBComboBox1: TDBComboBox
      Left = 592
      Top = 48
      Width = 123
      Height = 21
      DataField = 'KIND'
      DataSource = DataSource5
      ItemHeight = 13
      TabOrder = 0
      OnChange = DBComboBox1Change
    end
    object DBComboBox2: TDBComboBox
      Left = 397
      Top = 48
      Width = 122
      Height = 21
      DataField = 'NAME'
      DataSource = DataSource5
      ItemHeight = 13
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 576
      Top = 104
      Width = 121
      Height = 21
      DataField = 'QUANTITY'
      DataSource = DataSource5
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 8
      Top = 48
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 400
      Top = 104
      Width = 121
      Height = 21
      DataField = 'SALE_PRICE'
      DataSource = DataSource5
      TabOrder = 4
    end
    object DBGrid1: TDBGrid
      Left = 64
      Top = 168
      Width = 665
      Height = 241
      DataSource = DataSource7
      TabOrder = 5
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
          Width = 182
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 189
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577
          Width = 148
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SALE_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
          Width = 105
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 256
      Top = 136
      Width = 115
      Height = 25
      Caption = #1573#1590#1575#1601#1577' '#1604#1601#1575#1578#1608#1585#1577' '#1575#1604#1605#1576#1610#1593#1575#1578
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 480
      Top = 552
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      Enabled = False
      TabOrder = 7
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 240
      Top = 552
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 8
      OnClick = Button3Click
    end
    object DBNavigator1: TDBNavigator
      Left = 272
      Top = 424
      Width = 222
      Height = 25
      DataSource = DataSource7
      VisibleButtons = [nbDelete, nbCancel]
      TabOrder = 9
    end
    object Edit2: TEdit
      Left = 560
      Top = 466
      Width = 121
      Height = 21
      TabOrder = 10
    end
    object Edit3: TEdit
      Left = 396
      Top = 466
      Width = 121
      Height = 21
      TabOrder = 11
      OnChange = Edit3Change
    end
    object DateTimePicker1: TDateTimePicker
      Left = 62
      Top = 464
      Width = 126
      Height = 21
      Date = 39278.802809965280000000
      Time = 39278.802809965280000000
      TabOrder = 12
    end
    object ComboBox1: TComboBox
      Left = 205
      Top = 48
      Width = 124
      Height = 21
      ItemHeight = 13
      TabOrder = 13
    end
    object Button4: TButton
      Left = 392
      Top = 136
      Width = 114
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 14
      OnClick = Button4Click
    end
    object Edit4: TEdit
      Left = 229
      Top = 464
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 15
    end
    object Memo1: TMemo
      Left = 228
      Top = 500
      Width = 452
      Height = 34
      TabOrder = 16
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select name from types where kind=:var1')
    Left = 88
    Top = 8
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
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct( KIND) from TYPES'
      'order by kind')
    Left = 272
    Top = 8
    object IBQuery2KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 56
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 240
    Top = 8
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(PLACE) from MOVED_STORGE')
    Left = 184
    Top = 8
    object IBQuery3PLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'MOVED_STORGE.PLACE'
      Required = True
      Size = 30
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 152
    Top = 8
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 328
    Top = 8
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY) from MOVED_STORGE'
      'where (kind=:var1) and (name=:var2) and (place=:var3)')
    Left = 360
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
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object IBQuery4SUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object DataSource5: TDataSource
    DataSet = IBTable1
    Left = 31
    Top = 112
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'BILL'
    Left = 63
    Top = 112
    object IBTable1KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
  end
  object DataSource6: TDataSource
    DataSet = IBQuery5
    Left = 175
    Top = 96
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select sum(QUANTITY) from BILL where (kind=:var1) and (name=:var' +
        '2)')
    Left = 207
    Top = 96
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
    object IBQuery5SUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object data_to_dbgrid: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = data_to_dbgridAfterDelete
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from BILL')
    UpdateObject = IBUpdateSQL1
    Left = 63
    Top = 144
  end
  object DataSource7: TDataSource
    DataSet = data_to_dbgrid
    Left = 31
    Top = 144
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
    Left = 95
    Top = 144
  end
  object DataSource8: TDataSource
    DataSet = max_bill
    Left = 431
    Top = 8
  end
  object max_bill: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from BILL')
    Left = 464
    Top = 8
    object max_billMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource9: TDataSource
    DataSet = sum_all_price
    Left = 31
    Top = 80
  end
  object sum_all_price: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY* SALE_PRICE) from BILL')
    Left = 63
    Top = 80
    object sum_all_priceSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource10: TDataSource
    DataSet = edit_in_moved_storge
    Left = 47
    Top = 424
  end
  object edit_in_moved_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MOVED_STORGE'
      'where (kind=:var1) and (name=:var2) and (place=:var3)')
    UpdateObject = IBUpdateSQL2
    Left = 79
    Top = 424
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
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object edit_in_moved_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'MOVED_STORGE.NAME'
      Required = True
      Size = 30
    end
    object edit_in_moved_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'MOVED_STORGE.KIND'
      Required = True
      Size = 30
    end
    object edit_in_moved_storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'MOVED_STORGE.NUM'
      Required = True
    end
    object edit_in_moved_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'MOVED_STORGE.INPUT_DATE'
      Required = True
    end
    object edit_in_moved_storgeMOVED_DATE: TDateField
      FieldName = 'MOVED_DATE'
      Origin = 'MOVED_STORGE.MOVED_DATE'
      Required = True
    end
    object edit_in_moved_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'MOVED_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_moved_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'MOVED_STORGE.QUANTITY'
      Required = True
    end
    object edit_in_moved_storgeNUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'MOVED_STORGE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
    object edit_in_moved_storgePLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'MOVED_STORGE.PLACE'
      Required = True
      Size = 30
    end
    object edit_in_moved_storgeMOVED_NUM: TIntegerField
      FieldName = 'MOVED_NUM'
      Origin = 'MOVED_STORGE.MOVED_NUM'
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
    Left = 111
    Top = 424
  end
  object DataSource11: TDataSource
    Left = 47
    Top = 456
  end
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAIED_FROM_MOVED_STORGE'
    Left = 79
    Top = 456
    object IBTable2KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable2NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable2QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable2BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable2SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable2PLACE: TIBStringField
      FieldName = 'PLACE'
    end
    object IBTable2NUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
    end
  end
  object DataSource12: TDataSource
    DataSet = IBTable3
    Left = 47
    Top = 488
  end
  object IBTable3: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAIED_TO_MOVED_STORGE'
    Left = 79
    Top = 488
    object IBTable3PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable3REMAINING: TIBBCDField
      FieldName = 'REMAINING'
      Precision = 9
      Size = 3
    end
    object IBTable3INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable3NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable3PLACE: TIBStringField
      FieldName = 'PLACE'
    end
    object IBTable3BAYAN: TIBStringField
      FieldName = 'BAYAN'
      Size = 100
    end
  end
end
