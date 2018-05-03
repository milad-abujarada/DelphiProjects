unit Unit70;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBCustomDataSet, IBUpdateSQL, IBQuery, DB, IBTable, DBCtrls,
  ComCtrls, StdCtrls, Grids, DBGrids, Mask, ExtCtrls;

type
  TForm70 = class(TForm)
    Panel1: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button2: TButton;
    DBEdit10: TDBEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Edit1: TEdit;
    DBComboBox1: TDBComboBox;
    DBEdit9: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Button1: TButton;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    Panel3: TPanel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DBEdit5: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Button3: TButton;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit14: TDBEdit;
    DBNavigator1: TDBNavigator;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    DataSource7: TDataSource;
    IBQuery6: TIBQuery;
    IBQuery6MAX: TIntegerField;
    DataSource12: TDataSource;
    providers_names: TIBQuery;
    providers_namesNAME: TIBStringField;
    providers_namesNUM: TIntegerField;
    DataSource6: TDataSource;
    IBQuery5: TIBQuery;
    IBQuery5NAME: TIBStringField;
    IBQuery5KIND: TIBStringField;
    IBQuery5NUM: TIntegerField;
    IBQuery5SALE_PRICE: TIBBCDField;
    DataSource15: TDataSource;
    num_in_storge_history: TIBQuery;
    num_in_storge_historyMAX: TIntegerField;
    sum_total_dollar: TIBQuery;
    sum_total_dollarSUM: TIBBCDField;
    DataSource18: TDataSource;
    IBQuery8: TIBQuery;
    IBQuery8PAY_TYPE: TIBStringField;
    DataSource19: TDataSource;
    DataSource20: TDataSource;
    IBTable6: TIBTable;
    IBTable6NAME: TIBStringField;
    DataSource4: TDataSource;
    IBQuery3: TIBQuery;
    IBQuery3NAME: TIBStringField;
    IBQuery3KIND: TIBStringField;
    IBQuery3NUM: TIntegerField;
    IBQuery3SALE_PRICE: TIBBCDField;
    IBUpdateSQL1: TIBUpdateSQL;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1KIND: TIBStringField;
    DataSource5: TDataSource;
    IBQuery4: TIBQuery;
    IBQuery4MAX: TIntegerField;
    DataSource3: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery2NAME: TIBStringField;
    DataSource17: TDataSource;
    IBQuery7: TIBQuery;
    IBQuery7NAME: TIBStringField;
    IBUpdateSQL2: TIBUpdateSQL;
    data_for_dbgrid: TIBQuery;
    data_for_dbgridNAME: TIBStringField;
    data_for_dbgridKIND: TIBStringField;
    data_for_dbgridQUANTITY: TIntegerField;
    data_for_dbgridBUY_PRICE: TIBBCDField;
    data_for_dbgridNUM: TIntegerField;
    data_for_dbgridDOLLAR: TIBBCDField;
    data_for_dbgridTOTAL_DOLLAR: TIBBCDField;
    DataSource11: TDataSource;
    sum_provider_bill: TIBQuery;
    sum_provider_billSUM: TIBBCDField;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    max_num_in_provider_bill: TIBQuery;
    max_num_in_provider_billMAX: TIntegerField;
    DataSource14: TDataSource;
    IBTable4: TIBTable;
    IBTable4NAME: TIBStringField;
    IBTable4KIND: TIBStringField;
    IBTable4NUM: TIntegerField;
    IBTable4INPUT_DATE: TDateField;
    IBTable4BUY_PRICE: TIBBCDField;
    IBTable4QUANTITY: TIntegerField;
    IBTable4CHANGE_PRICE: TIBBCDField;
    IBTable4TOTAL_DOLLAR_PRICE: TIBBCDField;
    IBTable4DOLLAR_PRICE: TIBBCDField;
    DataSource13: TDataSource;
    IBTable3: TIBTable;
    IBTable3PROVIDER_NAME: TIBStringField;
    IBTable3TOTAL_BILL: TIBBCDField;
    IBTable3PAID: TIBBCDField;
    IBTable3REMAINING: TIBBCDField;
    IBTable3NUM_IN_HISTORY_STORGE: TIntegerField;
    IBTable3INPUT_DATE: TDateField;
    IBTable3DOLLAR: TIBBCDField;
    IBTable3CHANGE: TIBBCDField;
    IBTable3REMAINING_DOLLAR: TIBBCDField;
    IBTable3TOTAL_DOLLAR: TIBBCDField;
    IBTable2: TIBTable;
    IBTable2NAME: TIBStringField;
    IBTable2KIND: TIBStringField;
    IBTable2QUANTITY: TIntegerField;
    IBTable2BUY_PRICE: TIBBCDField;
    IBTable2NUM: TIntegerField;
    IBTable2DOLLAR: TIBBCDField;
    IBTable2TOTAL_DOLLAR: TIBBCDField;
    DataSource8: TDataSource;
    DataSource16: TDataSource;
    IBTable5: TIBTable;
    IBTable5NUM: TIntegerField;
    IBTable5DEBT_VALUE: TIBBCDField;
    IBTable5NUM_IN_PROVIDER_DATA: TIntegerField;
    IBTable5DEBT_DOLLAR: TIBBCDField;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
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
    DBEdit8: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit19: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure DBComboBox3Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBEdit17Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form70: TForm70;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm70.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=now;

IBTable2.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable2.Insert;
IBQuery3.Close;
IBQuery3.Prepare;
IBQuery3.open;
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
dbcombobox1.Clear;
while(not(IBQuery1.Eof)) do
begin
dbcombobox1.Items.Add(IBQuery1['kind']);
IBQuery1.Next;
end;

providers_names.Close;
providers_names.Prepare;
providers_names.Open;
dbcombobox3.Clear;
while(not(providers_names.Eof)) do
begin
dbcombobox3.Items.Add(providers_names['name']);
providers_names.Next;
end;

end;

procedure TForm70.DBComboBox1Change(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Params[0].Value:=dbcombobox1.Text;
IBQuery2.Open;
dbcombobox2.Clear;
while(not(IBQuery2.Eof))do
begin
dbcombobox2.Items.Add(IBQuery2['name']);
IBQuery2.Next;
end;

end;

procedure TForm70.DBComboBox2Change(Sender: TObject);
begin
IBQuery5.Close;
IBQuery5.Prepare;
IBQuery5.Params[0].Value:=dbcombobox1.Text;
IBQuery5.Params[1].Value:=dbcombobox2.Text;
IBQuery5.Open;
if (IBQuery5.RecordCount<>0) then
edit1.Text:=IBQuery5['sale_price']
else
edit1.Text:='';

end;

procedure TForm70.Button1Click(Sender: TObject);
begin
if dbcombobox1.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbcombobox1.SetFocus;
exit
end;
if dbcombobox2.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbcombobox2.SetFocus;
exit
end;
if dbedit1.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬂ„Ì…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit1.SetFocus;
exit
end;
if dbedit2.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ”⁄— «·‘—«¡',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit2.SetFocus;
exit
end;
if edit1.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ”⁄— «·»Ì⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit
end;
IBTable3.Active:=false;
IBQuery3.Close;
IBQuery3.Prepare;
IBQuery3.Params[0].Value:=dbcombobox1.text;
IBQuery3.Params[1].Value:=dbcombobox2.Text;
IBQuery3.Open;
if IBQuery3.RecordCount=0 then
begin   //2
ibquery3.Insert;
dbedit8.Text:=dbcombobox1.Text;
dbedit9.Text:=dbcombobox2.Text;
IBQuery4.Close;
IBQuery4.Prepare;
IBQuery4.Open;
if ibquery4['max']=null then
begin      //3
dbedit10.Text:='1';
end           //3
else
begin            //4
dbedit10.Text:=ibquery4['max']+1;
end;                //4
dbedit3.Text:=edit1.Text;
ibquery3.Post;
end                //2
else
begin
//s_p:=;
if ( IBQuery3.RecordCount<>0 ) and ( IBQuery3['sale_price'] <> strtofloat(edit1.text) )then
begin
ibquery3.Edit;
dbedit3.Text:=edit1.Text;
ibquery3.Post;
end;
end;

max_num_in_provider_bill.Close;
max_num_in_provider_bill.Prepare;
max_num_in_provider_bill.Open;
if max_num_in_provider_bill['max']=null then
ibtable2['num']:=1
else
ibtable2['num']:=max_num_in_provider_bill['max']+1;
IBTable2.Post;
//application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
//form1.IBTransaction1.Commit;
IBTable2.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable2.Insert;
data_for_dbgrid.Close;
data_for_dbgrid.Prepare;
data_for_dbgrid.Open;
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
dbcombobox1.Clear;
while(not(IBQuery1.Eof)) do
begin
dbcombobox1.Items.Add(IBQuery1['kind']);
IBQuery1.Next;
end;
IBTable3.Active:=true;
IBTable3.Insert;
sum_provider_bill.Close;
sum_provider_bill.Prepare;
sum_provider_bill.Open;
dbedit5.Text:=sum_provider_bill['sum'];

edit1.Text:='';
dbcombobox1.SetFocus;
panel3.Visible:=true;

end;

procedure TForm70.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
sum_provider_bill.Close;
sum_provider_bill.Prepare;
sum_provider_bill.Open;
if sum_provider_bill['sum']<>null then
dbedit5.Text:=sum_provider_bill['sum']
else
begin
dbedit5.Text:='';
panel3.Visible:=false;
data_for_dbgrid.Close;
end;
sum_total_dollar.Close;
sum_total_dollar.Prepare;
sum_total_dollar.Open;
if sum_total_dollar['sum']<>null then
dbedit16.Text:=sum_total_dollar['sum']
else
dbedit16.Text:='';


end;

procedure TForm70.Button2Click(Sender: TObject);
begin
form70.Close;
form1.show;
IBTable1.Active:=false;
form1.IBTransaction1.Active:=false;

end;

procedure TForm70.DBComboBox3Change(Sender: TObject);
begin
ibquery8.Close;
ibquery8.Prepare;
ibquery8.Params[0].Value:=dbcombobox3.Text;
ibquery8.Open;
if ibquery8['pay_type']='»«·œÌ‰«—'then
begin

dbedit17.ReadOnly:=true;
dbedit18.ReadOnly:=true;
dbedit14.ReadOnly:=true;

dbedit6.ReadOnly:=false;
dbedit7.ReadOnly:=false;
dbedit16.Text:='0';
dbedit17.Text:='0';
dbedit18.Text:='0';
dbedit14.Text:='0';
//
sum_provider_bill.Close;
sum_provider_bill.Prepare;
sum_provider_bill.Open;
if sum_provider_bill['sum']<>null then
dbedit5.Text:=sum_provider_bill['sum']
else
begin
dbedit5.Text:='';
end;
//
dbedit6.Text:='';
dbedit7.Text:='';
end
else
begin

dbedit17.ReadOnly:=false;
dbedit18.ReadOnly:=false;
dbedit14.ReadOnly:=false;

dbedit6.ReadOnly:=true;
dbedit7.ReadOnly:=true;
dbedit5.Text:='0';
dbedit6.Text:='0';
dbedit7.Text:='0';
//
sum_total_dollar.Close;
sum_total_dollar.Prepare;
sum_total_dollar.Open;
if sum_total_dollar['sum']<>null then
dbedit16.Text:=sum_total_dollar['sum']
else
dbedit16.Text:='';
//
dbedit17.Text:='';
dbedit18.Text:='';
dbedit14.Text:='';
end;

end;

procedure TForm70.DBEdit6Change(Sender: TObject);
begin
if (dbedit5.Text<>'') and (dbedit6.Text<>'') then
dbedit7.Text:=floattostr(strtofloat(dbedit5.text)-strtofloat(dbedit6.Text));

end;

procedure TForm70.DBEdit17Change(Sender: TObject);
begin
if (dbedit16.Text<>'') and (dbedit17.Text<>'') then
dbedit18.Text:=floattostr(strtofloat(dbedit16.text)-strtofloat(dbedit17.Text));
end;

procedure TForm70.Button3Click(Sender: TObject);
var
messege_num:integer;
begin
if dbcombobox3.Text=''then
begin
messege_num:=application.MessageBox('≈”„ «·„Ê—œ €Ì— „œŒ· Â·  —Ìœ «·≈” „—«— ›Ï  Œ“Ì‰ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_yesno);
if messege_num=7 then
exit;
end;
DBEdit4.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
data_for_dbgrid.First;
num_in_storge_history.Close;
num_in_storge_history.Open;
while (not(data_for_dbgrid.Eof))do
begin
ibtable1.Active:=true;
ibtable1.Insert;
ibtable4.Active:=true;
ibtable4.Insert;
ibtable1['name']:=data_for_dbgrid['name'];
ibtable4['name']:=data_for_dbgrid['name'];
ibtable1['kind']:=data_for_dbgrid['kind'];
ibtable4['kind']:=data_for_dbgrid['kind'];
ibtable1['input_date']:=dbedit4.Text;
ibtable4['input_date']:=dbedit4.Text;
ibtable1['buy_price']:=data_for_dbgrid['buy_price'];
ibtable4['buy_price']:=data_for_dbgrid['buy_price'];
ibtable1['quantity']:=data_for_dbgrid['quantity'];
ibtable4['quantity']:=data_for_dbgrid['quantity'];
IBQuery6.Close;
IBQuery6.Prepare;
IBQuery6.Open;
if IBQuery6['max']=null then
dbedit11.Text:='1'
else
dbedit11.Text:=IBQuery6['max']+1;
dbedit12.Text:=data_for_dbgrid['quantity'];

if num_in_storge_history['max']=null then
begin
ibtable1['num_in_history_storge']:=1;
ibtable4['num']:=1;
end
else
begin
ibtable1['num_in_history_storge']:=num_in_storge_history['max']+1;
ibtable4['num']:=num_in_storge_history['max']+1;
end;
if dbedit14.Text='' then
ibtable1['change_price']:=0
else
ibtable1['change_price']:=dbedit14.Text;
if dbedit16.Text='' then
ibtable1['total_dollar_price']:=0
else
ibtable1['total_dollar_price']:=dbedit16.Text;
ibtable1['dollar_price']:=data_for_dbgrid['dollar'];
if dbedit14.Text='' then
ibtable4['change_price']:=0
else
ibtable4['change_price']:=dbedit14.Text;
if dbedit16.Text='' then
ibtable4['total_dollar_price']:=0
else
ibtable4['total_dollar_price']:=dbedit16.Text;
ibtable4['dollar_price']:=data_for_dbgrid['dollar'];
ibtable1.Post;
ibtable4.Post;
data_for_dbgrid.Next;
end;

if ((dbedit5.Text<>'')and (dbedit7.Text<>'')and (dbedit6.Text<>'') and (dbcombobox3.Text<>''))or ((dbedit16.Text<>'')and (dbedit17.Text<>'')and (dbedit18.Text<>'') and (dbcombobox3.Text<>''))then
begin
if num_in_storge_history['max']=null then
ibtable3['num_in_history_storge']:=1
else
ibtable3['num_in_history_storge']:=num_in_storge_history['max']+1;
if (strtofloat(dbedit7.Text)>0)or (strtofloat(dbedit18.Text)>0) then
begin
IBQuery7.Close;
IBQuery7.Prepare;
IBQuery7.Params[0].Value:=dbcombobox3.Text;
IBQuery7.Open;
if IBQuery7.RecordCount=0 then
begin
IBTable6.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable6.Insert;
IBTable6['name']:=dbcombobox3.Text;
IBTable6.Post;
end;
{ibtable5.Active:=true;
ibtable5.Insert;

ibtable5['num']:=1
else
ibtable5['num']:=IBQuery7['max']+1;
ibtable5['debt_value']:=dbedit7.Text;
ibtable5['debt_dollar']:=dbedit18.Text;
if num_in_storge_history['max']=null then
ibtable5['num_in_provider_data']:=1
else
ibtable5['num_in_provider_data']:=num_in_storge_history['max']+1;
ibtable5.Post;}
end;
ibtable3.Post;
end;
data_for_dbgrid.First;
while(not(data_for_dbgrid.Eof))do
data_for_dbgrid.Delete;
form1.IBTransaction1.Commit;
IBTable2.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable2.Insert;
panel3.Visible:=false;
end;


procedure TForm70.DateTimePicker1Change(Sender: TObject);
begin
DBEdit4.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

end.
