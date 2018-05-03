unit Unit53;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ExtCtrls,
  IBUpdateSQL, DBCtrls, ComCtrls;

type
  TForm53 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    IBUpdateSQL1: TIBUpdateSQL;
    ComboBox1: TComboBox;
    Label4: TLabel;
    DataSource3: TDataSource;
    IBQuery3: TIBQuery;
    IBQuery3NAME: TIBStringField;
    Edit1: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label6: TLabel;
    DataSource4: TDataSource;
    IBQuery4: TIBQuery;
    IBQuery4SUM: TIBBCDField;
    Button2: TButton;
    DataSource5: TDataSource;
    IBQuery5: TIBQuery;
    IBQuery5SUM: TIBBCDField;
    Button3: TButton;
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button4: TButton;
    DataSource6: TDataSource;
    IBQuery6: TIBQuery;
    IBQuery6NAME: TIBStringField;
    IBQuery6INPUT_DATE: TDateField;
    IBQuery6DEBT_VALUE: TIBBCDField;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure IBQuery2AfterPost(DataSet: TDataSet);
    procedure IBQuery2AfterDelete(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form53: TForm53;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm53.Button1Click(Sender: TObject);
begin
edit2.Text:='';
edit1.Text:='';
form53.Close;
form1.show;
end;

procedure TForm53.ComboBox1Change(Sender: TObject);
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=combobox1.Text;
ibquery2.Open;
if ibquery2.RecordCount=0 then
begin
ibquery2.Close;
edit1.Text:='';
edit2.Text:='';
button2.Enabled:=false;
end
else
begin
ibquery5.Close;
ibquery5.Prepare;
ibquery5.Params[0].Value:=combobox1.Text;
ibquery5.Open;
edit1.Text:=ibquery5['sum'];
edit2.Text:='';
button2.Enabled:=true;
end;
end;

procedure TForm53.FormShow(Sender: TObject);
begin
panel4.Visible:=false;
ibquery1.Close;
ibquery1.Open;
ibquery4.Close;
ibquery4.Open;
if ibquery4['sum']=null then
edit3.Text:=''
else
edit3.Text:=ibquery4['sum'];
combobox1.Text:='';
ibquery3.Close;
ibquery3.Open;
combobox1.Clear;
while not(ibquery3.Eof)do
begin
combobox1.Items.Add(ibquery3['name']);
ibquery3.Next;
end;
button2.Enabled:=false;

end;

procedure TForm53.Button2Click(Sender: TObject);
var
m:real;
begin
if (edit2.Text='') or (strtofloat(edit2.Text)>strtofloat(edit1.Text))then
begin
exit;
end;
m:=strtofloat(edit2.Text);
ibquery2.First;
while(m<>0)do
begin
if m=ibquery2['debt_value']then
begin
m:=0;
ibquery2.Delete;
end
else
begin
if m<ibquery2['debt_value'] then
begin
ibquery2.Edit;
ibquery2['debt_value']:=ibquery2['debt_value']-m;
ibquery2.Post;
m:=0;
end
else
begin
if m>ibquery2['debt_value']then
begin
m:=m-ibquery2['debt_value'];
ibquery2.Delete;
end;
end;
end;
form1.IBTransaction1.Commit;
ibquery2.Close;
combobox1.Text:='';
ibquery1.Close;
ibquery1.Open;
ibquery4.Close;
ibquery4.Open;
if ibquery4['sum']=null then
edit3.Text:=''
else
edit3.Text:=ibquery4['sum'];
combobox1.Text:='';
ibquery3.Close;
ibquery3.Open;
combobox1.Clear;
while not(ibquery3.Eof)do
begin
combobox1.Items.Add(ibquery3['name']);
ibquery3.Next;
end;
button2.Enabled:=false;

end;
end;

procedure TForm53.IBQuery2AfterPost(DataSet: TDataSet);
begin
ibquery1.Close;
ibquery1.Open;
ibquery4.Close;
ibquery4.Open;
if ibquery4['sum']=null then
edit3.Text:=''
else
edit3.Text:=ibquery4['sum'];
combobox1.Text:='';
ibquery3.Close;
ibquery3.Open;
combobox1.Clear;
while not(ibquery3.Eof)do
begin
combobox1.Items.Add(ibquery3['name']);
ibquery3.Next;
end;
button2.Enabled:=false;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=combobox1.Text;
ibquery2.Open;
if ibquery2.RecordCount=0 then
begin
ibquery2.Close;
edit1.Text:='';
edit2.Text:='';
button2.Enabled:=false;
end
else
begin
ibquery5.Close;
ibquery5.Prepare;
ibquery5.Params[0].Value:=combobox1.Text;
ibquery5.Open;
edit1.Text:=ibquery5['sum'];
edit2.Text:='';
button2.Enabled:=true;
end;
form1.IBTransaction1.Commit;
end;

procedure TForm53.IBQuery2AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm53.Button3Click(Sender: TObject);
begin
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
panel4.Visible:=true;
end;

procedure TForm53.Button4Click(Sender: TObject);
begin
IBQuery6.Close;
IBQuery6.Prepare;
IBQuery6.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery6.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
IBQuery6.Open;
form61.QuickRep22.Preview;
panel4.Visible:=false;
end;

end.
