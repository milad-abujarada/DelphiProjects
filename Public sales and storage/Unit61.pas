unit Unit61;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm61 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QuickRep2: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRShape6: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    DetailBand2: TQRBand;
    PageFooterBand1: TQRBand;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QuickRep3: TQuickRep;
    TitleBand2: TQRBand;
    ColumnHeaderBand3: TQRBand;
    DetailBand3: TQRBand;
    PageFooterBand2: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape13: TQRShape;
    QRLabel16: TQRLabel;
    QRShape14: TQRShape;
    QRLabel17: TQRLabel;
    QRShape15: TQRShape;
    QRLabel18: TQRLabel;
    QRShape16: TQRShape;
    QRLabel19: TQRLabel;
    QRShape17: TQRShape;
    QRLabel20: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QuickRep4: TQuickRep;
    TitleBand3: TQRBand;
    ColumnHeaderBand4: TQRBand;
    DetailBand4: TQRBand;
    PageFooterBand3: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape23: TQRShape;
    QRLabel31: TQRLabel;
    QRShape24: TQRShape;
    QRLabel32: TQRLabel;
    QRShape25: TQRShape;
    QRLabel33: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QuickRep5: TQuickRep;
    TitleBand4: TQRBand;
    ColumnHeaderBand5: TQRBand;
    DetailBand5: TQRBand;
    PageFooterBand4: TQRBand;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape29: TQRShape;
    QRLabel37: TQRLabel;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QuickRep6: TQuickRep;
    TitleBand5: TQRBand;
    ColumnHeaderBand6: TQRBand;
    DetailBand6: TQRBand;
    PageFooterBand5: TQRBand;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRLabel45: TQRLabel;
    QRDBText17: TQRDBText;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRDBText18: TQRDBText;
    QuickRep7: TQuickRep;
    TitleBand6: TQRBand;
    ColumnHeaderBand7: TQRBand;
    DetailBand7: TQRBand;
    PageFooterBand6: TQRBand;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape37: TQRShape;
    QRLabel50: TQRLabel;
    QRShape38: TQRShape;
    QRLabel51: TQRLabel;
    QRShape39: TQRShape;
    QRLabel52: TQRLabel;
    QRShape40: TQRShape;
    QRLabel53: TQRLabel;
    QRShape41: TQRShape;
    QRDBText19: TQRDBText;
    QRShape42: TQRShape;
    QRDBText20: TQRDBText;
    QRShape43: TQRShape;
    QRDBText21: TQRDBText;
    QRShape44: TQRShape;
    QRDBText22: TQRDBText;
    QuickRep8: TQuickRep;
    TitleBand7: TQRBand;
    ColumnHeaderBand8: TQRBand;
    DetailBand8: TQRBand;
    PageFooterBand7: TQRBand;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape45: TQRShape;
    QRLabel60: TQRLabel;
    QRShape46: TQRShape;
    QRLabel61: TQRLabel;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRShape49: TQRShape;
    QRLabel62: TQRLabel;
    QRShape50: TQRShape;
    QRDBText25: TQRDBText;
    QuickRep9: TQuickRep;
    TitleBand8: TQRBand;
    ColumnHeaderBand9: TQRBand;
    DetailBand9: TQRBand;
    PageFooterBand8: TQRBand;
    QRLabel63: TQRLabel;
    QRShape51: TQRShape;
    QRLabel64: TQRLabel;
    QRShape52: TQRShape;
    QRLabel65: TQRLabel;
    QRShape53: TQRShape;
    QRLabel66: TQRLabel;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QuickRep10: TQuickRep;
    TitleBand9: TQRBand;
    ColumnHeaderBand10: TQRBand;
    DetailBand10: TQRBand;
    PageFooterBand9: TQRBand;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRShape57: TQRShape;
    QRLabel69: TQRLabel;
    QRShape58: TQRShape;
    QRLabel70: TQRLabel;
    QRShape59: TQRShape;
    QRLabel71: TQRLabel;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QuickRep11: TQuickRep;
    TitleBand10: TQRBand;
    ColumnHeaderBand11: TQRBand;
    DetailBand11: TQRBand;
    PageFooterBand10: TQRBand;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRShape63: TQRShape;
    QRLabel74: TQRLabel;
    QRShape64: TQRShape;
    QRLabel75: TQRLabel;
    QRShape65: TQRShape;
    QRLabel76: TQRLabel;
    QRDBText32: TQRDBText;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRShape68: TQRShape;
    QuickRep12: TQuickRep;
    TitleBand11: TQRBand;
    ColumnHeaderBand12: TQRBand;
    DetailBand12: TQRBand;
    PageFooterBand11: TQRBand;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape69: TQRShape;
    QRLabel83: TQRLabel;
    QRShape70: TQRShape;
    QRLabel84: TQRLabel;
    QRShape71: TQRShape;
    QRLabel85: TQRLabel;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QuickRep13: TQuickRep;
    QRBand1: TQRBand;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRBand2: TQRBand;
    QRShape75: TQRShape;
    QRLabel88: TQRLabel;
    QRShape76: TQRShape;
    QRLabel89: TQRLabel;
    QRShape77: TQRShape;
    QRLabel90: TQRLabel;
    QRBand3: TQRBand;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRDBText38: TQRDBText;
    QRShape80: TQRShape;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRBand4: TQRBand;
    QuickRep14: TQuickRep;
    QRBand5: TQRBand;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRBand6: TQRBand;
    QRShape81: TQRShape;
    QRLabel97: TQRLabel;
    QRShape82: TQRShape;
    QRLabel98: TQRLabel;
    QRShape83: TQRShape;
    QRLabel99: TQRLabel;
    QRBand7: TQRBand;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRBand8: TQRBand;
    QuickRep15: TQuickRep;
    QRBand9: TQRBand;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRBand10: TQRBand;
    QRShape87: TQRShape;
    QRLabel106: TQRLabel;
    QRShape88: TQRShape;
    QRLabel107: TQRLabel;
    QRShape89: TQRShape;
    QRLabel108: TQRLabel;
    QRBand11: TQRBand;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRBand12: TQRBand;
    QRShape93: TQRShape;
    QRLabel109: TQRLabel;
    QRShape94: TQRShape;
    QRDBText47: TQRDBText;
    QuickRep17: TQuickRep;
    TitleBand12: TQRBand;
    ColumnHeaderBand13: TQRBand;
    DetailBand13: TQRBand;
    PageFooterBand12: TQRBand;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel118: TQRLabel;
    QRShape97: TQRShape;
    QRShape96: TQRShape;
    QRLabel117: TQRLabel;
    QRDBText48: TQRDBText;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRDBText49: TQRDBText;
    QuickRep16: TQuickRep;
    QRBand13: TQRBand;
    QRLabel116: TQRLabel;
    QRLabel119: TQRLabel;
    QRBand14: TQRBand;
    QRShape95: TQRShape;
    QRShape98: TQRShape;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRBand15: TQRBand;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRBand16: TQRBand;
    QuickRep18: TQuickRep;
    QRBand17: TQRBand;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRBand18: TQRBand;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRBand19: TQRBand;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRBand20: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QuickRep19: TQuickRep;
    QRBand21: TQRBand;
    QRLabel132: TQRLabel;
    QRBand22: TQRBand;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRBand23: TQRBand;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRBand24: TQRBand;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRLabel136: TQRLabel;
    QRDBText56: TQRDBText;
    QRLabel133: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QuickRep20: TQuickRep;
    QRBand25: TQRBand;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRBand26: TQRBand;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRShape115: TQRShape;
    QRLabel147: TQRLabel;
    QRBand27: TQRBand;
    QRShape116: TQRShape;
    QRShape117: TQRShape;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRShape118: TQRShape;
    QRDBText59: TQRDBText;
    QRBand28: TQRBand;
    QuickRep21: TQuickRep;
    QRBand29: TQRBand;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRBand30: TQRBand;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    QRShape121: TQRShape;
    QRLabel155: TQRLabel;
    QRBand31: TQRBand;
    QRShape122: TQRShape;
    QRShape123: TQRShape;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRShape124: TQRShape;
    QRDBText62: TQRDBText;
    QRBand32: TQRBand;
    QRLabel156: TQRLabel;
    QuickRep22: TQuickRep;
    QRBand33: TQRBand;
    QRLabel157: TQRLabel;
    QRBand34: TQRBand;
    QRShape125: TQRShape;
    QRLabel158: TQRLabel;
    QRShape126: TQRShape;
    QRLabel159: TQRLabel;
    QRShape127: TQRShape;
    QRLabel160: TQRLabel;
    QRBand35: TQRBand;
    QRShape128: TQRShape;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRBand36: TQRBand;
    QuickRep23: TQuickRep;
    QRBand37: TQRBand;
    QRLabel162: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRLabel166: TQRLabel;
    QRBand38: TQRBand;
    QRShape131: TQRShape;
    QRLabel167: TQRLabel;
    QRShape132: TQRShape;
    QRLabel168: TQRLabel;
    QRShape133: TQRShape;
    QRLabel169: TQRLabel;
    QRBand39: TQRBand;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRShape137: TQRShape;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRBand40: TQRBand;
    QuickRep24: TQuickRep;
    QRBand41: TQRBand;
    QRLabel161: TQRLabel;
    QRBand42: TQRBand;
    QRShape139: TQRShape;
    QRLabel174: TQRLabel;
    QRBand43: TQRBand;
    QRShape140: TQRShape;
    QRDBText69: TQRDBText;
    QRBand44: TQRBand;
    QuickRep25: TQuickRep;
    QRBand45: TQRBand;
    QRLabel163: TQRLabel;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRBand46: TQRBand;
    QRShape134: TQRShape;
    QRLabel173: TQRLabel;
    QRShape138: TQRShape;
    QRLabel175: TQRLabel;
    QRShape141: TQRShape;
    QRLabel176: TQRLabel;
    QRBand47: TQRBand;
    QRShape142: TQRShape;
    QRShape143: TQRShape;
    QRShape144: TQRShape;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRBand48: TQRBand;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRShape145: TQRShape;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRShape148: TQRShape;
    QRLabel179: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    QRLabel182: TQRLabel;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRShape151: TQRShape;
    QRShape152: TQRShape;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QuickRep26: TQuickRep;
    QRBand49: TQRBand;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRLabel186: TQRLabel;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRBand50: TQRBand;
    QRShape153: TQRShape;
    QRLabel189: TQRLabel;
    QRShape154: TQRShape;
    QRLabel190: TQRLabel;
    QRShape155: TQRShape;
    QRLabel191: TQRLabel;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRShape158: TQRShape;
    QRShape159: TQRShape;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRLabel195: TQRLabel;
    QRBand51: TQRBand;
    QRShape160: TQRShape;
    QRShape161: TQRShape;
    QRShape162: TQRShape;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRShape163: TQRShape;
    QRShape164: TQRShape;
    QRShape165: TQRShape;
    QRShape166: TQRShape;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRBand52: TQRBand;
    QRShape167: TQRShape;
    QRShape168: TQRShape;
    QRLabel183: TQRLabel;
    QRDBText84: TQRDBText;
    QRShape169: TQRShape;
    QRLabel196: TQRLabel;
    QRShape170: TQRShape;
    QRLabel197: TQRLabel;
    QRDBText85: TQRDBText;
    QRShape171: TQRShape;
    QRShape172: TQRShape;
    QRDBText86: TQRDBText;
    QuickRep27: TQuickRep;
    QRBand53: TQRBand;
    QRLabel198: TQRLabel;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRLabel201: TQRLabel;
    QRBand54: TQRBand;
    QRShape173: TQRShape;
    QRLabel202: TQRLabel;
    QRShape174: TQRShape;
    QRLabel203: TQRLabel;
    QRShape175: TQRShape;
    QRLabel204: TQRLabel;
    QRBand55: TQRBand;
    QRShape176: TQRShape;
    QRShape177: TQRShape;
    QRShape178: TQRShape;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRBand56: TQRBand;
    QRShape180: TQRShape;
    QRDBText90: TQRDBText;
    QRShape183: TQRShape;
    QRLabel208: TQRLabel;
    QRLabel205: TQRLabel;
    QRLabel206: TQRLabel;
    procedure QuickRep23EndPage(Sender: TCustomQuickRep);
  private
    { Private declarations }
  public
    { Public declarations }
    nu:integer;
  end;

var
  Form61: TForm61;

implementation

uses Unit37, Unit1;

{$R *.dfm}

procedure TForm61.QuickRep23EndPage(Sender: TCustomQuickRep);
begin
if nu=1then
begin
form37.view_in_dbgrid.First;
while not(form37.view_in_dbgrid.Eof)do
form37.view_in_dbgrid.Delete;
form1.IBTransaction1.Commit;
form37.view_in_dbgrid.Close;
form37.ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
form37.ibtable1.Insert;
form37.button3.Enabled:=false;

form37.combobox3.Text:='';
form37.places.Close;
form37.places.Prepare;
form37.places.Open;
form37.combobox3.Clear;
while(not(form37.places.Eof)) do
begin
form37.combobox3.Items.Add(form37.places['place']);
form37.places.Next;
end;
end;
end;

end.
