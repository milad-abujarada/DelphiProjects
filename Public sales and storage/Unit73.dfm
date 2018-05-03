object Form73: TForm73
  Left = 98
  Top = 43
  Width = 921
  Height = 688
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1576#1590#1575#1593#1607' '#1575#1604#1605#1608#1585#1583#1607' '#1605#1606' '#1605#1608#1585#1583
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
    Top = 8
    Width = 899
    Height = 641
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 0
    object Label1: TLabel
      Left = 343
      Top = 21
      Width = 17
      Height = 13
      Caption = #1573#1604#1609
    end
    object Label2: TLabel
      Left = 533
      Top = 20
      Width = 12
      Height = 13
      Caption = #1605#1606
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 77
      Width = 881
      Height = 460
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
          FieldName = 'KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
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
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 81
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
          FieldName = 'CHANGE_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1578#1589#1585#1610#1601
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL_DOLLAR_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1573#1580#1605#1575#1604#1609' '#1587#1593#1585' '#1575#1604#1583#1608#1604#1575#1585
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM'
          Visible = False
        end>
    end
    object DateTimePicker1: TDateTimePicker
      Left = 400
      Top = 16
      Width = 129
      Height = 21
      Date = 39388.741031712960000000
      Time = 39388.741031712960000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 200
      Top = 16
      Width = 130
      Height = 21
      Date = 39388.741088680560000000
      Time = 39388.741088680560000000
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 568
      Top = 16
      Width = 128
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
    end
    object Button1: TButton
      Left = 432
      Top = 48
      Width = 75
      Height = 25
      Caption = #1593#1585#1590
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 425
      Top = 609
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 752
      Top = 560
      Width = 129
      Height = 25
      Caption = #1578#1593#1583#1610#1604' '#1575#1604#1589#1606#1601' '#1571#1608' '#1575#1604#1606#1608#1593
      TabOrder = 6
      Visible = False
      OnClick = Button3Click
    end
    object CheckBox1: TCheckBox
      Left = 701
      Top = 19
      Width = 70
      Height = 17
      Caption = #1573#1587#1605' '#1575#1604#1605#1608#1585#1583
      TabOrder = 7
      OnClick = CheckBox1Click
    end
    object Button8: TButton
      Left = 18
      Top = 560
      Width = 129
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 8
      OnClick = Button8Click
    end
    object Button4: TButton
      Left = 616
      Top = 560
      Width = 129
      Height = 25
      Caption = #1578#1593#1583#1610#1604' '#1603#1605#1610#1577' '#1606#1608#1593' '#1578#1605' '#1575#1610#1589#1575#1604#1607
      TabOrder = 9
      Visible = False
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 472
      Top = 560
      Width = 129
      Height = 25
      Caption = #1578#1593#1583#1610#1604' '#1575#1604#1578#1575#1585#1610#1582
      TabOrder = 10
      OnClick = Button5Click
    end
    object Button7: TButton
      Left = 152
      Top = 560
      Width = 129
      Height = 25
      Caption = #1578#1593#1583#1610#1604' '#1573#1580#1605#1575#1604#1609' '#1587#1593#1585' '#1575#1604#1583#1608#1604#1575#1585
      TabOrder = 11
      OnClick = Button7Click
    end
  end
  object Button6: TButton
    Left = 304
    Top = 568
    Width = 161
    Height = 25
    Caption = #1578#1593#1583#1610#1604' '#1575#1604#1588#1585#1575#1569' '#1576#1575#1604#1583#1608#1604#1575#1585' '#1608' '#1575#1604#1578#1589#1585#1610#1601
    TabOrder = 1
    OnClick = Button6Click
  end
  object DataSource1: TDataSource
    DataSet = dbgrid_data_to_provider
    Left = 56
    Top = 32
  end
  object dbgrid_data_to_provider: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from STORGE_HISTORY'
      'where NUM in ( select NUM_IN_HISTORY_STORGE from  PROVIDER'
      
        'where (PROVIDER_NAME=:var1) and (INPUT_DATE>=:var2)and (INPUT_DA' +
        'TE<=:var3))'
      'order by input_date')
    Left = 88
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object dbgrid_data_to_providerNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE_HISTORY.NAME'
      Required = True
      Size = 30
    end
    object dbgrid_data_to_providerKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE_HISTORY.KIND'
      Required = True
      Size = 30
    end
    object dbgrid_data_to_providerNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE_HISTORY.NUM'
      Required = True
    end
    object dbgrid_data_to_providerINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE_HISTORY.INPUT_DATE'
      Required = True
    end
    object dbgrid_data_to_providerBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE_HISTORY.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object dbgrid_data_to_providerQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE_HISTORY.QUANTITY'
      Required = True
    end
    object dbgrid_data_to_providerCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE_HISTORY.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object dbgrid_data_to_providerTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object dbgrid_data_to_providerDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object providers_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROVIDES')
    Left = 88
    Top = 64
    object providers_namesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROVIDES.NAME'
      Required = True
    end
    object providers_namesNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PROVIDES.NUM'
      Required = True
    end
    object providers_namesPAY_TYPE: TIBStringField
      FieldName = 'PAY_TYPE'
      Origin = 'PROVIDES.PAY_TYPE'
      Required = True
      Size = 10
    end
  end
  object DataSource2: TDataSource
    DataSet = providers_names
    Left = 56
    Top = 64
  end
  object DataSource3: TDataSource
    DataSet = dbgrid_data_without_provider
    Left = 55
  end
  object dbgrid_data_without_provider: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from STORGE_HISTORY'
      
        'where NUM not in ( select NUM_IN_HISTORY_STORGE from  PROVIDER) ' +
        'and  (INPUT_DATE>=:var1) and (INPUT_DATE<=:var2)'
      'order by input_date')
    Left = 87
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
    object dbgrid_data_without_providerNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE_HISTORY.NAME'
      Required = True
      Size = 30
    end
    object dbgrid_data_without_providerKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE_HISTORY.KIND'
      Required = True
      Size = 30
    end
    object dbgrid_data_without_providerNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE_HISTORY.NUM'
      Required = True
    end
    object dbgrid_data_without_providerINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE_HISTORY.INPUT_DATE'
      Required = True
    end
    object dbgrid_data_without_providerBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE_HISTORY.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object dbgrid_data_without_providerQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE_HISTORY.QUANTITY'
      Required = True
    end
    object dbgrid_data_without_providerCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE_HISTORY.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object dbgrid_data_without_providerTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object dbgrid_data_without_providerDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
  end
end
