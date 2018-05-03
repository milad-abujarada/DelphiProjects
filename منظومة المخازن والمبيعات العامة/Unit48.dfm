object Form48: TForm48
  Left = 181
  Top = 166
  Width = 727
  Height = 299
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1573#1610#1589#1575#1604' '#1602#1576#1590
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
    Width = 705
    Height = 249
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 488
      Top = 37
      Width = 23
      Height = 13
      Caption = #1575#1604#1573#1587#1605
    end
    object Label2: TLabel
      Left = 290
      Top = 37
      Width = 68
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1583#1601#1608#1593#1607
    end
    object Label3: TLabel
      Left = 492
      Top = 120
      Width = 57
      Height = 13
      Caption = #1587#1576#1576' '#1575#1604#1573#1610#1589#1575#1604
    end
    object Label4: TLabel
      Left = 132
      Top = 38
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label5: TLabel
      Left = 644
      Top = 37
      Width = 52
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1573#1610#1589#1575#1604
    end
    object DBEdit1: TDBEdit
      Left = 364
      Top = 32
      Width = 121
      Height = 21
      DataField = 'NAME'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 166
      Top = 32
      Width = 121
      Height = 21
      DataField = 'AMOUNT'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBMemo1: TDBMemo
      Left = 141
      Top = 80
      Width = 337
      Height = 89
      DataField = 'CAUSE'
      DataSource = DataSource1
      TabOrder = 2
    end
    object Button1: TButton
      Left = 403
      Top = 208
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 235
      Top = 208
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 4
      OnClick = Button2Click
    end
    object DBEdit3: TDBEdit
      Left = 519
      Top = 32
      Width = 121
      Height = 21
      DataField = 'NUM'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 5
    end
  end
  object DateTimePicker1: TDateTimePicker
    Left = 14
    Top = 40
    Width = 123
    Height = 21
    Date = 39269.414659467590000000
    Time = 39269.414659467590000000
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 16
    Top = 8
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'RECEIPT'
    Left = 48
    Top = 8
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from RECEIPT')
    Left = 200
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 168
    Top = 8
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from RECEIPT'
      'where'
      'num=(select max(num) from receipt)')
    Left = 80
    Top = 104
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'RECEIPT.NAME'
      Required = True
    end
    object IBQuery2CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'RECEIPT.CAUSE'
      Size = 50
    end
    object IBQuery2NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'RECEIPT.NUM'
      Required = True
    end
    object IBQuery2AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'RECEIPT.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'RECEIPT.INPUT_DATE'
      Required = True
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery2
    Left = 48
    Top = 104
  end
end
