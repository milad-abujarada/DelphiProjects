unit Unit42;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, DBCtrls, StdCtrls, Grids, DBGrids,
  Mask, ExtCtrls, ComCtrls, IBTable, IBUpdateSQL;

type
  TForm42 = class(TForm)
    Panel1: TPanel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBQuery2KIND: TIBStringField;
    IBQuery1NAME: TIBStringField;
    IBQuery3: TIBQuery;
    DataSource3: TDataSource;
    IBQuery3PLACE: TIBStringField;
    DataSource4: TDataSource;
    IBQuery4: TIBQuery;
    IBQuery4SUM: TLargeintField;
    Edit2: TEdit;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DateTimePicker1: TDateTimePicker;
    DataSource5: TDataSource;
    IBTable1: TIBTable;
    IBTable1KIND: TIBStringField;
    IBTable1NAME: TIBStringField;
    IBTable1SALE_PRICE: TIBBCDField;
    IBTable1QUANTITY: TIntegerField;
    IBTable1NUM: TIntegerField;
    ComboBox1: TComboBox;
    Button4: TButton;
    DataSource6: TDataSource;
    IBQuery5: TIBQuery;
    IBQuery5SUM: TLargeintField;
    data_to_dbgrid: TIBQuery;
    DataSource7: TDataSource;
    IBUpdateSQL1: TIBUpdateSQL;
    DataSource8: TDataSource;
    max_bill: TIBQuery;
    max_billMAX: TIntegerField;
    DataSource9: TDataSource;
    sum_all_price: TIBQuery;
    sum_all_priceSUM: TIBBCDField;
    DataSource10: TDataSource;
    edit_in_moved_storge: TIBQuery;
    IBUpdateSQL2: TIBUpdateSQL;
    edit_in_moved_storgeNAME: TIBStringField;
    edit_in_moved_storgeKIND: TIBStringField;
    edit_in_moved_storgeNUM: TIntegerField;
    edit_in_moved_storgeINPUT_DATE: TDateField;
    edit_in_moved_storgeMOVED_DATE: TDateField;
    edit_in_moved_storgeBUY_PRICE: TIBBCDField;
    edit_in_moved_storgeQUANTITY: TIntegerField;
    edit_in_moved_storgeNUM_IN_STORGE_HISTORY: TIntegerField;
    edit_in_moved_storgePLACE: TIBStringField;
    edit_in_moved_storgeMOVED_NUM: TIntegerField;
    DataSource11: TDataSource;
    IBTable2: TIBTable;
    IBTable2KIND: TIBStringField;
    IBTable2NAME: TIBStringField;
    IBTable2QUANTITY: TIntegerField;
    IBTable2BUY_PRICE: TIBBCDField;
    IBTable2SALE_PRICE: TIBBCDField;
    IBTable2INPUT_DATE: TDateField;
    IBTable2PLACE: TIBStringField;
    IBTable2NUM_IN_STORGE_HISTORY: TIntegerField;
    DataSource12: TDataSource;
    IBTable3: TIBTable;
    IBTable3PAID: TIBBCDField;
    IBTable3REMAINING: TIBBCDField;
    IBTable3INPUT_DATE: TDateField;
    Label10: TLabel;
    Edit4: TEdit;
    IBTable3NUM: TIntegerField;
    IBTable3PLACE: TIBStringField;
    Label11: TLabel;
    IBTable3BAYAN: TIBStringField;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure data_to_dbgridAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form42: TForm42;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm42.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Open;
dbcombobox1.Clear;
while(not(IBQuery2.Eof)) do
begin
dbcombobox1.Items.Add(IBQuery2['kind']);
IBQuery2.Next;
end;

IBQuery3.Close;
IBQuery3.Prepare;
IBQuery3.Open;
combobox1.Clear;
while(not(IBQuery3.Eof)) do
begin
combobox1.Items.Add(IBQuery3['place']);
IBQuery3.Next;
end;
end;

procedure TForm42.Button3Click(Sender: TObject);
begin
form42.Close;
form1.show;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
end;

procedure TForm42.DBComboBox1Change(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Prepare;
ibquery1.Params[0].Value:=dbcombobox1.Text;
IBQuery1.Open;
dbcombobox2.Clear;
while(not(IBQuery1.Eof)) do
begin
dbcombobox2.Items.Add(IBQuery1['name']);
IBQuery1.Next;
end;
end;

procedure TForm42.Button1Click(Sender: TObject);
begin
max_bill.Close;
max_bill.Prepare;
max_bill.Open;
if max_bill['max']=null then
ibtable1['num']:=1
else
ibtable1['num']:=max_bill['max']+1;
ibtable1.Post;
combobox1.Enabled:=false;
ibtable1.Active:=true; 
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
data_to_dbgrid.Close;
data_to_dbgrid.Open;
sum_all_price.Close;
sum_all_price.Open;
edit2.Text:=sum_all_price['sum'];
button2.Enabled:=true;
edit1.Text:='';
end;

procedure TForm42.Button4Click(Sender: TObject);
var
quan:integer;
begin
if dbcombobox1.Text='' then
begin
exit;
end;
if dbcombobox2.text='' then
begin
exit;
end;
ibquery5.Close;
ibquery5.Prepare;
ibquery5.Params[0].Value:=dbcombobox1.Text;
ibquery5.Params[1].Value:=dbcombobox2.Text;
ibquery5.Open;
if ibquery5['sum']=null then
quan:=0
else
quan:=ibquery5['sum'];
ibquery4.Close;
ibquery4.Prepare;
ibquery4.Params[0].Value:=dbcombobox1.Text;
ibquery4.Params[1].Value:=dbcombobox2.Text;
ibquery4.Params[2].Value:=combobox1.Text;
ibquery4.Open;
if ibquery4['sum']=null then
begin
edit1.Text:='0';
button1.Enabled:=false;
end
else
begin
edit1.Text:=ibquery4['sum']-quan;
button1.Enabled:=true;
end;

end;

procedure TForm42.Button2Click(Sender: TObject);
var
quan:integer;
begin
data_to_dbgrid.First;
while not(data_to_dbgrid.Eof)do
begin
quan:=data_to_dbgrid['quantity'];
edit_in_moved_storge.Close;
edit_in_moved_storge.Prepare;
edit_in_moved_storge.Params[0].Value:=data_to_dbgrid['kind'];
edit_in_moved_storge.Params[1].Value:=data_to_dbgrid['name'];
edit_in_moved_storge.Params[2].Value:=combobox1.Text;
edit_in_moved_storge.Open;
while(quan<>0)and not(edit_in_moved_storge.Eof)do
begin
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Insert;
if quan=edit_in_moved_storge['quantity']then
begin
ibtable2['kind']:=edit_in_moved_storge['kind'];
ibtable2['name']:=edit_in_moved_storge['name'];
ibtable2['quantity']:=edit_in_moved_storge['quantity'];
ibtable2['buy_price']:=edit_in_moved_storge['buy_price'];
ibtable2['sale_price']:=data_to_dbgrid['sale_price'];
ibtable2['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable2['place']:=combobox1.Text;
ibtable2['num_in_storge_history']:=edit_in_moved_storge['num_in_storge_history'];
quan:=0;
edit_in_moved_storge.Delete;
end
else
begin
if quan<edit_in_moved_storge['quantity']then
begin
ibtable2['kind']:=edit_in_moved_storge['kind'];
ibtable2['name']:=edit_in_moved_storge['name'];
ibtable2['quantity']:=quan;
ibtable2['buy_price']:=edit_in_moved_storge['buy_price'];
ibtable2['sale_price']:=data_to_dbgrid['sale_price'];
ibtable2['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable2['place']:=combobox1.Text;
ibtable2['num_in_storge_history']:=edit_in_moved_storge['num_in_storge_history'];
edit_in_moved_storge.Edit;
edit_in_moved_storge['quantity']:=edit_in_moved_storge['quantity']-quan;
edit_in_moved_storge.Post;
edit_in_moved_storge.Next;
quan:=0;
end
else
begin
if quan>edit_in_moved_storge['quantity']then
begin
ibtable2['kind']:=edit_in_moved_storge['kind'];
ibtable2['name']:=edit_in_moved_storge['name'];
ibtable2['quantity']:=edit_in_moved_storge['quantity'];
ibtable2['buy_price']:=edit_in_moved_storge['buy_price'];
ibtable2['sale_price']:=data_to_dbgrid['sale_price'];
ibtable2['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable2['place']:=combobox1.Text;
ibtable2['num_in_storge_history']:=edit_in_moved_storge['num_in_storge_history'];
quan:=quan-edit_in_moved_storge['quantity'];
edit_in_moved_storge.Delete
end;
end;
end;
ibtable2.Post;
end;
data_to_dbgrid.Delete;
end;
ibtable3.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable3.Insert;
ibtable3['paid']:=edit3.Text;
ibtable3['bayan']:=memo1.Text;
ibtable3['remaining']:=edit4.Text;
ibtable3['num']:=1;
ibtable3['place']:=combobox1.text;
ibtable3['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable3.Post;
form1.IBTransaction1.Commit;
combobox1.Enabled:=true;
combobox1.Text:='';
ibtable1.Active:=true; 
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
memo1.Text:='';
button2.Enabled:=false;
end;

procedure TForm42.Edit3Change(Sender: TObject);
begin
if (edit2.Text<>'') and (edit3.Text<>'') then
edit4.Text:=floattostr(strtofloat(edit2.Text)-strtofloat(edit3.Text))
else
edit4.Text:='';
end;

procedure TForm42.data_to_dbgridAfterDelete(DataSet: TDataSet);
begin
if data_to_dbgrid.RecordCount=0then
begin
button2.Enabled:=false;
combobox1.Enabled:=true;
edit2.Text:='';
end;
end;

end.
