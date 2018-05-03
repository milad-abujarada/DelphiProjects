object Form29: TForm29
  Left = 187
  Top = 103
  Width = 696
  Height = 611
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1575#1604#1602#1610#1605' '#1575#1604#1605#1571#1582#1608#1584#1607' '#1608' '#1575#1604#1605#1582#1586#1606#1577' '#1601#1609' '#1575#1604#1582#1586#1606#1577
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
    Width = 673
    Height = 561
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 542
      Top = 504
      Width = 92
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1602#1610#1605' '#1575#1604#1605#1608#1585#1583#1577
    end
    object Label2: TLabel
      Left = 201
      Top = 504
      Width = 99
      Height = 13
      Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1602#1610#1605' '#1575#1604#1605#1571#1582#1608#1584#1607
    end
    object Label3: TLabel
      Left = 464
      Top = 8
      Width = 56
      Height = 13
      Caption = #1575#1604#1602#1610#1605' '#1575#1604#1605#1608#1585#1583#1607
    end
    object Label4: TLabel
      Left = 146
      Top = 8
      Width = 62
      Height = 13
      Caption = #1575#1604#1602#1610#1605' '#1575#1604#1605#1575#1582#1608#1584#1607
    end
    object Button2: TButton
      Left = 199
      Top = 529
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 0
      OnClick = Button2Click
    end
    object DBGrid1: TDBGrid
      Left = 341
      Top = 24
      Width = 320
      Height = 457
      DataSource = DataSource1
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
          FieldName = 'AMOUNT'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1602#1610#1605#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CAUSE'
          Title.Alignment = taCenter
          Title.Caption = #1576#1610#1575#1606
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 95
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 24
      Width = 328
      Height = 457
      DataSource = DataSource2
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'AMOUNT'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1602#1610#1605#1577
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CAUSE'
          Title.Alignment = taCenter
          Title.Caption = #1576#1610#1575#1606
          Width = 116
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 117
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 400
      Top = 497
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 62
      Top = 497
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Panel2: TPanel
      Left = 152
      Top = 168
      Width = 369
      Height = 185
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 5
      Visible = False
      object Label5: TLabel
        Left = 322
        Top = 88
        Width = 12
        Height = 13
        Caption = #1605#1606
      end
      object Label6: TLabel
        Left = 175
        Top = 90
        Width = 17
        Height = 13
        Caption = #1573#1604#1609
      end
      object RadioButton1: TRadioButton
        Left = 194
        Top = 48
        Width = 113
        Height = 17
        Caption = #1575#1604#1602#1610#1605' '#1575#1604#1605#1608#1585#1583#1607
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 50
        Top = 48
        Width = 113
        Height = 17
        Caption = #1575#1604#1602#1610#1605' '#1575#1604#1605#1571#1582#1608#1584#1607
        TabOrder = 1
      end
      object DateTimePicker1: TDateTimePicker
        Left = 207
        Top = 86
        Width = 113
        Height = 21
        Date = 39283.927066875000000000
        Time = 39283.927066875000000000
        TabOrder = 2
      end
      object DateTimePicker2: TDateTimePicker
        Left = 55
        Top = 87
        Width = 113
        Height = 21
        Date = 39283.927238854160000000
        Time = 39283.927238854160000000
        TabOrder = 3
      end
      object Button3: TButton
        Left = 152
        Top = 136
        Width = 75
        Height = 25
        Caption = #1591#1576#1575#1593#1607
        TabOrder = 4
        OnClick = Button3Click
      end
    end
    object Button1: TButton
      Left = 416
      Top = 528
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 24
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 24
    Top = 48
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SAVE'
      'order by input_date')
    Left = 56
    Top = 16
    object IBQuery1AMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'SAVE.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'SAVE.INPUT_DATE'
      Required = True
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'SAVE.NUM'
      Required = True
    end
    object IBQuery1CAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'SAVE.CAUSE'
    end
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TAKEN_FROM_SAVE'
      'order by input_date')
    Left = 56
    Top = 48
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(AMOUNT) from TAKEN_FROM_SAVE')
    Left = 56
    Top = 112
    object IBQuery4SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(amount) from SAVE')
    Left = 56
    Top = 80
    object IBQuery3SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery3
    Left = 24
    Top = 80
  end
  object DataSource5: TDataSource
    DataSet = IBQuery4
    Left = 24
    Top = 112
  end
  object DataSource3: TDataSource
    DataSet = saved_in_save
    Left = 432
    Top = 8
  end
  object DataSource6: TDataSource
    DataSet = take_from_save
    Left = 232
    Top = 8
  end
  object take_from_save: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TAKEN_FROM_SAVE'
      'where (input_date>=:var1)and(input_date<=:var2)'
      'order by input_date')
    Left = 264
    Top = 8
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
    object take_from_saveAMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'TAKEN_FROM_SAVE.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object take_from_saveNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'TAKEN_FROM_SAVE.NUM'
      Required = True
    end
    object take_from_saveINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'TAKEN_FROM_SAVE.INPUT_DATE'
      Required = True
    end
    object take_from_saveCAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'TAKEN_FROM_SAVE.CAUSE'
    end
  end
  object saved_in_save: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SAVE'
      'where (input_date>=:var1) and (input_date<=:var2)'
      'order by input_date')
    Left = 400
    Top = 8
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
    object saved_in_saveAMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = 'SAVE.AMOUNT'
      Required = True
      Precision = 9
      Size = 3
    end
    object saved_in_saveINPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'SAVE.INPUT_DATE'
      Required = True
    end
    object saved_in_saveNUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'SAVE.NUM'
      Required = True
    end
    object saved_in_saveCAUSE: TIBStringField
      FieldName = 'CAUSE'
      Origin = 'SAVE.CAUSE'
    end
  end
end
