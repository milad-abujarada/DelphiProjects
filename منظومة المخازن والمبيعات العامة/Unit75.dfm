object Form75: TForm75
  Left = 316
  Top = 107
  Width = 412
  Height = 231
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1593#1583#1610#1604' '#1589#1606#1601' '#1571#1608' '#1606#1608#1593
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
    Top = 7
    Width = 393
    Height = 185
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 172
      Top = 56
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label2: TLabel
      Left = 351
      Top = 56
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object ComboBox1: TComboBox
      Left = 203
      Top = 54
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 19
      Top = 54
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox2Change
    end
    object Button1: TButton
      Left = 248
      Top = 144
      Width = 75
      Height = 25
      Caption = #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
      Enabled = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 80
      Top = 144
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 3
      OnClick = Button2Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 16
      Top = 160
      Width = 186
      Height = 21
      Date = 39455.586027731480000000
      Time = 39455.586027731480000000
      TabOrder = 4
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = kind
    Left = 23
    Top = 7
  end
  object DataSource2: TDataSource
    DataSet = types
    Left = 24
    Top = 40
  end
  object DataSource3: TDataSource
    DataSet = moved_storge
    Left = 23
    Top = 71
  end
  object DataSource4: TDataSource
    DataSet = storge
    Left = 23
    Top = 103
  end
  object DataSource5: TDataSource
    DataSet = history_storge
    Left = 23
    Top = 143
  end
  object kind: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select KIND from TYPES')
    Left = 55
    Top = 7
    object kindKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
  end
  object types: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from TYPES'
      'where KIND=:var1')
    Left = 55
    Top = 39
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object moved_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MOVED_STORGE'
      
        'where (NUM_IN_STORGE_HISTORY=:var1) and (KIND=:var2) and (NAME=:' +
        'var3)')
    UpdateObject = IBUpdateSQL1
    Left = 55
    Top = 71
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
    object moved_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'MOVED_STORGE.KIND'
      Required = True
      Size = 30
    end
    object moved_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'MOVED_STORGE.NAME'
      Required = True
      Size = 30
    end
    object moved_storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'MOVED_STORGE.NUM'
      Required = True
    end
    object moved_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'MOVED_STORGE.INPUT_DATE'
      Required = True
    end
    object moved_storgeMOVED_DATE: TDateField
      FieldName = 'MOVED_DATE'
      Origin = 'MOVED_STORGE.MOVED_DATE'
      Required = True
    end
    object moved_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'MOVED_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object moved_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'MOVED_STORGE.QUANTITY'
      Required = True
    end
    object moved_storgeNUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'MOVED_STORGE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
    object moved_storgePLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'MOVED_STORGE.PLACE'
      Required = True
      Size = 30
    end
    object moved_storgeMOVED_NUM: TIntegerField
      FieldName = 'MOVED_NUM'
      Origin = 'MOVED_STORGE.MOVED_NUM'
      Required = True
    end
  end
  object storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select KIND, NAME from STORGE'
      
        'where (NUM_IN_HISTORY_STORGE=:var1)and(kind=:var2) and(name=:var' +
        '3)')
    UpdateObject = IBUpdateSQL2
    Left = 56
    Top = 104
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
    object storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE.KIND'
      Required = True
      Size = 30
    end
    object storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE.NAME'
      Required = True
      Size = 30
    end
  end
  object history_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select KIND, NAME from STORGE_HISTORY'
      'where (NUM=:var1) and (kind=:var2) and (name=:var3)')
    UpdateObject = IBUpdateSQL3
    Left = 55
    Top = 143
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
    object history_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE_HISTORY.KIND'
      Required = True
      Size = 30
    end
    object history_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE_HISTORY.NAME'
      Required = True
      Size = 30
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
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
    Left = 87
    Top = 71
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
      '  SOLD,'
      '  DOLLAR_PRICE,'
      '  TOTAL_DOLLAR_PRICE,'
      '  CHANGE_PRICE'
      'from STORGE '
      'where'
      '  KIND = :KIND and'
      '  NAME = :NAME')
    ModifySQL.Strings = (
      'update STORGE'
      'set'
      '  KIND = :KIND,'
      '  NAME = :NAME'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME')
    InsertSQL.Strings = (
      'insert into STORGE'
      '  (KIND, NAME)'
      'values'
      '  (:KIND, :NAME)')
    DeleteSQL.Strings = (
      'delete from STORGE'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME')
    Left = 87
    Top = 103
  end
  object IBUpdateSQL3: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  INPUT_DATE,'
      '  BUY_PRICE,'
      '  QUANTITY,'
      '  CHANGE_PRICE,'
      '  TOTAL_DOLLAR_PRICE,'
      '  DOLLAR_PRICE'
      'from STORGE_HISTORY '
      'where'
      '  KIND = :KIND and'
      '  NAME = :NAME')
    ModifySQL.Strings = (
      'update STORGE_HISTORY'
      'set'
      '  KIND = :KIND,'
      '  NAME = :NAME'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME')
    InsertSQL.Strings = (
      'insert into STORGE_HISTORY'
      '  (KIND, NAME)'
      'values'
      '  (:KIND, :NAME)')
    DeleteSQL.Strings = (
      'delete from STORGE_HISTORY'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME')
    Left = 87
    Top = 143
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
      'from TEMP_STORGE '
      'where'
      '  KIND = :KIND and'
      '  NAME = :NAME')
    ModifySQL.Strings = (
      'update TEMP_STORGE'
      'set'
      '  KIND = :KIND,'
      '  NAME = :NAME'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME')
    InsertSQL.Strings = (
      'insert into TEMP_STORGE'
      '  (KIND, NAME)'
      'values'
      '  (:KIND, :NAME)')
    DeleteSQL.Strings = (
      'delete from TEMP_STORGE'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME')
    Left = 295
    Top = 7
  end
  object temp_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select KIND, NAME from TEMP_STORGE where (NUM_IN_HISTORY_STORGE=' +
        ':var1)and(KIND=:var2)and(NAME=:var3)')
    UpdateObject = IBUpdateSQL4
    Left = 264
    Top = 8
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
    object temp_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TEMP_STORGE.KIND'
      Required = True
      Size = 30
    end
    object temp_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TEMP_STORGE.NAME'
      Required = True
      Size = 30
    end
  end
  object DataSource6: TDataSource
    DataSet = temp_storge
    Left = 231
    Top = 7
  end
  object DataSource7: TDataSource
    DataSet = same_in_proftable
    Left = 231
    Top = 39
  end
  object same_in_proftable: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY) from PROFITABLE'
      'where'
      '( NUM_IN_STORGE_HISTORY=:var1) and(KIND=:var2) and(NAME=:var3)')
    Left = 263
    Top = 39
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInput
      end>
    object same_in_proftableSUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object DataSource8: TDataSource
    DataSet = same_in_storge
    Left = 231
    Top = 71
  end
  object same_in_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select sum(QUANTITY) from STORGE where (kind=:var1)and(name=:var' +
        '2)'
      'and (NUM_IN_HISTORY_STORGE<>:var3)')
    Left = 263
    Top = 71
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
    object same_in_storgeSUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object DataSource9: TDataSource
    DataSet = profitable
    Left = 231
    Top = 103
  end
  object profitable: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROFITABLE'
      
        'where (NUM_IN_STORGE_HISTORY=:var1)and(KIND=:var2)and(NAME=:var3' +
        ')')
    UpdateObject = IBUpdateSQL5
    Left = 263
    Top = 103
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
  object IBUpdateSQL5: TIBUpdateSQL
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
    Left = 295
    Top = 103
  end
  object DataSource10: TDataSource
    DataSet = kin_typ_storge
    Left = 231
    Top = 135
  end
  object kin_typ_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE'
      'where (kind=:var1)and(name=:var2)'
      'order by NUM_IN_HISTORY_STORGE')
    UpdateObject = IBUpdateSQL6
    Left = 263
    Top = 135
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
    object kin_typ_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE.NAME'
      Required = True
      Size = 30
    end
    object kin_typ_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE.KIND'
      Required = True
      Size = 30
    end
    object kin_typ_storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE.NUM'
      Required = True
    end
    object kin_typ_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE.INPUT_DATE'
      Required = True
    end
    object kin_typ_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object kin_typ_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE.QUANTITY'
      Required = True
    end
    object kin_typ_storgeNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object kin_typ_storgeSOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'STORGE.SOLD'
    end
    object kin_typ_storgeDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object kin_typ_storgeTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object kin_typ_storgeCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL6: TIBUpdateSQL
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
    Left = 295
    Top = 135
  end
  object DataSource11: TDataSource
    DataSet = IBTable1
    Left = 231
    Top = 167
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PROFITABLE'
    Left = 263
    Top = 167
    object IBTable1SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
    end
    object IBTable1BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable1SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable1GAIN: TIBBCDField
      FieldName = 'GAIN'
      Precision = 9
      Size = 3
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable1NUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
    end
  end
  object max_no: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from PROFITABLE')
    Left = 167
    Top = 167
    object max_noMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource12: TDataSource
    DataSet = max_no
    Left = 135
    Top = 167
  end
  object DataSource13: TDataSource
    DataSet = sale_num1
    Left = 343
    Top = 111
  end
  object sale_num1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(SALE_NUM) from PROFITABLE'
      
        'where (sale_num not in (select sale_num from profitable where (n' +
        'um_in_storge_history=:var1)and(kind=:var2)and (name=:var3)))and ' +
        '(sale_num>(select max(sale_num) from profitable where (num_in_st' +
        'orge_history=:var1)and(kind=:var2)and(name=:var3) )and (kind=:va' +
        'r2)and (name=:var3))')
    Left = 375
    Top = 111
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
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object sale_num1SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PROFITABLE.SALE_NUM'
      Required = True
    end
  end
  object DataSource14: TDataSource
    DataSet = edit_storge
    Left = 104
    Top = 8
  end
  object DataSource15: TDataSource
    DataSet = sum_moved_storge
    Left = 104
    Top = 40
  end
  object DataSource16: TDataSource
    DataSet = IBTable2
    Left = 336
    Top = 8
  end
  object edit_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from STORGE'
      
        'where (NUM_IN_HISTORY_STORGE=:var1) and (kind=:var2) and (name=:' +
        'var3)')
    UpdateObject = IBUpdateSQL7
    Left = 135
    Top = 7
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
    object edit_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE.NAME'
      Required = True
      Size = 30
    end
    object edit_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE.KIND'
      Required = True
      Size = 30
    end
    object edit_storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE.NUM'
      Required = True
    end
    object edit_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE.INPUT_DATE'
      Required = True
    end
    object edit_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE.QUANTITY'
      Required = True
    end
    object edit_storgeNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object edit_storgeSOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'STORGE.SOLD'
    end
    object edit_storgeDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object edit_storgeTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object edit_storgeCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object sum_moved_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY) from MOVED_STORGE'
      
        'where (NUM_IN_STORGE_HISTORY=:var1)and(KIND=:var2)and(NAME=:var3' +
        ')')
    Left = 136
    Top = 40
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
    object sum_moved_storgeSUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'STORGE'
    Left = 367
    Top = 7
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
    object IBTable2BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable2QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable2NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
    end
    object IBTable2SOLD: TIntegerField
      FieldName = 'SOLD'
    end
    object IBTable2DOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable2TOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable2CHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object data_from_storge_history: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE_HISTORY'
      'where (NUM=:var1)and(KIND=:var2)and(NAME=:var3)')
    Left = 367
    Top = 47
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
  object DataSource17: TDataSource
    DataSet = data_from_storge_history
    Left = 335
    Top = 47
  end
  object IBUpdateSQL7: TIBUpdateSQL
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
    Left = 167
    Top = 7
  end
  object DataSource18: TDataSource
    DataSet = max_storge
    Left = 335
    Top = 79
  end
  object max_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from STORGE')
    Left = 367
    Top = 79
  end
  object DataSource19: TDataSource
    DataSet = IBTable3
    Left = 135
    Top = 135
  end
  object IBTable3: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'MOVED_STORGE'
    Left = 167
    Top = 135
    object IBTable3NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable3KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable3NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable3INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable3MOVED_DATE: TDateField
      FieldName = 'MOVED_DATE'
    end
    object IBTable3BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable3QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable3NUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
    end
    object IBTable3PLACE: TIBStringField
      FieldName = 'PLACE'
      Size = 30
    end
    object IBTable3MOVED_NUM: TIntegerField
      FieldName = 'MOVED_NUM'
    end
  end
  object DataSource20: TDataSource
    DataSet = max_no1
    Left = 135
    Top = 103
  end
  object max_no1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from MOVED_STORGE')
    Left = 167
    Top = 103
    object max_no1MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
end
