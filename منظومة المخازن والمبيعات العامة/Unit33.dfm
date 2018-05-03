object Form33: TForm33
  Left = 237
  Top = 161
  Width = 693
  Height = 202
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1593#1583#1610#1604' '#1601#1609' '#1587#1593#1585' '#1575#1604#1576#1610#1593
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
    Width = 670
    Height = 153
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 633
      Top = 43
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label2: TLabel
      Left = 477
      Top = 43
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label3: TLabel
      Left = 306
      Top = 38
      Width = 44
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
    end
    object Label4: TLabel
      Left = 313
      Top = 54
      Width = 33
      Height = 13
      Caption = ' '#1575#1604#1581#1575#1604#1609
    end
    object Label5: TLabel
      Left = 132
      Top = 38
      Width = 44
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
    end
    object Label6: TLabel
      Left = 141
      Top = 54
      Width = 27
      Height = 13
      Caption = #1575#1604#1580#1583#1610#1583
    end
    object ComboBox1: TComboBox
      Left = 506
      Top = 40
      Width = 119
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 354
      Top = 40
      Width = 120
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox2Change
    end
    object Edit1: TEdit
      Left = 182
      Top = 40
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Button1: TButton
      Left = 386
      Top = 96
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 218
      Top = 96
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 6
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 48
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 48
    Top = 72
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 48
    Top = 104
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(KIND) from TYPES')
    Left = 80
    Top = 8
    object IBQuery1KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
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
      'select * from TYPES'
      'where kind=:var1')
    Left = 80
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TYPES.NAME'
      Required = True
      Size = 30
    end
    object IBQuery2KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
    object IBQuery2NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TYPES.NUM'
      Required = True
    end
    object IBQuery2SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'TYPES.SALE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TYPES'
      'where (kind=:var1) and (name=:var2)')
    UpdateObject = IBUpdateSQL1
    Left = 80
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
    object IBQuery3NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TYPES.NAME'
      Required = True
      Size = 30
    end
    object IBQuery3KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
    object IBQuery3NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TYPES.NUM'
      Required = True
    end
    object IBQuery3SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'TYPES.SALE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  SALE_PRICE'
      'from TYPES '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  SALE_PRICE = :SALE_PRICE')
    ModifySQL.Strings = (
      'update TYPES'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  SALE_PRICE = :SALE_PRICE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  SALE_PRICE = :OLD_SALE_PRICE')
    InsertSQL.Strings = (
      'insert into TYPES'
      '  (NAME, KIND, NUM, SALE_PRICE)'
      'values'
      '  (:NAME, :KIND, :NUM, :SALE_PRICE)')
    DeleteSQL.Strings = (
      'delete from TYPES'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  SALE_PRICE = :OLD_SALE_PRICE')
    Left = 112
    Top = 104
  end
end
