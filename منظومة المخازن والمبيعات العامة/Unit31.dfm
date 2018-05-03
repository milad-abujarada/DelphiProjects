object Form31: TForm31
  Left = 153
  Top = 104
  Width = 797
  Height = 633
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1587#1583#1575#1583' '#1583#1610#1608#1606' '#1575#1604#1605#1587#1578#1581#1602#1577' '#1604#1605#1608#1585#1583
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
    Left = 9
    Top = 8
    Width = 768
    Height = 585
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 713
      Top = 470
      Width = 48
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1608#1585#1583
    end
    object Label2: TLabel
      Left = 508
      Top = 472
      Width = 81
      Height = 13
      Caption = #1602#1610#1605#1577' '#1575#1604#1583#1610#1606' '#1576#1575#1604#1583#1610#1606#1575#1585
    end
    object Label3: TLabel
      Left = 284
      Top = 472
      Width = 104
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1583#1601#1608#1593#1577' '#1576#1575#1604#1583#1610#1606#1575#1585
    end
    object Label4: TLabel
      Left = 723
      Top = 528
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label5: TLabel
      Left = 510
      Top = 528
      Width = 81
      Height = 13
      Caption = #1602#1610#1605#1577' '#1575#1604#1583#1610#1606' '#1576#1575#1604#1583#1608#1604#1575#1585
    end
    object Label6: TLabel
      Left = 286
      Top = 528
      Width = 104
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1583#1601#1608#1593#1577' '#1576#1575#1604#1583#1608#1604#1575#1585
    end
    object Label7: TLabel
      Left = 108
      Top = 524
      Width = 60
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1578#1589#1585#1610#1601
    end
    object DBGrid1: TDBGrid
      Left = 93
      Top = 12
      Width = 577
      Height = 434
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1573#1587#1605' '#1575#1604#1605#1608#1585#1583
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'debt_value'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1577' '#1575#1604#1583#1610#1606' '#1576#1575#1604#1583#1610#1606#1575#1585
          Width = 118
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'debt_value_dollar'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1577' '#1575#1604#1583#1610#1606' '#1576#1575#1604#1583#1608#1604#1575#1585
          Width = 112
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'type'
          Title.Alignment = taCenter
          Title.Caption = #1591#1585#1610#1602#1577' '#1575#1604#1583#1601#1593
          Width = 102
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 593
      Top = 466
      Width = 118
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 403
      Top = 468
      Width = 97
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 170
      Top = 468
      Width = 98
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 247
      Top = 552
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 463
      Top = 552
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 5
      OnClick = Button1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 593
      Top = 521
      Width = 120
      Height = 21
      Date = 39242.872765659720000000
      Time = 39242.872765659720000000
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 403
      Top = 520
      Width = 98
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
    object Edit5: TEdit
      Left = 170
      Top = 520
      Width = 101
      Height = 21
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 3
      Top = 520
      Width = 101
      Height = 21
      TabOrder = 9
    end
  end
  object bring_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    OnCalcFields = bring_namesCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from PROVIDERS_DEBTS_NAMES')
    Left = 40
    Top = 48
    object bring_namesdebt_value: TFloatField
      FieldKind = fkCalculated
      FieldName = 'debt_value'
      Calculated = True
    end
    object bring_namesdebt_value_dollar: TFloatField
      FieldKind = fkCalculated
      FieldName = 'debt_value_dollar'
      Calculated = True
    end
    object bring_namestype: TStringField
      FieldKind = fkCalculated
      FieldName = 'type'
      Calculated = True
    end
    object bring_namesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROVIDERS_DEBTS_NAMES.NAME'
      Required = True
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = bring_names
    Left = 72
    Top = 48
  end
  object DataSource2: TDataSource
    DataSet = IBTable1
    Left = 72
    Top = 80
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PROVIDER_NAME'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TOTAL_BILL'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'PAID'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'REMAINING'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'NUM_IN_HISTORY_STORGE'
        DataType = ftInteger
      end
      item
        Name = 'INPUT_DATE'
        DataType = ftDate
      end
      item
        Name = 'DOLLAR'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'CHANGE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'REMAINING_DOLLAR'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'TOTAL_DOLLAR'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end>
    StoreDefs = True
    TableName = 'PROVIDER'
    Left = 40
    Top = 80
    object IBTable1PROVIDER_NAME: TIBStringField
      FieldName = 'PROVIDER_NAME'
      Size = 30
    end
    object IBTable1TOTAL_BILL: TIBBCDField
      FieldName = 'TOTAL_BILL'
      Precision = 9
      Size = 3
    end
    object IBTable1PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable1REMAINING: TIBBCDField
      FieldName = 'REMAINING'
      Precision = 9
      Size = 3
    end
    object IBTable1NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1DOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Precision = 9
      Size = 3
    end
    object IBTable1CHANGE: TIBBCDField
      FieldName = 'CHANGE'
      Precision = 9
      Size = 3
    end
    object IBTable1REMAINING_DOLLAR: TIBBCDField
      FieldName = 'REMAINING_DOLLAR'
      Precision = 9
      Size = 3
    end
    object IBTable1TOTAL_DOLLAR: TIBBCDField
      FieldName = 'TOTAL_DOLLAR'
      Precision = 9
      Size = 3
    end
  end
  object all_totals: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select sum(TOTAL_BILL),sum(PAID),sum(TOTAL_DOLLAR),sum(DOLLAR) f' +
        'rom PROVIDER'
      'where PROVIDER_NAME=:var1')
    Left = 40
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object all_totalsSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
    object all_totalsSUM1: TIBBCDField
      FieldName = 'SUM1'
      Precision = 18
      Size = 3
    end
    object all_totalsSUM2: TIBBCDField
      FieldName = 'SUM2'
      Precision = 18
      Size = 3
    end
    object all_totalsSUM3: TIBBCDField
      FieldName = 'SUM3'
      Precision = 18
      Size = 3
    end
  end
  object DataSource3: TDataSource
    DataSet = all_totals
    Left = 72
    Top = 112
  end
  object edit_in_debts_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROVIDERS_DEBTS_NAMES'
      'where name=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 40
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object edit_in_debts_namesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROVIDERS_DEBTS_NAMES.NAME'
      Required = True
      Size = 30
    end
  end
  object DataSource4: TDataSource
    DataSet = edit_in_debts_names
    Left = 72
    Top = 144
  end
  object DataSource5: TDataSource
    DataSet = max_num
    Left = 72
    Top = 224
  end
  object max_num: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM)  from PAID_TO_PROVIDER')
    Left = 40
    Top = 224
    object max_numMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select PAY_TYPE  from PROVIDES'
      'where name=:var1')
    Left = 41
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1PAY_TYPE: TIBStringField
      FieldName = 'PAY_TYPE'
      Origin = 'PROVIDES.PAY_TYPE'
      Required = True
      Size = 10
    end
  end
  object DataSource6: TDataSource
    DataSet = IBQuery1
    Left = 73
    Top = 16
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME'
      'from PROVIDERS_DEBTS_NAMES '
      'where'
      '  NAME = :NAME')
    ModifySQL.Strings = (
      'update PROVIDERS_DEBTS_NAMES'
      'set'
      '  NAME = :NAME'
      'where'
      '  NAME = :OLD_NAME')
    InsertSQL.Strings = (
      'insert into PROVIDERS_DEBTS_NAMES'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from PROVIDERS_DEBTS_NAMES'
      'where'
      '  NAME = :OLD_NAME')
    Left = 105
    Top = 144
  end
end
