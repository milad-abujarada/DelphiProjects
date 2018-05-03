object Form66: TForm66
  Left = 268
  Top = 196
  Width = 517
  Height = 521
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1573#1604#1594#1575#1569' '#1573#1610#1602#1575#1601' '#1593#1575#1605#1604
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
    Left = 4
    Top = 2
    Width = 498
    Height = 479
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 24
      Top = 16
      Width = 449
      Height = 369
      DataSource = DataSource1
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
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1575#1604#1573#1587#1605
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'END_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1573#1606#1607#1575#1569' '#1575#1604#1593#1605#1604
          Width = 153
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'LAST_SALARY'
          Title.Alignment = taCenter
          Title.Caption = #1571#1582#1585' '#1585#1575#1578#1576
          Width = 80
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 145
      Top = 392
      Width = 222
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbDelete]
      TabOrder = 1
    end
    object Button1: TButton
      Left = 220
      Top = 440
      Width = 75
      Height = 25
      Caption = #1585#1580#1608#1593
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 4
    Top = 2
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AfterDelete = IBQuery1AfterDelete
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DIS_EMPLOY')
    UpdateObject = IBUpdateSQL1
    Left = 36
    Top = 2
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'DIS_EMPLOY.NAME'
      Required = True
      Size = 30
    end
    object IBQuery1END_DATE: TDateField
      FieldName = 'END_DATE'
      Origin = 'DIS_EMPLOY.END_DATE'
      Required = True
    end
    object IBQuery1LAST_SALARY: TIntegerField
      FieldName = 'LAST_SALARY'
      Origin = 'DIS_EMPLOY.LAST_SALARY'
      Required = True
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NAME,'
      '  END_DATE,'
      '  LAST_SALARY'
      'from DIS_EMPLOY '
      'where'
      '  NAME = :NAME and'
      '  END_DATE = :END_DATE and'
      '  LAST_SALARY = :LAST_SALARY')
    ModifySQL.Strings = (
      'update DIS_EMPLOY'
      'set'
      '  NAME = :NAME,'
      '  END_DATE = :END_DATE,'
      '  LAST_SALARY = :LAST_SALARY'
      'where'
      '  NAME = :OLD_NAME and'
      '  END_DATE = :OLD_END_DATE and'
      '  LAST_SALARY = :OLD_LAST_SALARY')
    InsertSQL.Strings = (
      'insert into DIS_EMPLOY'
      '  (NAME, END_DATE, LAST_SALARY)'
      'values'
      '  (:NAME, :END_DATE, :LAST_SALARY)')
    DeleteSQL.Strings = (
      'delete from DIS_EMPLOY'
      'where'
      '  NAME = :OLD_NAME and'
      '  END_DATE = :OLD_END_DATE and'
      '  LAST_SALARY = :OLD_LAST_SALARY')
    Left = 68
    Top = 2
  end
end
