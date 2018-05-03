unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Menus, DB, DBTables, jpeg;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    tdatabase1: TDatabase;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    Image1: TImage;
    N27: TMenuItem;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit13, Unit14, Unit16,
  Unit18, Unit19, Unit20, Unit22, Unit25, Unit27;

{$R *.dfm}

procedure TForm1.N2Click(Sender: TObject);
var
count:integer;
begin
count:=1;
form1.Hide;
form2.Show;
form2.Panel1.Visible:=true;
form2.Query1.Close;
form2.Query1.Prepare;
form2.Query1.Open;
while(not(form2.query1.Eof))do
begin
form2.Query1.Edit;
form2.Query1['cus_no']:=count;
form2.Query1.Next;
count:=count+1;
end;



end;

procedure TForm1.N3Click(Sender: TObject);
var
count:integer;
begin
form1.Hide;
form2.Show;
form2.Panel4.Visible:=true;
count:=1;
form2.Query3.Close;
form2.Query3.Prepare;
form2.Query3.Open;
while(not(form2.query3.Eof))do
begin
form2.Query3.Edit;
form2.Query3['kind_no']:=count;
form2.Query3.Next;
count:=count+1;
end;
end;

procedure TForm1.N4Click(Sender: TObject);
var
count:integer;
begin
form1.Hide;
form2.Show;
form2.Panel5.Visible:=true;
count:=1;
form2.Edit1.Visible:=false;
form2.ComboBox1.Visible:=false;
form2.Query2.Close;
form2.Query2.Prepare;
form2.Query2.Open;
while(not(form2.query2.Eof))do
begin
form2.Query2.Edit;
form2.Query2['type_no']:=count;
form2.Query2.Next;
count:=count+1;
end; 
end;

procedure TForm1.N8Click(Sender: TObject);
begin
form1.Hide;
form4.show;
form4.Query_get_debts_information.Close;
form4.Query_get_debts_information.open;
form4.panel4.Visible:=false;
form4.panel1.Visible:=true;
form4.panel2.Visible:=true;
form4.bitbtn2.Visible:=true;
form4.edit1.Text:='';
form4.edit2.Text:='';
form4.edit4.Text:='';
end;

procedure TForm1.N6Click(Sender: TObject);
begin
LOADKEYBOARdlayout('00000401',klf_activate);
form3.Query_save_in_temp_for_hole_sale.Close;
form3.Query_save_in_temp_for_hole_sale.Prepare;
form3.Query_save_in_temp_for_hole_sale.Open ;
if(form3.Query_save_in_temp_for_hole_sale.RecordCount<>0)then
begin
form3.combobox2.Enabled:=true;
form3.datetimepicker2.Enabled:=true;
form3.radiobutton5.Enabled:=true;
form3.radiobutton6.Enabled:=true;
form3.radiobutton7.Enabled:=true;
form3.edit9.Enabled:=true;
form3.edit10.Enabled:=true;
form3.edit3.Enabled:=true;
form3.bitbtn1.Enabled:=false;
form3.bitbtn3.Enabled:=false;
form3.Query_all_value_from_temp.Close;
form3.Query_all_value_from_temp.Prepare;
form3.Query_all_value_from_temp.Open;
form3.panel5.Visible:=true;
form3.edit9.Text:=floattostr(form3.Query_all_value_from_temp['sum']);
form3.combobox2.Clear;
form3.Query_bring_customers.Close;
form3.Query_bring_customers.Prepare;
form3.Query_bring_customers.Open;
while(not(form3.Query_bring_customers.Eof))do
begin
form3.combobox2.Items.Add(form3.Query_bring_customers['cus_name']);
form3.Query_bring_customers.Next;
end;
form3.test:=0;
form1.Hide;
form3.Show;
application.MessageBox('ÌÊÃœ »Ì«‰«  ·„ Ì „  Œ“Ì‰Â« „‰ «·„—… «·√ŒÌ—… «·—Ã«¡  Œ“Ì‰Â«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
end
{form3.Query_all_value_from_temp.Close;
form3.Query_all_value_from_temp.Prepare;
form3.Query_all_value_from_temp.Open;
if(form3.Query_all_value_from_temp['sum']<>0)then
begin
form3.bitbtn1.Enabled:=false;
form3.panel5.Visible:=true;
form3.edit9.Text:=form3.Query_all_value_from_temp['sum'];
end
else
begin}
else
begin
form1.Hide;
form3.Show;
form3.bitbtn1.Enabled:=true;
end;
end;
procedure TForm1.N10Click(Sender: TObject);
var
count:integer;
begin
form1.Hide;
form5.Show;
form5.Panel3.Visible:=true;
count:=1;
form5.Query_serial.Close;
form5.Query_serial.Prepare;
form5.Query_serial.Open;
while(not(form5.Query_serial.Eof))do
begin
form5.Query_serial.Edit;
form5.Query_serial['st_no']:=count;
form5.Query_serial.Next;
count:=count+1;
end;
form5.Query_serial.Close;
form5.Query1.Close;
form5.Query1.Prepare;
form5.Query1.Open;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
form1.Hide;
form5.Show;
form5.Panel1.Visible:=true;
form5.Panel3.Visible:=false;
form5.ComboBox2.Clear;
form5.ComboBox3.Clear;
form5.Edit13.Text:='';
form5.Edit4.Text:='';
form5.Query_bring_kinds_for_gobad.Close;
form5.Query_bring_kinds_for_gobad.Prepare;
form5.Query_bring_kinds_for_gobad.Open;
while(not(form5.Query_bring_kinds_for_gobad.Eof))do
begin
form5.ComboBox2.Items.Add(form5.Query_bring_kinds_for_gobad['kinds_name']);
form5.Query_bring_kinds_for_gobad.Next;
end;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
form1.Hide;
form4.show;
form4.Query_select_whitout_repeat.Close;
form4.Query_select_whitout_repeat.open;
form4.panel4.Visible:=true;
form4.panel1.Visible:=false;
form4.panel2.Visible:=false;
form4.bitbtn2.Visible:=false;
form4.Query_total_debt.Close;
form4.Query_total_debt.Prepare;
form4.Query_total_debt.Open;
if (form4.Query_total_debt['sum']=null)then
begin
form4.edit5.Text:=inttostr(0);
form4.bitbtn3.Enabled:=false;
end
else
begin
form4.edit5.Text:=form4.Query_total_debt['sum'];
form4.bitbtn3.Enabled:=false;
end;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
form1.Hide;
form5.Show;
form5.Panel2.Visible:=true;
form5.Panel3.Visible:=false;
end;

procedure TForm1.N18Click(Sender: TObject);
begin
form6.show;
form6.panel1.Visible:=true;
form6.Panel2.Visible:=false;
form1.hide;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
form6.show;
form6.panel1.Visible:=false;
form6.Panel2.Visible:=true;
form1.hide;
end;

procedure TForm1.N19Click(Sender: TObject);
begin
form7.show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
LOADKEYBOARdlayout('00000401',klf_activate);
end;

procedure TForm1.N21Click(Sender: TObject);
begin
form13.Query_empty_bill.Close;
form13.Query_empty_bill.Prepare;
form13.Query_empty_bill.Open;
form13.QuickRep1.Preview;
end;

procedure TForm1.N22Click(Sender: TObject);
begin
form1.Hide;
form14.Show;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
panel1.Visible:=true;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
panel1.Visible:=false;
end;

procedure TForm1.N24Click(Sender: TObject);
begin
form18.Show;
form1.Hide;
end;

procedure TForm1.N25Click(Sender: TObject);
begin
form1.Hide;
form19.Show;
end;

procedure TForm1.N26Click(Sender: TObject);
begin
form1.Hide;
form20.Show;
end;

procedure TForm1.N27Click(Sender: TObject);
begin
DeleteFile('d:\cars.gdb');
DeleteFile('c:\cars.gdb');
DeleteFile('f:\cars.gdb');
copyfile('e:cars.GDB','d:\cars.gdb', true);
copyfile('e:cars.GDB','c:\cars.gdb', true);
copyfile('e:cars.GDB','f:\cars.gdb', true);
Application.MessageBox(' „  ⁄„·Ì… «·‰”Œ',' ‰»ÌÂ',mb_ok);
end;

procedure TForm1.N28Click(Sender: TObject);
begin
form22.Show;
form1.Hide;
end;

procedure TForm1.N29Click(Sender: TObject);
begin
form1.Hide;
form25.Show;
end;

procedure TForm1.N30Click(Sender: TObject);
begin
form1.Hide;
form27.Show;
end;

end.
