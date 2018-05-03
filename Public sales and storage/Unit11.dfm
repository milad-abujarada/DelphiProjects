object Form11: TForm11
  Left = 281
  Top = 178
  Width = 520
  Height = 231
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1582#1586#1610#1606' '#1571#1587#1605#1575#1569' '#1575#1604#1586#1576#1575#1574#1606' '#1575#1604#1583#1575#1574#1605#1610#1606
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
    Left = 8
    Top = 6
    Width = 497
    Height = 185
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 295
      Top = 51
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1586#1576#1608#1606
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 48
      Width = 121
      Height = 21
      DataField = 'CUS_NAME'
      DataSource = DataSource3
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 296
    Top = 120
    Width = 75
    Height = 25
    Caption = #1581#1601#1592
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 120
    Width = 75
    Height = 25
    Caption = #1585#1580#1608#1593
    TabOrder = 2
    OnClick = Button2Click
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CUS_NAME from CUSTOMERS'
      'where cus_name=:var1')
    Left = 16
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1CUS_NAME: TIBStringField
      FieldName = 'CUS_NAME'
      Origin = 'CUSTOMERS.CUS_NAME'
      Required = True
      Size = 30
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from CUSTOMERS')
    Left = 16
    Top = 48
    object IBQuery2MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CUSTOMERS'
    Left = 16
    Top = 86
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 48
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 48
    Top = 48
  end
  object DataSource3: TDataSource
    DataSet = IBTable1
    Left = 48
    Top = 88
  end
end
