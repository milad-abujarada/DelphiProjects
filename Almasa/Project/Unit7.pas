unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TForm7 = class(TForm)
    Panel4: TPanel;
    Panel7: TPanel;
    BitBtn10: TBitBtn;
    BitBtn9: TBitBtn;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Panel10: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    query_sale: TQuery;
    DataSource2: TDataSource;
    query_saleTYP_NO: TIntegerField;
    query_saleTYP_NAME: TStringField;
    query_saleKIND_NAME: TStringField;
    Query2: TQuery;
    DataSource3: TDataSource;
    Query2VARIETY_NO: TIntegerField;
    Query2VARIETY_NAME: TStringField;
    BitBtn1: TBitBtn;
    ComboBox2: TComboBox;
    Query3: TQuery;
    DataSource4: TDataSource;
    Query3SERAIL_NUM: TIntegerField;
    Query3VARIETY_NAME: TStringField;
    Query3TYPE_NAME: TStringField;
    Query3QUANTITY: TIntegerField;
    Query3QUANTITY_AVAILABLE: TIntegerField;
    Query3BUY_PRICE: TFloatField;
    Query3SALE_PRICE: TFloatField;
    Query3DATE_INPUT: TStringField;
    Query3DATE_EX: TStringField;
    Query1SERAIL_NUM: TIntegerField;
    Query1VARIETY_NAME: TStringField;
    Query1TYPE_NAME: TStringField;
    Query1QUANTITY: TIntegerField;
    Query1QUANTITY_AVAILABLE: TIntegerField;
    Query1BUY_PRICE: TFloatField;
    Query1SALE_PRICE: TFloatField;
    Query1DATE_INPUT: TStringField;
    Query1DATE_EX: TStringField;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Query1DATE_OUTPUT: TStringField;
    Query3DATE_OUTPUT: TStringField;
    procedure ComboBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm7.ComboBox1Click(Sender: TObject);
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

procedure TForm7.FormShow(Sender: TObject);
begin
query2.Close;
query2.Open;
while(not(query2.Eof))do
begin
combobox1.Items.Add(query2['VARIETY_NAME']);
query2.Next;
end;
end;

procedure TForm7.BitBtn1Click(Sender: TObject);
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
query1.Close;
query1.Prepare;
query1.Params[0].Value:=combobox1.Text;
query1.Params[1].Value:=combobox2.Text;
query1.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
query1.Open;
if  query1['date_input'] <> datetostr(DateTimePicker1.date) then
begin
application.MessageBox('·« ÌÊÃœ »÷«⁄… „œŒ·… »Â–« «· «—ÌŒ',' ‰»ÌÂ',mb_iconerror+mb_ok);
combobox1.SetFocus;
edit1.Text:='';
edit3.Text:='';
exit;
end
else
begin
edit1.Text:=floattostr(query1['buy_price']);
edit3.Text:=floattostr(query1['sale_price']);
end;
end;
procedure TForm7.BitBtn9Click(Sender: TObject);
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
if(edit1.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· ”⁄— «·‘—«¡',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit;
end;
if(edit3.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· ”⁄— «·»Ì⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit3.SetFocus;
exit;
end;
query1.Close;
query1.Prepare;
query1.Params[0].Value:=combobox1.Text;
query1.Params[1].Value:=combobox2.Text;
query1.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
query1.Open;
if  query1['date_input'] <> datetostr(DateTimePicker1.date) then
begin
application.MessageBox('·« ÌÊÃœ »÷«⁄… „œŒ·… »Â–« «· «—ÌŒ',' ‰»ÌÂ',mb_iconerror+mb_ok);
combobox1.SetFocus;
edit1.Text:='';
edit3.Text:='';
exit;
end
else
begin
query1.Edit;
query1['buy_price']:=edit1.Text;
query1['sale_price']:=edit3.Text;
query1.Post;
query1.Close;
end;
application.MessageBox(' „  «·⁄„·Ì… »‰Ã«Õ','„⁄„· «·„«”… «·”—Ì⁄ ··«·Ê«‰',mb_iconinformation+mb_ok);
end;

procedure TForm7.BitBtn10Click(Sender: TObject);
begin
edit1.Text:='';
edit3.Text:='';
combobox1.Clear;
combobox2.Clear;
panel4.Visible:=false;
form7.Hide;
form3.show;
end;

procedure TForm7.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
combobox2.SetFocus;
end;

procedure TForm7.ComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
datetimepicker1.SetFocus;
end;

procedure TForm7.DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
bitbtn1.SetFocus;
end;

procedure TForm7.BitBtn1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
edit1.SetFocus;
end;

procedure TForm7.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
edit3.SetFocus;
end;

procedure TForm7.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
bitbtn9.SetFocus;
end;

end.
