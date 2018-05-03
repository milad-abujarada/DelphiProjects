object Form8: TForm8
  Left = 1
  Top = 1
  Width = 1022
  Height = 736
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
    Left = 249
    Top = 16
    Width = 617
    Height = 641
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 230
      Top = 28
      Width = 114
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1589#1585#1608#1601#1575#1578' '#1604#1601#1578#1585#1577' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 258
      Top = 70
      Width = 17
      Height = 13
      Caption = #1573#1604#1609
    end
    object Label3: TLabel
      Left = 511
      Top = 68
      Width = 12
      Height = 13
      Caption = #1605#1606
    end
    object Label4: TLabel
      Left = 334
      Top = 604
      Width = 85
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1589#1585#1608#1601#1575#1578
    end
    object DateTimePicker1: TDateTimePicker
      Left = 355
      Top = 65
      Width = 137
      Height = 21
      Date = 38799.796533379630000000
      Time = 38799.796533379630000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 110
      Top = 66
      Width = 137
      Height = 21
      Date = 38799.796574432870000000
      Time = 38799.796574432870000000
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 278
      Top = 107
      Width = 81
      Height = 33
      Caption = #1593#1585#1590
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object Edit1: TEdit
      Left = 201
      Top = 600
      Width = 129
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object dbgrid1: TDBGrid
    Left = 276
    Top = 168
    Width = 569
    Height = 425
    BiDiMode = bdRightToLeft
    DataSource = DataSource1
    ParentBiDiMode = False
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
        FieldName = 'SP_NAME'
        Title.Alignment = taCenter
        Title.Caption = #1575#1587#1605' '#1575#1604#1605#1578#1589#1585#1601
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SP_AMOUNT'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1602#1610#1605#1577
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SP_CAUSE'
        Title.Alignment = taCenter
        Title.Caption = #1587#1576#1576' '#1575#1604#1578#1589#1585#1601
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SP_DATE'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1578#1575#1585#1610#1582
        Width = 120
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 64
    Top = 544
    Width = 113
    Height = 25
    Caption = #1585#1580#1608#1593
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DataSource1: TDataSource
    DataSet = Query_select_spend
    Left = 168
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = Query_total_spend
    Left = 168
    Top = 104
  end
  object Query_select_spend: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from spend'
      'where'
      '(( sp_date>=:var1 ) and ( sp_date<=:var2 ))')
    Left = 200
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
    object Query_select_spendSP_NO: TIntegerField
      FieldName = 'SP_NO'
      Origin = 'ST.SPEND.SP_NO'
    end
    object Query_select_spendSP_NAME: TStringField
      FieldName = 'SP_NAME'
      Origin = 'ST.SPEND.SP_NAME'
      Size = 50
    end
    object Query_select_spendSP_CAUSE: TStringField
      FieldName = 'SP_CAUSE'
      Origin = 'ST.SPEND.SP_CAUSE'
      Size = 50
    end
    object Query_select_spendSP_AMOUNT: TFloatField
      FieldName = 'SP_AMOUNT'
      Origin = 'ST.SPEND.SP_AMOUNT'
    end
    object Query_select_spendSP_DATE: TStringField
      FieldName = 'SP_DATE'
      Origin = 'ST.SPEND.SP_DATE'
      Size = 10
    end
  end
  object Query_total_spend: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(sp_amount) from spend'
      'where'
      '(( sp_date>=:var1 ) and ( sp_date<=:var2 ))')
    Left = 200
    Top = 104
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
    object Query_total_spendSUM: TFloatField
      FieldName = 'SUM'
    end
  end
end
