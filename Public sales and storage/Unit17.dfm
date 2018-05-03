object Form17: TForm17
  Left = 216
  Top = 158
  Width = 666
  Height = 343
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1575#1604#1571#1585#1576#1575#1581' '#1604#1589#1606#1601
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
    Left = 7
    Top = 7
    Width = 643
    Height = 297
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 588
      Top = 48
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label3: TLabel
      Left = 395
      Top = 49
      Width = 15
      Height = 13
      Caption = #1605#1600#1606
    end
    object Label4: TLabel
      Left = 200
      Top = 48
      Width = 20
      Height = 13
      Caption = #1573#1604#1600#1609
    end
    object Label5: TLabel
      Left = 475
      Top = 187
      Width = 126
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1585#1576#1581' '#1604#1604#1589#1606#1601' '#1575#1604#1605#1581#1583#1583
    end
    object Label6: TLabel
      Left = 462
      Top = 152
      Width = 149
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1585#1576#1581' '#1601#1609' '#1575#1604#1601#1578#1585#1577' '#1575#1604#1605#1581#1583#1583#1577
    end
    object Label7: TLabel
      Left = 172
      Top = 152
      Width = 156
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1610' '#1575#1604#1576#1590#1575#1593#1577' '#1601#1609' '#1575#1604#1601#1578#1585#1577' '#1575#1604#1605#1581#1583#1583#1577
    end
    object Label8: TLabel
      Left = 183
      Top = 190
      Width = 133
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1576#1590#1575#1593#1577' '#1604#1604#1589#1606#1601' '#1575#1604#1605#1581#1583#1583
    end
    object ComboBox1: TComboBox
      Left = 433
      Top = 45
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 241
      Top = 45
      Width = 149
      Height = 21
      Date = 39231.794671759260000000
      Time = 39231.794671759260000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 40
      Top = 44
      Width = 149
      Height = 21
      Date = 39231.795951597240000000
      Time = 39231.795951597240000000
      TabOrder = 2
    end
    object Button1: TButton
      Left = 285
      Top = 96
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 334
      Top = 184
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 333
      Top = 146
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 44
      Top = 146
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 44
      Top = 182
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
    object Button2: TButton
      Left = 287
      Top = 233
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(KIND) from TYPES')
    Left = 80
    Top = 24
    object IBQuery1KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 48
    Top = 24
  end
  object total_profit_limted: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select sum(profitable.GAIN*profitable.QUANTITY)  from PAID, PROF' +
        'ITABLE'
      
        'where (profitable.kind=:var1) and (profitable.sale_num=paid.sale' +
        '_num) and ((paid.input_date>=:var3)and(paid.input_date<=:var4))')
    Left = 592
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
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
  object DataSource6: TDataSource
    DataSet = total_profit_limted
    Left = 552
    Top = 8
  end
  object total_profit: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY* GAIN) from PROFITABLE'
      'where (kind=:var1) ')
    Left = 80
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object total_profitSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource3: TDataSource
    DataSet = total_profit
    Left = 48
    Top = 88
  end
  object DataSource4: TDataSource
    DataSet = total_buy
    Left = 48
    Top = 120
  end
  object total_buy: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY*BUY_PRICE) from STORGE_HISTORY'
      'where (kind=:var1) ')
    Left = 80
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
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
      
        'where (kind=:var1) and ((input_date>=:var3) and (input_date<=:va' +
        'r4))')
    Left = 80
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
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
    Left = 48
    Top = 152
  end
end
