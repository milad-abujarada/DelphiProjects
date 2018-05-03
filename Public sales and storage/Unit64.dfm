object Form64: TForm64
  Left = 186
  Top = 90
  Width = 805
  Height = 596
  BiDiMode = bdRightToLeft
  BorderIcons = [biMaximize]
  Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1573#1610#1589#1575#1604#1575#1578' '#1575#1604#1583#1601#1593
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
    Width = 785
    Height = 553
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 41
      Top = 8
      Width = 705
      Height = 457
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
          FieldName = 'NUM'
          Title.Alignment = taCenter
          Title.Caption = #1585#1602#1605' '#1575#1604#1573#1610#1589#1575#1604
          Width = 76
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1573#1587#1605
          Width = 152
          Visible = True
        end
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
          Title.Caption = #1575#1604#1587#1576#1576
          Width = 264
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 100
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 288
      Top = 472
      Width = 224
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 1
    end
    object Button1: TButton
      Left = 288
      Top = 520
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 439
      Top = 520
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
    AfterDelete = IBQuery1AfterDelete
    AfterPost = IBQuery1AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *   from PAIED_RECEIPT')
    UpdateObject = IBUpdateSQL1
    Left = 40
    Top = 40
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAIED_RECEIPT.NAME'
      Required = True
    end
    object IBQuery1CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'PAIED_RECEIPT.CAUSE'
      Size = 50
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAIED_RECEIPT.NUM'
      Required = True
    end
    object IBQuery1AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'PAIED_RECEIPT.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAIED_RECEIPT.INPUT_DATE'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 8
    Top = 40
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  CAUSE,'
      '  NUM,'
      '  AMOUNT,'
      '  INPUT_DATE'
      'from PAIED_RECEIPT '
      'where'
      '  NAME = :NAME and'
      '  CAUSE = :CAUSE and'
      '  NUM = :NUM and'
      '  AMOUNT = :AMOUNT and'
      '  INPUT_DATE = :INPUT_DATE')
    ModifySQL.Strings = (
      'update PAIED_RECEIPT'
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
      'insert into PAIED_RECEIPT'
      '  (NAME, CAUSE, NUM, AMOUNT, INPUT_DATE)'
      'values'
      '  (:NAME, :CAUSE, :NUM, :AMOUNT, :INPUT_DATE)')
    DeleteSQL.Strings = (
      'delete from PAIED_RECEIPT'
      'where'
      '  NAME = :OLD_NAME and'
      '  CAUSE = :OLD_CAUSE and'
      '  NUM = :OLD_NUM and'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    Left = 72
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 8
    Top = 80
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAIED_RECEIPT'
      'where num=:var1')
    Left = 40
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAIED_RECEIPT.NAME'
      Required = True
    end
    object IBQuery2CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'PAIED_RECEIPT.CAUSE'
      Size = 50
    end
    object IBQuery2NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAIED_RECEIPT.NUM'
      Required = True
    end
    object IBQuery2AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'PAIED_RECEIPT.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAIED_RECEIPT.INPUT_DATE'
      Required = True
    end
  end
end
