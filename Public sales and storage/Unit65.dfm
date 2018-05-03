object Form65: TForm65
  Left = 254
  Top = 181
  Width = 579
  Height = 181
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1573#1602#1601#1575#1604' '#1581#1587#1575#1576' '#1593#1575#1605#1604
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
    Width = 555
    Height = 129
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 530
      Top = 24
      Width = 23
      Height = 13
      Caption = #1575#1604#1573#1587#1605
    end
    object Label2: TLabel
      Left = 142
      Top = 25
      Width = 91
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1573#1602#1601#1575#1604' '#1575#1604#1581#1587#1575#1576
    end
    object Label3: TLabel
      Left = 360
      Top = 24
      Width = 40
      Height = 13
      Caption = #1571#1582#1585' '#1585#1575#1578#1576
    end
    object DateTimePicker1: TDateTimePicker
      Left = 11
      Top = 20
      Width = 124
      Height = 21
      Date = 39323.739801250000000000
      Time = 39323.739801250000000000
      TabOrder = 0
    end
    object Button1: TButton
      Left = 328
      Top = 80
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 176
      Top = 80
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button2Click
    end
    object ComboBox1: TComboBox
      Left = 401
      Top = 20
      Width = 124
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 237
      Top = 20
      Width = 121
      Height = 21
      TabOrder = 4
    end
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
        Name = 'END_DATE'
        DataType = ftDate
      end
      item
        Name = 'LAST_SALARY'
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'DIS_EMPLOY'
    Left = 40
    Top = 40
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1END_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object IBTable1LAST_SALARY: TIntegerField
      FieldName = 'LAST_SALARY'
    end
  end
  object DataSource2: TDataSource
    DataSet = IBTable1
    Left = 8
    Top = 40
  end
end
