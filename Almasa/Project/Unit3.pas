unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, Mask, DB, DBTables;

type
  TForm3 = class(TForm)
    Panel8: TPanel;
    Panel9: TPanel;
    Label13: TLabel;
    Panel10: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    MaskEdit3: TMaskEdit;
    DateTimePicker1: TDateTimePicker;
    Edit3: TEdit;
    Edit4: TEdit;
    DateTimePicker2: TDateTimePicker;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Panel11: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query2: TQuery;
    query_sale1: TQuery;
    DataSource3: TDataSource;
    Query1SERAIL_NUM: TIntegerField;
    Query1VARIETY_NAME: TStringField;
    Query1TYPE_NAME: TStringField;
    Query1QUANTITY: TIntegerField;
    Query1QUANTITY_AVAILABLE: TIntegerField;
    Query1BUY_PRICE: TFloatField;
    Query1SALE_PRICE: TFloatField;
    Query1DATE_INPUT: TStringField;
    Query1DATE_EX: TStringField;
    Query2SERAIL_NUM: TIntegerField;
    Query2VARIETY_NAME: TStringField;
    Query2TYPE_NAME: TStringField;
    Query2QUANTITY: TIntegerField;
    Query2QUANTITY_AVAILABLE: TIntegerField;
    Query2BUY_PRICE: TFloatField;
    Query2SALE_PRICE: TFloatField;
    Query2DATE_INPUT: TStringField;
    Query2DATE_EX: TStringField;
    Query_variety: TQuery;
    Query_type: TQuery;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    Query_varietyVARIETY_NO: TIntegerField;
    Query_varietyVARIETY_NAME: TStringField;
    Query_typeTYP_NO: TIntegerField;
    Query_typeTYP_NAME: TStringField;
    Query_typeKIND_NAME: TStringField;
    Database1: TDatabase;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Image5: TImage;
    Query1DATE_OUTPUT: TStringField;
    Query2DATE_OUTPUT: TStringField;
    query_sale1TYP_NO: TIntegerField;
    query_sale1TYP_NAME: TStringField;
    query_sale1KIND_NAME: TStringField;
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure ComboBox4Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm3.BitBtn12Click(Sender: TObject);
var
count:integer;
a:boolean;
begin
if(combobox4.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox4.SetFocus;
exit;
end;
if(combobox5.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox5.SetFocus;
exit;
end;
if(edit3.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· ”⁄— «·‘—«¡',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit3.SetFocus;
exit;
end;
if(edit4.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· ”⁄— «·»Ì⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit4.SetFocus;
exit;
end;
if(maskedit3.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·ﬂ„Ì…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
maskedit3.SetFocus;
combobox4.Text:='';
combobox5.Text:='';
edit3.Text:='';
edit4.Text:='';
maskedit3.Text:='';
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;
exit;
end;
///////////////////// Õ”«» ⁄œœ «·ÕﬁÊ·
count:=0;
count:=count+1;
query2.open;
while (not(query2.Eof)) do
begin
query2.Edit;
query2['SERAIL_NUM']:=count;
query2.Post;
query2.Next;
count:=count+1;
end;

query2.Close;
query1.Open;
query1.Append;
query1['SERAIL_NUM']:=count;
query1['VARIETY_NAME']:=combobox4.Text;
query1['type_name']:=combobox5.Text;
query1['quantity']:=maskedit3.Text;
query1['QUANTITY_AVAILABLE']:=maskedit3.Text;
query1['SALE_PRICE']:=edit4.Text;
query1['BUY_PRICE']:=edit3.Text;
query1['date_input']:=datetostr(DateTimePicker1.Date);
query1['date_ex']:=datetostr(DateTimePicker2.Date);
query1.Post;
query1.Close;
application.MessageBox(' „ «œŒ«· «·»÷«⁄… ≈·Ï «·„Œ«“‰','„⁄„· «·„«”… «·”—Ì⁄ ··«·Ê«‰',mb_iconinformation+mb_ok);
begin
combobox4.SetFocus;
database1.Close;
database1.Open;
exit;
end;

end;

procedure TForm3.BitBtn13Click(Sender: TObject);
begin
panel8.Visible:=false;
combobox4.Clear;
combobox5.Clear;
edit3.Text:='';
edit4.Text:='';
maskedit3.Text:='';
end;

procedure TForm3.ComboBox4Click(Sender: TObject);
begin
combobox5.Clear;
query_sale1.Close;
query_sale1.Prepare;
query_sale1.Params[0].Value:=combobox4.Text;
query_sale1.Open;
while(not(query_sale1.Eof))do
begin
combobox5.Items.Add(query_sale1['typ_name']);
query_sale1.Next;
end;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
var
a:boolean;
begin
Query_variety.Close;
Query_variety.Open;
a:=false;
while((not(Query_variety.Eof))and(a=false))do
begin
combobox4.Items.Add(Query_variety['VARIETY_NAME']);
Query_variety.Next;
end;
Query_variety.Close;
/////////////////////////////////////////fill the combobox5
Query_type.Open;
a:=false;
while((not(Query_type.Eof))and(a=false))do
begin
combobox5.Items.Add(Query_type['typ_NAME']);
Query_type.Next;
end;
Query_type.Close;
panel8.Visible:=true;
end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
begin
form3.Hide;
form1.show;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
form3.Hide;
form4.Show;
form4.Panel3.Visible:=true;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
form3.Hide;
form4.Show;
form4.Panel1.Visible:=true;
end;

procedure TForm3.SpeedButton7Click(Sender: TObject);
begin
form3.Hide;
form5.Show;
form5.Panel2.Visible:=true;
end;

procedure TForm3.SpeedButton8Click(Sender: TObject);
var
a:boolean;
begin
form3.Hide;
form5.Show;
form5.Panel1.Visible:=true;
form5.ComboBox1.SetFocus;
form5.ComboBox1.Clear;
form5.Query3.Close;
form5.query3.Open;
a:=false;
while((not(form5.query3.Eof))and(a=false))do
begin
form5.combobox1.Items.Add(form5.query3['variety_NAME']);
form5.Query3.Next;
end;
end;

procedure TForm3.SpeedButton9Click(Sender: TObject);
begin
form3.Hide;
form6.show;
form6.Panel1.Visible:=true;
form6.Query1.Close;
form6.Query1.Open;
end;

procedure TForm3.SpeedButton10Click(Sender: TObject);
begin
form3.Hide;
form6.show;
form6.Panel12.Visible:=true;
end;

procedure TForm3.SpeedButton11Click(Sender: TObject);
var
a:boolean;
begin
form3.Hide;
form6.show;
form6.Panel27.Visible:=true;

form6.query2.Open;
a:=false;
while((not(form6.query2.Eof))and(a=false))do
begin
form6.combobox3.Items.Add(form6.query2['typ_NAME']);
form6.Query2.Next;
end;
form6.Query2.Close;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
form3.Hide;
form7.show;
form7.Panel4.Visible:=true;
end;

procedure TForm3.DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
combobox4.SetFocus;
end;

procedure TForm3.ComboBox4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
combobox5.SetFocus;
end;

procedure TForm3.ComboBox5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
maskedit3.SetFocus;
end;

procedure TForm3.MaskEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
edit3.SetFocus;
end;

procedure TForm3.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
edit4.SetFocus;
end;

procedure TForm3.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
datetimepicker2.SetFocus;
end;

procedure TForm3.DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
bitbtn12.SetFocus;
end;

end.
