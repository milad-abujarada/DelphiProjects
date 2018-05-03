object Form39: TForm39
  Left = 192
  Top = 182
  Width = 696
  Height = 284
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1573#1583#1582#1575#1604' '#1578#1581#1608#1610#1604#1575#1578' '#1575#1604#1583#1608#1604#1575#1585
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
    Width = 673
    Height = 233
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 607
      Top = 45
      Width = 52
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1581#1608#1604
    end
    object Label2: TLabel
      Left = 210
      Top = 43
      Width = 61
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1576#1575#1604#1583#1610#1606#1575#1585
    end
    object Label3: TLabel
      Left = 412
      Top = 44
      Width = 60
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1578#1589#1585#1610#1601
    end
    object Label4: TLabel
      Left = 608
      Top = 124
      Width = 61
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1576#1575#1604#1583#1608#1604#1575#1585
    end
    object Label6: TLabel
      Left = 431
      Top = 123
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label5: TLabel
      Left = 209
      Top = 124
      Width = 71
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1581#1608#1604' '#1573#1604#1610#1607
    end
    object DateTimePicker1: TDateTimePicker
      Left = 292
      Top = 118
      Width = 125
      Height = 21
      Date = 39261.374353113430000000
      Time = 39261.374353113430000000
      TabOrder = 0
    end
    object Button1: TButton
      Left = 399
      Top = 189
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 207
      Top = 189
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button2Click
    end
    object DBComboBox2: TDBComboBox
      Left = 79
      Top = 116
      Width = 120
      Height = 21
      DataField = 'SENDED_TO'
      DataSource = DataSource2
      ItemHeight = 13
      TabOrder = 3
    end
  end
  object DBComboBox1: TDBComboBox
    Left = 486
    Top = 48
    Width = 120
    Height = 21
    DataField = 'NAME'
    DataSource = DataSource2
    ItemHeight = 13
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 298
    Top = 48
    Width = 121
    Height = 21
    DataField = 'DINAR_VS_DOLLAR'
    DataSource = DataSource2
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 86
    Top = 48
    Width = 121
    Height = 21
    DataField = 'DINAR'
    DataSource = DataSource2
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 489
    Top = 128
    Width = 121
    Height = 21
    DataField = 'DOLLAR'
    DataSource = DataSource2
    TabOrder = 4
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from DOLLAR')
    Left = 24
    Top = 24
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DOLLAR.NAME'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 56
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = IBTable1
    Left = 56
    Top = 88
  end
  object DataSource3: TDataSource
    DataSet = IBQuery2
    Left = 56
    Top = 56
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'NAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DINAR'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'DOLLAR'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'NUM'
        DataType = ftInteger
      end
      item
        Name = 'DINAR_VS_DOLLAR'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'INPUT_DATE'
        DataType = ftDate
      end
      item
        Name = 'SENDED_TO'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'DOLLAR'
    Left = 24
    Top = 88
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Required = True
    end
    object IBTable1DINAR: TIBBCDField
      FieldName = 'DINAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBTable1DOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
      Required = True
    end
    object IBTable1DINAR_VS_DOLLAR: TIBBCDField
      FieldName = 'DINAR_VS_DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Required = True
    end
    object IBTable1SENDED_TO: TIBStringField
      FieldName = 'SENDED_TO'
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from DOLLAR')
    Left = 24
    Top = 56
    object IBQuery2MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery3
    Left = 56
    Top = 128
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from PROVIDES')
    Left = 24
    Top = 128
    object IBQuery3NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROVIDES.NAME'
      Required = True
    end
  end
end
