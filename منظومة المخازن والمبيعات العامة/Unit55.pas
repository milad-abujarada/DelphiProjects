unit Unit55;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, IBCustomDataSet,
  IBUpdateSQL, DB, IBQuery, IBTable, ComCtrls;

type
  TForm55 = class(TForm)
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    Edit8: TEdit;
    Label8: TLabel;
    Edit9: TEdit;
    Label9: TLabel;
    Edit10: TEdit;
    Label10: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit11: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    IBQuery3: TIBQuery;
    IBQuery3SALE_NUM: TIntegerField;
    DataSource3: TDataSource;
    DataSource13: TDataSource;
    IBTable3: TIBTable;
    IBTable3NAME: TIBStringField;
    IBTable3AMOUNT: TIBBCDField;
    IBTable3INPUT_DATE: TDateField;
    IBQuery4: TIBQuery;
    IBQuery4CUSTOMER_NAME: TIBStringField;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    edit_in_sales: TIBQuery;
    edit_in_salesQUANTITY: TIntegerField;
    edit_in_salesSALE_NUM: TIntegerField;
    edit_in_salesSALE_PRICE: TIBBCDField;
    edit_in_salesNUM: TIntegerField;
    edit_in_salesTOTAL_PIECE_PRICE: TIBBCDField;
    edit_in_salesKIND: TIBStringField;
    edit_in_salesNAME: TIBStringField;
    IBUpdateSQL2: TIBUpdateSQL;
    IBTable1: TIBTable;
    IBTable1NAME: TIBStringField;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    max_debts: TIBQuery;
    max_debtsMAX: TIntegerField;
    max_collecting: TIBQuery;
    max_collectingMAX: TIntegerField;
    DataSource12: TDataSource;
    DataSource15: TDataSource;
    all_collcting: TIBQuery;
    all_collctingSUM: TIBBCDField;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1QUANTITY: TIntegerField;
    IBQuery1SALE_NUM: TIntegerField;
    IBQuery1SALE_PRICE: TIBBCDField;
    IBQuery1NUM: TIntegerField;
    IBQuery1TOTAL_PIECE_PRICE: TIBBCDField;
    IBQuery1KIND: TIBStringField;
    IBQuery1NAME: TIBStringField;
    IBUpdateSQL1: TIBUpdateSQL;
    edit_in_paid: TIBQuery;
    edit_in_paidNUM: TIntegerField;
    edit_in_paidPAID_TYPE: TIBStringField;
    edit_in_paidBILL_NUM: TIntegerField;
    edit_in_paidPAID_VALUE: TIBBCDField;
    edit_in_paidTOTAL_BILL_PRICE: TIBBCDField;
    edit_in_paidSALE_NUM: TIntegerField;
    edit_in_paidINPUT_DATE: TDateField;
    edit_in_paidCUSTOMER_NAME: TIBStringField;
    edit_in_paidREMAINING_VALUE: TIBBCDField;
    DataSource2: TDataSource;
    DataSource6: TDataSource;
    see_if_the_name_in_debts_names: TIBQuery;
    see_if_the_name_in_debts_namesNAME: TIBStringField;
    IBUpdateSQL3: TIBUpdateSQL;
    IBUpdateSQL4: TIBUpdateSQL;
    edit_in_collecting_debts: TIBQuery;
    edit_in_collecting_debtsNAME: TIBStringField;
    edit_in_collecting_debtsAMOUNT: TIBBCDField;
    edit_in_collecting_debtsINPUT_DATE: TDateField;
    DataSource9: TDataSource;
    all_paid_and_all_bills_total: TIBQuery;
    all_paid_and_all_bills_totalSUM: TIBBCDField;
    all_paid_and_all_bills_totalSUM1: TIBBCDField;
    DataSource10: TDataSource;
    DataSource11: TDataSource;
    IBTable2: TIBTable;
    IBTable2NAME: TIBStringField;
    IBTable2AMOUNT: TIBBCDField;
    IBTable2INPUT_DATE: TDateField;
    DataSource14: TDataSource;
    edit_in_profit: TIBQuery;
    edit_in_profitSALE_NUM: TIntegerField;
    edit_in_profitBUY_PRICE: TIBBCDField;
    edit_in_profitSALE_PRICE: TIBBCDField;
    edit_in_profitGAIN: TIBBCDField;
    edit_in_profitNUM: TIntegerField;
    edit_in_profitQUANTITY: TIntegerField;
    edit_in_profitNUM_IN_STORGE_HISTORY: TIntegerField;
    edit_in_profitKIND: TIBStringField;
    edit_in_profitNAME: TIBStringField;
    IBUpdateSQL6: TIBUpdateSQL;
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    old_total:real;
  end;

var
  Form55: TForm55;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm55.Button2Click(Sender: TObject);
begin
edit_in_paid.Close;
ibquery3.Close;
ibquery1.Close;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit7.Text:='';
edit8.Text:='';
edit9.Text:='';
edit10.Text:='';
button3.Enabled:=false;
form55.Close;
form1.show;
end;

procedure TForm55.RadioButton1Click(Sender: TObject);
begin
edit1.Enabled:=true;
button1.Enabled:=true;
combobox1.Enabled:=false;
edit1.SetFocus;
end;

procedure TForm55.RadioButton2Click(Sender: TObject);
begin
button1.Enabled:=false;
combobox1.Enabled:=true;
edit1.Enabled:=false;
combobox1.SetFocus;
end;

procedure TForm55.Button1Click(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Params[0].Value:=edit1.Text;
ibquery1.Open;
if ibquery1.RecordCount=0 then
begin
ibquery1.Close;
application.MessageBox('·« ÌÊÃœ ›« Ê—… »Â–« «·—ﬁ„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit7.Text:='';
edit8.Text:='';
edit9.Text:='';
edit10.Text:='';
end
else
begin
edit_in_paid.Close;
edit_in_paid.Params[0].Value:=edit1.Text;
edit_in_paid.Open;
edit5.Text:=edit_in_paid['total_bill_price'];
end;
button3.Enabled:=false;
end;

procedure TForm55.ComboBox1Change(Sender: TObject);
begin
if (radiobutton1.Checked=false) and (radiobutton2.Checked=false) and (combobox1.Text<>'') then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— ÿ—Ìﬁ… «·⁄—÷',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox1.Text:='';
exit;
end;
ibquery3.Close;
ibquery3.Params[0].Value:=combobox1.Text;
ibquery3.Open;
if ibquery3.RecordCount=0 then
ibquery3.Close;
end;

procedure TForm55.DBGrid1CellClick(Column: TColumn);
begin
if ibquery3.RecordCount>0 then
begin
ibquery1.Close;
ibquery1.Params[0].Value:=dbgrid1.Fields[0].AsInteger;
ibquery1.Open;
edit_in_paid.Close;
edit_in_paid.Params[0].Value:=dbgrid1.Fields[0].AsInteger;
edit_in_paid.Open;
edit5.Text:=edit_in_paid['total_bill_price'];
end;
button3.Enabled:=false;
end;

procedure TForm55.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
ibquery4.Close;
ibquery4.Open;
combobox1.Clear;
while not(ibquery4.Eof) do
begin
if ibquery4['customer_name']<>'·« ÌÊÃœ'then
begin
combobox1.Items.Add(ibquery4['customer_name']);
ibquery4.Next;
end
else
ibquery4.Next;
end;
end;

procedure TForm55.Edit1Change(Sender: TObject);
begin
if (radiobutton1.Checked=false) and (radiobutton2.Checked=false) and (edit1.Text<>'') then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— ÿ—Ìﬁ… «·⁄—÷',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.Text:='';
exit;
end;
end;

procedure TForm55.DBGrid2CellClick(Column: TColumn);
begin
if ibquery1.RecordCount<>0then
begin
edit2.Text:=dbgrid2.Fields[0].AsString;
edit3.Text:=dbgrid2.Fields[1].AsString;
edit4.Text:='';
old_total:=dbgrid2.Fields[4].AsFloat;
button3.Enabled:=true;
if edit_in_paid['customer_name']='·« ÌÊÃœ'then
edit9.Text:=''
else
edit9.Text:=edit_in_paid['customer_name'];
end
else
begin
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
button3.Enabled:=false;
end;
end;

procedure TForm55.Button3Click(Sender: TObject);
var
new_total,money,c_debt,paid_debts_m,collecting,dif_money:real;
begin
if (strtofloat(edit10.Text)>0) and (edit9.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ≈”„ «·“»Ê‰ ·ÊÃÊœ œÌ‰ »⁄œ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit9.SetFocus;
exit;
end;
edit_in_sales.Close;
edit_in_sales.Prepare;
edit_in_sales.Params[0].Value:=dbgrid2.Fields[6].AsInteger;
edit_in_sales.Params[1].Value:=dbgrid2.Fields[5].AsInteger;
edit_in_sales.Params[2].Value:=dbgrid2.Fields[2].AsInteger;
edit_in_sales.Params[3].Value:=dbgrid2.Fields[0].AsString;
edit_in_sales.Params[4].Value:=dbgrid2.Fields[1].AsString;
edit_in_sales.Open;
edit_in_sales.Edit;
edit_in_sales['sale_price']:=edit4.Text;
edit_in_sales['total_piece_price']:=dbgrid2.Fields[2].AsInteger*strtofloat(edit4.Text);
edit_in_sales.Post;
edit_in_profit.Close;
edit_in_profit.Prepare;
edit_in_profit.Params[0].Value:=dbgrid2.Fields[6].AsInteger;
edit_in_profit.Params[1].Value:=dbgrid2.Fields[0].AsString;
edit_in_profit.Params[2].Value:=dbgrid2.Fields[1].AsString;
edit_in_profit.Open;
while not(edit_in_profit.Eof)do
begin
edit_in_profit.Edit;
edit_in_profit['sale_price']:=edit4.Text;
edit_in_profit['gain']:=strtofloat(edit4.Text)-edit_in_profit['buy_price'];
edit_in_profit.Post;
edit_in_profit.Next;
end;
if strtofloat(edit7.Text)>0 then
begin//if the different more than 0
edit_in_paid.Close;
edit_in_paid.Prepare;
edit_in_paid.Params[0].Value:=dbgrid2.Fields[6].AsInteger;
edit_in_paid.Open;
edit_in_paid.Edit;
edit_in_paid['paid_value']:=edit_in_paid['paid_value']+strtofloat(edit8.Text);
edit_in_paid['remaining_value']:=edit_in_paid['remaining_value']+strtofloat(edit10.Text);
edit_in_paid['total_bill_price']:=edit_in_paid['total_bill_price']+strtofloat(edit7.Text);
if (strtofloat(edit10.Text)<>0)and (edit_in_paid['customer_name']='·« ÌÊÃœ') then
edit_in_paid['customer_name']:=edit9.Text;
edit_in_paid.Post;
if strtofloat(edit10.Text)>0 then
begin
see_if_the_name_in_debts_names.Close;
see_if_the_name_in_debts_names.Prepare;
see_if_the_name_in_debts_names.Params[0].Value:=edit9.Text;
see_if_the_name_in_debts_names.Open;
if see_if_the_name_in_debts_names.RecordCount=0 then
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['name']:=edit9.Text;
ibtable1.Post;

end;
end;
end//if the different more than 0
else
begin//if the different less than 0
edit_in_paid.Close;
edit_in_paid.Prepare;
edit_in_paid.Params[0].Value:=dbgrid2.Fields[6].AsInteger;
edit_in_paid.Open;
edit_in_paid.Edit;
if edit_in_paid['remaining_value']=(strtofloat(edit7.Text)*-1)then
begin
money:=0;
edit_in_paid['remaining_value']:=0;
edit_in_paid['total_bill_price']:=edit_in_paid['total_bill_price']- (strtofloat(edit7.Text)*-1);
edit_in_paid.Post;
end
else
begin
if edit_in_paid['remaining_value']>(strtofloat(edit7.Text)*-1)then
begin
money:=0;
edit_in_paid['remaining_value']:=edit_in_paid['remaining_value']-(strtofloat(edit7.Text)*-1);
edit_in_paid['total_bill_price']:=edit_in_paid['total_bill_price']- (strtofloat(edit7.Text)*-1);
edit_in_paid.Post;
end
else
begin
if edit_in_paid['remaining_value']<(strtofloat(edit7.Text)*-1)then
begin
money:=(strtofloat(edit7.Text)*-1)-edit_in_paid['remaining_value'];
edit_in_paid['remaining_value']:=0;
edit_in_paid['paid_value']:=edit_in_paid['paid_value']-money;
edit_in_paid['total_bill_price']:=edit_in_paid['total_bill_price']- (strtofloat(edit7.Text)*-1);
edit_in_paid.Post;
end
end;
end;
if edit9.Text<>'' then
begin // if he has name
all_paid_and_all_bills_total.Close;
all_paid_and_all_bills_total.Prepare;
all_paid_and_all_bills_total.Params[0].Value:=edit9.Text;
all_paid_and_all_bills_total.Open;
all_collcting.Close;
all_collcting.Prepare;
all_collcting.Params[0].Value:=edit9.Text;
all_collcting.Open;
if all_collcting['sum']=null then
collecting:=0
else
collecting:=all_collcting['sum'];
if (all_paid_and_all_bills_total['sum1']<(all_paid_and_all_bills_total['sum']+collecting))then
begin
money:=money+((all_paid_and_all_bills_total['sum']+collecting)-all_paid_and_all_bills_total['sum1']);
dif_money:=((all_paid_and_all_bills_total['sum']+collecting)-all_paid_and_all_bills_total['sum1']);
see_if_the_name_in_debts_names.Close;
see_if_the_name_in_debts_names.Prepare;
see_if_the_name_in_debts_names.Params[0].Value:=edit9.Text;
see_if_the_name_in_debts_names.Open;
if see_if_the_name_in_debts_names.RecordCount<>0 then
see_if_the_name_in_debts_names.Delete;
edit_in_collecting_debts.Close;
edit_in_collecting_debts.Prepare;
edit_in_collecting_debts.Params[0].Value:=edit9.Text;
edit_in_collecting_debts.Open;
while dif_money<>0 do
begin
if dif_money=edit_in_collecting_debts['amount']then
begin
edit_in_collecting_debts.Delete;
dif_money:=0;
end
else
begin
if dif_money<edit_in_collecting_debts['amount'] then
begin
edit_in_collecting_debts.Edit;
edit_in_collecting_debts['amount']:=edit_in_collecting_debts['amount']-dif_money;
dif_money:=0;
end
else
begin
if dif_money>edit_in_collecting_debts['amount'] then
begin
dif_money:=dif_money-edit_in_collecting_debts['amount'];
edit_in_collecting_debts.Delete;
end;
end;
end;
end;
end
else
begin
if (all_paid_and_all_bills_total['sum1']=(all_paid_and_all_bills_total['sum']+collecting))then
begin
see_if_the_name_in_debts_names.Close;
see_if_the_name_in_debts_names.Prepare;
see_if_the_name_in_debts_names.Params[0].Value:=edit9.Text;
see_if_the_name_in_debts_names.Open;
if see_if_the_name_in_debts_names.RecordCount<>0 then
see_if_the_name_in_debts_names.Delete;
end
else
begin
if (all_paid_and_all_bills_total['sum1']>(all_paid_and_all_bills_total['sum']+collecting))then
begin
if money>0 then
begin
if (money>(all_paid_and_all_bills_total['sum1']-(all_paid_and_all_bills_total['sum']+collecting)))then
begin
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Insert;
ibtable2['name']:=edit9.Text;
ibtable2['amount']:=(all_paid_and_all_bills_total['sum1']-(all_paid_and_all_bills_total['sum']+collecting));
money:=money-(all_paid_and_all_bills_total['sum1']-(all_paid_and_all_bills_total['sum']+collecting));
ibtable2['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable2.post;
see_if_the_name_in_debts_names.Close;
see_if_the_name_in_debts_names.Prepare;
see_if_the_name_in_debts_names.Params[0].Value:=edit9.Text;
see_if_the_name_in_debts_names.Open;
if see_if_the_name_in_debts_names.RecordCount<>0 then
see_if_the_name_in_debts_names.Delete;
end
else
begin
if (money=(all_paid_and_all_bills_total['sum1']-(all_paid_and_all_bills_total['sum']+collecting)))then
begin
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Insert;
ibtable2['name']:=edit9.Text;
ibtable2['amount']:=money;
money:=0;
ibtable2['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable2.post;
see_if_the_name_in_debts_names.Close;
see_if_the_name_in_debts_names.Prepare;
see_if_the_name_in_debts_names.Params[0].Value:=edit9.Text;
see_if_the_name_in_debts_names.Open;
if see_if_the_name_in_debts_names.RecordCount<>0 then
see_if_the_name_in_debts_names.Delete;
end
else
begin
if (money<(all_paid_and_all_bills_total['sum1']-(all_paid_and_all_bills_total['sum']+collecting)))then
begin
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Insert;
ibtable2['name']:=edit9.Text;
ibtable2['amount']:=money;
money:=0;
ibtable2['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable2.post;
see_if_the_name_in_debts_names.Close;
see_if_the_name_in_debts_names.Prepare;
see_if_the_name_in_debts_names.Params[0].Value:=edit9.Text;
see_if_the_name_in_debts_names.Open;
if see_if_the_name_in_debts_names.RecordCount=0 then
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['name']:=edit9.Text;
ibtable1.Post;
end;
end
end;
end;
end
else
begin
see_if_the_name_in_debts_names.Close;
see_if_the_name_in_debts_names.Prepare;
see_if_the_name_in_debts_names.Params[0].Value:=edit9.Text;
see_if_the_name_in_debts_names.Open;
if see_if_the_name_in_debts_names.RecordCount=0 then
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['name']:=edit9.Text;
ibtable1.Post;
end;
end;
end
end;
end;
end;  // if he has name
end;//if the different less than 0
form1.IBTransaction1.Commit;
if money=0 then
begin
application.MessageBox(' „  ⁄„·Ì… «· ⁄œÌ·',' ‰»ÌÂ',mb_iconwarning+mb_ok);
label12.Caption:=edit9.Text;
edit11.Text:='0';
end
else
begin
application.MessageBox('ÌÊÃœ „»·€ ÌÃ» ≈—Ã«⁄Â ··“»Ê‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
label12.Caption:=edit9.Text;
edit11.Text:=floattostr(money);
end;

edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit7.Text:='';
edit8.Text:='';
edit9.Text:='';
edit10.Text:='';
end;

procedure TForm55.Edit4Change(Sender: TObject);
begin
if edit4.Text<>'' then
begin
edit6.Text:=floattostr(strtofloat(edit4.Text)* dbgrid2.Fields[2].AsInteger);
end
else
begin
edit6.Text:='';
end;
end;

procedure TForm55.Edit6Change(Sender: TObject);
begin
if edit6.Text<>'' then
begin
edit7.Text:=floattostr(strtofloat(edit6.Text)-dbgrid2.Fields[4].asfloat);
end
else
begin
edit7.Text:='';
end;
end;

procedure TForm55.Edit8Change(Sender: TObject);
begin
if (edit8.Text<>'') and (edit7.Text<>'')then
begin
if strtofloat(edit7.Text)>0 then
edit10.Text:=floattostr((strtofloat(edit8.text)-strtofloat(edit7.Text))*-1)
else
begin
edit8.Text:='0';
edit10.Text:='0';
end;
end
else
begin
edit10.Text:='';
end;
end;

procedure TForm55.Edit7Change(Sender: TObject);
begin
if (edit7.Text<>'') then
begin
if (strtofloat(edit7.Text)<0)  then
begin
edit8.Text:='0';
edit10.Text:='0';
end
else
begin
edit8.Text:='';
edit10.Text:='';
end;
end
else
begin
edit8.Text:='';
edit10.Text:='';
end;
end;

end.
