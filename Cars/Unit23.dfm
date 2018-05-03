object Form23: TForm23
  Left = -4
  Top = -4
  Width = 1032
  Height = 746
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
    Left = 280
    Top = 8
    Width = 521
    Height = 693
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 213
      Top = 16
      Width = 99
      Height = 13
      Caption = #1578#1608#1585#1610#1583' '#1575#1604#1605#1576#1575#1604#1594' '#1605#1606' '#1575#1604#1605#1581#1604
    end
    object Label2: TLabel
      Left = 460
      Top = 68
      Width = 48
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1608#1585#1583
    end
    object Label3: TLabel
      Left = 305
      Top = 71
      Width = 25
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577
    end
    object Label4: TLabel
      Left = 133
      Top = 70
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object DBGrid1: TDBGrid
      Left = 42
      Top = 160
      Width = 441
      Height = 425
      DataSource = DataSource1
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
          FieldName = 'TAKER_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1573#1587#1605' '#1575#1604#1605#1608#1585#1583
          Width = 180
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'AMOUNT'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1602#1610#1605#1577
          Width = 92
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'STORED_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 135
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 228
      Top = 112
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object Edit1: TEdit
      Left = 336
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 181
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object DateTimePicker1: TDateTimePicker
      Left = 7
      Top = 64
      Width = 122
      Height = 21
      Date = 38871.785496053240000000
      Time = 38871.785496053240000000
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 211
      Top = 655
      Width = 115
      Height = 25
      Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1577
      TabOrder = 5
      OnClick = BitBtn2Click
    end
    object DBNavigator1: TDBNavigator
      Left = 184
      Top = 592
      Width = 160
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbDelete]
      TabOrder = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_save_in_taken_table
    Left = 248
    Top = 88
  end
  object Query_save_in_taken_table: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from taken_amount'
      'order by stored_date')
    Left = 216
    Top = 88
    object Query_save_in_taken_tableSERIAL: TIntegerField
      FieldName = 'SERIAL'
      Origin = 'BIG_CARS.TAKEN_AMOUNT.SERIAL'
    end
    object Query_save_in_taken_tableAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Origin = 'BIG_CARS.TAKEN_AMOUNT.AMOUNT'
    end
    object Query_save_in_taken_tableSTORED_DATE: TStringField
      FieldName = 'STORED_DATE'
      Origin = 'BIG_CARS.TAKEN_AMOUNT.STORED_DATE'
      Size = 10
    end
    object Query_save_in_taken_tableTAKER_NAME: TStringField
      FieldName = 'TAKER_NAME'
      Origin = 'BIG_CARS.TAKEN_AMOUNT.TAKER_NAME'
      Size = 50
    end
  end
  object Query_max_serial: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(serial) from taken_amount')
    Left = 216
    Top = 120
    object Query_max_serialMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query_max_serial
    Left = 248
    Top = 120
  end
end
