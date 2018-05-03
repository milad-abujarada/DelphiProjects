object Form71: TForm71
  Left = 139
  Top = 36
  Width = 834
  Height = 695
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1608' '#1578#1581#1608#1610#1604' '#1576#1590#1575#1593#1607' '#1605#1606' '#1575#1604#1605#1582#1586#1606' '#1575#1604#1605#1572#1602#1578' '#1573#1604#1609' '#1575#1604#1581#1575#1604#1609
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
    Width = 809
    Height = 649
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 468
      Top = 21
      Width = 48
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1608#1585#1583
    end
    object Label2: TLabel
      Left = 457
      Top = 541
      Width = 62
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1581#1608#1604#1607
    end
    object ComboBox1: TComboBox
      Left = 306
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object DBGrid1: TDBGrid
      Left = 5
      Top = 48
      Width = 798
      Height = 481
      DataSource = DataSource2
      TabOrder = 1
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
          Width = 214
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 218
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1578#1576#1602#1610#1607
          Width = 88
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1573#1583#1582#1575#1604
          Width = 109
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'provider_name'
          Title.Alignment = taCenter
          Title.Caption = #1573#1587#1605' '#1575#1604#1605#1608#1585#1583
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUM_IN_HISTORY_STORGE'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUM'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BUY_PRICE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CHANGE_PRICE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DOLLAR_PRICE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SOLD'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TOTAL_DOLLAR_PRICE'
          Visible = False
        end>
    end
    object Button1: TButton
      Left = 296
      Top = 608
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 464
      Top = 608
      Width = 75
      Height = 25
      Caption = #1578#1581#1608#1610#1604
      TabOrder = 3
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 327
      Top = 536
      Width = 121
      Height = 21
      TabOrder = 4
      OnChange = Edit1Change
    end
  end
  object DataSource1: TDataSource
    DataSet = providers_names
    Left = 192
    Top = 16
  end
  object providers_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from PROVIDES')
    Left = 224
    Top = 16
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
    DataSet = db_data
    Left = 192
    Top = 48
  end
  object db_data: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    OnCalcFields = db_dataCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TEMP_STORGE')
    Left = 224
    Top = 48
    object db_dataNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TEMP_STORGE.NAME'
      Required = True
      Size = 30
    end
    object db_dataKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TEMP_STORGE.KIND'
      Required = True
      Size = 30
    end
    object db_dataNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TEMP_STORGE.NUM'
      Required = True
    end
    object db_dataINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'TEMP_STORGE.INPUT_DATE'
      Required = True
    end
    object db_dataBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'TEMP_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object db_dataQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'TEMP_STORGE.QUANTITY'
      Required = True
    end
    object db_dataNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'TEMP_STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object db_dataSOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'TEMP_STORGE.SOLD'
    end
    object db_dataDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object db_dataTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object db_dataCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'TEMP_STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object db_dataprovider_name: TStringField
      FieldKind = fkCalculated
      FieldName = 'provider_name'
      Calculated = True
    end
  end
  object name_for_data: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select PROVIDER_NAME  from PROVIDER where NUM_IN_HISTORY_STORGE=' +
        ':var1')
    Left = 224
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object name_for_dataPROVIDER_NAME: TIBStringField
      FieldName = 'PROVIDER_NAME'
      Origin = 'PROVIDER.PROVIDER_NAME'
      Required = True
      Size = 30
    end
  end
  object DataSource3: TDataSource
    DataSet = name_for_data
    Left = 192
    Top = 80
  end
  object DataSource4: TDataSource
    DataSet = db_data1
    Left = 192
    Top = 112
  end
  object db_data1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    OnCalcFields = db_data1CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TEMP_STORGE'
      
        'where NUM_IN_HISTORY_STORGE in( select NUM_IN_HISTORY_STORGE fro' +
        'm PROVIDER where PROVIDER_NAME=:var1)')
    Left = 224
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object db_data1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TEMP_STORGE.NAME'
      Required = True
      Size = 30
    end
    object db_data1KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TEMP_STORGE.KIND'
      Required = True
      Size = 30
    end
    object db_data1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TEMP_STORGE.NUM'
      Required = True
    end
    object db_data1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'TEMP_STORGE.INPUT_DATE'
      Required = True
    end
    object db_data1BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'TEMP_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object db_data1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'TEMP_STORGE.QUANTITY'
      Required = True
    end
    object db_data1NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'TEMP_STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object db_data1SOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'TEMP_STORGE.SOLD'
    end
    object db_data1DOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object db_data1TOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object db_data1CHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'TEMP_STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object db_data1provider_name: TStringField
      FieldKind = fkCalculated
      FieldName = 'provider_name'
      Calculated = True
    end
  end
  object DataSource5: TDataSource
    DataSet = edit_in_temp_storge
    Left = 192
    Top = 144
  end
  object edit_in_temp_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TEMP_STORGE'
      
        'where (KIND=:var1)and(NAME=:var2)and (NUM_IN_HISTORY_STORGE=:var' +
        '3)and(QUANTITY=:var4)and(INPUT_DATE=:var5)')
    UpdateObject = IBUpdateSQL1
    Left = 224
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftInteger
        Name = 'var3'
        ParamType = ptInputOutput
      end
      item
        DataType = ftInteger
        Name = 'var4'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var5'
        ParamType = ptInputOutput
      end>
    object edit_in_temp_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TEMP_STORGE.NAME'
      Required = True
      Size = 30
    end
    object edit_in_temp_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TEMP_STORGE.KIND'
      Required = True
      Size = 30
    end
    object edit_in_temp_storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TEMP_STORGE.NUM'
      Required = True
    end
    object edit_in_temp_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'TEMP_STORGE.INPUT_DATE'
      Required = True
    end
    object edit_in_temp_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'TEMP_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_temp_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'TEMP_STORGE.QUANTITY'
      Required = True
    end
    object edit_in_temp_storgeNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'TEMP_STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object edit_in_temp_storgeSOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'TEMP_STORGE.SOLD'
    end
    object edit_in_temp_storgeDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object edit_in_temp_storgeTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object edit_in_temp_storgeCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'TEMP_STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  INPUT_DATE,'
      '  BUY_PRICE,'
      '  QUANTITY,'
      '  NUM_IN_HISTORY_STORGE,'
      '  SOLD,'
      '  DOLLAR_PRICE,'
      '  TOTAL_DOLLAR_PRICE,'
      '  CHANGE_PRICE'
      'from TEMP_STORGE '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  QUANTITY = :QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE and'
      '  SOLD = :SOLD and'
      '  DOLLAR_PRICE = :DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :CHANGE_PRICE')
    ModifySQL.Strings = (
      'update TEMP_STORGE'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  QUANTITY = :QUANTITY,'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE,'
      '  SOLD = :SOLD,'
      '  DOLLAR_PRICE = :DOLLAR_PRICE,'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE,'
      '  CHANGE_PRICE = :CHANGE_PRICE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  SOLD = :OLD_SOLD and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE')
    InsertSQL.Strings = (
      'insert into TEMP_STORGE'
      
        '  (NAME, KIND, NUM, INPUT_DATE, BUY_PRICE, QUANTITY, NUM_IN_HIST' +
        'ORY_STORGE, '
      '   SOLD, DOLLAR_PRICE, TOTAL_DOLLAR_PRICE, CHANGE_PRICE)'
      'values'
      
        '  (:NAME, :KIND, :NUM, :INPUT_DATE, :BUY_PRICE, :QUANTITY, :NUM_' +
        'IN_HISTORY_STORGE, '
      '   :SOLD, :DOLLAR_PRICE, :TOTAL_DOLLAR_PRICE, :CHANGE_PRICE)')
    DeleteSQL.Strings = (
      'delete from TEMP_STORGE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  SOLD = :OLD_SOLD and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE')
    Left = 256
    Top = 144
  end
  object DataSource6: TDataSource
    Left = 192
    Top = 176
  end
  object edit_in_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE'
      
        'where (kind=:var1)and(name=:var2)and(NUM_IN_HISTORY_STORGE=:var3' +
        ')and(INPUT_DATE=:var4)')
    UpdateObject = IBUpdateSQL2
    Left = 224
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftInteger
        Name = 'var3'
        ParamType = ptInputOutput
      end
      item
        DataType = ftDate
        Name = 'var4'
        ParamType = ptInputOutput
      end>
    object edit_in_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE.NAME'
      Required = True
      Size = 30
    end
    object edit_in_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE.KIND'
      Required = True
      Size = 30
    end
    object edit_in_storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE.NUM'
      Required = True
    end
    object edit_in_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE.INPUT_DATE'
      Required = True
    end
    object edit_in_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object edit_in_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE.QUANTITY'
      Required = True
    end
    object edit_in_storgeNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object edit_in_storgeSOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'STORGE.SOLD'
    end
    object edit_in_storgeDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object edit_in_storgeTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object edit_in_storgeCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  INPUT_DATE,'
      '  BUY_PRICE,'
      '  QUANTITY,'
      '  NUM_IN_HISTORY_STORGE,'
      '  SOLD,'
      '  DOLLAR_PRICE,'
      '  TOTAL_DOLLAR_PRICE,'
      '  CHANGE_PRICE'
      'from STORGE '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  QUANTITY = :QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE and'
      '  SOLD = :SOLD and'
      '  DOLLAR_PRICE = :DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :CHANGE_PRICE')
    ModifySQL.Strings = (
      'update STORGE'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  QUANTITY = :QUANTITY,'
      '  NUM_IN_HISTORY_STORGE = :NUM_IN_HISTORY_STORGE,'
      '  SOLD = :SOLD,'
      '  DOLLAR_PRICE = :DOLLAR_PRICE,'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE,'
      '  CHANGE_PRICE = :CHANGE_PRICE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  SOLD = :OLD_SOLD and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE')
    InsertSQL.Strings = (
      'insert into STORGE'
      
        '  (NAME, KIND, NUM, INPUT_DATE, BUY_PRICE, QUANTITY, NUM_IN_HIST' +
        'ORY_STORGE, '
      '   SOLD, DOLLAR_PRICE, TOTAL_DOLLAR_PRICE, CHANGE_PRICE)'
      'values'
      
        '  (:NAME, :KIND, :NUM, :INPUT_DATE, :BUY_PRICE, :QUANTITY, :NUM_' +
        'IN_HISTORY_STORGE, '
      '   :SOLD, :DOLLAR_PRICE, :TOTAL_DOLLAR_PRICE, :CHANGE_PRICE)')
    DeleteSQL.Strings = (
      'delete from STORGE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  NUM_IN_HISTORY_STORGE = :OLD_NUM_IN_HISTORY_STORGE and'
      '  SOLD = :OLD_SOLD and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE')
    Left = 256
    Top = 176
  end
  object DataSource7: TDataSource
    DataSet = IBTable1
    Left = 192
    Top = 208
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'STORGE'
    Left = 224
    Top = 208
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable1KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable1NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
    end
    object IBTable1SOLD: TIntegerField
      FieldName = 'SOLD'
    end
    object IBTable1DOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable1TOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable1CHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object DataSource8: TDataSource
    DataSet = max
    Left = 192
    Top = 240
  end
  object max: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from STORGE')
    Left = 224
    Top = 240
    object maxMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
end
