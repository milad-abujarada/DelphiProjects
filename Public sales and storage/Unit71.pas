unit Unit71;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ExtCtrls,
  IBTable, IBUpdateSQL;

type
  TForm71 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    providers_names: TIBQuery;
    Button1: TButton;
    providers_namesNAME: TIBStringField;
    providers_namesNUM: TIntegerField;
    providers_namesPAY_TYPE: TIBStringField;
    DataSource2: TDataSource;
    db_data: TIBQuery;
    db_dataNAME: TIBStringField;
    db_dataKIND: TIBStringField;
    db_dataNUM: TIntegerField;
    db_dataINPUT_DATE: TDateField;
    db_dataBUY_PRICE: TIBBCDField;
    db_dataQUANTITY: TIntegerField;
    db_dataNUM_IN_HISTORY_STORGE: TIntegerField;
    db_dataSOLD: TIntegerField;
    db_dataDOLLAR_PRICE: TIBBCDField;
    db_dataTOTAL_DOLLAR_PRICE: TIBBCDField;
    db_dataCHANGE_PRICE: TIBBCDField;
    db_dataprovider_name: TStringField;
    name_for_data: TIBQuery;
    DataSource3: TDataSource;
    name_for_dataPROVIDER_NAME: TIBStringField;
    DataSource4: TDataSource;
    db_data1: TIBQuery;
    db_data1NAME: TIBStringField;
    db_data1KIND: TIBStringField;
    db_data1NUM: TIntegerField;
    db_data1INPUT_DATE: TDateField;
    db_data1BUY_PRICE: TIBBCDField;
    db_data1QUANTITY: TIntegerField;
    db_data1NUM_IN_HISTORY_STORGE: TIntegerField;
    db_data1SOLD: TIntegerField;
    db_data1DOLLAR_PRICE: TIBBCDField;
    db_data1TOTAL_DOLLAR_PRICE: TIBBCDField;
    db_data1CHANGE_PRICE: TIBBCDField;
    db_data1provider_name: TStringField;
    Button2: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    DataSource5: TDataSource;
    edit_in_temp_storge: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    edit_in_temp_storgeNAME: TIBStringField;
    edit_in_temp_storgeKIND: TIBStringField;
    edit_in_temp_storgeNUM: TIntegerField;
    edit_in_temp_storgeINPUT_DATE: TDateField;
    edit_in_temp_storgeBUY_PRICE: TIBBCDField;
    edit_in_temp_storgeQUANTITY: TIntegerField;
    edit_in_temp_storgeNUM_IN_HISTORY_STORGE: TIntegerField;
    edit_in_temp_storgeSOLD: TIntegerField;
    edit_in_temp_storgeDOLLAR_PRICE: TIBBCDField;
    edit_in_temp_storgeTOTAL_DOLLAR_PRICE: TIBBCDField;
    edit_in_temp_storgeCHANGE_PRICE: TIBBCDField;
    DataSource6: TDataSource;
    edit_in_storge: TIBQuery;
    IBUpdateSQL2: TIBUpdateSQL;
    edit_in_storgeNAME: TIBStringField;
    edit_in_storgeKIND: TIBStringField;
    edit_in_storgeNUM: TIntegerField;
    edit_in_storgeINPUT_DATE: TDateField;
    edit_in_storgeBUY_PRICE: TIBBCDField;
    edit_in_storgeQUANTITY: TIntegerField;
    edit_in_storgeNUM_IN_HISTORY_STORGE: TIntegerField;
    edit_in_storgeSOLD: TIntegerField;
    edit_in_storgeDOLLAR_PRICE: TIBBCDField;
    edit_in_storgeTOTAL_DOLLAR_PRICE: TIBBCDField;
    edit_in_storgeCHANGE_PRICE: TIBBCDField;
    DataSource7: TDataSource;
    IBTable1: TIBTable;
    IBTable1NAME: TIBStringField;
    IBTable1KIND: TIBStringField;
    IBTable1NUM: TIntegerField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1BUY_PRICE: TIBBCDField;
    IBTable1QUANTITY: TIntegerField;
    IBTable1NUM_IN_HISTORY_STORGE: TIntegerField;
    IBTable1SOLD: TIntegerField;
    IBTable1DOLLAR_PRICE: TIBBCDField;
    IBTable1TOTAL_DOLLAR_PRICE: TIBBCDField;
    IBTable1CHANGE_PRICE: TIBBCDField;
    DataSource8: TDataSource;
    max: TIBQuery;
    maxMAX: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_dataCalcFields(DataSet: TDataSet);
    procedure db_data1CalcFields(DataSet: TDataSet);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form71: TForm71;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm71.Button1Click(Sender: TObject);
begin
edit1.Text:='';
form71.Close;
form1.show;
end;

procedure TForm71.FormShow(Sender: TObject);
begin
button2.Enabled:=false;
providers_names.Close;
providers_names.Open;
combobox1.Clear;
while not(providers_names.Eof)do
begin
combobox1.Items.Add(providers_names['name']);
providers_names.Next;
end;
db_data.Close;
db_data.Open;
dbgrid1.DataSource:=datasource2;
end;

procedure TForm71.db_dataCalcFields(DataSet: TDataSet);
begin
name_for_data.Close;
name_for_data.Prepare;
name_for_data.Params[0].Value:=db_data['num_in_history_storge'];
name_for_data.Open;
db_data['provider_name']:=name_for_data['provider_name'];
end;

procedure TForm71.db_data1CalcFields(DataSet: TDataSet);
begin
name_for_data.Close;
name_for_data.Prepare;
name_for_data.Params[0].Value:=db_data1['num_in_history_storge'];
name_for_data.Open;
db_data1['provider_name']:=name_for_data['provider_name'];
end;

procedure TForm71.Edit1Change(Sender: TObject);
begin
if (edit1.Text='')then
button2.Enabled:=false
else
begin
if (dbgrid1.Fields[2].AsInteger<strtoint(edit1.Text)) then
button2.Enabled:=false
else
button2.Enabled:=true;
end;
end;

procedure TForm71.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:='';
if dbgrid1.Fields[0].AsString<>'' then
button2.Enabled:=true
else
button2.Enabled:=false;
end;

procedure TForm71.ComboBox1Change(Sender: TObject);
begin
button2.Enabled:=false;
db_data1.Close;
db_data1.Prepare;
db_data1.Params[0].Value:=combobox1.Text;
db_data1.Open;
dbgrid1.DataSource:=datasource4;
end;

procedure TForm71.Button2Click(Sender: TObject);
begin
edit_in_storge.Close;
edit_in_storge.Prepare;
edit_in_storge.Params[0].Value:=dbgrid1.Fields[0].AsString;
edit_in_storge.Params[1].Value:=dbgrid1.Fields[1].AsString;
edit_in_storge.Params[2].Value:=dbgrid1.Fields[5].AsInteger;
edit_in_storge.Params[3].Value:=dbgrid1.Fields[3].AsDateTime;
edit_in_storge.Open;
if edit_in_storge.RecordCount<>0 then
begin
edit_in_storge.Edit;
edit_in_storge['quantity']:=edit_in_storge['quantity']+strtoint(edit1.Text);
edit_in_storge.Post;
end
else
begin
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
IBTable1['name']:=dbgrid1.Fields[1].AsString;
IBTable1['kind']:=dbgrid1.Fields[0].AsString;
IBTable1['input_date']:=dbgrid1.Fields[3].AsDateTime;
IBTable1['buy_price']:=dbgrid1.Fields[7].AsFloat;
IBTable1['quantity']:=edit1.Text;
IBTable1['num_in_history_storge']:=dbgrid1.Fields[5].AsInteger;
IBTable1['sold']:=dbgrid1.Fields[10].AsInteger;
IBTable1['dollar_price']:=dbgrid1.Fields[9].AsFloat;
IBTable1['total_dollar_price']:=dbgrid1.Fields[11].AsFloat;
IBTable1['change_price']:=dbgrid1.Fields[8].AsFloat;
max.Close;
max.Open;
if max['max']=null then
IBTable1['num']:=1
else
ibtable1['num']:=max['max']+1;
IBTable1.post;
end;
edit_in_temp_storge.Close;
edit_in_temp_storge.Prepare;
edit_in_temp_storge.Params[0].Value:=dbgrid1.Fields[0].AsString;
edit_in_temp_storge.Params[1].Value:=dbgrid1.Fields[1].AsString;
edit_in_temp_storge.Params[2].Value:=dbgrid1.Fields[5].AsInteger;
edit_in_temp_storge.Params[3].Value:=dbgrid1.Fields[2].AsInteger;
edit_in_temp_storge.Params[4].Value:=dbgrid1.Fields[3].AsDateTime;
edit_in_temp_storge.Open;
if edit_in_temp_storge['quantity']=strtoint(edit1.Text)then
edit_in_temp_storge.Delete
else
begin
edit_in_temp_storge.Edit;
edit_in_temp_storge['quantity']:=edit_in_temp_storge['quantity']-strtoint(edit1.Text);
edit_in_temp_storge.Post;
end;
edit1.Text:='';
button2.Enabled:=false;
form1.IBTransaction1.Commit;
db_data1.Close;
db_data1.Prepare;
db_data1.Params[0].Value:=combobox1.Text;
db_data1.Open;
dbgrid1.DataSource:=datasource4;
end;

end.
