object Form25: TForm25
  Left = 173
  Top = 120
  Width = 750
  Height = 199
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1582#1586#1610#1606' '#1602#1610#1605' '#1605#1587#1604#1605#1577' '#1604#1593#1575#1605#1604
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
    Left = 5
    Top = 8
    Width = 732
    Height = 145
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 0
    object Label1: TLabel
      Left = 673
      Top = 32
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1593#1575#1605#1604
    end
    object Label2: TLabel
      Left = 495
      Top = 32
      Width = 44
      Height = 13
      Caption = #1606#1608#1593' '#1575#1604#1593#1605#1604
    end
    object Label3: TLabel
      Left = 304
      Top = 32
      Width = 61
      Height = 13
      Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1587#1604#1605#1577
    end
    object Label4: TLabel
      Left = 142
      Top = 32
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label5: TLabel
      Left = 675
      Top = 71
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1587#1604#1605
    end
    object DBComboBox1: TDBComboBox
      Left = 549
      Top = 29
      Width = 121
      Height = 21
      Style = csDropDownList
      DataField = 'NAME'
      DataSource = DataSource2
      ItemHeight = 13
      TabOrder = 0
      OnChange = DBComboBox1Change
    end
    object DBEdit1: TDBEdit
      Left = 370
      Top = 28
      Width = 121
      Height = 21
      DataField = 'WORK_TYPE'
      DataSource = DataSource2
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 178
      Top = 28
      Width = 121
      Height = 21
      DataField = 'PAID'
      DataSource = DataSource2
      TabOrder = 2
    end
    object Button1: TButton
      Left = 467
      Top = 96
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 229
      Top = 96
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 4
      OnClick = Button2Click
    end
    object DBEdit4: TDBEdit
      Left = 550
      Top = 65
      Width = 121
      Height = 21
      DataField = 'DELIVERD_NAME'
      DataSource = DataSource2
      TabOrder = 5
    end
  end
  object DBEdit3: TDBEdit
    Left = 20
    Top = 37
    Width = 121
    Height = 21
    DataField = 'INPUT_DATE'
    DataSource = DataSource2
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 17
    Top = 37
    Width = 124
    Height = 21
    Date = 39237.474548611110000000
    Time = 39237.474548611110000000
    TabOrder = 2
    OnChange = DateTimePicker1Change
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(name) from EMPLOYS'
      'where name not in (select name from dis_employ)'
      '')
    Left = 40
    Top = 8
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'EMPLOYS.NAME'
      Required = True
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 8
    Top = 8
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
        Size = 30
      end
      item
        Name = 'NUM'
        DataType = ftInteger
      end
      item
        Name = 'PAID'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'WORK_TYPE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INPUT_DATE'
        DataType = ftDate
      end
      item
        Name = 'DELIVERD_NAME'
        DataType = ftString
        Size = 25
      end>
    StoreDefs = True
    TableName = 'PAID_TO_EMPLOYS'
    Left = 40
    Top = 40
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
      'select max(NUM)  from PAID_TO_EMPLOYS')
    Left = 40
    Top = 72
    object IBQuery2MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select WORK_TYPE from EMPLOYS'
      'where name=:var1')
    Left = 40
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object DataSource4: TDataSource
    DataSet = IBQuery3
    Left = 8
    Top = 104
  end
end
