object Form43: TForm43
  Left = 192
  Top = 114
  Width = 689
  Height = 320
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1573#1583#1582#1575#1604' '#1585#1581#1604#1575#1578' '#1588#1575#1581#1606#1575#1578' '#1575#1604#1573#1610#1580#1575#1585
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
    Width = 665
    Height = 273
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 623
      Top = 48
      Width = 23
      Height = 13
      Caption = #1575#1604#1573#1587#1605
    end
    object Label2: TLabel
      Left = 462
      Top = 48
      Width = 27
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577
    end
    object Label3: TLabel
      Left = 291
      Top = 48
      Width = 39
      Height = 13
      Caption = #1575#1604#1605#1587#1578#1581#1602
    end
    object Label4: TLabel
      Left = 127
      Top = 47
      Width = 35
      Height = 13
      Caption = #1575#1604#1605#1583#1601#1608#1593
    end
    object Label5: TLabel
      Left = 621
      Top = 96
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label6: TLabel
      Left = 466
      Top = 96
      Width = 24
      Height = 13
      Caption = #1575#1604#1580#1607#1577
    end
    object Label7: TLabel
      Left = 622
      Top = 168
      Width = 38
      Height = 13
      Caption = #1605#1604#1575#1581#1592#1575#1578
    end
    object Button1: TButton
      Left = 383
      Top = 238
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 215
      Top = 238
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 1
      OnClick = Button2Click
    end
    object DBComboBox1: TDBComboBox
      Left = 496
      Top = 44
      Width = 119
      Height = 21
      DataField = 'NAME'
      DataSource = DataSource2
      ItemHeight = 13
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 336
      Top = 43
      Width = 121
      Height = 21
      DataField = 'QUANTITY'
      DataSource = DataSource2
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 166
      Top = 42
      Width = 121
      Height = 21
      DataField = 'DESERVED'
      DataSource = DataSource2
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 3
      Top = 42
      Width = 121
      Height = 21
      DataField = 'PAID'
      DataSource = DataSource2
      TabOrder = 5
    end
    object DateTimePicker1: TDateTimePicker
      Left = 496
      Top = 90
      Width = 122
      Height = 21
      Date = 39261.779252025470000000
      Time = 39261.779252025470000000
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 336
      Top = 90
      Width = 121
      Height = 21
      DataField = 'DISTINATION'
      DataSource = DataSource2
      TabOrder = 7
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 128
      Width = 609
      Height = 89
      DataField = 'NOTES'
      DataSource = DataSource2
      TabOrder = 8
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from RENTED_TRUCKS')
    Left = 504
    Top = 24
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'RENTED_TRUCKS.NAME'
      Required = True
    end
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'RENTED_TRUCKS'
    Left = 480
    Top = 152
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
    end
    object IBTable1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable1PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable1DESERVED: TIBBCDField
      FieldName = 'DESERVED'
      Precision = 9
      Size = 3
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1DISTINATION: TIBStringField
      FieldName = 'DISTINATION'
      Size = 10
    end
    object IBTable1NOTES: TIBStringField
      FieldName = 'NOTES'
      Size = 500
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 536
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = IBTable1
    Left = 512
    Top = 152
  end
end
