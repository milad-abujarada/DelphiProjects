object Form10: TForm10
  Left = 192
  Top = 1
  Width = 696
  Height = 721
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1575#1604#1605#1582#1586#1606
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
    Left = 24
    Top = 16
    Width = 641
    Height = 657
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 367
      Top = 597
      Width = 94
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1602#1610#1605#1577' '#1575#1604#1576#1590#1575#1593#1577
    end
    object DBGrid1: TDBGrid
      Left = 95
      Top = 8
      Width = 481
      Height = 569
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
          FieldName = 'KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 183
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577
          Width = 87
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 236
      Top = 627
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 240
      Top = 592
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Button2: TButton
      Left = 368
      Top = 627
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    OnCalcFields = IBQuery1CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from   TEMP_TO_VIEW_ITEMS')
    UpdateObject = IBUpdateSQL1
    Left = 104
    Top = 40
    object IBQuery1KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TEMP_TO_VIEW_ITEMS.KIND'
      Required = True
      Size = 30
    end
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TEMP_TO_VIEW_ITEMS.NAME'
      Required = True
      Size = 30
    end
    object IBQuery1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'TEMP_TO_VIEW_ITEMS.QUANTITY'
      Required = True
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  sum(quantity) from STORGE'
      'where (kind=:var1) and (name=:var2)')
    Left = 104
    Top = 80
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
    object IBQuery2SUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 72
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 72
    Top = 80
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(BUY_PRICE* QUANTITY) from STORGE')
    Left = 104
    Top = 112
    object IBQuery3SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 72
    Top = 112
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 72
    Top = 144
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(name) from storge where kind=:var1')
    Left = 104
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery4NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE.NAME'
      Required = True
      Size = 30
    end
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(KIND) from STORGE')
    Left = 104
    Top = 176
    object IBQuery5KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE.KIND'
      Required = True
      Size = 30
    end
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Left = 72
    Top = 176
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  KIND,'
      '  NAME,'
      '  QUANTITY'
      'from TEMP_TO_VIEW_ITEMS '
      'where'
      '  KIND = :KIND and'
      '  NAME = :NAME and'
      '  QUANTITY = :QUANTITY')
    ModifySQL.Strings = (
      'update TEMP_TO_VIEW_ITEMS'
      'set'
      '  KIND = :KIND,'
      '  NAME = :NAME,'
      '  QUANTITY = :QUANTITY'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME and'
      '  QUANTITY = :OLD_QUANTITY')
    InsertSQL.Strings = (
      'insert into TEMP_TO_VIEW_ITEMS'
      '  (KIND, NAME, QUANTITY)'
      'values'
      '  (:KIND, :NAME, :QUANTITY)')
    DeleteSQL.Strings = (
      'delete from TEMP_TO_VIEW_ITEMS'
      'where'
      '  KIND = :OLD_KIND and'
      '  NAME = :OLD_NAME and'
      '  QUANTITY = :OLD_QUANTITY')
    Left = 136
    Top = 40
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TEMP_TO_VIEW_ITEMS'
    Left = 104
    Top = 208
    object IBTable1KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
  end
  object DataSource6: TDataSource
    DataSet = IBTable1
    Left = 72
    Top = 208
  end
end
