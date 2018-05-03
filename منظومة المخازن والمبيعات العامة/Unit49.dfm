object Form49: TForm49
  Left = 192
  Top = 27
  Width = 729
  Height = 683
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1573#1610#1589#1575#1604#1575#1578' '#1575#1604#1602#1576#1590
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
    Width = 705
    Height = 633
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Button1: TButton
      Left = 320
      Top = 112
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 344
      Top = 600
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 1
      OnClick = Button2Click
    end
    object Panel2: TPanel
      Left = 128
      Top = 49
      Width = 455
      Height = 41
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 2
      object Label1: TLabel
        Left = 401
        Top = 16
        Width = 18
        Height = 13
        Caption = #1605#1600#1600#1606
      end
      object Label2: TLabel
        Left = 194
        Top = 16
        Width = 17
        Height = 13
        Caption = #1573#1604#1609
      end
      object DateTimePicker1: TDateTimePicker
        Left = 262
        Top = 10
        Width = 129
        Height = 21
        Date = 39269.425690277780000000
        Time = 39269.425690277780000000
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 54
        Top = 12
        Width = 130
        Height = 21
        Date = 39269.425696608800000000
        Time = 39269.425696608800000000
        TabOrder = 1
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 278
      Top = 568
      Width = 224
      Height = 25
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 136
    Top = 152
    Width = 457
    Height = 417
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object RadioButton1: TRadioButton
    Left = 432
    Top = 24
    Width = 113
    Height = 17
    Caption = #1581#1587#1576' '#1575#1604#1578#1575#1585#1610#1582
    TabOrder = 2
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 184
    Top = 24
    Width = 113
    Height = 17
    Caption = #1581#1587#1576' '#1585#1602#1605' '#1575#1604#1573#1610#1589#1575#1604
    TabOrder = 3
    OnClick = RadioButton2Click
  end
  object Panel3: TPanel
    Left = 136
    Top = 56
    Width = 454
    Height = 41
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 4
    object Label3: TLabel
      Left = 277
      Top = 15
      Width = 52
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1573#1610#1589#1575#1604
    end
    object Edit1: TEdit
      Left = 150
      Top = 10
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 72
    Top = 120
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 72
    Top = 152
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery1AfterDelete
    AfterPost = IBQuery1AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from RECEIPT'
      'where (input_date>=:var1) and (input_date<=:var2)')
    UpdateObject = IBUpdateSQL1
    Left = 40
    Top = 120
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
      end>
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'RECEIPT.NAME'
      Required = True
    end
    object IBQuery1CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'RECEIPT.CAUSE'
      Size = 50
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'RECEIPT.NUM'
      Required = True
    end
    object IBQuery1AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'RECEIPT.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'RECEIPT.INPUT_DATE'
      Required = True
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery1AfterDelete
    AfterPost = IBQuery2AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from RECEIPT'
      'where num=:var1')
    UpdateObject = IBUpdateSQL2
    Left = 40
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'RECEIPT.NAME'
      Required = True
    end
    object IBQuery2CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'RECEIPT.CAUSE'
      Size = 50
    end
    object IBQuery2NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'RECEIPT.NUM'
      Required = True
    end
    object IBQuery2AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'RECEIPT.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'RECEIPT.INPUT_DATE'
      Required = True
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  CAUSE,'
      '  NUM,'
      '  AMOUNT,'
      '  INPUT_DATE'
      'from RECEIPT '
      'where'
      '  NAME = :NAME and'
      '  CAUSE = :CAUSE and'
      '  NUM = :NUM and'
      '  AMOUNT = :AMOUNT and'
      '  INPUT_DATE = :INPUT_DATE')
    ModifySQL.Strings = (
      'update RECEIPT'
      'set'
      '  NAME = :NAME,'
      '  CAUSE = :CAUSE,'
      '  NUM = :NUM,'
      '  AMOUNT = :AMOUNT,'
      '  INPUT_DATE = :INPUT_DATE'
      'where'
      '  NAME = :OLD_NAME and'
      '  CAUSE = :OLD_CAUSE and'
      '  NUM = :OLD_NUM and'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    InsertSQL.Strings = (
      'insert into RECEIPT'
      '  (NAME, CAUSE, NUM, AMOUNT, INPUT_DATE)'
      'values'
      '  (:NAME, :CAUSE, :NUM, :AMOUNT, :INPUT_DATE)')
    DeleteSQL.Strings = (
      'delete from RECEIPT'
      'where'
      '  NAME = :OLD_NAME and'
      '  CAUSE = :OLD_CAUSE and'
      '  NUM = :OLD_NUM and'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    Left = 104
    Top = 120
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  CAUSE,'
      '  NUM,'
      '  AMOUNT,'
      '  INPUT_DATE'
      'from RECEIPT '
      'where'
      '  NAME = :NAME and'
      '  CAUSE = :CAUSE and'
      '  NUM = :NUM and'
      '  AMOUNT = :AMOUNT and'
      '  INPUT_DATE = :INPUT_DATE')
    ModifySQL.Strings = (
      'update RECEIPT'
      'set'
      '  NAME = :NAME,'
      '  CAUSE = :CAUSE,'
      '  NUM = :NUM,'
      '  AMOUNT = :AMOUNT,'
      '  INPUT_DATE = :INPUT_DATE'
      'where'
      '  NAME = :OLD_NAME and'
      '  CAUSE = :OLD_CAUSE and'
      '  NUM = :OLD_NUM and'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    InsertSQL.Strings = (
      'insert into RECEIPT'
      '  (NAME, CAUSE, NUM, AMOUNT, INPUT_DATE)'
      'values'
      '  (:NAME, :CAUSE, :NUM, :AMOUNT, :INPUT_DATE)')
    DeleteSQL.Strings = (
      'delete from RECEIPT'
      'where'
      '  NAME = :OLD_NAME and'
      '  CAUSE = :OLD_CAUSE and'
      '  NUM = :OLD_NUM and'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    Left = 104
    Top = 152
  end
end
