object Form44: TForm44
  Left = 192
  Top = 46
  Width = 698
  Height = 689
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1587#1583#1575#1583' '#1602#1610#1605' '#1604#1587#1575#1574#1602#1610#1606' '#1588#1575#1581#1606#1575#1578' '#1575#1604#1573#1610#1580#1575#1585
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
    Height = 641
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 642
      Top = 514
      Width = 23
      Height = 13
      Caption = #1575#1604#1573#1587#1605
    end
    object Label3: TLabel
      Left = 476
      Top = 515
      Width = 39
      Height = 13
      Caption = #1575#1604#1605#1587#1578#1581#1602
    end
    object Label4: TLabel
      Left = 311
      Top = 516
      Width = 35
      Height = 13
      Caption = #1575#1604#1605#1583#1601#1608#1593
    end
    object Label5: TLabel
      Left = 142
      Top = 519
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label1: TLabel
      Left = 645
      Top = 560
      Width = 20
      Height = 13
      Caption = #1587#1593#1585
    end
    object Label6: TLabel
      Left = 641
      Top = 574
      Width = 29
      Height = 13
      Caption = #1575#1604#1589#1585#1601
    end
    object Label7: TLabel
      Left = 479
      Top = 567
      Width = 38
      Height = 13
      Caption = #1605#1604#1575#1581#1592#1575#1578
    end
    object DBGrid1: TDBGrid
      Left = 168
      Top = 16
      Width = 377
      Height = 473
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1573#1587#1605
          Width = 179
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'amount'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1587#1578#1581#1602#1607
          Width = 138
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 520
      Top = 512
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 352
      Top = 512
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 184
      Top = 512
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object DateTimePicker1: TDateTimePicker
      Left = 7
      Top = 512
      Width = 127
      Height = 21
      Date = 39261.797442488420000000
      Time = 39261.797442488420000000
      TabOrder = 4
    end
    object Button1: TButton
      Left = 432
      Top = 608
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      Enabled = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 216
      Top = 608
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 6
      OnClick = Button2Click
    end
    object Edit4: TEdit
      Left = 520
      Top = 563
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object Memo1: TMemo
      Left = 8
      Top = 555
      Width = 465
      Height = 41
      Lines.Strings = (
        '')
      TabOrder = 8
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 32
    Top = 56
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 32
    Top = 88
  end
  object DataSource3: TDataSource
    DataSet = IBTable1
    Left = 32
    Top = 152
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    OnCalcFields = IBQuery1CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from RENTED_TRUCKS')
    Left = 64
    Top = 56
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'RENTED_TRUCKS.NAME'
      Required = True
    end
    object IBQuery1amount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'amount'
      Calculated = True
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(PAID), sum(DESERVED) from RENTED_TRUCKS'
      'where '
      'name=:var1')
    Left = 64
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
    object IBQuery2SUM1: TIBBCDField
      FieldName = 'SUM1'
      Precision = 18
      Size = 3
    end
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAID_TO_RENTED_TRUCKS'
    Left = 64
    Top = 152
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
    end
    object IBTable1PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1NOTES: TIBStringField
      FieldName = 'NOTES'
      Size = 150
    end
    object IBTable1CHNAGE_PRICE: TIBStringField
      FieldName = 'CHNAGE_PRICE'
      Size = 10
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(PAID) from PAID_TO_RENTED_TRUCKS'
      'where name=:var1')
    Left = 64
    Top = 120
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
  object DataSource4: TDataSource
    DataSet = IBQuery3
    Left = 32
    Top = 120
  end
end
