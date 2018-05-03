object Form5: TForm5
  Left = 1
  Top = 6
  Width = 1022
  Height = 731
  Align = alClient
  BiDiMode = bdRightToLeft
  BorderIcons = []
  Caption = #1605#1606#1592#1608#1605#1577' '#1575#1604#1605#1582#1575#1586#1606' '#1608' '#1575#1604#1605#1576#1610#1593#1575#1578
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
  object Panel3: TPanel
    Left = 52
    Top = 8
    Width = 913
    Height = 521
    BevelInner = bvLowered
    TabOrder = 2
    Visible = False
    object Label12: TLabel
      Left = 420
      Top = 16
      Width = 30
      Height = 13
      Caption = #1575#1604#1605#1582#1586#1606
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 80
      Width = 897
      Height = 393
      BiDiMode = bdRightToLeft
      DataSource = DataSource1
      ParentBiDiMode = False
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
          FieldName = 'ST_KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 187
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ST_TYPE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 205
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ST_QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1573#1580#1605#1575#1604#1610#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ST_AVAILBLE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1578#1608#1601#1585#1577
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ST_TYPE_PAY'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1588#1585#1575#1569' '#1575#1604#1608#1581#1583#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ST_TYPE_SALE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1576#1610#1593' '#1575#1604#1608#1581#1583#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ST_STORED_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1588#1585#1575#1569
          Width = 93
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SHELF_NO'
          Title.Alignment = taCenter
          Title.Caption = #1585#1602#1605' '#1575#1604#1585#1601
          Visible = True
        end>
    end
    object BitBtn9: TBitBtn
      Left = 330
      Top = 482
      Width = 128
      Height = 26
      Caption = #1578#1593#1583#1610#1604' '#1587#1593#1585' '#1588#1585#1575#1569' '#1589#1606#1601
      Enabled = False
      TabOrder = 1
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 460
      Top = 482
      Width = 128
      Height = 26
      Caption = #1578#1593#1583#1610#1604' '#1587#1593#1585' '#1575#1604#1576#1610#1593
      Enabled = False
      TabOrder = 2
      OnClick = BitBtn10Click
    end
    object BitBtn17: TBitBtn
      Left = 720
      Top = 482
      Width = 129
      Height = 26
      Caption = #1573#1583#1582#1575#1604' '#1576#1590#1575#1593#1577' '#1604#1604#1605#1582#1586#1606
      TabOrder = 3
      OnClick = BitBtn17Click
    end
    object BitBtn2: TBitBtn
      Left = 74
      Top = 483
      Width = 125
      Height = 25
      Caption = #1573#1604#1594#1575#1569' '#1605#1606' '#1575#1604#1605#1582#1586#1606
      Enabled = False
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object Panel5: TPanel
      Left = 133
      Top = 36
      Width = 649
      Height = 37
      BevelInner = bvRaised
      TabOrder = 5
      object Label20: TLabel
        Left = 581
        Top = 12
        Width = 59
        Height = 13
        Caption = #1575#1604#1576#1581#1579' '#1575#1604#1587#1585#1610#1593
      end
      object Label19: TLabel
        Left = 218
        Top = 12
        Width = 23
        Height = 13
        Caption = #1575#1604#1606#1608#1593
      end
      object Label14: TLabel
        Left = 450
        Top = 12
        Width = 28
        Height = 13
        Caption = #1575#1604#1589#1606#1601
      end
      object ComboBox4: TComboBox
        Left = 315
        Top = 8
        Width = 122
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = ComboBox4Change
      end
      object Edit5: TEdit
        Left = 80
        Top = 7
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = Edit5Change
      end
    end
    object BitBtn6: TBitBtn
      Left = 202
      Top = 483
      Width = 125
      Height = 25
      Caption = #1578#1593#1583#1610#1604' '#1585#1602#1605' '#1575#1604#1585#1601
      Enabled = False
      TabOrder = 6
      OnClick = BitBtn6Click
    end
    object BitBtn12: TBitBtn
      Left = 590
      Top = 483
      Width = 127
      Height = 25
      Caption = #1593#1585#1590' '#1576#1590#1575#1593#1577' '#1585#1601
      TabOrder = 7
      OnClick = BitBtn12Click
    end
  end
  object Panel6: TPanel
    Left = 386
    Top = 529
    Width = 269
    Height = 173
    TabOrder = 4
    Visible = False
    object Label15: TLabel
      Left = 89
      Top = 16
      Width = 100
      Height = 13
      Caption = #1578#1593#1583#1610#1604' '#1587#1593#1585' '#1588#1585#1575#1569' '#1589#1606#1601
    end
    object Label16: TLabel
      Left = 160
      Top = 69
      Width = 82
      Height = 13
      Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569' '#1575#1604#1580#1583#1610#1583
    end
    object BitBtn8: TBitBtn
      Left = 92
      Top = 118
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 0
      OnClick = BitBtn8Click
    end
    object Edit6: TEdit
      Left = 32
      Top = 66
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 1
      OnKeyPress = Edit6KeyPress
    end
  end
  object Panel7: TPanel
    Left = 389
    Top = 530
    Width = 265
    Height = 172
    TabOrder = 5
    Visible = False
    object Label17: TLabel
      Left = 95
      Top = 15
      Width = 73
      Height = 13
      Caption = #1578#1593#1583#1610#1604' '#1587#1593#1585#1575#1604#1576#1610#1593' '
    end
    object Label18: TLabel
      Left = 172
      Top = 55
      Width = 56
      Height = 13
      Caption = #1575#1604#1587#1593#1585' '#1575#1604#1580#1583#1610#1583
    end
    object RadioButton1: TRadioButton
      Left = 128
      Top = 96
      Width = 129
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = #1578#1593#1583#1610#1604' '#1575#1604#1575#1580#1605#1575#1604#1609' '#1575#1604#1605#1608#1580#1608#1583
      ParentBiDiMode = False
      TabOrder = 0
    end
    object Edit7: TEdit
      Left = 37
      Top = 52
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 1
      OnKeyPress = Edit7KeyPress
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 96
      Width = 113
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = #1578#1593#1583#1610#1604' '#1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1582#1578#1575#1585#1577
      ParentBiDiMode = False
      TabOrder = 2
    end
    object BitBtn11: TBitBtn
      Left = 103
      Top = 136
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 3
      OnClick = BitBtn11Click
    end
  end
  object Panel8: TPanel
    Left = 387
    Top = 530
    Width = 267
    Height = 171
    TabOrder = 7
    Visible = False
    object Label13: TLabel
      Left = 104
      Top = 16
      Width = 68
      Height = 13
      Caption = #1578#1593#1583#1610#1604' '#1585#1602#1605' '#1575#1604#1585#1601
    end
    object Label26: TLabel
      Left = 175
      Top = 59
      Width = 69
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1585#1601' '#1575#1604#1580#1583#1610#1583
    end
    object Edit12: TEdit
      Left = 48
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object BitBtn7: TBitBtn
      Left = 96
      Top = 120
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 1
      OnClick = BitBtn7Click
    end
  end
  object Panel2: TPanel
    Left = 288
    Top = 184
    Width = 513
    Height = 225
    BevelInner = bvLowered
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 1
    Visible = False
    object Label7: TLabel
      Left = 427
      Top = 78
      Width = 58
      Height = 13
      Caption = #1575#1587#1605' '#1575#1604#1605#1578#1589#1585#1601
    end
    object Label8: TLabel
      Left = 211
      Top = 75
      Width = 57
      Height = 13
      Caption = #1587#1576#1576' '#1575#1604#1578#1589#1585#1601
    end
    object Label9: TLabel
      Left = 447
      Top = 116
      Width = 25
      Height = 13
      Caption = #1575#1604#1605#1576#1604#1594
    end
    object Label10: TLabel
      Left = 223
      Top = 118
      Width = 31
      Height = 13
      Caption = #1575#1604#1578#1575#1585#1610#1582
    end
    object Label11: TLabel
      Left = 237
      Top = 41
      Width = 49
      Height = 13
      Caption = #1575#1604#1605#1589#1585#1608#1601#1575#1578
    end
    object Edit1: TEdit
      Left = 283
      Top = 72
      Width = 131
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 73
      Top = 70
      Width = 132
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 285
      Top = 112
      Width = 130
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object BitBtn3: TBitBtn
      Left = 260
      Top = 190
      Width = 75
      Height = 25
      Caption = #1605#1608#1575#1601#1602
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 172
      Top = 190
      Width = 75
      Height = 25
      Caption = #1580#1583#1610#1583
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object DateTimePicker3: TDateTimePicker
      Left = 74
      Top = 112
      Width = 132
      Height = 21
      BiDiMode = bdRightToLeft
      Date = 38791.942238495370000000
      Time = 38791.942238495370000000
      ParentBiDiMode = False
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 272
    Top = 184
    Width = 545
    Height = 225
    BevelInner = bvLowered
    TabOrder = 0
    Visible = False
    object Label2: TLabel
      Left = 436
      Top = 76
      Width = 48
      Height = 13
      Caption = #1575#1587#1605' '#1575#1604#1589#1606#1601
    end
    object Label3: TLabel
      Left = 205
      Top = 75
      Width = 43
      Height = 13
      Caption = #1575#1587#1605' '#1575#1604#1606#1608#1593
    end
    object Label4: TLabel
      Left = 194
      Top = 122
      Width = 57
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1578#1575#1604#1601#1577
    end
    object Label6: TLabel
      Left = 240
      Top = 16
      Width = 65
      Height = 13
      Caption = #1575#1604#1605#1582#1586#1608#1606' '#1575#1604#1578#1575#1604#1601
    end
    object Label1: TLabel
      Left = 430
      Top = 126
      Width = 68
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1578#1608#1601#1585#1577
    end
    object Edit4: TEdit
      Left = 40
      Top = 117
      Width = 145
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      OnKeyPress = Edit4KeyPress
    end
    object ComboBox2: TComboBox
      Left = 272
      Top = 72
      Width = 145
      Height = 21
      BiDiMode = bdRightToLeft
      ItemHeight = 13
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = ComboBox2Click
    end
    object ComboBox3: TComboBox
      Left = 40
      Top = 72
      Width = 145
      Height = 21
      BiDiMode = bdRightToLeft
      ItemHeight = 13
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = ComboBox3Click
    end
    object BitBtn1: TBitBtn
      Left = 224
      Top = 176
      Width = 75
      Height = 25
      Caption = #1605#1608#1575#1601#1602
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object Edit13: TEdit
      Left = 272
      Top = 118
      Width = 145
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object Panel4: TPanel
    Left = 8
    Top = 624
    Width = 185
    Height = 41
    TabOrder = 3
    object BitBtn5: TBitBtn
      Left = 24
      Top = 8
      Width = 129
      Height = 25
      Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1587#1610#1577
      TabOrder = 0
      OnClick = BitBtn5Click
    end
  end
  object Panel9: TPanel
    Left = 124
    Top = 176
    Width = 761
    Height = 233
    BevelInner = bvLowered
    TabOrder = 6
    Visible = False
    object Label21: TLabel
      Left = 655
      Top = 43
      Width = 48
      Height = 13
      Caption = #1575#1587#1605' '#1575#1604#1589#1606#1601
    end
    object Label22: TLabel
      Left = 658
      Top = 83
      Width = 43
      Height = 13
      Caption = #1575#1587#1605' '#1575#1604#1606#1608#1593
    end
    object Label23: TLabel
      Left = 646
      Top = 120
      Width = 67
      Height = 13
      Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1575#1580#1605#1575#1604#1610#1577
    end
    object Label24: TLabel
      Left = 249
      Top = 44
      Width = 79
      Height = 13
      Caption = #1587#1593#1585' '#1588#1585#1575#1569' '#1575#1604#1608#1581#1583#1577
    end
    object Label25: TLabel
      Left = 256
      Top = 80
      Width = 71
      Height = 13
      Caption = #1587#1593#1585' '#1576#1610#1593' '#1575#1604#1608#1581#1583#1577
    end
    object Label27: TLabel
      Left = 272
      Top = 120
      Width = 57
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1575#1604#1588#1585#1575#1569
    end
    object Label28: TLabel
      Left = 328
      Top = 8
      Width = 87
      Height = 13
      Caption = #1573#1582#1575#1604' '#1576#1590#1575#1593#1577' '#1604#1604#1605#1582#1586#1606
    end
    object Label5: TLabel
      Left = 664
      Top = 153
      Width = 39
      Height = 13
      Caption = #1585#1602#1605' '#1575#1604#1585#1601
    end
    object Edit9: TEdit
      Left = 488
      Top = 116
      Width = 143
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
    end
    object Edit10: TEdit
      Left = 92
      Top = 39
      Width = 141
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 1
      OnKeyPress = Edit10KeyPress
    end
    object Edit11: TEdit
      Left = 92
      Top = 76
      Width = 141
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 2
      OnKeyPress = Edit11KeyPress
    end
    object DateTimePicker2: TDateTimePicker
      Left = 91
      Top = 112
      Width = 148
      Height = 21
      BiDiMode = bdRightToLeft
      Date = 38789.754941585650000000
      Time = 38789.754941585650000000
      ParentBiDiMode = False
      TabOrder = 3
    end
    object ComboBox5: TComboBox
      Left = 488
      Top = 40
      Width = 145
      Height = 21
      BiDiMode = bdRightToLeft
      ItemHeight = 13
      ParentBiDiMode = False
      TabOrder = 4
      OnClick = ComboBox5Click
    end
    object ComboBox6: TComboBox
      Left = 488
      Top = 79
      Width = 145
      Height = 21
      BiDiMode = bdRightToLeft
      ItemHeight = 13
      ParentBiDiMode = False
      TabOrder = 5
    end
    object BitBtn14: TBitBtn
      Left = 437
      Top = 186
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 6
      OnClick = BitBtn14Click
    end
    object BitBtn15: TBitBtn
      Left = 349
      Top = 186
      Width = 75
      Height = 25
      Caption = #1580#1583#1610#1583
      TabOrder = 7
      OnClick = BitBtn15Click
    end
    object BitBtn16: TBitBtn
      Left = 255
      Top = 186
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 8
      OnClick = BitBtn16Click
    end
    object Edit8: TEdit
      Left = 489
      Top = 146
      Width = 142
      Height = 21
      TabOrder = 9
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 328
  end
  object Query1: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      'order by st_stored_date')
    Left = 48
    Top = 328
    object Query1ST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query1ST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query1ST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query1ST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query1ST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query1ST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query1ST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query1ST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query1SHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query1NO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object Query_serial: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge')
    Left = 952
    Top = 320
    object Query_serialST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_serialST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_serialST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_serialST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_serialST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_serialST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_serialST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_serialST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_serialSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query_serial
    Left = 920
    Top = 320
  end
  object Query_edit_quantity: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      
        'where ((st_kind=:var1 and st_type=:var2) and (st_quantity =:var3' +
        ' and st_availble=:var4 )and (st_type_pay=:var5 and st_type_sale=' +
        ':var6 )and (st_stored_date=:var8))')
    Left = 952
    Top = 424
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
        DataType = ftFloat
        Name = 'var5'
        ParamType = ptInputOutput
      end
      item
        DataType = ftFloat
        Name = 'var6'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var8'
        ParamType = ptInputOutput
      end>
    object Query_edit_quantityST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_edit_quantityST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_edit_quantityST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_edit_quantityST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_edit_quantityST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_edit_quantityST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_edit_quantityST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_edit_quantityST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_edit_quantitySHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query_edit_quantity
    Left = 920
    Top = 424
  end
  object Query_edit_buy_price: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      
        'where ((st_kind=:var1 and st_type=:var2) and (st_quantity =:var3' +
        ' and st_availble=:var4 )and (st_type_pay=:var5 and st_type_sale=' +
        ':var6 )and ( st_stored_date=:var8))'
      '')
    Left = 48
    Top = 360
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
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'var5'
        ParamType = ptInputOutput
      end
      item
        DataType = ftFloat
        Name = 'var6'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var8'
        ParamType = ptInputOutput
      end>
    object Query_edit_buy_priceST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_edit_buy_priceST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_edit_buy_priceST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_edit_buy_priceST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_edit_buy_priceST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_edit_buy_priceST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_edit_buy_priceST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_edit_buy_priceST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_edit_buy_priceSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_edit_buy_priceNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query_edit_buy_price
    Left = 16
    Top = 360
  end
  object DataSource5: TDataSource
    DataSet = Query_edit_sale_price
    Left = 16
    Top = 424
  end
  object Query_edit_sale_price: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      'where'
      'st_type=:var1 and st_kind=:var2;')
    Left = 47
    Top = 424
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
    object Query_edit_sale_priceST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_edit_sale_priceST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_edit_sale_priceST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_edit_sale_priceST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_edit_sale_priceST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_edit_sale_priceST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_edit_sale_priceST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_edit_sale_priceST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_edit_sale_priceSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_edit_sale_priceNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object Query_edit_sale_not_all_quantity: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      
        'where ((st_kind=:var1 and st_type=:var2) and (st_quantity =:var3' +
        ' and st_availble=:var4 )and (st_type_pay=:var5 and st_type_sale=' +
        ':var6 )and (st_stored_date=:var8))'
      ''
      '')
    Left = 48
    Top = 520
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
        DataType = ftFloat
        Name = 'var5'
        ParamType = ptInputOutput
      end
      item
        DataType = ftFloat
        Name = 'var6'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var8'
        ParamType = ptInputOutput
      end>
    object Query_edit_sale_not_all_quantityST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_edit_sale_not_all_quantityST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_edit_sale_not_all_quantityST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_edit_sale_not_all_quantityST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_edit_sale_not_all_quantityST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_edit_sale_not_all_quantityST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_edit_sale_not_all_quantityST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_edit_sale_not_all_quantityST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_edit_sale_not_all_quantitySHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_edit_sale_not_all_quantityNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object DataSource6: TDataSource
    DataSet = Query_edit_sale_not_all_quantity
    Left = 14
    Top = 520
  end
  object Query_edit_hole_sale_not_all_quantity: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      
        'where ((st_kind=:var1 and st_type=:var2) and (st_quantity =:var3' +
        ' and st_availble=:var4 )and (st_type_pay=:var5 and st_type_sale=' +
        ':var6 )and ( st_stored_date=:var8))'
      ''
      ''
      '')
    Left = 48
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
        DataType = ftFloat
        Name = 'var5'
        ParamType = ptInputOutput
      end
      item
        DataType = ftFloat
        Name = 'var6'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var8'
        ParamType = ptInputOutput
      end>
    object Query_edit_hole_sale_not_all_quantityST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_edit_hole_sale_not_all_quantityST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_edit_hole_sale_not_all_quantityST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_edit_hole_sale_not_all_quantityST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_edit_hole_sale_not_all_quantityST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_edit_hole_sale_not_all_quantityST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_edit_hole_sale_not_all_quantityST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_edit_hole_sale_not_all_quantityST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_edit_hole_sale_not_all_quantitySHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_edit_hole_sale_not_all_quantityNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object Query_edit_hole_sale_price: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      'where'
      'st_type=:var1 and st_kind=:var2;')
    Left = 48
    Top = 488
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
    object Query_edit_hole_sale_priceST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_edit_hole_sale_priceST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_edit_hole_sale_priceST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_edit_hole_sale_priceST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_edit_hole_sale_priceST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_edit_hole_sale_priceST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_edit_hole_sale_priceST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_edit_hole_sale_priceST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_edit_hole_sale_priceSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_edit_hole_sale_priceNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object DataSource7: TDataSource
    DataSet = Query_edit_hole_sale_not_all_quantity
    Left = 16
    Top = 456
  end
  object DataSource8: TDataSource
    DataSet = Query_edit_hole_sale_price
    Left = 16
    Top = 488
  end
  object DataSource9: TDataSource
    DataSet = Query_input_to_storge
    Left = 920
    Top = 536
  end
  object Query_input_to_storge: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge')
    Left = 952
    Top = 536
    object Query_input_to_storgeST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_input_to_storgeST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_input_to_storgeST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_input_to_storgeST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_input_to_storgeST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_input_to_storgeST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_input_to_storgeST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_input_to_storgeST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_input_to_storgeSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_input_to_storgeNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object Query_bring_kinds: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from kinds')
    Left = 952
    Top = 256
    object Query_bring_kindsKIND_NO: TIntegerField
      FieldName = 'KIND_NO'
      Origin = 'ST.KINDS.KIND_NO'
    end
    object Query_bring_kindsKINDS_NAME: TStringField
      FieldName = 'KINDS_NAME'
      Origin = 'ST.KINDS.KINDS_NAME'
      Size = 50
    end
    object Query_bring_kindsKINDS_NOSTS: TStringField
      FieldName = 'KINDS_NOSTS'
      Origin = 'ST.KINDS.KINDS_NOSTS'
      Size = 100
    end
  end
  object Query_bring_types: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from types'
      'where type_kind=:var1'
      'order by  type_name')
    Left = 952
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_bring_typesTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'BIG_CARS.TYPES.TYPE_NO'
    end
    object Query_bring_typesTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query_bring_typesTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'BIG_CARS.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query_bring_typesTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'BIG_CARS.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object DataSource10: TDataSource
    DataSet = Query_bring_kinds
    Left = 919
    Top = 258
  end
  object DataSource11: TDataSource
    DataSet = Query_bring_types
    Left = 920
    Top = 352
  end
  object DataSource12: TDataSource
    DataSet = Query_enter_spend
    Left = 920
    Top = 384
  end
  object Query_enter_spend: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from spend')
    Left = 952
    Top = 384
    object Query_enter_spendSP_NO: TIntegerField
      FieldName = 'SP_NO'
      Origin = 'ST.SPEND.SP_NO'
    end
    object Query_enter_spendSP_NAME: TStringField
      FieldName = 'SP_NAME'
      Origin = 'ST.SPEND.SP_NAME'
      Size = 50
    end
    object Query_enter_spendSP_CAUSE: TStringField
      FieldName = 'SP_CAUSE'
      Origin = 'ST.SPEND.SP_CAUSE'
      Size = 50
    end
    object Query_enter_spendSP_AMOUNT: TFloatField
      FieldName = 'SP_AMOUNT'
      Origin = 'ST.SPEND.SP_AMOUNT'
    end
    object Query_enter_spendSP_DATE: TStringField
      FieldName = 'SP_DATE'
      Origin = 'ST.SPEND.SP_DATE'
      Size = 10
    end
  end
  object DataSource13: TDataSource
    DataSet = Query_bring_kinds_for_gobad
    Left = 920
    Top = 288
  end
  object Query_bring_kinds_for_gobad: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from kinds')
    Left = 952
    Top = 288
    object Query_bring_kinds_for_gobadKIND_NO: TIntegerField
      FieldName = 'KIND_NO'
      Origin = 'ST.KINDS.KIND_NO'
    end
    object Query_bring_kinds_for_gobadKINDS_NAME: TStringField
      FieldName = 'KINDS_NAME'
      Origin = 'ST.KINDS.KINDS_NAME'
      Size = 50
    end
    object Query_bring_kinds_for_gobadKINDS_NOSTS: TStringField
      FieldName = 'KINDS_NOSTS'
      Origin = 'ST.KINDS.KINDS_NOSTS'
      Size = 100
    end
  end
  object Query_types_for_gobad: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from types'
      'where'
      'type_kind=:var1'
      'order by type_name')
    Left = 952
    Top = 472
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_types_for_gobadTYPE_NO: TIntegerField
      FieldName = 'TYPE_NO'
      Origin = 'BIG_CARS.TYPES.TYPE_NO'
    end
    object Query_types_for_gobadTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.TYPES.TYPE_NAME'
      Size = 50
    end
    object Query_types_for_gobadTYPE_NOTES: TStringField
      FieldName = 'TYPE_NOTES'
      Origin = 'BIG_CARS.TYPES.TYPE_NOTES'
      Size = 100
    end
    object Query_types_for_gobadTYPE_KIND: TStringField
      FieldName = 'TYPE_KIND'
      Origin = 'BIG_CARS.TYPES.TYPE_KIND'
      Size = 50
    end
  end
  object DataSource14: TDataSource
    DataSet = Query_types_for_gobad
    Left = 920
    Top = 472
  end
  object Query_availble_for_gobad: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select sum(st_availble) from storge'
      'where ((st_kind=:var1) and (st_type=:var2))')
    Left = 952
    Top = 504
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
    object Query_availble_for_gobadSUM: TIntegerField
      FieldName = 'SUM'
    end
  end
  object DataSource15: TDataSource
    DataSet = Query_availble_for_gobad
    Left = 920
    Top = 504
  end
  object Query_discount_because_dameged: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      'where'
      'st_kind=:var1 and st_type=:var2;')
    Left = 48
    Top = 392
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
    object Query_discount_because_damegedST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_discount_because_damegedST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_discount_because_damegedST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_discount_because_damegedST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_discount_because_damegedST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_discount_because_damegedST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_discount_because_damegedST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_discount_because_damegedST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_discount_because_damegedSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_discount_because_damegedNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object DataSource16: TDataSource
    DataSet = Query_discount_because_dameged
    Left = 16
    Top = 392
  end
  object DataSource17: TDataSource
    DataSet = Query_save_in_gain_budget
    Left = 16
    Top = 288
  end
  object Query_save_in_gain_budget: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from gain_table')
    Left = 48
    Top = 288
    object Query_save_in_gain_budgetNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'BIG_CARS.GAIN_TABLE.NUM'
    end
    object Query_save_in_gain_budgetKIND: TStringField
      FieldName = 'KIND'
      Origin = 'BIG_CARS.GAIN_TABLE.KIND'
      Size = 50
    end
    object Query_save_in_gain_budgetTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.GAIN_TABLE.TYPE_NAME'
      Size = 50
    end
    object Query_save_in_gain_budgetQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.GAIN_TABLE.QUANTITY'
    end
    object Query_save_in_gain_budgetAVAILBLE: TIntegerField
      FieldName = 'AVAILBLE'
      Origin = 'BIG_CARS.GAIN_TABLE.AVAILBLE'
    end
    object Query_save_in_gain_budgetTOTAL_BUDGET: TFloatField
      FieldName = 'TOTAL_BUDGET'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUDGET'
    end
    object Query_save_in_gain_budgetINPUT_DATE: TStringField
      FieldName = 'INPUT_DATE'
      Origin = 'BIG_CARS.GAIN_TABLE.INPUT_DATE'
      Size = 10
    end
    object Query_save_in_gain_budgetSALE_PRICE: TFloatField
      FieldName = 'SALE_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.SALE_PRICE'
    end
    object Query_save_in_gain_budgetBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.BUY_PRICE'
    end
    object Query_save_in_gain_budgetTOTAL_BUY_PRICE: TFloatField
      FieldName = 'TOTAL_BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUY_PRICE'
    end
    object Query_save_in_gain_budgetNO_IN_STORGE: TIntegerField
      FieldName = 'NO_IN_STORGE'
      Origin = 'BIG_CARS.GAIN_TABLE.NO_IN_STORGE'
    end
    object Query_save_in_gain_budgetWINING: TFloatField
      FieldName = 'WINING'
      Origin = 'BIG_CARS.GAIN_TABLE.WINING'
    end
  end
  object DataSource18: TDataSource
    DataSet = Query_max_from_gain_table
    Left = 16
    Top = 256
  end
  object Query_max_from_gain_table: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(num) from gain_table')
    Left = 48
    Top = 256
    object Query_max_from_gain_tableMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource19: TDataSource
    DataSet = Query_max_no_in_gain_and_storge
    Left = 17
    Top = 222
  end
  object Query_max_no_in_gain_and_storge: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(NO_IN_storge) from gain_table')
    Left = 48
    Top = 224
    object Query_max_no_in_gain_and_storgeMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object Query_max_st_no: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select max(st_no) from storge')
    Left = 48
    Top = 184
    object Query_max_st_noMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DataSource20: TDataSource
    DataSet = Query_max_st_no
    Left = 16
    Top = 184
  end
  object DataSource21: TDataSource
    DataSet = Query_edit_in_sale_price_in_gain
    Left = 16
    Top = 152
  end
  object Query_edit_in_sale_price_in_gain: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from gain_table'
      'where NO_IN_STORGE=:var1')
    Left = 48
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_edit_in_sale_price_in_gainNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'BIG_CARS.GAIN_TABLE.NUM'
    end
    object Query_edit_in_sale_price_in_gainKIND: TStringField
      FieldName = 'KIND'
      Origin = 'BIG_CARS.GAIN_TABLE.KIND'
      Size = 50
    end
    object Query_edit_in_sale_price_in_gainTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.GAIN_TABLE.TYPE_NAME'
      Size = 50
    end
    object Query_edit_in_sale_price_in_gainQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.GAIN_TABLE.QUANTITY'
    end
    object Query_edit_in_sale_price_in_gainAVAILBLE: TIntegerField
      FieldName = 'AVAILBLE'
      Origin = 'BIG_CARS.GAIN_TABLE.AVAILBLE'
    end
    object Query_edit_in_sale_price_in_gainTOTAL_BUDGET: TFloatField
      FieldName = 'TOTAL_BUDGET'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUDGET'
    end
    object Query_edit_in_sale_price_in_gainINPUT_DATE: TStringField
      FieldName = 'INPUT_DATE'
      Origin = 'BIG_CARS.GAIN_TABLE.INPUT_DATE'
      Size = 10
    end
    object Query_edit_in_sale_price_in_gainSALE_PRICE: TFloatField
      FieldName = 'SALE_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.SALE_PRICE'
    end
    object Query_edit_in_sale_price_in_gainBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.BUY_PRICE'
    end
    object Query_edit_in_sale_price_in_gainTOTAL_BUY_PRICE: TFloatField
      FieldName = 'TOTAL_BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUY_PRICE'
    end
    object Query_edit_in_sale_price_in_gainNO_IN_STORGE: TIntegerField
      FieldName = 'NO_IN_STORGE'
      Origin = 'BIG_CARS.GAIN_TABLE.NO_IN_STORGE'
    end
    object Query_edit_in_sale_price_in_gainWINING: TFloatField
      FieldName = 'WINING'
      Origin = 'BIG_CARS.GAIN_TABLE.WINING'
    end
  end
  object DataSource22: TDataSource
    DataSet = Query_edit_in_buy_price_in_gain
    Left = 16
    Top = 120
  end
  object Query_edit_in_buy_price_in_gain: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from gain_table'
      'where'
      'no_in_storge=:var1')
    Left = 48
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_edit_in_buy_price_in_gainNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'BIG_CARS.GAIN_TABLE.NUM'
    end
    object Query_edit_in_buy_price_in_gainKIND: TStringField
      FieldName = 'KIND'
      Origin = 'BIG_CARS.GAIN_TABLE.KIND'
      Size = 50
    end
    object Query_edit_in_buy_price_in_gainTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
      Origin = 'BIG_CARS.GAIN_TABLE.TYPE_NAME'
      Size = 50
    end
    object Query_edit_in_buy_price_in_gainQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'BIG_CARS.GAIN_TABLE.QUANTITY'
    end
    object Query_edit_in_buy_price_in_gainAVAILBLE: TIntegerField
      FieldName = 'AVAILBLE'
      Origin = 'BIG_CARS.GAIN_TABLE.AVAILBLE'
    end
    object Query_edit_in_buy_price_in_gainTOTAL_BUDGET: TFloatField
      FieldName = 'TOTAL_BUDGET'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUDGET'
    end
    object Query_edit_in_buy_price_in_gainINPUT_DATE: TStringField
      FieldName = 'INPUT_DATE'
      Origin = 'BIG_CARS.GAIN_TABLE.INPUT_DATE'
      Size = 10
    end
    object Query_edit_in_buy_price_in_gainSALE_PRICE: TFloatField
      FieldName = 'SALE_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.SALE_PRICE'
    end
    object Query_edit_in_buy_price_in_gainBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.BUY_PRICE'
    end
    object Query_edit_in_buy_price_in_gainTOTAL_BUY_PRICE: TFloatField
      FieldName = 'TOTAL_BUY_PRICE'
      Origin = 'BIG_CARS.GAIN_TABLE.TOTAL_BUY_PRICE'
    end
    object Query_edit_in_buy_price_in_gainNO_IN_STORGE: TIntegerField
      FieldName = 'NO_IN_STORGE'
      Origin = 'BIG_CARS.GAIN_TABLE.NO_IN_STORGE'
    end
    object Query_edit_in_buy_price_in_gainWINING: TFloatField
      FieldName = 'WINING'
      Origin = 'BIG_CARS.GAIN_TABLE.WINING'
    end
  end
  object DataSource23: TDataSource
    DataSet = Query_delete
    Left = 16
    Top = 88
  end
  object DataSource24: TDataSource
    DataSet = Query_delete_from_gain
    Left = 16
    Top = 56
  end
  object Query_delete: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      
        'where ((st_kind=:var1 and st_type=:var2) and (st_quantity =:var3' +
        ' and st_availble=:var4 )and (st_type_pay=:var5 and st_type_sale=' +
        ':var6 )and ( st_stored_date=:var8))')
    Left = 48
    Top = 88
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
        DataType = ftFloat
        Name = 'var5'
        ParamType = ptInputOutput
      end
      item
        DataType = ftFloat
        Name = 'var6'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var8'
        ParamType = ptInputOutput
      end>
    object Query_deleteST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_deleteST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_deleteST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_deleteST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_deleteST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_deleteST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_deleteST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_deleteST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_deleteSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_deleteNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
  object Query_delete_from_gain: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from gain_table'
      'where no_in_storge=:var1')
    Left = 48
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
  end
  object DataSource25: TDataSource
    DataSet = Query_edit_shelf_no
    Left = 12
    Top = 24
  end
  object Query_edit_shelf_no: TQuery
    DatabaseName = 'big_cars'
    RequestLive = True
    SQL.Strings = (
      'select * from storge'
      
        'where ((st_kind=:var1 and st_type=:var2) and (st_quantity =:var3' +
        ' and st_availble=:var4 )and (st_type_pay=:var5 and st_type_sale=' +
        ':var6 )and ( st_stored_date=:var8))'
      '')
    Left = 44
    Top = 24
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
        DataType = ftFloat
        Name = 'var5'
        ParamType = ptInputOutput
      end
      item
        DataType = ftFloat
        Name = 'var6'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'var8'
        ParamType = ptInputOutput
      end>
    object Query_edit_shelf_noST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_edit_shelf_noST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_edit_shelf_noST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_edit_shelf_noST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_edit_shelf_noST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_edit_shelf_noST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_edit_shelf_noST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_edit_shelf_noST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_edit_shelf_noSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_edit_shelf_noNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
end
