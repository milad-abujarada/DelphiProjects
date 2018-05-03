object Form26: TForm26
  Left = 283
  Top = 256
  Width = 465
  Height = 209
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
    Left = 0
    Top = 0
    Width = 457
    Height = 175
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 188
      Top = 13
      Width = 72
      Height = 13
      Caption = #1578#1594#1610#1585' '#1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585
    end
    object Label2: TLabel
      Left = 289
      Top = 52
      Width = 50
      Height = 13
      Caption = #1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585
    end
    object Label3: TLabel
      Left = 278
      Top = 89
      Width = 78
      Height = 13
      Caption = #1578#1571#1603#1610#1583' '#1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585
    end
    object Edit1: TEdit
      Left = 134
      Top = 48
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 233
      Top = 129
      Width = 115
      Height = 25
      Caption = #1605#1608#1575#1601#1602
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 108
      Top = 130
      Width = 115
      Height = 25
      Caption = #1573#1604#1594#1575#1569' '#1575#1604#1575#1605#1585
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object Edit2: TEdit
      Left = 134
      Top = 85
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_change_password
    Left = 16
    Top = 16
  end
  object Query_change_password: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from password_table')
    Left = 48
    Top = 16
    object Query_change_passwordPASSWORD1: TStringField
      FieldName = 'PASSWORD1'
      Origin = 'BIG_CARS.PASSWORD_TABLE.PASSWORD1'
      Size = 50
    end
  end
end
