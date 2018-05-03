object Form41: TForm41
  Left = 351
  Top = 147
  Width = 512
  Height = 260
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1573#1583#1582#1575#1604' '#1575#1604#1605#1576#1575#1604#1594' '#1575#1604#1605#1587#1583#1583#1607' '#1604#1593#1605#1604#1575#1569' '#1575#1604#1578#1581#1608#1610#1604#1575#1578' '#1575#1604#1605#1575#1604#1610#1577
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
    Width = 489
    Height = 209
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 407
      Top = 112
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1587#1604#1605
    end
    object Label2: TLabel
      Left = 166
      Top = 49
      Width = 61
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1587#1604#1605#1577
    end
    object Label3: TLabel
      Left = 405
      Top = 47
      Width = 47
      Height = 13
      Caption = #1575#1604#1605#1587#1604#1605' '#1573#1604#1610#1607
    end
    object Label4: TLabel
      Left = 178
      Top = 108
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Button1: TButton
      Left = 284
      Top = 152
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 140
      Top = 152
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 1
      OnClick = Button2Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 42
      Top = 102
      Width = 122
      Height = 21
      Date = 39261.734697627320000000
      Time = 39261.734697627320000000
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 280
      Top = 40
      Width = 121
      Height = 21
      DataField = 'NAME'
      DataSource = DataSource4
      ItemHeight = 13
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 42
      Top = 40
      Width = 121
      Height = 21
      DataField = 'PAID'
      DataSource = DataSource4
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 280
      Top = 104
      Width = 121
      Height = 21
      DataField = 'DELIVER_NAME'
      DataSource = DataSource4
      TabOrder = 5
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    OnCalcFields = IBQuery1CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from DOLLAR')
    Left = 72
    Top = 24
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DOLLAR.NAME'
      Required = True
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select distinct(name)  from PAID_TO_CHANGERS where name not in (' +
        'select distinct(name) from dollar)'
      '')
    Left = 72
    Top = 56
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAID_TO_CHANGERS.NAME'
      Required = True
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(PAID) from PAID_TO_CHANGERS'
      'where name=:var1')
    Left = 72
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 40
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 40
    Top = 56
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 40
    Top = 88
  end
  object DataSource4: TDataSource
    DataSet = IBTable1
    Left = 40
    Top = 120
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAID_TO_CHANGERS'
    Left = 72
    Top = 120
    object IBTable1PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
    end
    object IBTable1DELIVER_NAME: TIBStringField
      FieldName = 'DELIVER_NAME'
    end
  end
end
