object Form23: TForm23
  Left = 250
  Top = 142
  Width = 598
  Height = 356
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1581#1587#1575#1576' '#1605#1583#1582#1608#1604' '#1588#1575#1581#1606#1577
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
    Left = 16
    Top = 8
    Width = 561
    Height = 289
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 489
      Top = 24
      Width = 56
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1588#1575#1581#1606#1577
    end
    object Label2: TLabel
      Left = 303
      Top = 24
      Width = 12
      Height = 13
      Caption = #1605#1606
    end
    object Label3: TLabel
      Left = 152
      Top = 24
      Width = 17
      Height = 13
      Caption = #1573#1604#1609
    end
    object Label4: TLabel
      Left = 395
      Top = 96
      Width = 157
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1583#1582#1608#1604' '#1601#1609' '#1575#1604#1601#1578#1585#1577' '#1575#1604#1605#1581#1583#1583#1607
    end
    object Label5: TLabel
      Left = 392
      Top = 142
      Width = 161
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1589#1585#1608#1601' '#1601#1609' '#1575#1604#1601#1578#1585#1577' '#1575#1604#1605#1581#1583#1583#1607
    end
    object Label6: TLabel
      Left = 462
      Top = 176
      Width = 35
      Height = 13
      Caption = #1575#1604#1589#1575#1601#1609
    end
    object Label7: TLabel
      Left = 133
      Top = 95
      Width = 133
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1605#1583#1582#1608#1604' '#1575#1604#1588#1575#1581#1606#1577' '#1575#1604#1603#1604#1610
    end
    object Label8: TLabel
      Left = 131
      Top = 139
      Width = 137
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1605#1589#1585#1608#1601' '#1575#1604#1588#1575#1581#1606#1577' '#1575#1604#1603#1604#1610
    end
    object Label9: TLabel
      Left = 184
      Top = 176
      Width = 35
      Height = 13
      Caption = #1575#1604#1589#1575#1601#1609
    end
    object Label10: TLabel
      Left = 424
      Top = 216
      Width = 111
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1605#1583#1582#1608#1604' '#1575#1604#1588#1575#1581#1606#1575#1578
    end
    object Label11: TLabel
      Left = 144
      Top = 216
      Width = 115
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1605#1589#1585#1608#1601' '#1575#1604#1588#1575#1581#1606#1575#1578
    end
    object Button1: TButton
      Left = 232
      Top = 58
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 238
      Top = 256
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 270
      Top = 91
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 270
      Top = 134
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 271
      Top = 174
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 4
      Top = 90
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 4
      Top = 134
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 5
      Top = 174
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
    object ComboBox1: TComboBox
      Left = 331
      Top = 19
      Width = 153
      Height = 21
      ItemHeight = 13
      TabOrder = 8
    end
    object DateTimePicker1: TDateTimePicker
      Left = 179
      Top = 18
      Width = 121
      Height = 21
      Date = 39236.638210358800000000
      Time = 39236.638210358800000000
      TabOrder = 9
    end
    object DateTimePicker2: TDateTimePicker
      Left = 18
      Top = 16
      Width = 121
      Height = 21
      Date = 39236.638216319440000000
      Time = 39236.638216319440000000
      TabOrder = 10
    end
    object Edit7: TEdit
      Left = 272
      Top = 213
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 11
    end
    object Edit8: TEdit
      Left = 7
      Top = 212
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 12
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from CARS')
    Left = 32
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Top = 8
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(income) from CARS_INCOME'
      
        'where (input_date>=:var1) and (input_date<=:var2) and (name=:var' +
        '3)')
    Left = 32
    Top = 38
    ParamData = <
      item
        DataType = ftDate
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object IBQuery2SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery2
    Top = 38
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(spent) from cars_spent'
      
        'where (input_date>=:var1) and (input_date<=:var2) and (name=:var' +
        '3)')
    Left = 32
    Top = 72
    ParamData = <
      item
        DataType = ftDate
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object IBQuery3SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(INCOME) from CARS_INCOME'
      'where name=:var1')
    Left = 32
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery4SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(SPENT) from CARS_SPENT'
      'where name=:var1')
    Left = 32
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery5SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery3
    Top = 72
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Top = 104
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Top = 136
  end
  object IBQuery6: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(INCOME) from CARS_INCOME')
    Left = 32
    Top = 168
    object IBQuery6SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object IBQuery7: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(SPENT) from CARS_SPENT')
    Left = 32
    Top = 200
    object IBQuery7SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource6: TDataSource
    DataSet = IBQuery6
    Top = 168
  end
  object DataSource7: TDataSource
    DataSet = IBQuery7
    Top = 200
  end
end
