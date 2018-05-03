object Form37: TForm37
  Left = 173
  Top = 91
  Width = 739
  Height = 581
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1581#1608#1610#1604' '#1575#1604#1576#1590#1575#1593#1577' '
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
    Left = 10
    Top = 9
    Width = 711
    Height = 528
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 678
      Top = 32
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label2: TLabel
      Left = 523
      Top = 33
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label3: TLabel
      Left = 322
      Top = 33
      Width = 68
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1578#1608#1601#1585#1577
    end
    object Label4: TLabel
      Left = 132
      Top = 32
      Width = 62
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1581#1608#1604#1607
    end
    object Label5: TLabel
      Left = 492
      Top = 459
      Width = 62
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1575#1604#1578#1581#1608#1610#1604
    end
    object Label6: TLabel
      Left = 296
      Top = 458
      Width = 60
      Height = 13
      Caption = #1605#1603#1575#1606' '#1575#1604#1578#1581#1608#1610#1604
    end
    object ComboBox1: TComboBox
      Left = 552
      Top = 29
      Width = 122
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 397
      Top = 29
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox2Change
    end
    object Edit1: TEdit
      Left = 198
      Top = 29
      Width = 121
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 2
    end
    object Button1: TButton
      Left = 317
      Top = 65
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 3
      OnClick = Button1Click
    end
    object DBGrid1: TDBGrid
      Left = 40
      Top = 97
      Width = 633
      Height = 306
      DataSource = DataSource8
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
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
          Title.Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1581#1608#1604#1607
          Width = 108
          Visible = True
        end>
    end
    object Button2: TButton
      Left = 232
      Top = 499
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 5
      OnClick = Button2Click
    end
    object DBNavigator1: TDBNavigator
      Left = 245
      Top = 409
      Width = 222
      Height = 25
      DataSource = DataSource8
      VisibleButtons = [nbDelete, nbCancel]
      TabOrder = 6
    end
    object DateTimePicker1: TDateTimePicker
      Left = 366
      Top = 454
      Width = 122
      Height = 21
      Date = 39259.802105567130000000
      Time = 39259.802105567130000000
      TabOrder = 7
    end
    object ComboBox3: TComboBox
      Left = 165
      Top = 454
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 8
    end
    object Button3: TButton
      Left = 407
      Top = 498
      Width = 75
      Height = 25
      Caption = #1573#1606#1607#1575#1569
      Enabled = False
      TabOrder = 9
      OnClick = Button3Click
    end
  end
  object Edit2: TEdit
    Left = 18
    Top = 38
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct( KIND) from TYPES'
      'order by kind')
    Left = 32
    Top = 72
    object IBQuery2KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 64
    Top = 72
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from TYPES where kind=:var1')
    Left = 33
    Top = 105
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 66
    Top = 105
  end
  object total_quantity: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY) from STORGE'
      'where (kind=:var1) and (name=:var2)')
    Left = 656
    Top = 72
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
    object total_quantitySUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object DataSource3: TDataSource
    DataSet = total_quantity
    Left = 688
    Top = 72
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TEMP_MOVED'
    Left = 264
    Top = 72
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
  end
  object DataSource4: TDataSource
    DataSet = IBTable1
    Left = 296
    Top = 72
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from TEMP_MOVED')
    Left = 122
    Top = 73
    object IBQuery3MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource5: TDataSource
    DataSet = IBQuery3
    Left = 154
    Top = 73
  end
  object total_moved_quantity: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY) from TEMP_MOVED'
      'where '
      '(kind=:var1) and (name=:var2)')
    Left = 498
    Top = 65
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
  end
  object DataSource6: TDataSource
    DataSet = total_moved_quantity
    Left = 530
    Top = 65
  end
  object DataSource7: TDataSource
    DataSet = IBTable2
    Left = 514
    Top = 505
  end
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'MOVED_STORGE'
    Left = 546
    Top = 505
    object IBTable2NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable2KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable2NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable2MOVED_DATE: TDateField
      FieldName = 'MOVED_DATE'
    end
    object IBTable2BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable2QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable2NUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
    end
    object IBTable2PLACE: TIBStringField
      FieldName = 'PLACE'
      Size = 30
    end
  end
  object DataSource8: TDataSource
    DataSet = view_in_dbgrid
    Left = 98
    Top = 441
  end
  object view_in_dbgrid: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TEMP_MOVED')
    UpdateObject = IBUpdateSQL1
    Left = 66
    Top = 441
    object view_in_dbgridNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TEMP_MOVED.NAME'
      Required = True
      Size = 30
    end
    object view_in_dbgridKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TEMP_MOVED.KIND'
      Required = True
      Size = 30
    end
    object view_in_dbgridQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'TEMP_MOVED.QUANTITY'
      Required = True
    end
    object view_in_dbgridNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TEMP_MOVED.NUM'
      Required = True
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  QUANTITY,'
      '  NUM'
      'from TEMP_MOVED '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  QUANTITY = :QUANTITY and'
      '  NUM = :NUM')
    ModifySQL.Strings = (
      'update TEMP_MOVED'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  QUANTITY = :QUANTITY,'
      '  NUM = :NUM'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM = :OLD_NUM')
    InsertSQL.Strings = (
      'insert into TEMP_MOVED'
      '  (NAME, KIND, QUANTITY, NUM)'
      'values'
      '  (:NAME, :KIND, :QUANTITY, :NUM)')
    DeleteSQL.Strings = (
      'delete from TEMP_MOVED'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM = :OLD_NUM')
    Left = 34
    Top = 441
  end
  object discount_from_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE'
      'where '
      '(kind=:var1) and (name=:var2)')
    UpdateObject = IBUpdateSQL2
    Left = 546
    Top = 473
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
    object discount_from_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE.NAME'
      Required = True
      Size = 30
    end
    object discount_from_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE.KIND'
      Required = True
      Size = 30
    end
    object discount_from_storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE.NUM'
      Required = True
    end
    object discount_from_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE.INPUT_DATE'
      Required = True
    end
    object discount_from_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object discount_from_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE.QUANTITY'
      Required = True
    end
    object discount_from_storgeNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object discount_from_storgeSOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'STORGE.SOLD'
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
      '  NUM_IN_HISTORY_STORGE,'
      '  SOLD'
      'from STORGE '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  QUANTITY = :QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE and'
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
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE,'
      '  SOLD = :SOLD'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  SOLD = :OLD_SOLD')
    InsertSQL.Strings = (
      'insert into STORGE'
      
        '  (NAME, KIND, NUM, INPUT_DATE, BUY_PRICE, QUANTITY, NUM_IN_HIST' +
        'ORY_STORGE, '
      '   SOLD)'
      'values'
      
        '  (:NAME, :KIND, :NUM, :INPUT_DATE, :BUY_PRICE, :QUANTITY, :NUM_' +
        'IN_HISTORY_STORGE, '
      '   :SOLD)')
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
      '  SOLD = :OLD_SOLD')
    Left = 514
    Top = 473
  end
  object DataSource9: TDataSource
    DataSet = discount_from_storge
    Left = 578
    Top = 473
  end
  object save_in_moved: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'KIND'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'INPUT_DATE'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'MOVED_DATE'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'BUY_PRICE'
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
        Name = 'NUM_IN_STORGE_HISTORY'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PLACE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MOVED_NUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'MOVED_STORGE'
    Left = 162
    Top = 505
    object save_in_movedNAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object save_in_movedKIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object save_in_movedNUM: TIntegerField
      FieldName = 'NUM'
    end
    object save_in_movedINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object save_in_movedMOVED_DATE: TDateField
      FieldName = 'MOVED_DATE'
    end
    object save_in_movedBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object save_in_movedQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object save_in_movedNUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
    end
    object save_in_movedPLACE: TIBStringField
      FieldName = 'PLACE'
      Size = 30
    end
    object save_in_movedMOVED_NUM: TIntegerField
      FieldName = 'MOVED_NUM'
      Required = True
    end
  end
  object DataSource10: TDataSource
    DataSet = save_in_moved
    Left = 186
    Top = 505
  end
  object DataSource11: TDataSource
    DataSet = num_moved
    Left = 522
    Top = 433
  end
  object num_moved: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from MOVED_STORGE')
    Left = 554
    Top = 433
    object num_movedMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource12: TDataSource
    DataSet = places
    Left = 98
    Top = 481
  end
  object places: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(PLACE) from MOVED_STORGE')
    Left = 66
    Top = 481
    object placesPLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'MOVED_STORGE.PLACE'
      Required = True
      Size = 30
    end
  end
  object moved_num: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(MOVED_NUM) from MOVED_STORGE')
    Left = 682
    Top = 433
    object moved_numMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource13: TDataSource
    DataSet = moved_num
    Left = 650
    Top = 433
  end
end
