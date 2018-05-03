unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, TeeProcs,
  TeEngine, Chart, Mask, DBCtrls;

type
  TF_go_name = class(TForm)
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    ComboBox6: TComboBox;
    Chart1: TChart;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox6Click(Sender: TObject);
    procedure ComboBox6Enter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_go_name: TF_go_name;

implementation

uses Unit2, Unit20, Unit8;



{$R *.DFM}

procedure TF_go_name.BitBtn2Click(Sender: TObject);
begin
close;
end;
procedure TF_go_name.BitBtn1Click(Sender: TObject);
begin
with datam.Query_go_name do
begin
close;
prepare;
params[0].Value:=strtodate(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
params[1].Value:=strtodate(formatdatetime('dd/mm/yyyy',DateTimePicker3.date));
params[2].Value:=ComboBox1.Text;
open;
if RecordCount<>0 then
begin
F_name_go.QRLabel18.caption:=comboBox1.Text;
F_name_go.QRLabel19.caption:=comboBox6.Text;
F_name_go.QRLabel11.caption:=edit1.Text;
F_name_go.QRLabel12.caption:=edit2.Text;
F_name_go.QuickRep1.Preview;
end
else
begin
application.MessageBox('«·‘—Êÿ €Ì— „ Ê›—…','⁄–—«',mb_iconinformation);
end;
end;
end;
procedure TF_go_name.ComboBox6Click(Sender: TObject);
begin
ComboBox1.Clear;
with datam.Query_fac do
begin
close;
Prepare;
params[0].Value:=ComboBox6.text;
open;
first;
while not(eof) do
begin
ComboBox1.Items.Add(datam.Query_fac.fieldbyname('DEPT_AR_TITLE').asstring );
next;
end;
end;
end;

procedure TF_go_name.ComboBox6Enter(Sender: TObject);
begin
 ComboBox6.Clear;
with datam.q_faculty do
begin
close;
Prepare;
open;
first;
while not(eof) do
begin
ComboBox6.Items.Add(datam.q_faculty.fieldbyname('AR_TITLE').asstring );
next;
end;
end;
end;

procedure TF_go_name.BitBtn3Click(Sender: TObject);
begin
Form_help.Memo1.Lines.LoadFromFile('C:\«·„‘—Ê⁄ «··Ì „« Ì»Ì Ì „\HELP\name_stu_go_out.TXT');
Form_help.ShowModal;
end;

procedure TF_go_name.DateTimePicker2Change(Sender: TObject);
begin
Edit1.Text:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
end;

procedure TF_go_name.DateTimePicker3Change(Sender: TObject);
begin
Edit2.Text:=(formatdatetime('dd/mm/yyyy',DateTimePicker3.date));
end;

procedure TF_go_name.FormShow(Sender: TObject);
begin
Edit1.Text:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Edit2.Text:=(formatdatetime('dd/mm/yyyy',DateTimePicker3.date));
end;

end.
