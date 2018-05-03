object Form57: TForm57
  Left = 187
  Top = 111
  Width = 743
  Height = 617
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1593#1585#1590' '#1605#1576#1610#1593#1575#1578' '#1575#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607
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
    Width = 721
    Height = 561
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 425
      Top = 21
      Width = 63
      Height = 13
      Caption = #1605#1603#1575#1606' '#1575#1604#1605#1576#1610#1593#1575#1578
    end
    object Label2: TLabel
      Left = 565
      Top = 56
      Width = 91
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1573#1602#1601#1575#1604' '#1575#1604#1581#1587#1575#1576
    end
    object Label3: TLabel
      Left = 172
      Top = 56
      Width = 156
      Height = 13
      Caption = #1575#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1576#1575#1593#1607' '#1601#1609' '#1575#1604#1578#1575#1585#1610#1582' '#1575#1604#1605#1582#1578#1575#1585
    end
    object Label4: TLabel
      Left = 148
      Top = 474
      Width = 38
      Height = 13
      Caption = #1575#1604#1573#1580#1605#1575#1604#1610
    end
    object ComboBox1: TComboBox
      Left = 272
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object DBGrid1: TDBGrid
      Left = 488
      Top = 72
      Width = 225
      Height = 393
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
          FieldName = 'INPUT_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1578#1575#1585#1610#1582
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 72
      Width = 473
      Height = 393
      DataSource = DataSource3
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
          FieldName = 'KIND'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1589#1606#1601
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1606#1608#1593
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTITY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1576#1575#1593#1607
          Width = 85
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SALE_PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
          Width = 94
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 208
      Top = 528
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 44
      Top = 468
      Width = 97
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Button2: TButton
      Left = 424
      Top = 528
      Width = 75
      Height = 25
      Caption = #1591#1576#1575#1593#1607
      Enabled = False
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(PLACE) from MOVED_STORGE')
    Left = 248
    Top = 16
    object IBQuery1PLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'PAIED_FROM_MOVED_STORGE.PLACE'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 216
    Top = 16
  end
  object IBQuery2: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct(INPUT_DATE) from PAIED_FROM_MOVED_STORGE'
      'where place=:var1')
    Left = 680
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object IBQuery2INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAIED_FROM_MOVED_STORGE.INPUT_DATE'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 656
    Top = 32
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 112
    Top = 40
  end
  object IBQuery3: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PAIED_FROM_MOVED_STORGE'
      'where (place=:var1) and (input_date=:var2)')
    Left = 80
    Top = 40
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
      end>
    object IBQuery3KIND: TIBStringField
      FieldName = 'KIND'
      Origin = 'PAIED_FROM_MOVED_STORGE.KIND'
      Required = True
      Size = 30
    end
    object IBQuery3NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PAIED_FROM_MOVED_STORGE.NAME'
      Required = True
      Size = 30
    end
    object IBQuery3QUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'PAIED_FROM_MOVED_STORGE.QUANTITY'
      Required = True
    end
    object IBQuery3BUY_PRICE: TIBBCDField
      FieldName = 'BUY_PRICE'
      Origin = 'PAIED_FROM_MOVED_STORGE.BUY_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery3SALE_PRICE: TIBBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'PAIED_FROM_MOVED_STORGE.SALE_PRICE'
      Required = True
      Precision = 9
      Size = 3
    end
    object IBQuery3INPUT_DATE: TDateField
      FieldName = 'INPUT_DATE'
      Origin = 'PAIED_FROM_MOVED_STORGE.INPUT_DATE'
      Required = True
    end
    object IBQuery3PLACE: TIBStringField
      FieldName = 'PLACE'
      Origin = 'PAIED_FROM_MOVED_STORGE.PLACE'
      Required = True
    end
    object IBQuery3NUM_IN_STORGE_HISTORY: TIntegerField
      FieldName = 'NUM_IN_STORGE_HISTORY'
      Origin = 'PAIED_FROM_MOVED_STORGE.NUM_IN_STORGE_HISTORY'
      Required = True
    end
  end
  object DataSource4: TDataSource
    DataSet = IBQuery4
    Left = 200
    Top = 480
  end
  object IBQuery4: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(QUANTITY* SALE_PRICE) from PAIED_FROM_MOVED_STORGE'
      'where (place=:var1) and (input_date=:var2)')
    Left = 232
    Top = 480
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
      end>
    object IBQuery4SUM: TIBBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 3
    end
  end
end
