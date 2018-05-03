object Form22: TForm22
  Left = 175
  Top = 184
  Width = 750
  Height = 211
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1582#1586#1610#1606' '#1605#1589#1585#1608#1601#1575#1578' '#1588#1575#1581#1606#1577
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
    Width = 726
    Height = 161
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 662
      Top = 44
      Width = 56
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1588#1575#1581#1606#1577
    end
    object Label2: TLabel
      Left = 467
      Top = 44
      Width = 72
      Height = 13
      Caption = #1605#1589#1585#1608#1601' '#1575#1604#1588#1575#1581#1606#1577
    end
    object Label3: TLabel
      Left = 131
      Top = 44
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label4: TLabel
      Left = 289
      Top = 44
      Width = 53
      Height = 13
      Caption = #1587#1576#1576' '#1575#1604#1589#1585#1601
    end
    object DBComboBox1: TDBComboBox
      Left = 541
      Top = 40
      Width = 119
      Height = 21
      Style = csDropDownList
      DataField = 'NAME'
      DataSource = DataSource2
      ItemHeight = 13
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 344
      Top = 39
      Width = 121
      Height = 21
      DataField = 'SPENT'
      DataSource = DataSource2
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 40
      Width = 121
      Height = 21
      DataField = 'INPUT_DATE'
      DataSource = DataSource2
      TabOrder = 2
    end
    object DateTimePicker1: TDateTimePicker
      Left = 7
      Top = 40
      Width = 123
      Height = 21
      Date = 39236.620267824070000000
      Time = 39236.620267824070000000
      TabOrder = 3
    end
    object Button1: TButton
      Left = 425
      Top = 88
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 233
      Top = 88
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 5
      OnClick = Button2Click
    end
    object DBEdit3: TDBEdit
      Left = 164
      Top = 39
      Width = 121
      Height = 21
      DataField = 'CAUSE'
      DataSource = DataSource2
      TabOrder = 6
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
  object DataSource2: TDataSource
    DataSet = IBTable1
    Top = 40
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CARS_SPENT'
    Left = 32
    Top = 40
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1SPENT: TIBBCDField
      FieldName = 'SPENT'
      Precision = 9
      Size = 3
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Size = 30
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM)   from CARS_SPENT')
    Left = 32
    Top = 72
    object IBQuery2MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery2
    Top = 72
  end
end
