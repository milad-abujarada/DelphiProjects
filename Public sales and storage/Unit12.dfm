object Form12: TForm12
  Left = 192
  Top = 114
  Width = 696
  Height = 592
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1601#1608#1575#1578#1610#1585' '#1610#1608#1605
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
    Height = 537
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 428
      Top = 24
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Button1: TButton
      Left = 303
      Top = 507
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 0
      OnClick = Button1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 234
      Top = 20
      Width = 186
      Height = 21
      Date = 39232.801102245370000000
      Time = 39232.801102245370000000
      TabOrder = 1
    end
  end
  object Button2: TButton
    Left = 304
    Top = 72
    Width = 75
    Height = 25
    Caption = #1593#1585#1590
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 184
    Top = 102
    Width = 320
    Height = 408
    DataSource = DataSource1
    TabOrder = 2
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
        FieldName = 'SALE_NUM'
        Title.Alignment = taCenter
        Title.Caption = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CUSTOMER_NAME'
        Title.Alignment = taCenter
        Title.Caption = #1573#1587#1605' '#1575#1604#1586#1576#1608#1606
        Visible = True
      end>
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID'
      'where input_date=:var1'
      'order by sale_num')
    Left = 88
    Top = 40
    ParamData = <
      item
        DataType = ftDate
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAID.NUM'
      Required = True
    end
    object IBQuery1PAID_TYPE: TIBStringField
      FieldName = 'PAID_TYPE'
      Origin = 'PAID.PAID_TYPE'
      Required = True
      Size = 10
    end
    object IBQuery1BILL_NUM: TIntegerField
      FieldName = 'BILL_NUM'
      Origin = 'PAID.BILL_NUM'
      Required = True
    end
    object IBQuery1PAID_VALUE: TIBBCDField
      FieldName = 'PAID_VALUE'
      Origin = 'PAID.PAID_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1TOTAL_BILL_PRICE: TIBBCDField
      FieldName = 'TOTAL_BILL_PRICE'
      Origin = 'PAID.TOTAL_BILL_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1SALE_NUM: TIntegerField
      FieldName = 'SALE_NUM'
      Origin = 'PAID.SALE_NUM'
      Required = True
    end
    object IBQuery1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID.INPUT_DATE'
      Required = True
    end
    object IBQuery1CUSTOMER_NAME: TIBStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'PAID.CUSTOMER_NAME'
      Size = 30
    end
    object IBQuery1REMAINING_VALUE: TIBBCDField
      FieldName = 'REMAINING_VALUE'
      Origin = 'PAID.REMAINING_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 56
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 56
    Top = 72
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SALES'
      'where sale_num=:var1')
    Left = 88
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID'
      'where sale_num=:var1')
    Left = 88
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 56
    Top = 104
  end
end
