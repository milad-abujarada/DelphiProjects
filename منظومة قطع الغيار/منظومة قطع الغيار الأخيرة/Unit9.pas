unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables;

type
  TForm9 = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape12: TQRShape;
    QRShape16: TQRShape;
    QRLabel10: TQRLabel;
    Query_rep_fatora: TQuery;
    Query_rep_fatoraBILLS_NO: TIntegerField;
    Query_rep_fatoraBILLS_QUANTITY: TIntegerField;
    Query_rep_fatoraBILLS_PRICE: TFloatField;
    Query_rep_fatoraBILLS_DATE: TStringField;
    Query_rep_fatoraBILLS_TYPE: TStringField;
    Query_rep_fatoraBILLS_KIND: TStringField;
    Query_rep_fatoraBILLS_TOTAL_PRICE: TFloatField;
    DataSource18: TDataSource;
    Query_rep_fatoraRECIVER_NAME: TStringField;
    QRExpr1: TQRExpr;
    DataSource1: TDataSource;
    Query_bring_data_from_paied_for_every_sale: TQuery;
    Query_bring_data_from_paied_for_every_saleCUS_NAME: TStringField;
    Query_bring_data_from_paied_for_every_salePAY_TYPE: TStringField;
    Query_bring_data_from_paied_for_every_salePAIED_VALUE: TFloatField;
    Query_bring_data_from_paied_for_every_saleREMAINING_VALUE: TFloatField;
    Query_bring_data_from_paied_for_every_saleCHECK_NO: TIntegerField;
    Query_bring_data_from_paied_for_every_salePAY_NO: TIntegerField;
    Query_bring_data_from_paied_for_every_salePAIED_DATE: TStringField;
    Query_bring_data_from_paied_for_every_saleSERIAL_NO: TIntegerField;
    Query_rep_fatoraPAY_NO: TIntegerField;
    QRLabel28: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel26: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel22: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

end.
