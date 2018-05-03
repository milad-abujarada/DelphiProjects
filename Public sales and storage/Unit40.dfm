object Form40: TForm40
  Left = 15
  Top = 3
  Width = 1007
  Height = 728
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1575#1604#1578#1581#1608#1610#1604#1575#1578' '#1605#1575#1604#1610#1577
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
    Top = 3
    Width = 985
    Height = 684
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 578
      Top = 13
      Width = 23
      Height = 13
      Caption = #1575#1604#1573#1587#1605
    end
    object Label2: TLabel
      Left = 879
      Top = 620
      Width = 98
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1583#1608#1604#1575#1585' '#1575#1604#1605#1581#1608#1604
    end
    object Label3: TLabel
      Left = 611
      Top = 621
      Width = 131
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1583#1610#1606#1575#1585' '#1604#1604#1605#1576#1575#1604#1594' '#1575#1604#1605#1581#1608#1604#1607
    end
    object Label4: TLabel
      Left = 377
      Top = 621
      Width = 71
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1583#1601#1608#1593
    end
    object Label5: TLabel
      Left = 696
      Top = 32
      Width = 64
      Height = 13
      Caption = #1575#1604#1605#1576#1575#1604#1594' '#1575#1604#1605#1581#1608#1604#1607
    end
    object Label6: TLabel
      Left = 192
      Top = 32
      Width = 72
      Height = 13
      Caption = #1575#1604#1605#1576#1575#1604#1594' '#1575#1604#1605#1583#1601#1608#1593#1607
    end
    object Label7: TLabel
      Left = 167
      Top = 621
      Width = 73
      Height = 13
      Caption = #1575#1604#1605#1587#1578#1581#1602' '#1604#1604#1605#1581#1608#1604
    end
    object ComboBox1: TComboBox
      Left = 427
      Top = 8
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object Edit1: TEdit
      Left = 748
      Top = 614
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 481
      Top = 614
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Button1: TButton
      Left = 322
      Top = 654
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 3
      OnClick = Button1Click
    end
    object DBGrid11: TDBGrid
      Left = 6
      Top = 55
      Width = 446
      Height = 507
      DataSource = DataSource5
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid11DrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAID'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1605#1583#1601#1608#1593
          Width = 118
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DELIVER_NAME'
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
          Width = 148
          Visible = True
        end>
    end
    object DBNavigator11: TDBNavigator
      Left = 124
      Top = 573
      Width = 224
      Height = 25
      DataSource = DataSource5
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 248
      Top = 614
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 39
      Top = 614
      Width = 119
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
    object Button2: TButton
      Left = 570
      Top = 654
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      Enabled = False
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 464
    Top = 58
    Width = 521
    Height = 508
    DataSource = DataSource1
    TabOrder = 1
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
        FieldName = 'DINAR'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1602#1610#1605#1577' '#1576#1575#1604#1583#1610#1606#1575#1585
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DINAR_VS_DOLLAR'
        Title.Alignment = taCenter
        Title.Caption = #1587#1593#1585' '#1575#1604#1578#1589#1585#1610#1601
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DOLLAR'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1602#1610#1605#1577' '#1576#1575#1604#1583#1608#1604#1575#1585
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SENDED_TO'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1605#1581#1608#1604' '#1573#1604#1610#1607
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
    Left = 616
    Top = 584
    Width = 224
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 288
    Top = 208
    Width = 465
    Height = 185
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 3
    Visible = False
    object Label8: TLabel
      Left = 374
      Top = 88
      Width = 12
      Height = 13
      Caption = #1605#1606
    end
    object Label9: TLabel
      Left = 217
      Top = 88
      Width = 17
      Height = 13
      Caption = #1573#1604#1609
    end
    object RadioButton1: TRadioButton
      Left = 266
      Top = 40
      Width = 113
      Height = 17
      Caption = #1575#1604#1605#1576#1575#1604#1594' '#1575#1604#1605#1581#1608#1604#1607
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 98
      Top = 40
      Width = 113
      Height = 17
      Caption = #1575#1604#1605#1576#1575#1604#1594' '#1575#1604#1605#1583#1601#1608#1593#1607
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 250
      Top = 85
      Width = 117
      Height = 21
      Date = 39283.458119027780000000
      Time = 39283.458119027780000000
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 98
      Top = 85
      Width = 116
      Height = 21
      Date = 39283.458209270840000000
      Time = 39283.458209270840000000
      TabOrder = 3
    end
    object Button3: TButton
      Left = 200
      Top = 136
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery1AfterDelete
    AfterPost = IBQuery1AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  * from DOLLAR'
      'where name=:var1'
      'order by input_date')
    UpdateObject = IBUpdateSQL1
    Left = 16
    Top = 155
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DOLLAR.NAME'
      Required = True
    end
    object IBQuery1DINAR: TIBBCDField
      FieldName = 'DINAR'
      Origin = 'DOLLAR.DINAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1DOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Origin = 'DOLLAR.DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'DOLLAR.NUM'
      Required = True
    end
    object IBQuery1DINAR_VS_DOLLAR: TIBBCDField
      FieldName = 'DINAR_VS_DOLLAR'
      Origin = 'DOLLAR.DINAR_VS_DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'DOLLAR.INPUT_DATE'
      Required = True
    end
    object IBQuery1SENDED_TO: TIBStringField
      FieldName = 'SENDED_TO'
      Origin = 'DOLLAR.SENDED_TO'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 48
    Top = 155
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  DINAR,'
      '  DOLLAR,'
      '  NUM,'
      '  DINAR_VS_DOLLAR,'
      '  INPUT_DATE,'
      '  SENDED_TO'
      'from DOLLAR '
      'where'
      '  NAME = :NAME and'
      '  DINAR = :DINAR and'
      '  DOLLAR = :DOLLAR and'
      '  NUM = :NUM and'
      '  DINAR_VS_DOLLAR = :DINAR_VS_DOLLAR and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  SENDED_TO = :SENDED_TO')
    ModifySQL.Strings = (
      'update DOLLAR'
      'set'
      '  NAME = :NAME,'
      '  DINAR = :DINAR,'
      '  DOLLAR = :DOLLAR,'
      '  NUM = :NUM,'
      '  DINAR_VS_DOLLAR = :DINAR_VS_DOLLAR,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  SENDED_TO = :SENDED_TO'
      'where'
      '  NAME = :OLD_NAME and'
      '  DINAR = :OLD_DINAR and'
      '  DOLLAR = :OLD_DOLLAR and'
      '  NUM = :OLD_NUM and'
      '  DINAR_VS_DOLLAR = :OLD_DINAR_VS_DOLLAR and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  SENDED_TO = :OLD_SENDED_TO')
    InsertSQL.Strings = (
      'insert into DOLLAR'
      
        '  (NAME, DINAR, DOLLAR, NUM, DINAR_VS_DOLLAR, INPUT_DATE, SENDED' +
        '_TO)'
      'values'
      
        '  (:NAME, :DINAR, :DOLLAR, :NUM, :DINAR_VS_DOLLAR, :INPUT_DATE, ' +
        ':SENDED_TO)')
    DeleteSQL.Strings = (
      'delete from DOLLAR'
      'where'
      '  NAME = :OLD_NAME and'
      '  DINAR = :OLD_DINAR and'
      '  DOLLAR = :OLD_DOLLAR and'
      '  NUM = :OLD_NUM and'
      '  DINAR_VS_DOLLAR = :OLD_DINAR_VS_DOLLAR and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  SENDED_TO = :OLD_SENDED_TO')
    Left = 80
    Top = 155
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from DOLLAR')
    Left = 16
    Top = 115
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DOLLAR.NAME'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 48
    Top = 115
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(DOLLAR), sum(DINAR) from DOLLAR'
      'where name=:var1')
    Left = 16
    Top = 200
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
    object IBQuery3SUM1: TIBBCDField
      FieldName = 'SUM1'
      Precision = 18
      Size = 3
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 48
    Top = 200
  end
  object IBQuery11: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select distinct(name)  from PAID_TO_CHANGERS where name not in(s' +
        'elect distinct(name) from dollar)')
    Left = 64
    object IBQuery11NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAID_TO_CHANGERS.NAME'
      Required = True
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery11
    Left = 32
  end
  object DataSource5: TDataSource
    DataSet = IBQuery12
    Left = 32
    Top = 32
  end
  object IBQuery12: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery12AfterDelete
    AfterPost = IBQuery12AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID_TO_CHANGERS'
      'where name=:var1')
    UpdateObject = IBUpdateSQL2
    Left = 64
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery12PAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'PAID_TO_CHANGERS.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery12INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID_TO_CHANGERS.INPUT_DATE'
      Required = True
    end
    object IBQuery12NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAID_TO_CHANGERS.NAME'
      Required = True
    end
    object IBQuery12DELIVER_NAME: TIBStringField
      FieldName = 'DELIVER_NAME'
      Origin = 'PAID_TO_CHANGERS.DELIVER_NAME'
      Required = True
    end
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PAID,'
      '  INPUT_DATE,'
      '  NAME,'
      '  DELIVER_NAME'
      'from PAID_TO_CHANGERS '
      'where'
      '  PAID = :PAID and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  NAME = :NAME and'
      '  DELIVER_NAME = :DELIVER_NAME')
    ModifySQL.Strings = (
      'update PAID_TO_CHANGERS'
      'set'
      '  PAID = :PAID,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  NAME = :NAME,'
      '  DELIVER_NAME = :DELIVER_NAME'
      'where'
      '  PAID = :OLD_PAID and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  NAME = :OLD_NAME and'
      '  DELIVER_NAME = :OLD_DELIVER_NAME')
    InsertSQL.Strings = (
      'insert into PAID_TO_CHANGERS'
      '  (PAID, INPUT_DATE, NAME, DELIVER_NAME)'
      'values'
      '  (:PAID, :INPUT_DATE, :NAME, :DELIVER_NAME)')
    DeleteSQL.Strings = (
      'delete from PAID_TO_CHANGERS'
      'where'
      '  PAID = :OLD_PAID and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  NAME = :OLD_NAME and'
      '  DELIVER_NAME = :OLD_DELIVER_NAME')
    Left = 96
    Top = 32
  end
  object DataSource6: TDataSource
    DataSet = IBQuery4
    Left = 152
    Top = 9
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(PAID) from PAID_TO_CHANGERS'
      'where name=:var1')
    Left = 184
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'var1'
        ParamType = ptUnknown
      end>
    object IBQuery4SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource7: TDataSource
    DataSet = transfer_rep
    Left = 336
    Top = 11
  end
  object transfer_rep: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  * from DOLLAR'
      
        'where (name=:var1 ) and (input_date>=:var2) and (input_date<=:va' +
        'r3)'
      'order by input_date')
    Left = 368
    Top = 11
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
    object transfer_repNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DOLLAR.NAME'
      Required = True
    end
    object transfer_repDINAR: TIBBCDField
      FieldName = 'DINAR'
      Origin = 'DOLLAR.DINAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object transfer_repDOLLAR: TIBBCDField
      FieldName = 'DOLLAR'
      Origin = 'DOLLAR.DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object transfer_repNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'DOLLAR.NUM'
      Required = True
    end
    object transfer_repDINAR_VS_DOLLAR: TIBBCDField
      FieldName = 'DINAR_VS_DOLLAR'
      Origin = 'DOLLAR.DINAR_VS_DOLLAR'
      Required = True
      Precision = 9
      Size = 3
    end
    object transfer_repINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'DOLLAR.INPUT_DATE'
      Required = True
    end
    object transfer_repSENDED_TO: TIBStringField
      FieldName = 'SENDED_TO'
      Origin = 'DOLLAR.SENDED_TO'
      Required = True
    end
  end
  object paied_rep: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID_TO_CHANGERS'
      
        'where (name=:var1) and (input_date>=:var2) and (input_date<=:var' +
        '3)')
    Left = 856
    Top = 19
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
    object paied_repPAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'PAID_TO_CHANGERS.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object paied_repINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID_TO_CHANGERS.INPUT_DATE'
      Required = True
    end
    object paied_repNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAID_TO_CHANGERS.NAME'
      Required = True
    end
    object paied_repDELIVER_NAME: TIBStringField
      FieldName = 'DELIVER_NAME'
      Origin = 'PAID_TO_CHANGERS.DELIVER_NAME'
      Required = True
    end
  end
  object DataSource8: TDataSource
    DataSet = paied_rep
    Left = 824
    Top = 19
  end
end
