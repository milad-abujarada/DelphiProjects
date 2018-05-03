object Form84: TForm84
  Left = 343
  Top = 192
  Width = 457
  Height = 212
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1593#1583#1610#1604' '#1576#1610#1575#1606#1575#1578' '#1593#1605#1575#1604' '#1575#1604#1585#1608#1575#1578#1576
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
    Top = 5
    Width = 433
    Height = 169
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 267
      Top = 12
      Width = 23
      Height = 13
      Caption = #1575#1604#1573#1587#1605
    end
    object Label2: TLabel
      Left = 370
      Top = 51
      Width = 53
      Height = 13
      Caption = #1575#1604#1573#1587#1605' '#1575#1604#1580#1583#1610#1583
    end
    object Label3: TLabel
      Left = 160
      Top = 50
      Width = 44
      Height = 13
      Caption = #1606#1608#1593' '#1575#1604#1593#1605#1604
    end
    object Label4: TLabel
      Left = 379
      Top = 107
      Width = 41
      Height = 13
      Caption = #1571#1608#1604' '#1585#1575#1578#1576
    end
    object Label5: TLabel
      Left = 146
      Top = 108
      Width = 76
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1576#1583#1575#1610#1577' '#1575#1604#1593#1605#1604
    end
    object Edit1: TEdit
      Left = 238
      Top = 47
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 238
      Top = 102
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = Edit2Change
    end
    object ComboBox1: TComboBox
      Left = 10
      Top = 44
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnChange = ComboBox1Change
    end
    object DateTimePicker1: TDateTimePicker
      Left = 11
      Top = 102
      Width = 121
      Height = 21
      Date = 39523.827069768520000000
      Time = 39523.827069768520000000
      TabOrder = 3
    end
    object Button1: TButton
      Left = 252
      Top = 136
      Width = 75
      Height = 25
      Caption = #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 124
      Top = 136
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 5
      OnClick = Button2Click
    end
    object ComboBox2: TComboBox
      Left = 130
      Top = 8
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 6
      OnChange = ComboBox2Change
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 8
    Top = 5
  end
  object DataSource2: TDataSource
    DataSet = IBTable1
    Left = 8
    Top = 40
  end
  object DataSource3: TDataSource
    DataSet = IBTable2
    Left = 8
    Top = 72
  end
  object DataSource4: TDataSource
    DataSet = IBTable3
    Left = 8
    Top = 104
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from EMPLOYS')
    Left = 40
    Top = 8
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'EMPLOYS.NAME'
      Required = True
      Size = 30
    end
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
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
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DIS_EMPLOY'
    Left = 40
    Top = 72
    object IBTable2NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable2END_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object IBTable2LAST_SALARY: TIntegerField
      FieldName = 'LAST_SALARY'
    end
  end
  object IBTable3: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAID_TO_EMPLOYS'
    Left = 40
    Top = 104
    object IBTable3NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable3NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable3PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable3WORK_TYPE: TIBStringField
      FieldName = 'WORK_TYPE'
    end
    object IBTable3INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable3DELIVERD_NAME: TIBStringField
      FieldName = 'DELIVERD_NAME'
      Size = 25
    end
  end
  object DataSource5: TDataSource
    DataSet = IBQuery2
    Left = 8
    Top = 133
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from EMPLOYS'
      'where name=:var1')
    Left = 40
    Top = 133
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'EMPLOYS.NAME'
      Required = True
      Size = 30
    end
    object IBQuery2WORK_TYPE: TIBStringField
      FieldName = 'WORK_TYPE'
      Origin = 'EMPLOYS.WORK_TYPE'
      Required = True
    end
    object IBQuery2NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'EMPLOYS.NUM'
      Required = True
    end
    object IBQuery2WORK_DATE: TDateField
      FieldName = 'WORK_DATE'
      Origin = 'EMPLOYS.WORK_DATE'
      Required = True
    end
    object IBQuery2SALARY: TIBBCDField
      FieldName = 'SALARY'
      Origin = 'EMPLOYS.SALARY'
      Precision = 9
      Size = 3
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(WORK_TYPE) from EMPLOYS')
    Left = 400
    Top = 13
    object IBQuery3WORK_TYPE: TIBStringField
      FieldName = 'WORK_TYPE'
      Origin = 'EMPLOYS.WORK_TYPE'
      Required = True
    end
  end
  object DataSource6: TDataSource
    DataSet = IBQuery3
    Left = 368
    Top = 13
  end
end
