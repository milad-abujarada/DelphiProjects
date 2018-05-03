unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm13 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape13: TQRShape;
    QRShape11: TQRShape;
    QRShape10: TQRShape;
    QRShape9: TQRShape;
    QRShape15: TQRShape;
    QRExpr1: TQRExpr;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    Query_empty_bill: TQuery;
    DataSource1: TDataSource;
    Query_empty_billNUM: TIntegerField;
    Query_empty_billKIND: TStringField;
    Query_empty_billTYPE_NAME: TStringField;
    Query_empty_billQUANTITY: TIntegerField;
    Query_empty_billPRICE: TFloatField;
    Query_empty_billTOTAL: TFloatField;
    Query_empty_billRECIVER: TStringField;
    QRLabel26: TQRLabel;
    QRShape19: TQRShape;
    QRLabel27: TQRLabel;
    QRShape1: TQRShape;
    QRLabel25: TQRLabel;
    QRShape18: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

end.
