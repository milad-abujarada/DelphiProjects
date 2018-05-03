unit Unit26;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ExtCtrls;

type
  TForm26 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Edit2: TEdit;
    DataSource1: TDataSource;
    Query_change_password: TQuery;
    Query_change_passwordPASSWORD1: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm26.BitBtn1Click(Sender: TObject);
begin
if(edit1.Text=edit2.Text)then
begin
Query_change_password.Close;
Query_change_password.Prepare;
Query_change_password.Open;
Query_change_password.Edit;
Query_change_password['password1']:=edit1.Text;
Query_change_password.Post;
edit1.Text:='';
edit2.Text:='';
application.MessageBox(' „  €Ì— ﬂ·„… «·„—Ê— »‰Ã«Õ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
form26.Hide;
form1.Show;
end
else
begin
edit1.Text:='';
edit2.Text:='';
edit1.SetFocus;
application.MessageBox('ﬂ·„… «·„—Ê— €Ì— ’ÕÌÕ…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
end;

procedure TForm26.BitBtn2Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
form26.Hide;
form1.Show;
end;

procedure TForm26.FormShow(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
end;

end.
