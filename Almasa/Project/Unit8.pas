unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, DB, DBTables, ComCtrls;

type
  TForm8 = class(TForm)
    Panel4: TPanel;
    Panel5: TPanel;
    Label14: TLabel;
    Panel7: TPanel;
    BitBtn11: TBitBtn;
    BitBtn10: TBitBtn;
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    MaskEdit2: TMaskEdit;
    Query_discount_from_storge: TQuery;
    Query_discount_from_storgeSERAIL_NUM: TIntegerField;
    Query_discount_from_storgeVARIETY_NAME: TStringField;
    Query_discount_from_storgeTYPE_NAME: TStringField;
    Query_discount_from_storgeQUANTITY: TIntegerField;
    Query_discount_from_storgeQUANTITY_AVAILABLE: TIntegerField;
    Query_discount_from_storgeBUY_PRICE: TFloatField;
    Query_discount_from_storgeSALE_PRICE: TFloatField;
    Query_discount_from_storgeDATE_INPUT: TStringField;
    Query_discount_from_storgeDATE_EX: TStringField;
    DataSource8: TDataSource;
    Query_sale: TQuery;
    Query_saleTYP_NO: TIntegerField;
    Query_saleTYP_NAME: TStringField;
    Query_saleKIND_NAME: TStringField;
    DataSource5: TDataSource;
    Query1: TQuery;
    Query1SERAIL_NUM: TIntegerField;
    Query1VARIETY_NAME: TStringField;
    Query1TYPE_NAME: TStringField;
    Query1QUANTITY: TIntegerField;
    Query1QUANTITY_AVAILABLE: TIntegerField;
    Query1BUY_PRICE: TFloatField;
    Query1SALE_PRICE: TFloatField;
    Query1DATE_INPUT: TStringField;
    Query1DATE_EX: TStringField;
    DataSource1: TDataSource;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2VARIETY_NO: TIntegerField;
    Query2VARIETY_NAME: TStringField;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label6: TLabel;
    Image1: TImage;
    Image6: TImage;
    Image2: TImage;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    Query_discount_from_storgeDATE_OUTPUT: TStringField;
    Query1DATE_OUTPUT: TStringField;
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm8.ComboBox1Click(Sender: TObject);
begin
combobox2.Clear;
query_sale.Close;
query_sale.Prepare;
query_sale.Params[0].Value:=combobox1.Text;
query_sale.Open;
while(not(query_sale.Eof))do
begin
combobox2.Items.Add(query_sale['typ_name']);
query_sale.Next;
end;
end;

procedure TForm8.ComboBox2Select(Sender: TObject);
var
n,sum:integer;
a:boolean;
begin
query1.Open;
a:=false;
sum:=0;
while(not(query1.Eof))and(a=false)do
begin
if(combobox1.Text=query1['VARIETY_NAME'])and(combobox2.Text=query1['TYPE_NAME'])then
begin
n:=Query1['QUANTITY_AVAILABLE'];
edit1.Text:=Query1['sale_price'];
edit2.Text:=Query1['date_ex'];
sum:=sum+n;
end;
query1.Next;
end;
maskedit1.Text:=inttostr(sum);

query1.close;
end;


procedure TForm8.BitBtn10Click(Sender: TObject);
var
a:boolean;
nev,sum,n,n1,s,m,want:integer;
begin
if(combobox1.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox1.SetFocus;
exit;
end;
if(combobox2.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox2.SetFocus;
exit;
end;
if(maskedit2.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·ﬂ„Ì… «·„ÿ·Ê»…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
maskedit2.SetFocus;
exit;
end;
if(strtoint(maskedit2.Text)>strtoint(maskedit1.Text))then
begin
application.MessageBox('«·ﬂ„Ì… «·„ÿ·Ê»… €Ì— „ Ê›—… ›Ì «·„Œ“‰','Œÿ√',mb_iconerror+mb_ok);
maskedit2.SetFocus;
maskedit2.SelectAll;
exit;
end;
/////////////////////////////112
want:=strtoint(maskedit2.text);
Query_discount_from_storge.Close;
Query_discount_from_storge.Prepare;
Query_discount_from_storge.Params[0].Value:=combobox2.Text;
Query_discount_from_storge.Params[1].Value:=combobox1.Text;
Query_discount_from_storge.Open;
while((not(Query_discount_from_storge.Eof)) and (want>0))do
begin
if(strtoint(Query_discount_from_storge['quantity_available'])>want)then
begin
Query_discount_from_storge.Edit;
Query_discount_from_storge['quantity_available']:=strtoint(Query_discount_from_storge['quantity_available'])-want;
Query_discount_from_storge['date_output']:=datetostr(datetimepicker1.Date);
Query_discount_from_storge.post;
Query_discount_from_storge.Next;
want:=0;
application.MessageBox(' „ ≈Œ—«Ã «·ﬂ„Ì… «·„ÿ·Ê»… „‰ «·„Œ“‰',' ‰»ÌÂ',mb_iconinformation+mb_ok);
combobox1.SetFocus;
combobox1.Text:='';
combobox2.Text:='';
maskedit1.Text:='';
maskedit2.Text:='';
end
else
begin
if(strtoint(Query_discount_from_storge['quantity_available'])<=want)then
begin
want:=want-strtoint(Query_discount_from_storge['quantity_available']);
Query_discount_from_storge.Delete;
end;
end;
end;
//////////////////////////quan
query1.Open;
a:=false;
sum:=0;
while(not(query1.Eof))and(a=false)do
begin
if(combobox1.Text=query1['VARIETY_NAME'])and(combobox2.Text=query1['TYPE_NAME'])then
begin
n:=Query1['QUANTITY_AVAILABLE'];
sum:=sum+n;
end;
query1.Next;
end;
maskedit1.Text:=inttostr(sum);
query1.close;
end;

procedure TForm8.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
combobox2.SetFocus;
end;
end;

procedure TForm8.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
maskedit2.SetFocus;
end;
end;

procedure TForm8.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
edit1.SetFocus;
end;
end;

procedure TForm8.BitBtn11Click(Sender: TObject);
begin
panel4.Visible:=false;
form8.Hide;
form1.show;
combobox1.Clear;
combobox2.Clear;
maskedit1.Clear;
maskedit2.Clear;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
query2.Close;
query2.Open;
while(not(query2.Eof))do
begin
combobox1.Items.Add(query2['variety_name']);
query2.Next;
end;
end;

procedure TForm8.ComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
maskedit1.SetFocus;
end;
end;

procedure TForm8.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
edit2.SetFocus;
end;
end;

procedure TForm8.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
bitbtn10.SetFocus;
end;
end;

end.
