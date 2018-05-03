object Form62: TForm62
  Left = 183
  Top = 167
  Width = 696
  Height = 480
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1578#1601#1589#1610#1604#1610' '#1604#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607
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
    Height = 433
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 398
      Top = 19
      Width = 60
      Height = 13
      Caption = #1605#1603#1575#1606' '#1575#1604#1578#1581#1608#1610#1604
    end
    object ComboBox1: TComboBox
      Left = 244
      Top = 16
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object DBGrid1: TDBGrid
      Left = 40
      Top = 64
      Width = 601
      Height = 313
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
          FieldName = 'MOVED_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1578#1581#1608#1610#1604
          Width = 116
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 200
      Top = 400
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 408
      Top = 400
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      TabOrder = 3
      OnClick = Button2Click
    end
    object Panel2: TPanel
      Left = 168
      Top = 144
      Width = 321
      Height = 153
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 4
      object Label2: TLabel
        Left = 289
        Top = 45
        Width = 12
        Height = 13
        Caption = #1605#1606
      end
      object Label3: TLabel
        Left = 147
        Top = 45
        Width = 17
        Height = 13
        Caption = #1573#1604#1609
      end
      object DateTimePicker1: TDateTimePicker
        Left = 171
        Top = 42
        Width = 114
        Height = 21
        Date = 39509.601912974540000000
        Time = 39509.601912974540000000
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 27
        Top = 42
        Width = 114
        Height = 21
        Date = 39509.602030706020000000
        Time = 39509.602030706020000000
        TabOrder = 1
      end
      object Button3: TButton
        Left = 128
        Top = 112
        Width = 75
        Height = 25
        Caption = #1591#1576#1575#1593#1607
        TabOrder = 2
        OnClick = Button3Click
      end
    end
  end
  object DataSource5: TDataSource
    DataSet = IBQuery5
    Left = 24
    Top = 16
  end
  object IBQuery5: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(PLACE) from MOVED_STORGE')
    Left = 56
    Top = 16
    object IBQuery5PLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'MOVED_STORGE.PLACE'
      Required = True
      Size = 30
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MOVED_STORGE'
      'where place=:var1')
    Left = 56
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery1KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'MOVED_STORGE.KIND'
      Required = True
      Size = 30
    end
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'MOVED_STORGE.NAME'
      Required = True
      Size = 30
    end
    object IBQuery1NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'MOVED_STORGE.NUM'
      Required = True
    end
    object IBQuery1INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'MOVED_STORGE.INPUT_DATE'
      Required = True
    end
    object IBQuery1MOVED_DATE: TDateField
      FieldName = 'MOVED_DATE'
      Origin = 'MOVED_STORGE.MOVED_DATE'
      Required = True
    end
    object IBQuery1BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'MOVED_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery1QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'MOVED_STORGE.QUANTITY'
      Required = True
    end
    object IBQuery1NUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'MOVED_STORGE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
    object IBQuery1PLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'MOVED_STORGE.PLACE'
      Required = True
      Size = 30
    end
    object IBQuery1MOVED_NUM: TIntegerField
      FieldName = 'MOVED_NUM'
      Origin = 'MOVED_STORGE.MOVED_NUM'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 24
    Top = 48
  end
  object DataSource2: TDataSource
    DataSet = rep
    Left = 24
    Top = 80
  end
  object rep: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MOVED_STORGE'
      'where (place=:var1)and(MOVED_DATE>=:var2)and(MOVED_DATE<=:var3)')
    Left = 56
    Top = 80
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
  end
end
