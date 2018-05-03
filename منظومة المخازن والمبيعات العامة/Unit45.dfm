object Form45: TForm45
  Left = 0
  Top = 20
  Width = 1024
  Height = 711
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1576#1610#1575#1606#1575#1578' '#1575#1604#1585#1581#1604#1575#1578' '#1604#1604#1587#1575#1574#1602#1610#1606' '#1576#1575#1604#1573#1610#1580#1575#1585' '#1608' '#1605#1583#1601#1608#1593#1575#1578#1607#1575
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
    Left = 5
    Top = 8
    Width = 1004
    Height = 657
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 587
      Top = 18
      Width = 23
      Height = 13
      Caption = #1575#1604#1573#1587#1605
    end
    object Label2: TLabel
      Left = 664
      Top = 38
      Width = 64
      Height = 13
      Caption = #1576#1610#1575#1606#1575#1578' '#1575#1604#1585#1581#1604#1575#1578
    end
    object Label3: TLabel
      Left = 142
      Top = 38
      Width = 66
      Height = 13
      Caption = #1576#1610#1575#1606#1575#1578' '#1575#1604#1583#1601#1593#1575#1578
    end
    object DBGrid1: TDBGrid
      Left = 306
      Top = 56
      Width = 690
      Height = 529
      DataSource = DataSource6
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1585#1581#1604#1607
          Width = 109
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1603#1605#1610#1577' '#1575#1604#1588#1581#1606#1607
          Width = 82
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DESERVED'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1605#1587#1578#1581#1602
          Width = 86
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAID'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1605#1583#1601#1608#1593
          Width = 103
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DISTINATION'
          Title.Alignment = taCenter
          Title.Caption = #1605#1603#1575#1606' '#1575#1604#1578#1585#1581#1610#1604
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTES'
          Title.Alignment = taCenter
          Title.Caption = #1605#1604#1575#1581#1592#1575#1578
          Width = 500
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 6
      Top = 56
      Width = 297
      Height = 529
      DataSource = DataSource3
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1583#1601#1593
          Width = 137
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAID'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1602#1610#1605#1607
          Width = 125
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CHNAGE_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1589#1585#1601
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOTES'
          Title.Alignment = taCenter
          Title.Caption = #1605#1604#1575#1581#1592#1575#1578
          Width = 150
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 552
      Top = 592
      Width = 224
      Height = 25
      DataSource = DataSource6
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 2
    end
    object DBNavigator2: TDBNavigator
      Left = 45
      Top = 592
      Width = 224
      Height = 25
      DataSource = DataSource3
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 3
    end
    object Button1: TButton
      Left = 336
      Top = 624
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 4
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 434
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      OnChange = ComboBox1Change
    end
    object Panel2: TPanel
      Left = 347
      Top = 240
      Width = 382
      Height = 169
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 6
      Visible = False
      object Label4: TLabel
        Left = 326
        Top = 80
        Width = 12
        Height = 13
        Caption = #1605#1606
      end
      object Label5: TLabel
        Left = 160
        Top = 80
        Width = 17
        Height = 13
        Caption = #1573#1604#1609
      end
      object RadioButton1: TRadioButton
        Left = 224
        Top = 32
        Width = 113
        Height = 17
        Caption = #1576#1610#1575#1606#1575#1578' '#1575#1604#1585#1581#1604#1575#1578
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 62
        Top = 32
        Width = 113
        Height = 17
        Caption = #1576#1610#1575#1606#1575#1578' '#1575#1604#1583#1601#1593#1575#1578
        TabOrder = 1
      end
      object DateTimePicker1: TDateTimePicker
        Left = 204
        Top = 78
        Width = 119
        Height = 21
        Date = 39283.859475543990000000
        Time = 39283.859475543990000000
        TabOrder = 2
      end
      object DateTimePicker2: TDateTimePicker
        Left = 38
        Top = 79
        Width = 120
        Height = 21
        Date = 39283.859824212970000000
        Time = 39283.859824212970000000
        TabOrder = 3
      end
      object Button3: TButton
        Left = 160
        Top = 128
        Width = 75
        Height = 25
        Caption = #1593#1585#1590
        TabOrder = 4
        OnClick = Button3Click
      end
    end
    object Button2: TButton
      Left = 624
      Top = 624
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      Enabled = False
      TabOrder = 7
      OnClick = Button2Click
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from RENTED_TRUCKS')
    Left = 216
    Top = 16
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'RENTED_TRUCKS.NAME'
      Required = True
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery2AfterDelete
    AfterPost = IBQuery2AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from RENTED_TRUCKS'
      'where name=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 576
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'RENTED_TRUCKS.NAME'
      Required = True
    end
    object IBQuery2QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'RENTED_TRUCKS.QUANTITY'
      Required = True
    end
    object IBQuery2PAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'RENTED_TRUCKS.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2DESERVED: TIBBCDField
      FieldName = 'DESERVED'
      Origin = 'RENTED_TRUCKS.DESERVED'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'RENTED_TRUCKS.INPUT_DATE'
      Required = True
    end
    object IBQuery2DISTINATION: TIBStringField
      FieldName = 'DISTINATION'
      Origin = 'RENTED_TRUCKS.DISTINATION'
      Required = True
      Size = 10
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery3AfterDelete
    AfterPost = IBQuery3AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID_TO_RENTED_TRUCKS'
      'where name=:var1')
    UpdateObject = IBUpdateSQL2
    Left = 8
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery3NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAID_TO_RENTED_TRUCKS.NAME'
      Required = True
    end
    object IBQuery3PAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'PAID_TO_RENTED_TRUCKS.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery3INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID_TO_RENTED_TRUCKS.INPUT_DATE'
      Required = True
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  QUANTITY,'
      '  PAID,'
      '  DESERVED,'
      '  INPUT_DATE'
      'from RENTED_TRUCKS '
      'where'
      '  NAME = :NAME and'
      '  QUANTITY = :QUANTITY and'
      '  PAID = :PAID and'
      '  DESERVED = :DESERVED and'
      '  INPUT_DATE = :INPUT_DATE')
    ModifySQL.Strings = (
      'update RENTED_TRUCKS'
      'set'
      '  NAME = :NAME,'
      '  QUANTITY = :QUANTITY,'
      '  PAID = :PAID,'
      '  DESERVED = :DESERVED,'
      '  INPUT_DATE = :INPUT_DATE'
      'where'
      '  NAME = :OLD_NAME and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  PAID = :OLD_PAID and'
      '  DESERVED = :OLD_DESERVED and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    InsertSQL.Strings = (
      'insert into RENTED_TRUCKS'
      '  (NAME, QUANTITY, PAID, DESERVED, INPUT_DATE)'
      'values'
      '  (:NAME, :QUANTITY, :PAID, :DESERVED, :INPUT_DATE)')
    DeleteSQL.Strings = (
      'delete from RENTED_TRUCKS'
      'where'
      '  NAME = :OLD_NAME and'
      '  QUANTITY = :OLD_QUANTITY and'
      '  PAID = :OLD_PAID and'
      '  DESERVED = :OLD_DESERVED and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    Left = 640
    Top = 16
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  PAID,'
      '  INPUT_DATE'
      'from PAID_TO_RENTED_TRUCKS '
      'where'
      '  NAME = :NAME and'
      '  PAID = :PAID and'
      '  INPUT_DATE = :INPUT_DATE')
    ModifySQL.Strings = (
      'update PAID_TO_RENTED_TRUCKS'
      'set'
      '  NAME = :NAME,'
      '  PAID = :PAID,'
      '  INPUT_DATE = :INPUT_DATE'
      'where'
      '  NAME = :OLD_NAME and'
      '  PAID = :OLD_PAID and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    InsertSQL.Strings = (
      'insert into PAID_TO_RENTED_TRUCKS'
      '  (NAME, PAID, INPUT_DATE)'
      'values'
      '  (:NAME, :PAID, :INPUT_DATE)')
    DeleteSQL.Strings = (
      'delete from PAID_TO_RENTED_TRUCKS'
      'where'
      '  NAME = :OLD_NAME and'
      '  PAID = :OLD_PAID and'
      '  INPUT_DATE = :OLD_INPUT_DATE')
    Left = 40
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 248
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 608
    Top = 16
  end
  object DataSource3: TDataSource
    DataSet = IBTable2
    Left = 152
    Top = 24
  end
  object DataSource4: TDataSource
    DataSet = travel_rep
    Left = 608
    Top = 48
  end
  object DataSource5: TDataSource
    DataSet = pay_rep
    Left = 88
    Top = 48
  end
  object travel_rep: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from RENTED_TRUCKS'
      
        'where (name=:var1) and (input_date>=:var2) and (input_date<=:var' +
        '3)')
    Left = 576
    Top = 48
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
    object travel_repNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'RENTED_TRUCKS.NAME'
      Required = True
    end
    object travel_repQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'RENTED_TRUCKS.QUANTITY'
      Required = True
    end
    object travel_repPAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'RENTED_TRUCKS.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object travel_repDESERVED: TIBBCDField
      FieldName = 'DESERVED'
      Origin = 'RENTED_TRUCKS.DESERVED'
      Required = True
      Precision = 9
      Size = 3
    end
    object travel_repINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'RENTED_TRUCKS.INPUT_DATE'
      Required = True
    end
    object travel_repDISTINATION: TIBStringField
      FieldName = 'DISTINATION'
      Origin = 'RENTED_TRUCKS.DISTINATION'
      Required = True
      Size = 10
    end
  end
  object pay_rep: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAID_TO_RENTED_TRUCKS'
      
        'where (name=:var1) and (input_date>=:var2) and (input_date<=:var' +
        '3)')
    Left = 120
    Top = 48
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
    object pay_repNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAID_TO_RENTED_TRUCKS.NAME'
      Required = True
    end
    object pay_repPAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'PAID_TO_RENTED_TRUCKS.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object pay_repINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAID_TO_RENTED_TRUCKS.INPUT_DATE'
      Required = True
    end
    object pay_repNOTES: TIBStringField
      FieldName = 'NOTES'
      Origin = 'PAID_TO_RENTED_TRUCKS.NOTES'
      Size = 150
    end
    object pay_repCHNAGE_PRICE: TIBStringField
      FieldName = 'CHNAGE_PRICE'
      Origin = 'PAID_TO_RENTED_TRUCKS.CHNAGE_PRICE'
      Size = 10
    end
  end
  object DataSource6: TDataSource
    DataSet = IBTable1
    Left = 693
    Top = 16
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBTable1AfterDelete
    AfterPost = IBTable1AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'RENTED_TRUCKS'
    Left = 728
    Top = 16
    object IBTable1NAME: TIBStringField
      FieldName = 'NAME'
    end
    object IBTable1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object IBTable1PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable1DESERVED: TIBBCDField
      FieldName = 'DESERVED'
      Precision = 9
      Size = 3
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1DISTINATION: TIBStringField
      FieldName = 'DISTINATION'
      Size = 10
    end
    object IBTable1NOTES: TIBStringField
      FieldName = 'NOTES'
      Size = 500
    end
  end
  object IBTable2: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBTable2AfterDelete
    AfterPost = IBTable2AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAID_TO_RENTED_TRUCKS'
    Left = 181
    Top = 24
    object IBTable2NAME: TIBStringField
      FieldName = 'NAME'
    end
    object IBTable2PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable2NOTES: TIBStringField
      FieldName = 'NOTES'
      Size = 150
    end
    object IBTable2CHNAGE_PRICE: TIBStringField
      FieldName = 'CHNAGE_PRICE'
      Size = 10
    end
  end
end
