unit Unit36;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, DB, IBCustomDataSet, IBQuery,
  Grids, DBGrids;

type
  TForm36 = class(TForm)
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    Label1: TLabel;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    IBQuery1NAME: TIBStringField;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBQuery2NAME: TIBStringField;
    IBQuery2WORK_TYPE: TIBStringField;
    IBQuery2NUM: TIntegerField;
    IBQuery2WORK_DATE: TDateField;
    IBQuery2SALARY: TIBBCDField;
    DateTimePicker2: TDateTimePicker;
    DBGrid1: TDBGrid;
    IBQuery3SUM: TIBBCDField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DataSource4: TDataSource;
    IBQuery4: TIBQuery;
    Button2: TButton;
    DataSource5: TDataSource;
    IBQuery5: TIBQuery;
    IBQuery5NAME: TIBStringField;
    IBQuery5END_DATE: TDateField;
    IBQuery5LAST_SALARY: TIntegerField;
    IBQuery4NAME: TIBStringField;
    IBQuery4NUM: TIntegerField;
    IBQuery4PAID: TIBBCDField;
    IBQuery4WORK_TYPE: TIBStringField;
    IBQuery4INPUT_DATE: TDateField;
    IBQuery4DELIVERD_NAME: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form36: TForm36;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm36.FormShow(Sender: TObject);
begin
DateTimePicker1.date:=now;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
combobox1.Clear;
while(not(ibquery1.Eof))do
begin
combobox1.Items.Add(ibquery1['name']);
ibquery1.Next;
end;
end;

procedure TForm36.Button1Click(Sender: TObject);
begin
ibquery4.Close;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
form36.Close;
form1.show;
end;

procedure TForm36.ComboBox1Change(Sender: TObject);
var
day,day1,month,month1,year,year1,no_months,loops,f:integer;
money,salary,last_salary:real;
begin
money:=0;
no_months:=0;
loops:=0;
ibquery4.Close;
ibquery4.Prepare;
ibquery4.Params[0].Value:=combobox1.Text;
ibquery4.Open;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=combobox1.Text;
ibquery2.Open;
ibquery2.Last;
f:=ibquery2.RecordCount;
ibquery2.First;
ibquery5.Close;
ibquery5.Prepare;
ibquery5.Params[0].Value:=combobox1.Text;
ibquery5.Open;
while not(ibquery2.Eof)do
begin
loops:=loops+1;
salary:=ibquery2['salary'];
datetimepicker2.Date:=ibquery2work_date.value;
day1:=strtoint(formatdatetime('d',DateTimePicker2.date));
month1:=strtoint(formatdatetime('m',DateTimePicker2.date));
year1:=strtoint(formatdatetime('yyyy',DateTimePicker2.date));
if ibquery2['salary']<> null then
begin//1
if loops=f then
begin

//
if ibquery5.RecordCount=0 then
begin
datetimepicker1.Date:=now;
day:=strtoint(formatdatetime('d',DateTimePicker1.date));
month:=strtoint(formatdatetime('m',DateTimePicker1.date));
year:=strtoint(formatdatetime('yyyy',DateTimePicker1.date));
end
else
begin
datetimepicker1.Date:=ibquery5end_date.value;
day:=strtoint(formatdatetime('d',DateTimePicker1.date));
month:=strtoint(formatdatetime('m',DateTimePicker1.date));
year:=strtoint(formatdatetime('yyyy',DateTimePicker1.date));
end;
end
else
begin
ibquery2.Next;
datetimepicker1.Date:=ibquery2work_date.value;
ibquery2.Prior;
day:=strtoint(formatdatetime('d',DateTimePicker1.date));
month:=strtoint(formatdatetime('m',DateTimePicker1.date));
year:=strtoint(formatdatetime('yyyy',DateTimePicker1.date));
end;
while (month1<>month) or (year1<>year) do
begin//2
money:=money+salary;
if month1=12 then
begin//3
no_months:=no_months+1;
year1:=year1+1;
month1:=1;
end//3
else
begin//4
no_months:=no_months+1;
month1:=month1+1;
end;//4
end; //2
if (day1=day) or (day>day1) then
begin//5
no_months:=no_months+1;
end;//5
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=combobox1.text;
ibquery3.Open;
if ibquery3['sum']=null then
edit2.Text:='0'
else
edit2.Text:=ibquery3['sum'];

end
else
begin
application.MessageBox('·Ì” ·œÌÂ —« »',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.text:='';
edit2.text:='';
edit3.text:='';
end;
ibquery2.Next;
end;
if +ibquery5['last_salary']=null then
last_salary:=0
else
last_salary:=+ibquery5['last_salary'];
money:=money+last_salary;
edit3.text:=floattostr(money);
edit1.Text:=floattostr(strtofloat(edit3.Text)-strtofloat(edit2.Text));
end;
procedure TForm36.Button2Click(Sender: TObject);
begin
form61.QRLabel121.Caption:=combobox1.Text;
form61.QRLabel127.caption:=edit3.Text;
form61.QRLabel128.caption:=edit2.Text;
form61.QRLabel130.caption:=edit1.Text;
form61.QuickRep18.Preview;
end;

end.
