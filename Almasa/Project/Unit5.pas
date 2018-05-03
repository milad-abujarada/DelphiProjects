unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    Panel7: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Panel8: TPanel;
    Label4: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TQuery;
    Query1TYP_NO: TIntegerField;
    Query1TYP_NAME: TStringField;
    Query1KIND_NAME: TStringField;
    Query2: TQuery;
    Query2VARIETY_NO: TIntegerField;
    Query2VARIETY_NAME: TStringField;
    Query3: TQuery;
    Query3VARIETY_NO: TIntegerField;
    Query3VARIETY_NAME: TStringField;
    DataSource3: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
var
count:integer;
a:boolean;
begin
if(edit1.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit;
end;
count:=0;
query2.Close;
query2.open;
a:=false;
while((not(query2.eof))and(a=false))do
begin
if(query2['variety_name']=edit1.text)then
a:=true;
query2.next;
end;
query2.close;
if(a=true)then
begin
application.MessageBox('”»ﬁ ≈œŒ«· Â–« «·’‰›','Œÿ√',mb_iconerror+mb_ok);
edit1.SetFocus;
exit;
end;

///////// Õ”«» ⁄œœ «·ÕﬁÊ· ///////
count:=count+1;
query2.Open;
while (not(query2.Eof)) do
begin
query2.Edit;
query2['variety_no']:=count;
query2.Post;
query2.Next;
count:=count+1;
end;
query2.Close;
////////////////////////////////


query2.Open;
query2.Append;
query2['variety_name']:=edit1.Text;
query2['variety_no']:=count;
query2.Post;
application.MessageBox(' „ Õ›Ÿ «·’‰›','„‰ŸÊ„… «·„Œ«“‰',mb_iconinformation+mb_ok);
begin
edit1.SetFocus;
exit;
end;

 end;



procedure TForm5.BitBtn3Click(Sender: TObject);
begin
panel2.Visible:=false;
form5.Hide;
form3.show;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
var
count:integer;
a:boolean;
begin
if(combobox1.Text='')then
begin
application.MessageBox('«·—Ã«¡ «Œ Ì«— «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox1.SetFocus;
exit;
end;
if(edit2.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
exit;
end;
count:=0;
query1.Close;
query1.open;
a:=false;
while((not(query1.eof))and(a=false))do
begin
if((query1['typ_name']=edit2.text)and(query1['kind_name']=combobox1.Text))then
a:=true;
query1.next;
end;
query1.close;
if(a=true)then
begin
application.MessageBox('”»ﬁ ≈œŒ«· Â–« «·‰Ê⁄  Õ  Â–« «·’‰›','Œÿ√',mb_iconerror+mb_ok);
edit2.SetFocus;
exit;
end;

///////// Õ”«» ⁄œœ «·ÕﬁÊ· ///////
count:=count+1;
query1.Open;
while (not(query1.Eof)) do
begin
query1.Edit;
query1['typ_no']:=count;
query1.Post;
query1.Next;
count:=count+1;
end;
query1.Close;
////////////////////////////////


query1.Open;
query1.Append;
query1['typ_name']:=edit2.Text;
query1['kind_name']:=combobox1.Text;
query1['typ_no']:=count;
query1.Post;
application.MessageBox(' „ Õ›Ÿ «·‰Ê⁄','„‰ŸÊ„… «·„Œ«“‰',mb_iconinformation+mb_ok);
begin
edit2.SetFocus;
exit;
end;

 end;


procedure TForm5.BitBtn4Click(Sender: TObject);
begin
panel1.Visible:=false;
form5.Hide;
form3.show;
end;

procedure TForm5.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
edit2.SetFocus;
end;

procedure TForm5.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
bitbtn2.SetFocus;
end;

procedure TForm5.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
bitbtn1.SetFocus;
end;

end.
