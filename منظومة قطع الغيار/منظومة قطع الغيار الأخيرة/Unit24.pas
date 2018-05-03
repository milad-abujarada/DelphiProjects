unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm24 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;

implementation

uses Unit22, Unit5;

{$R *.dfm}

procedure TForm24.BitBtn1Click(Sender: TObject);
var
n:integer;
begin
form22.Query_search_password.Close;
form22.Query_search_password.Prepare;
form22.Query_search_password.Open;
if(form22.Query_search_password['password1']= edit1.Text)then
begin
//////////////////////////
n:=application.messagebox('Â·  —€» ›Ï Õ–› «·ﬁÌ„… «·„Œ «—…','„‰ŸÊ„… «·Õ”«»« ',mb_iconquestion+mb_yesno);
if(n=id_yes)then
begin
form5.Query_delete.Close;
form5.Query_delete.Prepare;
form5.Query_delete.Params[0].Value:=form5.kin;
form5.Query_delete.Params[1].Value:=form5.tye;
form5.Query_delete.Params[2].Value:=form5.quan;
form5.Query_delete.Params[3].Value:=form5.ava;
form5.Query_delete.Params[4].Value:=form5.buy_price;
form5.Query_delete.Params[5].Value:=form5.sale_piece_price;
form5.Query_delete.Params[6].Value:=form5.bring_date;
form5.Query_delete.Open;
form5.Query_delete_from_gain.Close;
form5.Query_delete_from_gain.Prepare;
form5.Query_delete_from_gain.Params[0].Value:=form5.query_delete['no_in_gain_table'];
form5.Query_delete_from_gain.Open;
form5.Query_delete_from_gain.Delete;
form5.query_delete.Delete;
form5.query1.Close;
form5.query1.Open;
application.MessageBox(' „ Õ–› «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
form5.bitbtn2.Enabled:=false;
form5.bitbtn9.Enabled:=false;
form5.bitbtn10.Enabled:=false;
form5.bitbtn6.Enabled:=false;
form24.Hide;
end;

/////////////////////////
edit1.Text:='';
end
else
begin
edit1.SetFocus;
application.MessageBox('ﬂ·„… «·„—Ê— €Ì— ’ÕÌÕ…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;

end;

procedure TForm24.BitBtn2Click(Sender: TObject);
begin
form24.Hide;
edit1.Text:='';
end;

procedure TForm24.FormShow(Sender: TObject);
begin
edit1.Text:='';
end;

end.
