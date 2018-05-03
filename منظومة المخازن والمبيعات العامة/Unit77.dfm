object Form77: TForm77
  Left = 0
  Top = 35
  Width = 1024
  Height = 703
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1582#1589#1610#1589' '#1576#1590#1575#1593#1607' '#1605#1583#1582#1604#1607' '#1605#1587#1576#1602#1575' '#1604#1605#1608#1585#1583
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
    Left = 4
    Top = 8
    Width = 1007
    Height = 657
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 810
      Top = 14
      Width = 12
      Height = 13
      Caption = #1605#1606
    end
    object Label2: TLabel
      Left = 648
      Top = 14
      Width = 17
      Height = 13
      Caption = #1573#1604#1609
    end
    object Label3: TLabel
      Left = 156
      Top = 22
      Width = 48
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1608#1585#1583
    end
    object DateTimePicker1: TDateTimePicker
      Left = 686
      Top = 11
      Width = 118
      Height = 21
      Date = 39467.464474097220000000
      Time = 39467.464474097220000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 526
      Top = 11
      Width = 118
      Height = 21
      Date = 39467.464480069450000000
      Time = 39467.464480069450000000
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 216
      Top = 40
      Width = 785
      Height = 497
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
          FieldName = 'KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 140
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 140
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1573#1583#1582#1575#1604
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BUY_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569' '#1576#1575#1604#1583#1610#1606#1575#1585
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DOLLAR_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569' '#1576#1575#1604#1583#1608#1604#1575#1585
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL_DOLLAR_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1573#1580#1605#1575#1604#1609' '#1587#1593#1585' '#1576#1575#1604#1583#1608#1604#1575#1585
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CHANGE_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1578#1589#1585#1610#1601
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUM'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1585#1602#1605' '#1575#1604#1605#1582#1586#1606#1610
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 444
      Top = 8
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 480
      Top = 624
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 4
      OnClick = Button2Click
    end
    object DBGrid2: TDBGrid
      Left = 7
      Top = 40
      Width = 202
      Height = 497
      DataSource = DataSource2
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUM'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1585#1602#1605' '#1575#1604#1605#1582#1586#1606#1610
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 90
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 30
      Top = 543
      Width = 155
      Height = 25
      DataSource = DataSource2
      VisibleButtons = [nbDelete]
      TabOrder = 6
    end
    object ComboBox1: TComboBox
      Left = 12
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
    end
    object Button3: TButton
      Left = 684
      Top = 544
      Width = 121
      Height = 25
      Caption = #1573#1590#1575#1601#1577' '#1604#1602#1575#1574#1605#1577' '#1575#1604#1578#1582#1589#1610#1589
      Enabled = False
      TabOrder = 8
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 449
      Top = 544
      Width = 121
      Height = 25
      Caption = #1578#1582#1589#1610#1589
      Enabled = False
      TabOrder = 9
      OnClick = Button4Click
    end
  end
  object DataSource1: TDataSource
    DataSet = bring_data
    Left = 961
    Top = 16
  end
  object bring_data: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE_HISTORY'
      
        'where (input_date>=:var1)and(input_date<=:var2)and(num not in (s' +
        'elect  NUM_IN_HISTORY_STORGE from PROVIDER))and(num not in (sele' +
        'ct num from ADD_TO_PROVIDER ))')
    Left = 929
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
    object bring_dataNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE_HISTORY.NAME'
      Required = True
      Size = 30
    end
    object bring_dataKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE_HISTORY.KIND'
      Required = True
      Size = 30
    end
    object bring_dataNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE_HISTORY.NUM'
      Required = True
    end
    object bring_dataINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE_HISTORY.INPUT_DATE'
      Required = True
    end
    object bring_dataBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE_HISTORY.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object bring_dataQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE_HISTORY.QUANTITY'
      Required = True
    end
    object bring_dataCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE_HISTORY.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object bring_dataTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object bring_dataDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object DataSource2: TDataSource
    DataSet = num_data
    Left = 52
    Top = 576
  end
  object num_data: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = num_dataAfterDelete
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ADD_TO_PROVIDER')
    UpdateObject = IBUpdateSQL1
    Left = 84
    Top = 576
    object num_dataNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'ADD_TO_PROVIDER.NUM'
    end
    object num_dataINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'ADD_TO_PROVIDER.INPUT_DATE'
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NUM,'
      '  INPUT_DATE'
      'from ADD_TO_PROVIDER '
      'where'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE')
    ModifySQL.Strings = (
      'update ADD_TO_PROVIDER'
      'set'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE'
      'where'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    InsertSQL.Strings = (
      'insert into ADD_TO_PROVIDER'
      '  (NUM, INPUT_DATE)'
      'values'
      '  (:NUM, :INPUT_DATE)')
    DeleteSQL.Strings = (
      'delete from ADD_TO_PROVIDER'
      'where'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    Left = 116
    Top = 576
  end
  object DataSource3: TDataSource
    DataSet = IBTable1
    Left = 708
    Top = 576
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ADD_TO_PROVIDER'
    Left = 748
    Top = 576
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
  end
  object DataSource4: TDataSource
    DataSet = providers
    Left = 76
  end
  object providers: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from PROVIDES')
    Left = 112
  end
  object DataSource5: TDataSource
    DataSet = IBTable2
    Left = 476
    Top = 584
  end
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PROVIDER'
    Left = 508
    Top = 584
    object IBTable2PROVIDER_NAME: TIBStringField
      FieldName = 'PROVIDER_NAME'
      Size = 30
    end
    object IBTable2TOTAL_BILL: TIBBCDField
      FieldName = 'TOTAL_BILL'
      Precision = 9
      Size = 3
    end
    object IBTable2PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable2REMAINING: TIBBCDField
      FieldName = 'REMAINING'
      Precision = 9
      Size = 3
    end
    object IBTable2NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
    end
    object IBTable2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable2DOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Precision = 9
      Size = 3
    end
    object IBTable2CHANGE: TIBBCDField
      FieldName = 'CHANGE'
      Precision = 9
      Size = 3
    end
    object IBTable2REMAINING_DOLLAR: TIBBCDField
      FieldName = 'REMAINING_DOLLAR'
      Precision = 9
      Size = 3
    end
    object IBTable2TOTAL_DOLLAR: TIBBCDField
      FieldName = 'TOTAL_DOLLAR'
      Precision = 9
      Size = 3
    end
  end
  object DataSource6: TDataSource
    DataSet = provider_type
    Left = 388
    Top = 552
  end
  object provider_type: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  PAY_TYPE from PROVIDES'
      'where name=:var1 ')
    Left = 420
    Top = 552
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object provider_typePAY_TYPE: TIBStringField
      FieldName = 'PAY_TYPE'
      Origin = 'PROVIDES.PAY_TYPE'
      Required = True
      Size = 10
    end
  end
  object total_price: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select sum(QUANTITY* BUY_PRICE),sum(TOTAL_DOLLAR_PRICE) from STO' +
        'RGE_HISTORY'
      'where NUM=:var1')
    Left = 420
    Top = 584
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object total_priceSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
    object total_priceSUM1: TIBBCDField
      FieldName = 'SUM1'
      Precision = 18
      Size = 3
    end
  end
  object DataSource7: TDataSource
    DataSet = total_price
    Left = 388
    Top = 584
  end
  object IBTable3: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PROVIDERS_DEBTS_NAMES'
    Left = 284
    Top = 600
    object IBTable3NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
  end
  object DataSource8: TDataSource
    DataSet = IBTable3
    Left = 244
    Top = 600
  end
end
