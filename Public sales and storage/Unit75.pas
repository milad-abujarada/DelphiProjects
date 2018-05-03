unit Unit75;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, IBCustomDataSet, IBQuery, IBUpdateSQL,
  IBTable, ComCtrls;

type
  TForm75 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    kind: TIBQuery;
    types: TIBQuery;
    moved_storge: TIBQuery;
    storge: TIBQuery;
    history_storge: TIBQuery;
    kindKIND: TIBStringField;
    IBUpdateSQL1: TIBUpdateSQL;
    IBUpdateSQL2: TIBUpdateSQL;
    IBUpdateSQL3: TIBUpdateSQL;
    IBUpdateSQL4: TIBUpdateSQL;
    temp_storge: TIBQuery;
    DataSource6: TDataSource;
    moved_storgeKIND: TIBStringField;
    moved_storgeNAME: TIBStringField;
    storgeKIND: TIBStringField;
    storgeNAME: TIBStringField;
    history_storgeKIND: TIBStringField;
    history_storgeNAME: TIBStringField;
    temp_storgeKIND: TIBStringField;
    temp_storgeNAME: TIBStringField;
    DataSource7: TDataSource;
    same_in_proftable: TIBQuery;
    DataSource8: TDataSource;
    same_in_storge: TIBQuery;
    same_in_proftableSUM: TLargeintField;
    same_in_storgeSUM: TLargeintField;
    DataSource9: TDataSource;
    profitable: TIBQuery;
    IBUpdateSQL5: TIBUpdateSQL;
    profitableSALE_NUM: TIntegerField;
    profitableBUY_PRICE: TIBBCDField;
    profitableSALE_PRICE: TIBBCDField;
    profitableGAIN: TIBBCDField;
    profitableNUM: TIntegerField;
    profitableKIND: TIBStringField;
    profitableNAME: TIBStringField;
    profitableQUANTITY: TIntegerField;
    profitableNUM_IN_STORGE_HISTORY: TIntegerField;
    DataSource10: TDataSource;
    kin_typ_storge: TIBQuery;
    IBUpdateSQL6: TIBUpdateSQL;
    kin_typ_storgeNAME: TIBStringField;
    kin_typ_storgeKIND: TIBStringField;
    kin_typ_storgeNUM: TIntegerField;
    kin_typ_storgeINPUT_DATE: TDateField;
    kin_typ_storgeBUY_PRICE: TIBBCDField;
    kin_typ_storgeQUANTITY: TIntegerField;
    kin_typ_storgeNUM_IN_HISTORY_STORGE: TIntegerField;
    kin_typ_storgeSOLD: TIntegerField;
    kin_typ_storgeDOLLAR_PRICE: TIBBCDField;
    kin_typ_storgeTOTAL_DOLLAR_PRICE: TIBBCDField;
    kin_typ_storgeCHANGE_PRICE: TIBBCDField;
    DataSource11: TDataSource;
    IBTable1: TIBTable;
    IBTable1SALE_NUM: TIntegerField;
    IBTable1BUY_PRICE: TIBBCDField;
    IBTable1SALE_PRICE: TIBBCDField;
    IBTable1GAIN: TIBBCDField;
    IBTable1NUM: TIntegerField;
    IBTable1KIND: TIBStringField;
    IBTable1NAME: TIBStringField;
    IBTable1QUANTITY: TIntegerField;
    IBTable1NUM_IN_STORGE_HISTORY: TIntegerField;
    max_no: TIBQuery;
    DataSource12: TDataSource;
    max_noMAX: TIntegerField;
    DataSource13: TDataSource;
    sale_num1: TIBQuery;
    sale_num1SALE_NUM: TIntegerField;
    DataSource14: TDataSource;
    DataSource15: TDataSource;
    DataSource16: TDataSource;
    sum_moved_storge: TIBQuery;
    IBTable2: TIBTable;
    data_from_storge_history: TIBQuery;
    DataSource17: TDataSource;
    IBUpdateSQL7: TIBUpdateSQL;
    edit_storge: TIBQuery;
    edit_storgeNAME: TIBStringField;
    edit_storgeKIND: TIBStringField;
    edit_storgeNUM: TIntegerField;
    edit_storgeINPUT_DATE: TDateField;
    edit_storgeBUY_PRICE: TIBBCDField;
    edit_storgeQUANTITY: TIntegerField;
    edit_storgeNUM_IN_HISTORY_STORGE: TIntegerField;
    edit_storgeSOLD: TIntegerField;
    edit_storgeDOLLAR_PRICE: TIBBCDField;
    edit_storgeTOTAL_DOLLAR_PRICE: TIBBCDField;
    edit_storgeCHANGE_PRICE: TIBBCDField;
    sum_moved_storgeSUM: TLargeintField;
    IBTable2NAME: TIBStringField;
    IBTable2KIND: TIBStringField;
    IBTable2NUM: TIntegerField;
    IBTable2INPUT_DATE: TDateField;
    IBTable2BUY_PRICE: TIBBCDField;
    IBTable2QUANTITY: TIntegerField;
    IBTable2NUM_IN_HISTORY_STORGE: TIntegerField;
    IBTable2SOLD: TIntegerField;
    IBTable2DOLLAR_PRICE: TIBBCDField;
    IBTable2TOTAL_DOLLAR_PRICE: TIBBCDField;
    IBTable2CHANGE_PRICE: TIBBCDField;
    data_from_storge_historyNAME: TIBStringField;
    data_from_storge_historyKIND: TIBStringField;
    data_from_storge_historyNUM: TIntegerField;
    data_from_storge_historyINPUT_DATE: TDateField;
    data_from_storge_historyBUY_PRICE: TIBBCDField;
    data_from_storge_historyQUANTITY: TIntegerField;
    data_from_storge_historyCHANGE_PRICE: TIBBCDField;
    data_from_storge_historyTOTAL_DOLLAR_PRICE: TIBBCDField;
    data_from_storge_historyDOLLAR_PRICE: TIBBCDField;
    DataSource18: TDataSource;
    max_storge: TIBQuery;
    DataSource19: TDataSource;
    IBTable3: TIBTable;
    IBTable3NAME: TIBStringField;
    IBTable3KIND: TIBStringField;
    IBTable3NUM: TIntegerField;
    IBTable3INPUT_DATE: TDateField;
    IBTable3MOVED_DATE: TDateField;
    IBTable3BUY_PRICE: TIBBCDField;
    IBTable3QUANTITY: TIntegerField;
    IBTable3NUM_IN_STORGE_HISTORY: TIntegerField;
    IBTable3PLACE: TIBStringField;
    IBTable3MOVED_NUM: TIntegerField;
    moved_storgeNUM: TIntegerField;
    moved_storgeINPUT_DATE: TDateField;
    moved_storgeMOVED_DATE: TDateField;
    moved_storgeBUY_PRICE: TIBBCDField;
    moved_storgeQUANTITY: TIntegerField;
    moved_storgeNUM_IN_STORGE_HISTORY: TIntegerField;
    moved_storgePLACE: TIBStringField;
    moved_storgeMOVED_NUM: TIntegerField;
    DataSource20: TDataSource;
    max_no1: TIBQuery;
    max_no1MAX: TIntegerField;
    DateTimePicker1: TDateTimePicker;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kin,typ:string;
    num:integer;
  end;

var
  Form75: TForm75;

implementation

uses Unit73,unit1, Unit61;

{$R *.dfm}

procedure TForm75.Button2Click(Sender: TObject);
begin
form75.Close;
form73.show;
end;

procedure TForm75.FormShow(Sender: TObject);
begin
kind.Close;
kind.Open;
combobox1.Clear;
while not(kind.Eof)do
begin
combobox1.Items.Add(kind['kind']);
kind.Next;
end;
button1.Enabled:=false;
end;

procedure TForm75.ComboBox1Change(Sender: TObject);
begin
types.Close;
types.Prepare;
types.Params[0].Value:=combobox1.Text;
types.Open;
combobox2.Clear;
while not(types.Eof)do
begin
combobox2.Items.Add(types['name']);
types.Next;
end;
if ((kin<>combobox1.Text) or (typ<>combobox2.Text) ) and ((combobox1.Text<>'') and (combobox2.Text<>''))then
button1.Enabled:=true
else
button1.Enabled:=false;
end;

procedure TForm75.ComboBox2Change(Sender: TObject);
begin
if ((kin<>combobox1.Text) or (typ<>combobox2.Text) ) and ((combobox1.Text<>'') and (combobox2.Text<>''))then
button1.Enabled:=true
else
button1.Enabled:=false;
end;

procedure TForm75.Button1Click(Sender: TObject);
var
quan,no,sale_num,a,b,c,moved_num:integer;
place:string;
sale:real;
begin
same_in_proftable.Close;
same_in_proftable.Prepare;
same_in_proftable.Params[0].Value:=num;
same_in_proftable.Params[1].Value:=kin;
same_in_proftable.Params[2].Value:=typ;
same_in_proftable.Open;
if same_in_proftable['sum']=null then
a:=0
else
a:=same_in_proftable['sum'];
same_in_storge.Close;
same_in_storge.Prepare;
same_in_storge.Params[0].Value:=kin;
same_in_storge.Params[1].Value:=typ;
same_in_storge.Params[2].Value:=num;
same_in_storge.Open;
if same_in_storge['sum']=null then
c:=0
else
c:=same_in_storge['sum'];
temp_storge.Close;
temp_storge.Prepare;
temp_storge.Params[0].Value:=num;
temp_storge.Params[1].Value:=kin;
temp_storge.Params[2].Value:=typ;
temp_storge.Open;
moved_storge.Close;
moved_storge.Prepare;
moved_storge.Params[0].Value:=num;
moved_storge.Params[1].Value:=kin;
moved_storge.Params[2].Value:=typ;
moved_storge.Open;
sum_moved_storge.Close;
sum_moved_storge.Prepare;
sum_moved_storge.Params[0].Value:=num;
sum_moved_storge.Params[1].Value:=kin;
sum_moved_storge.Params[2].Value:=typ;
sum_moved_storge.Open;
if sum_moved_storge['sum']=null then
b:=0
else
b:=sum_moved_storge['sum'];
if (a+b<=c)then
begin
if ((same_in_proftable['sum']=null)or (temp_storge.RecordCount<>0)or (moved_storge.RecordCount<>0))then
begin
history_storge.Close;
history_storge.Prepare;
history_storge.Params[0].Value:=num;
history_storge.Params[1].Value:=kin;
history_storge.Params[2].Value:=typ;
history_storge.Open;
history_storge.Edit;
history_storge['kind']:=combobox1.Text;
history_storge['name']:=combobox2.Text;
history_storge.Post;
storge.Close;
storge.Prepare;
storge.Params[0].Value:=num;
storge.Params[1].Value:=kin;
storge.Params[2].Value:=typ;
storge.Open;
if storge.RecordCount<>0 then
begin
storge.Edit;
storge['kind']:=combobox1.Text;
storge['name']:=combobox2.Text;
storge.Post;
end;
if temp_storge.RecordCount<>0then
begin
temp_storge.Edit;
temp_storge['kind']:=combobox1.Text;
temp_storge['name']:=combobox2.Text;
temp_storge.Post;
end;
///////////////////////////////  begin here 1
{if moved_storge.RecordCount<>0 then
begin
while not(moved_storge.Eof)do
begin
moved_storge.Edit;
moved_storge['kind']:=combobox1.Text;
moved_storge['name']:=combobox2.Text;
moved_storge.Post;
moved_storge.Next;
end;
end;}
if (sum_moved_storge['sum']<>null)then
begin //1
{profitable.Close;
profitable.Prepare;
profitable.Params[0].Value:=num;
profitable.Params[1].Value:=kin;
profitable.Params[2].Value:=typ;
profitable.Open; }
kin_typ_storge.Close;
kin_typ_storge.Prepare;
kin_typ_storge.Params[0].Value:=kin;
kin_typ_storge.Params[1].Value:=typ;
kin_typ_storge.Open;
while not(moved_storge.Eof)do
begin //2
edit_storge.Close;
edit_storge.Prepare;
edit_storge.Params[0].Value:=num;
edit_storge.Params[1].Value:=kin;
edit_storge.Params[2].Value:=typ;
edit_storge.Open;
if edit_storge.RecordCount<>0then
begin//3
edit_storge.Edit;
edit_storge['quantty']:=edit_storge['quantity']+moved_storge['quantity'];
edit_storge.Post;
end//3
else
begin//4
data_from_storge_history.Close;
data_from_storge_history.Prepare;
data_from_storge_history.Params[0].Value:=num;
data_from_storge_history.Params[1].Value:=kin;
data_from_storge_history.Params[2].Value:=typ;
data_from_storge_history.Open;
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Insert;
ibtable2['kind']:=kin;
ibtable2['name']:=typ;
ibtable2['num_in_history_storge']:=num;
ibtable2['sold']:=data_from_storge_history['quantity'];
ibtable2['input_date']:=data_from_storge_history['input_date'];
ibtable2['quantity']:=moved_storge['quantity'];
ibtable2['buy_price']:=data_from_storge_history['buy_price'];
ibtable2['dollar_price']:=data_from_storge_history['dollar_price'];
ibtable2['total_dollar_price']:=data_from_storge_history['total_dollar_price'];
ibtable2['change_price']:=data_from_storge_history['change_price'];
max_storge.Close;
max_storge.Open;
if max_storge['max']=null then
ibtable2['num']:=1
else
ibtable2['num']:=max_storge['max']+1;
ibtable2.Post;
end; //4
if moved_storge['quantity']=kin_typ_storge['quantity']then
begin //5
moved_storge.Edit;
moved_storge['num_in_storge_history']:=kin_typ_storge['num_in_history_storge'];
moved_storge['buy_price']:=kin_typ_storge['buy_price'];
moved_storge['input_date']:=kin_typ_storge['input_date'];
moved_storge.Post;
moved_storge.Next;
kin_typ_storge.Delete;
end  //5
else
begin//6
if moved_storge['quantity']<kin_typ_storge['quantity']then
begin //7
moved_storge.Edit;
moved_storge['num_in_storge_history']:=kin_typ_storge['num_in_history_storge'];
moved_storge['buy_price']:=kin_typ_storge['buy_price'];
moved_storge['input_date']:=kin_typ_storge['input_date'];
kin_typ_storge.Edit;
kin_typ_storge['quantity']:=kin_typ_storge['quantity']-moved_storge['quantity'];
kin_typ_storge.Post;
moved_storge.Post;
moved_storge.Next;
end//7
else
begin//8
if moved_storge['quantity']>kin_typ_storge['quantity']then
begin//9
quan:=moved_storge['quantity']-kin_typ_storge['quantity'];

max_no1.Close;
max_no1.Open;
if max_no1['max']=null then
no:=1
else
no:=max_no1['max']+1;
moved_num:=moved_storge['moved_num'];
place:=moved_storge['place'];
datetimepicker1.Date:=moved_storgemoved_date.Value;
moved_storge.Edit;
moved_storge['quantity']:=kin_typ_storge['quantity'];
moved_storge['buy_price']:=kin_typ_storge['buy_price'];
moved_storge['num_in_storge_history']:=kin_typ_storge['num_in_history_storge'];
moved_storge.Post;
kin_typ_storge.Delete;
while quan<>0 do
begin //10
ibtable3.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable3.Insert;
ibtable3['moved_num']:=moved_num;
ibtable3['place']:=place;
ibtable3['moved_date']:=datetimepicker1.date;
ibtable3['buy_price']:=kin_typ_storge['buy_price'];
ibtable3['input_date']:=kin_typ_storge['input_date'];
ibtable3['num']:=no;
no:=no+1;
ibtable3['kind']:=kin_typ_storge['kind'];
ibtable3['name']:=kin_typ_storge['name'];
ibtable3['num_in_storge_history']:=kin_typ_storge['num_in_history_storge'];
if quan=kin_typ_storge['quantity']then
begin //11
ibtable3['quantity']:=quan;
quan:=0;
kin_typ_storge.Delete;
moved_storge.Next;
end //11
else
begin//12
if quan>kin_typ_storge['quantity']then
begin//13
ibtable3['quantity']:=kin_typ_storge['quantity'];
quan:=quan-kin_typ_storge['quantity'];
kin_typ_storge.Delete;

end//13
else
begin//14
if quan<kin_typ_storge['quantity']then
begin//15
ibtable3['quantity']:=quan;
kin_typ_storge.Edit;
kin_typ_storge['quantity']:=kin_typ_storge['quantity']-quan;
kin_typ_storge.Post;
quan:=0;
moved_storge.Next;
end;//15
end;//14
end;//12
ibtable3.Post;
end;//10
end;//9
end;//8
end;//6
end;//2
end;//1

////////////////////////////// end here 1

////////////////////////////////////////////////////begin here 2
if (same_in_proftable['sum']<>null)then
begin //1
profitable.Close;
profitable.Prepare;
profitable.Params[0].Value:=num;
profitable.Params[1].Value:=kin;
profitable.Params[2].Value:=typ;
profitable.Open;
kin_typ_storge.Close;
kin_typ_storge.Prepare;
kin_typ_storge.Params[0].Value:=kin;
kin_typ_storge.Params[1].Value:=typ;
kin_typ_storge.Open;
while not(profitable.Eof)do
begin //2
edit_storge.Close;
edit_storge.Prepare;
edit_storge.Params[0].Value:=num;
edit_storge.Params[1].Value:=kin;
edit_storge.Params[2].Value:=typ;
edit_storge.Open;
if edit_storge.RecordCount<>0then
begin//3
edit_storge.Edit;
edit_storge['quantty']:=edit_storge['quantity']+profitable['quantity'];
edit_storge.Post;
end//3
else
begin//4
data_from_storge_history.Close;
data_from_storge_history.Prepare;
data_from_storge_history.Params[0].Value:=num;
data_from_storge_history.Params[1].Value:=kin;
data_from_storge_history.Params[2].Value:=typ;
data_from_storge_history.Open;
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Insert;
ibtable2['kind']:=kin;
ibtable2['name']:=typ;
ibtable2['num_in_history_storge']:=num;
ibtable2['sold']:=data_from_storge_history['quantity'];
ibtable2['input_date']:=data_from_storge_history['input_date'];
ibtable2['quantity']:=profitable['quantity'];
ibtable2['buy_price']:=data_from_storge_history['buy_price'];
ibtable2['dollar_price']:=data_from_storge_history['dollar_price'];
ibtable2['total_dollar_price']:=data_from_storge_history['total_dollar_price'];
ibtable2['change_price']:=data_from_storge_history['change_price'];
max_storge.Close;
max_storge.Open;
if max_storge['max']=null then
ibtable2['num']:=1
else
ibtable2['num']:=max_storge['max']+1;
ibtable2.Post;
end; //4
if profitable['quantity']=kin_typ_storge['quantity']then
begin //5
profitable.Edit;
profitable['num_in_storge_history']:=kin_typ_storge['num_in_history_storge'];
profitable['buy_price']:=kin_typ_storge['buy_price'];
profitable['gain']:=profitable['sale_price']-profitable['buy_price'];
profitable.Post;
profitable.Next;
kin_typ_storge.Delete;
end  //5
else
begin//6
if profitable['quantity']<kin_typ_storge['quantity']then
begin //7
profitable.Edit;
profitable['num_in_storge_history']:=kin_typ_storge['num_in_history_storge'];
profitable['buy_price']:=kin_typ_storge['buy_price'];
profitable['gain']:=profitable['sale_price']-profitable['buy_price'];
kin_typ_storge.Edit;
kin_typ_storge['quantity']:=kin_typ_storge['quantity']-profitable['quantity'];
kin_typ_storge.Post;
profitable.Post;
profitable.Next;
end//7
else
begin//8
if profitable['quantity']>kin_typ_storge['quantity']then
begin//9
quan:=profitable['quantity']-kin_typ_storge['quantity'];
sale:=profitable['sale_price'];
max_no.Close;
max_no.Open;
if max_no['max']=null then
no:=1
else
no:=max_no['max']+1;
sale_num:=profitable['sale_num'];
profitable.Edit;
profitable['quantity']:=kin_typ_storge['quantity'];
profitable['buy_price']:=kin_typ_storge['buy_price'];
profitable['num_in_storge_history']:=kin_typ_storge['num_in_history_storge'];
profitable['gain']:=profitable['sale_price']-profitable['buy_price'];
profitable.Post;
kin_typ_storge.Delete;
while quan<>0 do
begin //10
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['sale_num']:=sale_num;
ibtable1['buy_price']:=kin_typ_storge['buy_price'];
ibtable1['gain']:=sale-kin_typ_storge['buy_price'];
ibtable1['sale_price']:=sale;
ibtable1['num']:=no;
no:=no+1;
ibtable1['kind']:=kin_typ_storge['kind'];
ibtable1['name']:=kin_typ_storge['name'];
ibtable1['num_in_storge_history']:=kin_typ_storge['num_in_history_storge'];
if quan=kin_typ_storge['quantity']then
begin //11
ibtable1['quantity']:=quan;
quan:=0;
kin_typ_storge.Delete;
profitable.Next;
end //11
else
begin//12
if quan>kin_typ_storge['quantity']then
begin//13
ibtable1['quantity']:=kin_typ_storge['quantity'];
quan:=quan-kin_typ_storge['quantity'];
kin_typ_storge.Delete;

end//13
else
begin//14
if quan<kin_typ_storge['quantity']then
begin//15
ibtable1['quantity']:=quan;
kin_typ_storge.Edit;
kin_typ_storge['quantity']:=kin_typ_storge['quantity']-quan;
kin_typ_storge.Post;
quan:=0;
profitable.Next;
end;//15
end;//14
end;//12
ibtable1.Post;
end;//10
end;//9
end;//8
end;//6
end;//2
end;//1
///////////////////////////////////////////////////// end here 2
form1.IBTransaction1.Commit;
combobox1.Text:='';
combobox2.Text:='';
application.MessageBox('Êã ÇáÊÚÏíá','ÊäÈíå',mb_iconwarning+mb_ok);
form75.Close;
form73.Show;
end;
end
else
begin//if profitable more than storge
sale_num1.Close;
sale_num1.Prepare;
sale_num1.Params[0].Value:=num;
sale_num1.Params[1].Value:=kin;
sale_num1.Params[2].Value:=typ;
sale_num1.Params[3].Value:=num;
sale_num1.Params[4].Value:=kin;
sale_num1.Params[5].Value:=typ;
sale_num1.Params[6].Value:=kin;
sale_num1.Params[7].Value:=typ;
sale_num1.Open;
form61.QuickRep24.Preview;
end;//if profitable more than storge
end;

end.
