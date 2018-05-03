unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, StdCtrls,
  ComCtrls, ExtCtrls, IBUpdateSQL, IBTable;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    IBQuery1NAME: TIBStringField;
    IBQuery1KIND: TIBStringField;
    IBQuery1QUANTITY: TIntegerField;
    IBQuery1SALE_NUM: TIntegerField;
    IBQuery1SALE_PRICE: TIBBCDField;
    IBQuery1NUM: TIntegerField;
    IBQuery1TOTAL_PIECE_PRICE: TIBBCDField;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit7: TEdit;
    Button3: TButton;
    IBQuery1NUM1: TIntegerField;
    IBQuery1PAID_TYPE: TIBStringField;
    IBQuery1BILL_NUM: TIntegerField;
    IBQuery1PAID_VALUE: TIBBCDField;
    IBQuery1TOTAL_BILL_PRICE: TIBBCDField;
    IBQuery1SALE_NUM1: TIntegerField;
    IBQuery1INPUT_DATE: TDateField;
    IBQuery1CUSTOMER_NAME: TIBStringField;
    IBQuery1REMAINING_VALUE: TIBBCDField;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    IBQuery2SUM: TIBBCDField;
    bring_data_from_profitable_to_edit: TIBQuery;
    DataSource3: TDataSource;
    IBUpdateSQL1: TIBUpdateSQL;
    select_data_from_storge_to_add_the_retrive: TIBQuery;
    IBUpdateSQL2: TIBUpdateSQL;
    DataSource4: TDataSource;
    select_data_from_storge_to_add_the_retriveNAME: TIBStringField;
    select_data_from_storge_to_add_the_retriveKIND: TIBStringField;
    select_data_from_storge_to_add_the_retriveNUM: TIntegerField;
    select_data_from_storge_to_add_the_retriveINPUT_DATE: TDateField;
    select_data_from_storge_to_add_the_retriveBUY_PRICE: TIBBCDField;
    select_data_from_storge_to_add_the_retriveQUANTITY: TIntegerField;
    select_data_from_storge_to_add_the_retriveSOLD: TIntegerField;
    DataSource5: TDataSource;
    IBQuery5: TIBQuery;
    IBQuery5MAX: TIntegerField;
    DateTimePicker2: TDateTimePicker;
    DataSource6: TDataSource;
    data_from_paid_to_the_bill: TIBQuery;
    IBUpdateSQL3: TIBUpdateSQL;
    data_from_paid_to_the_billNUM: TIntegerField;
    data_from_paid_to_the_billPAID_TYPE: TIBStringField;
    data_from_paid_to_the_billBILL_NUM: TIntegerField;
    data_from_paid_to_the_billPAID_VALUE: TIBBCDField;
    data_from_paid_to_the_billTOTAL_BILL_PRICE: TIBBCDField;
    data_from_paid_to_the_billSALE_NUM: TIntegerField;
    data_from_paid_to_the_billINPUT_DATE: TDateField;
    data_from_paid_to_the_billCUSTOMER_NAME: TIBStringField;
    data_from_paid_to_the_billREMAINING_VALUE: TIBBCDField;
    see_if_there_are_any_more_items_in_the_same_bill_from_profitabl: TIBQuery;
    see_if_there_are_any_debts_collected_for_the_same_bill: TIBQuery;
    IBUpdateSQL5: TIBUpdateSQL;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    see_if_there_are_any_debts_collected_for_the_same_billSALE_NUM: TIntegerField;
    see_if_there_are_any_debts_collected_for_the_same_billPAID_VALUE: TIBBCDField;
    see_if_there_are_any_debts_collected_for_the_same_billNUM: TIntegerField;
    Edit8: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    see_if_there_are_any_more_items_in_the_same_bill_from_profitablSALE_NUM: TIntegerField;
    see_if_there_are_any_more_items_in_the_same_bill_from_profitablBUY_PRICE: TIBBCDField;
    see_if_there_are_any_more_items_in_the_same_bill_from_profitablSALE_PRICE: TIBBCDField;
    see_if_there_are_any_more_items_in_the_same_bill_from_profitablGAIN: TIBBCDField;
    see_if_there_are_any_more_items_in_the_same_bill_from_profitablNUM: TIntegerField;
    see_if_there_are_any_more_items_in_the_same_bill_from_profitablKIND: TIBStringField;
    see_if_there_are_any_more_items_in_the_same_bill_from_profitablNAME: TIBStringField;
    see_if_there_are_any_more_items_in_the_same_bill_from_profitablQUANTITY: TIntegerField;
    DataSource9: TDataSource;
    see_if_there_are_items_in_the_same_bill_in_sales_table: TIBQuery;
    IBUpdateSQL4: TIBUpdateSQL;
    see_if_there_are_items_in_the_same_bill_in_sales_tableNAME: TIBStringField;
    see_if_there_are_items_in_the_same_bill_in_sales_tableKIND: TIBStringField;
    see_if_there_are_items_in_the_same_bill_in_sales_tableQUANTITY: TIntegerField;
    see_if_there_are_items_in_the_same_bill_in_sales_tableSALE_NUM: TIntegerField;
    see_if_there_are_items_in_the_same_bill_in_sales_tableSALE_PRICE: TIBBCDField;
    see_if_there_are_items_in_the_same_bill_in_sales_tableNUM: TIntegerField;
    see_if_there_are_items_in_the_same_bill_in_sales_tableTOTAL_PIECE_PRICE: TIBBCDField;
    see_if_he_has_any_other_debts: TIBQuery;
    DataSource10: TDataSource;
    IBUpdateSQL6: TIBUpdateSQL;
    see_if_he_has_any_other_debtsSALE_NUM: TIntegerField;
    see_if_he_has_any_other_debtsDEBT_VALUE: TIBBCDField;
    see_if_he_has_any_other_debtsNUM: TIntegerField;
    see_if_he_has_any_other_debtsNUM1: TIntegerField;
    see_if_he_has_any_other_debtsPAID_TYPE: TIBStringField;
    see_if_he_has_any_other_debtsBILL_NUM: TIntegerField;
    see_if_he_has_any_other_debtsPAID_VALUE: TIBBCDField;
    see_if_he_has_any_other_debtsTOTAL_BILL_PRICE: TIBBCDField;
    see_if_he_has_any_other_debtsSALE_NUM1: TIntegerField;
    see_if_he_has_any_other_debtsINPUT_DATE: TDateField;
    see_if_he_has_any_other_debtsCUSTOMER_NAME: TIBStringField;
    see_if_he_has_any_other_debtsREMAINING_VALUE: TIBBCDField;
    save_in_collecting_debts: TIBTable;
    DataSource11: TDataSource;
    save_in_collecting_debtsSALE_NUM: TIntegerField;
    save_in_collecting_debtsPAID_VALUE: TIBBCDField;
    save_in_collecting_debtsNUM: TIntegerField;
    IBQuery11: TIBQuery;
    DataSource12: TDataSource;
    IBQuery11MAX: TIntegerField;
    delete_from_sales_when_the_mount_is_the_same_but_still_items: TIBQuery;
    IBUpdateSQL7: TIBUpdateSQL;
    DataSource13: TDataSource;
    delete_from_sales_when_the_mount_is_the_same_but_still_itemsNAME: TIBStringField;
    delete_from_sales_when_the_mount_is_the_same_but_still_itemsKIND: TIBStringField;
    delete_from_sales_when_the_mount_is_the_same_but_still_itemsQUANTITY: TIntegerField;
    delete_from_sales_when_the_mount_is_the_same_but_still_itemsSALE_NUM: TIntegerField;
    delete_from_sales_when_the_mount_is_the_same_but_still_itemsSALE_PRICE: TIBBCDField;
    delete_from_sales_when_the_mount_is_the_same_but_still_itemsNUM: TIntegerField;
    delete_from_sales_when_the_mount_is_the_same_but_still_itemsTOTAL_PIECE_PRICE: TIBBCDField;
    edit_paid_value_and_remaining_value_after_delete_and_still_item: TIBQuery;
    IBUpdateSQL8: TIBUpdateSQL;
    DataSource14: TDataSource;
    edit_paid_value_and_remaining_value_after_delete_and_still_itemNUM: TIntegerField;
    edit_paid_value_and_remaining_value_after_delete_and_still_itemPAID_TYPE: TIBStringField;
    edit_paid_value_and_remaining_value_after_delete_and_still_itemBILL_NUM: TIntegerField;
    edit_paid_value_and_remaining_value_after_delete_and_still_itemPAID_VALUE: TIBBCDField;
    edit_paid_value_and_remaining_value_after_delete_and_still_itemTOTAL_BILL_PRICE: TIBBCDField;
    edit_paid_value_and_remaining_value_after_delete_and_still_itemSALE_NUM: TIntegerField;
    edit_paid_value_and_remaining_value_after_delete_and_still_itemINPUT_DATE: TDateField;
    edit_paid_value_and_remaining_value_after_delete_and_still_itemCUSTOMER_NAME: TIBStringField;
    edit_paid_value_and_remaining_value_after_delete_and_still_itemREMAINING_VALUE: TIBBCDField;
    edit_in_debts_if_paid_less_than_retrive_money: TIBQuery;
    IBUpdateSQL9: TIBUpdateSQL;
    DataSource15: TDataSource;
    edit_in_debts_if_paid_less_than_retrive_moneySALE_NUM: TIntegerField;
    edit_in_debts_if_paid_less_than_retrive_moneyDEBT_VALUE: TIBBCDField;
    edit_in_debts_if_paid_less_than_retrive_moneyNUM: TIntegerField;
    edit_in_collecting_debt_if_retrive_money_less_than_paid: TIBQuery;
    IBUpdateSQL10: TIBUpdateSQL;
    DataSource16: TDataSource;
    edit_in_collecting_debt_if_retrive_money_less_than_paidSALE_NUM: TIntegerField;
    edit_in_collecting_debt_if_retrive_money_less_than_paidPAID_VALUE: TIBBCDField;
    edit_in_collecting_debt_if_retrive_money_less_than_paidNUM: TIntegerField;
    max_num_in_debt: TIBQuery;
    DataSource17: TDataSource;
    delete_from_debts_if_nothing_left_in_bill: TIBQuery;
    IBUpdateSQL11: TIBUpdateSQL;
    DataSource18: TDataSource;
    delete_from_debts_if_nothing_left_in_billSALE_NUM: TIntegerField;
    delete_from_debts_if_nothing_left_in_billDEBT_VALUE: TIBBCDField;
    delete_from_debts_if_nothing_left_in_billNUM: TIntegerField;
    DataSource19: TDataSource;
    edit_in_collecting_if_paid_less_than_money: TIBQuery;
    IBUpdateSQL12: TIBUpdateSQL;
    edit_in_collecting_if_paid_less_than_moneySALE_NUM: TIntegerField;
    edit_in_collecting_if_paid_less_than_moneyPAID_VALUE: TIBBCDField;
    edit_in_collecting_if_paid_less_than_moneyNUM: TIntegerField;
    DataSource20: TDataSource;
    edit_in_paid_when_less_than_retrive: TIBQuery;
    IBUpdateSQL13: TIBUpdateSQL;
    edit_in_paid_when_less_than_retriveNUM: TIntegerField;
    edit_in_paid_when_less_than_retrivePAID_TYPE: TIBStringField;
    edit_in_paid_when_less_than_retriveBILL_NUM: TIntegerField;
    edit_in_paid_when_less_than_retrivePAID_VALUE: TIBBCDField;
    edit_in_paid_when_less_than_retriveTOTAL_BILL_PRICE: TIBBCDField;
    edit_in_paid_when_less_than_retriveSALE_NUM: TIntegerField;
    edit_in_paid_when_less_than_retriveINPUT_DATE: TDateField;
    edit_in_paid_when_less_than_retriveCUSTOMER_NAME: TIBStringField;
    edit_in_paid_when_less_than_retriveREMAINING_VALUE: TIBBCDField;
    sum_bill: TIBQuery;
    DataSource21: TDataSource;
    sum_billSUM: TIBBCDField;
    DataSource22: TDataSource;
    bring_data_from_profitable_to_editSALE_NUM: TIntegerField;
    bring_data_from_profitable_to_editBUY_PRICE: TIBBCDField;
    bring_data_from_profitable_to_editSALE_PRICE: TIBBCDField;
    bring_data_from_profitable_to_editGAIN: TIBBCDField;
    bring_data_from_profitable_to_editNUM: TIntegerField;
    bring_data_from_profitable_to_editKIND: TIBStringField;
    bring_data_from_profitable_to_editNAME: TIBStringField;
    bring_data_from_profitable_to_editQUANTITY: TIntegerField;
    bring_data_from_profitable_to_editNUM_IN_STORGE_HISTORY: TIntegerField;
    IBquery3: TIBTable;
    IBquery3TEMP: TIntegerField;
    IBquery3QUAN: TIntegerField;
    select_data_from_storge_to_add_the_retriveNUM_IN_HISTORY_STORGE: TIntegerField;
    input_in_storge: TIBTable;
    DataSource23: TDataSource;
    query_loop: TIBQuery;
    DataSource24: TDataSource;
    input_in_storgeNAME: TIBStringField;
    input_in_storgeKIND: TIBStringField;
    input_in_storgeNUM: TIntegerField;
    input_in_storgeINPUT_DATE: TDateField;
    input_in_storgeBUY_PRICE: TIBBCDField;
    input_in_storgeQUANTITY: TIntegerField;
    input_in_storgeNUM_IN_HISTORY_STORGE: TIntegerField;
    input_in_storgeSOLD: TIntegerField;
    query_loopSALE_NUM: TIntegerField;
    query_loopBUY_PRICE: TIBBCDField;
    query_loopSALE_PRICE: TIBBCDField;
    query_loopGAIN: TIBBCDField;
    query_loopNUM: TIntegerField;
    query_loopKIND: TIBStringField;
    query_loopNAME: TIBStringField;
    query_loopQUANTITY: TIntegerField;
    query_loopNUM_IN_STORGE_HISTORY: TIntegerField;
    see_if_sum_collecting_more_than_debt: TIBQuery;
    DataSource25: TDataSource;
    see_if_sum_collecting_more_than_debtSUM: TIBBCDField;
    remaing_value: TIBQuery;
    DataSource26: TDataSource;
    remaing_valueREMAINING_VALUE: TIBBCDField;
    DataSource27: TDataSource;
    IBTable1: TIBTable;
    Edit9: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    DataSource28: TDataSource;
    bring_dollar_data: TIBQuery;
    bring_dollar_dataNAME: TIBStringField;
    bring_dollar_dataKIND: TIBStringField;
    bring_dollar_dataNUM: TIntegerField;
    bring_dollar_dataINPUT_DATE: TDateField;
    bring_dollar_dataBUY_PRICE: TIBBCDField;
    bring_dollar_dataQUANTITY: TIntegerField;
    bring_dollar_dataCHANGE_PRICE: TIBBCDField;
    bring_dollar_dataTOTAL_DOLLAR_PRICE: TIBBCDField;
    bring_dollar_dataDOLLAR_PRICE: TIBBCDField;
    input_in_storgeDOLLAR_PRICE: TIBBCDField;
    input_in_storgeTOTAL_DOLLAR_PRICE: TIBBCDField;
    input_in_storgeCHANGE_PRICE: TIBBCDField;
    IBTable1NAME: TIBStringField;
    IBTable1AMOUNT: TIBBCDField;
    IBTable1INPUT_DATE: TDateField;
    sum_all_paied_and_total_bills: TIBQuery;
    sum_all_paied_and_total_billsSUM: TIBBCDField;
    sum_all_paied_and_total_billsSUM1: TIBBCDField;
    DataSource29: TDataSource;
    DataSource30: TDataSource;
    sum_collecting: TIBQuery;
    sum_collectingSUM: TIBBCDField;
    see_if_he_in_debts_names: TIBQuery;
    DataSource31: TDataSource;
    IBUpdateSQL14: TIBUpdateSQL;
    IBUpdateSQL15: TIBUpdateSQL;
    edit_in_collecting: TIBQuery;
    edit_in_collectingNAME: TIBStringField;
    edit_in_collectingAMOUNT: TIBBCDField;
    edit_in_collectingINPUT_DATE: TDateField;
    DataSource32: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    s_num,re_item:integer;
    cus_name:string;
    buy_price:real;
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.Button2Click(Sender: TObject);
begin
form5.Close;
form1.Show;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery1.Open;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
if ibquery1.RecordCount<> 0 then
begin
cus_name:=DBGrid1.Fields[6].Asstring;
edit8.Text:=DBGrid1.Fields[6].Asstring;
if cus_name='·« ÌÊÃœ'then
begin
cus_name:='';
edit8.Text:='';
end;
edit1.Text:=DBGrid1.Fields[1].Asstring;
edit2.Text:=DBGrid1.Fields[2].Asstring;
edit3.Text:=DBGrid1.Fields[3].Asstring;
edit5.Text:=DBGrid1.Fields[4].Asstring;
edit6.Text:=DBGrid1.Fields[5].Asstring;
s_num:=dbgrid1.Fields[0].AsInteger;
button3.Enabled:=true;
end
else
begin
button3.Enabled:=false;
end;
end;

procedure TForm5.Button3Click(Sender: TObject);
var
price,total,debt,money,m,money1,pre_money,collecting:real;
s:string;
temp_prof,temp_prof1,deleted:integer;
begin //1
if (edit1.Text='') or (edit2.Text='')or (edit3.Text='') or (edit5.Text='') or (edit6.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— «·»÷«⁄… «·„—Ã⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if edit4.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬂ„Ì… «·„—Ã⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit4.SetFocus;
exit;
end;

if strtoint(edit4.Text)> strtoint(edit3.Text)then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ «·ﬂ„Ì… «·„—Ã⁄… ·√‰Â« √ﬂ»— „‰ «·„»«⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit4.SetFocus;
exit;
end;
deleted:=0;
money:=0;
pre_money:=0;
temp_prof1:=strtoint(edit4.text);
query_loop.Close;
query_loop.Prepare;
query_loop.Params[0].Value:=s_num;
query_loop.Params[1].Value:=edit1.Text;
query_loop.Params[2].Value:=edit2.Text;
query_loop.Open;
while (not(query_loop.Eof))and (temp_prof1<>0) do
begin
bring_data_from_profitable_to_edit.Close;
bring_data_from_profitable_to_edit.Prepare;
bring_data_from_profitable_to_edit.Params[0].Value:=s_num;
bring_data_from_profitable_to_edit.Params[1].Value:=edit1.Text;
bring_data_from_profitable_to_edit.Params[2].Value:=edit2.Text;
bring_data_from_profitable_to_edit.Params[3].Value:=query_loop['quantity'];
bring_data_from_profitable_to_edit.Params[4].Value:=edit5.Text;
bring_data_from_profitable_to_edit.Open;
if bring_data_from_profitable_to_edit['quantity']=strtoint(edit4.Text) then
begin  //2
query_loop.Last;
IBQuery3.Active:=true;
IBQuery3.Insert;
buy_price:=bring_data_from_profitable_to_edit['buy_price'];
IBQuery3['temp']:=bring_data_from_profitable_to_edit['num_in_storge_history'];
IBQuery3['quan']:=bring_data_from_profitable_to_edit['quantity'];
ibquery3.post;
bring_data_from_profitable_to_edit.Delete;
see_if_there_are_any_more_items_in_the_same_bill_from_profitabl.Close;
see_if_there_are_any_more_items_in_the_same_bill_from_profitabl.Prepare;
see_if_there_are_any_more_items_in_the_same_bill_from_profitabl.Params[0].Value:=s_num;
see_if_there_are_any_more_items_in_the_same_bill_from_profitabl.Open;
if see_if_there_are_any_more_items_in_the_same_bill_from_profitabl.RecordCount=0 then
begin //3  //›Ï Õ«· „”Õ «·Õﬁ· Ê·ﬂ‰ ·«ÌÊÃœ »÷«⁄Â √Œ—Ï
deleted:=1;
data_from_paid_to_the_bill.Close;
data_from_paid_to_the_bill.Prepare;
data_from_paid_to_the_bill.Params[0].Value:=s_num;
data_from_paid_to_the_bill.Open;
money:=money + data_from_paid_to_the_bill['paid_value'];
data_from_paid_to_the_bill.Delete;
//see_if_there_are_any_debts_collected_for_the_same_bill.Close;
//see_if_there_are_any_debts_collected_for_the_same_bill.Prepare;
//see_if_there_are_any_debts_collected_for_the_same_bill.Params[0].Value:=s_num;
//see_if_there_are_any_debts_collected_for_the_same_bill.Open;
//if see_if_there_are_any_debts_collected_for_the_same_bill.RecordCount<>0 then
//while not(see_if_there_are_any_debts_collected_for_the_same_bill.Eof) do
//begin
//money:=money+see_if_there_are_any_debts_collected_for_the_same_bill['paid_value'];
//see_if_there_are_any_debts_collected_for_the_same_bill.Delete;
//end;
//delete_from_debts_if_nothing_left_in_bill.Close;
//delete_from_debts_if_nothing_left_in_bill.Prepare;
//delete_from_debts_if_nothing_left_in_bill.Params[0].Value:=s_num;
//delete_from_debts_if_nothing_left_in_bill.Open;
//if delete_from_debts_if_nothing_left_in_bill.RecordCount<>0then
//delete_from_debts_if_nothing_left_in_bill.Delete;
see_if_there_are_items_in_the_same_bill_in_sales_table.Close;
see_if_there_are_items_in_the_same_bill_in_sales_table.Prepare;
see_if_there_are_items_in_the_same_bill_in_sales_table.Params[0].Value:=s_num;
see_if_there_are_items_in_the_same_bill_in_sales_table.Open;
see_if_there_are_items_in_the_same_bill_in_sales_table.Delete;
if edit8.Text<>'' then
begin
sum_all_paied_and_total_bills.Close;
sum_all_paied_and_total_bills.Prepare;
sum_all_paied_and_total_bills.Params[0].Value:=edit8.Text;
sum_all_paied_and_total_bills.Open;
sum_collecting.Close;
sum_collecting.Prepare;
sum_collecting.Params[0].Value:=edit8.Text;
sum_collecting.Open;
if sum_collecting['sum']=null then
collecting:=0
else
collecting:=sum_collecting['sum'];
end;
if (sum_all_paied_and_total_bills['sum1']<(sum_all_paied_and_total_bills['sum']+collecting))then
begin
money:=money+(sum_all_paied_and_total_bills['sum']+collecting)-(sum_all_paied_and_total_bills['sum1']);
pre_money:=(sum_all_paied_and_total_bills['sum']+collecting)-(sum_all_paied_and_total_bills['sum1']);
see_if_he_in_debts_names.Close;
see_if_he_in_debts_names.Prepare;
see_if_he_in_debts_names.Params[0].Value:=edit8.Text;
see_if_he_in_debts_names.Open;
if see_if_he_in_debts_names.RecordCount<>0 then
see_if_he_in_debts_names.Delete;
end
else
begin
if (sum_all_paied_and_total_bills['sum1']=(sum_all_paied_and_total_bills['sum']+collecting))then
begin

see_if_he_in_debts_names.Close;
see_if_he_in_debts_names.Prepare;
see_if_he_in_debts_names.Params[0].Value:=edit8.Text;
see_if_he_in_debts_names.Open;
if see_if_he_in_debts_names.RecordCount<>0 then
see_if_he_in_debts_names.Delete;
end;
end;
end//3  //›Ï Õ«· „”Õ «·Õﬁ· Ê·ﬂ‰ ·«ÌÊÃœ »÷«⁄Â √Œ—Ï
else
begin //›Ï Õ«· „”Õ «·Õﬁ· Ê·ﬂ‰ ÌÊÃœ »÷«⁄Â √Œ—Ï
deleted:=1;
money:=strtofloat(edit7.Text);
delete_from_sales_when_the_mount_is_the_same_but_still_items.Close;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Prepare;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Params[0].Value:=edit1.Text;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Params[1].Value:=edit2.Text;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Params[2].Value:=s_num;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Params[3].Value:=edit3.Text;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Params[4].Value:=edit5.Text;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Open;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Delete;
edit_paid_value_and_remaining_value_after_delete_and_still_item.Close;
edit_paid_value_and_remaining_value_after_delete_and_still_item.Prepare;
edit_paid_value_and_remaining_value_after_delete_and_still_item.Params[0].Value:=s_num;
edit_paid_value_and_remaining_value_after_delete_and_still_item.Open;
if edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']=strtofloat(edit7.Text) then
begin
edit_paid_value_and_remaining_value_after_delete_and_still_item.Edit;
money:=edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value'];
edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']:=0;
edit_paid_value_and_remaining_value_after_delete_and_still_item['total_bill_price']:=edit_paid_value_and_remaining_value_after_delete_and_still_item['total_bill_price']-strtofloat(edit7.Text);
edit_paid_value_and_remaining_value_after_delete_and_still_item.Post;
sum_bill.Close;
sum_bill.Prepare;
sum_bill.Params[0].Value:=s_num;
sum_bill.Open;
edit_in_paid_when_less_than_retrive.Close;
edit_in_paid_when_less_than_retrive.Prepare;
edit_in_paid_when_less_than_retrive.Params[0].Value:=s_num;
edit_in_paid_when_less_than_retrive.Open;
edit_in_paid_when_less_than_retrive.Edit;
edit_in_paid_when_less_than_retrive['remaining_value']:=sum_bill['sum']-edit_in_paid_when_less_than_retrive['paid_value'];
edit_in_paid_when_less_than_retrive.Post;
end
else
begin
if edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']> strtofloat(edit7.Text) then
begin
edit_paid_value_and_remaining_value_after_delete_and_still_item.Edit;
money:=strtofloat(edit7.Text);
edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']:=edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']-strtofloat(edit7.Text);
edit_paid_value_and_remaining_value_after_delete_and_still_item['total_bill_price']:=edit_paid_value_and_remaining_value_after_delete_and_still_item['total_bill_price']-strtofloat(edit7.Text);
edit_paid_value_and_remaining_value_after_delete_and_still_item.Post;
end
else
begin
if edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']< strtofloat(edit7.Text)then
begin

money:=strtofloat(edit7.Text);
//delete_from_debts_if_nothing_left_in_bill.Close;
//delete_from_debts_if_nothing_left_in_bill.Prepare;
//delete_from_debts_if_nothing_left_in_bill.Params[0].Value:=s_num;
//delete_from_debts_if_nothing_left_in_bill.Open;
//if delete_from_debts_if_nothing_left_in_bill.RecordCount<>0 then
//begin
//if money=delete_from_debts_if_nothing_left_in_bill['debt_value']then
//begin
//money:=0;
//delete_from_debts_if_nothing_left_in_bill.Delete;
sum_bill.Close;
sum_bill.Prepare;
sum_bill.Params[0].Value:=s_num;
sum_bill.Open;
edit_in_paid_when_less_than_retrive.Close;
edit_in_paid_when_less_than_retrive.Prepare;
edit_in_paid_when_less_than_retrive.Params[0].Value:=s_num;
edit_in_paid_when_less_than_retrive.Open;
edit_in_paid_when_less_than_retrive.Edit;
edit_in_paid_when_less_than_retrive['total_bill_price']:=sum_bill['sum'];
edit_in_paid_when_less_than_retrive['remaining_value']:=sum_bill['sum']-edit_in_paid_when_less_than_retrive['paid_value'];
edit_in_paid_when_less_than_retrive.Post;
//end
//else
//begin
//if money<delete_from_debts_if_nothing_left_in_bill['debt_value'] then
//begin
//delete_from_debts_if_nothing_left_in_bill.Edit;
//delete_from_debts_if_nothing_left_in_bill['debt_value']:=delete_from_debts_if_nothing_left_in_bill['debt_value']- money;
//delete_from_debts_if_nothing_left_in_bill.Post;
//money:=0;
//sum_bill.Close;
//sum_bill.Prepare;
//sum_bill.Params[0].Value:=s_num;
//sum_bill.Open;
//edit_in_paid_when_less_than_retrive.Close;
//edit_in_paid_when_less_than_retrive.Prepare;
//edit_in_paid_when_less_than_retrive.Params[0].Value:=s_num;
//edit_in_paid_when_less_than_retrive.Open;
//edit_in_paid_when_less_than_retrive.Edit;
//edit_in_paid_when_less_than_retrive['total_bill_price']:=sum_bill['sum'];
//edit_in_paid_when_less_than_retrive['remaining_value']:=sum_bill['sum']-edit_in_paid_when_less_than_retrive['paid_value'];
//edit_in_paid_when_less_than_retrive.Post;
//end
//else
//begin
//if money>delete_from_debts_if_nothing_left_in_bill['debt_value'] then
//begin
//money:=money-delete_from_debts_if_nothing_left_in_bill['debt_value'];
//money1:=money;
//delete_from_debts_if_nothing_left_in_bill.Delete;
//edit_in_collecting_if_paid_less_than_money.Close;
//edit_in_collecting_if_paid_less_than_money.Prepare;
//edit_in_collecting_if_paid_less_than_money.Params[0].Value:=s_num;
//edit_in_collecting_if_paid_less_than_money.Open;
//while (money1>0)and (not(edit_in_collecting_if_paid_less_than_money.Eof))do
//begin
//if money1=edit_in_collecting_if_paid_less_than_money['paid_value'] then
//begin
//edit_in_collecting_if_paid_less_than_money.Delete;
//money1:=0;
//end
//else
//begin
//if money1<edit_in_collecting_if_paid_less_than_money['paid_value'] then
//begin
//edit_in_collecting_if_paid_less_than_money.Edit;
//edit_in_collecting_if_paid_less_than_money['paid_value']:=edit_in_collecting_if_paid_less_than_money['paid_value']-money1;
//edit_in_collecting_if_paid_less_than_money.Post;
//money1:=0;
//end
//else
//begin
//if money1>edit_in_collecting_if_paid_less_than_money['paid_value']then
//begin
//money1:=money1-edit_in_collecting_if_paid_less_than_money['paid_value'];
//edit_in_collecting_if_paid_less_than_money.Delete;
//end;
//end;
//end;
//end;
//end;
//end;
end;
//if money1>0 then
//begin
//edit_in_paid_when_less_than_retrive.Close;
//edit_in_paid_when_less_than_retrive.Prepare;
//edit_in_paid_when_less_than_retrive.Params[0].Value:=s_num;
//edit_in_paid_when_less_than_retrive.Open;
//edit_in_paid_when_less_than_retrive.Edit;
//edit_in_paid_when_less_than_retrive['paid_value']:=edit_in_paid_when_less_than_retrive['paid_value']-money1;
//sum_bill.Close;
//sum_bill.Prepare;
//sum_bill.Params[0].Value:=s_num;
//sum_bill.Open;
//edit_in_paid_when_less_than_retrive['total_bill_price']:=sum_bill['sum'];
//edit_in_paid_when_less_than_retrive['remaining_value']:=sum_bill['sum']-edit_in_paid_when_less_than_retrive['paid_value'];
//edit_in_paid_when_less_than_retrive.Post;
//end;
//end
//else
//begin
// Â‰« «–« ﬂ«‰ ·« ÌÊÃœ ›Ï «·œÌÊ‰ Ì „ «·Œ’„ „‰  Õ’Ì· «·œÌÊ‰
//money1:=money;
//edit_in_collecting_if_paid_less_than_money.Close;
//edit_in_collecting_if_paid_less_than_money.Prepare;
//edit_in_collecting_if_paid_less_than_money.Params[0].Value:=s_num;
//edit_in_collecting_if_paid_less_than_money.Open;
//while (money1>0)and (not(edit_in_collecting_if_paid_less_than_money.Eof)) do
//begin
//if money1=edit_in_collecting_if_paid_less_than_money['paid_value'] then
//begin
//edit_in_collecting_if_paid_less_than_money.Delete;
//money1:=0;
//end
//else
//begin
//if money1<edit_in_collecting_if_paid_less_than_money['paid_value'] then
//begin
//edit_in_collecting_if_paid_less_than_money.Edit;
//edit_in_collecting_if_paid_less_than_money['paid_value']:=edit_in_collecting_if_paid_less_than_money['paid_value']-money1;
//edit_in_collecting_if_paid_less_than_money.Post;
//money1:=0;
//end
//else
//begin
//if money1>edit_in_collecting_if_paid_less_than_money['paid_value']then
//begin
//money1:=money1-edit_in_collecting_if_paid_less_than_money['paid_value'];
//edit_in_collecting_if_paid_less_than_money.Delete;
//end;
//end;
//end;
//end;
//if money1>0 then
//begin
//edit_in_paid_when_less_than_retrive.Close;
//edit_in_paid_when_less_than_retrive.Prepare;
//edit_in_paid_when_less_than_retrive.Params[0].Value:=s_num;
//edit_in_paid_when_less_than_retrive.Open;
//edit_in_paid_when_less_than_retrive.Edit;
//edit_in_paid_when_less_than_retrive['paid_value']:=edit_in_paid_when_less_than_retrive['paid_value']-money1;
//sum_bill.Close;
//sum_bill.Prepare;
//sum_bill.Params[0].Value:=s_num;
//sum_bill.Open;
//edit_in_paid_when_less_than_retrive['total_bill_price']:=sum_bill['sum'];
//edit_in_paid_when_less_than_retrive['remaining_value']:=sum_bill['sum']-edit_in_paid_when_less_than_retrive['paid_value'];
//edit_in_paid_when_less_than_retrive.Post;
//end;

//Â‰« «–« ﬂ«‰ ·« ÌÊÃœ ›Ï «·œÌÊ‰ Ì „ «·Œ’„ „‰  Õ’Ì· «·œÌÊ‰
end;
end;
//end;
//end;
end; //›Ï Õ«· „”Õ «·Õﬁ· Ê·ﬂ‰ ÌÊÃœ »÷«⁄Â √Œ—
end //2
else
begin //13
buy_price:=bring_data_from_profitable_to_edit['buy_price'];

if  bring_data_from_profitable_to_edit['quantity']>temp_prof1 then
begin
temp_prof:=temp_prof1;
temp_prof1:=0
end
else
begin
temp_prof:=bring_data_from_profitable_to_edit['quantity'];
temp_prof1:=temp_prof1-bring_data_from_profitable_to_edit['quantity'];
end;
while temp_prof<>0 do
begin
if temp_prof=bring_data_from_profitable_to_edit['quantity']then
begin
ibquery3.active:=true;
ibquery3.insert;
ibquery3['temp']:=bring_data_from_profitable_to_edit['num_in_storge_history'];
ibquery3['quan']:=temp_prof;
ibquery3.Post;
temp_prof:=0;
query_loop.next;
bring_data_from_profitable_to_edit.delete;
end
else
begin
if temp_prof < bring_data_from_profitable_to_edit['quantity'] then
begin
bring_data_from_profitable_to_edit.Edit;
ibquery3.active:=true;
ibquery3.insert;
bring_data_from_profitable_to_edit['quantity']:=bring_data_from_profitable_to_edit['quantity']- temp_prof{strtoint(edit4.Text)};
ibquery3['temp']:=bring_data_from_profitable_to_edit['num_in_storge_history'];
ibquery3['quan']:=temp_prof;
temp_prof:=0;
query_loop.Last;
ibquery3.Post;
bring_data_from_profitable_to_edit.Post;
end
else
begin
ibquery3.active:=true;
ibquery3.insert;
temp_prof:=temp_prof - bring_data_from_profitable_to_edit['quantity'];
ibquery3['temp']:=bring_data_from_profitable_to_edit['num_in_storge_history'];
ibquery3['quan']:=bring_data_from_profitable_to_edit['quantity'];
query_loop.Next;
ibquery3.post;

bring_data_from_profitable_to_edit.Delete;
end;
end;
end;
end;
end;
//Â‰«  „ «· ⁄œÌ·
//⁄„·Ì«  «· ⁄œÌ· ›Ï ÃœÊ· «·„»Ì⁄«  Ê ÃœÊ· «·„œ›Ê⁄«  Ê «Ã„«·Ï «·›« Ê—…
if deleted=0then
begin//deleted
delete_from_sales_when_the_mount_is_the_same_but_still_items.Close;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Prepare;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Params[0].Value:=edit1.Text;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Params[1].Value:=edit2.Text;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Params[2].Value:=s_num;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Params[3].Value:=edit3.Text;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Params[4].Value:=edit5.Text;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Open;
delete_from_sales_when_the_mount_is_the_same_but_still_items.Edit;
delete_from_sales_when_the_mount_is_the_same_but_still_items['quantity']:=delete_from_sales_when_the_mount_is_the_same_but_still_items['quantity']- strtoint(edit4.Text);
delete_from_sales_when_the_mount_is_the_same_but_still_items['total_piece_price']:=delete_from_sales_when_the_mount_is_the_same_but_still_items['total_piece_price']-strtofloat(edit7.Text);
delete_from_sales_when_the_mount_is_the_same_but_still_items.post;
edit_paid_value_and_remaining_value_after_delete_and_still_item.Close;
edit_paid_value_and_remaining_value_after_delete_and_still_item.Prepare;
edit_paid_value_and_remaining_value_after_delete_and_still_item.Params[0].Value:=s_num;
edit_paid_value_and_remaining_value_after_delete_and_still_item.Open;
if edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']=strtofloat(edit7.Text) then
begin
edit_paid_value_and_remaining_value_after_delete_and_still_item.Edit;
money:=edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value'];
edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']:=0;
edit_paid_value_and_remaining_value_after_delete_and_still_item['total_bill_price']:=edit_paid_value_and_remaining_value_after_delete_and_still_item['total_bill_price']-strtofloat(edit7.Text);
edit_paid_value_and_remaining_value_after_delete_and_still_item.Post;
money:=strtofloat(edit7.text);
end
else
begin
if edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']> strtofloat(edit7.Text) then
begin
edit_paid_value_and_remaining_value_after_delete_and_still_item.Edit;

edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']:=edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']-strtofloat(edit7.Text);
edit_paid_value_and_remaining_value_after_delete_and_still_item['total_bill_price']:=edit_paid_value_and_remaining_value_after_delete_and_still_item['total_bill_price']-strtofloat(edit7.Text);
edit_paid_value_and_remaining_value_after_delete_and_still_item.Post;
money:=strtofloat(edit7.text);
end
else
begin
if edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']< strtofloat(edit7.Text)then
begin
// ›Ï Õ«·… ⁄œ„ „”Õ «·Õﬁ· „‰ «·›« Ê—… Ê ·ﬂ‰ «·„œ›Ê⁄ «ﬁ· „‰ «·„—Ã⁄
money:=edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value'];
edit_paid_value_and_remaining_value_after_delete_and_still_item.edit;
edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']:=0;
edit_paid_value_and_remaining_value_after_delete_and_still_item.Post;
//delete_from_debts_if_nothing_left_in_bill.Close;
//delete_from_debts_if_nothing_left_in_bill.Prepare;
//delete_from_debts_if_nothing_left_in_bill.Params[0].Value:=s_num;
//delete_from_debts_if_nothing_left_in_bill.Open;
//if delete_from_debts_if_nothing_left_in_bill.RecordCount<>0 then
//begin //e2
//if money=delete_from_debts_if_nothing_left_in_bill['debt_value']then
//begin//e3
//money:=0;
//delete_from_debts_if_nothing_left_in_bill.Delete;
// Â‰« «· ⁄œÌ· ›Ï „œ›Ê⁄ Ê «·„ »ﬁÌ
//end//e3
//else
//begin//e4
//if money<delete_from_debts_if_nothing_left_in_bill['debt_value'] then
//begin//e5
//delete_from_debts_if_nothing_left_in_bill.Edit;
//delete_from_debts_if_nothing_left_in_bill['debt_value']:=delete_from_debts_if_nothing_left_in_bill['debt_value']- money;
//delete_from_debts_if_nothing_left_in_bill.Post;
//money:=0;
//sum_bill.Close;
//sum_bill.Prepare;
//sum_bill.Params[0].Value:=s_num;
//sum_bill.Open;
//edit_in_paid_when_less_than_retrive.Close;
//edit_in_paid_when_less_than_retrive.Prepare;
//edit_in_paid_when_less_than_retrive.Params[0].Value:=s_num;
//edit_in_paid_when_less_than_retrive.Open;
//edit_in_paid_when_less_than_retrive.Edit;
//edit_in_paid_when_less_than_retrive['total_bill_price']:=sum_bill['sum'];
//edit_in_paid_when_less_than_retrive['remaining_value']:=sum_bill['sum']-edit_in_paid_when_less_than_retrive['paid_value'];
//edit_in_paid_when_less_than_retrive.Post;
// Â‰« «· ⁄œÌ· ›Ï „œ›Ê⁄ Ê «·„ »ﬁÌ
//end//e5
//else
//begin//e6
//if money>delete_from_debts_if_nothing_left_in_bill['debt_value'] then
//begin//e7
//money:=money-delete_from_debts_if_nothing_left_in_bill['debt_value'];
//money1:=money;
//delete_from_debts_if_nothing_left_in_bill.Delete;
//edit_in_collecting_if_paid_less_than_money.Close;
//edit_in_collecting_if_paid_less_than_money.Prepare;
//edit_in_collecting_if_paid_less_than_money.Params[0].Value:=s_num;
//edit_in_collecting_if_paid_less_than_money.Open;
//while (money1>0)and (not(edit_in_collecting_if_paid_less_than_money.Eof))do
//begin//e8
//if money1=edit_in_collecting_if_paid_less_than_money['paid_value'] then
//begin//e9
//edit_in_collecting_if_paid_less_than_money.Delete;
//money1:=0;
//end //e9
//else
//begin//e10
//if money1<edit_in_collecting_if_paid_less_than_money['paid_value'] then
//begin//e11
//edit_in_collecting_if_paid_less_than_money.Edit;
//edit_in_collecting_if_paid_less_than_money['paid_value']:=edit_in_collecting_if_paid_less_than_money['paid_value']-money1;
//edit_in_collecting_if_paid_less_than_money.Post;
//money1:=0;
//end//e11
//else
//begin//e12
//if money1>edit_in_collecting_if_paid_less_than_money['paid_value']then
//begin//e13
//money1:=money1-edit_in_collecting_if_paid_less_than_money['paid_value'];
//edit_in_collecting_if_paid_less_than_money.Delete;
//end;//e13
//end;//e12
//end;//e10
//end;//e8
//end;//e7
//end;//e6
//end;//e4
//if money1>0 then
//begin
//edit_in_paid_when_less_than_retrive.Close;
//edit_in_paid_when_less_than_retrive.Prepare;
//edit_in_paid_when_less_than_retrive.Params[0].Value:=s_num;
//edit_in_paid_when_less_than_retrive.Open;
//edit_in_paid_when_less_than_retrive.Edit;
//edit_in_paid_when_less_than_retrive['paid_value']:=edit_in_paid_when_less_than_retrive['paid_value']-money1;
//sum_bill.Close;
//sum_bill.Prepare;
//sum_bill.Params[0].Value:=s_num;
//sum_bill.Open;
//edit_in_paid_when_less_than_retrive['total_bill_price']:=sum_bill['sum'];
//edit_in_paid_when_less_than_retrive['remaining_value']:=sum_bill['sum']-edit_in_paid_when_less_than_retrive['paid_value'];
//edit_in_paid_when_less_than_retrive.Post;
//end;
//end;

// ›Ï Õ«·… ⁄œ„ „”Õ «·Õﬁ· „‰ «·›« Ê—… Ê ·ﬂ‰ «·„œ›Ê⁄ «ﬁ· „‰ «·„—Ã⁄
end;
end;
end;
//⁄„·Ì«  «· ⁄œÌ· ›Ï ÃœÊ· «·„»Ì⁄«  Ê ÃœÊ· «·„œ›Ê⁄«  Ê «Ã„«·Ï «·›« Ê—…
sum_bill.Close;
sum_bill.Prepare;
sum_bill.Params[0].Value:=s_num;
sum_bill.Open;
edit_in_paid_when_less_than_retrive.Close;
edit_in_paid_when_less_than_retrive.Prepare;
edit_in_paid_when_less_than_retrive.Params[0].Value:=s_num;
edit_in_paid_when_less_than_retrive.Open;
edit_in_paid_when_less_than_retrive.Edit;
edit_in_paid_when_less_than_retrive['total_bill_price']:=sum_bill['sum'];
edit_in_paid_when_less_than_retrive['remaining_value']:=sum_bill['sum']-edit_in_paid_when_less_than_retrive['paid_value'];
edit_in_paid_when_less_than_retrive.Post;
   //Œ’„ «·ﬁÌ„… „‰ ÃœÊ· «·√—»«Õ 13
end;//deleted
// Œ’„ «·»÷«⁄Â ≈–« ﬂ«‰ ÌÊÃœ œÌÊ‰
if (edit8.Text<>'') and (money>0) then
begin//4

//see_if_he_has_any_other_debts.Close;
//see_if_he_has_any_other_debts.Prepare;
//see_if_he_has_any_other_debts.Params[0].Value:=edit8.Text;
//see_if_he_has_any_other_debts.Open;
//if see_if_he_has_any_other_debts.RecordCount<>0 then
//begin //5
//pre_money:=money;
//while (money<>0) and (not(see_if_he_has_any_other_debts.Eof)) do
//begin //6
//ibquery11.Close;
//ibquery11.Prepare;
//ibquery11.Open;
//save_in_collecting_debts.Active:=true;
//save_in_collecting_debts.Insert;
//save_in_collecting_debts['sale_num']:=see_if_he_has_any_other_debts['sale_num'];
//if money=see_if_he_has_any_other_debts['debt_value'] then
//begin //7
//save_in_collecting_debts['paid_value']:=money;
//see_if_he_has_any_other_debts.Delete;
//money:=0;
//end //7
//else
//begin //8
//if money > see_if_he_has_any_other_debts['debt_value'] then
//begin //9
//save_in_collecting_debts['paid_value']:=see_if_he_has_any_other_debts['debt_value'];
//money:=money-see_if_he_has_any_other_debts['debt_value'];
//see_if_he_has_any_other_debts.Delete;
//end //9
//else
//begin//10
//if money < see_if_he_has_any_other_debts['debt_value'] then
//begin//11
//save_in_collecting_debts['paid_value']:=money;
//see_if_he_has_any_other_debts.Edit;
//see_if_he_has_any_other_debts['debt_value']:=see_if_he_has_any_other_debts['debt_value']-money;
//see_if_he_has_any_other_debts.Post;
//money:=0;
//end;//11
//end;//10
//end;//8
//max_num_in_debt.Close;
//max_num_in_debt.Prepare;
//max_num_in_debt.Open;
//if max_num_in_debt['max']=null then
//save_in_collecting_debts['num']:=1
//else
//save_in_collecting_debts['num']:=max_num_in_debt['max']+1;
//save_in_collecting_debts.Post;
//end;//6
// here if any thing needed
//end; //5
//else
//begin //12
////////////////////  Œ“Ì‰ ›Ï ÃœÊ·  Õ’Ì· «·œÌÊ‰ «·–Ì Ì⁄—÷ ··“»Ê
see_if_he_in_debts_names.Close;
see_if_he_in_debts_names.Prepare;
see_if_he_in_debts_names.Params[0].Value:=edit8.Text;
see_if_he_in_debts_names.Open;
if (money<>0) and (edit8.Text<>'')and (see_if_he_in_debts_names.RecordCount<>0) then
begin
sum_all_paied_and_total_bills.Close;
sum_all_paied_and_total_bills.Prepare;
sum_all_paied_and_total_bills.Params[0].Value:=edit8.Text;
sum_all_paied_and_total_bills.Open;
sum_collecting.Close;
sum_collecting.Prepare;
sum_collecting.Params[0].Value:=edit8.Text;
sum_collecting.Open;
if sum_collecting['sum']=null then
collecting:=0
else
collecting:=sum_collecting['sum'];
if (sum_all_paied_and_total_bills['sum1']-(sum_all_paied_and_total_bills['sum']+collecting)=money)then
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['name']:=edit8.Text;
ibtable1['amount']:=money;
money:=0;
see_if_he_in_debts_names.Delete;
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
ibtable1.Post;
end
else
begin
if (sum_all_paied_and_total_bills['sum1']-(sum_all_paied_and_total_bills['sum']+collecting)<money)then
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['name']:=edit8.Text;
ibtable1['amount']:=sum_all_paied_and_total_bills['sum1']-(sum_all_paied_and_total_bills['sum']+collecting);
money:=money-(sum_all_paied_and_total_bills['sum1']-(sum_all_paied_and_total_bills['sum']+collecting));
see_if_he_in_debts_names.Delete;
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
ibtable1.Post;
end
else
begin
if (sum_all_paied_and_total_bills['sum1']-(sum_all_paied_and_total_bills['sum']+collecting)>money)then
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['name']:=edit8.Text;
ibtable1['amount']:=money;
money:=0;
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
ibtable1.Post;
end;
end;

end;
end;


end;
if edit8.Text<>'' then
begin
sum_all_paied_and_total_bills.Close;
sum_all_paied_and_total_bills.Prepare;
sum_all_paied_and_total_bills.Params[0].Value:=edit8.Text;
sum_all_paied_and_total_bills.Open;
sum_collecting.Close;
sum_collecting.Prepare;
sum_collecting.Params[0].Value:=edit8.Text;
sum_collecting.Open;
if sum_collecting['sum']=null then
collecting:=0
else
collecting:=sum_collecting['sum'];
end;
if (sum_all_paied_and_total_bills['sum1']<(sum_all_paied_and_total_bills['sum']+collecting))then
begin
money:=money+(sum_all_paied_and_total_bills['sum']+collecting)-(sum_all_paied_and_total_bills['sum1']);
pre_money:=(sum_all_paied_and_total_bills['sum']+collecting)-(sum_all_paied_and_total_bills['sum1']);
see_if_he_in_debts_names.Close;
see_if_he_in_debts_names.Prepare;
see_if_he_in_debts_names.Params[0].Value:=edit8.Text;
see_if_he_in_debts_names.Open;
if see_if_he_in_debts_names.RecordCount<>0 then
see_if_he_in_debts_names.Delete;
end
else
begin
if (sum_all_paied_and_total_bills['sum1']=(sum_all_paied_and_total_bills['sum']+collecting))then
begin

see_if_he_in_debts_names.Close;
see_if_he_in_debts_names.Prepare;
see_if_he_in_debts_names.Params[0].Value:=edit8.Text;
see_if_he_in_debts_names.Open;
if see_if_he_in_debts_names.RecordCount<>0 then
see_if_he_in_debts_names.Delete;
end;
end;
///////////////////
//see_if_sum_collecting_more_than_debt.Close;
//see_if_sum_collecting_more_than_debt.Prepare;
//see_if_sum_collecting_more_than_debt.Params[0].Value:=s_num;
//see_if_sum_collecting_more_than_debt.Open;
//remaing_value.Close;
//remaing_value.Prepare;
//remaing_value.Params[0].Value:=s_num;
//remaing_value.Open;
//if see_if_sum_collecting_more_than_debt['sum']> remaing_value['remaining_value'] then
//begin
//total:=see_if_sum_collecting_more_than_debt['sum']-remaing_value['remaining_value'];
//edit_in_collecting_if_paid_less_than_money.Close;
//edit_in_collecting_if_paid_less_than_money.Prepare;
//edit_in_collecting_if_paid_less_than_money.Params[0].Value:=s_num;
//edit_in_collecting_if_paid_less_than_money.Open;
//if edit_in_collecting_if_paid_less_than_money.RecordCount<>0 then
//begin
//total:=money;
//while (total<>0) and (not(edit_in_collecting_if_paid_less_than_money.eof)) do
//begin
//edit_in_collecting_if_paid_less_than_money.Edit;
//if edit_in_collecting_if_paid_less_than_money['paid_value']= total then
//begin
//total:=0;
//edit_in_collecting_if_paid_less_than_money.Delete;
//end
//else
//begin
//if edit_in_collecting_if_paid_less_than_money['paid_value']>total then
//begin
//edit_in_collecting_if_paid_less_than_money.Edit;
//edit_in_collecting_if_paid_less_than_money['paid_value']:=edit_in_collecting_if_paid_less_than_money['paid_value']-total;
//total:=0;
//edit_in_collecting_if_paid_less_than_money.Post;
//end
//else
//begin
//if edit_in_collecting_if_paid_less_than_money['paid_value']< total then
//begin
//total:=total-edit_in_collecting_if_paid_less_than_money['paid_value'];
//edit_in_collecting_if_paid_less_than_money.Delete;
//end;
//end;
//end;
//end;
//end;
//if total>0 then
//begin
//edit_paid_value_and_remaining_value_after_delete_and_still_item.Close;
//edit_paid_value_and_remaining_value_after_delete_and_still_item.Prepare;
//edit_paid_value_and_remaining_value_after_delete_and_still_item.Params[0].Value:=s_num;
//edit_paid_value_and_remaining_value_after_delete_and_still_item.Open;
//edit_paid_value_and_remaining_value_after_delete_and_still_item.Edit;
//edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']:=edit_paid_value_and_remaining_value_after_delete_and_still_item['paid_value']-total;
//end;
//end;
//end; //12
//end; //4

//Œ’„ «·»÷«⁄… «–« ﬂ«‰ ÌÊÃœ œÌÊ‰
ibquery3.First;
while not(ibquery3.Eof) do
begin
select_data_from_storge_to_add_the_retrive.Close;
select_data_from_storge_to_add_the_retrive.Prepare;
select_data_from_storge_to_add_the_retrive.Params[0].Value:=edit1.Text;
select_data_from_storge_to_add_the_retrive.Params[1].Value:=edit2.Text;
select_data_from_storge_to_add_the_retrive.Params[2].Value:=ibquery3['temp'];
select_data_from_storge_to_add_the_retrive.Open;
if select_data_from_storge_to_add_the_retrive.RecordCount<> 0 then
begin
select_data_from_storge_to_add_the_retrive.Edit;
select_data_from_storge_to_add_the_retrive['quantity']:=select_data_from_storge_to_add_the_retrive['quantity']+ibquery3['quan'];
select_data_from_storge_to_add_the_retrive.Post;
end
else
begin
bring_dollar_data.Close;
bring_dollar_data.Prepare;
bring_dollar_data.Params[0].Value:=ibquery3['temp'];
bring_dollar_data.Params[1].Value:=edit1.Text;
bring_dollar_data.Params[2].Value:=edit2.Text;
bring_dollar_data.Open;
input_in_storge.Active:=true;
input_in_storge.Insert;
input_in_storge['kind']:=edit1.Text;
input_in_storge['name']:=edit2.Text;
input_in_storge['buy_price']:=buy_price;
input_in_storge['quantity']:=ibquery3['quan'];
input_in_storge['input_date']:=bring_dollar_data['input_date'];
input_in_storge['num_in_history_storge']:=ibquery3['temp'];
input_in_storge['dollar_price']:=bring_dollar_data['dollar_price'];
input_in_storge['change_price']:=bring_dollar_data['change_price'];
input_in_storge['total_dollar_price']:=bring_dollar_data['total_dollar_price'];
input_in_storge['sold']:=bring_dollar_data['quantity'];
IBQuery5.Close;
IBQuery5.Prepare;
IBQuery5.Open;
if ibquery5['max']=null then
input_in_storge['num']:=1
else
input_in_storge['num']:=ibquery5['max']+1;
input_in_storge.Post;
end;  // ≈—Ã«⁄ »÷«⁄… ··„Œ“‰
ibquery3.Delete;
end;
if pre_money<>0 then
begin
edit_in_collecting.Close;
edit_in_collecting.Prepare;
edit_in_collecting.Params[0].Value:=edit8.Text;
edit_in_collecting.Open;
while(pre_money<>0)do
begin
if edit_in_collecting['amount']=pre_money then
begin
edit_in_collecting.Delete;
pre_money:=0;
end
else
begin
if edit_in_collecting['amount']>pre_money then
begin
edit_in_collecting.Edit;
edit_in_collecting['amount']:=edit_in_collecting['amount']-pre_money;
edit_in_collecting.Post;
pre_money:=0;
end
else
begin
if edit_in_collecting['amount']<pre_money then
begin
pre_money:=pre_money-edit_in_collecting['amount'];
edit_in_collecting.Delete;
money:=money+pre_money;
pre_money:=0;
end;
end;
end;
end;
end;
s:=floattostr(money);
if money=0 then
begin
application.MessageBox(' „ ≈—Ã«⁄ «·»÷«⁄… Ê Œ’„ ﬁÌ„ Â« „‰ «·œÌÊ‰ «·„ÊÃÊœ… „”»ﬁ«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
label13.Caption:=edit8.Text;
edit9.Text:='0';
end
else
begin
application.MessageBox('ÌÊÃœ „»·€ ÌÃ» ≈—Ã«⁄Â ··“»Ê‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
label13.Caption:=edit8.Text;
edit9.Text:=floattostr(money);
end;
form1.IBTransaction1.Commit;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit7.Text:='';
edit8.Text:='';
{IBQuery6.Close;
IBQuery6.Prepare;
IBQuery6.Params[0].Value:=s_num;
IBQuery6.Open;
if (IBQuery6['paid_type']='‰ﬁœÌ') and (IBQuery6['paid_value']=edit7.Text) then
begin
total:=IBQuery6['paid_value'];
if cus_name<>'' then
begin
ibquery7.Close;
ibquery7.Prepare;
ibquery7.Params[0].Value:=cus_name;
ibquery7.Open;
if ibquery7.RecordCount<>0 then
begin
IBQuery8.Close;
IBQuery8.Prepare;
IBQuery8.Params[0].Value:=s_num;
IBQuery8.Open;
while not(IBQuery8.Eof) do
IBQuery8.Delete;
while total<>0 do
begin

end;
end;
end;
IBQuery6.Delete;
end
else
begin
if (IBQuery6['paid_type']='‰ﬁœÌ')  then
begin
IBQuery6.Edit;
IBQuery6['total_bill_price']:=IBQuery6['total_bill_price']- strtofloat(edit7.Text);
IBQuery6['paid_value']:=IBQuery6['paid_value']- strtofloat(edit7.Text);
IBQuery6.Post;
end
else
begin
if (IBQuery6['paid_type']='¬Ã·') and (IBQuery6['remaining_value']> edit7.Text) then
begin
IBQuery6.Edit;
IBQuery6['remaining_value']:=IBQuery6['remaining_value']- strtofloat(edit7.Text);
IBQuery6['total_bill_price']:=IBQuery6['total_bill_price']- strtofloat(edit7.Text);
IBQuery6.Post;
end
else
begin
if (IBQuery6['paid_type']='¬Ã·') and (IBQuery6['remaining_value']< edit7.Text) then
begin
IBQuery6.Edit;
price:=strtofloat(edit7.Text);
IBQuery6['total_bill_price']:=IBQuery6['total_bill_price']- price;
price:=price-IBQuery6['remaining_value'];
IBQuery6['remaining_value']:=0;
IBQuery6['paid_value']:=IBQuery6['paid_value']-price;
if IBQuery6['paid_value']=0 then
begin
IBQuery6.Delete;
end
else
begin
IBQuery6.Post;
end;
end;
end;
end;
end;}
{if cus_name<>'' then
begin
ibquery7.Close;
ibquery7.Prepare;
ibquery7.Params[0].Value:=cus_name;
ibquery7.Open;
if ibquery7.RecordCount=0 then
begin

end
else
begin

end;
end;}
end;

procedure TForm5.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
ibquery1.Close;
end;

procedure TForm5.Edit4Change(Sender: TObject);
begin
if (edit5.Text='')or (edit4.Text='')then
edit7.Text:=''
else
begin
edit7.Text:=floattostr(strtofloat(edit4.Text)*strtofloat(edit5.Text));
if strtoint(edit4.Text)=strtoint(edit3.Text)then
edit7.Text:=edit6.Text;
end;
end;

end.
