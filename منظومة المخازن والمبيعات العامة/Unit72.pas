unit Unit72;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, IBCustomDataSet,
  IBTable, IBUpdateSQL, IBQuery, ComCtrls;

type
  TForm72 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    sales_data: TIBQuery;
    paied: TIBQuery;
    profitable: TIBQuery;
    storge: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    IBUpdateSQL2: TIBUpdateSQL;
    IBUpdateSQL3: TIBUpdateSQL;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    sales_dataNAME: TIBStringField;
    sales_dataKIND: TIBStringField;
    sales_dataQUANTITY: TIntegerField;
    sales_dataSALE_NUM: TIntegerField;
    sales_dataSALE_PRICE: TIBBCDField;
    sales_dataNUM: TIntegerField;
    sales_dataTOTAL_PIECE_PRICE: TIBBCDField;
    paiedNUM: TIntegerField;
    paiedPAID_TYPE: TIBStringField;
    paiedBILL_NUM: TIntegerField;
    paiedPAID_VALUE: TIBBCDField;
    paiedTOTAL_BILL_PRICE: TIBBCDField;
    paiedSALE_NUM: TIntegerField;
    paiedINPUT_DATE: TDateField;
    paiedCUSTOMER_NAME: TIBStringField;
    paiedREMAINING_VALUE: TIBBCDField;
    profitableSALE_NUM: TIntegerField;
    profitableBUY_PRICE: TIBBCDField;
    profitableSALE_PRICE: TIBBCDField;
    profitableGAIN: TIBBCDField;
    profitableNUM: TIntegerField;
    profitableKIND: TIBStringField;
    profitableNAME: TIBStringField;
    profitableQUANTITY: TIntegerField;
    profitableNUM_IN_STORGE_HISTORY: TIntegerField;
    IBUpdateSQL4: TIBUpdateSQL;
    storgeNAME: TIBStringField;
    storgeKIND: TIBStringField;
    storgeNUM: TIntegerField;
    storgeINPUT_DATE: TDateField;
    storgeBUY_PRICE: TIBBCDField;
    storgeQUANTITY: TIntegerField;
    storgeNUM_IN_HISTORY_STORGE: TIntegerField;
    storgeSOLD: TIntegerField;
    storgeDOLLAR_PRICE: TIBBCDField;
    storgeTOTAL_DOLLAR_PRICE: TIBBCDField;
    storgeCHANGE_PRICE: TIBBCDField;
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
    DataSource6: TDataSource;
    num: TIBQuery;
    numMAX: TIntegerField;
    DataSource7: TDataSource;
    sum_all: TIBQuery;
    sum_paied_debts: TIBQuery;
    DataSource8: TDataSource;
    sum_paied_debtsSUM: TIBBCDField;
    sum_allSUM: TIBBCDField;
    sum_allSUM1: TIBBCDField;
    DataSource9: TDataSource;
    debts_names: TIBQuery;
    IBUpdateSQL5: TIBUpdateSQL;
    debts_namesNAME: TIBStringField;
    paied_debts: TIBQuery;
    DataSource10: TDataSource;
    IBUpdateSQL6: TIBUpdateSQL;
    paied_debtsNAME: TIBStringField;
    paied_debtsAMOUNT: TIBBCDField;
    paied_debtsINPUT_DATE: TDateField;
    IBTable2: TIBTable;
    DataSource11: TDataSource;
    IBTable2NAME: TIBStringField;
    IBTable2AMOUNT: TIBBCDField;
    IBTable2INPUT_DATE: TDateField;
    DateTimePicker1: TDateTimePicker;
    Edit6: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    DataSource12: TDataSource;
    data_from_storge_history: TIBQuery;
    data_from_storge_historyNAME: TIBStringField;
    data_from_storge_historyKIND: TIBStringField;
    data_from_storge_historyNUM: TIntegerField;
    data_from_storge_historyINPUT_DATE: TDateField;
    data_from_storge_historyBUY_PRICE: TIBBCDField;
    data_from_storge_historyQUANTITY: TIntegerField;
    data_from_storge_historyCHANGE_PRICE: TIBBCDField;
    data_from_storge_historyTOTAL_DOLLAR_PRICE: TIBBCDField;
    data_from_storge_historyDOLLAR_PRICE: TIBBCDField;
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form72: TForm72;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm72.Button2Click(Sender: TObject);
begin
form72.Close;
form1.show;
end;

procedure TForm72.Edit1Change(Sender: TObject);
begin
if edit1.Text<>''then
begin
sales_data.Close;
sales_data.Prepare;
sales_data.Params[0].Value:=edit1.Text;
sales_data.Open;
if sales_data.RecordCount=0 then
begin
button1.Enabled:=false;
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end
else
begin
button1.Enabled:=true;
paied.Close;
paied.Prepare;
paied.Params[0].Value:=edit1.Text;
paied.Open;
edit2.Text:=paied['customer_name'];
edit3.Text:=paied['total_bill_price'];
edit4.Text:=paied['paid_value'];
edit5.Text:=paied['remaining_value'];
end;
end
else
begin
sales_data.Close;
button1.Enabled:=false;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end;
end;

procedure TForm72.FormShow(Sender: TObject);
begin
sales_data.Close;
button1.Enabled:=false;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end;

procedure TForm72.Button1Click(Sender: TObject);
var
paid,total,paid_debts,paid_in_bills,difference:real;
begin
while not(sales_data.Eof)do
begin
profitable.Close;
profitable.Prepare;
profitable.Params[0].Value:=sales_data['sale_num'];
profitable.Params[1].Value:=sales_data['kind'];
profitable.Params[2].Value:=sales_data['name'];
profitable.Open;
while not(profitable.Eof)do
begin
storge.Close;
storge.Prepare;
storge.Params[0].Value:=profitable['kind'];
storge.Params[1].Value:=profitable['name'];
storge.Params[2].Value:=profitable['num_in_storge_history'];
storge.Params[3].Value:=profitable['buy_price'];
storge.Open;
if storge.RecordCount<>0 then
begin
storge.Edit;
storge['quantity']:=storge['quantity']+profitable['quantity'];
storge.Post;
end
else
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
data_from_storge_history.Close;
data_from_storge_history.Prepare;
data_from_storge_history.Params[0].Value:=profitable['num_in_storge_history'];
data_from_storge_history.Params[1].Value:=profitable['kind'];
data_from_storge_history.Params[2].Value:=profitable['name'];
data_from_storge_history.Open;
ibtable1['name']:=dbgrid1.Fields[1].AsString;
ibtable1['kind']:=dbgrid1.Fields[0].AsString;
ibtable1['quantity']:=dbgrid1.Fields[2].AsInteger;
ibtable1['input_date']:=data_from_storge_history['input_date'];
ibtable1['buy_price']:=profitable['buy_price'];
ibtable1['num_in_history_storge']:=profitable['num_in_storge_history'];
ibtable1['sold']:=profitable['quantity'];
ibtable1['dollar_price']:=data_from_storge_history['dollar_price'];
ibtable1['total_dollar_price']:=data_from_storge_history['total_dollar_price'];
ibtable1['change_price']:=data_from_storge_history['change_price'];
num.Close;
num.Open;
if num['max']=null then
ibtable1['num']:=1
else
ibtable1['num']:=num['max']+1;
ibtable1.Post;
end;
profitable.Delete;
end;
sales_data.Next;
end;
sales_data.First;
while not(sales_data.Eof)do
begin
sales_data.Delete;
end;
if paied['paid_value']=0 then
begin
paied.Delete;
paid:=0;
end
else
begin
paid:=paied['paid_value'];
datetimepicker1.Date:=paiedinput_date.Value;
paied.Delete;

end;
sum_all.Close;
sum_all.Prepare;
sum_all.Params[0].Value:=edit2.Text;
sum_all.Open;
if sum_all['sum']=null then
paid_in_bills:=0
else
paid_in_bills:=sum_all['sum'];
if sum_all['sum1']=null then
total:=0
else
total:=sum_all['sum1'];
sum_paied_debts.Close;
sum_paied_debts.Prepare;
sum_paied_debts.Params[0].Value:=edit2.Text;
sum_paied_debts.Open;
if sum_paied_debts['sum']=null then
paid_debts:=0
else
paid_debts:=sum_paied_debts['sum'];
if total=(paid_in_bills+paid_debts)then
begin
debts_names.Close;
debts_names.Prepare;
debts_names.Params[0].Value:=edit2.Text;
debts_names.Open;
if debts_names.RecordCount<>0 then
begin
debts_names.Delete;
end;
end
else
begin
if total<(paid_in_bills+paid_debts)then
begin
difference:=(paid_in_bills+paid_debts)-total;
paid:=paid+difference;
paied_debts.Close;
paied_debts.Prepare;
paied_debts.Params[0].Value:=edit2.Text;
paied_debts.Open;
while difference<>0 do
begin
if paied_debts['amount']=difference then
begin
paied_debts.Delete;
difference:=0;
end
else
begin
if paied_debts['amount']>difference then
begin
paied_debts['amount']:=paied_debts['amount']-difference;
difference:=0;
end
else
begin
if paied_debts['amount']<difference then
begin
difference:=difference-paied_debts['amount'];
paied_debts.Delete;
end;
end;
end;
end;
end
else
begin
if ((total>(paid_in_bills+paid_debts))and (paid>0))then
begin
if paid=(total-(paid_in_bills+paid_debts))then
begin
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Insert;
ibtable2['name']:=edit2.Text;
ibtable2['amount']:=paid;
ibtable2['input_date']:=datetimepicker1.Date;
ibtable2.Post;
paid:=0;
debts_names.Close;
debts_names.Prepare;
debts_names.Params[0].Value:=edit2.Text;
debts_names.Open;
if debts_names.RecordCount<>0 then
begin
debts_names.Delete;
end;
end
else
begin
if paid>(total-(paid_in_bills+paid_debts))then
begin
paid:=paid-(total-(paid_in_bills+paid_debts));
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Insert;
ibtable2['name']:=edit2.Text;
ibtable2['amount']:=(total-(paid_in_bills+paid_debts));
ibtable2['input_date']:=datetimepicker1.Date;
ibtable2.Post;
debts_names.Close;
debts_names.Prepare;
debts_names.Params[0].Value:=edit2.Text;
debts_names.Open;
if debts_names.RecordCount<>0 then
begin
debts_names.Delete;
end;
end
else
begin
if paid<(total-(paid_in_bills+paid_debts))then
begin
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Insert;
ibtable2['name']:=edit2.Text;
ibtable2['amount']:=paid;
ibtable2['input_date']:=datetimepicker1.Date;
ibtable2.Post;
paid:=0;
end;
end;
end;
end;
end;
end;
form1.IBTransaction1.Commit;
if paid<>0 then
begin
application.MessageBox(' „ ≈·€«¡ «·›« Ê—Â Ê ÌÊÃœ ﬁÌ„Â „«·ÌÂ ÌÃ» ≈—Ã«⁄Â« ··“»Ê‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
label7.Caption:=edit2.Text;
edit6.Text:=floattostr(paid);
end
else
begin
application.MessageBox(' „ ≈·€«¡ «·›« Ê—Â ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
label7.Caption:=edit2.Text;
edit6.Text:='0';
end;
sales_data.Close;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
button1.Enabled:=false;
end;

end.
