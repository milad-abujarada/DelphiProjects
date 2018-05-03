object Form7: TForm7
  Left = 1
  Top = 50
  Width = 1022
  Height = 624
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
    Left = 195
    Top = 16
    Width = 681
    Height = 609
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 296
      Top = 568
      Width = 190
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1602#1610#1605#1577' '#1575#1604#1576#1590#1575#1593#1577' '#1575#1604#1605#1608#1580#1608#1583#1577' '#1601#1610' '#1575#1604#1605#1582#1586#1606
    end
    object Label2: TLabel
      Left = 243
      Top = 21
      Width = 151
      Height = 13
      Caption = #1580#1585#1583' '#1575#1604#1576#1590#1575#1593#1577' '#1575#1604#1605#1608#1580#1608#1583#1577' '#1601#1609' '#1575#1604#1605#1582#1586#1606
    end
    object Label3: TLabel
      Left = 160
      Top = 571
      Width = 22
      Height = 13
      Caption = #1583#1610#1606#1575#1585
    end
    object DBGrid1: TDBGrid
      Left = 40
      Top = 48
      Width = 601
      Height = 489
      BiDiMode = bdRightToLeft
      DataSource = DataSource3
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
          FieldName = 'KIND_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 225
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TYPE_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 225
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = #1575#1580#1605#1575#1604#1609' '#1575#1604#1576#1590#1575#1593#1577' '#1575#1604#1605#1608#1580#1608#1583#1577
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 187
      Top = 568
      Width = 107
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 600
    Width = 115
    Height = 25
    Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1610#1577
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 48
    Top = 560
    Width = 113
    Height = 25
    Caption = #1575#1604#1580#1585#1583' '#1575#1604#1605#1601#1589#1604
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object Query_bring_availble_for_every_kind: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(st_availble) from storge'
      'where'
      'st_kind=:var1 and st_type=:var2')
    Left = 968
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
    object Query_bring_availble_for_every_kindSUM: TIntegerField
      FieldName = 'SUM'
    end
  end
  object Query_bring_kinds_tyes: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from types')
    Left = 968
    Top = 56
    object Query_bring_kinds_tyesTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'BIG_CARS.TYPES.TYPE_NO'
    end
    object Query_bring_kinds_tyesTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query_bring_kinds_tyesTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'BIG_CARS.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query_bring_kinds_tyesTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'BIG_CARS.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_bring_availble_for_every_kind
    Left = 936
    Top = 152
  end
  object DataSource2: TDataSource
    DataSet = Query_bring_kinds_tyes
    Left = 936
    Top = 56
  end
  object DataSource3: TDataSource
    DataSet = Query_bring_and_save_from_total_storge
    Left = 936
    Top = 120
  end
  object Query_bring_and_save_from_total_storge: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from total_storge')
    Left = 968
    Top = 120
    object Query_bring_and_save_from_total_storgeSERIAL_NO: TIntegerField
      FieldName = 'SERIAL_NO'
      Origin = 'BIG_CARS.TOTAL_STORGE.SERIAL_NO'
    end
    object Query_bring_and_save_from_total_storgeTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TOTAL_STORGE.TYPE_NAME'
      Size = 50
    end
    object Query_bring_and_save_from_total_storgeKIND_NAME: TStringField
      FieldName = 'KIND_NAME'
      Origin = 'BIG_CARS.TOTAL_STORGE.KIND_NAME'
      Size = 50
    end
    object Query_bring_and_save_from_total_storgeTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'BIG_CARS.TOTAL_STORGE.TOTAL'
    end
  end
  object Query_total_budget_in_storge: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(st_availble * st_type_pay) from storge')
    Left = 968
    Top = 88
    object Query_total_budget_in_storgeSUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query_total_budget_in_storge
    Left = 936
    Top = 88
  end
  object DataSource5: TDataSource
    DataSet = Query_serial_no_for_total_storge
    Left = 936
    Top = 184
  end
  object Query_serial_no_for_total_storge: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(serial_no)from total_storge')
    Left = 968
    Top = 184
    object Query_serial_no_for_total_storgeMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
end
