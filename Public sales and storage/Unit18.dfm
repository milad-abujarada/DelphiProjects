object Form18: TForm18
  Left = 239
  Top = 161
  Width = 630
  Height = 341
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1575#1604#1571#1585#1576#1575#1581' '#1604#1601#1578#1585#1577
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
    Top = 13
    Width = 600
    Height = 281
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label3: TLabel
      Left = 485
      Top = 49
      Width = 15
      Height = 13
      Caption = #1605#1600#1606
    end
    object Label4: TLabel
      Left = 290
      Top = 48
      Width = 20
      Height = 13
      Caption = #1573#1604#1600#1609
    end
    object Label5: TLabel
      Left = 488
      Top = 188
      Width = 67
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1585#1576#1581' '
    end
    object Label6: TLabel
      Left = 446
      Top = 152
      Width = 149
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1585#1576#1581' '#1601#1609' '#1575#1604#1601#1578#1585#1577' '#1575#1604#1605#1581#1583#1583#1577
    end
    object Label7: TLabel
      Left = 156
      Top = 152
      Width = 156
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1610' '#1575#1604#1576#1590#1575#1593#1577' '#1601#1609' '#1575#1604#1601#1578#1585#1577' '#1575#1604#1605#1581#1583#1583#1577
    end
    object Label8: TLabel
      Left = 203
      Top = 190
      Width = 74
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1576#1590#1575#1593#1577' '
    end
    object DateTimePicker1: TDateTimePicker
      Left = 331
      Top = 45
      Width = 149
      Height = 21
      Date = 39231.794671759260000000
      Time = 39231.794671759260000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 130
      Top = 44
      Width = 149
      Height = 21
      Date = 39231.795951597240000000
      Time = 39231.795951597240000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 269
      Top = 96
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 318
      Top = 184
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 317
      Top = 146
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 28
      Top = 146
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 28
      Top = 182
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Button2: TButton
      Left = 272
      Top = 233
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 7
      OnClick = Button2Click
    end
  end
  object total_profit: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY* GAIN) from PROFITABLE'
      '')
    Left = 56
    object total_profitSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource3: TDataSource
    DataSet = total_profit
    Left = 24
  end
  object DataSource4: TDataSource
    DataSet = total_buy
    Left = 24
    Top = 32
  end
  object total_buy: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY*BUY_PRICE) from STORGE_HISTORY'
      '')
    Left = 56
    Top = 32
    object total_buySUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object total_buy_limted: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(BUY_PRICE* QUANTITY) from STORGE_HISTORY'
      'where ((input_date>=:var3) and (input_date<=:var4))')
    Left = 56
    Top = 64
    ParamData = <
      item
        DataType = ftDate
        Name = 'var3'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var4'
        ParamType = ptInputOutput
      end>
    object total_buy_limtedSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource5: TDataSource
    DataSet = total_buy_limted
    Left = 24
    Top = 64
  end
  object DataSource6: TDataSource
    DataSet = total_profit_limted
    Left = 528
  end
  object total_profit_limted: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select sum(profitable.GAIN*profitable.QUANTITY)  from PAID, PROF' +
        'ITABLE'
      
        'where (profitable.sale_num=paid.sale_num) and ((paid.input_date>' +
        '=:var3)and(paid.input_date<=:var4))')
    Left = 568
    ParamData = <
      item
        DataType = ftDate
        Name = 'var3'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var4'
        ParamType = ptInputOutput
      end>
    object total_profit_limtedSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
end
