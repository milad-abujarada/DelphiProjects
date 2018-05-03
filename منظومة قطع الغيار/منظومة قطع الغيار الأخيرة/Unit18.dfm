object Form18: TForm18
  Left = -4
  Top = -4
  Width = 1032
  Height = 746
  BiDiMode = bdRightToLeft
  BorderIcons = []
  Caption = #1605#1606#1592#1608#1605#1577' '#1575#1604#1605#1582#1575#1586#1606' '#1608#1575#1604#1605#1576#1610#1593#1575#1578
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
    Left = 296
    Top = 88
    Width = 521
    Height = 417
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 454
      Top = 123
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label2: TLabel
      Left = 456
      Top = 174
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label3: TLabel
      Left = 447
      Top = 221
      Width = 64
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1585#1580#1593#1577
    end
    object Label4: TLabel
      Left = 158
      Top = 170
      Width = 71
      Height = 13
      Caption = #1587#1593#1585' '#1576#1610#1593' '#1575#1604#1608#1581#1583#1577
    end
    object Label5: TLabel
      Left = 154
      Top = 122
      Width = 79
      Height = 13
      Caption = #1587#1593#1585' '#1588#1585#1575#1569' '#1575#1604#1608#1581#1583#1577
    end
    object Label6: TLabel
      Left = 180
      Top = 215
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label7: TLabel
      Left = 208
      Top = 26
      Width = 115
      Height = 13
      Caption = #1575#1585#1580#1575#1593' '#1576#1590#1575#1593#1577' '#1605#1583#1601#1608#1593#1577' '#1606#1602#1583#1575#1611#1611
    end
    object Label8: TLabel
      Left = 480
      Top = 262
      Width = 20
      Height = 13
      Caption = #1575#1604#1585#1601
    end
    object Edit3: TEdit
      Left = 322
      Top = 214
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 24
      Top = 165
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 23
      Top = 117
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object DateTimePicker1: TDateTimePicker
      Left = 26
      Top = 208
      Width = 123
      Height = 21
      Date = 38818.732058912040000000
      Time = 38818.732058912040000000
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 266
      Top = 332
      Width = 99
      Height = 25
      Caption = #1575#1585#1580#1575#1593' '#1575#1604#1576#1590#1575#1593#1577
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 319
      Top = 119
      Width = 123
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      OnClick = ComboBox1Click
    end
    object ComboBox2: TComboBox
      Left = 320
      Top = 170
      Width = 122
      Height = 21
      ItemHeight = 13
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 323
      Top = 258
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object BitBtn2: TBitBtn
      Left = 159
      Top = 332
      Width = 105
      Height = 25
      Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1577
      TabOrder = 8
      OnClick = BitBtn2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_search_in_gain_table
    Top = 16
  end
  object Query_search_in_gain_table: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from gain_table'
      #13'where'
      '(kind=:var1) and (type_name=:var2) and (quantity>availble)'
      'order by input_date desc'#10
      ''
      ''
      ''
      '')
    Left = 32
    Top = 16
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
    object Query_search_in_gain_tableNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'BIG_CARS.GAIN_TABLE.NUM'
    end
    object Query_search_in_gain_tableKIND: TStringField
      FieldName = 'KIND'
      Origin = 'BIG_CARS.GAIN_TABLE.KIND'
      Size = 50
    end
    object Query_search_in_gain_tableTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.GAIN_TABLE.TYPE_NAME'
      Size = 50
    end
    object Query_search_in_gain_tableQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.GAIN_TABLE.QUANTITY'
    end
    object Query_search_in_gain_tableAVAILBLE: TIntegerField
      FieldName = 'AVAILBLE'
      Origin = 'BIG_CARS.GAIN_TABLE.AVAILBLE'
    end
    object Query_search_in_gain_tableTOTAL_BUDGET: TFloatField
      FieldName = 'TOTAL_BUDGET'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUDGET'
    end
    object Query_search_in_gain_tableINPUT_DATE: TStringField
      FieldName = 'INPUT_DATE'
      Origin = 'BIG_CARS.GAIN_TABLE.INPUT_DATE'
      Size = 10
    end
    object Query_search_in_gain_tableSALE_PRICE: TFloatField
      FieldName = 'SALE_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.SALE_PRICE'
    end
    object Query_search_in_gain_tableBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.BUY_PRICE'
    end
    object Query_search_in_gain_tableTOTAL_BUY_PRICE: TFloatField
      FieldName = 'TOTAL_BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUY_PRICE'
    end
    object Query_search_in_gain_tableNO_IN_STORGE: TIntegerField
      FieldName = 'NO_IN_STORGE'
      Origin = 'BIG_CARS.GAIN_TABLE.NO_IN_STORGE'
    end
    object Query_search_in_gain_tableWINING: TFloatField
      FieldName = 'WINING'
      Origin = 'BIG_CARS.GAIN_TABLE.WINING'
    end
  end
  object query_find_same_item_in_storge: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      #13'where '
      'no_in_gain_table=:var1 and st_quantity=:var2'#10
      ''
      ''
      '')
    Left = 32
    Top = 48
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
      end>
    object query_find_same_item_in_storgeST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object query_find_same_item_in_storgeST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object query_find_same_item_in_storgeST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object query_find_same_item_in_storgeST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object query_find_same_item_in_storgeST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object query_find_same_item_in_storgeST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object query_find_same_item_in_storgeST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object query_find_same_item_in_storgeST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object query_find_same_item_in_storgeSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object query_find_same_item_in_storgeNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object DataSource2: TDataSource
    DataSet = query_find_same_item_in_storge
    Top = 48
  end
  object DataSource3: TDataSource
    DataSet = Query_save_in_storge
    Top = 80
  end
  object Query_save_in_storge: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge')
    Left = 32
    Top = 80
    object Query_save_in_storgeST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_save_in_storgeST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_save_in_storgeST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_save_in_storgeST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_save_in_storgeST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_save_in_storgeST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_save_in_storgeST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_save_in_storgeST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_save_in_storgeSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_save_in_storgeNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object Query_max_st_no: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(st_no) from storge')
    Left = 32
    Top = 112
    object Query_max_st_noMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query_max_st_no
    Top = 112
  end
  object DataSource5: TDataSource
    DataSet = Query_search_in_gain_table
    Top = 144
  end
  object Query_save_in_gain: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from gain_table')
    Left = 32
    Top = 144
    object Query_save_in_gainNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'BIG_CARS.GAIN_TABLE.NUM'
    end
    object Query_save_in_gainKIND: TStringField
      FieldName = 'KIND'
      Origin = 'BIG_CARS.GAIN_TABLE.KIND'
      Size = 50
    end
    object Query_save_in_gainTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.GAIN_TABLE.TYPE_NAME'
      Size = 50
    end
    object Query_save_in_gainQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.GAIN_TABLE.QUANTITY'
    end
    object Query_save_in_gainAVAILBLE: TIntegerField
      FieldName = 'AVAILBLE'
      Origin = 'BIG_CARS.GAIN_TABLE.AVAILBLE'
    end
    object Query_save_in_gainTOTAL_BUDGET: TFloatField
      FieldName = 'TOTAL_BUDGET'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUDGET'
    end
    object Query_save_in_gainINPUT_DATE: TStringField
      FieldName = 'INPUT_DATE'
      Origin = 'BIG_CARS.GAIN_TABLE.INPUT_DATE'
      Size = 10
    end
    object Query_save_in_gainSALE_PRICE: TFloatField
      FieldName = 'SALE_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.SALE_PRICE'
    end
    object Query_save_in_gainBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.BUY_PRICE'
    end
    object Query_save_in_gainTOTAL_BUY_PRICE: TFloatField
      FieldName = 'TOTAL_BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUY_PRICE'
    end
    object Query_save_in_gainNO_IN_STORGE: TIntegerField
      FieldName = 'NO_IN_STORGE'
      Origin = 'BIG_CARS.GAIN_TABLE.NO_IN_STORGE'
    end
    object Query_save_in_gainWINING: TFloatField
      FieldName = 'WINING'
      Origin = 'BIG_CARS.GAIN_TABLE.WINING'
    end
  end
  object Query_max_num_in_gain: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(num) from gain_table')
    Left = 32
    Top = 176
    object Query_max_num_in_gainMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource6: TDataSource
    DataSet = Query_max_num_in_gain
    Top = 176
  end
  object DataSource7: TDataSource
    DataSet = Query_max_no_in_storge_in_storge
    Top = 208
  end
  object Query_max_no_in_storge_in_storge: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(no_in_storge) from gain_table')
    Left = 32
    Top = 208
    object Query_max_no_in_storge_in_storgeMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object query_bring_types: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from types'
      'where type_kind=:var1'
      'order by type_name')
    Left = 32
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object query_bring_typesTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'BIG_CARS.TYPES.TYPE_NO'
    end
    object query_bring_typesTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TYPES.TYPE_NAME'
      Size = 50
    end
    object query_bring_typesTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'BIG_CARS.TYPES.TYPE_NOTES'
      Size = 100
    end
    object query_bring_typesTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'BIG_CARS.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object DataSource8: TDataSource
    DataSet = query_bring_types
    Top = 240
  end
  object DataSource9: TDataSource
    DataSet = Query_bring_kinds
    Top = 272
  end
  object Query_bring_kinds: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from kinds')
    Left = 32
    Top = 272
    object Query_bring_kindsKIND_NO: TIntegerField
      FieldName = 'KIND_NO'
      Origin = 'BIG_CARS.KINDS.KIND_NO'
    end
    object Query_bring_kindsKINDS_NAME: TStringField
      FieldName = 'KINDS_NAME'
      Origin = 'BIG_CARS.KINDS.KINDS_NAME'
      Size = 50
    end
    object Query_bring_kindsKINDS_NOSTS: TStringField
      FieldName = 'KINDS_NOSTS'
      Origin = 'BIG_CARS.KINDS.KINDS_NOSTS'
      Size = 100
    end
  end
  object DataSource10: TDataSource
    DataSet = Query_save_in_retrive_table
    Top = 304
  end
  object Query_save_in_retrive_table: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from retreive_table')
    Left = 32
    Top = 304
    object Query_save_in_retrive_tableSERIAL_NO: TIntegerField
      FieldName = 'SERIAL_NO'
      Origin = 'BIG_CARS.RETREIVE_TABLE.SERIAL_NO'
    end
    object Query_save_in_retrive_tableMONEY: TIntegerField
      FieldName = 'MONEY'
      Origin = 'BIG_CARS.RETREIVE_TABLE.MONEY'
    end
    object Query_save_in_retrive_tableDAY_DATE: TStringField
      FieldName = 'DAY_DATE'
      Origin = 'BIG_CARS.RETREIVE_TABLE.DAY_DATE'
      Size = 10
    end
  end
  object Query_max_retreive_table_serial: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(serial_no) from retreive_table')
    Left = 32
    Top = 336
    object Query_max_retreive_table_serialMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource11: TDataSource
    DataSet = Query_max_retreive_table_serial
    Top = 336
  end
end
