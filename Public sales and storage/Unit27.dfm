object Form27: TForm27
  Left = 259
  Top = 171
  Width = 538
  Height = 262
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1573#1583#1582#1575#1604' '#1605#1576#1604#1594' '#1605#1606' '#1575#1604#1582#1586#1606#1577
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
    Width = 513
    Height = 209
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 472
      Top = 63
      Width = 28
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '
    end
    object Label2: TLabel
      Left = 321
      Top = 61
      Width = 19
      Height = 13
      Caption = #1576#1610#1575#1606
    end
    object Label3: TLabel
      Left = 141
      Top = 64
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
  end
  object Button1: TButton
    Left = 308
    Top = 152
    Width = 75
    Height = 25
    Caption = #1581#1601#1592
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 156
    Top = 152
    Width = 75
    Height = 25
    Caption = #1585#1580#1608#1593
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 355
    Top = 64
    Width = 121
    Height = 21
    DataField = 'AMOUNT'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 17
    Top = 64
    Width = 121
    Height = 21
    DataField = 'INPUT_DATE'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DateTimePicker1: TDateTimePicker
    Left = 16
    Top = 64
    Width = 121
    Height = 21
    Date = 39237.754885520830000000
    Time = 39237.754885520830000000
    TabOrder = 5
    OnChange = DateTimePicker1Change
  end
  object DBComboBox1: TDBComboBox
    Left = 202
    Top = 64
    Width = 124
    Height = 21
    DataField = 'CAUSE'
    DataSource = DataSource1
    ItemHeight = 13
    TabOrder = 6
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'AMOUNT'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'INPUT_DATE'
        DataType = ftDate
      end
      item
        Name = 'NUM'
        DataType = ftInteger
      end
      item
        Name = 'CAUSE'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'SAVE'
    Left = 48
    Top = 8
    object IBTable1AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
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
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 8
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 112
    Top = 8
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from SAVE')
    Left = 144
    Top = 8
    object IBQuery1MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery2
    Left = 8
    Top = 96
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(CAUSE) from SAVE')
    Left = 48
    Top = 96
  end
end
