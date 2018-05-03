object Form20: TForm20
  Left = 291
  Top = 189
  Width = 529
  Height = 218
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1582#1586#1610#1606' '#1576#1610#1575#1606#1575#1578' '#1587#1575#1574#1602
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
      Left = 292
      Top = 39
      Width = 52
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1587#1575#1574#1602
    end
    object DBEdit1: TDBEdit
      Left = 159
      Top = 35
      Width = 121
      Height = 21
      DataField = 'NAME'
      DataSource = DataSource2
      TabOrder = 0
    end
  end
  object Button2: TButton
    Left = 128
    Top = 128
    Width = 75
    Height = 25
    Caption = #1585#1580#1608#1593
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 320
    Top = 120
    Width = 75
    Height = 25
    Caption = #1581#1601#1592
    TabOrder = 2
    OnClick = Button1Click
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from EMPLOYS'
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
      Origin = 'EMPLOYS.NAME'
      Required = True
      Size = 30
    end
    object IBQuery1WORK_TYPE: TIBStringField
      FieldName = 'WORK_TYPE'
      Origin = 'EMPLOYS.WORK_TYPE'
      Required = True
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'EMPLOYS.NUM'
      Required = True
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
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'EMPLOYS'
    Left = 40
    Top = 40
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1WORK_TYPE: TIBStringField
      FieldName = 'WORK_TYPE'
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
      'select max(NUM) from   EMPLOYS')
    Left = 40
    Top = 72
    object IBQuery2MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery2
    Left = 8
    Top = 72
  end
end
