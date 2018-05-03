object Form24: TForm24
  Left = 262
  Top = 118
  Width = 596
  Height = 223
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1582#1586#1610#1606' '#1576#1610#1575#1606#1575#1578' '#1593#1575#1605#1604
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
    Width = 575
    Height = 173
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 514
      Top = 36
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1593#1575#1605#1604
    end
    object Label2: TLabel
      Left = 340
      Top = 36
      Width = 44
      Height = 13
      Caption = #1606#1608#1593' '#1575#1604#1593#1605#1604
    end
    object Label3: TLabel
      Left = 143
      Top = 38
      Width = 71
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1576#1583#1575#1610#1577' '#1593#1605#1604
    end
    object Label4: TLabel
      Left = 512
      Top = 80
      Width = 53
      Height = 13
      Caption = #1585#1575#1578#1576' '#1588#1607#1585#1610
    end
    object DBEdit1: TDBEdit
      Left = 386
      Top = 32
      Width = 121
      Height = 21
      DataField = 'NAME'
      DataSource = DataSource2
      TabOrder = 0
    end
    object DBComboBox1: TDBComboBox
      Left = 217
      Top = 32
      Width = 121
      Height = 21
      DataField = 'WORK_TYPE'
      DataSource = DataSource2
      ItemHeight = 13
      Items.Strings = (
        #1586#1608#1575#1602
        #1576#1606#1575#1569
        #1605#1604#1593#1575#1602
        #1593#1575#1605#1604
        #1587#1576#1575#1603
        #1591#1576#1575#1582
        #1586#1604#1575#1586)
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 17
      Top = 32
      Width = 123
      Height = 21
      Date = 39245.592675231480000000
      Time = 39245.592675231480000000
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 386
      Top = 74
      Width = 121
      Height = 21
      DataField = 'SALARY'
      DataSource = DataSource2
      TabOrder = 3
    end
  end
  object Button1: TButton
    Left = 340
    Top = 138
    Width = 75
    Height = 25
    Caption = #1581#1601#1592
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 188
    Top = 138
    Width = 75
    Height = 25
    Caption = #1585#1580#1608#1593
    TabOrder = 2
    OnClick = Button2Click
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM)  from EMPLOYS')
    Left = 40
    Top = 72
    object IBQuery2MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery2
    Left = 8
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = IBTable1
    Left = 8
    Top = 40
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'WORK_TYPE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'WORK_DATE'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'SALARY'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end>
    StoreDefs = True
    TableName = 'EMPLOYS'
    Left = 40
    Top = 40
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1WORK_TYPE: TIBStringField
      FieldName = 'WORK_TYPE'
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1WORK_DATE: TDateField
      FieldName = 'WORK_DATE'
    end
    object IBTable1SALARY: TIBBCDField
      FieldName = 'SALARY'
      Precision = 9
      Size = 3
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from EMPLOYS'
      'where name=:var1')
    Left = 40
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'CARS.NAME'
      Required = True
      Size = 30
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'CARS.NUM'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 8
    Top = 8
  end
end
