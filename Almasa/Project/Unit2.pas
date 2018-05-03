unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, QRCtrls, QuickRpt, DB, DBTables,
  jpeg, Grids, DBGrids;

type
  TForm24 = class(TForm)
    Panel57: TPanel;
    Panel58: TPanel;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    Panel60: TPanel;
    Panel59: TPanel;
    Panel1: TPanel;
    Label65: TLabel;
    Label66: TLabel;
    Panel2: TPanel;
    Label61: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Panel3: TPanel;
    BitBtn28: TBitBtn;
    BitBtn9: TBitBtn;
    CheckBox6: TCheckBox;
    Panel7: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    BitBtn31: TBitBtn;
    BitBtn32: TBitBtn;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label68: TLabel;
    BitBtn30: TBitBtn;
    BitBtn29: TBitBtn;
    Query1: TQuery;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel8: TPanel;
    Panel15: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    CheckBox8: TCheckBox;
    Edit5: TEdit;
    Query1ID: TIntegerField;
    Query1INPUT_DAILY: TIntegerField;
    Query1UPDATE_DAILY: TIntegerField;
    Query1INPUT_SPEND: TIntegerField;
    Query1UPDATE_SPEND: TIntegerField;
    Query1USERS: TIntegerField;
    Query1PREDECESSER: TIntegerField;
    Query1U_NAME: TStringField;
    Query1U_PASSWORD: TIntegerField;
    Query1INPUT_GOODS: TIntegerField;
    Query1UPDATE_GOODS: TIntegerField;
    Query1CALCULATE_SPEND: TIntegerField;
    Query1INCOME_DAILY: TIntegerField;
    Query1EMPLOYEE: TIntegerField;
    Panel4: TPanel;
    SpeedButton6: TSpeedButton;
    Panel5: TPanel;
    Label9: TLabel;
    Panel6: TPanel;
    Label7: TLabel;
    Edit3: TEdit;
    Edit6: TEdit;
    Label8: TLabel;
    Panel14: TPanel;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    Query2: TQuery;
    DataSource2: TDataSource;
    procedure BitBtn29Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm24.BitBtn29Click(Sender: TObject);
var
a:boolean;
n:integer;
begin
if(combobox1.Text='')then
begin
application.MessageBox('«œŒ· «”„ «·„” Œœ„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox1.SetFocus;
exit;
end;
query1.Open;
a:=false;
while(not(query1.Eof)and(a=false))do
begin
if(query1['u_name']=combobox1.Text)then
a:=true;
query1.Next;
end;
query1.Close;
n:=application.MessageBox('Â·  —Ìœ »«· √ﬂÌœ Õ–› «”„ «·„” Œœ„',' ‰»ÌÂ',mb_iconquestion+mb_yesno);
if(n=id_yes)then
begin
query1.Open;
a:=false;
while(not(query1.Eof)and(a=false))do
begin
if(query1['u_name']=combobox1.Text)then
query1.Delete;
query1.Next;
end;
query1.close;
combobox1.Clear;
Query1.Open;
while(not(Query1.Eof))do
begin
ComboBox1.Items.Add(Query1['u_name']);
Query1.Next;
end;
Query1.Close;
combobox1.SetFocus;
end
else
if(n=id_no)then
combobox1.SetFocus;
end;

procedure TForm24.BitBtn30Click(Sender: TObject);
begin
panel59.Visible:=false;
end;

procedure TForm24.BitBtn31Click(Sender: TObject);
var
a:boolean;
begin
if (edit1.Text='')then
begin
application.MessageBox('«œŒ· «”„ «·„” Œœ„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.setfocus;
exit;
end;
if (edit2.Text='')then
begin
application.MessageBox('«œŒ· ﬂ·„… «·„—Ê—',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.setfocus;
exit;
end;
query1.Open;
a:=false;
while((not(query1.Eof))and (a=false))do
begin
if((query1['u_name']=edit1.Text)and(query1['u_password']=edit2.Text))then
begin
edit5.Text:=query1['u_name'];
edit4.Text:=query1['u_password'];
////////////////////////////////////////
if(query1['input_goods']=1)then
CheckBox4.Checked:=true
else
CheckBox4.Checked:=false;

if(query1['update_goods']=1)then
CheckBox5.Checked:=true
else
CheckBox5.Checked:=false;

if(query1['input_daily']=1)then
CheckBox17.Checked:=true
else
CheckBox17.Checked:=false;

if(query1['update_daily']=1)then
CheckBox1.Checked:=true
else
CheckBox1.Checked:=false;

if(query1['input_spend']=1)then
CheckBox15.Checked:=true
else
CheckBox15.Checked:=false;

if(query1['update_spend']=1)then
CheckBox2.Checked:=true
else
CheckBox2.Checked:=false;

if(query1['calculate_spend']=1)then
CheckBox3.Checked:=true
else
CheckBox3.Checked:=false;

if(query1['income_daily']=1)then
CheckBox16.Checked:=true
else
CheckBox16.Checked:=false;

if(query1['predecesser']=1)then
CheckBox14.Checked:=true
else
CheckBox14.Checked:=false;

if(query1['users']=1)then
CheckBox6.Checked:=true
else
CheckBox6.Checked:=false;

if(query1['employee']=1)then
CheckBox8.Checked:=true
else
CheckBox8.Checked:=false;

a:=true;
end;
query1.Next;
end;
query1.Close;

if(not(a))then
begin
application.MessageBox('·«ÌÊÃœ „” Œœ„ »Â–« «·«”„','Œÿ√',mb_iconerror+mb_ok);
edit1.setfocus;
exit;
end;
panel60.Visible:=false;
panel57.Visible:=true;
end;


procedure TForm24.BitBtn32Click(Sender: TObject);
begin
panel60.Visible:=false;
end;

procedure TForm24.BitBtn9Click(Sender: TObject);
var
a:boolean;
nu:integer;
begin
if (edit5.Text='')then
begin
application.MessageBox('«œŒ· «”„ «·„” Œœ„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit5.setfocus;
exit;
end;
if (edit4.Text='')then
begin
application.MessageBox('«œŒ· ﬂ·„… «·„—Ê—',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit4.setfocus;
exit;
end;

query1.Close;
query1.Open;
a:=false;
while((not(query1.Eof))and (a=false))do
begin
if(query1['u_name']=edit5.Text)then
begin
query1.Edit;
query1['u_name']:=edit5.Text;
query1['u_password']:=edit4.Text;

if(CheckBox4.Checked=true)then
query1['input_goods']:=1
else
query1['input_goods']:=0;

if(CheckBox5.Checked=true)then
query1['update_goods']:=1
else
query1['update_goods']:=0;

if(CheckBox17.Checked=true)then
query1['input_daily']:=1
else
query1['input_daily']:=0;

if(CheckBox1.Checked=true)then
query1['update_daily']:=1
else
query1['update_daily']:=0;

if(CheckBox15.Checked=true)then
query1['input_spend']:=1
else
query1['input_spend']:=0;

if(CheckBox2.Checked=true)then
query1['update_spend']:=1
else
query1['update_spend']:=0;

if(CheckBox3.Checked=true)then
query1['calculate_spend']:=1
else
query1['calculate_spend']:=0;

if(CheckBox16.Checked=true)then
query1['income_daily']:=1
else
query1['income_daily']:=0;

if(CheckBox14.Checked=true)then
query1['predecesser']:=1
else
query1['predecesser']:=0;

if(CheckBox6.Checked=true)then
query1['users']:=1
else
query1['users']:=0;

if(CheckBox8.Checked=true)then
query1['employee']:=1
else
query1['employee']:=0;

query1.post;
a:=true;
end;
query1.Next;
end;
query1.Close;
application.MessageBox(' „ Õ›Ÿ «· ⁄œÌ·« ','„‰ŸÊ„… ÊÕœ… «·„’—Ê›« ',mb_iconinformation+mb_ok);
edit5.SetFocus;
end;


procedure TForm24.BitBtn28Click(Sender: TObject);
begin
panel57.Visible:=false;
panel60.Visible:=true;
end;

procedure TForm24.SpeedButton3Click(Sender: TObject);
begin
query1.close;
Query1.Open;
combobox1.Clear;
while(not(Query1.Eof))do
begin
ComboBox1.Items.Add(Query1['u_name']);
Query1.Next;
end;
Query1.Close;

panel59.Visible:=true;
panel57.Visible:=false;
panel60.Visible:=false;
combobox1.SetFocus;
panel8.Visible:=false;
end;
procedure TForm24.SpeedButton1Click(Sender: TObject);
begin
panel59.Visible:=false;
panel57.Visible:=false;
panel60.Visible:=true;
edit1.SetFocus;
panel8.Visible:=false;
end;

procedure TForm24.SpeedButton4Click(Sender: TObject);
begin
panel59.Visible:=false;
panel57.Visible:=false;
panel60.Visible:=false;

panel8.Visible:=true;
end;

procedure TForm24.BitBtn1Click(Sender: TObject);
begin
panel8.Visible:=false;
end;

procedure TForm24.SpeedButton2Click(Sender: TObject);
begin
form2.Hide;
form1.Show;
end;

procedure TForm24.SpeedButton5Click(Sender: TObject);
begin
Query1.Close;
Query1.Open;
end;

procedure TForm24.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
edit6.SetFocus;
end;

procedure TForm24.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
edit2.SetFocus;
end;

procedure TForm24.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
bitbtn31.SetFocus;
end;

procedure TForm24.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
bitbtn29.SetFocus;
end;

procedure TForm24.BitBtn7Click(Sender: TObject);
var
count1:integer;
a:boolean;
begin
if (edit3.Text='')then
begin
application.MessageBox('«œŒ· «”„ «·„” Œœ„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit3.setfocus;
exit;
end;
if (edit6.Text='')then
begin
application.MessageBox('«œŒ· ﬂ·„… «·„—Ê—',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit6.setfocus;
exit;
end;

//////////////
query1.Close;
query1.open;
a:=false;
while((not(query1.eof))and(a=false))do
begin
if(query1['u_name']=edit3.text)then
a:=true;
query1.next;
end;
query1.close;
if(a=true)then
begin
application.MessageBox('”»ﬁ ≈œŒ«· Â–« «·„” Œœ„','Œÿ√',mb_iconerror+mb_ok);
edit3.SetFocus;
exit;
end;
//////////////
query1.Close;
query1.Open;
query1.Append;
query1['u_name']:=edit3.Text;
query1['u_password']:=edit6.Text;
query1['id']:= count1;
query1.Post;
query1.Close;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit3.SetFocus;
///////// Õ”«» ⁄œœ «·ÕﬁÊ· ///////
count1:=count1+1;
query1.Open;
while (not(query1.Eof)) do
begin
query1.Edit;
query1['id']:=count1;
query1.Post;
query1.Next;
count1:=count1+1;
end;
query1.Close;
////////////////////////////////
end;

procedure TForm24.SpeedButton6Click(Sender: TObject);
begin
panel4.Visible:=true;
end;

procedure TForm24.BitBtn3Click(Sender: TObject);
begin
panel4.Visible:=false;
edit3.Clear;
edit6.Clear;
end;

procedure TForm24.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
bitbtn7.SetFocus;
end;

end.
