object Form52: TForm52
  Left = 279
  Top = 116
  Width = 520
  Height = 183
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1582#1586#1610#1606' '#1583#1610#1606
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
    Width = 497
    Height = 137
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 385
      Top = 20
      Width = 54
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1583#1610#1608#1606
    end
    object Label2: TLabel
      Left = 205
      Top = 20
      Width = 45
      Height = 13
      Caption = #1602#1610#1605#1577' '#1575#1604#1583#1610#1606
    end
    object Label3: TLabel
      Left = 399
      Top = 64
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object DBComboBox1: TDBComboBox
      Left = 255
      Top = 16
      Width = 122
      Height = 21
      DataField = 'NAME'
      DataSource = DataSource2
      ItemHeight = 13
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 82
      Top = 16
      Width = 121
      Height = 21
      DataField = 'DEBT_VALUE'
      DataSource = DataSource2
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 256
      Top = 56
      Width = 123
      Height = 21
      Date = 39271.859925486110000000
      Time = 39271.859925486110000000
      TabOrder = 2
    end
    object Button1: TButton
      Left = 304
      Top = 96
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 144
      Top = 96
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 16
    Top = 32
  end
  object DataSource2: TDataSource
    DataSet = IBTable1
    Left = 16
    Top = 80
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from REGULAR_DEBT')
    Left = 48
    Top = 32
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'REGULAR_DEBT.NAME'
      Required = True
      Size = 30
    end
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'REGULAR_DEBT'
    Left = 48
    Top = 80
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1DEBT_VALUE: TIBBCDField
      FieldName = 'DEBT_VALUE'
      Precision = 9
      Size = 3
    end
  end
end
