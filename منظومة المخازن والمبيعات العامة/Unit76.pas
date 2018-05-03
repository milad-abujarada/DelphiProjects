unit Unit76;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, IBCustomDataSet, IBUpdateSQL, IBTable,
  IBQuery;

type
  TForm76 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    edit_in_storge_history: TIBQuery;
    IBTable1: TIBTable;
    IBUpdateSQL1: TIBUpdateSQL;
    DataSource3: TDataSource;
    edit_in_provider_money: TIBQuery;
    IBUpdateSQL2: TIBUpdateSQL;
    DataSource4: TDataSource;
    max_no_storge: TIBQuery;
    max_no_storgeMAX: TIntegerField;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    IBTable2: TIBTable;
    sum_storge: TIBQuery;
    max_no_temp_storge: TIBQuery;
    DataSource7: TDataSource;
    max_no_temp_storgeMAX: TIntegerField;
    edit_in_storge_historyNAME: TIBStringField;
    edit_in_storge_historyKIND: TIBStringField;
    edit_in_storge_historyNUM: TIntegerField;
    edit_in_storge_historyINPUT_DATE: TDateField;
    edit_in_storge_historyBUY_PRICE: TIBBCDField;
    edit_in_storge_historyQUANTITY: TIntegerField;
    edit_in_storge_historyCHANGE_PRICE: TIBBCDField;
    edit_in_storge_historyTOTAL_DOLLAR_PRICE: TIBBCDField;
    edit_in_storge_historyDOLLAR_PRICE: TIBBCDField;
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
    Edit5: TEdit;
    DataSource8: TDataSource;
    check_provider_status: TIBQuery;
    edit_in_provider_moneyPROVIDER_NAME: TIBStringField;
    edit_in_provider_moneyTOTAL_BILL: TIBBCDField;
    edit_in_provider_moneyPAID: TIBBCDField;
    edit_in_provider_moneyREMAINING: TIBBCDField;
    edit_in_provider_moneyNUM_IN_HISTORY_STORGE: TIntegerField;
    edit_in_provider_moneyINPUT_DATE: TDateField;
    edit_in_provider_moneyDOLLAR: TIBBCDField;
    edit_in_provider_moneyCHANGE: TIBBCDField;
    edit_in_provider_moneyREMAINING_DOLLAR: TIBBCDField;
    edit_in_provider_moneyTOTAL_DOLLAR: TIBBCDField;
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
    sum_storgeSUM: TLargeintField;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    DataSource11: TDataSource;
    dicount_from_moved_storge: TIBQuery;
    discount_from_storge: TIBQuery;
    IBQuery3: TIBQuery;
    IBUpdateSQL3: TIBUpdateSQL;
    IBUpdateSQL4: TIBUpdateSQL;
    IBUpdateSQL5: TIBUpdateSQL;
    dicount_from_moved_storgeNAME: TIBStringField;
    dicount_from_moved_storgeKIND: TIBStringField;
    dicount_from_moved_storgeNUM: TIntegerField;
    dicount_from_moved_storgeINPUT_DATE: TDateField;
    dicount_from_moved_storgeMOVED_DATE: TDateField;
    dicount_from_moved_storgeBUY_PRICE: TIBBCDField;
    dicount_from_moved_storgeQUANTITY: TIntegerField;
    dicount_from_moved_storgeNUM_IN_STORGE_HISTORY: TIntegerField;
    dicount_from_moved_storgePLACE: TIBStringField;
    dicount_from_moved_storgeMOVED_NUM: TIntegerField;
    DataSource12: TDataSource;
    DataSource13: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    procedure Button2Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    num:integer;
  end;

var
  Form76: TForm76;

implementation

uses Unit73,unit1;

{$R *.dfm}

procedure TForm76.Button2Click(Sender: TObject);
begin
form76.Close;
form73.show;
end;

procedure TForm76.Edit4Change(Sender: TObject);
begin
if (edit4.Text='')or (strtoint(edit3.Text)=strtoint(edit4.Text))then
button1.Enabled:=false
else
button1.Enabled:=true;
if (edit4.Text<>'')and(strtoint(edit4.Text)>strtoint(edit3.Text))then
begin
radiobutton1.Enabled:=true;
radiobutton2.Enabled:=true;
end
else
begin
radiobutton1.Checked:=false;
radiobutton2.Enabled:=false;
radiobutton1.Enabled:=false;
radiobutton2.Enabled:=false;
end;
end;

procedure TForm76.FormShow(Sender: TObject);
begin
button1.Enabled:=false;
edit4.Text:='';
end;

procedure TForm76.Button1Click(Sender: TObject);
var
sa,sb,total,t,rem:integer;
begin
if (radiobutton1.Checked=false)and(radiobutton2.Checked=false)then
begin

exit;
end;
edit5.Text:=inttostr(num);

if strtoint(edit3.Text)<strtoint(edit4.Text)then
begin//1         «–« ﬂ«‰ “Ì«œÂ Ê «·«Ã«»Â ‰⁄„
edit_in_storge_history.Close;
edit_in_storge_history.Prepare;
edit_in_storge_history.Params[0].Value:=num;
edit_in_storge_history.Params[1].Value:=edit1.Text;
edit_in_storge_history.Params[2].Value:=edit2.Text;
edit_in_storge_history.Open;
edit_in_storge_history.Edit;
edit_in_storge_history['quantity']:=edit_in_storge_history['quantity']+(strtoint(edit4.Text)-strtoint(edit3.Text));
edit_in_provider_money.Close;
edit_in_provider_money.Prepare;
edit_in_provider_money.Params[0].Value:=num;
edit_in_provider_money.Open;
if edit_in_provider_money.RecordCount<>0 then
begin
edit_in_provider_money.Edit;
check_provider_status.Close;
check_provider_status.Prepare;
check_provider_status.Params[0].Value:=edit_in_provider_money['provider_name'];
check_provider_status.Open;
if check_provider_status['pay_type']='»«·œÌ‰«—'then
begin
edit_in_provider_money['total_bill']:=edit_in_provider_money['total_bill']+((strtoint(edit4.Text)-strtoint(edit3.Text))*edit_in_storge_history['buy_price']);
edit_in_provider_money['remaining']:=edit_in_provider_money['remaining']+((strtoint(edit4.Text)-strtoint(edit3.Text))*edit_in_storge_history['buy_price']);
edit_in_provider_money.Post;
end;
end;
if RadioButton1.Checked=true then // “Ì«œÂ ›Ï „Œ“‰  ⁄«„
begin
//
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Filter:='name='+quotedstr(edit2.Text)  + ' and kind='+quotedstr(edit1.Text) + ' and num_in_history_storge='+edit5.Text + ' and sold='+edit3.Text;
datasource6.DataSet.Filtered:=true;
ibtable2.Open;
if ibtable2.RecordCount<>0 then
begin
ibtable2.Edit;
ibtable2['sold']:=ibtable2['sold']+(strtoint(edit4.Text)-strtoint(edit3.Text));
ibtable2.Post;
end;
//
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Filter:='name='+quotedstr(edit2.Text)  + ' and kind='+quotedstr(edit1.Text) + ' and num_in_history_storge='+edit5.Text + ' and sold='+edit3.Text;
datasource2.DataSet.Filtered:=true;
ibtable1.Open;
if ibtable1.RecordCount<>0 then
begin // ⁄œÌ· Ï «·„Œ“‰ ·ÊÃÊœÂ
ibtable1.Edit;
ibtable1['quantity']:=ibtable1['quantity']+(strtoint(edit4.Text)-strtoint(edit3.Text));
ibtable1.Post;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end // ⁄œÌ· Ï «·„Œ“‰ ·ÊÃÊœÂ
else
begin// Œ“Ì‰ «·«÷«›Â ·⁄œ„ ÊÃÊœÂ
ibtable1.Insert;
ibtable1['name']:=edit2.Text;
ibtable1['kind']:=edit1.Text;
ibtable1['num_in_history_storge']:=num;
ibtable1['quantity']:=(strtoint(edit4.Text)-strtoint(edit3.Text));
ibtable1['input_date']:=edit_in_storge_history['input_date'];
ibtable1['buy_price']:=edit_in_storge_history['buy_price'];
ibtable1['dollar_price']:=edit_in_storge_history['dollar_price'];
ibtable1['total_dollar_price']:=edit_in_storge_history['total_dollar_price'];
ibtable1['change_price']:=edit_in_storge_history['change_price'];
ibtable1['sold']:=edit4.Text;
max_no_storge.Close;
max_no_storge.Open;
if max_no_storge['max']=null then
ibtable1['num']:=1
else
ibtable1['num']:=max_no_storge['max']+1;
ibtable1.Post;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end;// Œ“Ì‰ «·«÷«›Â ·⁄œ„ ÊÃÊœÂ
end // “Ì«œÂ ›Ï „Œ“‰  ⁄«„
else
begin //“Ì«œÂ ›Ï «·„Œ“‰ «·„ƒﬁ 
//
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Filter:='name='+quotedstr(edit2.Text)  + ' and kind='+quotedstr(edit1.Text) + ' and num_in_history_storge='+edit5.Text + ' and sold='+edit3.Text;
datasource2.DataSet.Filtered:=true;
ibtable1.Open;
if ibtable1.RecordCount<>0 then
begin
ibtable1.Edit;
ibtable1['sold']:=ibtable1['sold']+(strtoint(edit4.Text)-strtoint(edit3.Text));
ibtable1.Post;
end;
//
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Filter:='name='+quotedstr(edit2.Text)  + ' and kind='+quotedstr(edit1.Text) + ' and num_in_history_storge='+edit5.Text + ' and sold='+edit3.Text;
datasource6.DataSet.Filtered:=true;
ibtable2.Open;
if ibtable2.RecordCount<>0 then
begin // ⁄œÌ· Ï «·„Œ“‰ ·ÊÃÊœÂ
ibtable2.Edit;
ibtable2['quantity']:=ibtable1['quantity']+(strtoint(edit4.Text)-strtoint(edit3.Text));
ibtable2.Post;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end // ⁄œÌ· Ï «·„Œ“‰ ·ÊÃÊœÂ
else
begin// Œ“Ì‰ «·«÷«›Â ·⁄œ„ ÊÃÊœÂ
ibtable2.Insert;
ibtable2['name']:=edit2.Text;
ibtable2['kind']:=edit1.Text;
ibtable2['num_in_history_storge']:=num;
ibtable2['quantity']:=(strtoint(edit4.Text)-strtoint(edit3.Text));
ibtable2['input_date']:=edit_in_storge_history['input_date'];
ibtable2['buy_price']:=edit_in_storge_history['buy_price'];
ibtable2['dollar_price']:=edit_in_storge_history['dollar_price'];
ibtable2['total_dollar_price']:=edit_in_storge_history['total_dollar_price'];
ibtable2['change_price']:=edit_in_storge_history['change_price'];
ibtable2['sold']:=edit4.Text;
max_no_temp_storge.Close;
max_no_temp_storge.Open;
if max_no_temp_storge['max']=null then
ibtable2['num']:=1
else
ibtable2['num']:=max_no_temp_storge['max']+1;
ibtable2.Post;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end;// Œ“Ì‰ «·«÷«›Â ·⁄œ„ ÊÃÊœÂ

end;//“Ì«œÂ ›Ï «·„Œ“‰ «·„ƒﬁ 
edit_in_storge_history.Post;
end//1         «–« ﬂ«‰ “Ì«œÂ Ê «·«Ã«»Â ‰⁄„
else
begin //≈–« ﬂ«‰ “Ì«œÂ Ê «·«Ã«»Â ·« 2
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Filter:='name='+quotedstr(edit2.Text)  + ' and kind='+quotedstr(edit1.Text) + ' and num_in_history_storge='+edit5.Text + ' and sold='+edit3.Text;
datasource2.DataSet.Filtered:=true;
ibtable1.Open;
if ibtable1.RecordCount=null then
sa:=0
else
sa:=ibtable1['quantity'];
///
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Filter:='name='+quotedstr(edit2.Text)  + ' and kind='+quotedstr(edit1.Text) + ' and num_in_history_storge='+edit5.Text + ' and sold='+edit3.Text;
datasource6.DataSet.Filtered:=true;
ibtable1.Open;
if ibtable2.RecordCount=null then
sb:=0
else
sb:=ibtable2['quantity'];
if (sa+sb)>=(strtoint(edit3.Text)-strtoint(edit4.Text))then
begin//«–« ﬂ«‰ „Ã„Ê⁄ «·„Œ“‰œ«∆„ Ê «·„ƒﬁ  «ﬂ»— „‰ «·„‰ﬁ’ 2.1
total:=(strtoint(edit3.Text)-strtoint(edit4.Text));
if radiobutton1.Checked=true then
begin//discount from storge first
while (not(ibtable1.Eof)and(total>0))do
begin//*
if ibtable1['quantity']>total then
begin
ibtable1.Edit;
ibtable1['quantity']:=ibtable1['quantity']-total;
ibtable1['sold']:=edit4.Text;
ibtable1.Post;
total:=0;
end
else
begin
if ibtable1['quantity']=total then
begin
ibtable1.Delete;
if ibtable2.RecordCount<>0 then
begin
ibtable2.Edit;
ibtable2['sold']:=edit4.Text;
ibtable2.Post;
end;
total:=0;
end
else
begin
total:=total-ibtable1['quantity'];
ibtable1.Delete;
ibtable2.Edit;
ibtable2['quantity']:=ibtable2['quantity']-total;
ibtable2['sold']:=edit4.Text;
ibtable2.Post;
total:=0;
end;
end;
end;//*
end//discount from storge first
else
begin//discount_from_temp storge_first
while (not(ibtable2.Eof)and(total>0))do
begin//**
if ibtable2['quantity']>total then
begin
ibtable2.Edit;
ibtable2['quantity']:=ibtable2['quantity']-total;
ibtable2['sold']:=edit4.Text;
ibtable2.Post;
total:=0;
end
else
begin
if ibtable2['quantity']=total then
begin
ibtable2.Delete;
if ibtable1.RecordCount<>0 then
begin
ibtable1.Edit;
ibtable1['sold']:=edit4.Text;
ibtable1.Post;
end;
total:=0;
end
else
begin
total:=total-ibtable2['quantity'];
ibtable2.Delete;
ibtable1.Edit;
ibtable1['quantity']:=ibtable1['quantity']-total;
ibtable1['sold']:=edit4.Text;
ibtable1.Post;
total:=0;
end;
end;
end;//**
end;//discount_from_temp storge_first
edit_in_storge_history.Close;
edit_in_storge_history.Prepare;
edit_in_storge_history.Params[0].Value:=num;
edit_in_storge_history.Params[1].Value:=edit1.Text;
edit_in_storge_history.Params[2].Value:=edit2.Text;
edit_in_storge_history.Open;
edit_in_storge_history.Edit;
edit_in_storge_history['quantity']:=edit_in_storge_history['quantity']-(strtoint(edit3.Text)-strtoint(edit4.Text));
edit_in_storge_history.Post;
edit_in_provider_money.Close;
edit_in_provider_money.Prepare;
edit_in_provider_money.Params[0].Value:=num;
edit_in_provider_money.Open;
if edit_in_provider_money.RecordCount<>0 then
begin
edit_in_provider_money.Edit;
check_provider_status.Close;
check_provider_status.Prepare;
check_provider_status.Params[0].Value:=edit_in_provider_money['provider_name'];
check_provider_status.Open;
if check_provider_status['pay_type']='»«·œÌ‰«—'then
begin
edit_in_provider_money['total_bill']:=edit_in_provider_money['total_bill']-((strtoint(edit3.Text)-strtoint(edit4.Text))*edit_in_storge_history['buy_price']);
if edit_in_provider_money['remaining']=((strtoint(edit3.Text)-strtoint(edit4.Text))*edit_in_storge_history['buy_price'])then
begin
edit_in_provider_money.Edit;
edit_in_provider_money['remaining']:=0;
edit_in_provider_money.Post;
application.MessageBox(' „ «· ⁄œÌ· Ê Ì—ÃÌ «· «ﬂœ „‰ «·„»«·€ «·„⁄ÿÏ ··„Ê—œ ·«‰Â „‰ «·„„ﬂ‰ «‰ ÌÊÃœ „»·€ ·ﬂ „ »ﬁÌ ·œÌ «·„Ê—œ »⁄œ «· ⁄œÌ·',' ‰»ÌÂ',mb_iconwarning+mb_ok);
end
else
begin
if edit_in_provider_money['remaining']>((strtoint(edit3.Text)-strtoint(edit4.Text))*edit_in_storge_history['buy_price'])then
begin
edit_in_provider_money.Edit;
edit_in_provider_money['remaining']:=edit_in_provider_money['remaining']-((strtoint(edit3.Text)-strtoint(edit4.Text))*edit_in_storge_history['buy_price']);
edit_in_provider_money.Post;
application.MessageBox(' „ «· ⁄œÌ· Ê Ì—ÃÌ «· «ﬂœ „‰ «·„»«·€ «·„⁄ÿÏ ··„Ê—œ ·«‰Â „‰ «·„„ﬂ‰ «‰ ÌÊÃœ „»·€ ·ﬂ „ »ﬁÌ ·œÌ «·„Ê—œ »⁄œ «· ⁄œÌ·',' ‰»ÌÂ',mb_iconwarning+mb_ok);
end
else
begin
edit_in_provider_money.Edit;
t:=((strtoint(edit3.Text)-strtoint(edit4.Text))*edit_in_storge_history['buy_price']);
t:=t-edit_in_provider_money['remaining'];
edit_in_provider_money['paid']:=edit_in_provider_money['paid']-t;
edit_in_provider_money['remaining']:=0;
edit_in_provider_money.Post;
application.MessageBox(' „ «· ⁄œÌ· Ê Ì—ÃÌ «· «ﬂœ „‰ «·„»«·€ «·„⁄ÿÏ ··„Ê—œ ·«‰Â „‰ «·„„ﬂ‰ «‰ ÌÊÃœ „»·€ ·ﬂ „ »ﬁÌ ·œÌ «·„Ê—œ »⁄œ «· ⁄œÌ·',' ‰»ÌÂ',mb_iconwarning+mb_ok);

end;
end;
end;
end;

edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end //«–« ﬂ«‰ „Ã„Ê⁄ «·„Œ“‰œ«∆„ Ê «·„ƒﬁ  «ﬂ»— „‰ «·„‰ﬁ’ 2.1
else
begin//«–« ﬂ«‰ «·„‰ﬁ’ «ﬂ»— „‰ „Ã„Ê⁄ «·ÊÃÊœ ›Ï «·œ«∆„ Ê «·„ƒﬁ 
rem:=(strtoint(edit3.Text)-strtoint(edit4.Text))-(sa+sb);
sum_storge.Close;
sum_storge.Prepare;
sum_storge.Params[1].Value:=edit1.Text;
sum_storge.Params[2].Value:=edit2.Text;
sum_storge.Open;
if sum_storge['sum']<rem then
begin //show the messege
application.MessageBox('·«Ì„ﬂ‰ ≈Ã—«¡ «· ⁄œÌ· ·ÊÃÊœ Œÿ√ ›Ï «·„»Ì⁄«  «Ê «· ÕÊÌ·«  «·—Ã«¡ «· √ﬂœ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end//show the messege
else
begin //un showing the messege
if ibtable1.RecordCount<>0 then
ibtable1.Delete;
if ibtable2.RecordCount<>0 then
ibtable2.Delete;
discount_from_storge.Close;
discount_from_storge.Prepare;
discount_from_storge.Params[0].Value:=edit1.Text;
discount_from_storge.Params[1].Value:=edit2.Text;
discount_from_storge.Params[2].Value:=num;
discount_from_storge.Open;
dicount_from_moved_storge.Close;
dicount_from_moved_storge.Prepare;
dicount_from_moved_storge.Params[0].Value:=edit1.Text;
dicount_from_moved_storge.Params[1].Value:=edit2.Text;
dicount_from_moved_storge.Params[2].Value:=num;
dicount_from_moved_storge.Open;
while (not(dicount_from_moved_storge.Eof)and(rem<>0))do
begin//discount from moved storge

end;//discount from moved storge

end; //un showing the messege
end;//«–« ﬂ«‰ «·„‰ﬁ’ «ﬂ»— „‰ „Ã„Ê⁄ «·ÊÃÊœ ›Ï «·œ«∆„ Ê «·„ƒﬁ 
end; //≈–« ﬂ«‰ “Ì«œÂ Ê «·«Ã«»Â ·« 2
form1.IBTransaction1.Commit;
end;

end.
