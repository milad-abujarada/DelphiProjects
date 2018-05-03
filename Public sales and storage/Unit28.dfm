object Form28: TForm28
  Left = 255
  Top = 159
  Width = 546
  Height = 261
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1571#1582#1584' '#1605#1576#1604#1594' '#1605#1606' '#1575#1604#1582#1586#1606#1577
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
    Left = 8
    Top = 8
    Width = 523
    Height = 209
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 491
      Top = 72
      Width = 25
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577
    end
    object Label2: TLabel
      Left = 318
      Top = 72
      Width = 19
      Height = 13
      Caption = #1576#1610#1575#1606
    end
    object Label3: TLabel
      Left = 144
      Top = 72
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label4: TLabel
      Left = 273
      Top = 13
      Width = 112
      Height = 13
      Caption = #1575#1604#1605#1576#1604#1594' '#1575#1604#1605#1608#1580#1608#1583' '#1601#1609' '#1575#1604#1582#1586#1606#1577
    end
    object DBEdit1: TDBEdit
      Left = 359
      Top = 64
      Width = 121
      Height = 21
      DataField = 'AMOUNT'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 14
      Top = 64
      Width = 121
      Height = 21
      DataField = 'INPUT_DATE'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBComboBox1: TDBComboBox
      Left = 187
      Top = 64
      Width = 122
      Height = 21
      DataField = 'CAUSE'
      DataSource = DataSource1
      ItemHeight = 13
      TabOrder = 2
    end
    object Button1: TButton
      Left = 312
      Top = 136
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 136
      Top = 136
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 4
      OnClick = Button2Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 11
      Top = 64
      Width = 124
      Height = 21
      Date = 39237.773251226850000000
      Time = 39237.773251226850000000
      TabOrder = 5
      OnChange = DateTimePicker1Change
    end
    object Edit1: TEdit
      Left = 144
      Top = 8
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 16
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 16
    Top = 40
  end
  object DataSource3: TDataSource
    DataSet = IBQuery2
    Left = 16
    Top = 96
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from TAKEN_FROM_SAVE')
    Left = 48
    Top = 40
    object IBQuery1MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(CAUSE) from TAKEN_FROM_SAVE')
    Left = 48
    Top = 96
    object IBQuery2CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'TAKEN_FROM_SAVE.CAUSE'
    end
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TAKEN_FROM_SAVE'
    Left = 48
    Top = 8
    object IBTable1AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Precision = 9
      Size = 3
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1CAUSE: TIBStringField
      FieldName = 'CAUSE'
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(amount) from SAVE')
    Left = 48
    Top = 128
    object IBQuery3SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery3
    Left = 16
    Top = 128
  end
  object DataSource5: TDataSource
    DataSet = IBQuery4
    Left = 16
    Top = 160
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(AMOUNT) from TAKEN_FROM_SAVE')
    Left = 48
    Top = 160
    object IBQuery4SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
end
