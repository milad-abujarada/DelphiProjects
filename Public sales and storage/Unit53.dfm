object Form53: TForm53
  Left = 159
  Top = 108
  Width = 804
  Height = 593
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1608#1578#1593#1583#1610#1604' '#1608' '#1587#1583#1575#1583' '#1575#1604#1583#1610#1608#1606
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
    Width = 777
    Height = 545
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel3: TPanel
      Left = 21
      Top = 9
      Width = 380
      Height = 496
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object Label2: TLabel
        Left = 101
        Top = 8
        Width = 147
        Height = 13
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1608' '#1587#1583#1575#1583' '#1583#1610#1606' '#1604#1588#1582#1589
      end
      object Label4: TLabel
        Left = 248
        Top = 30
        Width = 23
        Height = 13
        Caption = #1575#1604#1573#1587#1605
      end
      object Label3: TLabel
        Left = 315
        Top = 428
        Width = 58
        Height = 13
        Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1583#1610#1606
      end
      object Label5: TLabel
        Left = 125
        Top = 428
        Width = 59
        Height = 13
        Caption = #1602#1610#1605#1577' '#1575#1604#1605#1587#1583#1583#1607
      end
      object DBGrid2: TDBGrid
        Left = 37
        Top = 48
        Width = 285
        Height = 341
        DataSource = DataSource2
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
            FieldName = 'DEBT_VALUE'
            Title.Alignment = taCenter
            Title.Caption = #1602#1610#1605#1577' '#1575#1604#1583#1610#1606
            Width = 99
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'INPUT_DATE'
            Title.Alignment = taCenter
            Title.Caption = #1575#1604#1578#1575#1585#1610#1582
            Width = 130
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 72
        Top = 392
        Width = 224
        Height = 25
        DataSource = DataSource2
        VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 1
      end
      object ComboBox1: TComboBox
        Left = 96
        Top = 24
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        OnChange = ComboBox1Change
      end
      object Edit1: TEdit
        Left = 189
        Top = 424
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object Edit2: TEdit
        Left = 2
        Top = 424
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object Button2: TButton
        Left = 152
        Top = 464
        Width = 75
        Height = 25
        Caption = #1587#1583#1575#1583
        TabOrder = 5
        OnClick = Button2Click
      end
    end
    object Button1: TButton
      Left = 376
      Top = 512
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 432
    Top = 19
    Width = 338
    Height = 493
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 128
      Top = 16
      Width = 80
      Height = 13
      Caption = #1593#1585#1590' '#1580#1605#1610#1593' '#1575#1604#1583#1610#1608#1606
    end
    object Label6: TLabel
      Left = 216
      Top = 416
      Width = 64
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1583#1610#1608#1606
    end
    object DBGrid1: TDBGrid
      Left = 31
      Top = 35
      Width = 283
      Height = 358
      DataSource = DataSource1
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
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1573#1587#1605
          Width = 105
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DEBT_VALUE'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1577' '#1575#1604#1583#1610#1606
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 94
          Visible = True
        end>
    end
    object Edit3: TEdit
      Left = 91
      Top = 410
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Button3: TButton
      Left = 152
      Top = 456
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 2
      OnClick = Button3Click
    end
    object Panel4: TPanel
      Left = 25
      Top = 160
      Width = 297
      Height = 177
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 3
      Visible = False
      object Label7: TLabel
        Left = 278
        Top = 48
        Width = 12
        Height = 13
        Caption = #1605#1606
      end
      object Label8: TLabel
        Left = 127
        Top = 50
        Width = 17
        Height = 13
        Caption = #1573#1604#1609
      end
      object DateTimePicker1: TDateTimePicker
        Left = 161
        Top = 46
        Width = 115
        Height = 21
        Date = 39333.803221747690000000
        Time = 39333.803221747690000000
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 7
        Top = 47
        Width = 115
        Height = 21
        Date = 39333.803303125000000000
        Time = 39333.803303125000000000
        TabOrder = 1
      end
      object Button4: TButton
        Left = 128
        Top = 120
        Width = 75
        Height = 25
        Caption = #1591#1576#1575#1593#1607
        TabOrder = 2
        OnClick = Button4Click
      end
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from REGULAR_DEBT')
    Left = 688
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 656
    Top = 24
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery2AfterDelete
    AfterPost = IBQuery2AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from REGULAR_DEBT'
      'where name=:var1')
    UpdateObject = IBUpdateSQL1
    Left = 341
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 312
    Top = 16
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  INPUT_DATE,'
      '  DEBT_VALUE'
      'from REGULAR_DEBT '
      'where'
      '  NAME = :NAME and'
      '  INPUT_DATE = :INPUT_DATE and'
      '  DEBT_VALUE = :DEBT_VALUE')
    ModifySQL.Strings = (
      'update REGULAR_DEBT'
      'set'
      '  NAME = :NAME,'
      '  INPUT_DATE = :INPUT_DATE,'
      '  DEBT_VALUE = :DEBT_VALUE'
      'where'
      '  NAME = :OLD_NAME and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  DEBT_VALUE = :OLD_DEBT_VALUE')
    InsertSQL.Strings = (
      'insert into REGULAR_DEBT'
      '  (NAME, INPUT_DATE, DEBT_VALUE)'
      'values'
      '  (:NAME, :INPUT_DATE, :DEBT_VALUE)')
    DeleteSQL.Strings = (
      'delete from REGULAR_DEBT'
      'where'
      '  NAME = :OLD_NAME and'
      '  INPUT_DATE = :OLD_INPUT_DATE and'
      '  DEBT_VALUE = :OLD_DEBT_VALUE')
    Left = 376
    Top = 16
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 309
    Top = 48
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(NAME) from REGULAR_DEBT')
    Left = 341
    Top = 48
    object IBQuery3NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'REGULAR_DEBT.NAME'
      Required = True
      Size = 30
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 448
    Top = 19
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(DEBT_VALUE) from REGULAR_DEBT')
    Left = 488
    Top = 19
    object IBQuery4SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Left = 37
    Top = 17
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(DEBT_VALUE) from REGULAR_DEBT'
      'where name=:var1')
    Left = 69
    Top = 17
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery5SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource6: TDataSource
    DataSet = IBQuery6
    Left = 537
    Top = 491
  end
  object IBQuery6: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from REGULAR_DEBT'
      'where (input_date>=:var1) and (input_date<=:var2)')
    Left = 504
    Top = 491
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
    object IBQuery6NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'REGULAR_DEBT.NAME'
      Required = True
      Size = 30
    end
    object IBQuery6INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'REGULAR_DEBT.INPUT_DATE'
      Required = True
    end
    object IBQuery6DEBT_VALUE: TIBBCDField
      FieldName = 'DEBT_VALUE'
      Origin = 'REGULAR_DEBT.DEBT_VALUE'
      Required = True
      Precision = 9
      Size = 3
    end
  end
end
