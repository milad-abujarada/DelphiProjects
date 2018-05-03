object Form11: TForm11
  Left = -4
  Top = 100
  Width = 1022
  Height = 577
  VertScrollBar.Position = 122
  Align = alClient
  BiDiMode = bdRightToLeft
  BorderIcons = []
  Caption = #1605#1606#1592#1608#1605#1577' '#1575#1604#1605#1582#1575#1586#1606' '#1608#1575#1604#1605#1576#1610#1593#1575#1578
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
    Left = 168
    Top = -98
    Width = 745
    Height = 641
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 332
      Top = 6
      Width = 107
      Height = 13
      Caption = #1587#1583#1575#1583' '#1573#1580#1605#1575#1604#1609' '#1583#1610#1606' '#1588#1582#1589
    end
    object Label2: TLabel
      Left = 435
      Top = 549
      Width = 168
      Height = 13
      Alignment = taRightJustify
      Caption = '--------------------------------------------------------'
    end
    object DBGrid1: TDBGrid
      Left = 159
      Top = 23
      Width = 441
      Height = 506
      BiDiMode = bdRightToLeft
      DataSource = Form4.DataSource4
      ParentBiDiMode = False
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
          FieldName = 'DEBT_CUS_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1587#1605' '#1575#1604#1605#1583#1610#1608#1606
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = #1605#1604#1575#1581#1592#1575#1578
          Width = 180
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 286
      Top = 546
      Width = 145
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 155
      Top = 545
      Width = 129
      Height = 25
      Caption = #1573#1580#1605#1575#1604#1609' '#1583#1610#1606' '#1575#1604#1588#1582#1589' '#1575#1604#1605#1582#1578#1575#1585
      Enabled = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 446
      Top = 608
      Width = 75
      Height = 25
      Caption = #1587#1583#1575#1583' '#1575#1604#1583#1610#1606
      Enabled = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 361
      Top = 609
      Width = 75
      Height = 25
      Caption = #1573#1582#1585#1575#1580' '#1601#1575#1578#1608#1585#1577
      Enabled = False
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 274
      Top = 610
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 5
      OnClick = BitBtn4Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 325
      Top = 576
      Width = 145
      Height = 21
      Date = 38805.822629479170000000
      Time = 38805.822629479170000000
      TabOrder = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_bring_payno_from_debt
    Left = 182
    Top = 195
  end
  object DataSource2: TDataSource
    DataSet = Query_data_from_temp_for_all_debts
    Left = 182
    Top = 227
  end
  object DataSource3: TDataSource
    DataSet = Query_bring_data_from_daily_store_and_save_it
    Left = 182
    Top = 259
  end
  object Query_bring_payno_from_debt: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from debt where debt_cus_name=:var1')
    Left = 214
    Top = 195
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_bring_payno_from_debtDEBT_NO: TIntegerField
      FieldName = 'DEBT_NO'
      Origin = 'BIG_CARS.DEBT.DEBT_NO'
    end
    object Query_bring_payno_from_debtDEBT_CUS_NAME: TStringField
      FieldName = 'DEBT_CUS_NAME'
      Origin = 'BIG_CARS.DEBT.DEBT_CUS_NAME'
      Size = 50
    end
    object Query_bring_payno_from_debtDEBT_DATE: TStringField
      FieldName = 'DEBT_DATE'
      Origin = 'BIG_CARS.DEBT.DEBT_DATE'
      Size = 10
    end
    object Query_bring_payno_from_debtDEBT_VALUE: TFloatField
      FieldName = 'DEBT_VALUE'
      Origin = 'BIG_CARS.DEBT.DEBT_VALUE'
    end
    object Query_bring_payno_from_debtNUM_IN_DAILY_SALE: TIntegerField
      FieldName = 'NUM_IN_DAILY_SALE'
      Origin = 'BIG_CARS.DEBT.NUM_IN_DAILY_SALE'
    end
  end
  object Query_bring_data_from_daily_store_and_save_it: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from daily_sale where pay_num=:var1')
    Left = 214
    Top = 259
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_bring_data_from_daily_store_and_save_itDS_NO: TIntegerField
      FieldName = 'DS_NO'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NO'
    end
    object Query_bring_data_from_daily_store_and_save_itDS_NAME_TYPE: TStringField
      FieldName = 'DS_NAME_TYPE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NAME_TYPE'
      Size = 50
    end
    object Query_bring_data_from_daily_store_and_save_itDS_NAME_KIND: TStringField
      FieldName = 'DS_NAME_KIND'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NAME_KIND'
      Size = 50
    end
    object Query_bring_data_from_daily_store_and_save_itDS_QUANTITY: TIntegerField
      FieldName = 'DS_QUANTITY'
      Origin = 'BIG_CARS.DAILY_SALE.DS_QUANTITY'
    end
    object Query_bring_data_from_daily_store_and_save_itDS_PRICE: TFloatField
      FieldName = 'DS_PRICE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_PRICE'
    end
    object Query_bring_data_from_daily_store_and_save_itDS_DATE: TStringField
      FieldName = 'DS_DATE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_DATE'
      Size = 10
    end
    object Query_bring_data_from_daily_store_and_save_itTOTAL_PRICE: TFloatField
      FieldName = 'TOTAL_PRICE'
      Origin = 'BIG_CARS.DAILY_SALE.TOTAL_PRICE'
    end
    object Query_bring_data_from_daily_store_and_save_itRECIVER_NAME: TStringField
      FieldName = 'RECIVER_NAME'
      Origin = 'BIG_CARS.DAILY_SALE.RECIVER_NAME'
      Size = 50
    end
    object Query_bring_data_from_daily_store_and_save_itPAY_NUM: TIntegerField
      FieldName = 'PAY_NUM'
      Origin = 'BIG_CARS.DAILY_SALE.PAY_NUM'
    end
  end
  object Query_data_from_temp_for_all_debts: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from temp_table_for_all_debt_paied')
    Left = 214
    Top = 227
    object Query_data_from_temp_for_all_debtsKIND_NAME: TStringField
      FieldName = 'KIND_NAME'
      Origin = 'BIG_CARS.TEMP_TABLE_FOR_ALL_DEBT_PAIED.KIND_NAME'
      Size = 50
    end
    object Query_data_from_temp_for_all_debtsDAILY_DATE: TStringField
      FieldName = 'DAILY_DATE'
      Origin = 'BIG_CARS.TEMP_TABLE_FOR_ALL_DEBT_PAIED.DAILY_DATE'
      Size = 10
    end
    object Query_data_from_temp_for_all_debtsTOTAL_PRICE_FOR_PEICE: TFloatField
      FieldName = 'TOTAL_PRICE_FOR_PEICE'
      Origin = 'BIG_CARS.TEMP_TABLE_FOR_ALL_DEBT_PAIED.TOTAL_PRICE_FOR_PEICE'
    end
    object Query_data_from_temp_for_all_debtsPIECE_PRICE: TFloatField
      FieldName = 'PIECE_PRICE'
      Origin = 'BIG_CARS.TEMP_TABLE_FOR_ALL_DEBT_PAIED.PIECE_PRICE'
    end
    object Query_data_from_temp_for_all_debtsSERIAL: TIntegerField
      FieldName = 'SERIAL'
      Origin = 'BIG_CARS.TEMP_TABLE_FOR_ALL_DEBT_PAIED.SERIAL'
    end
    object Query_data_from_temp_for_all_debtsTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TEMP_TABLE_FOR_ALL_DEBT_PAIED.TYPE_NAME'
      Size = 50
    end
    object Query_data_from_temp_for_all_debtsQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.TEMP_TABLE_FOR_ALL_DEBT_PAIED.QUANTITY'
    end
    object Query_data_from_temp_for_all_debtsRECEIVER_NAME: TStringField
      FieldName = 'RECEIVER_NAME'
      Origin = 'BIG_CARS.TEMP_TABLE_FOR_ALL_DEBT_PAIED.RECEIVER_NAME'
      Size = 50
    end
  end
  object DataSource4: TDataSource
    DataSet = Query_max_from_temp
    Left = 182
    Top = 292
  end
  object Query_max_from_temp: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(serial) from temp_table_for_all_debt_paied')
    Left = 214
    Top = 292
    object Query_max_from_tempMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource5: TDataSource
    DataSet = Query_sum_for_total_fatora
    Left = 184
    Top = 328
  end
  object Query_sum_for_total_fatora: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      
        'select sum(total_price_for_peice) from temp_table_for_all_debt_p' +
        'aied')
    Left = 216
    Top = 328
    object Query_sum_for_total_fatoraSUM: TFloatField
      FieldName = 'SUM'
    end
  end
end
