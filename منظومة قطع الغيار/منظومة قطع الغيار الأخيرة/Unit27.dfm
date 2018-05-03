object Form27: TForm27
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Align = alClient
  BiDiMode = bdRightToLeft
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
    Left = 48
    Top = 16
    Width = 929
    Height = 673
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 700
      Top = 10
      Width = 55
      Height = 13
      Caption = #1575#1587#1605' '#1575#1604#1588#1575#1581#1606#1577
    end
    object Label2: TLabel
      Left = 207
      Top = 10
      Width = 177
      Height = 13
      Caption = #1575#1604#1602#1591#1593' '#1575#1604#1605#1606#1578#1607#1610#1577' '#1608' '#1575#1604#1605#1578#1576#1602#1610#1577' '#1605#1606#1607#1575' '#1603#1605#1610#1577' '#1602#1604#1610#1604#1577
    end
    object DBGrid1: TDBGrid
      Left = 559
      Top = 34
      Width = 354
      Height = 569
      DataSource = DataSource1
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
          FieldName = 'KINDS_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1587#1605' '#1575#1604#1588#1575#1581#1606#1577
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KINDS_NOSTS'
          Title.Alignment = taCenter
          Title.Caption = #1605#1604#1575#1581#1592#1575#1578
          Width = 130
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 27
      Top = 34
      Width = 527
      Height = 569
      DataSource = DataSource4
      TabOrder = 1
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
          Title.Caption = #1575#1587#1605' '#1575#1604#1588#1575#1581#1606#1577
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TYPE_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1587#1605' '#1575#1604#1602#1591#1593#1577
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1578#1608#1601#1585#1577
          Width = 80
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 544
      Top = 632
      Width = 115
      Height = 25
      Caption = #1591#1576#1575#1593#1577' '#1603#1588#1601' '
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 336
      Top = 632
      Width = 115
      Height = 25
      Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1577
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_kinds
    Left = 8
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = Query_types
    Left = 8
    Top = 48
  end
  object DataSource3: TDataSource
    DataSet = Query_quantity_from_storge
    Left = 8
    Top = 80
  end
  object DataSource4: TDataSource
    DataSet = Query_save_and_view
    Left = 8
    Top = 112
  end
  object Query_kinds: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from kinds'
      'order by kinds_name')
    Left = 40
    Top = 16
    object Query_kindsKIND_NO: TIntegerField
      FieldName = 'KIND_NO'
      Origin = 'BIG_CARS.KINDS.KIND_NO'
    end
    object Query_kindsKINDS_NAME: TStringField
      FieldName = 'KINDS_NAME'
      Origin = 'BIG_CARS.KINDS.KINDS_NAME'
      Size = 50
    end
    object Query_kindsKINDS_NOSTS: TStringField
      FieldName = 'KINDS_NOSTS'
      Origin = 'BIG_CARS.KINDS.KINDS_NOSTS'
      Size = 100
    end
  end
  object Query_types: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from types'
      'where type_kind=:var1'
      'order by type_name')
    Left = 40
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_typesTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'BIG_CARS.TYPES.TYPE_NO'
    end
    object Query_typesTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query_typesTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'BIG_CARS.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query_typesTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'BIG_CARS.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object Query_quantity_from_storge: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(st_quantity) from storge'
      'where (st_kind=:var1) and (st_type=:var2)')
    Left = 40
    Top = 80
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
    object Query_quantity_from_storgeSUM: TIntegerField
      FieldName = 'SUM'
    end
  end
  object Query_save_and_view: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from types_less_then_three')
    Left = 40
    Top = 112
    object Query_save_and_viewKIND: TStringField
      FieldName = 'KIND'
      Origin = 'BIG_CARS.TYPES_LESS_THEN_THREE.KIND'
      Size = 50
    end
    object Query_save_and_viewTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TYPES_LESS_THEN_THREE.TYPE_NAME'
      Size = 50
    end
    object Query_save_and_viewQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.TYPES_LESS_THEN_THREE.QUANTITY'
    end
    object Query_save_and_viewSERIAL: TIntegerField
      FieldName = 'SERIAL'
      Origin = 'BIG_CARS.TYPES_LESS_THEN_THREE.SERIAL'
    end
  end
  object Query_serial: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(serial) from types_less_then_three')
    Left = 40
    Top = 144
    object Query_serialMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource5: TDataSource
    DataSet = Query_serial
    Left = 8
    Top = 144
  end
end
