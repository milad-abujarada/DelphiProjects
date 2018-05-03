object Form83: TForm83
  Left = 344
  Top = 195
  Width = 407
  Height = 206
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1593#1583#1610#1604' '#1576#1610#1575#1606#1575#1578' '#1575#1604#1588#1575#1581#1606#1575#1578' '#1575#1604#1582#1575#1589#1577
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
    Left = 7
    Top = 6
    Width = 386
    Height = 162
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 321
      Top = 64
      Width = 56
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1588#1575#1581#1606#1577
    end
    object Label2: TLabel
      Left = 129
      Top = 63
      Width = 55
      Height = 13
      Caption = #1573#1587#1578#1576#1583#1575#1604' '#1576#1600#1600#1600#1600
    end
    object ComboBox1: TComboBox
      Left = 195
      Top = 57
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object Button1: TButton
      Left = 216
      Top = 120
      Width = 75
      Height = 25
      Caption = #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 112
      Top = 120
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Edit1: TEdit
    Left = 12
    Top = 63
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 16
  end
  object DataSource2: TDataSource
    DataSet = IBTable2
    Left = 16
    Top = 32
  end
  object DataSource3: TDataSource
    DataSet = IBTable3
    Left = 16
    Top = 64
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CARS'
    Left = 48
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
  end
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CARS_INCOME'
    Left = 48
    Top = 32
    object IBTable2NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable2INCOME: TIBBCDField
      FieldName = 'INCOME'
      Precision = 9
      Size = 3
    end
    object IBTable2NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable2REASONE: TIBStringField
      FieldName = 'REASONE'
      Size = 30
    end
  end
  object IBTable3: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CARS_SPENT'
    Left = 48
    Top = 64
    object IBTable3NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable3SPENT: TIBBCDField
      FieldName = 'SPENT'
      Precision = 9
      Size = 3
    end
    object IBTable3INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable3NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable3CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Size = 30
    end
  end
end
