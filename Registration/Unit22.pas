unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, QRExport;

type
  Tf_count_pri = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel10: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRImage1: TQRImage;
    QRShape16: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel5: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_count_pri: Tf_count_pri;

implementation

{$R *.DFM}
 uses unit2;

end.
