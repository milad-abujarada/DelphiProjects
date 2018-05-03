object F_add_dep: TF_add_dep
  Left = 269
  Top = 150
  Width = 469
  Height = 311
  Anchors = [akLeft, akTop, akRight, akBottom]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 461
    Height = 284
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 25
      Width = 459
      Height = 258
      Align = alBottom
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
          FieldName = 'AR_TITLE'
          Title.Alignment = taCenter
          Title.Caption = #1573#1587#1605' '#1575#1604#1602#1587#1605' /'#1593
          Width = 103
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'EN_TITLE'
          Title.Alignment = taCenter
          Title.Caption = #1573#1587#1605' '#1575#1604#1602#1587#1605'/E'
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FACULTY'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1603#1604#1610#1577
          Width = 61
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DEPARTMENT'
          Title.Alignment = taCenter
          Title.Caption = #1585#1605#1586' '#1575#1604#1602#1587#1605
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL_HOURS'
          Title.Alignment = taCenter
          Title.Caption = #1593#1583#1583' '#1575#1604#1587#1575#1593#1575#1578' '#1575#1604#1575#1580#1605#1575#1604#1610
          Width = 135
          Visible = True
        end>
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 15
    Top = 0
    Width = 288
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost]
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 309
    Top = 0
    Width = 40
    Height = 25
    Hint = #1605#1587#1575#1593#1583#1577
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
      33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
      FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
      FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
      FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
      FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
      FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
      3333333773FFFF77333333333FBFBF3333333333377777333333}
    NumGlyphs = 2
  end
end
