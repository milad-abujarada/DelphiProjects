object Form58: TForm58
  Left = 206
  Top = 36
  Width = 623
  Height = 699
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1593#1605#1604#1610#1575#1578' '#1575#1604#1587#1583#1575#1583' '#1604#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607
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
    Width = 601
    Height = 649
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 372
      Top = 21
      Width = 63
      Height = 13
      Caption = #1605#1603#1575#1606' '#1575#1604#1605#1576#1610#1593#1575#1578
    end
    object Label2: TLabel
      Left = 518
      Top = 576
      Width = 73
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1576#1610#1593#1575#1578
    end
    object Label5: TLabel
      Left = 300
      Top = 578
      Width = 83
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1583#1601#1608#1593#1575#1578
    end
    object Label6: TLabel
      Left = 129
      Top = 581
      Width = 34
      Height = 13
      Caption = #1575#1604#1605#1578#1576#1602#1609
    end
    object ComboBox1: TComboBox
      Left = 219
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object DBGrid1: TDBGrid
      Left = 64
      Top = 48
      Width = 489
      Height = 457
      DataSource = DataSource2
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAID'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1602#1610#1605#1577' '#1575#1604#1605#1583#1601#1608#1593#1607
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'pay_type'
          Title.Alignment = taCenter
          Title.Caption = #1603#1610#1601#1610#1577' '#1575#1604#1583#1601#1593
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
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BAYAN'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1576#1610#1575#1606
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'REMAINING'
          Visible = False
        end>
    end
    object Button1: TButton
      Left = 193
      Top = 616
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 391
      Top = 573
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Button2: TButton
      Left = 369
      Top = 616
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      Enabled = False
      TabOrder = 4
      OnClick = Button2Click
    end
    object Panel2: TPanel
      Left = 155
      Top = 160
      Width = 318
      Height = 161
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 5
      Visible = False
      object Label3: TLabel
        Left = 292
        Top = 40
        Width = 12
        Height = 13
        Caption = #1605#1606
      end
      object Label4: TLabel
        Left = 140
        Top = 42
        Width = 17
        Height = 13
        Caption = #1573#1604#1609
      end
      object DateTimePicker1: TDateTimePicker
        Left = 166
        Top = 40
        Width = 124
        Height = 21
        Date = 39283.645562060190000000
        Time = 39283.645562060190000000
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 9
        Top = 40
        Width = 126
        Height = 21
        Date = 39283.645748506950000000
        Time = 39283.645748506950000000
        TabOrder = 1
      end
      object Button3: TButton
        Left = 124
        Top = 112
        Width = 75
        Height = 25
        Caption = #1591#1576#1575#1593#1607
        TabOrder = 2
        OnClick = Button3Click
      end
    end
    object Edit2: TEdit
      Left = 170
      Top = 576
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 5
      Top = 576
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
    object DBNavigator1: TDBNavigator
      Left = 208
      Top = 512
      Width = 224
      Height = 25
      DataSource = DataSource2
      VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 8
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 40
    Top = 16
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(PLACE) from MOVED_STORGE')
    Left = 72
    Top = 16
    object IBQuery1PLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'PAIED_FROM_MOVED_STORGE.PLACE'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = IBTable1
    Left = 40
    Top = 48
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 40
    Top = 80
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(paid),sum(remaining) from PAIED_TO_MOVED_STORGE'
      'where place =:var1')
    Left = 72
    Top = 80
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
  object DataSource4: TDataSource
    DataSet = IBQuery_rep
    Left = 40
    Top = 112
  end
  object IBQuery_rep: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    OnCalcFields = IBQuery_repCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select paid , num , input_date,bayan from PAIED_TO_MOVED_STORGE'
      
        'where (place =:var1) and (input_date>=:var2) and (input_date<=:v' +
        'ar3)')
    Left = 72
    Top = 112
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
    object IBQuery_repPAID: TIBBCDField
      FieldName = 'PAID'
      Origin = 'PAIED_TO_MOVED_STORGE.PAID'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery_repNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'PAIED_TO_MOVED_STORGE.NUM'
      Required = True
    end
    object IBQuery_reppay_type: TStringField
      FieldKind = fkCalculated
      FieldName = 'pay_type'
      Calculated = True
    end
    object IBQuery_repINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAIED_TO_MOVED_STORGE.INPUT_DATE'
      Required = True
    end
    object IBQuery_repBAYAN: TIBStringField
      FieldName = 'BAYAN'
      Origin = 'PAIED_TO_MOVED_STORGE.BAYAN'
      Size = 100
    end
  end
  object IBTable1: TIBTable
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBTable1AfterDelete
    AfterPost = IBTable1AfterPost
    BeforePost = IBTable1BeforePost
    OnCalcFields = IBTable1CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PAIED_TO_MOVED_STORGE'
    Left = 72
    Top = 48
    object IBTable1PAID: TIBBCDField
      FieldName = 'PAID'
      Precision = 9
      Size = 3
    end
    object IBTable1REMAINING: TIBBCDField
      FieldName = 'REMAINING'
      Precision = 9
      Size = 3
    end
    object IBTable1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
    end
    object IBTable1NUM: TIntegerField
      FieldName = 'NUM'
    end
    object IBTable1PLACE: TIBStringField
      FieldName = 'PLACE'
    end
    object IBTable1BAYAN: TIBStringField
      FieldName = 'BAYAN'
      Size = 100
    end
    object IBTable1pay_type: TStringField
      FieldKind = fkCalculated
      FieldName = 'pay_type'
      Calculated = True
    end
  end
end
