unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ExtCtrls,
  DBCtrls, ComCtrls, Mask, IBUpdateSQL, IBTable;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DBGrid1: TDBGrid;
    IBQuery1NAME: TIBStringField;
    IBQuery1KIND: TIBStringField;
    IBQuery1NUM: TIntegerField;
    IBQuery1SALE_PRICE: TIBBCDField;
    DataSource2: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery2KIND: TIBStringField;
    IBQuery3: TIBQuery;
    DataSource3: TDataSource;
    IBQuery3NAME: TIBStringField;
    IBQuery4: TIBQuery;
    DataSource4: TDataSource;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    IBQuery5: TIBQuery;
    DataSource5: TDataSource;
    IBUpdateSQL1: TIBUpdateSQL;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Button2: TButton;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label13: TLabel;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    IBQuery6: TIBQuery;
    IBQuery7: TIBQuery;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    IBQuery7SUM: TLargeintField;
    IBQuery6SUM: TLargeintField;
    IBTable1: TIBTable;
    DataSource8: TDataSource;
    IBQuery5KIND: TIBStringField;
    IBQuery5NAME: TIBStringField;
    IBQuery5SALE_PRICE: TIBBCDField;
    IBQuery5QUANTITY: TIntegerField;
    IBQuery5NUM: TIntegerField;
    IBQuery8: TIBQuery;
    DataSource9: TDataSource;
    IBQuery9: TIBQuery;
    DataSource10: TDataSource;
    DBEdit8: TDBEdit;
    IBQuery9SUM: TIBBCDField;
    IBQuery8MAX: TIntegerField;
    IBTable2: TIBTable;
    DataSource11: TDataSource;
    IBTable1KIND: TIBStringField;
    IBTable1NAME: TIBStringField;
    IBTable1SALE_PRICE: TIBBCDField;
    IBTable1QUANTITY: TIntegerField;
    IBTable1NUM: TIntegerField;
    IBQuery10: TIBQuery;
    DataSource12: TDataSource;
    IBQuery11: TIBQuery;
    DataSource13: TDataSource;
    IBQuery10MAX: TIntegerField;
    IBQuery11MAX: TIntegerField;
    DataSource15: TDataSource;
    Label14: TLabel;
    DBComboBox1: TDBComboBox;
    IBQuery14: TIBQuery;
    DataSource16: TDataSource;
    IBQuery14MAX: TIntegerField;
    DataSource17: TDataSource;
    IBQuery16: TIBQuery;
    DataSource18: TDataSource;
    IBQuery16MAX: TIntegerField;
    IBQuery17: TIBQuery;
    DataSource19: TDataSource;
    IBQuery17MAX: TIntegerField;
    IBQuery18: TIBQuery;
    IBUpdateSQL5: TIBUpdateSQL;
    IBTable3: TIBTable;
    IBQuery12: TIBQuery;
    DataSource14: TDataSource;
    IBUpdateSQL2: TIBUpdateSQL;
    DBEdit9: TDBEdit;
    IBTable4: TIBTable;
    IBTable4NAME: TIBStringField;
    IBTable4KIND: TIBStringField;
    IBTable4QUANTITY: TIntegerField;
    IBTable4SALE_NUM: TIntegerField;
    IBTable4SALE_PRICE: TIBBCDField;
    IBTable4NUM: TIntegerField;
    IBTable5: TIBTable;
    DataSource20: TDataSource;
    IBQuery13: TIBQuery;
    DataSource21: TDataSource;
    IBTable5SALE_NUM: TIntegerField;
    IBTable5DEBT_VALUE: TIBBCDField;
    IBTable5NUM: TIntegerField;
    IBQuery13MAX: TIntegerField;
    Button4: TButton;
    IBQuery15: TIBQuery;
    DataSource22: TDataSource;
    IBTable4TOTAL_PIECE_PRICE: TIBBCDField;
    IBQuery19: TIBQuery;
    DataSource23: TDataSource;
    customers_names: TIBQuery;
    DataSource24: TDataSource;
    customers_namesCUS_NAME: TIBStringField;
    customers_namesNUM: TIntegerField;
    IBTable3SALE_NUM: TIntegerField;
    IBTable3BUY_PRICE: TIBBCDField;
    IBTable3SALE_PRICE: TIBBCDField;
    IBTable3GAIN: TIBBCDField;
    IBTable3NUM: TIntegerField;
    IBTable3KIND: TIBStringField;
    IBTable3NAME: TIBStringField;
    IBTable3QUANTITY: TIntegerField;
    IBTable3NUM_IN_STORGE_HISTORY: TIntegerField;
    IBQuery4NAME: TIBStringField;
    IBQuery4KIND: TIBStringField;
    IBQuery4NUM: TIntegerField;
    IBQuery4SALE_PRICE: TIBBCDField;
    IBTable2NUM: TIntegerField;
    IBTable2PAID_TYPE: TIBStringField;
    IBTable2BILL_NUM: TIntegerField;
    IBTable2PAID_VALUE: TIBBCDField;
    IBTable2TOTAL_BILL_PRICE: TIBBCDField;
    IBTable2SALE_NUM: TIntegerField;
    IBTable2INPUT_DATE: TDateField;
    IBTable2CUSTOMER_NAME: TIBStringField;
    IBTable2REMAINING_VALUE: TIBBCDField;
    IBQuery18NUM: TIntegerField;
    IBQuery18PAID_TYPE: TIBStringField;
    IBQuery18BILL_NUM: TIntegerField;
    IBQuery18PAID_VALUE: TIBBCDField;
    IBQuery18TOTAL_BILL_PRICE: TIBBCDField;
    IBQuery18SALE_NUM: TIntegerField;
    IBQuery18INPUT_DATE: TDateField;
    IBQuery18CUSTOMER_NAME: TIBStringField;
    IBQuery18REMAINING_VALUE: TIBBCDField;
    IBQuery12NAME: TIBStringField;
    IBQuery12KIND: TIBStringField;
    IBQuery12NUM: TIntegerField;
    IBQuery12INPUT_DATE: TDateField;
    IBQuery12BUY_PRICE: TIBBCDField;
    IBQuery12QUANTITY: TIntegerField;
    IBQuery12NUM_IN_HISTORY_STORGE: TIntegerField;
    IBQuery12SOLD: TIntegerField;
    IBQuery15NAME: TIBStringField;
    IBQuery15KIND: TIBStringField;
    IBQuery15QUANTITY: TIntegerField;
    IBQuery15SALE_NUM: TIntegerField;
    IBQuery15SALE_PRICE: TIBBCDField;
    IBQuery15NUM: TIntegerField;
    IBQuery15TOTAL_PIECE_PRICE: TIBBCDField;
    IBQuery15NUM1: TIntegerField;
    IBQuery15PAID_TYPE: TIBStringField;
    IBQuery15BILL_NUM: TIntegerField;
    IBQuery15PAID_VALUE: TIBBCDField;
    IBQuery15TOTAL_BILL_PRICE: TIBBCDField;
    IBQuery15SALE_NUM1: TIntegerField;
    IBQuery15INPUT_DATE: TDateField;
    IBQuery15CUSTOMER_NAME: TIBStringField;
    IBQuery15REMAINING_VALUE: TIBBCDField;
    IBTable6: TIBTable;
    IBTable6NAME: TIBStringField;
    DataSource25: TDataSource;
    IBQuery_debts_names: TIBQuery;
    IBQuery_debts_namesNAME: TIBStringField;
    DataSource26: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RadioButton1Click(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    still_bill:integer;
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
IBTable1.Active:=false;
IBTable2.Active:=false;
form1.IBTransaction1.Active:=false;
form3.Close;
form1.show;
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
if ibquery5.RecordCount<>0 then
while not(ibquery5.Eof) do
ibquery5.Delete;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Open;
combobox1.Clear;
while(not(IBQuery2.Eof)) do
begin
combobox1.Items.Add(IBQuery2['kind']);
IBQuery2.Next;
end;
customers_names.Close;
customers_names.Prepare;
customers_names.Open;
dbcombobox1.Clear;
while(not(customers_names.Eof)) do
begin
dbcombobox1.Items.Add(customers_names['cus_name']);
customers_names.Next;
end;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
DateTimePicker1.date:=now;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
dbgrid1.DataSource:=datasource1;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Params[0].Value:=combobox1.Text + '%';
ibquery1.Open;
IBQuery3.Close;
IBQuery3.Prepare;
ibquery3.Params[0].Value:=combobox1.Text;
IBQuery3.Open;
combobox2.Clear;
while(not(IBQuery3.Eof)) do
begin
combobox2.Items.Add(IBQuery3['name']);
IBQuery3.Next;
end;
if (ibquery1.RecordCount=0) or (combobox1.Text='') then
begin
ibquery1.Close;
ibquery3.Close;
end;
end;

procedure TForm3.ComboBox2Change(Sender: TObject);
begin
if combobox1.Text='' then
begin
combobox1.SetFocus;
combobox2.Text:='';
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
dbgrid1.DataSource:=datasource4;
ibquery4.Close;
ibquery4.Prepare;
ibquery4.Params[0].Value:=combobox1.Text;
ibquery4.Params[1].Value:= combobox2.Text + '%';
ibquery4.Open;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
var
a,b:integer;
begin
if ibquery1.RecordCount<>0 then
begin
dbedit1.Text:=DBGrid1.Fields[0].Asstring;
dbedit2.Text:=DBGrid1.Fields[1].Asstring;
dbedit5.Text:=DBGrid1.Fields[2].Asstring;
IBQuery6.Close;
IBQuery6.Prepare;
IBQuery6.Params[0].Value:=DBGrid1.Fields[0].Asstring;
IBQuery6.Params[1].Value:=DBGrid1.Fields[1].Asstring;
IBQuery6.Open;
IBQuery7.Close;
IBQuery7.Prepare;
IBQuery7.Params[0].Value:=DBGrid1.Fields[0].Asstring;
IBQuery7.Params[1].Value:=DBGrid1.Fields[1].Asstring;
IBQuery7.Open;
if ibquery6['sum']=null then
a:=0
else
a:=ibquery6['sum'];
if ibquery7['sum']=null then
b:=0
else
b:=ibquery7['sum'];
end;
if a=0 then
begin
edit1.Text:='0';
button2.Enabled:=false;
end
else
begin
edit1.Text:=inttostr(a-b);
button2.Enabled:=true;
end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
if (dbedit1.Text='') or (dbedit2.Text='') or (edit1.Text='')then
begin
application.MessageBox('«·—Ã«¡  ÕœÌœ «·»÷«⁄… «·„Œ «—…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if dbedit3.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬂ„Ì… «·„ÿ·Ê»…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit3.SetFocus;
exit;
end;
if dbedit5.Text='' then
begin
application.MessageBox('«·—Ã«¡  ÕœÌœ ”⁄— «·»Ì⁄ ··ﬁÿ⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit5.SetFocus;
exit;
end;
if strtoint(edit1.Text)<strtoint(dbedit3.Text) then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ «·ﬂ„Ì… «·„ÿ·Ê»… ·√‰Â« √ﬂ»— „‰ «·„ Ê›—…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit3.SetFocus;
exit;
end;
still_bill:=0;
button3.Enabled:=true;
ibtable2.Active:=false;
ibtable2.Active:=true;
ibtable2.Insert;
ibquery8.Close;
ibquery8.Prepare;
ibquery8.Open;
if ibquery8['max']=null then
ibtable1['num']:=1
else
ibtable1['num']:=ibquery8['max']+1;
ibtable1.Post;
ibquery5.Close;
ibquery5.Prepare;
ibquery5.Open;
ibquery9.Close;
ibquery9.Prepare;
ibquery9.Open;
IBTable1.Active:=true;

ibtable1.Insert;
IBTable2.Active:=true;
IBTable2.Insert;
dbedit8.Text:=ibquery9['sum'];
edit1.Text:='';

still_bill:=1;
radiobutton1.Enabled:=true;
radiobutton2.Enabled:=true;
end;

procedure TForm3.Button3Click(Sender: TObject);
var
quantity:integer;
p_type:string;
begin

if (radiobutton1.Checked=false)and (radiobutton2.Checked=false) then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— ÿ—Ìﬁ… «·œ›⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if strtofloat(dbedit6.Text)>strtofloat(dbedit8.Text)then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ «·ﬁÌ„… «·„œ›Ê⁄… ·√‰Â« √ﬂ»— „‰ «·≈Ã„«·Ï',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if (radiobutton2.Checked=true) and (dbcombobox1.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ≈”„ «·“»Ê‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbcombobox1.SetFocus;
exit;
end;
if dbedit6.Text=''then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… «·„œ›Ê⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
DBEdit4.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery10.Close;
ibquery10.Prepare;
ibquery10.open;
ibquery5.Close;
ibquery5.Prepare;
ibquery5.open;
while not(ibquery5.Eof) do
begin
quantity:=ibquery5['quantity'];
ibquery12.Close;
ibquery12.Prepare;
ibquery12.Params[0].Value:=ibquery5['kind'];
ibquery12.Params[1].Value:=ibquery5['name'];
ibquery12.Open;
while quantity<>0 do
begin
ibquery14.Close;
ibquery14.Prepare;
ibquery14.Open;
if quantity=ibquery12['quantity']then
begin
IBTable3.Active:=true;
IBTable3.Insert;
if IBQuery14['max']=null then
IBTable3['num']:=1
else
IBTable3['num']:=IBQuery14['max']+1;
IBTable3['kind']:=ibquery12['kind'];
IBTable3['name']:=ibquery12['name'];
IBTable3['sale_price']:=ibquery5['sale_price'];
IBTable3['buy_price']:=ibquery12['buy_price'];
IBTable3['num_in_storge_history']:=ibquery12['num_in_history_storge'];
IBTable3['gain']:=ibquery5['sale_price']- ibquery12['buy_price'];
IBTable3['quantity']:=ibquery12['quantity'];
if ibquery10['max']=null then
IBTable3['sale_num']:=1
else
IBTable3['sale_num']:=ibquery10['max']+1;
IBTable3.Post;
quantity:=0;
ibquery12.Delete;
end
else
begin
if quantity < ibquery12['quantity']then
begin
/////
//IBQuery15.Close;
//IBQuery15.Prepare;
IBTable3.Active:=true;
IBTable3.Insert;
if IBQuery14['max']=null then
IBTable3['num']:=1
else
IBTable3['num']:=IBQuery14['max']+1;
IBTable3['kind']:=ibquery12['kind'];
IBTable3['name']:=ibquery12['name'];
IBTable3['sale_price']:=ibquery5['sale_price'];
IBTable3['buy_price']:=ibquery12['buy_price'];
IBTable3['gain']:=ibquery5['sale_price']- ibquery12['buy_price'];
IBTable3['num_in_storge_history']:=ibquery12['num_in_history_storge'];
IBTable3['quantity']:=quantity;
if ibquery10['max']=null then
IBTable3['sale_num']:=1
else
IBTable3['sale_num']:=ibquery10['max']+1;
IBTable3.Post;
/////
ibquery12.Edit;
dbedit9.Text:=ibquery12['quantity']-quantity;
quantity:=0;
ibquery12.Post;
end
else
begin
if quantity > ibquery12['quantity'] then
begin
/////
IBTable3.Active:=true;
IBTable3.Insert;
if IBQuery14['max']=null then
IBTable3['num']:=1
else
IBTable3['num']:=IBQuery14['max']+1;
IBTable3['kind']:=ibquery12['kind'];
IBTable3['name']:=ibquery12['name'];
IBTable3['sale_price']:=ibquery5['sale_price'];
IBTable3['buy_price']:=ibquery12['buy_price'];
IBTable3['gain']:=ibquery5['sale_price']- ibquery12['buy_price'];
IBTable3['num_in_storge_history']:=ibquery12['num_in_history_storge'];
IBTable3['quantity']:=ibquery12['quantity'];
if ibquery10['max']=null then
IBTable3['sale_num']:=1
else
IBTable3['sale_num']:=ibquery10['max']+1;
IBTable3.Post;
/////
quantity:=quantity-ibquery12['quantity'];
ibquery12.Delete;
end;
end;
end;
end;
ibquery11.Close;
ibquery11.Prepare;
ibquery11.open;
ibtable4.Active:=true;
ibtable4.Insert;
if ibquery11['max']=null then
ibtable4['num']:=1
else
ibtable4['num']:=ibquery11['max']+1;
ibtable4['kind']:=ibquery5['kind'];
ibtable4['name']:=ibquery5['name'];
ibtable4['quantity']:=ibquery5['quantity'];
ibtable4['sale_price']:=ibquery5['sale_price'];
ibtable4['total_piece_price']:=ibquery5['quantity']*ibquery5['sale_price'];
if ibquery10['max']= null then
ibtable4['sale_num']:=1
else
ibtable4['sale_num']:=ibquery10['max']+1;
ibtable4.Post;
ibquery5.Next;
end;
if radiobutton1.Checked=true then
p_type:='‰ﬁœÌ'
else
if radiobutton2.Checked=true then
begin
IBQuery_debts_names.Close;
IBQuery_debts_names.Prepare;
IBQuery_debts_names.Params[0].Value:=dbcombobox1.Text;
IBQuery_debts_names.Open;
if IBQuery_debts_names.RecordCount=0 then
begin
ibtable6.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable6.Insert;
ibtable6['name']:=dbcombobox1.Text;
ibtable6.Post;
end;
p_type:='¬Ã·';
{ibtable5.Active:=true;
ibtable5.Insert;
if ibquery10['max']= null then
ibtable5['sale_num']:= 1
else
ibtable5['sale_num']:=ibquery10['max']+1;
ibtable5['debt_value']:=dbedit7.Text;
ibquery13.Close;
ibquery13.Prepare;
ibquery13.Open;
if ibquery13['max']=null then
ibtable5['num']:=1
else
ibtable5['num']:=ibquery13['max']+1;
ibtable5.Post; }
end
else
begin

end;
//if radiobutton3.Checked=true then
//p_type:='’ﬂ';
ibtable2['paid_type']:=p_type;
if ibquery10['max']=null then
ibtable2['sale_num']:=1
else
ibtable2['sale_num']:=ibquery10['max']+1;
ibquery16.Close;
ibquery16.Prepare;
ibquery16.Open;
if ibquery16['max']=null then
ibtable2['num']:=1
else
ibtable2['num']:=ibquery16['max']+1;
ibquery17.Close;
ibquery17.Prepare;
ibquery17.Open;
if ibquery17['max']=null then
ibtable2['bill_num']:=1
else
ibtable2['bill_num']:=ibquery17['max']+1;
if dbcombobox1.Text=''then
ibtable2['customer_name']:='·« ÌÊÃœ';
ibtable2.Post;
ibquery5.First;
while not(ibquery5.Eof) do
ibquery5.Delete;
form1.IBTransaction1.Commit;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
button3.Enabled:=false;
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
radiobutton1.Enabled:=false;
radiobutton2.Enabled:=false;

end;

procedure TForm3.DateTimePicker1Change(Sender: TObject);
begin
DBEdit4.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
ibquery10.Close;
ibquery10.Prepare;
ibquery10.open;
ibquery15.Close;
ibquery15.Prepare;
ibquery15.Params[0].Value:=ibquery10['max'];
ibquery15.Params[1].Value:=ibquery10['max'];
ibquery15.open;
if ibquery15['customer_name']= '·« ÌÊÃœ'then
form4.QRDBText1.DataSet.Cancel
else
form4.QRDBText1.DataSet:=ibquery15;
form4.QuickRep1.Preview;
end;

procedure TForm3.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);

  begin
ibquery9.Close;
ibquery9.Prepare;
ibquery9.Open;
if ibquery9['sum']=null then
begin
dbedit8.Text:='';
ibquery5.Close;
button3.Enabled:=false;
end
else
dbedit8.Text:=ibquery9['sum'];
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
dbedit6.Text:=dbedit8.Text;
dbedit7.Text:='0';
dbedit7.Enabled:=false;
dbedit6.Enabled:=false;
end;

procedure TForm3.DBEdit6Change(Sender: TObject);
begin
if still_bill=1 then
begin
if (radiobutton1.Checked=false) and (radiobutton2.Checked=false)then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— ÿ—Ìﬁ… «·œ›⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if dbedit6.Text<>'' then
dbedit7.Text:=floattostr(strtofloat(dbedit8.text)-strtofloat(dbedit6.Text))
end;
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
dbedit6.Enabled:=true;
dbedit7.Enabled:=false;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
if edit1.Text<>''then
begin
if strtoint(edit1.Text)=0  then
button2.Enabled:=false
else
button2.Enabled:=true;
end;

end;
end.
