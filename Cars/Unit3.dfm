object Form3: TForm3
  Left = 28
  Top = 12
  Width = 996
  Height = 716
  HorzScrollBar.Position = 32
  Align = alClient
  BiDiMode = bdRightToLeft
  BorderIcons = []
  Caption = #1605#1606#1592#1608#1605#1577' '#1575#1604#1605#1582#1575#1586#1606' '#1608' '#1575#1604#1605#1576#1610#1593#1575#1578
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
  object Panel2: TPanel
    Left = 464
    Top = 417
    Width = 524
    Height = 264
    BevelInner = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 451
      Top = 20
      Width = 48
      Height = 13
      Caption = #1575#1587#1605' '#1575#1604#1589#1606#1601
    end
    object Label4: TLabel
      Left = 452
      Top = 48
      Width = 43
      Height = 13
      Caption = #1575#1587#1605' '#1575#1604#1606#1608#1593
    end
    object Label5: TLabel
      Left = 445
      Top = 86
      Width = 68
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1578#1608#1601#1585#1577
    end
    object Label6: TLabel
      Left = 440
      Top = 115
      Width = 66
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1591#1604#1608#1576#1577
    end
    object Label7: TLabel
      Left = 200
      Top = 29
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label8: TLabel
      Left = 199
      Top = 58
      Width = 44
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
    end
    object Label12: TLabel
      Left = 183
      Top = 86
      Width = 85
      Height = 13
      Caption = #1579#1605#1606' '#1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1591#1604#1608#1576#1577
    end
    object Label9: TLabel
      Left = 196
      Top = 116
      Width = 52
      Height = 13
      Caption = #1575#1587#1605' '#1575#1604#1605#1587#1578#1604#1605
    end
    object Label11: TLabel
      Left = 455
      Top = 146
      Width = 39
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1585#1601
    end
    object Edit2: TEdit
      Left = 288
      Top = 16
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 288
      Top = 112
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 1
      OnChange = Edit4Change
    end
    object Edit5: TEdit
      Left = 33
      Top = 54
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 2
      OnExit = Edit5Exit
    end
    object DateTimePicker1: TDateTimePicker
      Left = 33
      Top = 24
      Width = 122
      Height = 21
      BiDiMode = bdLeftToRight
      Date = 38787.961460312500000000
      Time = 38787.961460312500000000
      ParentBiDiMode = False
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 405
      Top = 228
      Width = 131
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 261
      Top = 228
      Width = 129
      Height = 25
      Caption = #1580#1583#1610#1583
      TabOrder = 5
      OnClick = BitBtn2Click
    end
    object Edit8: TEdit
      Left = 288
      Top = 80
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 6
    end
    object BitBtn3: TBitBtn
      Left = 133
      Top = 228
      Width = 115
      Height = 25
      Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1610#1577
      TabOrder = 7
      OnClick = BitBtn3Click
    end
    object Edit11: TEdit
      Left = 288
      Top = 48
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 8
    end
    object Edit1: TEdit
      Left = 34
      Top = 82
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 9
    end
    object Edit6: TEdit
      Left = 33
      Top = 109
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 10
    end
    object Edit12: TEdit
      Left = 288
      Top = 141
      Width = 121
      Height = 21
      TabOrder = 11
    end
  end
  object Panel3: TPanel
    Left = -32
    Top = 418
    Width = 497
    Height = 263
    BevelInner = bvLowered
    TabOrder = 2
    object DBGrid3: TDBGrid
      Left = 3
      Top = 8
      Width = 486
      Height = 225
      BiDiMode = bdRightToLeft
      DataSource = DataSource10
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
          FieldName = 'BILLS_KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BILLS_TYPE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BILLS_QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BILLS_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1587#1593#1585
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BILLS_TOTAL_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1579#1605#1606' '#1575#1604#1603#1605#1610#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BILLS_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 120
          Visible = True
        end>
    end
    object BitBtn4: TBitBtn
      Left = 199
      Top = 235
      Width = 75
      Height = 25
      Caption = #1573#1606#1607#1575#1569
      Enabled = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
  end
  object Panel1: TPanel
    Left = 88
    Top = 0
    Width = 812
    Height = 417
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 664
      Top = 9
      Width = 70
      Height = 13
      Caption = #1573#1587#1600#1600#1600#1600#1600#1605' '#1575#1604#1589#1606#1600#1600#1601
    end
    object Label2: TLabel
      Left = 248
      Top = 9
      Width = 119
      Height = 13
      Caption = #1573#1587#1600#1600#1600#1600#1600#1600#1600#1600#1600#1605' '#1575#1604#1606#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1608#1593
    end
    object DBGrid1: TDBGrid
      Left = 595
      Top = 48
      Width = 214
      Height = 342
      BiDiMode = bdRightToLeft
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 0
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
          FieldName = 'KIND_NO'
          Title.Alignment = taCenter
          Title.Caption = #1578
          Width = 31
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KINDS_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 147
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 54
      Top = 48
      Width = 537
      Height = 343
      BiDiMode = bdRightToLeft
      DataSource = DataSource2
      ParentBiDiMode = False
      TabOrder = 1
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
    object DBGrid4: TDBGrid
      Left = 56
      Top = 49
      Width = 533
      Height = 341
      DataSource = DataSource19
      TabOrder = 2
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
    object Panel6: TPanel
      Left = 395
      Top = 19
      Width = 197
      Height = 30
      BevelInner = bvRaised
      TabOrder = 3
      object Label16: TLabel
        Left = 132
        Top = 10
        Width = 59
        Height = 13
        Caption = #1575#1604#1576#1581#1579' '#1575#1604#1587#1585#1610#1593
      end
      object Edit13: TEdit
        Left = 5
        Top = 5
        Width = 121
        Height = 21
        TabOrder = 0
        OnChange = Edit13Change
      end
    end
  end
  object Panel5: TPanel
    Left = 240
    Top = 63
    Width = 417
    Height = 377
    BevelInner = bvLowered
    TabOrder = 3
    Visible = False
    object Label13: TLabel
      Left = 316
      Top = 113
      Width = 65
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1573#1580#1605#1575#1604#1610#1577
    end
    object Label14: TLabel
      Left = 318
      Top = 91
      Width = 53
      Height = 13
      Caption = #1591#1585#1610#1602#1577' '#1575#1604#1583#1601#1593
    end
    object Label15: TLabel
      Left = 316
      Top = 146
      Width = 68
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1583#1601#1608#1593#1577
    end
    object Label17: TLabel
      Left = 317
      Top = 36
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1586#1576#1608#1606
    end
    object Label18: TLabel
      Left = 320
      Top = 181
      Width = 61
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1578#1576#1602#1610#1577
    end
    object Label19: TLabel
      Left = 329
      Top = 68
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Edit9: TEdit
      Left = 136
      Top = 112
      Width = 139
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 0
    end
    object RadioButton5: TRadioButton
      Left = 210
      Top = 92
      Width = 57
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = #1606#1602#1583#1610
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = RadioButton5Click
    end
    object RadioButton6: TRadioButton
      Left = 144
      Top = 92
      Width = 65
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = #1570#1580#1604
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = RadioButton6Click
    end
    object Edit10: TEdit
      Left = 136
      Top = 143
      Width = 140
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 3
      OnChange = Edit10Change
    end
    object BitBtn5: TBitBtn
      Left = 136
      Top = 320
      Width = 147
      Height = 33
      Caption = #1581#1601#1592
      Enabled = False
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object ComboBox2: TComboBox
      Left = 137
      Top = 32
      Width = 138
      Height = 21
      BiDiMode = bdRightToLeft
      ItemHeight = 13
      ParentBiDiMode = False
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 136
      Top = 176
      Width = 142
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 6
    end
    object DateTimePicker2: TDateTimePicker
      Left = 136
      Top = 62
      Width = 140
      Height = 21
      BiDiMode = bdRightToLeft
      Date = 38793.723201493060000000
      Time = 38793.723201493060000000
      ParentBiDiMode = False
      TabOrder = 7
    end
    object RadioButton7: TRadioButton
      Left = 96
      Top = 92
      Width = 57
      Height = 17
      Caption = #1589#1603
      TabOrder = 8
      OnClick = RadioButton7Click
    end
    object Panel4: TPanel
      Left = 112
      Top = 208
      Width = 209
      Height = 97
      BevelOuter = bvLowered
      TabOrder = 9
      object Label10: TLabel
        Left = 147
        Top = 68
        Width = 42
        Height = 13
        Caption = #1585#1602#1605' '#1575#1604#1589#1603
      end
      object RadioButton1: TRadioButton
        Left = 133
        Top = 16
        Width = 67
        Height = 17
        Caption = #1578#1605' '#1575#1604#1578#1581#1589#1610#1604
        TabOrder = 0
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 19
        Top = 17
        Width = 89
        Height = 17
        Caption = #1604#1605' '#1610#1578#1605' '#1575#1604#1578#1581#1589#1610#1604
        TabOrder = 1
        OnClick = RadioButton2Click
      end
      object RadioButton3: TRadioButton
        Left = 47
        Top = 41
        Width = 153
        Height = 17
        Caption = #1578#1605' '#1578#1581#1589#1610#1604' '#1580#1586#1569' '#1605#1606' '#1575#1604#1602#1610#1605#1577
        TabOrder = 2
        OnClick = RadioButton3Click
      end
    end
    object Edit7: TEdit
      Left = 132
      Top = 271
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 10
    end
    object BitBtn6: TBitBtn
      Left = 288
      Top = 320
      Width = 97
      Height = 33
      Caption = #1573#1582#1585#1575#1580' '#1601#1575#1578#1608#1585#1577
      Enabled = False
      TabOrder = 11
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 48
      Top = 320
      Width = 73
      Height = 33
      Caption = #1573#1606#1607#1575#1569
      Enabled = False
      TabOrder = 12
      OnClick = BitBtn7Click
    end
  end
  object Query_pring_kinds_tosale: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from kinds')
    Left = 752
    Top = 64
    object Query_pring_kinds_tosaleKIND_NO: TIntegerField
      FieldName = 'KIND_NO'
      Origin = 'ST.KINDS.KIND_NO'
    end
    object Query_pring_kinds_tosaleKINDS_NAME: TStringField
      FieldName = 'KINDS_NAME'
      Origin = 'ST.KINDS.KINDS_NAME'
      Size = 50
    end
    object Query_pring_kinds_tosaleKINDS_NOSTS: TStringField
      FieldName = 'KINDS_NOSTS'
      Origin = 'ST.KINDS.KINDS_NOSTS'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_pring_kinds_tosale
    Left = 715
    Top = 64
  end
  object Query_bring_fromstorg: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from storge'
      'where st_type=:var1 and st_kind=:var2;')
    Left = 896
    Top = 606
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
    object Query_bring_fromstorgST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_bring_fromstorgST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_bring_fromstorgST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_bring_fromstorgST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_bring_fromstorgST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_bring_fromstorgST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_bring_fromstorgST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_bring_fromstorgSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_bring_fromstorgNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query_bring_fromstorg
    Left = 923
    Top = 607
  end
  object DataSource4: TDataSource
    Left = 811
    Top = 416
  end
  object Query_total_availble: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(st_availble)'
      'from storge'
      'where st_type=:var1 and st_kind=:var2;')
    Left = 843
    Top = 409
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
    object Query_total_availbleSUM: TIntegerField
      FieldName = 'SUM'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query_bring_types_to_sale
    Left = 203
    Top = 64
  end
  object Query_bring_types_to_sale: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from types'
      'where type_kind=:var1'
      'order by type_name')
    Left = 235
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_bring_types_to_saleTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'BIG_CARS.TYPES.TYPE_NO'
    end
    object Query_bring_types_to_saleTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query_bring_types_to_saleTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'BIG_CARS.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query_bring_types_to_saleTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'BIG_CARS.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object DataSource5: TDataSource
    DataSet = Query_bring_customers
    Left = 537
    Top = 419
  end
  object Query_bring_customers: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from custmers')
    Left = 566
    Top = 417
    object Query_bring_customersCUS_NO: TIntegerField
      FieldName = 'CUS_NO'
      Origin = 'BIG_CARS.CUSTMERS.CUS_NO'
    end
    object Query_bring_customersCUS_NAME: TStringField
      FieldName = 'CUS_NAME'
      Origin = 'BIG_CARS.CUSTMERS.CUS_NAME'
      Size = 50
    end
    object Query_bring_customersCUS_NOTES: TStringField
      FieldName = 'CUS_NOTES'
      Origin = 'BIG_CARS.CUSTMERS.CUS_NOTES'
      Size = 100
    end
  end
  object DataSource6: TDataSource
    DataSet = Query_bring_pay_num
    Left = 8
    Top = 179
  end
  object DataSource7: TDataSource
    DataSet = Query_sava_in_daily_store
    Left = 609
    Top = 411
  end
  object Query_sava_in_daily_store: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from daily_sale')
    Left = 633
    Top = 411
    object Query_sava_in_daily_storeDS_NO: TIntegerField
      FieldName = 'DS_NO'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NO'
    end
    object Query_sava_in_daily_storeDS_NAME_TYPE: TStringField
      FieldName = 'DS_NAME_TYPE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NAME_TYPE'
      Size = 50
    end
    object Query_sava_in_daily_storeDS_NAME_KIND: TStringField
      FieldName = 'DS_NAME_KIND'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NAME_KIND'
      Size = 50
    end
    object Query_sava_in_daily_storeDS_QUANTITY: TIntegerField
      FieldName = 'DS_QUANTITY'
      Origin = 'BIG_CARS.DAILY_SALE.DS_QUANTITY'
    end
    object Query_sava_in_daily_storeDS_PRICE: TFloatField
      FieldName = 'DS_PRICE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_PRICE'
    end
    object Query_sava_in_daily_storeDS_DATE: TStringField
      FieldName = 'DS_DATE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_DATE'
      Size = 10
    end
    object Query_sava_in_daily_storeTOTAL_PRICE: TFloatField
      FieldName = 'TOTAL_PRICE'
      Origin = 'BIG_CARS.DAILY_SALE.TOTAL_PRICE'
    end
    object Query_sava_in_daily_storeRECIVER_NAME: TStringField
      FieldName = 'RECIVER_NAME'
      Origin = 'BIG_CARS.DAILY_SALE.RECIVER_NAME'
      Size = 50
    end
    object Query_sava_in_daily_storePAY_NUM: TIntegerField
      FieldName = 'PAY_NUM'
      Origin = 'BIG_CARS.DAILY_SALE.PAY_NUM'
    end
  end
  object DataSource8: TDataSource
    DataSet = Query_discount_from_storge
    Left = 665
    Top = 411
  end
  object Query_discount_from_storge: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      'where'
      'st_type=:var1 and st_kind=:var2'
      'order by st_stored_date')
    Left = 697
    Top = 411
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
    object Query_discount_from_storgeST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_discount_from_storgeST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_discount_from_storgeST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_discount_from_storgeST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_discount_from_storgeST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_discount_from_storgeST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_discount_from_storgeST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_discount_from_storgeST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_discount_from_storgeSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_discount_from_storgeNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object DataSource9: TDataSource
    DataSet = Query_save_in_debts
    Left = 265
    Top = 387
  end
  object Query_save_in_debts: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from debt')
    Left = 297
    Top = 387
    object Query_save_in_debtsDEBT_NO: TIntegerField
      FieldName = 'DEBT_NO'
      Origin = 'ST.DEBT.DEBT_NO'
    end
    object Query_save_in_debtsDEBT_CUS_NAME: TStringField
      FieldName = 'DEBT_CUS_NAME'
      Origin = 'ST.DEBT.DEBT_CUS_NAME'
      Size = 50
    end
    object Query_save_in_debtsDEBT_DATE: TStringField
      FieldName = 'DEBT_DATE'
      Origin = 'ST.DEBT.DEBT_DATE'
      Size = 10
    end
    object Query_save_in_debtsDEBT_VALUE: TFloatField
      FieldName = 'DEBT_VALUE'
      Origin = 'ST.DEBT.DEBT_VALUE'
    end
    object Query_save_in_debtsNUM_IN_DAILY_SALE: TIntegerField
      FieldName = 'NUM_IN_DAILY_SALE'
      Origin = 'BIG_CARS.DEBT.NUM_IN_DAILY_SALE'
    end
  end
  object DataSource10: TDataSource
    DataSet = Query_save_in_temp_for_hole_sale
    Left = 81
    Top = 420
  end
  object Query_save_in_temp_for_hole_sale: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from bill')
    Left = 113
    Top = 420
    object Query_save_in_temp_for_hole_saleBILLS_NO: TIntegerField
      FieldName = 'BILLS_NO'
      Origin = 'BIG_CARS.BILL.BILLS_NO'
    end
    object Query_save_in_temp_for_hole_saleBILLS_QUANTITY: TIntegerField
      FieldName = 'BILLS_QUANTITY'
      Origin = 'BIG_CARS.BILL.BILLS_QUANTITY'
    end
    object Query_save_in_temp_for_hole_saleBILLS_PRICE: TFloatField
      FieldName = 'BILLS_PRICE'
      Origin = 'BIG_CARS.BILL.BILLS_PRICE'
    end
    object Query_save_in_temp_for_hole_saleBILLS_DATE: TStringField
      FieldName = 'BILLS_DATE'
      Origin = 'BIG_CARS.BILL.BILLS_DATE'
      Size = 10
    end
    object Query_save_in_temp_for_hole_saleBILLS_TYPE: TStringField
      FieldName = 'BILLS_TYPE'
      Origin = 'BIG_CARS.BILL.BILLS_TYPE'
      Size = 50
    end
    object Query_save_in_temp_for_hole_saleBILLS_KIND: TStringField
      FieldName = 'BILLS_KIND'
      Origin = 'BIG_CARS.BILL.BILLS_KIND'
      Size = 50
    end
    object Query_save_in_temp_for_hole_saleBILLS_TOTAL_PRICE: TFloatField
      FieldName = 'BILLS_TOTAL_PRICE'
      Origin = 'BIG_CARS.BILL.BILLS_TOTAL_PRICE'
    end
    object Query_save_in_temp_for_hole_saleRECIVER_NAME: TStringField
      FieldName = 'RECIVER_NAME'
      Origin = 'BIG_CARS.BILL.RECIVER_NAME'
      Size = 50
    end
    object Query_save_in_temp_for_hole_salePAY_NO: TIntegerField
      FieldName = 'PAY_NO'
      Origin = 'BIG_CARS.BILL.PAY_NO'
    end
  end
  object DataSource11: TDataSource
    DataSet = Query_all_value_from_temp
    Left = 56
    Top = 624
  end
  object Query_all_value_from_temp: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(BILLS_TOTAL_PRICE)from bill')
    Left = 24
    Top = 624
    object Query_all_value_from_tempSUM: TFloatField
      FieldName = 'SUM'
      Origin = 'BIG_CARS.BILL.BILLS_TOTAL_PRICE'
    end
  end
  object DataSource12: TDataSource
    DataSet = Query_save_in_daily_sale_for_hole
    Left = 360
    Top = 386
  end
  object Query_save_in_daily_sale_for_hole: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from daily_sale_for_hole_sale')
    Left = 328
    Top = 384
    object Query_save_in_daily_sale_for_holeALL_VALUE: TFloatField
      FieldName = 'ALL_VALUE'
      Origin = 'ST.DAILY_SALE_FOR_HOLE_SALE.ALL_VALUE'
    end
    object Query_save_in_daily_sale_for_holeDAILY_DATE: TStringField
      FieldName = 'DAILY_DATE'
      Origin = 'ST.DAILY_SALE_FOR_HOLE_SALE.DAILY_DATE'
      Size = 10
    end
    object Query_save_in_daily_sale_for_holePAIED_VALUE: TFloatField
      FieldName = 'PAIED_VALUE'
      Origin = 'ST.DAILY_SALE_FOR_HOLE_SALE.PAIED_VALUE'
    end
    object Query_save_in_daily_sale_for_holeREMAINING_VALUE: TFloatField
      FieldName = 'REMAINING_VALUE'
      Origin = 'ST.DAILY_SALE_FOR_HOLE_SALE.REMAINING_VALUE'
    end
    object Query_save_in_daily_sale_for_holeCUS_NAME: TStringField
      FieldName = 'CUS_NAME'
      Origin = 'ST.DAILY_SALE_FOR_HOLE_SALE.CUS_NAME'
      Size = 50
    end
    object Query_save_in_daily_sale_for_holeSERIAL: TIntegerField
      FieldName = 'SERIAL'
      Origin = 'ST.DAILY_SALE_FOR_HOLE_SALE.SERIAL'
    end
  end
  object Query_bring_pay_num: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(pay_num) from daily_sale')
    Left = 40
    Top = 178
    object Query_bring_pay_numMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource13: TDataSource
    DataSet = Query_save_in_paied_value_for_every_sale
    Left = 8
    Top = 208
  end
  object Query_save_in_paied_value_for_every_sale: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from paied_for_every_sale')
    Left = 40
    Top = 208
    object Query_save_in_paied_value_for_every_saleCUS_NAME: TStringField
      FieldName = 'CUS_NAME'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.CUS_NAME'
      Size = 50
    end
    object Query_save_in_paied_value_for_every_salePAY_TYPE: TStringField
      FieldName = 'PAY_TYPE'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.PAY_TYPE'
      Size = 15
    end
    object Query_save_in_paied_value_for_every_salePAIED_VALUE: TFloatField
      FieldName = 'PAIED_VALUE'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.PAIED_VALUE'
    end
    object Query_save_in_paied_value_for_every_saleREMAINING_VALUE: TFloatField
      FieldName = 'REMAINING_VALUE'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.REMAINING_VALUE'
    end
    object Query_save_in_paied_value_for_every_saleCHECK_NO: TIntegerField
      FieldName = 'CHECK_NO'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.CHECK_NO'
    end
    object Query_save_in_paied_value_for_every_salePAY_NO: TIntegerField
      FieldName = 'PAY_NO'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.PAY_NO'
    end
    object Query_save_in_paied_value_for_every_salePAIED_DATE: TStringField
      FieldName = 'PAIED_DATE'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.PAIED_DATE'
      Size = 10
    end
    object Query_save_in_paied_value_for_every_saleSERIAL_NO: TIntegerField
      FieldName = 'SERIAL_NO'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.SERIAL_NO'
    end
  end
  object Query_serial_for_paied_for_every_sale: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(serial_no)from paied_for_every_sale')
    Left = 40
    Top = 240
    object Query_serial_for_paied_for_every_saleMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource14: TDataSource
    DataSet = Query_serial_for_paied_for_every_sale
    Left = 8
    Top = 240
  end
  object DataSource15: TDataSource
    DataSet = Query_max_in_debt
    Left = 8
    Top = 272
  end
  object Query_max_in_debt: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(debt_no)from debt')
    Left = 40
    Top = 272
    object Query_max_in_debtMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource16: TDataSource
    DataSet = Query_max_for_ds_no
    Left = 8
    Top = 304
  end
  object Query_max_for_ds_no: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(ds_no) from daily_sale')
    Left = 40
    Top = 304
    object Query_max_for_ds_noMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object Query_max_bill_no: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(bills_no) from bill')
    Left = 40
    Top = 336
    object Query_max_bill_noMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource17: TDataSource
    DataSet = Query_max_bill_no
    Left = 8
    Top = 336
  end
  object DataSource18: TDataSource
    DataSet = Query_discount_from_gain_table
    Left = 8
    Top = 146
  end
  object Query_discount_from_gain_table: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from gain_table'
      
        #13'where ((availble>0) and (kind=:var1) and ( type_name=:var2) and' +
        ' (no_in_storge=:var3))'
      'order by input_date')
    Left = 40
    Top = 146
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
    object Query_discount_from_gain_tableNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'BIG_CARS.GAIN_TABLE.NUM'
    end
    object Query_discount_from_gain_tableKIND: TStringField
      FieldName = 'KIND'
      Origin = 'BIG_CARS.GAIN_TABLE.KIND'
      Size = 50
    end
    object Query_discount_from_gain_tableTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.GAIN_TABLE.TYPE_NAME'
      Size = 50
    end
    object Query_discount_from_gain_tableQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.GAIN_TABLE.QUANTITY'
    end
    object Query_discount_from_gain_tableAVAILBLE: TIntegerField
      FieldName = 'AVAILBLE'
      Origin = 'BIG_CARS.GAIN_TABLE.AVAILBLE'
    end
    object Query_discount_from_gain_tableTOTAL_BUDGET: TFloatField
      FieldName = 'TOTAL_BUDGET'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUDGET'
    end
    object Query_discount_from_gain_tableINPUT_DATE: TStringField
      FieldName = 'INPUT_DATE'
      Origin = 'BIG_CARS.GAIN_TABLE.INPUT_DATE'
      Size = 10
    end
    object Query_discount_from_gain_tableSALE_PRICE: TFloatField
      FieldName = 'SALE_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.SALE_PRICE'
    end
    object Query_discount_from_gain_tableBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.BUY_PRICE'
    end
    object Query_discount_from_gain_tableTOTAL_BUY_PRICE: TFloatField
      FieldName = 'TOTAL_BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUY_PRICE'
    end
    object Query_discount_from_gain_tableNO_IN_STORGE: TIntegerField
      FieldName = 'NO_IN_STORGE'
      Origin = 'BIG_CARS.GAIN_TABLE.NO_IN_STORGE'
    end
    object Query_discount_from_gain_tableWINING: TFloatField
      FieldName = 'WINING'
      Origin = 'BIG_CARS.GAIN_TABLE.WINING'
    end
  end
  object DataSource19: TDataSource
    DataSet = Query_quick_search
    Left = 8
    Top = 112
  end
  object Query_quick_search: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from types')
    Left = 40
    Top = 112
    object Query_quick_searchTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'BIG_CARS.TYPES.TYPE_NO'
    end
    object Query_quick_searchTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query_quick_searchTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'BIG_CARS.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query_quick_searchTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'BIG_CARS.TYPES.TYPE_KIND'
      Size = 50
    end
  end
end
