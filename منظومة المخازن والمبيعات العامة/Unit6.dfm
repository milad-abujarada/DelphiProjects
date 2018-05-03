object Form6: TForm6
  Left = 192
  Top = 114
  Width = 696
  Height = 620
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1581#1589#1610#1604' '#1575#1604#1583#1610#1608#1606
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
    Left = 6
    Top = 8
    Width = 675
    Height = 569
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 619
      Top = 494
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1586#1576#1608#1606
    end
    object Label2: TLabel
      Left = 444
      Top = 496
      Width = 45
      Height = 13
      Caption = #1602#1610#1605#1577' '#1575#1604#1583#1610#1606
    end
    object Label3: TLabel
      Left = 270
      Top = 496
      Width = 68
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1583#1601#1608#1593#1577
    end
    object Label4: TLabel
      Left = 131
      Top = 496
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object DBGrid1: TDBGrid
      Left = 136
      Top = 16
      Width = 385
      Height = 409
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
          Title.Caption = #1573#1587#1605' '#1575#1604#1586#1576#1608#1606
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'debt_value'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1577' '#1575#1604#1583#1610#1606
          Width = 118
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 416
      Top = 537
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 186
      Top = 538
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 492
      Top = 490
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 341
      Top = 492
      Width = 101
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 164
      Top = 491
      Width = 103
      Height = 21
      TabOrder = 5
    end
    object DateTimePicker1: TDateTimePicker
      Left = 7
      Top = 491
      Width = 121
      Height = 21
      Date = 39261.766877349540000000
      Time = 39261.766877349540000000
      TabOrder = 6
    end
    object Button3: TButton
      Left = 304
      Top = 539
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit4: TEdit
      Left = 536
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 8
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = bring_names
    Left = 88
    Top = 48
  end
  object bring_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    OnCalcFields = bring_namesCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select name from debts_names')
    Left = 56
    Top = 48
    object bring_namesdebt_value: TFloatField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'debt_value'
      Calculated = True
    end
    object bring_namesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DEBTS_NAMES.NAME'
      Required = True
    end
  end
  object sum_paied_in_collecting: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(AMOUNT) from PAIED_DEBTS'
      'where (name=:var1)')
    Left = 54
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object sum_paied_in_collectingSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource2: TDataSource
    DataSet = sum_paied_in_collecting
    Left = 86
    Top = 80
  end
  object DataSource3: TDataSource
    DataSet = all_bills_value_for_everyone
    Left = 88
    Top = 112
  end
  object all_bills_value_for_everyone: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(TOTAL_BILL_PRICE) from PAID'
      'where(customer_name=:var1)')
    Left = 56
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object all_bills_value_for_everyoneSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object sum_paied_in_bills: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(paid_value) from PAID'
      'where  (customer_name=:var1)'
      '')
    Left = 56
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object sum_paied_in_billsSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource4: TDataSource
    DataSet = sum_paied_in_bills
    Left = 88
    Top = 144
  end
  object DataSource5: TDataSource
    DataSet = max_num
    Left = 88
    Top = 176
  end
  object max_num: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from COLLECTING_DEBT')
    Left = 56
    Top = 176
    object max_numMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAIED_DEBTS'
    Left = 56
    Top = 208
    object IBTable2NAME: TIBStringField
      FieldName = 'NAME'
    end
    object IBTable2AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Precision = 9
      Size = 3
    end
    object IBTable2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
  end
  object DataSource6: TDataSource
    DataSet = IBTable2
    Left = 88
    Top = 208
  end
  object DataSource7: TDataSource
    DataSet = delete_from_debts_names
    Left = 86
    Top = 240
  end
  object delete_from_debts_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DEBTS_NAMES'
      'where name=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 54
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object delete_from_debts_namesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DEBTS_NAMES.NAME'
      Required = True
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME'
      'from DEBTS_NAMES '
      'where'
      '  NAME = :NAME')
    ModifySQL.Strings = (
      'update DEBTS_NAMES'
      'set'
      '  NAME = :NAME'
      'where'
      '  NAME = :OLD_NAME')
    InsertSQL.Strings = (
      'insert into DEBTS_NAMES'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from DEBTS_NAMES'
      'where'
      '  NAME = :OLD_NAME')
    Left = 22
    Top = 240
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DEBTS_NAMES'
    Left = 54
    Top = 280
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
    end
  end
  object DataSource8: TDataSource
    DataSet = IBTable1
    Left = 86
    Top = 280
  end
end
