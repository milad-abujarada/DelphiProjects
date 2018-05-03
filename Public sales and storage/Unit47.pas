unit Unit47;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, IBCustomDataSet, IBUpdateSQL, DB, IBQuery, Grids,
  DBGrids, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm47 = class(TForm)
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DateTimePicker2: TDateTimePicker;
    DataSource3: TDataSource;
    IBQuery3: TIBQuery;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBQuery2: TIBQuery;
    DBGrid2: TDBGrid;
    IBQuery1NAME: TIBStringField;
    IBQuery1INCOME: TIBBCDField;
    IBQuery1NUM: TIntegerField;
    IBQuery1INPUT_DATE: TDateField;
    IBQuery4: TIBQuery;
    DataSource4: TDataSource;
    IBQuery5: TIBQuery;
    DataSource5: TDataSource;
    IBQuery4NAME: TIBStringField;
    IBQuery4SPENT: TIBBCDField;
    IBQuery4INPUT_DATE: TDateField;
    IBQuery4NUM: TIntegerField;
    IBQuery4CAUSE: TIBStringField;
    IBQuery5NAME: TIBStringField;
    IBQuery5SPENT: TIBBCDField;
    IBQuery5INPUT_DATE: TDateField;
    IBQuery5NUM: TIntegerField;
    IBQuery5CAUSE: TIBStringField;
    IBQuery2NAME: TIBStringField;
    IBQuery2INCOME: TIBBCDField;
    IBQuery2NUM: TIntegerField;
    IBQuery2INPUT_DATE: TDateField;
    IBUpdateSQL1: TIBUpdateSQL;
    IBUpdateSQL2: TIBUpdateSQL;
    IBUpdateSQL3: TIBUpdateSQL;
    IBUpdateSQL4: TIBUpdateSQL;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    IBQuery1REASONE: TIBStringField;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    DataSource9: TDataSource;
    IBQuery6: TIBQuery;
    IBQuery7: TIBQuery;
    IBQuery8: TIBQuery;
    IBQuery9: TIBQuery;
    IBQuery6SUM: TIBBCDField;
    IBQuery7SUM: TIBBCDField;
    IBQuery8SUM: TIBBCDField;
    IBQuery9SUM: TIBBCDField;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure IBQuery2AfterDelete(DataSet: TDataSet);
    procedure IBQuery1AfterDelete(DataSet: TDataSet);
    procedure IBQuery4AfterDelete(DataSet: TDataSet);
    procedure IBQuery5AfterDelete(DataSet: TDataSet);
    procedure IBQuery1AfterPost(DataSet: TDataSet);
    procedure IBQuery2AfterPost(DataSet: TDataSet);
    procedure IBQuery4AfterPost(DataSet: TDataSet);
    procedure IBQuery5AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form47: TForm47;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm47.RadioButton1Click(Sender: TObject);
begin
if radiobutton1.Checked=true then
begin
label2.Visible:=false;
datetimepicker1.Visible:=false;
label3.Visible:=false;
datetimepicker2.Visible:=false;
combobox1.Text:='';

end;
ibquery5.Close;
ibquery2.Close;

end;

procedure TForm47.RadioButton2Click(Sender: TObject);
begin
if radiobutton2.Checked=true then
begin
label2.Visible:=true;
datetimepicker1.Visible:=true;
label3.Visible:=true;
datetimepicker2.Visible:=true;
combobox1.Text:='';

end;
ibquery4.Close;
ibquery1.Close;
end;

procedure TForm47.ComboBox1Change(Sender: TObject);
begin
if (radiobutton1.Checked=false) and (radiobutton2.Checked=false)then
begin
application.MessageBox('«·—Ã«¡  ÕœÌœ ‰Ê⁄ «·⁄—÷',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
combobox1.Text:='';
end;
if radiobutton1.Checked=true then
begin
dbgrid1.DataSource:=datasource1;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Params[0].Value:=combobox1.Text;
ibquery1.Open;
DBNavigator1.DataSource:=datasource1;
if ibquery1.RecordCount=0 then
ibquery1.Close;
dbgrid2.DataSource:=datasource4;
ibquery4.Close;
ibquery4.Prepare;
ibquery4.Params[0].Value:=combobox1.Text;
ibquery4.Open;
DBNavigator2.DataSource:=datasource4;
if ibquery4.RecordCount=0 then
ibquery4.Close;
ibquery6.Close;
ibquery6.Prepare;
ibquery6.Params[0].Value:=combobox1.Text;
ibquery6.Open;
if ibquery6['sum']=null then
edit1.Text:='0'
else
edit1.Text:=ibquery6['sum'];
ibquery7.Close;
ibquery7.Prepare;
ibquery7.Params[0].Value:=combobox1.Text;
ibquery7.Open;
if ibquery7['sum']=null then
edit2.Text:='0'
else
edit2.Text:=ibquery7['sum'];
end
else
begin
if radiobutton2.Checked=true then
begin
dbgrid1.DataSource:=datasource2;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery2.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
ibquery2.Params[2].Value:=combobox1.Text;
ibquery2.Open;
DBNavigator1.DataSource:=datasource2;
if ibquery2.RecordCount=0 then
ibquery2.Close;
dbgrid2.DataSource:=datasource5;
ibquery5.Close;
ibquery5.Prepare;
ibquery5.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery5.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
ibquery5.Params[2].Value:=combobox1.Text;
ibquery5.Open;
DBNavigator2.DataSource:=datasource5;
if ibquery5.RecordCount=0 then
ibquery5.Close;
ibquery8.Close;
ibquery8.Prepare;
ibquery8.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery8.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
ibquery8.Params[2].Value:=combobox1.Text;
ibquery8.Open;
if ibquery8['sum']=null then
edit1.Text:='0'
else
edit1.Text:=ibquery8['sum'];
ibquery9.Close;
ibquery9.Prepare;
ibquery9.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery9.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
ibquery9.Params[2].Value:=combobox1.Text;
ibquery9.Open;
if ibquery9['sum']=null then
edit2.Text:='0'
else
edit2.Text:=ibquery9['sum'];
end;
end;

end;

procedure TForm47.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Open;
combobox1.Clear;
while not(ibquery3.Eof) do
begin
combobox1.Items.Add(ibquery3['name']);
ibquery3.Next;
end;
end;

procedure TForm47.Button1Click(Sender: TObject);
begin
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
ibquery1.Close;
ibquery2.Close;
ibquery3.Close;
ibquery4.Close;
ibquery5.Close;

form47.Close;
form1.show;
end;

procedure TForm47.Button2Click(Sender: TObject);
begin
if radiobutton1.Checked=true then
begin
form61.QRLabel73.Caption:=combobox1.Text;
form61.QuickRep11.Preview;
end
else
begin
if radiobutton2.Checked=true then
begin
form61.QRLabel78.Caption:=combobox1.Text;
form61.QRLabel80.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel82.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep12.Preview;
end;
end;
end;

procedure TForm47.Button3Click(Sender: TObject);
begin
if radiobutton1.Checked=true then
begin
form61.QRLabel87.Caption:=combobox1.Text;
form61.QuickRep13.Preview;
end
else
begin
if radiobutton2.Checked=true then
begin
form61.QRLabel92.Caption:=combobox1.Text;
form61.QRLabel94.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel96.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep14.Preview;
end;
end;
end;

procedure TForm47.IBQuery2AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm47.IBQuery1AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm47.IBQuery4AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm47.IBQuery5AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm47.IBQuery1AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm47.IBQuery2AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm47.IBQuery4AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm47.IBQuery5AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

end.
