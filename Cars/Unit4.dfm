object Form4: TForm4
  Left = 1
  Top = 1
  Width = 1022
  Height = 736
  Align = alClient
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1605#1606#1592#1608#1605#1577' '#1575#1604#1605#1582#1575#1586#1606' '#1608' '#1575#1604#1605#1576#1610#1593#1575#1578
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
  object Panel2: TPanel
    Left = 232
    Top = 24
    Width = 625
    Height = 438
    BevelOuter = bvLowered
    TabOrder = 1
    object Label5: TLabel
      Left = 268
      Top = 19
      Width = 71
      Height = 13
      Caption = #1575#1587#1605#1575#1569' '#1575#1604#1605#1583#1610#1608#1606#1610#1606
    end
    object DBGrid1: TDBGrid
      Left = 17
      Top = 48
      Width = 593
      Height = 377
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
          Title.Caption = #1575#1587#1605' '#1575#1604#1605#1583#1610#1608#1606
          Width = 234
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DEBT_VALUE'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1577' '#1575#1604#1583#1610#1606
          Width = 129
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DEBT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1583#1610#1606
          Width = 154
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 366
    Top = 640
    Width = 331
    Height = 41
    BevelInner = bvLowered
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 281
      Height = 25
      Caption = #1575#1604#1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1587#1610#1577
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel1: TPanel
    Left = 367
    Top = 462
    Width = 338
    Height = 177
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 239
      Top = 28
      Width = 48
      Height = 13
      Caption = #1575#1587#1605' '#1575#1604#1586#1576#1608#1606
    end
    object Label2: TLabel
      Left = 239
      Top = 60
      Width = 45
      Height = 13
      Caption = #1602#1610#1605#1577' '#1575#1604#1583#1610#1606
    end
    object Label3: TLabel
      Left = 223
      Top = 92
      Width = 68
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1583#1601#1608#1593#1577
    end
    object Label4: TLabel
      Left = 247
      Top = 121
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object edit1: TEdit
      Left = 47
      Top = 20
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 47
      Top = 52
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 47
      Top = 116
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      Date = 38788.745836226850000000
      Time = 38788.745836226850000000
      ParentBiDiMode = False
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 47
      Top = 83
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 3
      OnKeyPress = Edit4KeyPress
    end
    object BitBtn2: TBitBtn
      Left = 125
      Top = 144
      Width = 75
      Height = 25
      Caption = #1605#1608#1575#1601#1602
      Enabled = False
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 31
      Top = 144
      Width = 83
      Height = 25
      Caption = #1601#1575#1578#1608#1585#1577' '#1587#1583#1575#1583' '#1583#1610#1606
      Enabled = False
      TabOrder = 5
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 207
      Top = 144
      Width = 113
      Height = 25
      Caption = #1587#1583#1575#1583' '#1573#1580#1605#1575#1604#1610' '#1583#1610#1606' '#1588#1582#1589
      TabOrder = 6
      OnClick = BitBtn5Click
    end
  end
  object Panel4: TPanel
    Left = 232
    Top = 24
    Width = 625
    Height = 569
    BevelOuter = bvLowered
    TabOrder = 3
    object Label6: TLabel
      Left = 498
      Top = 475
      Width = 114
      Height = 13
      Alignment = taRightJustify
      Caption = '--------------------------------------'
    end
    object Label7: TLabel
      Left = 174
      Top = 480
      Width = 79
      Height = 13
      Caption = #1575#1580#1605#1575#1604#1610' '#1583#1610#1606' '#1575#1604#1605#1581#1604
    end
    object Label8: TLabel
      Left = 217
      Top = 20
      Width = 176
      Height = 13
      Caption = #1605#1593#1604#1608#1605#1575#1578' '#1593#1606'  '#1575#1604#1583#1610#1606' '#1575#1604#1575#1580#1605#1575#1604#1609' '#1608' '#1575#1604#1605#1583#1610#1608#1606#1610#1606
    end
    object DBGrid2: TDBGrid
      Left = 45
      Top = 56
      Width = 545
      Height = 401
      BiDiMode = bdRightToLeft
      DataSource = DataSource4
      ParentBiDiMode = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid2CellClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DEBT_CUS_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1575#1587#1605#1575#1569
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1605#1604#1575#1581#1592#1575#1578
          Width = 275
          Visible = True
        end>
    end
    object Edit3: TEdit
      Left = 369
      Top = 472
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 352
      Top = 512
      Width = 185
      Height = 25
      Caption = #1575#1580#1605#1575#1604#1610' '#1583#1610#1606' '#1575#1604#1588#1582#1589' '#1575#1604#1605#1582#1578#1575#1585
      Enabled = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object Edit5: TEdit
      Left = 49
      Top = 477
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_get_debts_information
    Left = 48
    Top = 96
  end
  object Query_get_debts_information: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from debt')
    Left = 80
    Top = 96
    object Query_get_debts_informationDEBT_NO: TIntegerField
      FieldName = 'DEBT_NO'
      Origin = 'ST.DEBT.DEBT_NO'
    end
    object Query_get_debts_informationDEBT_CUS_NAME: TStringField
      FieldName = 'DEBT_CUS_NAME'
      Origin = 'ST.DEBT.DEBT_CUS_NAME'
      Size = 50
    end
    object Query_get_debts_informationDEBT_DATE: TStringField
      FieldName = 'DEBT_DATE'
      Origin = 'ST.DEBT.DEBT_DATE'
      Size = 10
    end
    object Query_get_debts_informationDEBT_VALUE: TFloatField
      FieldName = 'DEBT_VALUE'
      Origin = 'ST.DEBT.DEBT_VALUE'
    end
    object Query_get_debts_informationNUM_IN_DAILY_SALE: TIntegerField
      FieldName = 'NUM_IN_DAILY_SALE'
      Origin = 'BIG_CARS.DEBT.NUM_IN_DAILY_SALE'
    end
  end
  object query_edit_in_debt_table: TQuery
    ObjectView = True
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from debt'
      'where'
      
        '(((debt_cus_name=:var1)and(debt_value=:var2) )and (debt_date=:va' +
        'r3))')
    Left = 80
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftFloat
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object query_edit_in_debt_tableDEBT_NO: TIntegerField
      FieldName = 'DEBT_NO'
      Origin = 'ST.DEBT.DEBT_NO'
    end
    object query_edit_in_debt_tableDEBT_CUS_NAME: TStringField
      FieldName = 'DEBT_CUS_NAME'
      Origin = 'ST.DEBT.DEBT_CUS_NAME'
      Size = 50
    end
    object query_edit_in_debt_tableDEBT_DATE: TStringField
      FieldName = 'DEBT_DATE'
      Origin = 'ST.DEBT.DEBT_DATE'
      Size = 10
    end
    object query_edit_in_debt_tableDEBT_VALUE: TFloatField
      FieldName = 'DEBT_VALUE'
      Origin = 'ST.DEBT.DEBT_VALUE'
    end
    object query_edit_in_debt_tableNUM_IN_DAILY_SALE: TIntegerField
      FieldName = 'NUM_IN_DAILY_SALE'
      Origin = 'BIG_CARS.DEBT.NUM_IN_DAILY_SALE'
    end
  end
  object DataSource2: TDataSource
    DataSet = query_edit_in_debt_table
    Left = 48
    Top = 264
  end
  object Query_save_in_collecting_debts: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from collecting_debt')
    Left = 80
    Top = 296
    object Query_save_in_collecting_debtsCD_NO: TIntegerField
      FieldName = 'CD_NO'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_NO'
    end
    object Query_save_in_collecting_debtsCD_CUS_NAME: TStringField
      FieldName = 'CD_CUS_NAME'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_CUS_NAME'
      Size = 50
    end
    object Query_save_in_collecting_debtsCD_DEBT_PAY_VALUE: TFloatField
      FieldName = 'CD_DEBT_PAY_VALUE'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_DEBT_PAY_VALUE'
    end
    object Query_save_in_collecting_debtsCD_DATE: TStringField
      FieldName = 'CD_DATE'
      Origin = 'BIG_CARS.COLLECTING_DEBT.NUM_IN_DAILY_SALE'
      Size = 10
    end
    object Query_save_in_collecting_debtsNUM_IN_DAILY_SALE: TIntegerField
      FieldName = 'NUM_IN_DAILY_SALE'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
    end
    object Query_save_in_collecting_debtsCD_REMAINING: TFloatField
      FieldName = 'CD_REMAINING'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query_save_in_collecting_debts
    Left = 48
    Top = 296
  end
  object DataSource4: TDataSource
    DataSet = Query_select_whitout_repeat
    Left = 48
    Top = 128
  end
  object Query_select_whitout_repeat: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      #13'select  distinct (debt_cus_name) from debt '
      '')
    Left = 80
    Top = 128
    object Query_select_whitout_repeatDEBT_CUS_NAME: TStringField
      FieldName = 'DEBT_CUS_NAME'
      Size = 50
    end
  end
  object Query_data_for_fatora: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from collecting_debt,daily_sale'
      'where '
      
        '(((collecting_debt.cd_no=:var1 )and (daily_sale.pay_num=:var2) )' +
        ' and (collecting_debt.num_in_daily_sale=:var3))')
    Left = 80
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftInteger
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftInteger
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object Query_data_for_fatoraCD_NO: TIntegerField
      FieldName = 'CD_NO'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_NO'
    end
    object Query_data_for_fatoraCD_CUS_NAME: TStringField
      FieldName = 'CD_CUS_NAME'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_CUS_NAME'
      Size = 50
    end
    object Query_data_for_fatoraCD_DEBT_PAY_VALUE: TFloatField
      FieldName = 'CD_DEBT_PAY_VALUE'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_DEBT_PAY_VALUE'
    end
    object Query_data_for_fatoraCD_DATE: TStringField
      FieldName = 'CD_DATE'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_DATE'
      Size = 10
    end
    object Query_data_for_fatoraNUM_IN_DAILY_SALE: TIntegerField
      FieldName = 'NUM_IN_DAILY_SALE'
      Origin = 'BIG_CARS.COLLECTING_DEBT.NUM_IN_DAILY_SALE'
    end
    object Query_data_for_fatoraCD_REMAINING: TFloatField
      FieldName = 'CD_REMAINING'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
    end
    object Query_data_for_fatoraDS_NO: TIntegerField
      FieldName = 'DS_NO'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
    end
    object Query_data_for_fatoraDS_NAME_TYPE: TStringField
      FieldName = 'DS_NAME_TYPE'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
      Size = 50
    end
    object Query_data_for_fatoraDS_NAME_KIND: TStringField
      FieldName = 'DS_NAME_KIND'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
      Size = 50
    end
    object Query_data_for_fatoraDS_QUANTITY: TIntegerField
      FieldName = 'DS_QUANTITY'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
    end
    object Query_data_for_fatoraDS_PRICE: TFloatField
      FieldName = 'DS_PRICE'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
    end
    object Query_data_for_fatoraDS_DATE: TStringField
      FieldName = 'DS_DATE'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
      Size = 10
    end
    object Query_data_for_fatoraTOTAL_PRICE: TFloatField
      FieldName = 'TOTAL_PRICE'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
    end
    object Query_data_for_fatoraRECIVER_NAME: TStringField
      FieldName = 'RECIVER_NAME'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
      Size = 50
    end
    object Query_data_for_fatoraPAY_NUM: TIntegerField
      FieldName = 'PAY_NUM'
      Origin = 'BIG_CARS.COLLECTING_DEBT.CD_REMAINING'
    end
  end
  object DataSource5: TDataSource
    DataSet = Query_data_for_fatora
    Left = 48
    Top = 160
  end
  object DataSource6: TDataSource
    DataSet = Query_total_debt
    Left = 48
    Top = 192
  end
  object Query_total_debt: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(debt_value) from debt')
    Left = 80
    Top = 192
    object Query_total_debtSUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object DataSource7: TDataSource
    DataSet = Query_debt_for_someone
    Left = 48
    Top = 224
  end
  object Query_debt_for_someone: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(debt_value)from debt '
      'where debt_cus_name=:var1;')
    Left = 80
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_debt_for_someoneSUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object DataSource8: TDataSource
    DataSet = Query_max_cd_no
    Left = 48
    Top = 328
  end
  object Query_max_cd_no: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(cd_no)from collecting_debt')
    Left = 80
    Top = 328
    object Query_max_cd_noMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource9: TDataSource
    DataSet = Query_total_for_fatora
    Left = 48
    Top = 360
  end
  object Query_total_for_fatora: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(total_price) from collecting_debt,daily_sale'
      'where '
      
        '(((collecting_debt.cd_no=:var1 )and (daily_sale.pay_num=:var2) )' +
        ' and (collecting_debt.num_in_daily_sale=:var3))'
      '')
    Left = 80
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftInteger
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftInteger
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object Query_total_for_fatoraSUM: TFloatField
      FieldName = 'SUM'
    end
  end
end
