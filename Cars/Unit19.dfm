object Form19: TForm19
  Left = -4
  Top = -4
  Width = 1032
  Height = 746
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
    Left = 56
    Top = 16
    Width = 905
    Height = 673
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 368
      Top = 21
      Width = 175
      Height = 13
      Caption = #1575#1585#1580#1575#1593' '#1576#1590#1575#1593#1577' '#1605#1593' '#1582#1589#1605' '#1602#1610#1605#1578#1607#1575' '#1605#1606' '#1575#1604#1583#1610#1608#1606
    end
    object DBGrid1: TDBGrid
      Left = 275
      Top = 48
      Width = 393
      Height = 561
      BiDiMode = bdRightToLeft
      DataSource = DataSource1
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
          Title.Caption = #1571#1587#1605#1575#1569' '#1575#1604#1605#1583#1610#1608#1606#1610#1606
          Width = 200
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = #1605#1604#1575#1581#1592#1575#1578
          Width = 150
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 384
      Top = 624
      Width = 163
      Height = 25
      Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1610#1577
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_debt_name_without_repeat
    Left = 80
    Top = 32
  end
  object Query_debt_name_without_repeat: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select distinct(debt_cus_name) from debt')
    Left = 112
    Top = 32
    object Query_debt_name_without_repeatDEBT_CUS_NAME: TStringField
      FieldName = 'DEBT_CUS_NAME'
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = Query_bring_payno_from_debt
    Left = 80
    Top = 64
  end
  object Query_bring_payno_from_debt: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from debt where debt_cus_name=:var1')
    Left = 112
    Top = 64
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
  object DataSource3: TDataSource
    DataSet = Query_data_from_temp_for_all_debts
    Left = 80
    Top = 96
  end
  object Query_data_from_temp_for_all_debts: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from temp_table_for_all_debt_paied')
    Left = 112
    Top = 96
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
    object Query_data_from_temp_for_all_debtsPAY_NO_IN_DAILY_SALE: TIntegerField
      FieldName = 'PAY_NO_IN_DAILY_SALE'
      Origin = 'BIG_CARS.TEMP_TABLE_FOR_ALL_DEBT_PAIED.PAY_NO_IN_DAILY_SALE'
    end
    object Query_data_from_temp_for_all_debtsSERIAL_DAILY_SALE: TIntegerField
      FieldName = 'SERIAL_DAILY_SALE'
      Origin = 'BIG_CARS.TEMP_TABLE_FOR_ALL_DEBT_PAIED.SERIAL_DAILY_SALE'
    end
  end
  object Query_bring_data_from_daily_store_and_save_it: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from daily_sale where pay_num=:var1')
    Left = 112
    Top = 128
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
  object DataSource4: TDataSource
    DataSet = Query_bring_data_from_daily_store_and_save_it
    Left = 80
    Top = 128
  end
  object DataSource5: TDataSource
    DataSet = Query_max_from_temp
    Left = 80
    Top = 160
  end
  object Query_max_from_temp: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(serial) from temp_table_for_all_debt_paied')
    Left = 112
    Top = 160
    object Query_max_from_tempMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
end
