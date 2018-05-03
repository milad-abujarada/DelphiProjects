unit Un_F_reg_print;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TF_reg_print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRExpr1: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_reg_print: TF_reg_print;

implementation

{$R *.dfm}
uses unit2;

end.
