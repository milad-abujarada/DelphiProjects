object Form20: TForm20
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  HorzScrollBar.Position = 138
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
    Left = 118
    Top = 16
    Width = 553
    Height = 633
    BevelInner = bvLowered
    TabOrder = 0
    object Label7: TLabel
      Left = 188
      Top = 545
      Width = 28
      Height = 13
      Caption = #1573#1590#1575#1601#1577
    end
    object Label8: TLabel
      Left = 247
      Top = 545
      Width = 21
      Height = 13
      Caption = #1581#1584#1601
    end
    object Label9: TLabel
      Left = 300
      Top = 545
      Width = 26
      Height = 13
      Caption = #1578#1593#1583#1610#1604
    end
    object Label10: TLabel
      Left = 359
      Top = 545
      Width = 19
      Height = 13
      Caption = #1581#1601#1592
    end
    object Label1: TLabel
      Left = 210
      Top = 17
      Width = 133
      Height = 13
      Caption = #1575#1587#1605#1575#1569' '#1575#1604#1588#1585#1603#1575#1578' '#1575#1604#1605#1578#1593#1575#1605#1604' '#1605#1593#1607#1575
    end
    object DBGrid1: TDBGrid
      Left = 111
      Top = 43
      Width = 337
      Height = 465
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
          FieldName = 'COMPANY_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1573#1587#1605' '#1575#1604#1588#1585#1603#1577
          Width = 200
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 171
      Top = 518
      Width = 224
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost]
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 233
      Top = 603
      Width = 113
      Height = 25
      Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1610#1577
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_select_companys
    Left = 126
    Top = 78
  end
  object Query_select_companys: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from companys')
    Left = 158
    Top = 78
    object Query_select_companysCOMPANY_NAME: TStringField
      FieldName = 'COMPANY_NAME'
      Origin = 'BIG_CARS.COMPANYS.COMPANY_NAME'
      Size = 50
    end
    object Query_select_companysSERIAL: TIntegerField
      FieldName = 'SERIAL'
      Origin = 'BIG_CARS.COMPANYS.SERIAL'
    end
  end
end
