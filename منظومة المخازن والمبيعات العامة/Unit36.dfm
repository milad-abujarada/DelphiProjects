object Form36: TForm36
  Left = 192
  Top = 114
  Width = 696
  Height = 616
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1605#1593#1604#1608#1605#1575#1578' '#1593#1606' '#1605#1587#1578#1581#1602#1575#1578' '#1604#1593#1575#1605#1604
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
    Height = 566
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 397
      Top = 29
      Width = 49
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1593#1575#1605#1604
    end
    object Label2: TLabel
      Left = 132
      Top = 488
      Width = 84
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1587#1578#1581#1602#1575#1578
    end
    object Label3: TLabel
      Left = 359
      Top = 487
      Width = 83
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1583#1601#1608#1593#1575#1578
    end
    object Label4: TLabel
      Left = 585
      Top = 484
      Width = 68
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1585#1608#1575#1578#1576
    end
    object DateTimePicker1: TDateTimePicker
      Left = 24
      Top = 532
      Width = 186
      Height = 21
      Date = 39245.600625902780000000
      Time = 39245.600625902780000000
      TabOrder = 0
      Visible = False
    end
    object ComboBox1: TComboBox
      Left = 244
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox1Change
    end
    object DateTimePicker2: TDateTimePicker
      Left = 464
      Top = 540
      Width = 186
      Height = 21
      Date = 39245.617620081020000000
      Time = 39245.617620081020000000
      TabOrder = 2
      Visible = False
    end
    object DBGrid1: TDBGrid
      Left = 72
      Top = 48
      Width = 513
      Height = 417
      DataSource = DataSource4
      TabOrder = 3
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
          Title.Caption = #1575#1604#1605#1583#1601#1608#1593
          Width = 153
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DELIVERD_NAME'
          Title.Alignment = taCenter
          Title.Caption = #1573#1587#1605' '#1575#1604#1605#1587#1604#1605
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 135
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 5
      Top = 480
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 234
      Top = 480
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 456
      Top = 480
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Button2: TButton
      Left = 392
      Top = 536
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 7
      OnClick = Button2Click
    end
  end
  object Button1: TButton
    Left = 216
    Top = 543
    Width = 75
    Height = 25
    Caption = #1585#1580#1608#1593
    TabOrder = 1
    OnClick = Button1Click
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from EMPLOYS'
      'where salary>0')
    Left = 56
    Top = 24
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'EMPLOYS.NAME'
      Required = True
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 24
    Top = 24
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from EMPLOYS'
      'where name=:var1'
      'order by work_date')
    Left = 56
    Top = 56
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
      'select sum(PAID) from PAID_TO_EMPLOYS'
      'where name=:var1')
    Left = 56
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery3SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 24
    Top = 56
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 24
    Top = 88
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 24
    Top = 120
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID_TO_EMPLOYS'
      'where name=:var1')
    Left = 56
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery4NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAID_TO_EMPLOYS.NAME'
      Required = True
      Size = 30
    end
    object IBQuery4NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAID_TO_EMPLOYS.NUM'
      Required = True
    end
    object IBQuery4PAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'PAID_TO_EMPLOYS.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery4WORK_TYPE: TIBStringField
      FieldName = 'WORK_TYPE'
      Origin = 'PAID_TO_EMPLOYS.WORK_TYPE'
      Required = True
    end
    object IBQuery4INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID_TO_EMPLOYS.INPUT_DATE'
      Required = True
    end
    object IBQuery4DELIVERD_NAME: TIBStringField
      FieldName = 'DELIVERD_NAME'
      Origin = 'PAID_TO_EMPLOYS.DELIVERD_NAME'
      Size = 25
    end
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Left = 24
    Top = 152
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DIS_EMPLOY'
      'where name=:var1')
    Left = 56
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery5NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DIS_EMPLOY.NAME'
      Required = True
      Size = 30
    end
    object IBQuery5END_DATE: TDateField
      FieldName = 'END_DATE'
      Origin = 'DIS_EMPLOY.END_DATE'
      Required = True
    end
    object IBQuery5LAST_SALARY: TIntegerField
      FieldName = 'LAST_SALARY'
      Origin = 'DIS_EMPLOY.LAST_SALARY'
      Required = True
    end
  end
end
