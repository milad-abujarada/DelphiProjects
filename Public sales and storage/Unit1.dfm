object Form1: TForm1
  Left = 297
  Top = 139
  Width = 513
  Height = 448
  BiDiMode = bdRightToLeft
  BorderIcons = [biMinimize]
  Caption = #1605#1606#1592#1608#1605#1577' '#1575#1604#1605#1582#1575#1586#1606' '#1608#1575#1604#1605#1576#1610#1593#1575#1578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  ParentBiDiMode = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 6
    Top = 4
    Width = 491
    Height = 383
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 291
      Top = 134
      Width = 62
      Height = 13
      Caption = #1573#1587#1605' '#1575#1604#1605#1587#1578#1582#1583#1605
    end
    object Label2: TLabel
      Left = 297
      Top = 187
      Width = 50
      Height = 13
      Caption = #1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585
    end
    object Edit1: TEdit
      Left = 146
      Top = 182
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object Edit2: TEdit
      Left = 146
      Top = 131
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = #1581#1587#1606' '#1590#1608
    end
    object Button1: TButton
      Left = 192
      Top = 240
      Width = 75
      Height = 25
      Caption = #1582#1585#1608#1580
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 48
    object N76: TMenuItem
      Caption = #1578#1587#1580#1610#1604' '#1575#1604#1582#1585#1608#1580
      OnClick = N76Click
    end
    object N12: TMenuItem
      Caption = #1582#1583#1605#1575#1578
      object N9: TMenuItem
        Caption = #1578#1582#1586#1610#1606' '#1575#1604#1586#1576#1575#1574#1606
        OnClick = N9Click
      end
      object N37: TMenuItem
        Caption = #1578#1582#1586#1610#1606' '#1575#1604#1605#1608#1585#1583#1610#1606
        OnClick = N37Click
      end
      object N77: TMenuItem
        Caption = #1578#1594#1610#1585' '#1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585
        OnClick = N77Click
      end
    end
    object N55: TMenuItem
      Caption = #1583#1610#1608#1606
      object N56: TMenuItem
        Caption = #1578#1582#1586#1610#1606' '#1583#1610#1606
        OnClick = N56Click
      end
      object N57: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1608' '#1587#1583#1575#1583' '#1583#1610#1606
        OnClick = N57Click
      end
    end
    object N51: TMenuItem
      Caption = #1575#1604#1573#1610#1589#1575#1604#1575#1578
      object N52: TMenuItem
        Caption = #1573#1583#1582#1575#1604' '#1573#1610#1589#1575#1604' '#1602#1576#1590
        OnClick = N52Click
      end
      object N53: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1573#1610#1589#1575#1604#1575#1578' '#1575#1604#1602#1576#1590
        OnClick = N53Click
      end
      object N64: TMenuItem
        Caption = #1573#1610#1589#1575#1604' '#1583#1601#1593
        OnClick = N64Click
      end
      object N65: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1573#1610#1589#1575#1604#1575#1578' '#1575#1604#1583#1601#1593
        OnClick = N65Click
      end
    end
    object N29: TMenuItem
      Caption = #1575#1604#1582#1586#1606#1577
      object N30: TMenuItem
        Caption = #1573#1583#1582#1575#1604' '#1605#1576#1604#1594' '#1604#1604#1582#1586#1606#1577' '
        OnClick = N30Click
      end
      object N31: TMenuItem
        Caption = #1593#1585#1590' '#1575#1604#1605#1576#1575#1604#1594' '#1575#1604#1605#1608#1585#1583' '#1608' '#1575#1604#1605#1571#1582#1608#1584#1607' '#1605#1606' '#1575#1604#1582#1586#1606#1577
        OnClick = N31Click
      end
      object N32: TMenuItem
        Caption = #1571#1582#1584' '#1605#1576#1604#1594' '#1605#1606' '#1575#1604#1582#1586#1606#1577
        OnClick = N32Click
      end
      object N33: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1575#1604#1605#1576#1575#1604#1594' '#1575#1604#1605#1582#1586#1606#1577' '#1576#1606#1575#1569#1575' '#1593#1604#1609' '#1576#1610#1575#1606
        OnClick = N33Click
      end
      object N39: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1601#1609' '#1575#1604#1605#1576#1575#1604#1594' '#1605#1571#1582#1608#1584#1607' '#1605#1606' '#1575#1604#1582#1586#1606#1577
        OnClick = N39Click
      end
    end
    object N25: TMenuItem
      Caption = #1585#1608#1575#1578#1576
      object N26: TMenuItem
        Caption = #1578#1582#1586#1610#1606' '#1576#1610#1575#1606#1575#1578' '#1593#1575#1605#1604
        OnClick = N26Click
      end
      object N27: TMenuItem
        Caption = #1578#1582#1586#1610#1606' '#1602#1610#1605' '#1605#1587#1604#1605#1577' '#1604#1593#1575#1605#1604
        OnClick = N27Click
      end
      object N28: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1602#1610#1605' '#1605#1587#1604#1605#1577' '#1604#1593#1575#1605#1604
        OnClick = N28Click
      end
      object N40: TMenuItem
        Caption = #1605#1593#1604#1608#1605#1575#1578' '#1593#1606' '#1605#1587#1578#1581#1602#1575#1578' '#1604#1593#1575#1605#1604
        OnClick = N40Click
      end
      object N54: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1601#1609' '#1605#1585#1578#1576#1575#1578' '#1593#1575#1605#1604
        OnClick = N54Click
      end
      object N66: TMenuItem
        Caption = #1573#1602#1601#1575#1604' '#1581#1587#1575#1576' '#1593#1575#1605#1604
        OnClick = N66Click
      end
      object N67: TMenuItem
        Caption = #1573#1604#1594#1575#1569' '#1573#1602#1601#1575#1604' '#1581#1587#1575#1576' '#1593#1575#1605#1604
        OnClick = N67Click
      end
      object N81: TMenuItem
        Caption = #1578#1593#1583#1610#1604' '#1576#1610#1575#1606#1575#1578' '#1593#1605#1575#1604' '#1575#1604#1585#1608#1575#1578#1576
        OnClick = N81Click
      end
    end
    object N18: TMenuItem
      Caption = #1588#1575#1581#1606#1575#1578
      object N19: TMenuItem
        Caption = #1578#1582#1586#1610#1606' '#1576#1610#1575#1606#1575#1578' '#1588#1575#1581#1606#1577
        OnClick = N19Click
      end
      object N20: TMenuItem
        Caption = #1578#1582#1586#1610#1606' '#1576#1610#1575#1606#1575#1578' '#1587#1575#1574#1602
        Visible = False
        OnClick = N20Click
      end
      object N22: TMenuItem
        Caption = #1578#1582#1586#1610#1606' '#1573#1610#1585#1575#1583#1575#1578' '#1588#1575#1581#1606#1577
        OnClick = N22Click
      end
      object N23: TMenuItem
        Caption = #1578#1582#1586#1610#1606' '#1605#1589#1585#1608#1601#1575#1578' '#1588#1575#1581#1606#1577
        OnClick = N23Click
      end
      object N24: TMenuItem
        Caption = #1581#1587#1575#1576' '#1605#1583#1582#1608#1604' '#1588#1575#1581#1606#1577
        OnClick = N24Click
      end
      object N50: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1601#1609' '#1573#1610#1585#1575#1583#1575#1578' '#1608' '#1605#1589#1575#1585#1610#1601' '#1575#1604#1588#1575#1581#1606#1575#1578
        OnClick = N50Click
      end
      object N46: TMenuItem
        Caption = #1573#1583#1582#1575#1604' '#1585#1581#1604#1575#1578' '#1588#1575#1581#1606#1575#1578' '#1575#1604#1573#1610#1580#1575#1585
        OnClick = N46Click
      end
      object N47: TMenuItem
        Caption = #1587#1583#1575#1583' '#1602#1610#1605' '#1604#1587#1575#1574#1602#1610#1606' '#1588#1575#1581#1606#1575#1578' '#1575#1604#1573#1610#1580#1575#1585
        OnClick = N47Click
      end
      object N48: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1576#1610#1575#1606#1575#1578' '#1575#1604#1585#1581#1604#1575#1578' '#1604#1604#1587#1575#1574#1602#1610#1606' '#1576#1575#1604#1573#1610#1580#1575#1585' '#1608' '#1605#1583#1601#1608#1593#1575#1578#1607#1575
        OnClick = N48Click
      end
      object N80: TMenuItem
        Caption = #1578#1593#1583#1610#1604' '#1576#1610#1575#1606#1575#1578' '#1575#1604#1588#1575#1581#1606#1575#1578' '#1575#1604#1582#1575#1589#1577
        OnClick = N80Click
      end
    end
    object N21: TMenuItem
      Caption = #1601#1608#1575#1578#1610#1585
      object N5: TMenuItem
        Caption = #1593#1585#1590' '#1601#1608#1575#1578#1610#1585' '#1586#1576#1608#1606
        OnClick = N5Click
      end
      object N13: TMenuItem
        Caption = #1593#1585#1590' '#1601#1608#1575#1578#1610#1585' '#1610#1608#1605' '#1605#1593#1610#1606
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #1593#1585#1590' '#1601#1575#1578#1608#1585#1577' '#1576#1585#1602#1605#1607#1575
        OnClick = N14Click
      end
      object N38: TMenuItem
        Caption = #1573#1604#1594#1575#1569' '#1601#1575#1578#1608#1585#1577
        OnClick = N38Click
      end
      object N58: TMenuItem
        Caption = #1578#1593#1583#1610#1604' '#1601#1609' '#1587#1593#1585' '#1576#1610#1593' '#1604#1601#1575#1578#1608#1585#1577
        OnClick = N58Click
      end
      object N70: TMenuItem
        Caption = #1578#1593#1583#1610#1604' '#1573#1587#1605' '#1589#1575#1581#1576' '#1601#1575#1578#1608#1585#1607' '
        OnClick = N70Click
      end
      object N79: TMenuItem
        Caption = #1573#1593#1575#1583#1577' '#1580#1605#1593' '#1601#1575#1578#1608#1585#1607
        OnClick = N79Click
      end
    end
    object N10: TMenuItem
      Caption = #1575#1604#1605#1582#1586#1606
      object N3: TMenuItem
        Caption = #1573#1583#1582#1575#1604' '#1576#1590#1575#1593#1577
        object N68: TMenuItem
          Caption = #1576#1590#1575#1593#1607' '#1578#1605' '#1573#1610#1589#1575#1604#1607#1575
          OnClick = N68Click
        end
        object N71: TMenuItem
          Caption = #1576#1590#1575#1593#1607' '#1604#1605' '#1578#1589#1604
          OnClick = N71Click
        end
      end
      object N8: TMenuItem
        Caption = #1576#1590#1575#1593#1577' '#1575#1604#1605#1582#1586#1606
        OnClick = N8Click
      end
      object N2: TMenuItem
        Caption = #1573#1585#1580#1575#1593' '#1576#1590#1575#1593#1577
        OnClick = N2Click
      end
      object N41: TMenuItem
        Caption = #1578#1581#1608#1610#1604' '#1575#1604#1576#1590#1575#1593#1577
        OnClick = N41Click
      end
      object N35: TMenuItem
        Caption = #1578#1593#1583#1610#1604' '#1601#1609' '#1587#1593#1585' '#1575#1604#1588#1585#1575#1569' '#1576#1575#1604#1583#1610#1606#1575#1585' '#1604#1602#1591#1593#1577
        OnClick = N35Click
      end
      object N36: TMenuItem
        Caption = #1578#1593#1583#1610#1604' '#1601#1609' '#1587#1593#1585' '#1576#1610#1593
        OnClick = N36Click
      end
      object N62: TMenuItem
        Caption = #1593#1585#1590' '#1575#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607
        OnClick = N62Click
      end
      object N63: TMenuItem
        Caption = #1593#1585#1590' '#1578#1601#1589#1610#1604#1610' '#1604#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607
        OnClick = N63Click
      end
      object N69: TMenuItem
        Caption = #1573#1585#1580#1575#1593' '#1605#1606' '#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607
        OnClick = N69Click
      end
      object N72: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1581#1608#1610#1604' '#1576#1590#1575#1593#1607' '#1605#1606' '#1575#1604#1605#1582#1586#1606' '#1575#1604#1605#1572#1602#1578' '#1573#1604#1609' '#1575#1604#1581#1575#1604#1609
        OnClick = N72Click
      end
      object N73: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1608' '#1591#1576#1575#1593#1577' '#1576#1590#1575#1593#1607' '#1575#1604#1605#1608#1585#1583#1607' '#1605#1606' '#1605#1608#1585#1583
        OnClick = N73Click
      end
      object N75: TMenuItem
        Caption = #1578#1582#1589#1610#1589' '#1576#1590#1575#1593#1607' '#1605#1583#1582#1604#1607' '#1605#1587#1576#1602#1575' '#1604#1605#1608#1585#1583
        OnClick = N75Click
      end
    end
    object N11: TMenuItem
      Caption = #1575#1604#1605#1575#1604#1610#1577
      object N1: TMenuItem
        Caption = #1605#1576#1610#1593#1575#1578' '#1575#1604#1610#1608#1605#1610#1577
        OnClick = N1Click
      end
      object N4: TMenuItem
        Caption = #1578#1581#1589#1610#1604' '#1575#1604#1583#1610#1608#1606
        OnClick = N4Click
      end
      object N45: TMenuItem
        Caption = #1576#1610#1593' '#1605#1606' '#1575#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607
        OnClick = N45Click
      end
      object N59: TMenuItem
        Caption = #1578#1587#1583#1610#1583' '#1602#1610#1605' '#1604#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607' '#1575#1604#1605#1576#1575#1593#1607
        OnClick = N59Click
      end
      object N6: TMenuItem
        Caption = #1575#1604#1571#1585#1576#1575#1581
        object N16: TMenuItem
          Caption = #1575#1604#1571#1585#1576#1575#1581' '#1604#1589#1606#1601
          OnClick = N16Click
        end
        object N7: TMenuItem
          Caption = #1575#1604#1571#1585#1576#1575#1581' '#1604#1606#1608#1593
          OnClick = N7Click
        end
        object N17: TMenuItem
          Caption = #1575#1604#1571#1585#1576#1575#1581' '#1604#1601#1578#1585#1577
          OnClick = N17Click
        end
      end
      object N15: TMenuItem
        Caption = #1581#1587#1575#1576' '#1575#1604#1605#1576#1610#1593#1575#1578' '#1604#1601#1578#1585#1577
        OnClick = N15Click
      end
      object N34: TMenuItem
        Caption = #1587#1583#1575#1583' '#1583#1610#1606' '#1604#1605#1608#1585#1583
        OnClick = N34Click
      end
      object N42: TMenuItem
        Caption = #1573#1583#1582#1575#1604' '#1578#1581#1608#1610#1604#1575#1578' '#1605#1575#1604#1610#1607
        OnClick = N42Click
      end
      object N43: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1575#1604#1578#1581#1608#1610#1604#1575#1578' '#1575#1604#1605#1575#1604#1610#1577
        OnClick = N43Click
      end
      object N44: TMenuItem
        Caption = #1573#1583#1582#1575#1604' '#1575#1604#1605#1576#1575#1604#1594' '#1575#1604#1605#1587#1583#1583#1607' '#1604#1593#1605#1604#1575#1569' '#1575#1604#1578#1581#1608#1610#1604#1575#1578' '#1575#1604#1605#1575#1604#1610#1577
        OnClick = N44Click
      end
      object N49: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1578#1601#1575#1589#1610#1604' '#1587#1583#1575#1583' '#1575#1604#1583#1610#1608#1606
        OnClick = N49Click
      end
      object N60: TMenuItem
        Caption = #1593#1585#1590' '#1605#1576#1610#1593#1575#1578' '#1575#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607
        OnClick = N60Click
      end
      object N61: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1593#1605#1604#1610#1575#1578' '#1575#1604#1587#1583#1575#1583' '#1604#1604#1576#1590#1575#1593#1607' '#1575#1604#1605#1581#1608#1604#1607
        OnClick = N61Click
      end
      object N74: TMenuItem
        Caption = #1593#1585#1590' '#1608' '#1578#1593#1583#1610#1604' '#1587#1583#1575#1583' '#1583#1610#1606' '#1604#1605#1608#1585#1583
        OnClick = N74Click
      end
    end
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'd:\'#1605#1606#1592#1608#1605#1577' '#1575#1604#1605#1582#1575#1586#1606' '#1608#1575#1604#1605#1576#1610#1593#1575#1578' '#1575#1604#1593#1575#1605#1577'\STORE.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 96
    Top = 48
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 56
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = password
    Left = 22
    Top = 84
  end
  object password: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CODEWORDE')
    Left = 54
    Top = 84
    object passwordNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'CODEWORDE.NAME'
    end
    object passwordCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'CODEWORDE.CODE'
    end
  end
end
