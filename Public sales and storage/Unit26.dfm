object Form26: TForm26
  Left = 174
  Top = 93
  Width = 696
  Height = 645
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1602#1610#1605' '#1605#1587#1604#1605#1577' '#1604#1593#1575#1605#1604
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
    Height = 600
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 521
      Top = 25
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1593#1575#1605#1604
    end
    object Label2: TLabel
      Left = 281
      Top = 25
      Width = 44
      Height = 13
      Caption = #1606#1608#1593' '#1575#1604#1593#1605#1604
    end
    object Label3: TLabel
      Left = 215
      Top = 532
      Width = 133
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1576#1575#1604#1594' '#1575#1604#1605#1593#1591#1575#1607' '#1604#1604#1593#1605#1575#1604
    end
    object Label4: TLabel
      Left = 477
      Top = 530
      Width = 123
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1576#1604#1594' '#1575#1604#1605#1587#1604#1605' '#1604#1604#1593#1575#1605#1604
    end
    object ComboBox1: TComboBox
      Left = 367
      Top = 21
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object Edit1: TEdit
      Left = 143
      Top = 21
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 83
      Top = 524
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Button2: TButton
      Left = 212
      Top = 562
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 424
      Top = 562
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 4
      OnClick = Button3Click
    end
    object DBNavigator1: TDBNavigator
      Left = 240
      Top = 464
      Width = 224
      Height = 25
      DataSource = DataSource6
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 5
    end
  end
  object Button1: TButton
    Left = 312
    Top = 62
    Width = 75
    Height = 25
    Caption = #1593#1585#1590
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 92
    Top = 96
    Width = 513
    Height = 369
    DataSource = DataSource6
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PAID'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1605#1576#1604#1594' '#1575#1604#1605#1583#1601#1608#1593
        Width = 126
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'INPUT_DATE'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1578#1575#1585#1610#1582
        Width = 174
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELIVERD_NAME'
        Title.Alignment = taCenter
        Title.Caption = #1573#1587#1605' '#1575#1604#1605#1587#1604#1605
        Visible = True
      end>
  end
  object Edit3: TEdit
    Left = 359
    Top = 532
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select WORK_TYPE from EMPLOYS'
      'where name=:var1')
    Left = 96
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery3WORK_TYPE: TIBStringField
      FieldName = 'WORK_TYPE'
      Origin = 'EMPLOYS.WORK_TYPE'
      Required = True
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery3
    Left = 64
    Top = 24
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(name) from EMPLOYS'
      '')
    Left = 96
    Top = 56
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'EMPLOYS.NAME'
      Required = True
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 64
    Top = 56
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID_TO_EMPLOYS'
      'where name=:var1'
      'order by input_date')
    Left = 96
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAID_TO_EMPLOYS.NAME'
      Required = True
      Size = 30
    end
    object IBQuery2NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAID_TO_EMPLOYS.NUM'
      Required = True
    end
    object IBQuery2PAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'PAID_TO_EMPLOYS.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2WORK_TYPE: TIBStringField
      FieldName = 'WORK_TYPE'
      Origin = 'PAID_TO_EMPLOYS.WORK_TYPE'
      Required = True
    end
    object IBQuery2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID_TO_EMPLOYS.INPUT_DATE'
      Required = True
    end
    object IBQuery2DELIVERD_NAME: TIBStringField
      FieldName = 'DELIVERD_NAME'
      Origin = 'PAID_TO_EMPLOYS.DELIVERD_NAME'
      Size = 25
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 64
    Top = 88
  end
  object DataSource3: TDataSource
    DataSet = IBQuery4
    Left = 64
    Top = 120
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Left = 64
    Top = 152
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(PAID) from PAID_TO_EMPLOYS'
      'where name=:var1')
    Left = 96
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery4SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(PAID) from PAID_TO_EMPLOYS')
    Left = 96
    Top = 152
    object IBQuery5SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource6: TDataSource
    DataSet = IBTable1
    Left = 64
    Top = 184
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBTable1AfterDelete
    AfterPost = IBTable1AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAID_TO_EMPLOYS'
    Left = 96
    Top = 184
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable1WORK_TYPE: TIBStringField
      FieldName = 'WORK_TYPE'
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1DELIVERD_NAME: TIBStringField
      FieldName = 'DELIVERD_NAME'
      Size = 25
    end
  end
end
