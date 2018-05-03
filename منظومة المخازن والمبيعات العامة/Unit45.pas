unit Unit45;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBUpdateSQL, IBQuery, ComCtrls, IBTable;

type
  TForm45 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    IBUpdateSQL2: TIBUpdateSQL;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBQuery1NAME: TIBStringField;
    Label2: TLabel;
    Label3: TLabel;
    IBQuery2NAME: TIBStringField;
    IBQuery2QUANTITY: TIntegerField;
    IBQuery2PAID: TIBBCDField;
    IBQuery2DESERVED: TIBBCDField;
    IBQuery2INPUT_DATE: TDateField;
    IBQuery3NAME: TIBStringField;
    IBQuery3PAID: TIBBCDField;
    IBQuery3INPUT_DATE: TDateField;
    Panel2: TPanel;
    Button2: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button3: TButton;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    travel_rep: TIBQuery;
    pay_rep: TIBQuery;
    travel_repNAME: TIBStringField;
    travel_repQUANTITY: TIntegerField;
    travel_repPAID: TIBBCDField;
    travel_repDESERVED: TIBBCDField;
    travel_repINPUT_DATE: TDateField;
    pay_repNAME: TIBStringField;
    pay_repPAID: TIBBCDField;
    pay_repINPUT_DATE: TDateField;
    IBQuery2DISTINATION: TIBStringField;
    travel_repDISTINATION: TIBStringField;
    DataSource6: TDataSource;
    IBTable1: TIBTable;
    IBTable1NAME: TIBStringField;
    IBTable1QUANTITY: TIntegerField;
    IBTable1PAID: TIBBCDField;
    IBTable1DESERVED: TIBBCDField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1DISTINATION: TIBStringField;
    IBTable1NOTES: TIBStringField;
    IBTable2: TIBTable;
    IBTable2NAME: TIBStringField;
    IBTable2PAID: TIBBCDField;
    IBTable2INPUT_DATE: TDateField;
    IBTable2NOTES: TIBStringField;
    IBTable2CHNAGE_PRICE: TIBStringField;
    pay_repNOTES: TIBStringField;
    pay_repCHNAGE_PRICE: TIBStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure IBQuery2AfterDelete(DataSet: TDataSet);
    procedure IBQuery3AfterDelete(DataSet: TDataSet);
    procedure IBQuery2AfterPost(DataSet: TDataSet);
    procedure IBQuery3AfterPost(DataSet: TDataSet);
    procedure IBTable1AfterDelete(DataSet: TDataSet);
    procedure IBTable1AfterPost(DataSet: TDataSet);
    procedure IBTable2AfterDelete(DataSet: TDataSet);
    procedure IBTable2AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form45: TForm45;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm45.Button1Click(Sender: TObject);
begin
button2.Enabled:=false;
panel2.Visible:=true;
ibquery2.Close;
ibquery3.Close;
form45.Close;
form1.show;
end;

procedure TForm45.FormShow(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
combobox1.Clear;
while(not(ibquery1.Eof)) do
begin
combobox1.Items.Add(ibquery1['name']);
ibquery1.Next;
end;
panel2.Visible:=false;
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
end;

procedure TForm45.ComboBox1Change(Sender: TObject);
begin
button2.Enabled:=true;
{ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=combobox1.Text;
ibquery2.Open;
if ibquery2.RecordCount=0 then
ibquery2.Close;}
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Filter:='name='+quotedstr(combobox1.Text);
datasource6.DataSet.Filtered:=true;
ibtable1.Open;
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Filter:='name='+quotedstr(combobox1.Text);
datasource3.DataSet.Filtered:=true;
ibtable2.Open;
{ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=combobox1.Text;
ibquery3.Open;
if ibquery3.RecordCount=0 then
ibquery3.Close; }
end;

procedure TForm45.Button3Click(Sender: TObject);
begin
if radiobutton1.Checked=true then
begin
travel_rep.Close;
travel_rep.Params[0].Value:=combobox1.Text;
travel_rep.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
travel_rep.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
travel_rep.Open;
form61.QRLabel101.Caption:=combobox1.Text;
form61.QRLabel103.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel105.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep15.Preview;
end
else
begin
if radiobutton2.Checked=true then
begin
pay_rep.Close;
pay_rep.Params[0].Value:=combobox1.Text;
pay_rep.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
pay_rep.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
pay_rep.Open;
if pay_rep.RecordCount>0 then
form61.QRLabel111.Caption:=combobox1.Text;
form61.QRLabel113.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel115.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep17.Preview;
end;
end;
panel2.Visible:=false;
end;

procedure TForm45.Button2Click(Sender: TObject);
begin
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
panel2.Visible:=true;
end;

procedure TForm45.IBQuery2AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm45.IBQuery3AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm45.IBQuery2AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm45.IBQuery3AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm45.IBTable1AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm45.IBTable1AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm45.IBTable2AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm45.IBTable2AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

end.
