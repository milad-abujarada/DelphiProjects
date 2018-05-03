object Form19: TForm19
  Left = 255
  Top = 163
  Width = 537
  Height = 223
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1582#1586#1610#1606' '#1576#1610#1575#1606#1575#1578' '#1587#1610#1575#1585#1577
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
    Top = 8
    Width = 505
    Height = 169
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 314
      Top = 36
      Width = 55
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1587#1610#1575#1585#1577
    end
    object DBEdit1: TDBEdit
      Left = 184
      Top = 32
      Width = 121
      Height = 21
      DataField = 'NAME'
      DataSource = DataSource2
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 312
    Top = 120
    Width = 75
    Height = 25
    Caption = #1581#1601#1592
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
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
      'select * from CARS'
      'where name=:var1')
    Left = 40
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'CARS.NAME'
      Required = True
      Size = 30
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'CARS.NUM'
      Required = True
    end
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CARS'
    Left = 40
    Top = 40
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from CARS')
    Left = 40
    Top = 72
    object IBQuery2MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 8
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = IBTable1
    Left = 8
    Top = 40
  end
  object DataSource3: TDataSource
    DataSet = IBQuery2
    Left = 8
    Top = 72
  end
end
