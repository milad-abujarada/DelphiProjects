object Form17: TForm17
  Left = 1
  Top = 1
  Width = 1022
  Height = 736
  Align = alClient
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
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
    Left = 0
    Top = 8
    Width = 1017
    Height = 689
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 838
      Top = 605
      Width = 103
      Height = 13
      Caption = #1575#1580#1605#1575#1604#1609' '#1602#1610#1605#1577' '#1575#1604#1605#1588#1578#1585#1610#1575#1578
    end
    object Label2: TLabel
      Left = 568
      Top = 605
      Width = 95
      Height = 13
      Caption = #1575#1580#1605#1575#1604#1609' '#1602#1610#1605#1577' '#1575#1604#1605#1576#1610#1593#1575#1578
    end
    object Label3: TLabel
      Left = 342
      Top = 604
      Width = 58
      Height = 13
      Caption = #1575#1580#1605#1575#1604#1609' '#1575#1604#1585#1576#1581
    end
    object Label4: TLabel
      Left = 703
      Top = 604
      Width = 22
      Height = 13
      Caption = #1583#1610#1606#1575#1585
    end
    object Label5: TLabel
      Left = 431
      Top = 605
      Width = 22
      Height = 13
      Caption = #1583#1610#1606#1575#1585
    end
    object Label6: TLabel
      Left = 207
      Top = 604
      Width = 22
      Height = 13
      Caption = #1583#1610#1606#1575#1585
    end
    object Edit1: TEdit
      Left = 728
      Top = 600
      Width = 106
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 456
      Top = 602
      Width = 110
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 432
      Top = 648
      Width = 113
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 32
      Width = 1001
      Height = 561
      DataSource = DataSource1
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 200
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'TYPE_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1575#1580#1605#1575#1604#1610#1577
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AVAILBLE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1578#1608#1601#1585#1577
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BUY_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1588#1585#1575#1569' '#1575#1604#1608#1581#1583#1577
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALE_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1576#1610#1593' '#1575#1604#1608#1581#1583#1577
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_BUY_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1580#1605#1575#1604#1609' '#1587#1593#1585' '#1575#1604#1588#1585#1575#1569
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_BUDGET'
          Title.Alignment = taCenter
          Title.Caption = #1575#1580#1605#1575#1604#1609' '#1602#1610#1605#1577' '#1575#1604#1605#1576#1575#1593
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WINING'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1585#1576#1581
          Visible = True
        end>
    end
    object Edit3: TEdit
      Left = 234
      Top = 601
      Width = 107
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 544
      Top = 648
      Width = 115
      Height = 25
      Caption = #1605#1587#1581' '#1575#1604#1603#1605#1610#1575#1578' '#1575#1604#1605#1606#1578#1607#1610#1577
      TabOrder = 5
      OnClick = BitBtn2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_select_data_from_gain
    Left = 88
    Top = 56
  end
  object Query_select_data_from_gain: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from gain_table')
    Left = 120
    Top = 56
    object Query_select_data_from_gainNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'BIG_CARS.GAIN_TABLE.NUM'
    end
    object Query_select_data_from_gainKIND: TStringField
      FieldName = 'KIND'
      Origin = 'BIG_CARS.GAIN_TABLE.KIND'
      Size = 50
    end
    object Query_select_data_from_gainTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.GAIN_TABLE.TYPE_NAME'
      Size = 50
    end
    object Query_select_data_from_gainQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.GAIN_TABLE.QUANTITY'
    end
    object Query_select_data_from_gainAVAILBLE: TIntegerField
      FieldName = 'AVAILBLE'
      Origin = 'BIG_CARS.GAIN_TABLE.AVAILBLE'
    end
    object Query_select_data_from_gainTOTAL_BUDGET: TFloatField
      FieldName = 'TOTAL_BUDGET'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUDGET'
    end
    object Query_select_data_from_gainINPUT_DATE: TStringField
      FieldName = 'INPUT_DATE'
      Origin = 'BIG_CARS.GAIN_TABLE.INPUT_DATE'
      Size = 10
    end
    object Query_select_data_from_gainSALE_PRICE: TFloatField
      FieldName = 'SALE_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.SALE_PRICE'
    end
    object Query_select_data_from_gainBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.BUY_PRICE'
    end
    object Query_select_data_from_gainTOTAL_BUY_PRICE: TFloatField
      FieldName = 'TOTAL_BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUY_PRICE'
    end
    object Query_select_data_from_gainNO_IN_STORGE: TIntegerField
      FieldName = 'NO_IN_STORGE'
      Origin = 'BIG_CARS.GAIN_TABLE.NO_IN_STORGE'
    end
    object Query_select_data_from_gainWINING: TFloatField
      FieldName = 'WINING'
      Origin = 'BIG_CARS.GAIN_TABLE.WINING'
    end
  end
  object Query_total_buy_price: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(total_buy_price) from gain_table')
    Left = 120
    Top = 88
    object Query_total_buy_priceSUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object Query_total_budget: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(total_budget) from gain_table')
    Left = 120
    Top = 120
    object Query_total_budgetSUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object Query_total_wining: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(wining)from gain_table')
    Left = 120
    Top = 152
    object Query_total_winingSUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query_total_buy_price
    Left = 88
    Top = 88
  end
  object DataSource3: TDataSource
    DataSet = Query_total_budget
    Left = 88
    Top = 120
  end
  object DataSource4: TDataSource
    DataSet = Query_total_wining
    Left = 88
    Top = 152
  end
  object DataSource5: TDataSource
    DataSet = Query_delete
    Left = 88
    Top = 184
  end
  object Query_delete: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from gain_table'
      'where'
      'availble=0')
    Left = 120
    Top = 184
    object Query_deleteNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'BIG_CARS.GAIN_TABLE.NUM'
    end
    object Query_deleteKIND: TStringField
      FieldName = 'KIND'
      Origin = 'BIG_CARS.GAIN_TABLE.KIND'
      Size = 50
    end
    object Query_deleteTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.GAIN_TABLE.TYPE_NAME'
      Size = 50
    end
    object Query_deleteQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.GAIN_TABLE.QUANTITY'
    end
    object Query_deleteAVAILBLE: TIntegerField
      FieldName = 'AVAILBLE'
      Origin = 'BIG_CARS.GAIN_TABLE.AVAILBLE'
    end
    object Query_deleteTOTAL_BUDGET: TFloatField
      FieldName = 'TOTAL_BUDGET'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUDGET'
    end
    object Query_deleteINPUT_DATE: TStringField
      FieldName = 'INPUT_DATE'
      Origin = 'BIG_CARS.GAIN_TABLE.INPUT_DATE'
      Size = 10
    end
    object Query_deleteSALE_PRICE: TFloatField
      FieldName = 'SALE_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.SALE_PRICE'
    end
    object Query_deleteBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.BUY_PRICE'
    end
    object Query_deleteTOTAL_BUY_PRICE: TFloatField
      FieldName = 'TOTAL_BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUY_PRICE'
    end
    object Query_deleteNO_IN_STORGE: TIntegerField
      FieldName = 'NO_IN_STORGE'
      Origin = 'BIG_CARS.GAIN_TABLE.NO_IN_STORGE'
    end
    object Query_deleteWINING: TFloatField
      FieldName = 'WINING'
      Origin = 'BIG_CARS.GAIN_TABLE.WINING'
    end
  end
end
