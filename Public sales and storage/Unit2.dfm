object Form2: TForm2
  Left = 2
  Top = 36
  Width = 1015
  Height = 626
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1573#1583#1582#1575#1604' '#1576#1590#1575#1593#1577' '#1578#1605' '#1573#1610#1589#1575#1604#1607#1575
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
  object DBEdit8: TDBEdit
    Left = 512
    Top = 72
    Width = 121
    Height = 21
    DataField = 'KIND'
    DataSource = DataSource4
    TabOrder = 2
    Visible = False
  end
  object DBEdit3: TDBEdit
    Left = 256
    Top = 144
    Width = 121
    Height = 21
    DataField = 'SALE_PRICE'
    DataSource = DataSource4
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 8
    Top = 5
    Width = 993
    Height = 580
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label10: TLabel
      Left = 632
      Top = 543
      Width = 48
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1571#1606#1608#1575#1593
      Visible = False
    end
    object Label11: TLabel
      Left = 431
      Top = 531
      Width = 49
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1605#1582#1586#1606
      Visible = False
    end
    object Label12: TLabel
      Left = 198
      Top = 527
      Width = 19
      Height = 13
      Caption = 'sold'
      Visible = False
    end
    object Button2: TButton
      Left = 478
      Top = 516
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 1
      OnClick = Button2Click
    end
    object DBEdit10: TDBEdit
      Left = 503
      Top = 543
      Width = 121
      Height = 21
      DataField = 'NUM'
      DataSource = DataSource4
      TabOrder = 0
      Visible = False
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 16
      Width = 515
      Height = 457
      DataSource = DataSource11
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 144
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 148
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
          FieldName = 'BUY_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569' '#1576#1575#1604#1604#1610#1576#1610
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DOLLAR'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569' '#1576#1575#1604#1583#1608#1604#1575#1585
          Width = 97
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL_DOLLAR'
          Title.Alignment = taCenter
          Title.Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1583#1608#1604#1575#1585
          Width = 87
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 520
      Top = 16
      Width = 468
      Height = 222
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 3
      object Label1: TLabel
        Left = 420
        Top = 50
        Width = 28
        Height = 13
        Caption = #1575#1604#1589#1606#1601
      end
      object Label5: TLabel
        Left = 412
        Top = 90
        Width = 44
        Height = 13
        Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
      end
      object Label9: TLabel
        Left = 423
        Top = 133
        Width = 27
        Height = 13
        Caption = #1575#1604#1603#1605#1610#1577
      end
      object Label2: TLabel
        Left = 186
        Top = 48
        Width = 23
        Height = 13
        Caption = #1575#1604#1606#1608#1593
      end
      object Label4: TLabel
        Left = 156
        Top = 92
        Width = 88
        Height = 13
        Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569' '#1576#1575#1604#1583#1610#1606#1575#1585
      end
      object Label6: TLabel
        Left = 191
        Top = 8
        Width = 66
        Height = 13
        Caption = #1576#1610#1575#1606#1575#1578' '#1575#1604#1576#1590#1575#1593#1577
      end
      object Label16: TLabel
        Left = 158
        Top = 131
        Width = 88
        Height = 13
        Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569' '#1576#1575#1604#1583#1608#1604#1575#1585
      end
      object Label18: TLabel
        Left = 168
        Top = 168
        Width = 64
        Height = 13
        Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1583#1608#1604#1575#1585
      end
      object Edit1: TEdit
        Left = 249
        Top = 86
        Width = 144
        Height = 21
        TabOrder = 0
        OnKeyDown = Edit1KeyDown
      end
      object DBComboBox1: TDBComboBox
        Left = 248
        Top = 43
        Width = 145
        Height = 21
        DataField = 'KIND'
        DataSource = DataSource8
        ItemHeight = 13
        TabOrder = 1
        OnChange = DBComboBox1Change
        OnKeyDown = DBComboBox1KeyDown
      end
      object DBEdit9: TDBEdit
        Left = 20
        Top = 44
        Width = 112
        Height = 21
        DataField = 'NAME'
        DataSource = DataSource4
        TabOrder = 2
        Visible = False
      end
      object DBComboBox2: TDBComboBox
        Left = 3
        Top = 43
        Width = 145
        Height = 21
        DataField = 'NAME'
        DataSource = DataSource8
        ItemHeight = 13
        TabOrder = 3
        OnChange = DBComboBox2Change
        OnKeyDown = DBComboBox2KeyDown
      end
      object DBEdit2: TDBEdit
        Left = 4
        Top = 84
        Width = 145
        Height = 21
        DataField = 'BUY_PRICE'
        DataSource = DataSource8
        TabOrder = 4
        OnKeyDown = DBEdit2KeyDown
      end
      object DBEdit1: TDBEdit
        Left = 250
        Top = 127
        Width = 144
        Height = 21
        DataField = 'QUANTITY'
        DataSource = DataSource8
        TabOrder = 5
        OnKeyDown = DBEdit1KeyDown
      end
      object Button1: TButton
        Left = 212
        Top = 191
        Width = 75
        Height = 25
        Caption = #1581#1601#1592' '#1575#1604#1576#1610#1575#1606#1575#1578
        TabOrder = 6
        OnClick = Button1Click
      end
      object DBEdit13: TDBEdit
        Left = 4
        Top = 125
        Width = 143
        Height = 21
        DataField = 'DOLLAR'
        DataSource = DataSource8
        TabOrder = 7
      end
      object DBEdit15: TDBEdit
        Left = 4
        Top = 161
        Width = 142
        Height = 21
        DataField = 'TOTAL_DOLLAR'
        DataSource = DataSource8
        TabOrder = 8
      end
    end
    object Panel3: TPanel
      Left = 519
      Top = 244
      Width = 469
      Height = 226
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 4
      Visible = False
      object Label3: TLabel
        Left = 151
        Top = 31
        Width = 61
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1575#1604#1578#1582#1586#1610#1606
      end
      object Label7: TLabel
        Left = 188
        Top = 8
        Width = 58
        Height = 13
        Caption = #1576#1610#1575#1606#1575#1578' '#1575#1604#1605#1608#1585#1583
      end
      object Label8: TLabel
        Left = 404
        Top = 32
        Width = 48
        Height = 13
        Caption = #1573#1587#1605' '#1575#1604#1605#1608#1585#1583
      end
      object Label13: TLabel
        Left = 389
        Top = 59
        Width = 75
        Height = 13
        Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1601#1575#1578#1608#1585#1577' '
      end
      object Label14: TLabel
        Left = 393
        Top = 138
        Width = 69
        Height = 13
        Caption = #1575#1604#1605#1578#1576#1602#1610' '#1576#1575#1604#1604#1610#1576#1610
      end
      object Label15: TLabel
        Left = 392
        Top = 103
        Width = 70
        Height = 13
        Caption = #1575#1604#1605#1583#1601#1608#1593' '#1576#1575#1604#1604#1610#1576#1610
      end
      object Label19: TLabel
        Left = 152
        Top = 62
        Width = 72
        Height = 13
        Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1601#1575#1578#1608#1585#1577
      end
      object Label20: TLabel
        Left = 172
        Top = 78
        Width = 33
        Height = 13
        Caption = #1576#1575#1604#1583#1608#1604#1575#1585
      end
      object Label21: TLabel
        Left = 413
        Top = 75
        Width = 32
        Height = 13
        Caption = #1576#1575#1604#1604#1610#1576#1610
      end
      object Label22: TLabel
        Left = 152
        Top = 104
        Width = 71
        Height = 13
        Caption = #1575#1604#1605#1583#1601#1608#1593' '#1576#1575#1604#1583#1608#1604#1575#1585
      end
      object Label23: TLabel
        Left = 152
        Top = 136
        Width = 70
        Height = 13
        Caption = #1575#1604#1605#1578#1576#1602#1610' '#1576#1575#1604#1583#1608#1604#1575#1585
      end
      object Label17: TLabel
        Left = 164
        Top = 168
        Width = 52
        Height = 13
        Caption = #1587#1593#1585' '#1575#1604#1589#1585#1601
      end
      object DBEdit4: TDBEdit
        Left = 25
        Top = 26
        Width = 110
        Height = 21
        DataField = 'INPUT_DATE'
        DataSource = DataSource13
        TabOrder = 0
        Visible = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 18
        Top = 17
        Width = 125
        Height = 21
        Date = 39215.511780590280000000
        Time = 39215.511780590280000000
        TabOrder = 1
        OnChange = DateTimePicker1Change
      end
      object DBEdit5: TDBEdit
        Left = 258
        Top = 58
        Width = 121
        Height = 21
        DataField = 'TOTAL_BILL'
        DataSource = DataSource13
        ReadOnly = True
        TabOrder = 2
      end
      object DBComboBox3: TDBComboBox
        Left = 257
        Top = 26
        Width = 121
        Height = 21
        Style = csDropDownList
        DataField = 'PROVIDER_NAME'
        DataSource = DataSource13
        ItemHeight = 13
        TabOrder = 3
        OnChange = DBComboBox3Change
      end
      object DBEdit6: TDBEdit
        Left = 257
        Top = 96
        Width = 121
        Height = 21
        DataField = 'PAID'
        DataSource = DataSource13
        TabOrder = 4
        OnChange = DBEdit6Change
      end
      object DBEdit7: TDBEdit
        Left = 257
        Top = 132
        Width = 121
        Height = 21
        DataField = 'REMAINING'
        DataSource = DataSource13
        TabOrder = 5
      end
      object Button3: TButton
        Left = 221
        Top = 196
        Width = 75
        Height = 25
        Caption = #1573#1606#1607#1575#1569
        TabOrder = 6
        OnClick = Button3Click
      end
      object DBEdit16: TDBEdit
        Left = 17
        Top = 61
        Width = 121
        Height = 21
        DataField = 'TOTAL_DOLLAR'
        DataSource = DataSource13
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit17: TDBEdit
        Left = 17
        Top = 98
        Width = 121
        Height = 21
        DataField = 'DOLLAR'
        DataSource = DataSource13
        TabOrder = 8
        OnChange = DBEdit17Change
      end
      object DBEdit18: TDBEdit
        Left = 18
        Top = 131
        Width = 121
        Height = 21
        DataField = 'REMAINING_DOLLAR'
        DataSource = DataSource13
        TabOrder = 9
      end
      object DBEdit14: TDBEdit
        Left = 18
        Top = 162
        Width = 124
        Height = 21
        DataField = 'CHANGE'
        DataSource = DataSource13
        TabOrder = 10
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 119
      Top = 476
      Width = 216
      Height = 25
      DataSource = DataSource11
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Insert record'
        #1581#1584#1601
        #1578#1593#1583#1610#1604
        #1581#1601#1592' '#1575#1604#1578#1593#1583#1610#1604
        #1573#1604#1594#1575#1569' '#1575#1604#1578#1593#1583#1610#1604
        'Refresh data')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
  end
  object DBEdit11: TDBEdit
    Left = 308
    Top = 533
    Width = 121
    Height = 21
    DataField = 'NUM'
    DataSource = DataSource1
    TabOrder = 3
    Visible = False
  end
  object DBEdit12: TDBEdit
    Left = 83
    Top = 528
    Width = 121
    Height = 21
    DataField = 'SOLD'
    DataSource = DataSource1
    TabOrder = 4
    Visible = False
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
        Name = 'KIND'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NUM'
        DataType = ftInteger
      end
      item
        Name = 'INPUT_DATE'
        DataType = ftDate
      end
      item
        Name = 'BUY_PRICE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'QUANTITY'
        DataType = ftInteger
      end
      item
        Name = 'NUM_IN_HISTORY_STORGE'
        DataType = ftInteger
      end
      item
        Name = 'SOLD'
        DataType = ftInteger
      end
      item
        Name = 'DOLLAR_PRICE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'TOTAL_DOLLAR_PRICE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'CHANGE_PRICE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end>
    StoreDefs = True
    TableName = 'STORGE'
    Left = 32
    Top = 8
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
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 64
    Top = 8
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(KIND) from TYPES'
      'order by kind')
    Left = 792
    Top = 488
    object IBQuery1KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 824
    Top = 488
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from TYPES'
      'where kind=:var1'
      'order by name')
    Left = 672
    Top = 464
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TYPES.NAME'
      Required = True
      Size = 30
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery2
    Left = 704
    Top = 464
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TYPES'
      'where kind=:var1 and name=:var2')
    UpdateObject = IBUpdateSQL1
    Left = 920
    Top = 456
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
      end>
    object IBQuery3NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TYPES.NAME'
      Required = True
      Size = 30
    end
    object IBQuery3KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
    object IBQuery3NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TYPES.NUM'
      Required = True
    end
    object IBQuery3SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'TYPES.SALE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery3
    Left = 952
    Top = 456
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max( NUM) from TYPES')
    Left = 712
    Top = 536
    object IBQuery4MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource5: TDataSource
    DataSet = IBQuery4
    Left = 744
    Top = 536
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  NUM,'
      '  SALE_PRICE'
      'from TYPES '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  NUM = :NUM and'
      '  SALE_PRICE = :SALE_PRICE')
    ModifySQL.Strings = (
      'update TYPES'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  NUM = :NUM,'
      '  SALE_PRICE = :SALE_PRICE'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  SALE_PRICE = :OLD_SALE_PRICE')
    InsertSQL.Strings = (
      'insert into TYPES'
      '  (NAME, KIND, NUM, SALE_PRICE)'
      'values'
      '  (:NAME, :KIND, :NUM, :SALE_PRICE)')
    DeleteSQL.Strings = (
      'delete from TYPES'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  NUM = :OLD_NUM and'
      '  SALE_PRICE = :OLD_SALE_PRICE')
    Left = 896
    Top = 456
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TYPES'
      'where kind=:var1 and name=:var2')
    Left = 616
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
      end>
    object IBQuery5NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'TYPES.NAME'
      Required = True
      Size = 30
    end
    object IBQuery5KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'TYPES.KIND'
      Required = True
      Size = 30
    end
    object IBQuery5NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TYPES.NUM'
      Required = True
    end
    object IBQuery5SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'TYPES.SALE_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object DataSource6: TDataSource
    DataSet = IBQuery5
    Left = 584
  end
  object IBQuery6: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from STORGE')
    Left = 288
    object IBQuery6MAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource7: TDataSource
    DataSet = IBQuery6
    Left = 256
  end
  object IBTable2: TIBTable
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
        Name = 'KIND'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'QUANTITY'
        DataType = ftInteger
      end
      item
        Name = 'BUY_PRICE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'NUM'
        DataType = ftInteger
      end
      item
        Name = 'DOLLAR'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'TOTAL_DOLLAR'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end>
    StoreDefs = True
    TableName = 'PROVIDER_BILL'
    Left = 32
    Top = 429
    object IBTable2NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable2KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable2QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable2BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable2NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable2DOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Precision = 9
      Size = 3
    end
    object IBTable2TOTAL_DOLLAR: TIBBCDField
      FieldName = 'TOTAL_DOLLAR'
      Precision = 9
      Size = 3
    end
  end
  object DataSource8: TDataSource
    DataSet = IBTable2
    Left = 64
    Top = 429
  end
  object sum_provider_bill: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(BUY_PRICE* QUANTITY) from PROVIDER_BILL')
    Left = 304
    Top = 445
    object sum_provider_billSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object max_num_in_provider_bill: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from PROVIDER_BILL')
    Left = 208
    Top = 405
    object max_num_in_provider_billMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource9: TDataSource
    DataSet = sum_provider_bill
    Left = 280
    Top = 445
  end
  object DataSource10: TDataSource
    DataSet = max_num_in_provider_bill
    Left = 240
    Top = 405
  end
  object DataSource11: TDataSource
    DataSet = data_for_dbgrid
    Left = 320
    Top = 373
  end
  object data_for_dbgrid: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROVIDER_BILL')
    UpdateObject = IBUpdateSQL2
    Left = 352
    Top = 373
    object data_for_dbgridNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROVIDER_BILL.NAME'
      Required = True
      Size = 30
    end
    object data_for_dbgridKIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'PROVIDER_BILL.KIND'
      Required = True
      Size = 30
    end
    object data_for_dbgridQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'PROVIDER_BILL.QUANTITY'
      Required = True
    end
    object data_for_dbgridBUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'PROVIDER_BILL.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object data_for_dbgridNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PROVIDER_BILL.NUM'
      Required = True
    end
    object data_for_dbgridDOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Origin = 'PROVIDER_BILL.DOLLAR'
      Precision = 9
      Size = 3
    end
    object data_for_dbgridTOTAL_DOLLAR: TIBBCDField
      FieldName = 'TOTAL_DOLLAR'
      Origin = 'PROVIDER_BILL.TOTAL_DOLLAR'
      Precision = 9
      Size = 3
    end
  end
  object DataSource12: TDataSource
    DataSet = providers_names
    Left = 424
  end
  object providers_names: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PROVIDES')
    Left = 464
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
  end
  object IBTable3: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PROVIDER_NAME'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TOTAL_BILL'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'PAID'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'REMAINING'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'NUM_IN_HISTORY_STORGE'
        DataType = ftInteger
      end
      item
        Name = 'INPUT_DATE'
        DataType = ftDate
      end
      item
        Name = 'DOLLAR'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'CHANGE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'REMAINING_DOLLAR'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'TOTAL_DOLLAR'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end>
    StoreDefs = True
    TableName = 'PROVIDER'
    Left = 32
    Top = 397
    object IBTable3PROVIDER_NAME: TIBStringField
      FieldName = 'PROVIDER_NAME'
      Size = 30
    end
    object IBTable3TOTAL_BILL: TIBBCDField
      FieldName = 'TOTAL_BILL'
      Precision = 9
      Size = 3
    end
    object IBTable3PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable3REMAINING: TIBBCDField
      FieldName = 'REMAINING'
      Precision = 9
      Size = 3
    end
    object IBTable3NUM_IN_HISTORY_STORGE: TIntegerField
      FieldName = 'NUM_IN_HISTORY_STORGE'
    end
    object IBTable3INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable3DOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Precision = 9
      Size = 3
    end
    object IBTable3CHANGE: TIBBCDField
      FieldName = 'CHANGE'
      Precision = 9
      Size = 3
    end
    object IBTable3REMAINING_DOLLAR: TIBBCDField
      FieldName = 'REMAINING_DOLLAR'
      Precision = 9
      Size = 3
    end
    object IBTable3TOTAL_DOLLAR: TIBBCDField
      FieldName = 'TOTAL_DOLLAR'
      Precision = 9
      Size = 3
    end
  end
  object DataSource13: TDataSource
    DataSet = IBTable3
    Left = 64
    Top = 397
  end
  object DataSource14: TDataSource
    DataSet = IBTable4
    Left = 152
    Top = 397
  end
  object IBTable4: TIBTable
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
        Name = 'KIND'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NUM'
        DataType = ftInteger
      end
      item
        Name = 'INPUT_DATE'
        DataType = ftDate
      end
      item
        Name = 'BUY_PRICE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'QUANTITY'
        DataType = ftInteger
      end
      item
        Name = 'CHANGE_PRICE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'TOTAL_DOLLAR_PRICE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end
      item
        Name = 'DOLLAR_PRICE'
        DataType = ftBCD
        Precision = 9
        Size = 3
      end>
    StoreDefs = True
    TableName = 'STORGE_HISTORY'
    Left = 120
    Top = 397
    object IBTable4NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
    object IBTable4KIND: TIBStringField
      FieldName = 'KIND'
      Size = 30
    end
    object IBTable4NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable4INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable4BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable4QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable4CHANGE_PRICE: TIBBCDField
      FieldName = 'CHANGE_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable4TOTAL_DOLLAR_PRICE: TIBBCDField
      FieldName = 'TOTAL_DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
    object IBTable4DOLLAR_PRICE: TIBBCDField
      FieldName = 'DOLLAR_PRICE'
      Precision = 9
      Size = 3
    end
  end
  object num_in_storge_history: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(NUM) from STORGE_HISTORY')
    Left = 768
    Top = 65535
    object num_in_storge_historyMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource15: TDataSource
    DataSet = num_in_storge_history
    Left = 736
    Top = 65535
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  KIND,'
      '  QUANTITY,'
      '  BUY_PRICE,'
      '  NUM,'
      '  DOLLAR,'
      '  TOTAL_DOLLAR'
      'from PROVIDER_BILL '
      'where'
      '  NAME = :NAME and'
      '  KIND = :KIND and'
      '  QUANTITY = :QUANTITY and'
      '  BUY_PRICE = :BUY_PRICE and'
      '  NUM = :NUM and'
      '  DOLLAR = :DOLLAR and'
      '  TOTAL_DOLLAR = :TOTAL_DOLLAR')
    ModifySQL.Strings = (
      'update PROVIDER_BILL'
      'set'
      '  NAME = :NAME,'
      '  KIND = :KIND,'
      '  QUANTITY = :QUANTITY,'
      '  BUY_PRICE = :BUY_PRICE,'
      '  NUM = :NUM,'
      '  DOLLAR = :DOLLAR,'
      '  TOTAL_DOLLAR = :TOTAL_DOLLAR'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  NUM = :OLD_NUM and'
      '  DOLLAR = :OLD_DOLLAR and'
      '  TOTAL_DOLLAR = :OLD_TOTAL_DOLLAR')
    InsertSQL.Strings = (
      'insert into PROVIDER_BILL'
      '  (NAME, KIND, QUANTITY, BUY_PRICE, NUM, DOLLAR, TOTAL_DOLLAR)'
      'values'
      
        '  (:NAME, :KIND, :QUANTITY, :BUY_PRICE, :NUM, :DOLLAR, :TOTAL_DO' +
        'LLAR)')
    DeleteSQL.Strings = (
      'delete from PROVIDER_BILL'
      'where'
      '  NAME = :OLD_NAME and'
      '  KIND = :OLD_KIND and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  BUY_PRICE = :OLD_BUY_PRICE and'
      '  NUM = :OLD_NUM and'
      '  DOLLAR = :OLD_DOLLAR and'
      '  TOTAL_DOLLAR = :OLD_TOTAL_DOLLAR')
    Left = 384
    Top = 373
  end
  object IBTable5: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PROVIDER_DEBT'
    Left = 32
    Top = 461
    object IBTable5NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable5DEBT_VALUE: TIBBCDField
      FieldName = 'DEBT_VALUE'
      Precision = 9
      Size = 3
    end
    object IBTable5NUM_IN_PROVIDER_DATA: TIntegerField
      FieldName = 'NUM_IN_PROVIDER_DATA'
    end
    object IBTable5DEBT_DOLLAR: TIBBCDField
      FieldName = 'DEBT_DOLLAR'
      Precision = 9
      Size = 3
    end
  end
  object DataSource16: TDataSource
    DataSet = IBTable5
    Left = 64
    Top = 462
  end
  object DataSource17: TDataSource
    DataSet = IBQuery7
    Left = 488
    Top = 471
  end
  object IBQuery7: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NAME from PROVIDERS_DEBTS_NAMES'
      'where name=:var1')
    Left = 456
    Top = 471
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery7NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PROVIDERS_DEBTS_NAMES.NAME'
      Required = True
      Size = 30
    end
  end
  object sum_total_dollar: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(TOTAL_DOLLAR) from PROVIDER_BILL')
    Left = 872
    Top = 221
    object sum_total_dollarSUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource18: TDataSource
    DataSet = sum_total_dollar
    Left = 848
    Top = 221
  end
  object DataSource19: TDataSource
    DataSet = IBQuery8
    Left = 640
    Top = 221
  end
  object IBQuery8: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select PAY_TYPE from PROVIDES'
      'where name=:var1')
    Left = 672
    Top = 221
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery8PAY_TYPE: TIBStringField
      FieldName = 'PAY_TYPE'
      Origin = 'PROVIDES.PAY_TYPE'
      Required = True
      Size = 10
    end
  end
  object IBTable6: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PROVIDERS_DEBTS_NAMES'
    Left = 528
    Top = 213
    object IBTable6NAME: TIBStringField
      FieldName = 'NAME'
      Size = 30
    end
  end
  object DataSource20: TDataSource
    DataSet = IBTable6
    Left = 560
    Top = 213
  end
end
