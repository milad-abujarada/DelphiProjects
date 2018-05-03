unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Grids, DBGrids, jpeg;

type
  TF_print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape9: TQRShape;
    QRImage1: TQRImage;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRShape11: TQRShape;
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape10: TQRShape;
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    QRExpr1: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel10: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_print: TF_print;

implementation

{$R *.DFM}
uses unit2;

end.
