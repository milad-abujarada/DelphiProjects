object Form2: TForm2
  Left = 108
  Top = 108
  Width = 911
  Height = 625
  Align = alClient
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
    Left = 272
    Top = 56
    Width = 537
    Height = 473
    BevelInner = bvLowered
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 228
      Top = 7
      Width = 66
      Height = 13
      Caption = #1575#1604#1586#1576#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1574#1606
    end
    object Label7: TLabel
      Left = 189
      Top = 451
      Width = 28
      Height = 13
      Caption = #1573#1590#1575#1601#1577
    end
    object Label8: TLabel
      Left = 248
      Top = 451
      Width = 21
      Height = 13
      Caption = #1581#1584#1601
    end
    object Label9: TLabel
      Left = 301
      Top = 450
      Width = 26
      Height = 13
      Caption = #1578#1593#1583#1610#1604
    end
    object Label10: TLabel
      Left = 360
      Top = 450
      Width = 19
      Height = 13
      Caption = #1581#1601#1592
    end
    object DBGrid1: TDBGrid
      Left = 33
      Top = 32
      Width = 477
      Height = 377
      BiDiMode = bdRightToLeft
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CUS_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1587#1605' '#1575#1604#1586#1576#1608#1606
          Width = 192
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CUS_NOTES'
          Title.Alignment = taCenter
          Title.Caption = #1605#1604#1575#1581#1592#1575#1578
          Width = 200
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 176
      Top = 424
      Width = 224
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost]
      TabOrder = 1
    end
  end
  object Panel5: TPanel
    Left = 272
    Top = 56
    Width = 537
    Height = 473
    BevelInner = bvLowered
    TabOrder = 2
    Visible = False
    object Label5: TLabel
      Left = 259
      Top = 16
      Width = 29
      Height = 13
      Caption = #1575#1604#1571#1606#1608#1575#1593
    end
    object Label2: TLabel
      Left = 423
      Top = 227
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label3: TLabel
      Left = 219
      Top = 226
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object DBGrid5: TDBGrid
      Left = 21
      Top = 44
      Width = 497
      Height = 375
      BiDiMode = bdRightToLeft
      DataSource = DataSource2
      ParentBiDiMode = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid5CellClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TYPE_NO'
          Title.Alignment = taCenter
          Title.Caption = #1578
          Width = 36
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TYPE_KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 187
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TYPE_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 150
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TYPE_NOTES'
          Title.Alignment = taCenter
          Title.Caption = #1605#1604#1575#1581#1592#1575#1578
          Width = 250
          Visible = True
        end>
    end
    object BitBtn5: TBitBtn
      Left = 275
      Top = 432
      Width = 76
      Height = 25
      Caption = #1578#1593#1583#1610#1604
      Enabled = False
      TabOrder = 1
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 123
      Top = 432
      Width = 75
      Height = 25
      Caption = #1581#1584#1601
      Enabled = False
      TabOrder = 2
      OnClick = BitBtn6Click
    end
    object Edit1: TEdit
      Left = 103
      Top = 223
      Width = 105
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 3
      OnKeyPress = Edit1KeyPress
    end
    object BitBtn2: TBitBtn
      Left = 199
      Top = 432
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      Enabled = False
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object ComboBox1: TComboBox
      Left = 275
      Top = 221
      Width = 145
      Height = 21
      BiDiMode = bdRightToLeft
      ItemHeight = 13
      ParentBiDiMode = False
      TabOrder = 5
      OnKeyPress = ComboBox1KeyPress
    end
    object BitBtn8: TBitBtn
      Left = 49
      Top = 432
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 6
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 427
      Top = 432
      Width = 75
      Height = 25
      Caption = #1575#1590#1575#1601#1577
      TabOrder = 7
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 351
      Top = 432
      Width = 75
      Height = 25
      Caption = #1578#1582#1586#1610#1606
      Enabled = False
      TabOrder = 8
      OnClick = BitBtn10Click
    end
  end
  object Panel4: TPanel
    Left = 272
    Top = 56
    Width = 537
    Height = 472
    BevelInner = bvLowered
    TabOrder = 1
    Visible = False
    object Label4: TLabel
      Left = 250
      Top = 10
      Width = 35
      Height = 13
      Caption = #1575#1604#1571#1589#1606#1575#1601
    end
    object Label6: TLabel
      Left = 345
      Top = 147
      Width = 46
      Height = 13
      Caption = #1589#1606#1601' '#1580#1583#1610#1583
    end
    object Label11: TLabel
      Left = 354
      Top = 209
      Width = 38
      Height = 13
      Caption = #1605#1604#1575#1581#1592#1575#1578
    end
    object BitBtn4: TBitBtn
      Left = 115
      Top = 424
      Width = 81
      Height = 25
      Caption = #1581#1584#1601
      Enabled = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn4Click
    end
    object DBGrid4: TDBGrid
      Left = 24
      Top = 24
      Width = 497
      Height = 377
      BiDiMode = bdRightToLeft
      DataSource = DataSource6
      ParentBiDiMode = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid4CellClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KINDS_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 208
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KINDS_NOSTS'
          Title.Alignment = taCenter
          Title.Caption = #1605#1604#1575#1581#1592#1575#1578
          Width = 225
          Visible = True
        end>
    end
    object BitBtn3: TBitBtn
      Left = 271
      Top = 424
      Width = 76
      Height = 25
      Caption = #1578#1593#1583#1610#1604
      Enabled = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object Edit2: TEdit
      Left = 176
      Top = 145
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 3
      Visible = False
      OnKeyPress = Edit2KeyPress
    end
    object BitBtn7: TBitBtn
      Left = 196
      Top = 424
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      Enabled = False
      TabOrder = 4
      OnClick = BitBtn7Click
    end
    object BitBtn11: TBitBtn
      Left = 37
      Top = 424
      Width = 80
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 5
      OnClick = BitBtn11Click
    end
    object BitBtn12: TBitBtn
      Left = 347
      Top = 424
      Width = 75
      Height = 25
      Caption = #1578#1582#1586#1610#1606
      Enabled = False
      TabOrder = 6
      OnClick = BitBtn12Click
    end
    object BitBtn13: TBitBtn
      Left = 423
      Top = 424
      Width = 75
      Height = 25
      Caption = #1573#1590#1575#1601#1607
      TabOrder = 7
      OnClick = BitBtn13Click
    end
    object Memo1: TMemo
      Left = 140
      Top = 183
      Width = 185
      Height = 89
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 448
    Top = 544
    Width = 185
    Height = 41
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 161
      Height = 25
      Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1587#1610#1577
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 65
    Top = 253
  end
  object Query1: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from custmers')
    Left = 96
    Top = 248
    object Query1CUS_NO: TIntegerField
      FieldName = 'CUS_NO'
      Origin = 'STORGE.CUSTMERS.CUS_NO'
    end
    object Query1CUS_NAME: TStringField
      FieldName = 'CUS_NAME'
      Origin = 'STORGE.CUSTMERS.CUS_NAME'
      Size = 50
    end
    object Query1CUS_NOTES: TStringField
      FieldName = 'CUS_NOTES'
      Origin = 'STORGE.CUSTMERS.CUS_NOTES'
      Size = 100
    end
  end
  object Query2: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from types')
    Left = 104
    Top = 32
    object Query2TYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'ST.TYPES.TYPE_NO'
    end
    object Query2TYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'ST.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query2TYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'ST.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query2TYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'ST.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 72
    Top = 32
  end
  object DataSource3: TDataSource
    DataSet = query_serch_storeg
    Left = 72
    Top = 64
  end
  object query_serch_storeg: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      'where ((st_type=:var1 and st_availble >0) and st_kind=:var2);')
    Left = 104
    Top = 64
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
    object query_serch_storegST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object query_serch_storegST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object query_serch_storegST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object query_serch_storegST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object query_serch_storegST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object query_serch_storegST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object query_serch_storegST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object query_serch_storegST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
  end
  object Query_edit: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      'where ((st_type=:var1 and st_availble > 0) and st_kind=:var2);')
    Left = 96
    Top = 184
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
    object Query_editST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_editST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_editST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_editST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_editST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_editST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_editST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_editST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_editSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_editNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query_edit
    Left = 64
    Top = 184
  end
  object Query_edit_type: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from types'
      'where type_name=:var1 and type_kind=:var2')
    Left = 96
    Top = 216
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
    object Query_edit_typeTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'ST.TYPES.TYPE_NO'
    end
    object Query_edit_typeTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'ST.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query_edit_typeTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'ST.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query_edit_typeTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'ST.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object DataSource5: TDataSource
    DataSet = Query_edit_type
    Left = 64
    Top = 216
  end
  object DataSource6: TDataSource
    DataSet = Query3
    Left = 64
    Top = 288
  end
  object Query3: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from kinds')
    Left = 96
    Top = 288
    object Query3KIND_NO: TIntegerField
      FieldName = 'KIND_NO'
      Origin = 'ST.KINDS.KIND_NO'
    end
    object Query3KINDS_NAME: TStringField
      FieldName = 'KINDS_NAME'
      Origin = 'ST.KINDS.KINDS_NAME'
      Size = 50
    end
    object Query3KINDS_NOSTS: TStringField
      FieldName = 'KINDS_NOSTS'
      Origin = 'ST.KINDS.KINDS_NOSTS'
      Size = 100
    end
  end
  object Query_edit_kind: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from kinds'
      'where kinds_name=:var1;')
    Left = 88
    Top = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_edit_kindKIND_NO: TIntegerField
      FieldName = 'KIND_NO'
      Origin = 'ST.KINDS.KIND_NO'
    end
    object Query_edit_kindKINDS_NAME: TStringField
      FieldName = 'KINDS_NAME'
      Origin = 'ST.KINDS.KINDS_NAME'
      Size = 50
    end
    object Query_edit_kindKINDS_NOSTS: TStringField
      FieldName = 'KINDS_NOSTS'
      Origin = 'ST.KINDS.KINDS_NOSTS'
      Size = 100
    end
  end
  object DataSource7: TDataSource
    DataSet = Query_edit_kind
    Left = 56
    Top = 384
  end
  object DataSource8: TDataSource
    DataSet = Query_edit1
    Left = 56
    Top = 352
  end
  object Query_edit1: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      'where (st_kind=:var1 and st_availble > 0);')
    Left = 88
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_edit1ST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_edit1ST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_edit1ST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_edit1ST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_edit1ST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_edit1ST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_edit1ST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_edit1ST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_edit1SHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_edit1NO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object Query_search_storge: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      'where (st_kind=:var1 and st_availble >0)')
    Left = 96
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_search_storgeST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_search_storgeST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_search_storgeST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_search_storgeST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_search_storgeST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_search_storgeST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_search_storgeST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_search_storgeST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
  end
  object DataSource9: TDataSource
    DataSet = Query_search_storge
    Left = 64
    Top = 320
  end
  object DataSource10: TDataSource
    DataSet = Query_load_kinds
    Left = 72
    Top = 96
  end
  object Query_load_kinds: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from kinds')
    Left = 104
    Top = 96
    object Query_load_kindsKIND_NO: TIntegerField
      FieldName = 'KIND_NO'
      Origin = 'ST.KINDS.KIND_NO'
    end
    object Query_load_kindsKINDS_NAME: TStringField
      FieldName = 'KINDS_NAME'
      Origin = 'ST.KINDS.KINDS_NAME'
      Size = 50
    end
    object Query_load_kindsKINDS_NOSTS: TStringField
      FieldName = 'KINDS_NOSTS'
      Origin = 'ST.KINDS.KINDS_NOSTS'
      Size = 100
    end
  end
  object DataSource11: TDataSource
    DataSet = Query_save_in_types
    Left = 72
    Top = 2
  end
  object Query_save_in_types: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from types')
    Left = 104
    Top = 2
    object Query_save_in_typesTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'ST.TYPES.TYPE_NO'
    end
    object Query_save_in_typesTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'ST.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query_save_in_typesTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'ST.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query_save_in_typesTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'ST.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object DataSource13: TDataSource
    DataSet = Query_found_match_in_types_table
    Left = 56
    Top = 416
  end
  object Query_found_match_in_types_table: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from types'
      'where'
      'type_name=:var1 and type_kind=:var2')
    Left = 88
    Top = 416
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
    object Query_found_match_in_types_tableTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'BIG_CARS.TYPES.TYPE_NO'
    end
    object Query_found_match_in_types_tableTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query_found_match_in_types_tableTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'BIG_CARS.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query_found_match_in_types_tableTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'BIG_CARS.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object DataSource14: TDataSource
    DataSet = Query_found_match_in_kinds
    Left = 56
    Top = 448
  end
  object DataSource15: TDataSource
    DataSet = Query_max_kind_no
    Left = 56
    Top = 480
  end
  object Query_found_match_in_kinds: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from kinds'
      'where kinds_name=:var1')
    Left = 88
    Top = 448
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_found_match_in_kindsKIND_NO: TIntegerField
      FieldName = 'KIND_NO'
      Origin = 'BIG_CARS.KINDS.KIND_NO'
    end
    object Query_found_match_in_kindsKINDS_NAME: TStringField
      FieldName = 'KINDS_NAME'
      Origin = 'BIG_CARS.KINDS.KINDS_NAME'
      Size = 50
    end
    object Query_found_match_in_kindsKINDS_NOSTS: TStringField
      FieldName = 'KINDS_NOSTS'
      Origin = 'BIG_CARS.KINDS.KINDS_NOSTS'
      Size = 100
    end
  end
  object Query_max_kind_no: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(kind_no) from kinds')
    Left = 88
    Top = 480
    object Query_max_kind_noMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object Query_edit_in_gain_type: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from gain_table'
      'where'
      'no_in_storge=:var1')
    Left = 96
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_edit_in_gain_typeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'BIG_CARS.GAIN_TABLE.NUM'
    end
    object Query_edit_in_gain_typeKIND: TStringField
      FieldName = 'KIND'
      Origin = 'BIG_CARS.GAIN_TABLE.KIND'
      Size = 50
    end
    object Query_edit_in_gain_typeTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.GAIN_TABLE.TYPE_NAME'
      Size = 50
    end
    object Query_edit_in_gain_typeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.GAIN_TABLE.QUANTITY'
    end
    object Query_edit_in_gain_typeAVAILBLE: TIntegerField
      FieldName = 'AVAILBLE'
      Origin = 'BIG_CARS.GAIN_TABLE.AVAILBLE'
    end
    object Query_edit_in_gain_typeTOTAL_BUDGET: TFloatField
      FieldName = 'TOTAL_BUDGET'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUDGET'
    end
    object Query_edit_in_gain_typeINPUT_DATE: TStringField
      FieldName = 'INPUT_DATE'
      Origin = 'BIG_CARS.GAIN_TABLE.INPUT_DATE'
      Size = 10
    end
    object Query_edit_in_gain_typeSALE_PRICE: TFloatField
      FieldName = 'SALE_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.SALE_PRICE'
    end
    object Query_edit_in_gain_typeBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.BUY_PRICE'
    end
    object Query_edit_in_gain_typeTOTAL_BUY_PRICE: TFloatField
      FieldName = 'TOTAL_BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUY_PRICE'
    end
    object Query_edit_in_gain_typeNO_IN_STORGE: TIntegerField
      FieldName = 'NO_IN_STORGE'
      Origin = 'BIG_CARS.GAIN_TABLE.NO_IN_STORGE'
    end
    object Query_edit_in_gain_typeWINING: TFloatField
      FieldName = 'WINING'
      Origin = 'BIG_CARS.GAIN_TABLE.WINING'
    end
  end
  object DataSource12: TDataSource
    DataSet = Query_edit_in_gain_type
    Left = 64
    Top = 152
  end
  object DataSource16: TDataSource
    DataSet = Query_edit_in_gain_kind
    Left = 56
    Top = 512
  end
  object Query_edit_in_gain_kind: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from gain_table'
      'where'
      'no_in_storge=:var1')
    Left = 88
    Top = 512
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_edit_in_gain_kindNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'BIG_CARS.GAIN_TABLE.NUM'
    end
    object Query_edit_in_gain_kindKIND: TStringField
      FieldName = 'KIND'
      Origin = 'BIG_CARS.GAIN_TABLE.KIND'
      Size = 50
    end
    object Query_edit_in_gain_kindTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.GAIN_TABLE.TYPE_NAME'
      Size = 50
    end
    object Query_edit_in_gain_kindQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.GAIN_TABLE.QUANTITY'
    end
    object Query_edit_in_gain_kindAVAILBLE: TIntegerField
      FieldName = 'AVAILBLE'
      Origin = 'BIG_CARS.GAIN_TABLE.AVAILBLE'
    end
    object Query_edit_in_gain_kindTOTAL_BUDGET: TFloatField
      FieldName = 'TOTAL_BUDGET'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUDGET'
    end
    object Query_edit_in_gain_kindINPUT_DATE: TStringField
      FieldName = 'INPUT_DATE'
      Origin = 'BIG_CARS.GAIN_TABLE.INPUT_DATE'
      Size = 10
    end
    object Query_edit_in_gain_kindSALE_PRICE: TFloatField
      FieldName = 'SALE_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.SALE_PRICE'
    end
    object Query_edit_in_gain_kindBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.BUY_PRICE'
    end
    object Query_edit_in_gain_kindTOTAL_BUY_PRICE: TFloatField
      FieldName = 'TOTAL_BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUY_PRICE'
    end
    object Query_edit_in_gain_kindNO_IN_STORGE: TIntegerField
      FieldName = 'NO_IN_STORGE'
      Origin = 'BIG_CARS.GAIN_TABLE.NO_IN_STORGE'
    end
    object Query_edit_in_gain_kindWINING: TFloatField
      FieldName = 'WINING'
      Origin = 'BIG_CARS.GAIN_TABLE.WINING'
    end
  end
  object Query_edit_in_types_table: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from types'
      'where'
      'type_kind=:var1')
    Left = 88
    Top = 544
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_edit_in_types_tableTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'BIG_CARS.TYPES.TYPE_NO'
    end
    object Query_edit_in_types_tableTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query_edit_in_types_tableTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'BIG_CARS.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query_edit_in_types_tableTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'BIG_CARS.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object DataSource17: TDataSource
    Left = 56
    Top = 544
  end
end
