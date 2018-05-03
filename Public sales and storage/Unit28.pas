unit Unit28;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DB, IBCustomDataSet, IBTable,
  IBQuery, ComCtrls;

type
  TForm28 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBTable1: TIBTable;
    IBTable1AMOUNT: TIBBCDField;
    IBTable1NUM: TIntegerField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1CAUSE: TIBStringField;
    IBQuery1MAX: TIntegerField;
    IBQuery2CAUSE: TIBStringField;
    DateTimePicker1: TDateTimePicker;
    IBQuery3: TIBQuery;
    DataSource4: TDataSource;
    IBQuery3SUM: TIBBCDField;
    DataSource5: TDataSource;
    IBQuery4: TIBQuery;
    IBQuery4SUM: TIBBCDField;
    Label4: TLabel;
    Edit1: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form28: TForm28;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm28.Button2Click(Sender: TObject);
begin
IBTable1.Active:=false;
form1.IBTransaction1.Active:=false;
form28.Close;
form1.show;
end;

procedure TForm28.Button1Click(Sender: TObject);
var
a,b:real;
begin
if strtofloat(edit1.Text)< strtofloat(dbedit1.Text)then
begin
application.MessageBox('ÇáÑÌÇÁ ÇáÊÃßÏ ãä ÇáÞíãÉ ÇáãÃÎæÐå áÃäåÇ ÛíÑ ãÊæÝÑå Ýì ÇáÎÒäÉ','ÊäÈíå',mb_iconwarning+mb_ok);
dbedit1.SetFocus;
exit;
end;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
if ibquery1['max']= null then
ibtable1['num']:=1
else
ibtable1['num']:=ibquery1['max']+1;
if dbcombobox1.Text='' then
ibtable1['cause']:='áÇíæÌÏ';
ibtable1.Post;
application.MessageBox('Êã ÍÝÙ ÇáÈíÇäÇÊ','ÊäÈíå',mb_iconwarning+mb_ok);
form1.IBTransaction1.Commit;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Open;
dbcombobox1.Clear;
while(not(IBQuery2.Eof)) do
begin
dbcombobox1.Items.Add(IBQuery2['cause']);
IBQuery2.Next;
end;
DBEdit2.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery3.Close;
IBQuery3.Prepare;
IBQuery3.Open;
if ibquery3['sum']=null then
a:=0
else
a:=ibquery3['sum'];
IBQuery4.Close;
IBQuery4.Prepare;
IBQuery4.Open;
if ibquery4['sum']=null then
b:=0
else
b:=ibquery4['sum'];
edit1.Text:=floattostr(a-b);
if edit1.Text='0' then
button1.Enabled:=false;
end;

procedure TForm28.FormShow(Sender: TObject);
var
a,b:real;
begin
DateTimePicker1.date:=now;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
DBEdit2.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Open;
dbcombobox1.Clear;
while(not(IBQuery2.Eof)) do
begin
dbcombobox1.Items.Add(IBQuery2['cause']);
IBQuery2.Next;
end;
IBQuery3.Close;
IBQuery3.Prepare;
IBQuery3.Open;
if ibquery3['sum']=null then
a:=0
else
a:=ibquery3['sum'];
IBQuery4.Close;
IBQuery4.Prepare;
IBQuery4.Open;
if ibquery4['sum']=null then
b:=0
else
b:=ibquery4['sum'];
edit1.Text:=floattostr(a-b);
if edit1.Text='0' then
button1.Enabled:=false;
end;

procedure TForm28.DateTimePicker1Change(Sender: TObject);
begin
DBEdit2.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

end.
