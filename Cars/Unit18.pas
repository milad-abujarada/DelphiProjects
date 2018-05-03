unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, DB, DBTables;

type
  TForm18 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DateTimePicker1: TDateTimePicker;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    DataSource1: TDataSource;
    Query_search_in_gain_table: TQuery;
    Query_search_in_gain_tableNUM: TIntegerField;
    Query_search_in_gain_tableKIND: TStringField;
    Query_search_in_gain_tableTYPE_NAME: TStringField;
    Query_search_in_gain_tableQUANTITY: TIntegerField;
    Query_search_in_gain_tableAVAILBLE: TIntegerField;
    Query_search_in_gain_tableTOTAL_BUDGET: TFloatField;
    Query_search_in_gain_tableINPUT_DATE: TStringField;
    Query_search_in_gain_tableSALE_PRICE: TFloatField;
    Query_search_in_gain_tableBUY_PRICE: TFloatField;
    Query_search_in_gain_tableTOTAL_BUY_PRICE: TFloatField;
    Query_search_in_gain_tableNO_IN_STORGE: TIntegerField;
    Query_search_in_gain_tableWINING: TFloatField;
    query_find_same_item_in_storge: TQuery;
    DataSource2: TDataSource;
    query_find_same_item_in_storgeST_NO: TIntegerField;
    query_find_same_item_in_storgeST_KIND: TStringField;
    query_find_same_item_in_storgeST_TYPE: TStringField;
    query_find_same_item_in_storgeST_QUANTITY: TIntegerField;
    query_find_same_item_in_storgeST_TYPE_PAY: TFloatField;
    query_find_same_item_in_storgeST_TYPE_SALE: TFloatField;
    query_find_same_item_in_storgeST_AVAILBLE: TIntegerField;
    query_find_same_item_in_storgeST_STORED_DATE: TStringField;
    query_find_same_item_in_storgeSHELF_NO: TIntegerField;
    query_find_same_item_in_storgeNO_IN_GAIN_TABLE: TIntegerField;
    DataSource3: TDataSource;
    Query_save_in_storge: TQuery;
    Query_save_in_storgeST_NO: TIntegerField;
    Query_save_in_storgeST_KIND: TStringField;
    Query_save_in_storgeST_TYPE: TStringField;
    Query_save_in_storgeST_QUANTITY: TIntegerField;
    Query_save_in_storgeST_TYPE_PAY: TFloatField;
    Query_save_in_storgeST_TYPE_SALE: TFloatField;
    Query_save_in_storgeST_AVAILBLE: TIntegerField;
    Query_save_in_storgeST_STORED_DATE: TStringField;
    Query_save_in_storgeSHELF_NO: TIntegerField;
    Query_save_in_storgeNO_IN_GAIN_TABLE: TIntegerField;
    Query_max_st_no: TQuery;
    DataSource4: TDataSource;
    Query_max_st_noMAX: TIntegerField;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    DataSource5: TDataSource;
    Query_save_in_gain: TQuery;
    Query_save_in_gainNUM: TIntegerField;
    Query_save_in_gainKIND: TStringField;
    Query_save_in_gainTYPE_NAME: TStringField;
    Query_save_in_gainQUANTITY: TIntegerField;
    Query_save_in_gainAVAILBLE: TIntegerField;
    Query_save_in_gainTOTAL_BUDGET: TFloatField;
    Query_save_in_gainINPUT_DATE: TStringField;
    Query_save_in_gainSALE_PRICE: TFloatField;
    Query_save_in_gainBUY_PRICE: TFloatField;
    Query_save_in_gainTOTAL_BUY_PRICE: TFloatField;
    Query_save_in_gainNO_IN_STORGE: TIntegerField;
    Query_save_in_gainWINING: TFloatField;
    Query_max_num_in_gain: TQuery;
    DataSource6: TDataSource;
    Query_max_num_in_gainMAX: TIntegerField;
    DataSource7: TDataSource;
    Query_max_no_in_storge_in_storge: TQuery;
    Query_max_no_in_storge_in_storgeMAX: TIntegerField;
    query_bring_types: TQuery;
    DataSource8: TDataSource;
    DataSource9: TDataSource;
    Query_bring_kinds: TQuery;
    Query_bring_kindsKIND_NO: TIntegerField;
    Query_bring_kindsKINDS_NAME: TStringField;
    Query_bring_kindsKINDS_NOSTS: TStringField;
    BitBtn2: TBitBtn;
    DataSource10: TDataSource;
    Query_save_in_retrive_table: TQuery;
    Query_save_in_retrive_tableSERIAL_NO: TIntegerField;
    Query_save_in_retrive_tableMONEY: TIntegerField;
    Query_save_in_retrive_tableDAY_DATE: TStringField;
    Query_max_retreive_table_serial: TQuery;
    DataSource11: TDataSource;
    Query_max_retreive_table_serialMAX: TIntegerField;
    Label8: TLabel;
    query_bring_typesTYPE_NO: TIntegerField;
    query_bring_typesTYPE_NAME: TStringField;
    query_bring_typesTYPE_NOTES: TStringField;
    query_bring_typesTYPE_KIND: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm18.BitBtn1Click(Sender: TObject);
var
amount_retrived,retrive,n,no_of_retrived:integer;
sale_price,buy_price:variant;
begin//1
n:=application.messagebox('Â·  —Ìœ «—Ã«⁄ «·ﬂ„Ì…','„‰ŸÊ„… «·Õ”«»« ',mb_iconquestion+mb_yesno);
if(n=id_yes)then
begin//2
////////////////////////
if (combobox1.Text='') then
begin //*
application.MessageBox('«·—Ã«¡ «Œ Ì«— «”„ «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if (combobox2.Text='') then
begin //*
application.MessageBox('«·—Ã«¡ «Œ Ì«— «”„ «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if (edit3.Text='') then
begin //*
application.MessageBox('«·—Ã«¡ «œŒ«· «·ﬂ„Ì… «·„—Ã⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit3.SetFocus;
exit;
end;
if (edit5.Text='') then
begin //*
application.MessageBox('«·—Ã«¡ «œŒ«· ”⁄— ‘—«¡ «·ÊÕœ…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit5.SetFocus;
exit;
end;
if (edit4.Text='') then
begin //*
application.MessageBox('«·—Ã«¡«œŒ«· ”⁄— «·»Ì⁄ ··ÊÕœ…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit4.SetFocus;
exit;
end;
/////////////////////////////////
retrive:=strtoint(edit3.Text);
sale_price:=strtofloat(edit4.Text);
buy_price:=strtofloat(edit5.Text);
Query_search_in_gain_table.Close;
Query_search_in_gain_table.Prepare;
Query_search_in_gain_table.Params[0].Value:=combobox1.Text;
Query_search_in_gain_table.Params[1].Value:=combobox2.Text;
Query_search_in_gain_table.Open;
if(Query_search_in_gain_table.RecordCount<>0)then
begin//3
while((not(Query_search_in_gain_table.Eof))and (retrive>0))do
begin//5
no_of_retrived:=Query_search_in_gain_table['quantity']-Query_search_in_gain_table['availble'];
if(retrive<=Query_search_in_gain_table['quantity']) then
begin//6
if(no_of_retrived>=retrive)then
begin//*
query_find_same_item_in_storge.Close;
query_find_same_item_in_storge.Prepare;
query_find_same_item_in_storge.Params[0].Value:=Query_search_in_gain_table['no_in_storge'];
query_find_same_item_in_storge.Params[1].Value:=Query_search_in_gain_table['quantity'];
query_find_same_item_in_storge.Open;
Query_search_in_gain_table.Edit;
Query_search_in_gain_table['total_budget']:=Query_search_in_gain_table['total_budget']-(retrive*sale_price);
Query_search_in_gain_table['availble']:=Query_search_in_gain_table['availble']+retrive;
Query_search_in_gain_table['wining']:=(Query_search_in_gain_table['wining']-((sale_price-buy_price)*retrive));
if(query_find_same_item_in_storge.RecordCount<>0)then
begin//7
query_find_same_item_in_storge.Edit;
query_find_same_item_in_storge['st_availble']:=query_find_same_item_in_storge['st_availble']+retrive;
query_find_same_item_in_storge.Post;
end//7
else
begin//8
Query_max_st_no.Close;
Query_max_st_no.Prepare;
Query_max_st_no.Open;
Query_save_in_storge.Close;
Query_save_in_storge.Prepare;
Query_save_in_storge.Open;
Query_save_in_storge.Append;
if(Query_max_st_no['max']=null)then
begin//9
Query_save_in_storge['st_no']:=1;
end//9
else
begin//10
Query_save_in_storge['st_no']:=Query_max_st_no['max']+1;
end;//10
Query_save_in_storge['st_kind']:=combobox1.Text;
Query_save_in_storge['st_type']:=combobox2.Text;
Query_save_in_storge['st_quantity']:=edit3.Text;
Query_save_in_storge['st_availble']:=edit3.Text;
Query_save_in_storge['st_type_pay']:=edit5.Text;
Query_save_in_storge['st_type_sale']:=edit4.Text;
Query_save_in_storge['st_stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
Query_save_in_storge['no_in_gain_table']:=Query_search_in_gain_table['no_in_storge'];
Query_save_in_storge['shelf_no']:=edit1.Text;
Query_save_in_storge.Post;
end;//8
retrive:=0;

Query_search_in_gain_table.Post;
end//*
else
begin //**
query_find_same_item_in_storge.Close;
query_find_same_item_in_storge.Prepare;
query_find_same_item_in_storge.Params[0].Value:=Query_search_in_gain_table['no_in_storge'];
query_find_same_item_in_storge.Params[1].Value:=Query_search_in_gain_table['quantity'];
query_find_same_item_in_storge.Open;
Query_search_in_gain_table.Edit;
Query_search_in_gain_table['total_budget']:=Query_search_in_gain_table['total_budget']-(no_of_retrived*sale_price);
Query_search_in_gain_table['availble']:=Query_search_in_gain_table['availble']+no_of_retrived;
Query_search_in_gain_table['wining']:=(Query_search_in_gain_table['wining']-((sale_price-buy_price)*no_of_retrived));
if(query_find_same_item_in_storge.RecordCount<>0)then
begin//7
query_find_same_item_in_storge.Edit;
query_find_same_item_in_storge['st_availble']:=query_find_same_item_in_storge['st_availble']+no_of_retrived;
query_find_same_item_in_storge.Post;
end//7
else
begin//8
Query_max_st_no.Close;
Query_max_st_no.Prepare;
Query_max_st_no.Open;
Query_save_in_storge.Close;
Query_save_in_storge.Prepare;
Query_save_in_storge.Open;
Query_save_in_storge.Append;
if(Query_max_st_no['max']=null)then
begin//9
Query_save_in_storge['st_no']:=1;
end//9
else
begin//10
Query_save_in_storge['st_no']:=Query_max_st_no['max']+1;
end;//10
Query_save_in_storge['st_kind']:=combobox1.Text;
Query_save_in_storge['st_type']:=combobox2.Text;
Query_save_in_storge['st_quantity']:=no_of_retrived;
Query_save_in_storge['st_availble']:=no_of_retrived;
Query_save_in_storge['st_type_pay']:=edit5.Text;
Query_save_in_storge['st_type_sale']:=edit4.Text;
Query_save_in_storge['st_stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
Query_save_in_storge['no_in_gain_table']:=Query_search_in_gain_table['no_in_storge'];
Query_save_in_storge['shelf_no']:=edit1.Text;
Query_save_in_storge.Post;
end;//8
retrive:=retrive-no_of_retrived;

Query_search_in_gain_table.Post;
end;//**
end//6
else
begin//7
if(retrive>Query_search_in_gain_table['quantity'])then
begin//11
amount_retrived:=retrive-(Query_search_in_gain_table['quantity']-Query_search_in_gain_table['availble']);
retrive:=retrive-amount_retrived;
Query_search_in_gain_table.Edit;
Query_search_in_gain_table['total_budget']:=0;
Query_search_in_gain_table['availble']:=Query_search_in_gain_table['quantity'];
Query_search_in_gain_table['wining']:=0;
query_find_same_item_in_storge.Close;
query_find_same_item_in_storge.Prepare;
query_find_same_item_in_storge.Params[0].Value:=Query_search_in_gain_table['no_in_storge'];
query_find_same_item_in_storge.Params[1].Value:=Query_search_in_gain_table['quantity'];
query_find_same_item_in_storge.Open;
if(query_find_same_item_in_storge.RecordCount<>0)then
begin//7
query_find_same_item_in_storge.Edit;
query_find_same_item_in_storge['st_availble']:=Query_search_in_gain_table['quantity'];
query_find_same_item_in_storge.Post;
end//7
else
begin//8
Query_max_st_no.Close;
Query_max_st_no.Prepare;
Query_max_st_no.Open;
Query_save_in_storge.Close;
Query_save_in_storge.Prepare;
Query_save_in_storge.Open;
Query_save_in_storge.append;
if(Query_max_st_no['max']=null)then
begin//9
Query_save_in_storge['st_no']:=1;
end//9
else
begin//10
Query_save_in_storge['st_no']:=Query_max_st_no['max']+1;
end;//10
Query_save_in_storge['st_kind']:=combobox1.Text;
Query_save_in_storge['st_type']:=combobox2.Text;
Query_save_in_storge['st_quantity']:=amount_retrived;
Query_save_in_storge['st_availble']:=amount_retrived;
Query_save_in_storge['st_type_pay']:=edit5.Text;
Query_save_in_storge['st_type_sale']:=edit4.Text;
Query_save_in_storge['st_stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
Query_save_in_storge['no_in_gain_table']:=Query_search_in_gain_table['no_in_storge'];
Query_save_in_storge['shelf_no']:=edit1.Text;
end;//8
Query_save_in_storge.Post;
Query_search_in_gain_table.Post;
end;//11
end;//7
Query_search_in_gain_table.Next;
end;//5
end//3
else
begin//4
retrive:=0;
Query_max_no_in_storge_in_storge.Close;
Query_max_no_in_storge_in_storge.Prepare;
Query_max_no_in_storge_in_storge.Open;
Query_max_num_in_gain.Close;
Query_max_num_in_gain.Prepare;
Query_max_num_in_gain.Open;
Query_max_st_no.Close;
Query_max_st_no.Prepare;
Query_max_st_no.Open;
Query_save_in_gain.Close;
Query_save_in_gain.Prepare;
Query_save_in_gain.Open;
Query_save_in_gain.Append;
if(Query_max_num_in_gain['max']=null)then
begin
Query_save_in_gain['num']:=1;
end
else
begin
Query_save_in_gain['num']:=Query_max_num_in_gain['max']+1;
end;
Query_save_in_gain['kind']:=combobox1.Text;
Query_save_in_gain['type_name']:=combobox2.Text;
Query_save_in_gain['availble']:=edit3.Text;
Query_save_in_gain['quantity']:=edit3.Text;
Query_save_in_gain['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
Query_save_in_gain['sale_price']:=edit4.Text;
Query_save_in_gain['buy_price']:=edit5.Text;
buy_price:=strtofloat(edit5.Text);
Query_save_in_gain['total_buy_price']:=buy_price*strtoint(edit3.Text);
Query_save_in_gain['total_budget']:=0;
Query_save_in_gain['wining']:=0;
if(Query_max_no_in_storge_in_storge['max']=null)then
begin
Query_save_in_gain['no_in_storge']:=1;
end
else
begin
Query_save_in_gain['no_in_storge']:=Query_max_no_in_storge_in_storge['max']+1;
end;
Query_save_in_storge.Close;
Query_save_in_storge.Prepare;
Query_save_in_storge.Open;
Query_save_in_storge.Append;
if(Query_max_st_no['max']=null)then
begin
Query_save_in_storge['st_no']:=1;
end
else
begin
Query_save_in_storge['st_no']:=Query_max_st_no['max']+1;
end;
Query_save_in_storge['st_kind']:=combobox1.Text;
Query_save_in_storge['st_type']:=combobox2.Text;
Query_save_in_storge['st_quantity']:=edit3.Text;
Query_save_in_storge['st_availble']:=edit3.Text;
Query_save_in_storge['st_type_pay']:=edit5.Text;
Query_save_in_storge['st_type_sale']:=edit4.Text;
Query_save_in_storge['st_stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
Query_save_in_storge['shelf_no']:=edit1.Text;
Query_save_in_storge['no_in_gain_table']:=Query_save_in_gain['no_in_storge'];
Query_save_in_storge.Post;
Query_save_in_gain.Post;



end;//4
if(retrive>0)then
begin//+++

Query_max_no_in_storge_in_storge.Close;
Query_max_no_in_storge_in_storge.Prepare;
Query_max_no_in_storge_in_storge.Open;
Query_max_num_in_gain.Close;
Query_max_num_in_gain.Prepare;
Query_max_num_in_gain.Open;
Query_max_st_no.Close;
Query_max_st_no.Prepare;
Query_max_st_no.Open;
Query_save_in_gain.Close;
Query_save_in_gain.Prepare;
Query_save_in_gain.Open;
Query_save_in_gain.Append;
if(Query_max_num_in_gain['max']=null)then
begin
Query_save_in_gain['num']:=1;
end
else
begin
Query_save_in_gain['num']:=Query_max_num_in_gain['max']+1;
end;
Query_save_in_gain['kind']:=combobox1.Text;
Query_save_in_gain['type_name']:=combobox2.Text;
Query_save_in_gain['availble']:=retrive;
Query_save_in_gain['quantity']:=retrive;
Query_save_in_gain['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
Query_save_in_gain['sale_price']:=edit4.Text;
Query_save_in_gain['buy_price']:=edit5.Text;
buy_price:=strtofloat(edit5.Text);
Query_save_in_gain['total_buy_price']:=buy_price*retrive;
Query_save_in_gain['total_budget']:=0;
Query_save_in_gain['wining']:=0;
if(Query_max_no_in_storge_in_storge['max']=null)then
begin
Query_save_in_gain['no_in_storge']:=1;
end
else
begin
Query_save_in_gain['no_in_storge']:=Query_max_no_in_storge_in_storge['max']+1;
end;
Query_save_in_storge.Close;
Query_save_in_storge.Prepare;
Query_save_in_storge.Open;
Query_save_in_storge.Append;
if(Query_max_st_no['max']=null)then
begin
Query_save_in_storge['st_no']:=1;
end
else
begin
Query_save_in_storge['st_no']:=Query_max_st_no['max']+1;
end;
Query_save_in_storge['st_kind']:=combobox1.Text;
Query_save_in_storge['st_type']:=combobox2.Text;
Query_save_in_storge['st_quantity']:=retrive;
Query_save_in_storge['st_availble']:=retrive;
Query_save_in_storge['st_type_pay']:=edit5.Text;
Query_save_in_storge['st_type_sale']:=edit4.Text;
Query_save_in_storge['st_stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
Query_save_in_storge['shelf_no']:=edit1.Text;
Query_save_in_storge['no_in_gain_table']:=Query_save_in_gain['no_in_storge'];
Query_save_in_storge.Post;
Query_save_in_gain.Post;



end;//+++
Query_max_retreive_table_serial.Close;
Query_max_retreive_table_serial.Prepare;
Query_max_retreive_table_serial.open;
Query_save_in_retrive_table.Close;
Query_save_in_retrive_table.Prepare;
Query_save_in_retrive_table.Open;
Query_save_in_retrive_table.Append;
if(Query_max_retreive_table_serial['max']=null)then
begin
Query_save_in_retrive_table['serial_no']:=1;
end
else
begin
Query_save_in_retrive_table['serial_no']:=Query_max_retreive_table_serial['max']+1;
end;
sale_price:=strtofloat(edit4.Text);
Query_save_in_retrive_table['money']:=(strtoint(edit3.Text) * sale_price);
Query_save_in_retrive_table['day_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_save_in_retrive_table.Post;
end;//2
ComboBox1.ClearSelection;
ComboBox2.ClearSelection;
edit1.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
{

Query_total_quantity.Close;
Query_total_quantity.Prepare;
Query_total_quantity.Params[0].Value:=;

Query_search_in_gain_table.Close;
Query_search_in_gain_table.Prepare;
Query_search_in_gain_table.Params[0].Value:=;
Query_search_in_gain_table.Params[1].Value:=;
Query_search_in_gain_table.Open;
if (Query_search_in_gain_table.RecordCount<>0)then
begin //3
Query_search_in_gain_table.Edit;
if (Query_search_in_gain_table['quantity']> strtoint(edit3.Text))then
begin//5
Query_search_in_gain_table['availble']:=Query_search_in_gain_table['availble']- strtoint(edit3.Text);

end//5
end//3
else
begin//4

end;//4

}
end;//1

procedure TForm18.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=now;
combobox1.Clear;
Query_bring_kinds.Close;
Query_bring_kinds.Prepare;
Query_bring_kinds.Open;
while(not(Query_bring_kinds.Eof)) do
begin
combobox1.Items.Add(Query_bring_kinds['kinds_name']);
Query_bring_kinds.Next;
end;
end;

procedure TForm18.ComboBox1Click(Sender: TObject);
begin
combobox2.Clear;
query_bring_types.Close;
query_bring_types.Prepare;
query_bring_types.Params[0].Value:=combobox1.Text;
query_bring_types.Open;
while(not(query_bring_types.Eof))do
begin
combobox2.Items.Add(query_bring_types['type_name']);
query_bring_types.Next;
end;
end;

procedure TForm18.BitBtn2Click(Sender: TObject);
begin
form18.Hide;
form1.Show;
end;

end.
