object Form9: TForm9
  Left = 76
  Top = 18
  Width = 833
  Height = 604
  Align = alClient
  BorderIcons = [biMinimize, biMaximize]
  Caption = #1605#1606#1592#1608#1605#1577' '#1575#1604#1605#1582#1575#1586#1606' '#1608' '#1575#1604#1605#1576#1610#1593#1575#1578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 16
    Top = 16
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Query_rep_fatora
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 395
      Width = 718
      Height = 46
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        121.708333333333300000
        1899.708333333333000000)
      BandType = rbPageFooter
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 190
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        502.708333333333400000
        1899.708333333333000000)
      BandType = rbTitle
      object QRShape1: TQRShape
        Left = 686
        Top = 157
        Width = 31
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1815.041666666667000000
          415.395833333333400000
          82.020833333333340000)
        Shape = qrsRectangle
      end
      object QRLabel2: TQRLabel
        Left = 696
        Top = 160
        Width = 11
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          1841.500000000000000000
          423.333333333333300000
          29.104166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape2: TQRShape
        Left = 545
        Top = 157
        Width = 142
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1441.979166666667000000
          415.395833333333400000
          375.708333333333400000)
        Shape = qrsRectangle
      end
      object QRLabel3: TQRLabel
        Left = 591
        Top = 159
        Width = 52
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          1563.687500000000000000
          420.687500000000000000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1589#1606#1600#1600#1600#1600#1600#1600#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape3: TQRShape
        Left = 3
        Top = 157
        Width = 116
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          7.937500000000000000
          415.395833333333400000
          306.916666666666700000)
        Shape = qrsRectangle
      end
      object QRShape4: TQRShape
        Left = 378
        Top = 157
        Width = 168
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1000.125000000000000000
          415.395833333333400000
          444.500000000000000000)
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 292
        Top = 157
        Width = 87
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          772.583333333333400000
          415.395833333333400000
          230.187500000000000000)
        Shape = qrsRectangle
      end
      object QRShape6: TQRShape
        Left = 204
        Top = 157
        Width = 90
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          539.750000000000000000
          415.395833333333400000
          238.125000000000000000)
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 118
        Top = 157
        Width = 87
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          312.208333333333400000
          415.395833333333400000
          230.187500000000000000)
        Shape = qrsRectangle
      end
      object QRLabel4: TQRLabel
        Left = 430
        Top = 159
        Width = 59
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          1137.708333333333000000
          420.687500000000000000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1606#1600#1600#1600#1600#1600#1600#1600#1600#1600#1608#1593
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 297
        Top = 160
        Width = 76
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          785.812500000000000000
          423.333333333333300000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1603#1605#1610#1577' '#1575#1604#1605#1591#1604#1608#1576#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 218
        Top = 160
        Width = 61
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          576.791666666666800000
          423.333333333333300000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1587#1593#1585' '#1575#1604#1608#1581#1583#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel8: TQRLabel
        Left = 122
        Top = 159
        Width = 72
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          322.791666666666700000
          420.687500000000000000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1587#1593#1585' '#1575#1604#1573#1580#1605#1575#1604#1609
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel9: TQRLabel
        Left = 29
        Top = 159
        Width = 72
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          76.729166666666680000
          420.687500000000000000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #1573#1587#1605' '#1575#1604#1605#1587#1578#1604#1605
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel28: TQRLabel
        Left = 22
        Top = 126
        Width = 99
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          58.208333333333340000
          333.375000000000000000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1602#1575#1604' / 0925131995'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 22
        Top = 105
        Width = 99
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          58.208333333333340000
          277.812500000000000000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1602#1575#1604' / 0917122625'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 22
        Top = 79
        Width = 97
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          58.208333333333340000
          209.020833333333300000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1607#1600#1575#1578#1601' / 071634965'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 23
        Top = 54
        Width = 81
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          60.854166666666680000
          142.875000000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 12
      end
      object QRLabel19: TQRLabel
        Left = 107
        Top = 48
        Width = 41
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          283.104166666666700000
          127.000000000000000000
          108.479166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1578#1575#1585#1610#1582
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel1: TQRLabel
        Left = 117
        Top = 6
        Width = 497
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          309.562500000000000000
          15.875000000000000000
          1314.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          #1578#1588#1575#1585#1603#1610#1577' '#1571#1576#1606#1575#1569' '#1575#1604#1591#1608#1610#1585' '#1604#1573#1587#1578#1610#1585#1575#1583' '#1608' '#1576#1610#1593' '#1571#1601#1590#1604' '#1602#1591#1593' '#1594#1610#1575#1585' '#1588#1575#1581#1606#1575#1578' '#1575#1604#1605#1585#1587#1610#1583 +
          #1587
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel20: TQRLabel
        Left = 296
        Top = 63
        Width = 104
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          783.166666666666800000
          166.687500000000000000
          275.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1601#1575#1578#1608#1585#1577' '#1605#1576#1610#1593#1575#1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel18: TQRLabel
        Left = 312
        Top = 120
        Width = 345
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          825.500000000000000000
          317.500000000000000000
          912.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '................................................................' +
          '............................................................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 561
        Top = 111
        Width = 81
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1484.312500000000000000
          293.687500000000000000
          214.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query_bring_data_from_paied_for_every_sale
        DataField = 'CUS_NAME'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Simplified Arabic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel17: TQRLabel
        Left = 664
        Top = 103
        Width = 33
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1756.833333333333000000
          272.520833333333400000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1571#1582
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 20
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 228
      Width = 718
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        89.958333333333340000
        1899.708333333333000000)
      BandType = rbDetail
      object QRShape8: TQRShape
        Left = 544
        Top = -2
        Width = 144
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1439.333333333333000000
          -5.291666666666667000
          381.000000000000000000)
        Shape = qrsRectangle
      end
      object QRShape9: TQRShape
        Left = 374
        Top = -2
        Width = 172
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          989.541666666666800000
          -5.291666666666667000
          455.083333333333300000)
        Shape = qrsRectangle
      end
      object QRShape10: TQRShape
        Left = 292
        Top = -2
        Width = 87
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          772.583333333333400000
          -5.291666666666667000
          230.187500000000000000)
        Shape = qrsRectangle
      end
      object QRShape11: TQRShape
        Left = 3
        Top = -2
        Width = 116
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          7.937500000000000000
          -5.291666666666667000
          306.916666666666700000)
        Shape = qrsRectangle
      end
      object QRShape13: TQRShape
        Left = 204
        Top = -2
        Width = 90
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          539.750000000000000000
          -5.291666666666667000
          238.125000000000000000)
        Shape = qrsRectangle
      end
      object QRShape14: TQRShape
        Left = 118
        Top = -2
        Width = 87
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          312.208333333333400000
          -5.291666666666667000
          230.187500000000000000)
        Shape = qrsRectangle
      end
      object QRShape15: TQRShape
        Left = 686
        Top = -2
        Width = 31
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1815.041666666667000000
          -5.291666666666667000
          82.020833333333340000)
        Shape = qrsRectangle
      end
      object QRDBText1: TQRDBText
        Left = 550
        Top = 2
        Width = 133
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          1455.208333333333000000
          5.291666666666667000
          351.895833333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query_rep_fatora
        DataField = 'BILLS_KIND'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Simplified Arabic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText2: TQRDBText
        Left = 383
        Top = 2
        Width = 159
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          1013.354166666667000000
          5.291666666666667000
          420.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query_rep_fatora
        DataField = 'BILLS_TYPE'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Simplified Arabic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText3: TQRDBText
        Left = 298
        Top = 8
        Width = 70
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          788.458333333333400000
          21.166666666666670000
          185.208333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query_rep_fatora
        DataField = 'BILLS_QUANTITY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 212
        Top = 8
        Width = 70
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          560.916666666666700000
          21.166666666666670000
          185.208333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query_rep_fatora
        DataField = 'BILLS_PRICE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 125
        Top = 6
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          330.729166666666700000
          15.875000000000000000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query_rep_fatora
        DataField = 'BILLS_TOTAL_PRICE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 6
        Top = 2
        Width = 110
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          15.875000000000000000
          5.291666666666667000
          291.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query_rep_fatora
        DataField = 'RECIVER_NAME'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Simplified Arabic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText7: TQRDBText
        Left = 687
        Top = 8
        Width = 28
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1817.687500000000000000
          21.166666666666670000
          74.083333333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Query_rep_fatora
        DataField = 'BILLS_NO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 262
      Width = 718
      Height = 133
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        351.895833333333400000
        1899.708333333333000000)
      BandType = rbSummary
      object QRShape12: TQRShape
        Left = 204
        Top = -2
        Width = 90
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          539.750000000000000000
          -5.291666666666667000
          238.125000000000000000)
        Shape = qrsRectangle
      end
      object QRShape16: TQRShape
        Left = 118
        Top = -2
        Width = 87
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          312.208333333333400000
          -5.291666666666667000
          230.187500000000000000)
        Shape = qrsRectangle
      end
      object QRLabel10: TQRLabel
        Left = 230
        Top = 1
        Width = 38
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          608.541666666666800000
          2.645833333333333000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1575#1580#1605#1575#1604#1609
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRExpr1: TQRExpr
        Left = 127
        Top = 7
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          336.020833333333400000
          18.520833333333330000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(Query_rep_fatora.BILLS_TOTAL_PRICE)'
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 156
        Top = 37
        Width = 57
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          412.750000000000000000
          97.895833333333340000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1591#1585#1610#1602#1577' '#1575#1604#1583#1601#1593
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 78
        Top = 43
        Width = 64
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          206.375000000000000000
          113.770833333333300000
          169.333333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel14'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        Left = 78
        Top = 75
        Width = 64
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          206.375000000000000000
          198.437500000000000000
          169.333333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel15'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel23: TQRLabel
        Left = 32
        Top = 66
        Width = 26
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          84.666666666666680000
          174.625000000000000000
          68.791666666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1583#1610#1606#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Left = 32
        Top = 99
        Width = 26
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          84.666666666666680000
          261.937500000000000000
          68.791666666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1583#1610#1606#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 78
        Top = 108
        Width = 64
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          206.375000000000000000
          285.750000000000000000
          169.333333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel16'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Left = 171
        Top = 101
        Width = 37
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          452.437500000000000000
          267.229166666666700000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1605#1578#1576#1602#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 170
        Top = 69
        Width = 36
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          449.791666666666700000
          182.562500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1605#1583#1601#1608#1593
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel22: TQRLabel
        Left = 532
        Top = 87
        Width = 166
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1407.583333333333000000
          230.187500000000000000
          439.208333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1604#1587#1606#1575' '#1608#1581#1583#1606#1575' '#1604#1603#1606#1606#1575' '#1575#1604#1571#1601#1590#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Monotype Koufi'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
  end
  object Query_rep_fatora: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from bill')
    Left = 40
    Top = 47
    object Query_rep_fatoraBILLS_NO: TIntegerField
      FieldName = 'BILLS_NO'
      Origin = 'BIG_CARS.BILL.BILLS_NO'
    end
    object Query_rep_fatoraBILLS_QUANTITY: TIntegerField
      FieldName = 'BILLS_QUANTITY'
      Origin = 'BIG_CARS.BILL.BILLS_QUANTITY'
    end
    object Query_rep_fatoraBILLS_PRICE: TFloatField
      FieldName = 'BILLS_PRICE'
      Origin = 'BIG_CARS.BILL.BILLS_PRICE'
    end
    object Query_rep_fatoraBILLS_DATE: TStringField
      FieldName = 'BILLS_DATE'
      Origin = 'BIG_CARS.BILL.BILLS_DATE'
      Size = 10
    end
    object Query_rep_fatoraBILLS_TYPE: TStringField
      FieldName = 'BILLS_TYPE'
      Origin = 'BIG_CARS.BILL.BILLS_TYPE'
      Size = 50
    end
    object Query_rep_fatoraBILLS_KIND: TStringField
      FieldName = 'BILLS_KIND'
      Origin = 'BIG_CARS.BILL.BILLS_KIND'
      Size = 50
    end
    object Query_rep_fatoraBILLS_TOTAL_PRICE: TFloatField
      FieldName = 'BILLS_TOTAL_PRICE'
      Origin = 'BIG_CARS.BILL.BILLS_TOTAL_PRICE'
    end
    object Query_rep_fatoraRECIVER_NAME: TStringField
      FieldName = 'RECIVER_NAME'
      Origin = 'BIG_CARS.BILL.RECIVER_NAME'
      Size = 50
    end
    object Query_rep_fatoraPAY_NO: TIntegerField
      FieldName = 'PAY_NO'
      Origin = 'BIG_CARS.BILL.PAY_NO'
    end
  end
  object DataSource18: TDataSource
    DataSet = Query_rep_fatora
    Left = 8
    Top = 47
  end
  object DataSource1: TDataSource
    DataSet = Query_bring_data_from_paied_for_every_sale
    Left = 8
    Top = 48
  end
  object Query_bring_data_from_paied_for_every_sale: TQuery
    DatabaseName = 'big_cars'
    SQL.Strings = (
      'select * from paied_for_every_sale'
      'where pay_no=:var1')
    Left = 40
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'var1'
        ParamType = ptInputOutput
      end>
    object Query_bring_data_from_paied_for_every_saleCUS_NAME: TStringField
      FieldName = 'CUS_NAME'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.CUS_NAME'
      Size = 50
    end
    object Query_bring_data_from_paied_for_every_salePAY_TYPE: TStringField
      FieldName = 'PAY_TYPE'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.PAY_TYPE'
      Size = 15
    end
    object Query_bring_data_from_paied_for_every_salePAIED_VALUE: TFloatField
      FieldName = 'PAIED_VALUE'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.PAIED_VALUE'
    end
    object Query_bring_data_from_paied_for_every_saleREMAINING_VALUE: TFloatField
      FieldName = 'REMAINING_VALUE'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.REMAINING_VALUE'
    end
    object Query_bring_data_from_paied_for_every_saleCHECK_NO: TIntegerField
      FieldName = 'CHECK_NO'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.CHECK_NO'
    end
    object Query_bring_data_from_paied_for_every_salePAY_NO: TIntegerField
      FieldName = 'PAY_NO'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.PAY_NO'
    end
    object Query_bring_data_from_paied_for_every_salePAIED_DATE: TStringField
      FieldName = 'PAIED_DATE'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.PAIED_DATE'
      Size = 10
    end
    object Query_bring_data_from_paied_for_every_saleSERIAL_NO: TIntegerField
      FieldName = 'SERIAL_NO'
      Origin = 'BIG_CARS.PAIED_FOR_EVERY_SALE.SERIAL_NO'
    end
  end
end
