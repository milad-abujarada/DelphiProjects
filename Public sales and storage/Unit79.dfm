object Form79: TForm79
  Left = 284
  Top = 271
  Width = 415
  Height = 210
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1593#1583#1610#1604' '#1587#1593#1585' '#1575#1604#1588#1585#1575#1569' '#1576#1575#1604#1583#1608#1604#1575#1585' '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 6
    Top = 6
    Width = 395
    Height = 164
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 339
      Top = 29
      Width = 28
      Height = 13
      Caption = #1575#1604#1589#1606#1601
    end
    object Label2: TLabel
      Left = 162
      Top = 26
      Width = 23
      Height = 13
      Caption = #1575#1604#1606#1608#1593
    end
    object Label3: TLabel
      Left = 330
      Top = 66
      Width = 52
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569
    end
    object Label4: TLabel
      Left = 144
      Top = 74
      Width = 60
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1578#1589#1585#1610#1601
    end
    object Label5: TLabel
      Left = 342
      Top = 83
      Width = 33
      Height = 13
      Caption = #1576#1575#1604#1583#1608#1604#1575#1585
    end
    object Button1: TButton
      Left = 247
      Top = 131
      Width = 75
      Height = 25
      Caption = #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604#1575#1578
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 103
      Top = 131
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 208
      Top = 24
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 21
      Top = 24
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 208
      Top = 70
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 22
      Top = 69
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object IBUpdateSQL3: TIBUpdateSQL
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
    Left = 80
    Top = 80
  end
  object storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE'
      
        'where (NUM_IN_HISTORY_STORGE=:var1)and(kind=:var2)and(name=:var3' +
        ')')
    UpdateObject = IBUpdateSQL3
    Left = 48
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE.NAME'
      Required = True
      Size = 30
    end
    object storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE.KIND'
      Required = True
      Size = 30
    end
    object storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE.NUM'
      Required = True
    end
    object storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE.INPUT_DATE'
      Required = True
    end
    object storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE.QUANTITY'
      Required = True
    end
    object storgeNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object storgeSOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'STORGE.SOLD'
    end
    object storgeDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object storgeTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object storgeCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object DataSource3: TDataSource
    DataSet = storge
    Left = 16
    Top = 80
  end
  object DataSource4: TDataSource
    DataSet = storge_history
    Left = 16
    Top = 112
  end
  object storge_history: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STORGE_HISTORY'
      'where (NUM=:var1)and(kind=:var2)and(name=:var3)')
    UpdateObject = IBUpdateSQL4
    Left = 48
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object storge_historyNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'STORGE_HISTORY.NAME'
      Required = True
      Size = 30
    end
    object storge_historyKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'STORGE_HISTORY.KIND'
      Required = True
      Size = 30
    end
    object storge_historyNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'STORGE_HISTORY.NUM'
      Required = True
    end
    object storge_historyINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'STORGE_HISTORY.INPUT_DATE'
      Required = True
    end
    object storge_historyBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'STORGE_HISTORY.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object storge_historyQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'STORGE_HISTORY.QUANTITY'
      Required = True
    end
    object storge_historyCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'STORGE_HISTORY.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object storge_historyTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object storge_historyDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'STORGE_HISTORY.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL4: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  INPUT_DATE,'
      '  BUY_PRICE,'
      '  QUANTITY,'
      '  CHANGE_PRICE,'
      '  TOTAL_DOLLAR_PRICE,'
      '  DOLLAR_PRICE'
      'from STORGE_HISTORY '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  QUANTITY = :QUANTITY and'
      '  CHANGE_PRICE = :CHANGE_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE and'
      '  DOLLAR_PRICE = :DOLLAR_PRICE')
    ModifySQL.Strings = (
      'update STORGE_HISTORY'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  QUANTITY = :QUANTITY,'
      '  CHANGE_PRICE = :CHANGE_PRICE,'
      '  TOTAL_DOLLAR_PRICE = :TOTAL_DOLLAR_PRICE,'
      '  DOLLAR_PRICE = :DOLLAR_PRICE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE')
    InsertSQL.Strings = (
      'insert into STORGE_HISTORY'
      
        '  (NAME, KIND, NUM, INPUT_DATE, BUY_PRICE, QUANTITY, CHANGE_PRIC' +
        'E, TOTAL_DOLLAR_PRICE, '
      '   DOLLAR_PRICE)'
      'values'
      
        '  (:NAME, :KIND, :NUM, :INPUT_DATE, :BUY_PRICE, :QUANTITY, :CHAN' +
        'GE_PRICE, '
      '   :TOTAL_DOLLAR_PRICE, :DOLLAR_PRICE)')
    DeleteSQL.Strings = (
      'delete from STORGE_HISTORY'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  CHANGE_PRICE = :OLD_CHANGE_PRICE and'
      '  TOTAL_DOLLAR_PRICE = :OLD_TOTAL_DOLLAR_PRICE and'
      '  DOLLAR_PRICE = :OLD_DOLLAR_PRICE')
    Left = 80
    Top = 112
  end
  object DataSource5: TDataSource
    DataSet = temp_storge
    Left = 16
    Top = 8
  end
  object temp_storge: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TEMP_STORGE'
      
        'where (NUM_IN_HISTORY_STORGE=:var1) and(kind=:var2)and(name=:var' +
        '3)')
    UpdateObject = IBUpdateSQL5
    Left = 48
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var2'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var3'
        ParamType = ptInputOutput
      end>
    object temp_storgeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TEMP_STORGE.NAME'
      Required = True
      Size = 30
    end
    object temp_storgeKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TEMP_STORGE.KIND'
      Required = True
      Size = 30
    end
    object temp_storgeNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TEMP_STORGE.NUM'
      Required = True
    end
    object temp_storgeINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'TEMP_STORGE.INPUT_DATE'
      Required = True
    end
    object temp_storgeBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'TEMP_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object temp_storgeQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'TEMP_STORGE.QUANTITY'
      Required = True
    end
    object temp_storgeNUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
      Origin = 'TEMP_STORGE.NUM_IN_HISTORY_STORGE'
      Required = True
    end
    object temp_storgeSOLD: TIntegerField
      FieldName = 'SOLD'
      Origin = 'TEMP_STORGE.SOLD'
    end
    object temp_storgeDOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object temp_storgeTOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Origin = 'TEMP_STORGE.TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object temp_storgeCHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Origin = 'TEMP_STORGE.CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object IBUpdateSQL5: TIBUpdateSQL
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
    Left = 80
    Top = 8
  end
end
