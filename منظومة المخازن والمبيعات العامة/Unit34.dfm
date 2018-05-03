object Form34: TForm34
  Left = 284
  Top = 177
  Width = 520
  Height = 229
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1582#1586#1610#1606' '#1575#1604#1605#1608#1585#1583#1610#1606
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
      Left = 404
      Top = 51
      Width = 48
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1608#1585#1583
    end
    object Label2: TLabel
      Left = 197
      Top = 56
      Width = 53
      Height = 13
      Caption = #1591#1585#1610#1602#1577' '#1575#1604#1583#1601#1593
    end
    object DBEdit1: TDBEdit
      Left = 276
      Top = 48
      Width = 121
      Height = 21
      DataField = 'NAME'
      DataSource = DataSource3
      TabOrder = 0
    end
    object DBComboBox1: TDBComboBox
      Left = 68
      Top = 48
      Width = 123
      Height = 21
      Style = csDropDownList
      DataField = 'PAY_TYPE'
      DataSource = DataSource3
      ItemHeight = 13
      Items.Strings = (
        #1576#1575#1604#1583#1610#1606#1575#1585
        #1594#1610#1585' '#1584#1604#1603)
      TabOrder = 1
    end
  end
  object Button2: TButton
    Left = 148
    Top = 120
    Width = 75
    Height = 25
    Caption = #1585#1580#1608#1593
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 308
    Top = 120
    Width = 75
    Height = 25
    Caption = #1581#1601#1592
    TabOrder = 2
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 48
    Top = 16
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from provides'
      'where name=:var1')
    Left = 16
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROVIDES.NAME'
      Required = True
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM)  from PROVIDES')
    Left = 16
    Top = 48
    object IBQuery2MAX: TIntegerField
      FieldName = 'MAX'
    end
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
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PROVIDES'
    Left = 16
    Top = 86
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1PAY_TYPE: TIBStringField
      FieldName = 'PAY_TYPE'
      Size = 10
    end
  end
end
