unit Unit46;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, DBCtrls;

type
  TForm46 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBQuery1NAME: TIBStringField;
    IBQuery1AMOUNT: TIBBCDField;
    IBQuery1INPUT_DATE: TDateField;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    IBQuery2NAME: TIBStringField;
    IBQuery2AMOUNT: TIBBCDField;
    IBQuery2INPUT_DATE: TDateField;
    DataSource3: TDataSource;
    IBQuery3: TIBQuery;
    IBQuery3NAME: TIBStringField;
    IBUpdateSQL1: TIBUpdateSQL;
    IBUpdateSQL2: TIBUpdateSQL;
    DBNavigator1: TDBNavigator;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure IBQuery1AfterDelete(DataSet: TDataSet);
    procedure IBQuery1AfterPost(DataSet: TDataSet);
    procedure IBQuery2AfterDelete(DataSet: TDataSet);
    procedure IBQuery2AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form46: TForm46;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm46.RadioButton1Click(Sender: TObject);
begin
if radiobutton1.Checked=true then
begin
label2.Visible:=false;
datetimepicker1.Visible:=false;
label3.Visible:=false;
datetimepicker2.Visible:=false;
combobox1.Text:='';
ibquery1.Close;
ibquery2.Close;
end;
end;

procedure TForm46.RadioButton2Click(Sender: TObject);
begin
if radiobutton2.Checked=true then
begin
label2.Visible:=true;
datetimepicker1.Visible:=true;
label3.Visible:=true;
datetimepicker2.Visible:=true;
combobox1.Text:='';
ibquery1.Close;
ibquery2.Close;
end;
end;

procedure TForm46.Button2Click(Sender: TObject);
begin
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
form46.Close;
form1.show;
end;

procedure TForm46.ComboBox1Change(Sender: TObject);
begin
if (radiobutton1.Checked=false) and (radiobutton2.Checked=false)then
begin
application.MessageBox('«·—Ã«¡  ÕœÌœ ‰Ê⁄ «·⁄—÷',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
combobox1.Text:='';
end;
if radiobutton1.Checked=true then
begin
DBNavigator1.DataSource:=datasource1;
dbgrid1.DataSource:=datasource1;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Params[0].Value:=combobox1.Text;
ibquery1.Open;
end
else
begin
if radiobutton2.Checked=true then
begin
DBNavigator1.DataSource:=datasource2;
dbgrid1.DataSource:=datasource2;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery2.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
ibquery2.Params[2].Value:=combobox1.Text;
ibquery2.Open;
end;
end;
end;

procedure TForm46.FormShow(Sender: TObject);
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

procedure TForm46.Button1Click(Sender: TObject);
begin
if radiobutton1.Checked=true then
begin
form61.QRLabel35.Caption:=combobox1.Text;
form61.QuickRep5.Preview;
end
else
begin
if radiobutton2.Checked=true then
begin
form61.QRLabel43.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QRLabel41.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel39.Caption:=combobox1.Text;
form61.QuickRep6.Preview;
end;
end;
end;

procedure TForm46.IBQuery1AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm46.IBQuery1AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm46.IBQuery2AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm46.IBQuery2AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

end.
