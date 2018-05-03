object Form16: TForm16
  Left = -4
  Top = -4
  Width = 1032
  Height = 746
  Align = alClient
  BiDiMode = bdRightToLeft
  BorderIcons = []
  Caption = #1605#1606#1592#1608#1605#1577' '#1575#1604#1605#1582#1575#1586#1606' '#1608#1575#1604#1605#1576#1610#1593#1575#1578
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
    Left = 0
    Top = 0
    Width = 1024
    Height = 712
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Panel2: TPanel
      Left = 160
      Top = 8
      Width = 745
      Height = 681
      BevelInner = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 322
        Top = 16
        Width = 81
        Height = 16
        Caption = #1593#1585#1590' '#1576#1590#1575#1593#1577' '#1585#1601
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 412
        Top = 67
        Width = 39
        Height = 13
        Caption = #1585#1602#1605' '#1575#1604#1585#1601
      end
      object Edit1: TEdit
        Left = 283
        Top = 64
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object BitBtn1: TBitBtn
        Left = 330
        Top = 111
        Width = 75
        Height = 25
        Caption = #1593#1585#1590
        TabOrder = 1
        OnClick = BitBtn1Click
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 144
        Width = 713
        Height = 481
        DataSource = DataSource1
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
            FieldName = 'ST_KIND'
            Title.Alignment = taCenter
            Title.Caption = #1575#1604#1589#1606#1601
            Width = 160
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ST_TYPE'
            Title.Alignment = taCenter
            Title.Caption = #1575#1604#1606#1608#1593
            Width = 160
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ST_QUANTITY'
            Title.Alignment = taCenter
            Title.Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1575#1580#1605#1575#1604#1610#1577
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ST_AVAILBLE'
            Title.Alignment = taCenter
            Title.Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1578#1608#1601#1585#1577
            Width = 74
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ST_TYPE_PAY'
            Title.Alignment = taCenter
            Title.Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ST_TYPE_SALE'
            Title.Alignment = taCenter
            Title.Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ST_STORED_DATE'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1578#1582#1586#1610#1606
            Width = 90
            Visible = True
          end>
      end
      object BitBtn2: TBitBtn
        Left = 254
        Top = 634
        Width = 120
        Height = 25
        Caption = #1585#1580#1608#1593' '#1604#1604#1602#1575#1574#1605#1577' '#1575#1604#1585#1574#1610#1587#1610#1577
        TabOrder = 3
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 382
        Top = 634
        Width = 120
        Height = 25
        Caption = #1585#1580#1608#1593
        TabOrder = 4
        OnClick = BitBtn3Click
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_search_by_shelfe
    Left = 88
    Top = 16
  end
  object Query_search_by_shelfe: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from storge'
      'where shelf_no=:var1'
      'order by st_stored_date')
    Left = 120
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_search_by_shelfeST_NO: TIntegerField
      FieldName = 'ST_NO'
      Origin = 'BIG_CARS.STORGE.ST_NO'
    end
    object Query_search_by_shelfeST_KIND: TStringField
      FieldName = 'ST_KIND'
      Origin = 'BIG_CARS.STORGE.ST_KIND'
      Size = 50
    end
    object Query_search_by_shelfeST_TYPE: TStringField
      FieldName = 'ST_TYPE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE'
      Size = 50
    end
    object Query_search_by_shelfeST_QUANTITY: TIntegerField
      FieldName = 'ST_QUANTITY'
      Origin = 'BIG_CARS.STORGE.ST_QUANTITY'
    end
    object Query_search_by_shelfeST_TYPE_PAY: TFloatField
      FieldName = 'ST_TYPE_PAY'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_PAY'
    end
    object Query_search_by_shelfeST_TYPE_SALE: TFloatField
      FieldName = 'ST_TYPE_SALE'
      Origin = 'BIG_CARS.STORGE.ST_TYPE_SALE'
    end
    object Query_search_by_shelfeST_AVAILBLE: TIntegerField
      FieldName = 'ST_AVAILBLE'
      Origin = 'BIG_CARS.STORGE.ST_AVAILBLE'
    end
    object Query_search_by_shelfeST_STORED_DATE: TStringField
      FieldName = 'ST_STORED_DATE'
      Origin = 'BIG_CARS.STORGE.ST_STORED_DATE'
      Size = 10
    end
    object Query_search_by_shelfeSHELF_NO: TIntegerField
      FieldName = 'SHELF_NO'
      Origin = 'BIG_CARS.STORGE.SHELF_NO'
    end
    object Query_search_by_shelfeNO_IN_GAIN_TABLE: TIntegerField
      FieldName = 'NO_IN_GAIN_TABLE'
      Origin = 'BIG_CARS.STORGE.NO_IN_GAIN_TABLE'
    end
  end
end
