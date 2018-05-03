unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, ComCtrls, DB,
  DBTables;

type
  TForm21 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    Query_edit_in_daily_sale: TQuery;
    Query_edit_in_daily_saleDS_NO: TIntegerField;
    Query_edit_in_daily_saleDS_NAME_TYPE: TStringField;
    Query_edit_in_daily_saleDS_NAME_KIND: TStringField;
    Query_edit_in_daily_saleDS_QUANTITY: TIntegerField;
    Query_edit_in_daily_saleDS_PRICE: TFloatField;
    Query_edit_in_daily_saleDS_DATE: TStringField;
    Query_edit_in_daily_saleTOTAL_PRICE: TFloatField;
    Query_edit_in_daily_saleRECIVER_NAME: TStringField;
    Query_edit_in_daily_salePAY_NUM: TIntegerField;
    Query_caundition_to_retrive: TQuery;
    DataSource2: TDataSource;
    Query_caundition_to_retriveDEBT_NO: TIntegerField;
    Query_caundition_to_retriveDEBT_CUS_NAME: TStringField;
    Query_caundition_to_retriveDEBT_DATE: TStringField;
    Query_caundition_to_retriveDEBT_VALUE: TFloatField;
    Query_caundition_to_retriveNUM_IN_DAILY_SALE: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

uses Unit19, Unit1, Unit18;

{$R *.dfm}

procedure TForm21.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=now;
form19.Query_data_from_temp_for_all_debts.Close;
form19.Query_data_from_temp_for_all_debts.Prepare;
form19.Query_data_from_temp_for_all_debts.Open;
end;

procedure TForm21.BitBtn1Click(Sender: TObject);
begin
form21.Hide;
form19.Show;
end;

procedure TForm21.BitBtn2Click(Sender: TObject);
begin
form21.Hide;
form1.Show;
end;

procedure TForm21.DBGrid1CellClick(Column: TColumn);
begin
if(form19.Query_data_from_temp_for_all_debts.RecordCount<>0)then
begin
edit2.Text:=dbgrid1.Fields[0].AsString;
edit6.Text:=dbgrid1.Fields[1].AsString;
edit7.Text:=dbgrid1.Fields[2].AsString;
edit4.Text:=dbgrid1.Fields[3].AsString;
bitbtn3.Enabled:=true;
end;



end;

procedure TForm21.BitBtn3Click(Sender: TObject);
var
retrive_to_discount,amount_retrived,retrive,n,no_of_retrived:integer;
sale_price,buy_price:variant;
begin//1
if (edit5.Text='') then
begin //*
application.MessageBox('«·—Ã«¡«œŒ«· ”⁄— ‘—«¡ «·ÊÕœ…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit5.SetFocus;
exit;
end;
if (edit3.Text='') then
begin //*
application.MessageBox('«·—Ã«¡«œŒ«· «·ﬂ„Ì…«·„—Ã⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit3.SetFocus;
exit;
end;
if(strtoint(edit7.Text)< strtoint(edit3.Text))then
begin
application.MessageBox('«·—Ã«¡«· √ﬂœ „‰ «·ﬂ„Ì… «·„—Ã⁄Â ·√‰Â« «ﬂ»— „‰ «·„»«⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit3.SetFocus;
exit;
end;
n:=application.messagebox('Â·  —Ìœ «—Ã«⁄ «·ﬂ„Ì…','„‰ŸÊ„… «·Õ”«»« ',mb_iconquestion+mb_yesno);
if(n=id_yes)then
begin//2
retrive:=strtoint(edit3.Text);
sale_price:=strtofloat(edit4.Text);
buy_price:=strtofloat(edit5.Text);
Query_edit_in_daily_sale.Close;
Query_edit_in_daily_sale.Prepare;
Query_edit_in_daily_sale.Params[0].Value:=dbgrid1.Fields[7].AsInteger;
Query_edit_in_daily_sale.Params[1].Value:=dbgrid1.Fields[0].AsString;
Query_edit_in_daily_sale.Params[2].Value:=dbgrid1.Fields[1].AsString;
Query_edit_in_daily_sale.Params[3].Value:=dbgrid1.Fields[2].AsInteger;
Query_edit_in_daily_sale.Params[4].Value:=sale_price;
Query_edit_in_daily_sale.Params[5].Value:=(strtoint(edit7.Text)*sale_price);
Query_edit_in_daily_sale.Params[6].Value:=dbgrid1.Fields[8].AsInteger;
Query_edit_in_daily_sale.Open;
Query_edit_in_daily_sale.Edit;
Query_edit_in_daily_sale['ds_quantity']:=Query_edit_in_daily_sale['ds_quantity']- strtoint(edit3.Text);
Query_edit_in_daily_sale['total_price']:=Query_edit_in_daily_sale['total_price']- (strtoint(edit3.Text)* sale_price);
Query_edit_in_daily_sale.Post;
if(Query_edit_in_daily_sale['ds_quantity']=0)then
begin
Query_edit_in_daily_sale.Delete;
end;
form18.Query_search_in_gain_table.Close;
form18.Query_search_in_gain_table.Prepare;
form18.Query_search_in_gain_table.Params[0].Value:=edit2.Text;
form18.Query_search_in_gain_table.Params[1].Value:=edit6.Text;
form18.Query_search_in_gain_table.Open;
if(form18.Query_search_in_gain_table.RecordCount<>0)then
begin//3
while((not(form18.Query_search_in_gain_table.Eof))and (retrive>0))do
begin//5
no_of_retrived:=form18.Query_search_in_gain_table['quantity']-form18.Query_search_in_gain_table['availble'];
if(retrive<=form18.Query_search_in_gain_table['quantity']) then
begin//6
if(no_of_retrived>=retrive)then
begin//*
form18.query_find_same_item_in_storge.Close;
form18.query_find_same_item_in_storge.Prepare;
form18.query_find_same_item_in_storge.Params[0].Value:=form18.Query_search_in_gain_table['no_in_storge'];
form18.query_find_same_item_in_storge.Params[1].Value:=form18.Query_search_in_gain_table['quantity'];
form18.query_find_same_item_in_storge.Open;
form18.Query_search_in_gain_table.Edit;
form18.Query_search_in_gain_table['total_budget']:=form18.Query_search_in_gain_table['total_budget']-(retrive*sale_price);
form18.Query_search_in_gain_table['availble']:=form18.Query_search_in_gain_table['availble']+retrive;
form18.Query_search_in_gain_table['wining']:=(form18.Query_search_in_gain_table['wining']-((sale_price-buy_price)*retrive));
if(form18.query_find_same_item_in_storge.RecordCount<>0)then
begin//7
form18.query_find_same_item_in_storge.Edit;
form18.query_find_same_item_in_storge['st_availble']:=form18.query_find_same_item_in_storge['st_availble']+retrive;
form18.query_find_same_item_in_storge.Post;
end//7
else
begin//8
form18.Query_max_st_no.Close;
form18.Query_max_st_no.Prepare;
form18.Query_max_st_no.Open;
form18.Query_save_in_storge.Close;
form18.Query_save_in_storge.Prepare;
form18.Query_save_in_storge.Open;
form18.Query_save_in_storge.Append;
if(form18.Query_max_st_no['max']=null)then
begin//9
form18.Query_save_in_storge['st_no']:=1;
end//9
else
begin//10
form18.Query_save_in_storge['st_no']:=form18.Query_max_st_no['max']+1;
end;//10
form18.Query_save_in_storge['st_kind']:=edit2.Text;
form18.Query_save_in_storge['st_type']:=edit6.Text;
form18.Query_save_in_storge['st_quantity']:=edit3.Text;
form18.Query_save_in_storge['st_availble']:=edit3.Text;
form18.Query_save_in_storge['st_type_pay']:=edit5.Text;
form18.Query_save_in_storge['st_type_sale']:=edit4.Text;
form18.Query_save_in_storge['st_stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
form18.Query_save_in_storge['no_in_gain_table']:=form18.Query_search_in_gain_table['no_in_storge'];
form18.Query_save_in_storge['shelf_no']:=edit1.Text;
form18.Query_save_in_storge.Post;
end;//8
retrive:=0;

form18.Query_search_in_gain_table.Post;
end//*
else
begin //**
form18.query_find_same_item_in_storge.Close;
form18.query_find_same_item_in_storge.Prepare;
form18.query_find_same_item_in_storge.Params[0].Value:=form18.Query_search_in_gain_table['no_in_storge'];
form18.query_find_same_item_in_storge.Params[1].Value:=form18.Query_search_in_gain_table['quantity'];
form18.query_find_same_item_in_storge.Open;
form18.Query_search_in_gain_table.Edit;
form18.Query_search_in_gain_table['total_budget']:=form18.Query_search_in_gain_table['total_budget']-(no_of_retrived*sale_price);
form18.Query_search_in_gain_table['availble']:=form18.Query_search_in_gain_table['availble']+no_of_retrived;
form18.Query_search_in_gain_table['wining']:=(form18.Query_search_in_gain_table['wining']-((sale_price-buy_price)*no_of_retrived));
if(form18.query_find_same_item_in_storge.RecordCount<>0)then
begin//7
form18.query_find_same_item_in_storge.Edit;
form18.query_find_same_item_in_storge['st_availble']:=form18.query_find_same_item_in_storge['st_availble']+no_of_retrived;
form18.query_find_same_item_in_storge.Post;
end//7
else
begin//8
form18.Query_max_st_no.Close;
form18.Query_max_st_no.Prepare;
form18.Query_max_st_no.Open;
form18.Query_save_in_storge.Close;
form18.Query_save_in_storge.Prepare;
form18.Query_save_in_storge.Open;
form18.Query_save_in_storge.Append;
if(form18.Query_max_st_no['max']=null)then
begin//9
form18.Query_save_in_storge['st_no']:=1;
end//9
else
begin//10
form18.Query_save_in_storge['st_no']:=form18.Query_max_st_no['max']+1;
end;//10
form18.Query_save_in_storge['st_kind']:=edit2.Text;
form18.Query_save_in_storge['st_type']:=edit6.Text;
form18.Query_save_in_storge['st_quantity']:=no_of_retrived;
form18.Query_save_in_storge['st_availble']:=no_of_retrived;
form18.Query_save_in_storge['st_type_pay']:=edit5.Text;
form18.Query_save_in_storge['st_type_sale']:=edit4.Text;
form18.Query_save_in_storge['st_stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
form18.Query_save_in_storge['no_in_gain_table']:=form18.Query_search_in_gain_table['no_in_storge'];
form18.Query_save_in_storge['shelf_no']:=edit1.Text;
form18.Query_save_in_storge.Post;
end;//8
retrive:=retrive-no_of_retrived;

form18.Query_search_in_gain_table.Post;
end;//**
end//6
else
begin//7
if(retrive>form18.Query_search_in_gain_table['quantity'])then
begin//11
amount_retrived:=retrive-(form18.Query_search_in_gain_table['quantity']-form18.Query_search_in_gain_table['availble']);
retrive:=retrive-amount_retrived;
form18.Query_search_in_gain_table.Edit;
form18.Query_search_in_gain_table['total_budget']:=0;
form18.Query_search_in_gain_table['availble']:=form18.Query_search_in_gain_table['quantity'];
form18.Query_search_in_gain_table['wining']:=0;
form18.query_find_same_item_in_storge.Close;
form18.query_find_same_item_in_storge.Prepare;
form18.query_find_same_item_in_storge.Params[0].Value:=form18.Query_search_in_gain_table['no_in_storge'];
form18.query_find_same_item_in_storge.Params[1].Value:=form18.Query_search_in_gain_table['quantity'];
form18.query_find_same_item_in_storge.Open;
if(form18.query_find_same_item_in_storge.RecordCount<>0)then
begin//7
form18.query_find_same_item_in_storge.Edit;
form18.query_find_same_item_in_storge['st_availble']:=form18.Query_search_in_gain_table['quantity'];
form18.query_find_same_item_in_storge.Post;
end//7
else
begin//8
form18.Query_max_st_no.Close;
form18.Query_max_st_no.Prepare;
form18.Query_max_st_no.Open;
form18.Query_save_in_storge.Close;
form18.Query_save_in_storge.Prepare;
form18.Query_save_in_storge.Open;
form18.Query_save_in_storge.append;
if(form18.Query_max_st_no['max']=null)then
begin//9
form18.Query_save_in_storge['st_no']:=1;
end//9
else
begin//10
form18.Query_save_in_storge['st_no']:=form18.Query_max_st_no['max']+1;
end;//10
form18.Query_save_in_storge['st_kind']:=edit2.Text;
form18.Query_save_in_storge['st_type']:=edit6.Text;
form18.Query_save_in_storge['st_quantity']:=amount_retrived;
form18.Query_save_in_storge['st_availble']:=amount_retrived;
form18.Query_save_in_storge['st_type_pay']:=edit5.Text;
form18.Query_save_in_storge['st_type_sale']:=edit4.Text;
form18.Query_save_in_storge['st_stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
form18.Query_save_in_storge['no_in_gain_table']:=form18.Query_search_in_gain_table['no_in_storge'];
form18.Query_save_in_storge['shelf_no']:=edit1.Text;
end;//8
form18.Query_save_in_storge.Post;
form18.Query_search_in_gain_table.Post;
end;//11
end;//7
form18.Query_search_in_gain_table.Next;
end;//5
end//3
else
begin//4
retrive:=0;
form18.Query_max_no_in_storge_in_storge.Close;
form18.Query_max_no_in_storge_in_storge.Prepare;
form18.Query_max_no_in_storge_in_storge.Open;
form18.Query_max_num_in_gain.Close;
form18.Query_max_num_in_gain.Prepare;
form18.Query_max_num_in_gain.Open;
form18.Query_max_st_no.Close;
form18.Query_max_st_no.Prepare;
form18.Query_max_st_no.Open;
form18.Query_save_in_gain.Close;
form18.Query_save_in_gain.Prepare;
form18.Query_save_in_gain.Open;
form18.Query_save_in_gain.Append;
if(form18.Query_max_num_in_gain['max']=null)then
begin
form18.Query_save_in_gain['num']:=1;
end
else
begin
form18.Query_save_in_gain['num']:=form18.Query_max_num_in_gain['max']+1;
end;
form18.Query_save_in_gain['kind']:=edit2.Text;
form18.Query_save_in_gain['type_name']:=edit6.Text;
form18.Query_save_in_gain['availble']:=edit3.Text;
form18.Query_save_in_gain['quantity']:=edit3.Text;
form18.Query_save_in_gain['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
form18.Query_save_in_gain['sale_price']:=edit4.Text;
form18.Query_save_in_gain['buy_price']:=edit5.Text;
buy_price:=strtofloat(edit5.Text);
form18.Query_save_in_gain['total_buy_price']:=buy_price*strtoint(edit3.Text);
form18.Query_save_in_gain['total_budget']:=0;
form18.Query_save_in_gain['wining']:=0;
if(form18.Query_max_no_in_storge_in_storge['max']=null)then
begin
form18.Query_save_in_gain['no_in_storge']:=1;
end
else
begin
form18.Query_save_in_gain['no_in_storge']:=form18.Query_max_no_in_storge_in_storge['max']+1;
end;
form18.Query_save_in_storge.Close;
form18.Query_save_in_storge.Prepare;
form18.Query_save_in_storge.Open;
form18.Query_save_in_storge.Append;
if(form18.Query_max_st_no['max']=null)then
begin
form18.Query_save_in_storge['st_no']:=1;
end
else
begin
form18.Query_save_in_storge['st_no']:=form18.Query_max_st_no['max']+1;
end;
form18.Query_save_in_storge['st_kind']:=edit2.Text;
form18.Query_save_in_storge['st_type']:=edit6.Text;
form18.Query_save_in_storge['st_quantity']:=edit3.Text;
form18.Query_save_in_storge['st_availble']:=edit3.Text;
form18.Query_save_in_storge['st_type_pay']:=edit5.Text;
form18.Query_save_in_storge['st_type_sale']:=edit4.Text;
form18.Query_save_in_storge['st_stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
form18.Query_save_in_storge['shelf_no']:=edit1.Text;
form18.Query_save_in_storge['no_in_gain_table']:=form18.Query_save_in_gain['no_in_storge'];
form18.Query_save_in_storge.Post;
form18.Query_save_in_gain.Post;



end;//4
if(retrive>0)then
begin//+++

form18.Query_max_no_in_storge_in_storge.Close;
form18.Query_max_no_in_storge_in_storge.Prepare;
form18.Query_max_no_in_storge_in_storge.Open;
form18.Query_max_num_in_gain.Close;
form18.Query_max_num_in_gain.Prepare;
form18.Query_max_num_in_gain.Open;
form18.Query_max_st_no.Close;
form18.Query_max_st_no.Prepare;
form18.Query_max_st_no.Open;
form18.Query_save_in_gain.Close;
form18.Query_save_in_gain.Prepare;
form18.Query_save_in_gain.Open;
form18.Query_save_in_gain.Append;
if(form18.Query_max_num_in_gain['max']=null)then
begin
form18.Query_save_in_gain['num']:=1;
end
else
begin
form18.Query_save_in_gain['num']:=form18.Query_max_num_in_gain['max']+1;
end;
form18.Query_save_in_gain['kind']:=edit2.Text;
form18.Query_save_in_gain['type_name']:=edit6.Text;
form18.Query_save_in_gain['availble']:=retrive;
form18.Query_save_in_gain['quantity']:=retrive;
form18.Query_save_in_gain['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
form18.Query_save_in_gain['sale_price']:=edit4.Text;
form18.Query_save_in_gain['buy_price']:=edit5.Text;
buy_price:=strtofloat(edit5.Text);
form18.Query_save_in_gain['total_buy_price']:=buy_price*retrive;
form18.Query_save_in_gain['total_budget']:=0;
form18.Query_save_in_gain['wining']:=0;
if(form18.Query_max_no_in_storge_in_storge['max']=null)then
begin
form18.Query_save_in_gain['no_in_storge']:=1;
end
else
begin
form18.Query_save_in_gain['no_in_storge']:=form18.Query_max_no_in_storge_in_storge['max']+1;
end;
form18.Query_save_in_storge.Close;
form18.Query_save_in_storge.Prepare;
form18.Query_save_in_storge.Open;
form18.Query_save_in_storge.Append;
if(form18.Query_max_st_no['max']=null)then
begin
form18.Query_save_in_storge['st_no']:=1;
end
else
begin
form18.Query_save_in_storge['st_no']:=form18.Query_max_st_no['max']+1;
end;
form18.Query_save_in_storge['st_kind']:=edit2.Text;
form18.Query_save_in_storge['st_type']:=edit6.Text;
form18.Query_save_in_storge['st_quantity']:=retrive;
form18.Query_save_in_storge['st_availble']:=retrive;
form18.Query_save_in_storge['st_type_pay']:=edit5.Text;
form18.Query_save_in_storge['st_type_sale']:=edit4.Text;
form18.Query_save_in_storge['st_stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
form18.Query_save_in_storge['shelf_no']:=edit1.Text;
form18.Query_save_in_storge['no_in_gain_table']:=form18.Query_save_in_gain['no_in_storge'];
form18.Query_save_in_storge.Post;
form18.Query_save_in_gain.Post;



end;//+++
retrive_to_discount:=sale_price * strtoint(edit3.Text);
Query_caundition_to_retrive.Close;
Query_caundition_to_retrive.Prepare;
Query_caundition_to_retrive.Params[0].Value:=dbgrid1.Fields[7].AsInteger;
Query_caundition_to_retrive.Open;
if(Query_caundition_to_retrive['debt_value']= retrive_to_discount) then
begin
Query_caundition_to_retrive.Delete;
end
else
begin
if(Query_caundition_to_retrive['debt_value']< retrive_to_discount) then
begin
form18.Query_max_retreive_table_serial.Close;
form18.Query_max_retreive_table_serial.Prepare;
form18.Query_max_retreive_table_serial.open;
form18.Query_save_in_retrive_table.Close;
form18.Query_save_in_retrive_table.Prepare;
form18.Query_save_in_retrive_table.Open;
form18.Query_save_in_retrive_table.Append;
if(form18.Query_max_retreive_table_serial['max']=null)then
begin
form18.Query_save_in_retrive_table['serial_no']:=1;
end
else
begin
form18.Query_save_in_retrive_table['serial_no']:=form18.Query_max_retreive_table_serial['max']+1;
end;
form18.Query_save_in_retrive_table['money']:=retrive_to_discount - Query_caundition_to_retrive['debt_value'];
form18.Query_save_in_retrive_table['day_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form18.Query_save_in_retrive_table.Post;
Query_caundition_to_retrive.Delete;
end
else
begin
if(Query_caundition_to_retrive['debt_value']> retrive_to_discount) then
begin
Query_caundition_to_retrive.Edit;
Query_caundition_to_retrive['debt_value']:=Query_caundition_to_retrive['debt_value'] - retrive_to_discount;
Query_caundition_to_retrive.Post;
end;
end;
end;
end;//2
edit2.Text:='';
edit6.Text:='';
edit4.Text:='';
edit5.Text:='';
edit7.Text:='';
edit3.Text:='';
edit1.Text:='';
///////////////////////////////////
form19.Query_data_from_temp_for_all_debts.Close;
form19.Query_data_from_temp_for_all_debts.Prepare;
form19.Query_data_from_temp_for_all_debts.Open;
while(not(form19.Query_data_from_temp_for_all_debts.Eof))do
begin
form19.Query_data_from_temp_for_all_debts.Delete;
end;
form19.Query_bring_payno_from_debt.Close;
form19.Query_bring_payno_from_debt.Prepare;
form19.Query_bring_payno_from_debt.Params[0].Value:=label2.Caption;
form19.Query_bring_payno_from_debt.Open;
while(not(form19.Query_bring_payno_from_debt.Eof))do
begin //1
form19.Query_bring_data_from_daily_store_and_save_it.Close;
form19.Query_bring_data_from_daily_store_and_save_it.Prepare;
form19.Query_bring_data_from_daily_store_and_save_it.Params[0].Value:=form19.Query_bring_payno_from_debt['num_in_daily_sale'];
form19.Query_bring_data_from_daily_store_and_save_it.Open;
while(not(form19.Query_bring_data_from_daily_store_and_save_it.Eof))do
begin //2
form19.Query_max_from_temp.Close;
form19.Query_max_from_temp.Prepare;
form19.Query_max_from_temp.Open;
form19.Query_data_from_temp_for_all_debts.Close;
form19.Query_data_from_temp_for_all_debts.Prepare;
form19.Query_data_from_temp_for_all_debts.Open;
form19.Query_data_from_temp_for_all_debts.Append;
if(form19.Query_max_from_temp['max']=null)then
begin//3
form19.Query_data_from_temp_for_all_debts['serial']:=1;
end//3
else
begin//4
form19.Query_data_from_temp_for_all_debts['serial']:=form19.Query_max_from_temp['max']+1;
end;//4
form19.Query_data_from_temp_for_all_debts['kind_name']:=form19.Query_bring_data_from_daily_store_and_save_it['ds_name_kind'];
form19.Query_data_from_temp_for_all_debts['type_name']:=form19.Query_bring_data_from_daily_store_and_save_it['ds_name_type'];
form19.Query_data_from_temp_for_all_debts['daily_date']:=form19.Query_bring_data_from_daily_store_and_save_it['ds_date'];
form19.Query_data_from_temp_for_all_debts['quantity']:=form19.Query_bring_data_from_daily_store_and_save_it['ds_quantity'];
form19.Query_data_from_temp_for_all_debts['piece_price']:=form19.Query_bring_data_from_daily_store_and_save_it['ds_price'];
form19.Query_data_from_temp_for_all_debts['total_price_for_peice']:=form19.Query_bring_data_from_daily_store_and_save_it['total_price'];
form19.Query_data_from_temp_for_all_debts['receiver_name']:=form19.Query_bring_data_from_daily_store_and_save_it['reciver_name'];
form19.Query_data_from_temp_for_all_debts['pay_no_in_daily_sale']:=form19.Query_bring_data_from_daily_store_and_save_it['pay_num'];
form19.Query_data_from_temp_for_all_debts.Post;
form19.Query_bring_data_from_daily_store_and_save_it.Next;
end;//2
form19.Query_bring_payno_from_debt.Next;
end;//1
bitbtn3.Enabled:=false;
form19.Query_data_from_temp_for_all_debts.Close;
form19.Query_data_from_temp_for_all_debts.Open;
end;

end.
