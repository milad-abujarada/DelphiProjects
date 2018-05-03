object Form22: TForm22
  Left = 283
  Top = 252
  Width = 465
  Height = 211
  BiDiMode = bdRightToLeft
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
    Left = 0
    Top = 0
    Width = 457
    Height = 177
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 176
      Top = 16
      Width = 98
      Height = 13
      Caption = #1575#1604#1578#1581#1602#1602' '#1605#1606' '#1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585
    end
    object Label2: TLabel
      Left = 261
      Top = 52
      Width = 50
      Height = 13
      Caption = #1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585
    end
    object Edit1: TEdit
      Left = 128
      Top = 48
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 234
      Top = 103
      Width = 115
      Height = 25
      Caption = #1605#1608#1575#1601#1602
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 109
      Top = 104
      Width = 115
      Height = 25
      Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1610#1577
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_search_password
    Left = 8
    Top = 16
  end
  object Query_search_password: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from password_table')
    Left = 40
    Top = 16
    object Query_search_passwordPASSWORD1: TStringField
      FieldName = 'PASSWORD1'
      Origin = 'BIG_CARS.PASSWORD_TABLE.PASSWORD1'
      Size = 50
    end
  end
end
