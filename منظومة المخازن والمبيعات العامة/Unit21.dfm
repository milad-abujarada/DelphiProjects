object Form21: TForm21
  Left = 165
  Top = 181
  Width = 774
  Height = 231
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1582#1586#1610#1606' '#1573#1610#1585#1575#1583#1575#1578' '#1588#1575#1581#1606#1577
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
    Width = 753
    Height = 177
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 685
      Top = 44
      Width = 56
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1588#1575#1581#1606#1577
    end
    object Label2: TLabel
      Left = 499
      Top = 44
      Width = 59
      Height = 13
      Caption = #1573#1610#1585#1575#1583' '#1575#1604#1588#1575#1581#1606#1577
    end
    object Label3: TLabel
      Left = 340
      Top = 44
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label4: TLabel
      Left = 162
      Top = 44
      Width = 25
      Height = 13
      Caption = #1575#1604#1576#1610#1575#1606
    end
    object DBComboBox1: TDBComboBox
      Left = 561
      Top = 40
      Width = 122
      Height = 21
      Style = csDropDownList
      DataField = 'NAME'
      DataSource = DataSource2
      ItemHeight = 13
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 377
      Top = 39
      Width = 121
      Height = 21
      DataField = 'INCOME'
      DataSource = DataSource2
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 216
      Top = 40
      Width = 121
      Height = 21
      DataField = 'INPUT_DATE'
      DataSource = DataSource2
      TabOrder = 2
    end
    object DateTimePicker1: TDateTimePicker
      Left = 215
      Top = 39
      Width = 123
      Height = 21
      Date = 39236.620267824070000000
      Time = 39236.620267824070000000
      TabOrder = 3
      OnChange = DateTimePicker1Change
    end
    object Button1: TButton
      Left = 449
      Top = 128
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 257
      Top = 128
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 5
      OnClick = Button2Click
    end
    object DBEdit3: TDBEdit
      Left = 38
      Top = 39
      Width = 121
      Height = 21
      DataField = 'REASONE'
      DataSource = DataSource2
      TabOrder = 6
    end
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CARS_INCOME'
    Left = 40
    Top = 40
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1INCOME: TIBBCDField
      FieldName = 'INCOME'
      Precision = 9
      Size = 3
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1REASONE: TIBStringField
      FieldName = 'REASONE'
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = IBTable1
    Left = 8
    Top = 40
  end
  object DataSource3: TDataSource
    DataSet = IBQuery2
    Left = 8
    Top = 72
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM)  from CARS_INCOME')
    Left = 40
    Top = 72
    object IBQuery2MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from CARS')
    Left = 40
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 8
    Top = 8
  end
end
