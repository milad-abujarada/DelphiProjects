object Form30: TForm30
  Left = 192
  Top = 112
  Width = 696
  Height = 615
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1575#1604#1605#1576#1575#1604#1594' '#1575#1604#1582#1586#1606#1577' '#1576#1606#1575#1569#1575' '#1593#1604#1609' '#1576#1610#1575#1606
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
    Height = 561
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 401
      Top = 16
      Width = 28
      Height = 13
      Caption = #1576#1610#1600#1600#1600#1575#1606
    end
    object Label2: TLabel
      Left = 382
      Top = 497
      Width = 38
      Height = 13
      Caption = #1575#1604#1573#1580#1605#1575#1604#1609
    end
    object ComboBox1: TComboBox
      Left = 240
      Top = 11
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
    end
    object Button1: TButton
      Left = 295
      Top = 35
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 294
      Top = 524
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button2Click
    end
    object DBGrid1: TDBGrid
      Left = 168
      Top = 67
      Width = 320
      Height = 382
      DataSource = DataSource2
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'AMOUNT'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1602#1610#1605#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CAUSE'
          Title.Alignment = taCenter
          Title.Caption = #1576#1610#1575#1606
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 97
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 260
      Top = 491
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 221
      Top = 457
      Width = 224
      Height = 25
      DataSource = DataSource2
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 16
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 16
    Top = 64
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 16
    Top = 112
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(CAUSE) from SAVE')
    Left = 56
    Top = 24
    object IBQuery1CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'SAVE.CAUSE'
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery2AfterDelete
    AfterPost = IBQuery2AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SAVE'
      'where CAUSE=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 56
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'SAVE.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'SAVE.INPUT_DATE'
      Required = True
    end
    object IBQuery2NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'SAVE.NUM'
      Required = True
    end
    object IBQuery2CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'SAVE.CAUSE'
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(AMOUNT) from SAVE'
      'where cause =:var1')
    Left = 56
    Top = 112
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
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  AMOUNT,'
      '  INPUT_DATE,'
      '  NUM,'
      '  CAUSE'
      'from SAVE '
      'where'
      '  AMOUNT = :AMOUNT and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  NUM = :NUM and'
      '  CAUSE = :CAUSE')
    ModifySQL.Strings = (
      'update SAVE'
      'set'
      '  AMOUNT = :AMOUNT,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  NUM = :NUM,'
      '  CAUSE = :CAUSE'
      'where'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  NUM = :OLD_NUM and'
      '  CAUSE = :OLD_CAUSE')
    InsertSQL.Strings = (
      'insert into SAVE'
      '  (AMOUNT, INPUT_DATE, NUM, CAUSE)'
      'values'
      '  (:AMOUNT, :INPUT_DATE, :NUM, :CAUSE)')
    DeleteSQL.Strings = (
      'delete from SAVE'
      'where'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  NUM = :OLD_NUM and'
      '  CAUSE = :OLD_CAUSE')
    Left = 96
    Top = 64
  end
end
