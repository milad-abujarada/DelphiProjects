object Form81: TForm81
  Left = 366
  Top = 258
  Width = 342
  Height = 234
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1578#1594#1610#1585' '#1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585
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
    Width = 321
    Height = 185
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Button1: TButton
      Left = 128
      Top = 155
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBGrid1: TDBGrid
      Left = 40
      Top = 8
      Width = 248
      Height = 97
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
          FieldName = 'CODE'
          Title.Alignment = taCenter
          Title.Caption = #1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585
          Width = 150
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 56
      Top = 112
      Width = 222
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbEdit, nbPost, nbCancel]
      TabOrder = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Top = 8
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterPost = IBQuery1AfterPost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CODEWORDE')
    UpdateObject = IBUpdateSQL1
    Left = 32
    Top = 8
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'CODEWORDE.NAME'
    end
    object IBQuery1CODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'CODEWORDE.CODE'
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  CODE'
      'from CODEWORDE '
      'where'
      '  NAME = :NAME and'
      '  CODE = :CODE')
    ModifySQL.Strings = (
      'update CODEWORDE'
      'set'
      '  NAME = :NAME,'
      '  CODE = :CODE'
      'where'
      '  NAME = :OLD_NAME and'
      '  CODE = :OLD_CODE')
    InsertSQL.Strings = (
      'insert into CODEWORDE'
      '  (NAME, CODE)'
      'values'
      '  (:NAME, :CODE)')
    DeleteSQL.Strings = (
      'delete from CODEWORDE'
      'where'
      '  NAME = :OLD_NAME and'
      '  CODE = :OLD_CODE')
    Left = 64
    Top = 8
  end
end
