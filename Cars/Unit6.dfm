object Form6: TForm6
  Left = 1
  Top = 1
  Width = 1022
  Height = 736
  Align = alClient
  BiDiMode = bdRightToLeft
  BorderIcons = []
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
    Left = 72
    Top = 16
    Width = 897
    Height = 681
    BevelInner = bvLowered
    TabOrder = 2
    object Label2: TLabel
      Left = 480
      Top = 608
      Width = 60
      Height = 13
      Caption = #1575#1580#1605#1575#1604#1609' '#1575#1604#1583#1582#1604
    end
    object Label3: TLabel
      Left = 796
      Top = 556
      Width = 80
      Height = 13
      Caption = #1575#1604#1583#1582#1604' '#1605#1606' '#1575#1604#1605#1576#1610#1593#1575#1578
    end
    object Label4: TLabel
      Left = 582
      Top = 557
      Width = 62
      Height = 13
      Caption = #1578#1581#1589#1610#1604' '#1575#1604#1583#1610#1608#1606
    end
    object Label5: TLabel
      Left = 552
      Top = 64
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label6: TLabel
      Left = 387
      Top = 559
      Width = 49
      Height = 13
      Caption = #1575#1604#1605#1589#1585#1608#1601#1575#1578
    end
    object Label8: TLabel
      Left = 440
      Top = 24
      Width = 84
      Height = 13
      Caption = #1575#1580#1605#1575#1604#1609' '#1575#1604#1583#1582#1604' '#1604#1610#1608#1605' '
    end
    object Label9: TLabel
      Left = 167
      Top = 559
      Width = 72
      Height = 13
      Caption = #1575#1604#1576#1590#1575#1593#1577' '#1575#1604#1605#1585#1580#1593#1607
    end
    object Label11: TLabel
      Left = 662
      Top = 556
      Width = 22
      Height = 13
      Caption = #1583#1610#1606#1575#1585
    end
    object Label12: TLabel
      Left = 357
      Top = 611
      Width = 22
      Height = 13
      Caption = #1583#1610#1606#1575#1585
    end
    object Label13: TLabel
      Left = 38
      Top = 558
      Width = 22
      Height = 13
      Caption = #1583#1610#1606#1575#1585
    end
    object Label14: TLabel
      Left = 264
      Top = 558
      Width = 22
      Height = 13
      Caption = #1583#1610#1606#1575#1585
    end
    object Label15: TLabel
      Left = 455
      Top = 558
      Width = 22
      Height = 13
      Caption = #1583#1610#1606#1575#1585
    end
    object Edit2: TEdit
      Left = 383
      Top = 606
      Width = 94
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 448
      Top = 88
      Width = 91
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object Edit3: TEdit
      Left = 691
      Top = 552
      Width = 94
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 485
      Top = 555
      Width = 94
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 3
    end
    object DateTimePicker2: TDateTimePicker
      Left = 376
      Top = 60
      Width = 162
      Height = 21
      Date = 38794.853707500000000000
      Time = 38794.853707500000000000
      TabOrder = 4
      OnChange = DateTimePicker2Change
    end
    object DBGrid2: TDBGrid
      Left = 148
      Top = 120
      Width = 649
      Height = 393
      BiDiMode = bdRightToLeft
      DataSource = DataSource4
      ParentBiDiMode = False
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DS_NAME_KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 150
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DS_NAME_TYPE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 150
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DS_QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DS_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1587#1593#1585
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1580#1605#1575#1604#1609' '#1575#1604#1587#1593#1585
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DS_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 113
          Visible = True
        end>
    end
    object Edit5: TEdit
      Left = 290
      Top = 554
      Width = 92
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 73
      Top = 554
      Width = 90
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 7
    end
  end
  object Panel1: TPanel
    Left = 216
    Top = 16
    Width = 625
    Height = 617
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 336
      Top = 584
      Width = 119
      Height = 13
      Caption = #1575#1580#1605#1575#1604#1609' '#1575#1604#1605#1589#1585#1608#1601' '#1604#1607#1584#1575' '#1575#1604#1610#1608#1605
    end
    object Label7: TLabel
      Left = 237
      Top = 24
      Width = 127
      Height = 13
      Caption = #1605#1593#1604#1608#1605#1575#1578' '#1593#1606' '#1575#1604#1605#1589#1585#1608#1601#1575#1578' '#1604#1610#1608#1605
    end
    object Label10: TLabel
      Left = 197
      Top = 585
      Width = 22
      Height = 13
      Caption = #1583#1610#1606#1575#1585
    end
    object DBGrid1: TDBGrid
      Left = 40
      Top = 144
      Width = 553
      Height = 417
      BiDiMode = bdRightToLeft
      DataSource = DataSource7
      ParentBiDiMode = False
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
          FieldName = 'SP_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1587#1605' '#1575#1604#1605#1578#1589#1585#1601
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SP_AMOUNT'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1602#1610#1605#1577
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SP_CAUSE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1576#1576' '#1575#1604#1589#1585#1601
          Width = 200
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 261
      Top = 112
      Width = 89
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 205
      Top = 80
      Width = 186
      Height = 21
      BiDiMode = bdRightToLeft
      Date = 38794.827996597240000000
      Time = 38794.827996597240000000
      ParentBiDiMode = False
      TabOrder = 2
      OnChange = DateTimePicker1Change
    end
    object Edit1: TEdit
      Left = 224
      Top = 580
      Width = 110
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object BitBtn2: TBitBtn
    Left = 419
    Top = 651
    Width = 115
    Height = 25
    Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1610#1577
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn4: TBitBtn
    Left = 543
    Top = 650
    Width = 115
    Height = 25
    Caption = #1605#1589#1585#1608#1601#1575#1578' '#1604#1601#1578#1585#1577' '
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object DataSource1: TDataSource
    DataSet = Query_select_from_spend
    Left = 112
    Top = 88
  end
  object Query_select_from_spend: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(sp_amount) from spend'
      'where'
      'sp_date=:var1;')
    Left = 144
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_select_from_spendSUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object Query_total_of_budget_to_the_day_selected: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(paied_value)from paied_for_every_sale'
      'where '
      'paied_date=:var1')
    Left = 976
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_total_of_budget_to_the_day_selectedSUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object Query_total_from_paied_for_every_sale: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(paied_value) from paied_for_every_sale'
      #13'where'
      'paied_date=:var1'#10
      ''
      ''
      ''
      '')
    Left = 144
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_total_from_paied_for_every_saleSUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query_total_of_budget_to_the_day_selected
    Left = 944
    Top = 24
  end
  object DataSource3: TDataSource
    DataSet = Query_total_from_paied_for_every_sale
    Left = 112
    Top = 56
  end
  object DataSource4: TDataSource
    DataSet = Query_select_daily_sale_from_storge
    Left = 112
    Top = 24
  end
  object Query_select_daily_sale_from_storge: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from daily_sale'
      #13'where'
      'ds_date=:var1'#10
      ''
      ''
      '')
    Left = 144
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_select_daily_sale_from_storgeDS_NO: TIntegerField
      FieldName = 'DS_NO'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NO'
    end
    object Query_select_daily_sale_from_storgeDS_NAME_TYPE: TStringField
      FieldName = 'DS_NAME_TYPE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NAME_TYPE'
      Size = 50
    end
    object Query_select_daily_sale_from_storgeDS_NAME_KIND: TStringField
      FieldName = 'DS_NAME_KIND'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NAME_KIND'
      Size = 50
    end
    object Query_select_daily_sale_from_storgeDS_QUANTITY: TIntegerField
      FieldName = 'DS_QUANTITY'
      Origin = 'BIG_CARS.DAILY_SALE.DS_QUANTITY'
    end
    object Query_select_daily_sale_from_storgeDS_PRICE: TFloatField
      FieldName = 'DS_PRICE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_PRICE'
    end
    object Query_select_daily_sale_from_storgeDS_DATE: TStringField
      FieldName = 'DS_DATE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_DATE'
      Size = 10
    end
    object Query_select_daily_sale_from_storgeTOTAL_PRICE: TFloatField
      FieldName = 'TOTAL_PRICE'
      Origin = 'BIG_CARS.DAILY_SALE.TOTAL_PRICE'
    end
    object Query_select_daily_sale_from_storgeRECIVER_NAME: TStringField
      FieldName = 'RECIVER_NAME'
      Origin = 'BIG_CARS.DAILY_SALE.RECIVER_NAME'
      Size = 50
    end
    object Query_select_daily_sale_from_storgePAY_NUM: TIntegerField
      FieldName = 'PAY_NUM'
      Origin = 'BIG_CARS.DAILY_SALE.PAY_NUM'
    end
  end
  object DataSource5: TDataSource
    DataSet = Query_total_from_collecting_debts
    Left = 112
    Top = 120
  end
  object Query_total_from_collecting_debts: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(cd_debt_pay_value) from collecting_debt'
      'where cd_date=:var1')
    Left = 144
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_total_from_collecting_debtsSUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object DataSource6: TDataSource
    DataSet = Query_select_from_spend
    Left = 112
    Top = 160
  end
  object Query_select_total_from_retreive: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(money) from retreive_table'
      'where day_date=:var1')
    Left = 144
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_select_total_from_retreiveSUM: TIntegerField
      FieldName = 'SUM'
    end
  end
  object DataSource7: TDataSource
    DataSet = Query1
    Left = 112
    Top = 192
  end
  object Query1: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from spend'
      'where'
      'sp_date=:var1;')
    Left = 144
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query1SP_NO: TIntegerField
      FieldName = 'SP_NO'
      Origin = 'BIG_CARS.SPEND.SP_NO'
    end
    object Query1SP_NAME: TStringField
      FieldName = 'SP_NAME'
      Origin = 'BIG_CARS.SPEND.SP_NAME'
      Size = 50
    end
    object Query1SP_CAUSE: TStringField
      FieldName = 'SP_CAUSE'
      Origin = 'BIG_CARS.SPEND.SP_CAUSE'
      Size = 50
    end
    object Query1SP_AMOUNT: TFloatField
      FieldName = 'SP_AMOUNT'
      Origin = 'BIG_CARS.SPEND.SP_AMOUNT'
    end
    object Query1SP_DATE: TStringField
      FieldName = 'SP_DATE'
      Origin = 'BIG_CARS.SPEND.SP_DATE'
      Size = 10
    end
  end
end
