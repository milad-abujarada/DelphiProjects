unit Unit77;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids,
  ComCtrls, ExtCtrls, IBUpdateSQL, DBCtrls, IBTable;

type
  TForm77 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    bring_data: TIBQuery;
    Button2: TButton;
    bring_dataNAME: TIBStringField;
    bring_dataKIND: TIBStringField;
    bring_dataNUM: TIntegerField;
    bring_dataINPUT_DATE: TDateField;
    bring_dataBUY_PRICE: TIBBCDField;
    bring_dataQUANTITY: TIntegerField;
    bring_dataCHANGE_PRICE: TIBBCDField;
    bring_dataTOTAL_DOLLAR_PRICE: TIBBCDField;
    bring_dataDOLLAR_PRICE: TIBBCDField;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    num_data: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    num_dataNUM: TIntegerField;
    num_dataINPUT_DATE: TDateField;
    DBNavigator1: TDBNavigator;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Button3: TButton;
    Button4: TButton;
    DataSource3: TDataSource;
    IBTable1: TIBTable;
    IBTable1NUM: TIntegerField;
    IBTable1INPUT_DATE: TDateField;
    DataSource4: TDataSource;
    providers: TIBQuery;
    DataSource5: TDataSource;
    IBTable2: TIBTable;
    IBTable2PROVIDER_NAME: TIBStringField;
    IBTable2TOTAL_BILL: TIBBCDField;
    IBTable2PAID: TIBBCDField;
    IBTable2REMAINING: TIBBCDField;
    IBTable2NUM_IN_HISTORY_STORGE: TIntegerField;
    IBTable2INPUT_DATE: TDateField;
    IBTable2DOLLAR: TIBBCDField;
    IBTable2CHANGE: TIBBCDField;
    IBTable2REMAINING_DOLLAR: TIBBCDField;
    IBTable2TOTAL_DOLLAR: TIBBCDField;
    DataSource6: TDataSource;
    provider_type: TIBQuery;
    provider_typePAY_TYPE: TIBStringField;
    total_price: TIBQuery;
    DataSource7: TDataSource;
    total_priceSUM: TIBBCDField;
    total_priceSUM1: TIBBCDField;
    IBTable3: TIBTable;
    DataSource8: TDataSource;
    IBTable3NAME: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure num_dataAfterDelete(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form77: TForm77;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm77.Button2Click(Sender: TObject);
begin
form77.Close;
form1.Show;
end;

procedure TForm77.Button1Click(Sender: TObject);
begin
bring_data.Close;
bring_data.Prepare;
bring_data.Params[0].Value:=datetimepicker1.Date;
bring_data.Params[1].Value:=datetimepicker2.Date;
bring_data.Open;
num_data.Close;
num_data.Open;
if num_data.RecordCount<>0then
begin
button3.Enabled:=false;
button4.Enabled:=true;
end
else
begin
button3.Enabled:=false;
button4.Enabled:=false;
num_data.Close;
end;
end;

procedure TForm77.DBGrid1CellClick(Column: TColumn);
begin
if bring_data.RecordCount<>0 then
button3.Enabled:=true
else
button3.Enabled:=false;
end;

procedure TForm77.num_dataAfterDelete(DataSet: TDataSet);
begin
num_data.Close;
num_data.Open;
if bring_data.RecordCount=0 then
begin
bring_data.Close;
button4.Enabled:=false;
end;
end;

procedure TForm77.Button3Click(Sender: TObject);
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['num']:=dbgrid1.Fields[8].AsInteger;
ibtable1['input_date']:=dbgrid1.Fields[3].AsDateTime;
ibtable1.Post;
bring_data.Close;
bring_data.Prepare;
bring_data.Params[0].Value:=datetimepicker1.Date;
bring_data.Params[1].Value:=datetimepicker2.Date;
bring_data.Open;
num_data.Close;
num_data.Open;
if num_data.RecordCount<>0then
begin
button3.Enabled:=false;
button4.Enabled:=true;
end
else
begin
button3.Enabled:=false;
button4.Enabled:=false;
num_data.Close;
end;
end;

procedure TForm77.FormShow(Sender: TObject);
begin
providers.Close;
providers.Open;
combobox1.Clear;
while not(providers.Eof)do
begin
combobox1.Items.Add(providers['name']);
providers.Next;
end;
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
end;

procedure TForm77.Button4Click(Sender: TObject);
begin
provider_type.Close;
provider_type.Prepare;
provider_type.Params[0].Value:=combobox1.Text;
provider_type.Open;
while not(num_data.Eof)do
begin
total_price.Close;
total_price.Prepare;
total_price.Params[0].Value:=num_data['num'];
total_price.Open;
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Insert;
if provider_type['pay_type']='»«·œÌ‰«—'then
begin
ibtable2['provider_name']:=combobox1.Text;
ibtable2['total_bill']:=total_price['sum'];
ibtable2['paid']:=0;
ibtable2['remaining']:=total_price['sum'];
ibtable2['num_in_history_storge']:=num_data['num'];
ibtable2['dollar']:=0;
ibtable2['input_date']:=num_data['input_date'];
ibtable2['change']:=0;
ibtable2['remaining_dollar']:=0;
ibtable2['total_dollar']:=total_price['sum1'];
ibtable2.Post;
end
else
begin
ibtable2['provider_name']:=combobox1.Text;
ibtable2['total_bill']:=total_price['sum'];
ibtable2['paid']:=0;
ibtable2['remaining']:=0;
ibtable2['num_in_history_storge']:=num_data['num'];
ibtable2['dollar']:=0;
ibtable2['input_date']:=num_data['input_date'];
ibtable2['change']:=0;
ibtable2['remaining_dollar']:=total_price['sum1'];
ibtable2['total_dollar']:=total_price['sum1'];
ibtable2.Post;
end;
num_data.Delete;
end;
ibtable3.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable3.Filter:='name='+quotedstr(combobox1.Text);
datasource8.DataSet.Filtered:=true;
ibtable3.Open;
if ibtable3.RecordCount=0 then
begin
ibtable3.Insert;
ibtable3['name']:=combobox1.Text;
ibtable3.Post;
end;

form1.IBTransaction1.Commit;
bring_data.Close;
num_data.Close;
button3.Enabled:=false;
button4.Enabled:=false;
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
end;

end.
