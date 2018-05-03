unit Unit59;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DB, IBCustomDataSet, IBQuery,
  ComCtrls, IBTable, IBUpdateSQL;

type
  TForm59 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery2SUM: TLargeintField;
    IBQuery3: TIBQuery;
    IBQuery3SUM: TIBBCDField;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    IBQuery4: TIBQuery;
    DataSource5: TDataSource;
    IBQuery5: TIBQuery;
    IBQuery5PLACE: TIBStringField;
    Edit1: TEdit;
    Label2: TLabel;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DataSource6: TDataSource;
    IBQuery6: TIBQuery;
    IBQuery1KIND: TIBStringField;
    IBQuery1NAME: TIBStringField;
    IBQuery1QUANTITY: TIntegerField;
    IBTable1: TIBTable;
    DataSource7: TDataSource;
    IBQuery6KIND: TIBStringField;
    IBQuery4NAME: TIBStringField;
    IBUpdateSQL1: TIBUpdateSQL;
    IBQuery7: TIBQuery;
    IBQuery8: TIBQuery;
    IBQuery9: TIBQuery;
    DataSource8: TDataSource;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    IBQuery7KIND: TIBStringField;
    IBQuery8NAME: TIBStringField;
    IBQuery9SUM: TLargeintField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure IBQuery1CalcFields(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form59: TForm59;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm59.Button1Click(Sender: TObject);
begin
edit1.Text:='';
ibquery1.Close;
ibquery1.Open;
while not(ibquery1.Eof)do
ibquery1.Delete;
form59.Close;
form1.show;
end;

procedure TForm59.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
checkbox1.Checked:=false;
datetimepicker1.Enabled:=false;
datetimepicker2.Enabled:=false;
ibquery5.Close;
ibquery5.Open;
combobox1.Clear;
while not(ibquery5.Eof)do
begin
combobox1.Items.Add(ibquery5['place']);
ibquery5.Next;
end;

end;

procedure TForm59.ComboBox1Change(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Open;
while not(ibquery1.Eof)do
ibquery1.Delete;
IBQuery6.Close;
IBQuery6.Prepare;
ibquery6.Params[0].Value:=combobox1.Text;
IBQuery6.Open;
while not(ibquery6.Eof) do
begin
IBQuery4.Close;
IBQuery4.Prepare;
ibquery4.Params[0].Value:=ibquery6['kind'];
ibquery4.Params[1].Value:=combobox1.Text;
IBQuery4.Open;
while not(ibquery4.Eof)do
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=ibquery6['kind'];
ibquery2.Params[1].Value:=ibquery4['name'];
ibquery2.Params[2].Value:=combobox1.Text;
ibquery2.Open;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['kind']:=ibquery6['kind'];
ibtable1['name']:=ibquery4['name'];
ibtable1['quantity']:=ibquery2['sum'];
ibtable1.Post;
ibquery4.Next;
end;
ibquery6.Next;
end;
ibquery3.Close;
ibquery3.Params[0].Value:=combobox1.Text;
ibquery3.Open;
if ibquery3['sum']=null then
edit1.Text:='0'
else
edit1.Text:=ibquery3['sum'];
ibquery1.Close;
ibquery1.Open;
end;

procedure TForm59.IBQuery1CalcFields(DataSet: TDataSet);
begin
ibquery2.Close;
ibquery2.Params[0].Value:=ibquery1['kind'];
ibquery2.Params[1].Value:=ibquery1['name'];
ibquery2.Params[2].Value:=combobox1.Text;
ibquery2.Open;
ibquery1['total']:=ibquery2['sum'];
end;

procedure TForm59.Button2Click(Sender: TObject);
begin
if checkbox1.Checked=false then
begin
form61.QRLabel68.Caption:=combobox1.Text;
form61.QuickRep10.Preview;
end
else
begin
ibquery1.Close;
ibquery1.Open;
while not(ibquery1.Eof)do
ibquery1.Delete;
IBQuery7.Close;
IBQuery7.Prepare;
ibquery7.Params[0].Value:=combobox1.Text;
ibquery7.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery7.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
IBQuery7.Open;
while not(ibquery7.Eof) do
begin
IBQuery8.Close;
IBQuery8.Prepare;
ibquery8.Params[0].Value:=ibquery7['kind'];
ibquery8.Params[1].Value:=combobox1.Text;
ibquery8.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery8.Params[3].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
IBQuery8.Open;
while not(ibquery8.Eof)do
begin
ibquery9.Close;
ibquery9.Prepare;
ibquery9.Params[0].Value:=ibquery7['kind'];
ibquery9.Params[1].Value:=ibquery8['name'];
ibquery9.Params[2].Value:=combobox1.Text;
ibquery9.Params[3].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery9.Params[4].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
ibquery9.Open;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['kind']:=ibquery7['kind'];
ibtable1['name']:=ibquery8['name'];
ibtable1['quantity']:=ibquery9['sum'];
ibtable1.Post;
ibquery8.Next;
end;
ibquery7.Next;
end;
ibquery1.Close;
ibquery1.Open;
form61.QRLabel156.Caption:=combobox1.Text;
form61.QRLabel150.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel152.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep21.Preview;
end;
end;

procedure TForm59.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked=false then
begin
datetimepicker1.Enabled:=false;
datetimepicker2.Enabled:=false;
ibquery1.close;
combobox1.ClearSelection;
end
else
begin
datetimepicker1.Enabled:=true;
datetimepicker2.Enabled:=true;
end;
end;

end.
