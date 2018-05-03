unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, DBCtrls, Grids, DBGrids, TeeProcs, TeEngine,
  Chart, Buttons;

type
  TF_enter_num = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Chart1: TChart;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_enter_num: TF_enter_num;

implementation

uses Unit2, Unit14, Unit16, Unit8, Unit9;



{$R *.DFM}

procedure TF_enter_num.RadioButton1Click(Sender: TObject);
begin
BitBtn2.Enabled:=true;
end;

procedure TF_enter_num.RadioButton2Click(Sender: TObject);
begin
BitBtn2.Enabled:=true;
end;

procedure TF_enter_num.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Edit2.Clear;
end;

procedure TF_enter_num.ComboBox1Click(Sender: TObject);
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

procedure TF_enter_num.ComboBox1Enter(Sender: TObject);
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

procedure TF_enter_num.BitBtn1Click(Sender: TObject);
begin
ComboBox1.text:='';
ComboBox2.text:='';
BitBtn2.Enabled:=faLSE;
Edit2.Clear;
end;
procedure TF_enter_num.BitBtn2Click(Sender: TObject);
var
d,e:Tdate;
begin
if RadioButton1.Checked then
    begin
with datam.Query_rep do
begin
close;
Prepare;
params[0].value:=edit2.text;
params[1].value:=ComboBox2.text;
open;
if  recordcount<>0 then
begin

F_rep_stu.QuickRep1.Preview;
     end
     else
    begin
       application.MessageBox('«·ÿ«·» ·Ì” ·Â ‰ «∆Ã','⁄–—«',mb_iconinformation);
    end;
     END;
     END;
//**********************//
if RadioButton2.Checked then
begin
with datam.Query_efada do
begin
close;
Prepare;
params[0].value:=edit2.text;
params[1].value:=ComboBox1.text;
params[2].value:=ComboBox2.text;
open;
if  recordcount<>0 then
    begin
   if datam.Query_efadaFACULTY_AR_TITLE.Value='ﬂ·Ì… «·√œ«» Ê «· —»Ì…' then
   begin
   F_name_stu_out.QRLabel21.Caption:=' ·Ì”«‰”'
   end
   else
   begin
    F_name_stu_out.QRLabel21.Caption:='»ﬂ«·Ê—ÌÊ”'
    end;
    d:=DataM.Query_efadaREGISTRATION_DATE.value;
    e:=DataM.Query_efadaGRADUATION_DATE.value;
    F_name_stu_out.QRLabel8.Caption:=DataM.decode_date(d);
    F_name_stu_out.QRLabel10.Caption:=DataM.decode_date(e);
    F_name_stu_out.QuickRep1.Preview;
    end
     else
    begin
       application.MessageBox('«·ÿ«·» ·„ Ì Œ—Ã »⁄œ  √ﬂœ „‰ «·ﬁ”„','⁄–—«',mb_iconinformation);
    end;
end;
end;
end;

procedure TF_enter_num.BitBtn3Click(Sender: TObject);
begin
Form_help.Memo1.Lines.LoadFromFile('E:\«·‰”Œ… «·«ŒÌ—… „‰ «·„‰ŸÊ„…\HELP\enter_num.txt');
Form_help.ShowModal;
end;

procedure TF_enter_num.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TF_enter_num.FormShow(Sender: TObject);
begin
ComboBox1.text:='';
ComboBox2.text:='';
BitBtn2.Enabled:=faLSE;
Edit2.Clear;
end;

procedure TF_enter_num.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   Edit2.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 Edit2.ReadOnly:=FALSE;
end;
end;

end.
