unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables;

type
  TForm22 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    Query_search_password: TQuery;
    Query_search_passwordPASSWORD1: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation

uses Unit1, Unit23;

{$R *.dfm}

procedure TForm22.BitBtn1Click(Sender: TObject);
begin
Query_search_password.Close;
Query_search_password.Prepare;
Query_search_password.Open;
if(Query_search_password['password1']= edit1.Text)then
begin
form23.Show;
edit1.Text:='';
end
else
begin
edit1.SetFocus;
application.MessageBox('ﬂ·„… «·„—Ê— €Ì— ’ÕÌÕ…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
end;

procedure TForm22.BitBtn2Click(Sender: TObject);
begin
form22.Hide;
form1.Show;
end;

procedure TForm22.FormShow(Sender: TObject);
begin
edit1.Text:='';
end;

end.
