unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, Grids, DBGrids, TeeProcs,
  TeEngine, Chart;

type
  TF_count = class(TForm)
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    ComboBox4: TComboBox;
    Edit5: TEdit;
    Panel1: TPanel;
    Chart1: TChart;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    ComboBox5: TComboBox;
    Label8: TLabel;
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
   // procedure ComboBox4Enter(Sender: TObject);
   // procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox4Enter(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  F_count: TF_count;

implementation

uses Unit2, Unit25, Unit24, Unit22, Un_F_reg_print, Unit1, Unit26, Unit8;



{$R *.DFM}

procedure TF_count.ComboBox1Click(Sender: TObject);
begin
ComboBox2.Clear;
with datam.Query_fac do
begin
close;
Prepare;
params[0].Value:=ComboBox1.text;
open;
first;
while not(eof) do
begin
ComboBox2.Items.Add(datam.Query_fac.fieldbyname('DEPT_AR_TITLE').asstring );
next;
end;
end;
end;
procedure TF_count.ComboBox3Click(Sender: TObject);
begin
if ComboBox3.Text='›’· œ—«”Ì' then
begin
Label3.Caption:='«·›’· «·œ—«”Ì';
end
else
begin
Label3.Caption:='«·⁄«„ «·œ—«”Ì';
end;
Label3.Visible:=true;
Edit1.Visible:=true;
end;
procedure TF_count.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TF_count.ComboBox1Enter(Sender: TObject);
begin

ComboBox1.Clear;
with datam.q_faculty do
begin
close;
Prepare;
open;
first;
while not(eof) do
begin
ComboBox1.Items.Add(datam.q_faculty.fieldbyname('AR_TITLE').asstring );
next;
end;
end;
end;

procedure TF_count.RadioButton1Click(Sender: TObject);
begin

end;
//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&//
//**********************************//
//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&//
//**********************************//

procedure TF_count.RadioButton2Click(Sender: TObject);
BEGIN
end;
//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&//
//**********************************//
//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&//
//**********************************//
procedure TF_count.ComboBox4Change(Sender: TObject);
begin
Edit2.Clear;
end;

procedure TF_count.BitBtn4Click(Sender: TObject);
var
 AVRAGE:real;
 num1,tagder,i,j,nat,test,symester,fac,dep:string;
begin
//###############################################///
  if (ComboBox4.Text='«·ÿ·»… «·‰Ÿ«„ÌÌ‰') then
begin
j:=inttostr(0);
with datam.RATION_TYPE do
begin
close;
prepare;
params[0].Value:=ComboBox2.Text;
params[1].Value:='‰Ÿ«„Ì »„‰Õ…';
params[2].Value:='‰Ÿ«„Ì »œÊ‰ „‰Õ…';
params[3].Value:=Edit1.Text;
 params[4].Value:=Edit5.Text;
open;
first;
if RecordCount<>0 then
begin

while not(eof) do
begin
symester:=Edit1.Text;
fac:=ComboBox1.Text;
dep:=ComboBox2.Text;
next;
end;//while

F_reg_print.QRLabel11.Caption:=fac;
F_reg_print.QRLabel9.Caption:=dep;
F_reg_print.QRLabel8.Caption:=symester;
if ComboBox3.Text='›’· œ—«”Ì' then  F_reg_print.QRLabel10.caption:='«·›’· «·œ—«”Ì'
else  F_reg_print.QRLabel10.caption:='«·⁄«„ «·œ—«”Ì';
F_reg_print.QRLabel16.Caption:='ﬂ‘› »√”„«¡ «·ÿ·»… «·‰Ÿ«„ÌÌ‰';
F_reg_print.QuickRep1.preview;
end;//recordcount
end; //with
end;//combobox
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
if (ComboBox4.Text='«·ÿ·»… «·„‰ ”»Ì‰') then
begin
j:=inttostr(0);
with datam.RATION_TYPE do
begin
close;
prepare;
params[0].Value:=ComboBox2.Text;
params[1].Value:='„‰ ”» »„‰Õ…';
params[2].Value:='„‰ ”» »œÊ‰ „‰Õ…';
params[3].Value:=Edit1.Text;
 params[4].Value:=Edit5.Text;
open;
first;
if RecordCount<>0 then
begin

while not(eof) do
begin
symester:=Edit1.Text;
fac:=ComboBox1.Text;
dep:=ComboBox2.Text;
next;
end;//while

F_reg_print.QRLabel11.Caption:=fac;
F_reg_print.QRLabel9.Caption:=dep;
F_reg_print.QRLabel8.Caption:=symester;
if ComboBox3.Text='›’· œ—«”Ì' then  F_reg_print.QRLabel10.caption:='«·›’· «·œ—«”Ì'
else  F_reg_print.QRLabel10.caption:='«·⁄«„ «·œ—«”Ì';
F_reg_print.QRLabel16.Caption:='ﬂ‘› »√”„«¡ «·ÿ·»… «·‰Ÿ«„ÌÌ‰';
F_reg_print.QuickRep1.preview;
end;//recordcount
end; //with
end;//combobox

//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
if (ComboBox4.Text='«·ÿ·»… «·œ«—”Ì‰ »„‰Õ…') then
begin
j:=inttostr(0);
with datam.RATION_TYPE do
begin
close;
prepare;
params[0].Value:=ComboBox2.Text;
params[1].Value:='„‰ ”» »„‰Õ…';
params[2].Value:='‰Ÿ«„Ì »„‰Õ…';
params[3].Value:=Edit1.Text;
 params[4].Value:=Edit5.Text;
open;
first;
if RecordCount<>0 then
begin

while not(eof) do
begin
symester:=Edit1.Text;
fac:=ComboBox1.Text;
dep:=ComboBox2.Text;
next;
end;//while

F_reg_print.QRLabel11.Caption:=fac;
F_reg_print.QRLabel9.Caption:=dep;
F_reg_print.QRLabel8.Caption:=symester;
if ComboBox3.Text='›’· œ—«”Ì' then  F_reg_print.QRLabel10.caption:='«·›’· «·œ—«”Ì'
else  F_reg_print.QRLabel10.caption:='«·⁄«„ «·œ—«”Ì';
F_reg_print.QRLabel16.Caption:='ﬂ‘› »«”„«¡ «·ÿ·»… «·œ«—”Ì‰ »„‰Õ…';
F_reg_print.QuickRep1.preview;
end;//recordcount
end; //with
end;//combobox
 //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
 if (ComboBox4.Text='«·ÿ·»… «·œ«—”Ì‰ »œÊ‰ „‰Õ…') then
begin
j:=inttostr(0);
with datam.RATION_TYPE do
begin
close;
prepare;
params[0].Value:=ComboBox2.Text;
params[1].Value:='„‰ ”» »œÊ‰ „‰Õ…';
params[2].Value:='‰Ÿ«„Ì »œÊ‰ „‰Õ…';
params[3].Value:=Edit1.Text;
params[4].Value:=Edit5.Text;
open;
first;
if RecordCount<>0 then
begin

while not(eof) do
begin
symester:=Edit1.Text;
fac:=ComboBox1.Text;
dep:=ComboBox2.Text;
next;
end;//while

F_reg_print.QRLabel11.Caption:=fac;
F_reg_print.QRLabel9.Caption:=dep;
F_reg_print.QRLabel8.Caption:=symester;
if ComboBox3.Text='›’· œ—«”Ì' then  F_reg_print.QRLabel10.caption:='«·›’· «·œ—«”Ì'
else  F_reg_print.QRLabel10.caption:='«·⁄«„ «·œ—«”Ì';
F_reg_print.QRLabel16.Caption:='ﬂ‘› »«”„«¡ «·ÿ·»… «·œ«—”Ì‰ »œÊ‰ „‰Õ…';
F_reg_print.QuickRep1.preview;
end;//recordcount
end; //with
end;//combobox
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^//
 ///////////////////////////////////////////////////
 if (ComboBox4.Text='ÿ·«» «·”ﬂ‰ «·œ«Œ·Ì') then
 begin
 with datam.Q_forigen do
 begin
 close;
 prepare;
 params[0].Value:=ComboBox2.Text;
 params[1].Value:=Edit1.Text;
params[2].Value:=Edit5.Text;
params[3].Value:=ComboBox5.Text;
 open;
  first;
  if recordcount<>0 then
    begin

while not(eof) do
begin
symester:=Edit1.Text;
fac:=ComboBox1.Text;
dep:=ComboBox2.Text;
nat:=Edit5.Text;
next;
end;
 F_print.QRLabel15.Caption:=nat;
 F_print.QRLabel11.Caption:=fac;
F_print.QRLabel9.Caption:=dep;
F_print.QRLabel8.Caption:=symester;
if ComboBox3.Text='›’· œ—«”Ì' then  F_print.QRLabel10.caption:='«·›’· «·œ—«”Ì'
else  F_print.QRLabel10.caption:='«·⁄«„ «·œ—«”Ì';
F_print.QuickRep1.preview;
end;//recordcount
end;
end;
 ///////////////////////////////////////////////////
 end;
procedure TF_count.FormShow(Sender: TObject);
begin
    BitBtn4.Enabled:=FALSE;
    ComboBox4.ClearSelection;
    ComboBox1.ClearSelection;
    ComboBox2.ClearSelection;
    ComboBox5.ClearSelection;
    ComboBox3.ClearSelection;
    Edit1.Clear;
    Edit5.Clear;
    Edit2.Clear;
    panel1.visible:=false;
    ComboBox5.Visible:=false;
    Label8.Visible:=false;
    Edit1.Visible:=false;
    Label3.Visible:=false;
end;

procedure TF_count.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z'])) OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   Edit5.ReadOnly:=TRUE;
   BEEP;
end
ELSE  Edit5.ReadOnly:=FALSE;

end;

procedure TF_count.ComboBox4Click(Sender: TObject);
begin
panel1.Visible:=true;
GroupBox2.Visible:=true;
if combobox4.Text='«·ÿ·»… «·‰Ÿ«„ÌÌ‰' then
begin
 ComboBox5.Visible:=false;
    Label8.Visible:=false;
  label7.Caption:='«·‰Ÿ«„ÌÌ‰';
  end;
if combobox4.Text='«·ÿ·»… «·„‰ ”»Ì‰' then
begin
 ComboBox5.Visible:=false;
    Label8.Visible:=false;
  label7.Caption:='«·„‰ ”»Ì‰';
  end;
if combobox4.Text='«·ÿ·»… «·œ«—”Ì‰ »„‰Õ…' then
begin
 ComboBox5.Visible:=false;
    Label8.Visible:=false;
  label7.Caption:='«·œ«—”Ì‰ »„‰Õ…';
  end;
if combobox4.Text='«·ÿ·»… «·œ«—”Ì‰ »œÊ‰ „‰Õ…' then
begin
 ComboBox5.Visible:=false;
    Label8.Visible:=false;
  label7.Caption:='«·œ«—”Ì‰ »œÊ‰ „‰Õ…';
  end;
if combobox4.Text='ÿ·«» «·”ﬂ‰ «·œ«Œ·Ì' then
begin
 ComboBox5.Visible:=true;
    Label8.Visible:=true;
  label7.Caption:='›Ì «·”ﬂ‰ «·œ«Œ·Ì';
  end;


end;

procedure TF_count.BitBtn2Click(Sender: TObject);
var count:integer;
begin
if (ComboBox4.Text='«·ÿ·»… «·‰Ÿ«„ÌÌ‰') then
 begin
count:=0;
with datam.RATION_TYPE do
begin
close;
prepare;
params[0].Value:=ComboBox2.Text;
params[1].Value:='‰Ÿ«„Ì »„‰Õ…';
params[2].Value:='‰Ÿ«„Ì »œÊ‰ „‰Õ…';
params[3].Value:=Edit1.Text;
 params[4].Value:=Edit5.Text;
open;
first;

if RecordCount<>0 then
begin

while not(eof) do
begin
count:=count+1;
next;
end;//while
end;//recordcount
 //with
end;//with
if (count=0)  then
begin
  EDit2.Text:=inttostr(count);
 application.MessageBox('·« ÌÊÃœ ÿ·»… „ ⁄·ﬁÌ‰ »«·≈Õ’«∆ÌÂ «·„Õœœ…','⁄–—«',mb_ok)
end
  else
  begin
 EDit2.Text:=inttostr(count);
 BitBtn4.Enabled:=true;
 end;
 END;//combo

//************************************//
if (ComboBox4.Text='«·ÿ·»… «·„‰ ”»Ì‰') then
begin
count:=0;
with datam.RATION_TYPE do
begin
close;
prepare;
params[0].Value:=ComboBox2.Text;
params[1].Value:='„‰ ”» »„‰Õ…';
params[2].Value:='„‰ ”» »œÊ‰ „‰Õ…';
params[3].Value:=Edit1.Text;
 params[4].Value:=Edit5.Text;
open;
first;

if RecordCount<>0 then
begin

while not(eof) do
begin
count:=count+1;
next;
end;//while
end;//recordcount
end;//with
 if (count=0)  then
begin
  EDit2.Text:=inttostr(count);
  application.MessageBox('·« ÌÊÃœ ÿ·»… „ ⁄·ﬁÌ‰ »«·≈Õ’«∆ÌÂ «·„Õœœ…','⁄–—«',mb_ok)
end
  else
  begin
 EDit2.Text:=inttostr(count);
 BitBtn4.Enabled:=true;
 end;
 END;//combobox
 //***************************//
 if (ComboBox4.Text='«·ÿ·»… «·œ«—”Ì‰ »„‰Õ…') then
begin
count:=0;
with datam.RATION_TYPE do
begin
close;
prepare;
params[0].Value:=ComboBox2.Text;
params[1].Value:='„‰ ”» »„‰Õ…';
params[2].Value:='‰Ÿ«„Ì »„‰Õ…';
params[3].Value:=Edit1.Text;
 params[4].Value:=Edit5.Text;
open;
first;

if RecordCount<>0 then
begin

while not(eof) do
begin
count:=count+1;
next;
end;//while
end;//recordcount
end;//with
if (count=0)  then
begin
  EDit2.Text:=inttostr(count);
  application.MessageBox('·« ÌÊÃœ ÿ·»… „ ⁄·ﬁÌ‰ »«·≈Õ’«∆ÌÂ «·„Õœœ…','⁄–—«',mb_ok)
end
  else
  begin
 EDit2.Text:=inttostr(count);
 BitBtn4.Enabled:=true;
 end;
 END;//combobox
 //**********************************//
 if (ComboBox4.Text='«·ÿ·»… «·œ«—”Ì‰ »œÊ‰ „‰Õ…') then
begin
count:=0;
with datam.RATION_TYPE do
begin
close;
prepare;
params[0].Value:=ComboBox2.Text;
params[1].Value:='‰Ÿ«„Ì »œÊ‰ „‰Õ…';
params[2].Value:='„‰ ”» »œÊ‰ „‰Õ…';
params[3].Value:=Edit1.Text;
 params[4].Value:=Edit5.Text;
open;
first;

if RecordCount<>0 then
begin

while not(eof) do
begin
count:=count+1;
next;
end;//while
end;//recordcount
end;//with
if (count=0)  then
begin
  EDit2.Text:=inttostr(count);
   application.MessageBox('·« ÌÊÃœ ÿ·»… „ ⁄·ﬁÌ‰ »«·≈Õ’«∆ÌÂ «·„Õœœ…','⁄–—«',mb_ok)
end
  else
  begin
 EDit2.Text:=inttostr(count);
 BitBtn4.Enabled:=true;
 end;
 END;//combobox
 //**********************************//
 //**********************************//
 if (ComboBox4.Text='ÿ·«» «·”ﬂ‰ «·œ«Œ·Ì') then
 begin
 count:=0;
 with datam.Q_forigen do
 begin
 close;
 prepare;
 params[0].Value:=ComboBox2.Text;
 params[1].Value:=Edit1.Text;
params[2].Value:=Edit5.Text;
params[3].Value:=ComboBox5.Text;
 open;
  first;
if RecordCount<>0 then
begin

while not(eof) do
begin
count:=count+1;
next;
end;//while
end;//recordcount
end;
if (count=0)  then
begin
  EDit2.Text:=inttostr(count);
   application.MessageBox('·« ÌÊÃœ ÿ·»… „ ⁄·ﬁÌ‰ »«·≈Õ’«∆ÌÂ «·„Õœœ…','⁄–—«',mb_ok)
end
  else
  begin
 EDit2.Text:=inttostr(count);
 BitBtn4.Enabled:=true;
 end;
 END;//combobox
 //******************************************//
end;
procedure TF_count.ComboBox4Enter(Sender: TObject);
begin
BitBtn4.Enabled:=false;

end;

procedure TF_count.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   Edit1.ReadOnly:=TRUE;
   BEEP;
end
ELSE  Edit1.ReadOnly:=FALSE;
end;

procedure TF_count.BitBtn1Click(Sender: TObject);
begin
Form_help.Memo1.Lines.LoadFromFile('E:\«·‰”Œ… «·«ŒÌ—… „‰ «·„‰ŸÊ„…\HELP\count.txt');
Form_help.ShowModal;
end;

end.








