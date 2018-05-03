unit Unit25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm25 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
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
  Form25: TForm25;

implementation

uses Unit22, Unit26, Unit1;

{$R *.dfm}

procedure TForm25.BitBtn1Click(Sender: TObject);
begin
form22.Query_search_password.Close;
form22.Query_search_password.Prepare;
form22.Query_search_password.Open;
if(form22.Query_search_password['password1']= edit1.Text)then
begin
form25.Hide;
form26.Show;
edit1.Text:='';
end
else
begin
edit1.SetFocus;
application.MessageBox('ﬂ·„… «·„—Ê— €Ì— ’ÕÌÕ…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
end;

procedure TForm25.BitBtn2Click(Sender: TObject);
begin
form25.Hide;
form1.Show;
edit1.Text:='';
end;

procedure TForm25.FormShow(Sender: TObject);
begin
edit1.Text:='';
end;

end.
