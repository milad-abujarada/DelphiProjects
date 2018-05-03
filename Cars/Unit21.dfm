object Form21: TForm21
  Left = -4
  Top = -4
  Width = 1032
  Height = 746
  Align = alClient
  BiDiMode = bdRightToLeft
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
    Left = 48
    Top = 8
    Width = 937
    Height = 681
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 433
      Top = 24
      Width = 87
      Height = 13
      Caption = #1575#1604#1576#1590#1575#1593#1577' '#1575#1604#1605#1576#1575#1593#1607' '#1604#1600#1600#1600#1600
    end
    object Label2: TLabel
      Left = 397
      Top = 24
      Width = 32
      Height = 13
      Caption = 'Label2'
    end
    object Label3: TLabel
      Left = 881
      Top = 620
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label4: TLabel
      Left = 424
      Top = 622
      Width = 64
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1585#1580#1593#1577
    end
    object Label6: TLabel
      Left = 641
      Top = 621
      Width = 79
      Height = 13
      Caption = #1587#1593#1585' '#1588#1585#1575#1569' '#1575#1604#1608#1581#1583#1577
    end
    object Label7: TLabel
      Left = 633
      Top = 584
      Width = 71
      Height = 13
      Caption = #1587#1593#1585' '#1576#1610#1593' '#1575#1604#1608#1581#1583#1577
    end
    object Label8: TLabel
      Left = 225
      Top = 621
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label9: TLabel
      Left = 876
      Top = 585
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label5: TLabel
      Left = 228
      Top = 585
      Width = 20
      Height = 13
      Caption = #1575#1604#1585#1601
    end
    object Label10: TLabel
      Left = 423
      Top = 587
      Width = 61
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1576#1575#1593#1577
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 48
      Width = 913
      Height = 521
      DataSource = Form19.DataSource3
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
          FieldName = 'KIND_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 184
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TYPE_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 198
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577
          Width = 92
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PIECE_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1608#1581#1583#1577
          Width = 94
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL_PRICE_FOR_PEICE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1575#1580#1605#1575#1604#1609
          Width = 92
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DAILY_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 95
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'RECEIVER_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1587#1605' '#1575#1604#1605#1587#1578#1604#1605
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAY_NO_IN_DAILY_SALE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SERIAL_DAILY_SALE'
          Visible = False
        end>
    end
    object BitBtn1: TBitBtn
      Left = 446
      Top = 650
      Width = 129
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 318
      Top = 650
      Width = 131
      Height = 25
      Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1610#1577
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object Edit1: TEdit
      Left = 92
      Top = 579
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 744
      Top = 581
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 296
      Top = 618
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 507
      Top = 580
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Edit5: TEdit
      Left = 508
      Top = 617
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object Edit6: TEdit
      Left = 744
      Top = 618
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 8
    end
    object DateTimePicker1: TDateTimePicker
      Left = 93
      Top = 616
      Width = 120
      Height = 21
      Date = 38820.828869537040000000
      Time = 38820.828869537040000000
      TabOrder = 9
    end
    object Edit7: TEdit
      Left = 296
      Top = 581
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 10
    end
    object BitBtn3: TBitBtn
      Left = 575
      Top = 650
      Width = 129
      Height = 25
      Caption = #1573#1585#1580#1575#1593' '#1575#1604#1576#1590#1575#1593#1577
      Enabled = False
      TabOrder = 11
      OnClick = BitBtn3Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_edit_in_daily_sale
    Left = 8
    Top = 588
  end
  object Query_edit_in_daily_sale: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from daily_sale'
      'where'
      
        '(pay_num=:var1) and (ds_name_kind=:var2) and (ds_name_type=:var3' +
        ') and (ds_quantity=:var4) and (ds_price=:var5) and (total_price=' +
        ':var6) and (ds_no=:var7)')
    Left = 42
    Top = 588
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'var1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'var2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'var3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'var4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'var5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'var6'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'var7'
        ParamType = ptInputOutput
      end>
    object Query_edit_in_daily_saleDS_NO: TIntegerField
      FieldName = 'DS_NO'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NO'
    end
    object Query_edit_in_daily_saleDS_NAME_TYPE: TStringField
      FieldName = 'DS_NAME_TYPE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NAME_TYPE'
      Size = 50
    end
    object Query_edit_in_daily_saleDS_NAME_KIND: TStringField
      FieldName = 'DS_NAME_KIND'
      Origin = 'BIG_CARS.DAILY_SALE.DS_NAME_KIND'
      Size = 50
    end
    object Query_edit_in_daily_saleDS_QUANTITY: TIntegerField
      FieldName = 'DS_QUANTITY'
      Origin = 'BIG_CARS.DAILY_SALE.DS_QUANTITY'
    end
    object Query_edit_in_daily_saleDS_PRICE: TFloatField
      FieldName = 'DS_PRICE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_PRICE'
    end
    object Query_edit_in_daily_saleDS_DATE: TStringField
      FieldName = 'DS_DATE'
      Origin = 'BIG_CARS.DAILY_SALE.DS_DATE'
      Size = 10
    end
    object Query_edit_in_daily_saleTOTAL_PRICE: TFloatField
      FieldName = 'TOTAL_PRICE'
      Origin = 'BIG_CARS.DAILY_SALE.TOTAL_PRICE'
    end
    object Query_edit_in_daily_saleRECIVER_NAME: TStringField
      FieldName = 'RECIVER_NAME'
      Origin = 'BIG_CARS.DAILY_SALE.RECIVER_NAME'
      Size = 50
    end
    object Query_edit_in_daily_salePAY_NUM: TIntegerField
      FieldName = 'PAY_NUM'
      Origin = 'BIG_CARS.DAILY_SALE.PAY_NUM'
    end
  end
  object Query_caundition_to_retrive: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from debt '
      'where'
      'num_in_daily_sale=:var1')
    Left = 40
    Top = 560
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_caundition_to_retriveDEBT_NO: TIntegerField
      FieldName = 'DEBT_NO'
      Origin = 'BIG_CARS.DEBT.DEBT_NO'
    end
    object Query_caundition_to_retriveDEBT_CUS_NAME: TStringField
      FieldName = 'DEBT_CUS_NAME'
      Origin = 'BIG_CARS.DEBT.DEBT_CUS_NAME'
      Size = 50
    end
    object Query_caundition_to_retriveDEBT_DATE: TStringField
      FieldName = 'DEBT_DATE'
      Origin = 'BIG_CARS.DEBT.DEBT_DATE'
      Size = 10
    end
    object Query_caundition_to_retriveDEBT_VALUE: TFloatField
      FieldName = 'DEBT_VALUE'
      Origin = 'BIG_CARS.DEBT.DEBT_VALUE'
    end
    object Query_caundition_to_retriveNUM_IN_DAILY_SALE: TIntegerField
      FieldName = 'NUM_IN_DAILY_SALE'
      Origin = 'BIG_CARS.DEBT.NUM_IN_DAILY_SALE'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query_caundition_to_retrive
    Left = 8
    Top = 560
  end
end
