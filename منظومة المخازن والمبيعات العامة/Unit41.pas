unit Unit41;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls, DB,
  IBCustomDataSet, IBTable, IBQuery, Mask, DBCtrls;

type
  TForm41 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    IBTable1: TIBTable;
    IBTable1PAID: TIBBCDField;
    IBTable1INPUT_DATE: TDateField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    IBTable1NAME: TIBStringField;
    IBTable1DELIVER_NAME: TIBStringField;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    IBQuery1NAME: TIBStringField;
    IBQuery2NAME: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBQuery1CalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form41: TForm41;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm41.Button2Click(Sender: TObject);
begin
ibtable1.Active:=false;
form1.IBTransaction1.Active:=false;
form41.Close;
form1.show;
end;

procedure TForm41.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
dbcombobox1.Clear;
while not(ibquery1.Eof) do
begin
dbcombobox1.Items.Add(ibquery1['name']);
ibquery1.Next;
end;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Open;
while not(ibquery2.Eof) do
begin
dbcombobox1.Items.Add(ibquery2['name']);
ibquery2.Next;
end;
end;

procedure TForm41.IBQuery1CalcFields(DataSet: TDataSet);
var
a,b:real;
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=ibquery1['name'];
ibquery2.Open;
if ibquery2['sum']=null then
a:=0
else
a:=ibquery2['sum'];

ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=ibquery1['name'];
ibquery3.Open;
if ibquery3['sum']=null then
b:=0
else
b:=ibquery2['sum'];
ibquery1['amount']:=a-b;
end;

procedure TForm41.Button1Click(Sender: TObject);
begin
if dbcombobox1.text='' then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— ≈”„ «·„”·„ ≈·ÌÂ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if dbedit1.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… «·„”·„Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit1.SetFocus;
exit;
end;
if dbedit2.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ≈”„ «·„”·„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit2.SetFocus;
exit;
end;
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable1.Post;
form1.IBTransaction1.Commit;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
dbcombobox1.Clear;
while not(ibquery1.Eof) do
begin
dbcombobox1.Items.Add(ibquery1['name']);
ibquery1.Next;
end;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Open;
while not(ibquery2.Eof) do
begin
dbcombobox1.Items.Add(ibquery2['name']);
ibquery2.Next;
end;
end;

end.
