object Form59: TForm59
  Left = 308
  Top = 26
  Width = 473
  Height = 712
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1575#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607
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
    Width = 449
    Height = 664
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 283
      Top = 24
      Width = 61
      Height = 13
      Caption = #1605#1603#1575#1606' '#1575#1604#1576#1590#1575#1593#1607
    end
    object Label2: TLabel
      Left = 258
      Top = 552
      Width = 94
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1602#1610#1605#1577' '#1575#1604#1576#1590#1575#1593#1607
    end
    object Label3: TLabel
      Left = 298
      Top = 593
      Width = 18
      Height = 13
      Caption = #1605#1600#1600#1606
    end
    object Label4: TLabel
      Left = 136
      Top = 593
      Width = 20
      Height = 13
      Caption = #1573#1604#1600#1609
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 48
      Width = 433
      Height = 480
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
          Width = 130
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
          Visible = True
        end>
    end
    object ComboBox1: TComboBox
      Left = 128
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox1Change
    end
    object Button1: TButton
      Left = 136
      Top = 624
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 123
      Top = 544
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Button2: TButton
      Left = 272
      Top = 624
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 4
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 328
      Top = 592
      Width = 105
      Height = 17
      Caption = #1578#1581#1583#1610#1583' '#1601#1578#1585#1577' '#1575#1604#1591#1576#1575#1593#1607
      TabOrder = 5
      OnClick = CheckBox1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 168
      Top = 592
      Width = 123
      Height = 21
      Date = 39302.859606655090000000
      Time = 39302.859606655090000000
      TabOrder = 6
    end
    object DateTimePicker2: TDateTimePicker
      Left = 8
      Top = 592
      Width = 122
      Height = 21
      Date = 39302.859992222220000000
      Time = 39302.859992222220000000
      TabOrder = 7
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    OnCalcFields = IBQuery1CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from TEMP_TO_VIEW_ITEMS'
      '')
    UpdateObject = IBUpdateSQL1
    Left = 48
    Top = 8
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
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 16
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 16
    Top = 48
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  sum(quantity)  from MOVED_STORGE'
      'where (kind=:var1) and (name=:var2) and (place=:var3)')
    Left = 48
    Top = 48
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
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object IBQuery2SUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(BUY_PRICE* QUANTITY)  from MOVED_STORGE'
      'where place=:var1')
    Left = 48
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery3SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 16
    Top = 80
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 16
    Top = 112
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select distinct(name)  from MOVED_STORGE where (kind=:var1) and ' +
        '(place=:var2)')
    Left = 48
    Top = 112
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
    object IBQuery4NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'MOVED_STORGE.NAME'
      Required = True
      Size = 30
    end
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Left = 16
    Top = 144
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(PLACE) from MOVED_STORGE')
    Left = 48
    Top = 144
    object IBQuery5PLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'MOVED_STORGE.PLACE'
      Required = True
      Size = 30
    end
  end
  object DataSource6: TDataSource
    DataSet = IBQuery6
    Left = 16
    Top = 176
  end
  object IBQuery6: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(KIND) from MOVED_STORGE where place=:var1')
    Left = 48
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery6KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'MOVED_STORGE.KIND'
      Required = True
      Size = 30
    end
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TEMP_TO_VIEW_ITEMS'
    Left = 48
    Top = 208
  end
  object DataSource7: TDataSource
    DataSet = IBTable1
    Left = 16
    Top = 208
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
    Left = 80
    Top = 8
  end
  object IBQuery7: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(KIND) from MOVED_STORGE where (place=:var1)'
      'and (moved_date>=:var2) and (moved_date<=:var3)')
    Left = 368
    Top = 536
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object IBQuery7KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'MOVED_STORGE.KIND'
      Required = True
      Size = 30
    end
  end
  object IBQuery8: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select distinct(name)  from MOVED_STORGE where (kind=:var1) and ' +
        '(place=:var2) and (moved_date>=:var3) and (moved_date<=:var4)')
    Left = 368
    Top = 568
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
      end
      item
        DataType = ftDate
        Name = 'var3'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var4'
        ParamType = ptInputOutput
      end>
    object IBQuery8NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'MOVED_STORGE.NAME'
      Required = True
      Size = 30
    end
  end
  object IBQuery9: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  sum(quantity)  from MOVED_STORGE'
      
        'where (kind=:var1) and (name=:var2) and (place=:var3) and (moved' +
        '_date>=:var4) and (moved_date<=:var5)')
    Left = 368
    Top = 616
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
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var4'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var5'
        ParamType = ptInputOutput
      end>
    object IBQuery9SUM: TLargeintField
      FieldName = 'SUM'
    end
  end
  object DataSource8: TDataSource
    DataSet = IBQuery7
    Left = 400
    Top = 536
  end
  object DataSource9: TDataSource
    DataSet = IBQuery8
    Left = 400
    Top = 568
  end
  object DataSource10: TDataSource
    DataSet = IBQuery9
    Left = 400
    Top = 616
  end
end
