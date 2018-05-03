object Form16: TForm16
  Left = 179
  Top = 99
  Width = 771
  Height = 624
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1581#1587#1575#1576' '#1605#1576#1610#1593#1575#1578' '#1604#1601#1578#1585#1577
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
    Left = 7
    Top = 6
    Width = 749
    Height = 579
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 568
      Top = 13
      Width = 12
      Height = 13
      Caption = #1605#1606
    end
    object Label2: TLabel
      Left = 328
      Top = 16
      Width = 17
      Height = 13
      Caption = #1573#1604#1609
    end
    object Label3: TLabel
      Left = 671
      Top = 499
      Width = 71
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1583#1601#1608#1593
    end
    object Label4: TLabel
      Left = 492
      Top = 499
      Width = 64
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1583#1610#1608#1606
    end
    object Label5: TLabel
      Left = 130
      Top = 499
      Width = 69
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1601#1608#1575#1578#1610#1585
    end
    object Label6: TLabel
      Left = 310
      Top = 495
      Width = 67
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1583#1610#1608#1606' '
    end
    object Label7: TLabel
      Left = 326
      Top = 512
      Width = 35
      Height = 13
      Caption = #1575#1604#1605#1581#1589#1604#1607
    end
    object DateTimePicker1: TDateTimePicker
      Left = 431
      Top = 12
      Width = 130
      Height = 21
      Date = 39234.479699791650000000
      Time = 39234.479699791650000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 193
      Top = 13
      Width = 130
      Height = 21
      Date = 39234.479723298610000000
      Time = 39234.479723298610000000
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 75
      Width = 373
      Height = 411
      DataSource = DataSource1
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
          FieldName = 'PAID_VALUE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1605#1583#1601#1608#1593
          Width = 106
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'REMAINING_VALUE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1605#1578#1576#1602#1610
          Width = 107
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL_BILL_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1573#1580#1605#1575#1604#1609' '#1605#1576#1604#1594' '#1575#1604#1601#1575#1578#1608#1585#1577
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 347
      Top = 47
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 227
      Top = 548
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 557
      Top = 495
      Width = 112
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 378
      Top = 496
      Width = 112
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 15
      Top = 496
      Width = 112
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
    object DBGrid2: TDBGrid
      Left = 392
      Top = 74
      Width = 345
      Height = 411
      DataSource = DataSource4
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 131
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 117
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'quantity'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'avg'
          Title.Alignment = taCenter
          Title.Caption = #1605#1578#1608#1587#1591' '#1576#1610#1593' '#1602#1591#1593#1577
          Visible = True
        end>
    end
    object Button3: TButton
      Left = 472
      Top = 550
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1577' '
      TabOrder = 9
      OnClick = Button3Click
    end
    object Edit4: TEdit
      Left = 200
      Top = 496
      Width = 112
      Height = 21
      ReadOnly = True
      TabOrder = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 16
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 16
    Top = 48
  end
  object DataSource3: TDataSource
    Left = 16
    Top = 80
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID'
      'where (input_date>=:var1) and (input_date<=:var2)'
      'order by sale_num')
    Left = 48
    Top = 16
    ParamData = <
      item
        DataType = ftDate
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var2'
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
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select sum(PAID_value),sum( REMAINING_VALUE) ,sum(TOTAL_BILL_PRI' +
        'CE)from PAID'
      'where (input_date>=:var1) and (input_date<=:var2)')
    Left = 48
    Top = 48
    ParamData = <
      item
        DataType = ftDate
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var2'
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
    object IBQuery2SUM2: TIBBCDField
      FieldName = 'SUM2'
      Precision = 18
      Size = 3
    end
  end
  object IBQuery3: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 48
    Top = 80
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    OnCalcFields = IBQuery4CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select KIND, NAME from TYPES')
    Left = 664
    Top = 14
    object IBQuery4KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
    object IBQuery4NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TYPES.NAME'
      Required = True
      Size = 30
    end
    object IBQuery4quantity: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'quantity'
      Calculated = True
    end
    object IBQuery4avg: TFloatField
      FieldKind = fkCalculated
      FieldName = 'avg'
      Calculated = True
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 631
    Top = 14
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select sum(sales.quantity), sum(sales.SALE_PRICE*sales.quantity)' +
        '  from SALES,PAID'
      
        'where (sales.sale_num=paid.sale_num) and ((paid.input_date>=:var' +
        '1)and(paid.input_date<=:var2)) and (sales.kind=:var3) and (sales' +
        '.name=:var4)')
    Left = 664
    Top = 48
    ParamData = <
      item
        DataType = ftDate
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var4'
        ParamType = ptInputOutput
      end>
    object IBQuery5SUM: TLargeintField
      FieldName = 'SUM'
    end
    object IBQuery5SUM1: TIBBCDField
      FieldName = 'SUM1'
      Precision = 18
      Size = 3
    end
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Left = 632
    Top = 48
  end
  object DataSource6: TDataSource
    DataSet = IBQuery6
    Left = 632
    Top = 80
  end
  object IBQuery6: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(AMOUNT) from PAIED_DEBTS'
      'where (input_date>=:var1) and (input_date<=:var2)')
    Left = 663
    Top = 78
    ParamData = <
      item
        DataType = ftDate
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var2'
        ParamType = ptInputOutput
      end>
    object IBQuery6SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
end
