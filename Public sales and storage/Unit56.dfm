object Form56: TForm56
  Left = 253
  Top = 152
  Width = 607
  Height = 205
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1587#1583#1610#1583' '#1602#1610#1605' '#1604#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607' '#1575#1604#1605#1576#1575#1593#1607
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
    Width = 585
    Height = 153
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 508
      Top = 40
      Width = 68
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1583#1601#1608#1593#1607
    end
    object Label2: TLabel
      Left = 137
      Top = 40
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label3: TLabel
      Left = 315
      Top = 40
      Width = 61
      Height = 13
      Caption = #1605#1603#1575#1606' '#1575#1604#1576#1590#1575#1593#1607
    end
    object Label4: TLabel
      Left = 529
      Top = 78
      Width = 25
      Height = 13
      Caption = #1575#1604#1576#1610#1575#1606
    end
    object Edit1: TEdit
      Left = 382
      Top = 36
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 360
      Top = 112
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 184
      Top = 112
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button2Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 6
      Top = 34
      Width = 123
      Height = 21
      Date = 39280.472786087960000000
      Time = 39280.472786087960000000
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 187
      Top = 36
      Width = 122
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
    end
    object Memo1: TMemo
      Left = 188
      Top = 64
      Width = 316
      Height = 33
      TabOrder = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 40
    Top = 56
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAIED_TO_MOVED_STORGE'
    Left = 72
    Top = 56
    object IBTable1PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable1REMAINING: TIBBCDField
      FieldName = 'REMAINING'
      Precision = 9
      Size = 3
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1PLACE: TIBStringField
      FieldName = 'PLACE'
    end
    object IBTable1BAYAN: TIBStringField
      FieldName = 'BAYAN'
      Size = 100
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(PLACE) from MOVED_STORGE')
    Left = 72
    Top = 8
    object IBQuery1PLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'MOVED_STORGE.PLACE'
      Required = True
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 40
    Top = 8
  end
end
