object Form51: TForm51
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1576#1610#1575#1606#1575#1578' '#1593#1575#1605#1604
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
    Width = 673
    Height = 433
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 433
      Top = 30
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1593#1575#1605#1604
    end
    object Label2: TLabel
      Left = 504
      Top = 312
      Width = 56
      Height = 13
      Caption = #1575#1604#1585#1575#1578#1576' '#1575#1604#1580#1583#1610#1583
    end
    object Label3: TLabel
      Left = 299
      Top = 312
      Width = 53
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1575#1604#1578#1594#1610#1585
    end
    object ComboBox1: TComboBox
      Left = 264
      Top = 24
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object DBGrid1: TDBGrid
      Left = 112
      Top = 64
      Width = 489
      Height = 145
      DataSource = DataSource1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'WORK_TYPE'
          Title.Alignment = taCenter
          Title.Caption = #1606#1608#1593' '#1575#1604#1593#1605#1604
          Width = 132
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'WORK_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1593#1605#1604
          Width = 140
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SALARY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1585#1575#1578#1576
          Width = 168
          Visible = True
        end>
    end
    object Button2: TButton
      Left = 416
      Top = 384
      Width = 107
      Height = 25
      Caption = #1578#1593#1583#1610#1604' '#1585#1575#1578#1576' '#1575#1604#1593#1575#1605#1604
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 376
      Top = 307
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object DateTimePicker1: TDateTimePicker
      Left = 176
      Top = 307
      Width = 121
      Height = 21
      Date = 39271.761707893520000000
      Time = 39271.761707893520000000
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 248
      Top = 216
      Width = 216
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbDelete]
      TabOrder = 5
    end
  end
  object Button1: TButton
    Left = 216
    Top = 392
    Width = 107
    Height = 25
    Caption = #1585#1580#1608#1593
    TabOrder = 1
    OnClick = Button1Click
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery1AfterDelete
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from EMPLOYS'
      'where name=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 72
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 40
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 40
    Top = 72
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from EMPLOYS')
    Left = 72
    Top = 72
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'EMPLOYS.NAME'
      Required = True
      Size = 30
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  WORK_TYPE,'
      '  NUM,'
      '  WORK_DATE,'
      '  SALARY'
      'from EMPLOYS '
      'where'
      '  NAME = :NAME and'
      '  WORK_TYPE = :WORK_TYPE and'
      '  NUM = :NUM and'
      '  WORK_DATE = :WORK_DATE and'
      '  SALARY = :SALARY')
    ModifySQL.Strings = (
      'update EMPLOYS'
      'set'
      '  NAME = :NAME,'
      '  WORK_TYPE = :WORK_TYPE,'
      '  NUM = :NUM,'
      '  WORK_DATE = :WORK_DATE,'
      '  SALARY = :SALARY'
      'where'
      '  NAME = :OLD_NAME and'
      '  WORK_TYPE = :OLD_WORK_TYPE and'
      '  NUM = :OLD_NUM and'
      '  WORK_DATE = :OLD_WORK_DATE and'
      '  SALARY = :OLD_SALARY')
    InsertSQL.Strings = (
      'insert into EMPLOYS'
      '  (NAME, WORK_TYPE, NUM, WORK_DATE, SALARY)'
      'values'
      '  (:NAME, :WORK_TYPE, :NUM, :WORK_DATE, :SALARY)')
    DeleteSQL.Strings = (
      'delete from EMPLOYS'
      'where'
      '  NAME = :OLD_NAME and'
      '  WORK_TYPE = :OLD_WORK_TYPE and'
      '  NUM = :OLD_NUM and'
      '  WORK_DATE = :OLD_WORK_DATE and'
      '  SALARY = :OLD_SALARY')
    Left = 104
    Top = 40
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'EMPLOYS'
    Left = 72
    Top = 104
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
    object IBTable1WORK_DATE: TDateField
      FieldName = 'WORK_DATE'
    end
    object IBTable1SALARY: TIBBCDField
      FieldName = 'SALARY'
      Precision = 9
      Size = 3
    end
  end
  object DataSource3: TDataSource
    DataSet = IBTable1
    Left = 40
    Top = 104
  end
  object DataSource4: TDataSource
    DataSet = IBQuery3
    Left = 40
    Top = 136
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from EMPLOYS')
    Left = 72
    Top = 136
    object IBQuery3MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
end
