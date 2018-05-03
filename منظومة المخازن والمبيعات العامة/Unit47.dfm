object Form47: TForm47
  Left = 220
  Top = 16
  Width = 696
  Height = 722
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1601#1609' '#1605#1589#1585#1608#1601#1575#1578' '#1608' '#1573#1610#1585#1575#1583#1575#1578' '#1575#1604#1588#1575#1581#1606#1575#1578
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
    Top = 7
    Width = 673
    Height = 674
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 614
      Top = 53
      Width = 12
      Height = 13
      Caption = #1605#1606
    end
    object Label1: TLabel
      Left = 413
      Top = 53
      Width = 35
      Height = 13
      Caption = #1575#1604#1588#1575#1581#1606#1577
    end
    object Label3: TLabel
      Left = 230
      Top = 55
      Width = 17
      Height = 13
      Caption = #1573#1604#1609
    end
    object Label4: TLabel
      Left = 466
      Top = 80
      Width = 70
      Height = 13
      Caption = #1573#1610#1585#1575#1583#1575#1578' '#1575#1604#1588#1575#1581#1606#1607
    end
    object Label5: TLabel
      Left = 135
      Top = 80
      Width = 81
      Height = 13
      Caption = #1605#1589#1585#1608#1601#1575#1578' '#1575#1604#1588#1575#1581#1606#1607
    end
    object Label6: TLabel
      Left = 190
      Top = 519
      Width = 85
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1589#1585#1608#1601#1575#1578
    end
    object Label7: TLabel
      Left = 537
      Top = 520
      Width = 73
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1573#1610#1585#1575#1583#1575#1578
    end
    object RadioButton1: TRadioButton
      Left = 368
      Top = 8
      Width = 169
      Height = 17
      Caption = #1593#1585#1590' '#1603#1604' '#1605#1589#1585#1608#1601#1575#1578' '#1608' '#1575#1604#1573#1610#1585#1575#1583#1575#1578
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 104
      Top = 8
      Width = 185
      Height = 17
      Caption = #1593#1585#1590' '#1605#1589#1585#1608#1601#1575#1578' '#1608' '#1575#1604#1573#1610#1585#1575#1583#1575#1578' '#1601#1609' '#1601#1578#1585#1577
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 464
      Top = 48
      Width = 146
      Height = 21
      Date = 39262.740663148150000000
      Time = 39262.740663148150000000
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 264
      Top = 48
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnChange = ComboBox1Change
    end
    object DBGrid1: TDBGrid
      Left = 344
      Top = 96
      Width = 320
      Height = 401
      DataSource = DataSource1
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INCOME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1573#1610#1585#1575#1583
          Width = 146
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'REASONE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1576#1610#1575#1606
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 142
          Visible = True
        end>
    end
    object DateTimePicker2: TDateTimePicker
      Left = 80
      Top = 48
      Width = 146
      Height = 21
      Date = 39262.740663148150000000
      Time = 39262.740663148150000000
      TabOrder = 5
    end
    object DBGrid2: TDBGrid
      Left = 16
      Top = 96
      Width = 320
      Height = 401
      DataSource = DataSource4
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SPENT'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1605#1589#1585#1608#1601
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CAUSE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1576#1576' '#1575#1604#1589#1585#1601
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 393
      Top = 544
      Width = 224
      Height = 25
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 7
    end
    object DBNavigator2: TDBNavigator
      Left = 56
      Top = 544
      Width = 224
      Height = 25
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 8
    end
    object Button1: TButton
      Left = 312
      Top = 632
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 9
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 460
      Top = 577
      Width = 93
      Height = 25
      Caption = #1591#1576#1575#1593#1577' '#1575#1604#1573#1610#1585#1575#1583#1575#1578
      TabOrder = 10
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 120
      Top = 576
      Width = 97
      Height = 25
      Caption = #1591#1576#1575#1593#1577' '#1575#1604#1605#1589#1585#1608#1601#1575#1578
      TabOrder = 11
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 410
      Top = 515
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 12
    end
    object Edit2: TEdit
      Left = 64
      Top = 514
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 13
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 360
    Top = 16
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME)  from CARS')
    Left = 328
    Top = 16
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery1AfterDelete
    AfterPost = IBQuery1AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from CARS_INCOME'
      'where name=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 608
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'CARS_INCOME.NAME'
      Required = True
      Size = 30
    end
    object IBQuery1INCOME: TIBBCDField
      FieldName = 'INCOME'
      Origin = 'CARS_INCOME.INCOME'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'CARS_INCOME.NUM'
      Required = True
    end
    object IBQuery1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'CARS_INCOME.INPUT_DATE'
      Required = True
    end
    object IBQuery1REASONE: TIBStringField
      FieldName = 'REASONE'
      Origin = 'CARS_INCOME.REASONE'
      Required = True
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 640
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 640
    Top = 40
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery2AfterDelete
    AfterPost = IBQuery2AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from CARS_INCOME'
      'where '
      '(input_date>=:var1) and (input_date<=:var2) and (name=:var3)')
    UpdateObject = IBUpdateSQL2
    Left = 608
    Top = 40
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
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'CARS_INCOME.NAME'
      Required = True
      Size = 30
    end
    object IBQuery2INCOME: TIBBCDField
      FieldName = 'INCOME'
      Origin = 'CARS_INCOME.INCOME'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'CARS_INCOME.NUM'
      Required = True
    end
    object IBQuery2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'CARS_INCOME.INPUT_DATE'
      Required = True
    end
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery4AfterDelete
    AfterPost = IBQuery4AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from CARS_SPENT'
      'where name=:var1')
    UpdateObject = IBUpdateSQL3
    Left = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery4NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'CARS_SPENT.NAME'
      Required = True
      Size = 30
    end
    object IBQuery4SPENT: TIBBCDField
      FieldName = 'SPENT'
      Origin = 'CARS_SPENT.SPENT'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery4INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'CARS_SPENT.INPUT_DATE'
      Required = True
    end
    object IBQuery4NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'CARS_SPENT.NUM'
      Required = True
    end
    object IBQuery4CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'CARS_SPENT.CAUSE'
      Size = 30
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 48
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery5AfterDelete
    AfterPost = IBQuery5AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *   from CARS_SPENT'
      'where '
      '(input_date>=:var1) and (input_date<=:var2) and (name=:var3)')
    UpdateObject = IBUpdateSQL4
    Left = 16
    Top = 32
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
    object IBQuery5NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'CARS_SPENT.NAME'
      Required = True
      Size = 30
    end
    object IBQuery5SPENT: TIBBCDField
      FieldName = 'SPENT'
      Origin = 'CARS_SPENT.SPENT'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery5INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'CARS_SPENT.INPUT_DATE'
      Required = True
    end
    object IBQuery5NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'CARS_SPENT.NUM'
      Required = True
    end
    object IBQuery5CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'CARS_SPENT.CAUSE'
      Size = 30
    end
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Left = 48
    Top = 32
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  INCOME,'
      '  NUM,'
      '  INPUT_DATE,'
      '  REASONE'
      'from CARS_INCOME '
      'where'
      '  NAME = :NAME and'
      '  INCOME = :INCOME and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  REASONE = :REASONE')
    ModifySQL.Strings = (
      'update CARS_INCOME'
      'set'
      '  NAME = :NAME,'
      '  INCOME = :INCOME,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  REASONE = :REASONE'
      'where'
      '  NAME = :OLD_NAME and'
      '  INCOME = :OLD_INCOME and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  REASONE = :OLD_REASONE')
    InsertSQL.Strings = (
      'insert into CARS_INCOME'
      '  (NAME, INCOME, NUM, INPUT_DATE, REASONE)'
      'values'
      '  (:NAME, :INCOME, :NUM, :INPUT_DATE, :REASONE)')
    DeleteSQL.Strings = (
      'delete from CARS_INCOME'
      'where'
      '  NAME = :OLD_NAME and'
      '  INCOME = :OLD_INCOME and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  REASONE = :OLD_REASONE')
    Left = 584
    Top = 8
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  INCOME,'
      '  NUM,'
      '  INPUT_DATE'
      'from CARS_INCOME '
      'where'
      '  NAME = :NAME and'
      '  INCOME = :INCOME and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE')
    ModifySQL.Strings = (
      'update CARS_INCOME'
      'set'
      '  NAME = :NAME,'
      '  INCOME = :INCOME,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE'
      'where'
      '  NAME = :OLD_NAME and'
      '  INCOME = :OLD_INCOME and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    InsertSQL.Strings = (
      'insert into CARS_INCOME'
      '  (NAME, INCOME, NUM, INPUT_DATE)'
      'values'
      '  (:NAME, :INCOME, :NUM, :INPUT_DATE)')
    DeleteSQL.Strings = (
      'delete from CARS_INCOME'
      'where'
      '  NAME = :OLD_NAME and'
      '  INCOME = :OLD_INCOME and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    Left = 576
    Top = 40
  end
  object IBUpdateSQL3: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  SPENT,'
      '  INPUT_DATE,'
      '  NUM,'
      '  CAUSE'
      'from CARS_SPENT '
      'where'
      '  NAME = :NAME and'
      '  SPENT = :SPENT and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  NUM = :NUM and'
      '  CAUSE = :CAUSE')
    ModifySQL.Strings = (
      'update CARS_SPENT'
      'set'
      '  NAME = :NAME,'
      '  SPENT = :SPENT,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  NUM = :NUM,'
      '  CAUSE = :CAUSE'
      'where'
      '  NAME = :OLD_NAME and'
      '  SPENT = :OLD_SPENT and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  NUM = :OLD_NUM and'
      '  CAUSE = :OLD_CAUSE')
    InsertSQL.Strings = (
      'insert into CARS_SPENT'
      '  (NAME, SPENT, INPUT_DATE, NUM, CAUSE)'
      'values'
      '  (:NAME, :SPENT, :INPUT_DATE, :NUM, :CAUSE)')
    DeleteSQL.Strings = (
      'delete from CARS_SPENT'
      'where'
      '  NAME = :OLD_NAME and'
      '  SPENT = :OLD_SPENT and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  NUM = :OLD_NUM and'
      '  CAUSE = :OLD_CAUSE')
    Left = 80
  end
  object IBUpdateSQL4: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  SPENT,'
      '  INPUT_DATE,'
      '  NUM,'
      '  CAUSE'
      'from CARS_SPENT '
      'where'
      '  NAME = :NAME and'
      '  SPENT = :SPENT and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  NUM = :NUM and'
      '  CAUSE = :CAUSE')
    ModifySQL.Strings = (
      'update CARS_SPENT'
      'set'
      '  NAME = :NAME,'
      '  SPENT = :SPENT,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  NUM = :NUM,'
      '  CAUSE = :CAUSE'
      'where'
      '  NAME = :OLD_NAME and'
      '  SPENT = :OLD_SPENT and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  NUM = :OLD_NUM and'
      '  CAUSE = :OLD_CAUSE')
    InsertSQL.Strings = (
      'insert into CARS_SPENT'
      '  (NAME, SPENT, INPUT_DATE, NUM, CAUSE)'
      'values'
      '  (:NAME, :SPENT, :INPUT_DATE, :NUM, :CAUSE)')
    DeleteSQL.Strings = (
      'delete from CARS_SPENT'
      'where'
      '  NAME = :OLD_NAME and'
      '  SPENT = :OLD_SPENT and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  NUM = :OLD_NUM and'
      '  CAUSE = :OLD_CAUSE')
    Left = 80
    Top = 32
  end
  object DataSource6: TDataSource
    DataSet = IBQuery6
    Left = 640
    Top = 71
  end
  object DataSource7: TDataSource
    DataSet = IBQuery7
    Left = 640
    Top = 103
  end
  object DataSource8: TDataSource
    DataSet = IBQuery8
    Left = 48
    Top = 63
  end
  object DataSource9: TDataSource
    DataSet = IBQuery9
    Left = 48
    Top = 95
  end
  object IBQuery6: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(INCOME) from CARS_INCOME'
      'where name=:var1')
    Left = 608
    Top = 71
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery6SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object IBQuery7: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(SPENT) from CARS_SPENT'
      'where name=:var1')
    Left = 608
    Top = 103
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery7SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object IBQuery8: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(INCOME)  from CARS_INCOME'
      'where '
      '(input_date>=:var1) and (input_date<=:var2) and (name=:var3)')
    Left = 16
    Top = 63
    ParamData = <
      item
        DataType = ftDate
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object IBQuery8SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object IBQuery9: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(SPENT)   from CARS_SPENT'
      'where '
      '(input_date>=:var1) and (input_date<=:var2) and (name=:var3)')
    Left = 16
    Top = 95
    ParamData = <
      item
        DataType = ftDate
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object IBQuery9SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
end
