object Form9: TForm9
  Left = 213
  Top = 115
  Width = 665
  Height = 375
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1575#1604#1571#1585#1576#1575#1581' '#1604#1606#1608#1593
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
    Left = 26
    Top = 16
    Width = 609
    Height = 305
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 484
      Top = 48
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label2: TLabel
      Left = 296
      Top = 47
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label3: TLabel
      Left = 496
      Top = 92
      Width = 15
      Height = 13
      Caption = #1605#1600#1606
    end
    object Label4: TLabel
      Left = 302
      Top = 88
      Width = 20
      Height = 13
      Caption = #1573#1604#1600#1609
    end
    object Label5: TLabel
      Left = 462
      Top = 219
      Width = 121
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1585#1576#1581' '#1604#1604#1606#1608#1593' '#1575#1604#1605#1581#1583#1583
    end
    object Label6: TLabel
      Left = 446
      Top = 184
      Width = 149
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1585#1576#1581' '#1601#1609' '#1575#1604#1601#1578#1585#1577' '#1575#1604#1605#1581#1583#1583#1577
    end
    object Label7: TLabel
      Left = 156
      Top = 184
      Width = 156
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1610' '#1575#1604#1576#1590#1575#1593#1577' '#1601#1609' '#1575#1604#1601#1578#1585#1577' '#1575#1604#1605#1581#1583#1583#1577
    end
    object Label8: TLabel
      Left = 172
      Top = 222
      Width = 128
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1576#1590#1575#1593#1577' '#1604#1604#1606#1608#1593' '#1575#1604#1605#1581#1583#1583
    end
    object ComboBox1: TComboBox
      Left = 329
      Top = 45
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 129
      Top = 44
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 329
      Top = 87
      Width = 149
      Height = 21
      Date = 39231.794671759260000000
      Time = 39231.794671759260000000
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 129
      Top = 83
      Width = 149
      Height = 21
      Date = 39231.795951597240000000
      Time = 39231.795951597240000000
      TabOrder = 3
    end
    object Button1: TButton
      Left = 264
      Top = 128
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 318
      Top = 216
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 317
      Top = 178
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 28
      Top = 178
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
    object Edit4: TEdit
      Left = 28
      Top = 214
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 8
    end
    object Button2: TButton
      Left = 264
      Top = 265
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 9
      OnClick = Button2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 48
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 48
    Top = 56
  end
  object DataSource3: TDataSource
    DataSet = total_profit
    Left = 48
    Top = 88
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
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from TYPES'
      'where kind=:var1')
    Left = 80
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TYPES.NAME'
      Required = True
      Size = 30
    end
  end
  object total_profit: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY* GAIN) from PROFITABLE'
      'where (kind=:var1) and (name=:var2)')
    Left = 80
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end>
  end
  object DataSource4: TDataSource
    DataSet = total_buy
    Left = 48
    Top = 120
  end
  object DataSource5: TDataSource
    DataSet = total_buy_limted
    Left = 48
    Top = 152
  end
  object DataSource6: TDataSource
    DataSet = total_profit_limted
    Left = 552
    Top = 48
  end
  object total_buy: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY*BUY_PRICE) from STORGE_HISTORY'
      'where (kind=:var1) and (name=:var2)')
    Left = 80
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
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
      
        'where (kind=:var1) and (name=:var2) and ((input_date>=:var3) and' +
        ' (input_date<=:var4))')
    Left = 80
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
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
  object total_profit_limted: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select sum(profitable.GAIN*profitable.QUANTITY)  from PAID, PROF' +
        'ITABLE'
      
        'where (profitable.kind=:var1) and (profitable.name=:var2) and (p' +
        'rofitable.sale_num=paid.sale_num) and ((paid.input_date>=:var3)a' +
        'nd(paid.input_date<=:var4))')
    Left = 592
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
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
end