object F_add_motamer: TF_add_motamer
  Left = 260
  Top = 159
  Width = 242
  Height = 300
  Anchors = []
  AutoSize = True
  BiDiMode = bdRightToLeft
  BorderIcons = []
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
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 231
    Height = 25
    DataSource = DataM.Query_nat_ds
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost]
    Anchors = [akTop, akRight]
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 25
    Width = 233
    Height = 216
    Anchors = [akRight, akBottom]
    DataSource = DataM.Query_nat_ds
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
        FieldName = 'NAT'
        Title.Alignment = taCenter
        Title.Caption = '«·„ƒ „—'
        Width = 397
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 133
    Top = 248
    Width = 75
    Height = 25
    Caption = '„”«⁄œ…'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 37
    Top = 248
    Width = 75
    Height = 25
    Caption = '≈€·«ﬁ'
    TabOrder = 3
    OnClick = Button2Click
  end
end
