object Form74: TForm74
  Left = 192
  Top = 114
  Width = 691
  Height = 616
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1587#1583#1575#1583' '#1583#1610#1606' '#1604#1605#1608#1585#1583
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
    Width = 665
    Height = 569
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 393
      Top = 20
      Width = 48
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1608#1585#1583
    end
    object DBGrid1: TDBGrid
      Left = 48
      Top = 72
      Width = 569
      Height = 409
      DataSource = DataSource2
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
          FieldName = 'PAID'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1602#1610#1605#1607' '#1575#1604#1605#1583#1601#1608#1593#1607' '#1576#1575#1604#1583#1608#1604#1575#1585
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOLLAR'
          Title.Caption = #1575#1604#1602#1610#1605#1607' '#1575#1604#1605#1583#1601#1608#1593#1607' '#1576#1575#1604#1583#1610#1606#1575#1585
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1583#1601#1593
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 't'
          Title.Alignment = taCenter
          Title.Caption = #1606#1608#1593' '#1575#1604#1583#1601#1593
          Width = 80
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 208
      Top = 496
      Width = 222
      Height = 25
      DataSource = DataSource2
      VisibleButtons = [nbEdit, nbPost, nbCancel]
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 243
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = ComboBox1Change
    end
    object Button1: TButton
      Left = 288
      Top = 528
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 136
    Top = 16
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from PROVIDES')
    Left = 168
    Top = 16
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROVIDES.NAME'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 136
    Top = 48
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterPost = IBQuery2AfterPost
    OnCalcFields = IBQuery2CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROVIDER'
      'where PROVIDER_NAME=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 168
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2PROVIDER_NAME: TIBStringField
      FieldName = 'PROVIDER_NAME'
      Origin = 'PROVIDER.PROVIDER_NAME'
      Required = True
      Size = 30
    end
    object IBQuery2TOTAL_BILL: TIBBCDField
      FieldName = 'TOTAL_BILL'
      Origin = 'PROVIDER.TOTAL_BILL'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2PAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'PROVIDER.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2REMAINING: TIBBCDField
      FieldName = 'REMAINING'
      Origin = 'PROVIDER.REMAINING'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'PROVIDER.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object IBQuery2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PROVIDER.INPUT_DATE'
      Required = True
    end
    object IBQuery2DOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Origin = 'PROVIDER.DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2CHANGE: TIBBCDField
      FieldName = 'CHANGE'
      Origin = 'PROVIDER.CHANGE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2REMAINING_DOLLAR: TIBBCDField
      FieldName = 'REMAINING_DOLLAR'
      Origin = 'PROVIDER.REMAINING_DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2TOTAL_DOLLAR: TIBBCDField
      FieldName = 'TOTAL_DOLLAR'
      Origin = 'PROVIDER.TOTAL_DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2t: TStringField
      FieldKind = fkCalculated
      FieldName = 't'
      Calculated = True
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PROVIDER_NAME,'
      '  TOTAL_BILL,'
      '  PAID,'
      '  REMAINING,'
      '  NUM_IN_HISTORY_STORGE,'
      '  INPUT_DATE,'
      '  DOLLAR,'
      '  CHANGE,'
      '  REMAINING_DOLLAR,'
      '  TOTAL_DOLLAR'
      'from PROVIDER '
      'where'
      '  PROVIDER_NAME = :PROVIDER_NAME and'
      '  TOTAL_BILL = :TOTAL_BILL and'
      '  PAID = :PAID and'
      '  REMAINING = :REMAINING and'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  DOLLAR = :DOLLAR and'
      '  CHANGE = :CHANGE and'
      '  REMAINING_DOLLAR = :REMAINING_DOLLAR and'
      '  TOTAL_DOLLAR = :TOTAL_DOLLAR')
    ModifySQL.Strings = (
      'update PROVIDER'
      'set'
      '  PROVIDER_NAME = :PROVIDER_NAME,'
      '  TOTAL_BILL = :TOTAL_BILL,'
      '  PAID = :PAID,'
      '  REMAINING = :REMAINING,'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  DOLLAR = :DOLLAR,'
      '  CHANGE = :CHANGE,'
      '  REMAINING_DOLLAR = :REMAINING_DOLLAR,'
      '  TOTAL_DOLLAR = :TOTAL_DOLLAR'
      'where'
      '  PROVIDER_NAME = :OLD_PROVIDER_NAME and'
      '  TOTAL_BILL = :OLD_TOTAL_BILL and'
      '  PAID = :OLD_PAID and'
      '  REMAINING = :OLD_REMAINING and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  DOLLAR = :OLD_DOLLAR and'
      '  CHANGE = :OLD_CHANGE and'
      '  REMAINING_DOLLAR = :OLD_REMAINING_DOLLAR and'
      '  TOTAL_DOLLAR = :OLD_TOTAL_DOLLAR')
    InsertSQL.Strings = (
      'insert into PROVIDER'
      
        '  (PROVIDER_NAME, TOTAL_BILL, PAID, REMAINING, NUM_IN_HISTORY_ST' +
        'ORGE, INPUT_DATE, '
      '   DOLLAR, CHANGE, REMAINING_DOLLAR, TOTAL_DOLLAR)'
      'values'
      
        '  (:PROVIDER_NAME, :TOTAL_BILL, :PAID, :REMAINING, :NUM_IN_HISTO' +
        'RY_STORGE, '
      
        '   :INPUT_DATE, :DOLLAR, :CHANGE, :REMAINING_DOLLAR, :TOTAL_DOLL' +
        'AR)')
    DeleteSQL.Strings = (
      'delete from PROVIDER'
      'where'
      '  PROVIDER_NAME = :OLD_PROVIDER_NAME and'
      '  TOTAL_BILL = :OLD_TOTAL_BILL and'
      '  PAID = :OLD_PAID and'
      '  REMAINING = :OLD_REMAINING and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  DOLLAR = :OLD_DOLLAR and'
      '  CHANGE = :OLD_CHANGE and'
      '  REMAINING_DOLLAR = :OLD_REMAINING_DOLLAR and'
      '  TOTAL_DOLLAR = :OLD_TOTAL_DOLLAR')
    Left = 200
    Top = 48
  end
end
