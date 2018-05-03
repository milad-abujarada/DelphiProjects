object Form14: TForm14
  Left = 1
  Top = 57
  Width = 1022
  Height = 680
  VertScrollBar.Position = 51
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
  object Panel1: TPanel
    Left = 152
    Top = -39
    Width = 735
    Height = 685
    BevelInner = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 598
      Top = 55
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label3: TLabel
      Left = 305
      Top = 56
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label4: TLabel
      Left = 425
      Top = 590
      Width = 62
      Height = 13
      Caption = #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
    end
    object Label6: TLabel
      Left = 314
      Top = 592
      Width = 68
      Height = 13
      Caption = #1581#1584#1601' '#1605#1606' '#1575#1604#1591#1604#1576#1610#1577
    end
    object Label1: TLabel
      Left = 325
      Top = 11
      Width = 78
      Height = 13
      Caption = #1573#1593#1583#1575#1583' '#1591#1604#1576#1610#1577' '#1604#1604#1605#1581#1604
    end
    object Label7: TLabel
      Left = 579
      Top = 99
      Width = 68
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1578#1608#1601#1585#1577
    end
    object Label8: TLabel
      Left = 291
      Top = 96
      Width = 66
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1591#1604#1608#1576#1577
    end
    object Label9: TLabel
      Left = 571
      Top = 139
      Width = 88
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1602#1591#1593#1577' '#1576#1575#1604#1588#1585#1603#1577
    end
    object Label10: TLabel
      Left = 286
      Top = 138
      Width = 85
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1602#1591#1593#1577' '#1575#1604#1593#1575#1604#1605#1610
    end
    object BitBtn1: TBitBtn
      Left = 483
      Top = 632
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1577' '#1575#1604#1591#1604#1576#1610#1577
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 368
      Top = 632
      Width = 89
      Height = 25
      Caption = #1573#1593#1583#1575#1583' '#1591#1604#1576#1610#1577' '#1580#1583#1610#1583#1577
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 208
      Top = 632
      Width = 105
      Height = 25
      Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1610#1577
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 315
      Top = 187
      Width = 107
      Height = 25
      Caption = #1573#1590#1575#1601#1577' '#1573#1604#1609' '#1575#1604#1591#1604#1576#1610#1577
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object ComboBox1: TComboBox
      Left = 411
      Top = 51
      Width = 145
      Height = 21
      BiDiMode = bdRightToLeft
      ItemHeight = 13
      ParentBiDiMode = False
      TabOrder = 4
      OnClick = ComboBox1Click
    end
    object ComboBox2: TComboBox
      Left = 139
      Top = 47
      Width = 145
      Height = 21
      BiDiMode = bdRightToLeft
      ItemHeight = 13
      ParentBiDiMode = False
      TabOrder = 5
      OnClick = ComboBox2Click
    end
    object Edit1: TEdit
      Left = 414
      Top = 93
      Width = 142
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 6
    end
    object Edit2: TEdit
      Left = 140
      Top = 90
      Width = 143
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 7
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 217
      Width = 689
      Height = 329
      BiDiMode = bdRightToLeft
      DataSource = DataSource4
      ParentBiDiMode = False
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KIND_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 188
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TYPE_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 188
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PIECE_NUM'
          Title.Alignment = taCenter
          Title.Caption = #1585#1602#1605' '#1575#1604#1602#1591#1593#1577
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'REF_NO'
          Title.Alignment = taCenter
          Title.Caption = #1585#1602#1605' '#1575#1604#1602#1591#1593#1577' '#1575#1604#1593#1575#1604#1605#1610
          Width = 115
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'WANTED_QUANTITY'
          Title.Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1591#1604#1608#1576#1577
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 288
      Top = 560
      Width = 224
      Height = 25
      DataSource = DataSource4
      VisibleButtons = [nbDelete, nbPost]
      TabOrder = 9
    end
    object Edit3: TEdit
      Left = 415
      Top = 135
      Width = 141
      Height = 21
      TabOrder = 10
    end
    object Edit4: TEdit
      Left = 140
      Top = 134
      Width = 144
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 11
    end
  end
  object Panel2: TPanel
    Left = 400
    Top = 205
    Width = 249
    Height = 209
    BevelInner = bvLowered
    TabOrder = 1
    object Label5: TLabel
      Left = 54
      Top = 32
      Width = 138
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1580#1607#1577' '#1575#1604#1605#1591#1604#1608#1576#1577' '#1605#1606#1607#1575' '#1575#1604#1591#1604#1576#1610#1577
    end
    object BitBtn5: TBitBtn
      Left = 88
      Top = 136
      Width = 75
      Height = 25
      Caption = #1605#1608#1575#1601#1602
      TabOrder = 0
      OnClick = BitBtn5Click
    end
    object ComboBox3: TComboBox
      Left = 64
      Top = 72
      Width = 124
      Height = 21
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object Query_bring_kinds: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from kinds')
    Left = 56
    Top = 88
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
  object Query_bring_type: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from types where type_kind=:var1'
      'order by type_name')
    Left = 56
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_bring_typeTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'BIG_CARS.TYPES.TYPE_NO'
    end
    object Query_bring_typeTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query_bring_typeTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'BIG_CARS.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query_bring_typeTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'BIG_CARS.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object Query_availble_for_wanted: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(st_availble) from storge'
      'where ((st_kind=:var1) and (st_type=:var2))')
    Left = 56
    Top = 152
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
    object Query_availble_for_wantedSUM: TIntegerField
      FieldName = 'SUM'
    end
  end
  object Query_bring_and_save_in_table: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from table_for_wanted')
    Left = 56
    Top = 184
    object Query_bring_and_save_in_tableTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TABLE_FOR_WANTED.TYPE_NAME'
      Size = 50
    end
    object Query_bring_and_save_in_tableKIND_NAME: TStringField
      FieldName = 'KIND_NAME'
      Origin = 'BIG_CARS.TABLE_FOR_WANTED.KIND_NAME'
      Size = 50
    end
    object Query_bring_and_save_in_tableWANTED_QUANTITY: TIntegerField
      FieldName = 'WANTED_QUANTITY'
      Origin = 'BIG_CARS.TABLE_FOR_WANTED.WANTED_QUANTITY'
    end
    object Query_bring_and_save_in_tableSERIAL_NO: TIntegerField
      FieldName = 'SERIAL_NO'
      Origin = 'BIG_CARS.TABLE_FOR_WANTED.SERIAL_NO'
    end
    object Query_bring_and_save_in_tablePIECE_NUM: TStringField
      FieldName = 'PIECE_NUM'
      Origin = 'BIG_CARS.TABLE_FOR_WANTED.PIECE_NUM'
      Size = 50
    end
    object Query_bring_and_save_in_tableREF_NO: TStringField
      FieldName = 'REF_NO'
      Origin = 'BIG_CARS.TABLE_FOR_WANTED.REF_NO'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_bring_kinds
    Left = 88
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = Query_bring_type
    Left = 88
    Top = 120
  end
  object DataSource3: TDataSource
    DataSet = Query_availble_for_wanted
    Left = 88
    Top = 152
  end
  object DataSource4: TDataSource
    DataSet = Query_bring_and_save_in_table
    Left = 88
    Top = 184
  end
  object DataSource5: TDataSource
    DataSet = Query_companys
    Left = 88
    Top = 216
  end
  object Query_companys: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from companys')
    Left = 56
    Top = 216
    object Query_companysCOMPANY_NAME: TStringField
      FieldName = 'COMPANY_NAME'
      Origin = 'BIG_CARS.COMPANYS.COMPANY_NAME'
      Size = 50
    end
    object Query_companysSERIAL: TIntegerField
      FieldName = 'SERIAL'
      Origin = 'BIG_CARS.COMPANYS.SERIAL'
    end
  end
end
