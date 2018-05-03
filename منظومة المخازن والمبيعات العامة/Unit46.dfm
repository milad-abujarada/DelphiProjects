object Form46: TForm46
  Left = 192
  Top = 114
  Width = 696
  Height = 609
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590'  '#1593#1605#1604#1610#1575#1578' '#1578#1581#1589#1610#1604' '#1575#1604#1583#1610#1608#1606
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
      Left = 425
      Top = 53
      Width = 23
      Height = 13
      Caption = #1575#1604#1573#1587#1605
    end
    object Label2: TLabel
      Left = 614
      Top = 53
      Width = 12
      Height = 13
      Caption = #1605#1606
    end
    object Label3: TLabel
      Left = 230
      Top = 55
      Width = 17
      Height = 13
      Caption = #1573#1604#1609
    end
    object ComboBox1: TComboBox
      Left = 264
      Top = 48
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object RadioButton1: TRadioButton
      Left = 368
      Top = 8
      Width = 169
      Height = 17
      Caption = #1593#1585#1590' '#1603#1604' '#1593#1605#1604#1610#1575#1578' '#1587#1583#1575#1583' '#1575#1604#1583#1610#1608#1606
      TabOrder = 1
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 128
      Top = 8
      Width = 161
      Height = 17
      Caption = #1593#1585#1590' '#1593#1605#1604#1610#1575#1578' '#1575#1604#1587#1583#1575#1583' '#1601#1609' '#1601#1578#1585#1577
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 464
      Top = 48
      Width = 146
      Height = 21
      Date = 39262.740663148150000000
      Time = 39262.740663148150000000
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 183
      Top = 88
      Width = 327
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
          FieldName = 'AMOUNT'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1602#1610#1605#1577
          Width = 146
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
    object Button1: TButton
      Left = 459
      Top = 520
      Width = 57
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 180
      Top = 520
      Width = 57
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 6
      OnClick = Button2Click
    end
    object DBNavigator1: TDBNavigator
      Left = 236
      Top = 520
      Width = 224
      Height = 25
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 7
    end
  end
  object DateTimePicker2: TDateTimePicker
    Left = 89
    Top = 56
    Width = 146
    Height = 21
    Date = 39262.740663148150000000
    Time = 39262.740663148150000000
    TabOrder = 1
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery1AfterDelete
    AfterPost = IBQuery1AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAIED_DEBTS'
      'where name=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 32
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAIED_DEBTS.NAME'
      Required = True
    end
    object IBQuery1AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'PAIED_DEBTS.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAIED_DEBTS.INPUT_DATE'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 64
    Top = 152
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery2AfterDelete
    AfterPost = IBQuery2AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAIED_DEBTS'
      'where '
      '(input_date>=:var1) and (input_date<=:var2) and (name=:var3)')
    UpdateObject = IBUpdateSQL2
    Left = 32
    Top = 184
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
      Origin = 'PAIED_DEBTS.NAME'
      Required = True
    end
    object IBQuery2AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'PAIED_DEBTS.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAIED_DEBTS.INPUT_DATE'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 64
    Top = 184
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 64
    Top = 120
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from PAIED_DEBTS')
    Left = 32
    Top = 120
    object IBQuery3NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAIED_DEBTS.NAME'
      Required = True
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  AMOUNT,'
      '  INPUT_DATE'
      'from PAIED_DEBTS '
      'where'
      '  NAME = :NAME and'
      '  AMOUNT = :AMOUNT and'
      '  INPUT_DATE = :INPUT_DATE')
    ModifySQL.Strings = (
      'update PAIED_DEBTS'
      'set'
      '  NAME = :NAME,'
      '  AMOUNT = :AMOUNT,'
      '  INPUT_DATE = :INPUT_DATE'
      'where'
      '  NAME = :OLD_NAME and'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    InsertSQL.Strings = (
      'insert into PAIED_DEBTS'
      '  (NAME, AMOUNT, INPUT_DATE)'
      'values'
      '  (:NAME, :AMOUNT, :INPUT_DATE)')
    DeleteSQL.Strings = (
      'delete from PAIED_DEBTS'
      'where'
      '  NAME = :OLD_NAME and'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    Left = 96
    Top = 152
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  AMOUNT,'
      '  INPUT_DATE'
      'from PAIED_DEBTS '
      'where'
      '  NAME = :NAME and'
      '  AMOUNT = :AMOUNT and'
      '  INPUT_DATE = :INPUT_DATE')
    ModifySQL.Strings = (
      'update PAIED_DEBTS'
      'set'
      '  NAME = :NAME,'
      '  AMOUNT = :AMOUNT,'
      '  INPUT_DATE = :INPUT_DATE'
      'where'
      '  NAME = :OLD_NAME and'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    InsertSQL.Strings = (
      'insert into PAIED_DEBTS'
      '  (NAME, AMOUNT, INPUT_DATE)'
      'values'
      '  (:NAME, :AMOUNT, :INPUT_DATE)')
    DeleteSQL.Strings = (
      'delete from PAIED_DEBTS'
      'where'
      '  NAME = :OLD_NAME and'
      '  AMOUNT = :OLD_AMOUNT and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    Left = 96
    Top = 184
  end
end
