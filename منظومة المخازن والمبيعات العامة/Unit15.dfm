object Form15: TForm15
  Left = 152
  Top = 34
  Width = 872
  Height = 704
  BiDiMode = bdRightToLeft
  Caption = 'Form15'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 16
    Top = 14
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Form14.IBQuery2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      '')
    Functions.DATA = (
      '0'
      '3'
      #39#39
      '')
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
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
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 241
      Width = 740
      Height = 52
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
        137.583333333333300000
        1957.916666666667000000)
      BandType = rbColumnHeader
      object QRShape1: TQRShape
        Left = 542
        Top = 1
        Width = 170
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          1434.041666666667000000
          2.645833333333333000
          449.791666666666700000)
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 360
        Top = 1
        Width = 183
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          952.500000000000000000
          2.645833333333333000
          484.187500000000000000)
        Shape = qrsRectangle
      end
      object QRShape3: TQRShape
        Left = 243
        Top = 1
        Width = 118
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          642.937500000000000000
          2.645833333333333000
          312.208333333333400000)
        Shape = qrsRectangle
      end
      object QRShape4: TQRShape
        Left = 126
        Top = 1
        Width = 118
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          333.375000000000000000
          2.645833333333333000
          312.208333333333400000)
        Shape = qrsRectangle
      end
      object QRLabel3: TQRLabel
        Left = 612
        Top = 4
        Width = 53
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          1619.250000000000000000
          10.583333333333330000
          140.229166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1575#1604#1589#1606#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel4: TQRLabel
        Left = 420
        Top = 5
        Width = 53
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          1111.250000000000000000
          13.229166666666670000
          140.229166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1575#1604#1606#1608#1593
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel5: TQRLabel
        Left = 280
        Top = 5
        Width = 53
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          740.833333333333400000
          13.229166666666670000
          140.229166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1575#1604#1603#1605#1610#1577' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel6: TQRLabel
        Left = 140
        Top = 5
        Width = 85
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          370.416666666666700000
          13.229166666666670000
          224.895833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1587#1593#1585' '#1575#1604#1602#1591#1593#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRShape11: TQRShape
        Left = 1
        Top = 1
        Width = 126
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          2.645833333333333000
          2.645833333333333000
          333.375000000000000000)
        Shape = qrsRectangle
      end
      object QRShape13: TQRShape
        Left = 711
        Top = 1
        Width = 29
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          1881.187500000000000000
          2.645833333333333000
          76.729166666666680000)
        Shape = qrsRectangle
      end
      object QRLabel12: TQRLabel
        Left = 715
        Top = 5
        Width = 20
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          1891.770833333333000000
          13.229166666666670000
          52.916666666666660000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel13: TQRLabel
        Left = 26
        Top = 5
        Width = 85
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          68.791666666666680000
          13.229166666666670000
          224.895833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1575#1604#1587#1593#1585' '#1575#1604#1573#1580#1605#1575#1604#1609
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 293
      Width = 740
      Height = 38
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
        100.541666666666700000
        1957.916666666667000000)
      BandType = rbDetail
      object QRShape8: TQRShape
        Left = 126
        Top = -2
        Width = 118
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          333.375000000000000000
          -5.291666666666667000
          312.208333333333400000)
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 542
        Top = -2
        Width = 170
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          1434.041666666667000000
          -5.291666666666667000
          449.791666666666700000)
        Shape = qrsRectangle
      end
      object QRShape6: TQRShape
        Left = 360
        Top = -2
        Width = 183
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          952.500000000000000000
          -5.291666666666667000
          484.187500000000000000)
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 243
        Top = -2
        Width = 118
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          642.937500000000000000
          -5.291666666666667000
          312.208333333333400000)
        Shape = qrsRectangle
      end
      object QRDBText2: TQRDBText
        Left = 615
        Top = 3
        Width = 49
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1627.187500000000000000
          7.937500000000000000
          129.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Form14.IBQuery2
        DataField = 'KIND'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Traditional Arabic'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText3: TQRDBText
        Left = 419
        Top = 3
        Width = 57
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1108.604166666667000000
          7.937500000000000000
          150.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Form14.IBQuery2
        DataField = 'NAME'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Traditional Arabic'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText4: TQRDBText
        Left = 251
        Top = 3
        Width = 105
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          664.104166666666800000
          7.937500000000000000
          277.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Form14.IBQuery2
        DataField = 'QUANTITY'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Traditional Arabic'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText5: TQRDBText
        Left = 129
        Top = 3
        Width = 111
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          341.312500000000000000
          7.937500000000000000
          293.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Form14.IBQuery2
        DataField = 'SALE_PRICE'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Traditional Arabic'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape12: TQRShape
        Left = 1
        Top = -2
        Width = 126
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          2.645833333333333000
          -5.291666666666667000
          333.375000000000000000)
        Shape = qrsRectangle
      end
      object QRShape14: TQRShape
        Left = 711
        Top = -2
        Width = 29
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          1881.187500000000000000
          -5.291666666666667000
          76.729166666666680000)
        Shape = qrsRectangle
      end
      object QRExpr2: TQRExpr
        Left = 714
        Top = 8
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1889.125000000000000000
          21.166666666666670000
          60.854166666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 5
        Top = 3
        Width = 117
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          13.229166666666670000
          7.937500000000000000
          309.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Form14.IBQuery2
        DataField = 'TOTAL_PIECE_PRICE'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Traditional Arabic'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 331
      Width = 740
      Height = 146
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
        386.291666666666700000
        1957.916666666667000000)
      BandType = rbSummary
      object QRShape9: TQRShape
        Left = 126
        Top = -2
        Width = 118
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127.000000000000000000
          333.375000000000000000
          -5.291666666666667000
          312.208333333333400000)
        Shape = qrsRectangle
      end
      object QRLabel7: TQRLabel
        Left = 144
        Top = 1
        Width = 78
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          381.000000000000000000
          2.645833333333333000
          206.375000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1573#1580#1605#1575#1604#1609' '#1575#1604#1601#1575#1578#1608#1585#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRShape10: TQRShape
        Left = 1
        Top = -2
        Width = 126
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127.000000000000000000
          2.645833333333333000
          -5.291666666666667000
          333.375000000000000000)
        Shape = qrsRectangle
      end
      object QRDBText6: TQRDBText
        Left = 5
        Top = 9
        Width = 111
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          13.229166666666670000
          23.812500000000000000
          293.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Form14.IBQuery1
        DataField = 'TOTAL_BILL_PRICE'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Traditional Arabic'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel8: TQRLabel
        Left = 194
        Top = 54
        Width = 34
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          513.291666666666700000
          142.875000000000000000
          89.958333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1605#1583#1601#1608#1593
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel9: TQRLabel
        Left = 194
        Top = 98
        Width = 32
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          513.291666666666700000
          259.291666666666700000
          84.666666666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1605#1578#1576#1602#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel10: TQRLabel
        Left = 65
        Top = 102
        Width = 25
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          171.979166666666700000
          269.875000000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1583' . '#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel11: TQRLabel
        Left = 65
        Top = 54
        Width = 25
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          171.979166666666700000
          142.875000000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1583' . '#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText7: TQRDBText
        Left = 92
        Top = 64
        Width = 100
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          243.416666666666700000
          169.333333333333300000
          264.583333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Form14.IBQuery1
        DataField = 'PAID_VALUE'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Traditional Arabic'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText8: TQRDBText
        Left = 94
        Top = 110
        Width = 97
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          248.708333333333300000
          291.041666666666700000
          256.645833333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Form14.IBQuery1
        DataField = 'REMAINING_VALUE'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Traditional Arabic'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 477
      Width = 740
      Height = 40
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
        105.833333333333300000
        1957.916666666667000000)
      BandType = rbPageFooter
      object QRSysData1: TQRSysData
        Left = 332
        Top = 16
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          878.416666666666800000
          42.333333333333340000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 10
      end
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 203
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
        537.104166666666700000
        1957.916666666667000000)
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 304
        Top = 32
        Width = 97
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666666700000
          804.333333333333200000
          84.666666666666680000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1601#1575#1578#1608#1585#1577' '#1605#1576#1610#1593#1575#1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
      object QRLabel2: TQRLabel
        Left = 668
        Top = 152
        Width = 57
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          1767.416666666667000000
          402.166666666666600000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' :'#1575#1604#1573#1587#1605' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRDBText1: TQRDBText
        Left = 535
        Top = 156
        Width = 131
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          1415.520833333333000000
          412.750000000000100000
          346.604166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Form14.IBQuery1
        DataField = 'CUSTOMER_NAME'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel14: TQRLabel
        Left = 129
        Top = 144
        Width = 88
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          341.312500000000000000
          381.000000000000000000
          232.833333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' :'#1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'DecoType Naskh Variants'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRDBText10: TQRDBText
        Left = 9
        Top = 154
        Width = 117
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          23.812500000000000000
          407.458333333333400000
          309.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Form14.IBQuery1
        DataField = 'SALE_NUM'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Traditional Arabic'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText11: TQRDBText
        Left = 9
        Top = 82
        Width = 117
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          23.812500000000000000
          216.958333333333400000
          309.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Form12.IBQuery1
        DataField = 'INPUT_DATE'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Traditional Arabic'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
  end
end
