object Form_CHDIR: TForm_CHDIR
  Left = 236
  Top = 178
  Width = 351
  Height = 247
  BiDiMode = bdRightToLeft
  BorderIcons = []
  Caption = 'Form_CHDIR'
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
    Left = 7
    Top = 9
    Width = 329
    Height = 168
    BorderStyle = bsSingle
    TabOrder = 0
    object Label2: TLabel
      Left = 15
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Drive'
    end
    object Bevel1: TBevel
      Left = 8
      Top = 112
      Width = 241
      Height = 38
      Shape = bsFrame
    end
    object Label1: TLabel
      Left = 203
      Top = 128
      Width = 29
      Height = 13
      Caption = #1575#1604#1605#1587#1575#1585
    end
    object Edit1: TEdit
      Left = 24
      Top = 120
      Width = 169
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 257
      Top = 118
      Width = 57
      Height = 29
      Caption = #1601#1578#1581
      Default = True
      Enabled = False
      TabOrder = 1
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 48
      Top = 32
      Width = 145
      Height = 73
      ItemHeight = 16
      TabOrder = 2
    end
    object DriveComboBox1: TDriveComboBox
      Left = 48
      Top = 8
      Width = 145
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 7
    Top = 176
    Width = 328
    Height = 41
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 1
    object Button2: TButton
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Caption = #1605#1587#1575#1593#1583#1577
      TabOrder = 0
    end
    object Button3: TButton
      Left = 40
      Top = 8
      Width = 75
      Height = 25
      Caption = #1573#1594#1604#1575#1602
      TabOrder = 1
    end
    object Button4: TButton
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = #1581#1601#1592
      TabOrder = 2
    end
  end
end
