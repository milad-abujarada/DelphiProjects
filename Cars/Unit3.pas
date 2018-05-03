unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, ComCtrls, DB,
  DBTables;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DateTimePicker1: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit8: TEdit;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    DBGrid3: TDBGrid;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    Label13: TLabel;
    Edit9: TEdit;
    Label14: TLabel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Label15: TLabel;
    Edit10: TEdit;
    BitBtn5: TBitBtn;
    Edit11: TEdit;
    Query_pring_kinds_tosale: TQuery;
    DataSource1: TDataSource;
    Query_pring_kinds_tosaleKIND_NO: TIntegerField;
    Query_pring_kinds_tosaleKINDS_NAME: TStringField;
    Query_pring_kinds_tosaleKINDS_NOSTS: TStringField;
    Query_bring_fromstorg: TQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Query_total_availble: TQuery;
    Query_total_availbleSUM: TIntegerField;
    DataSource2: TDataSource;
    Query_bring_types_to_sale: TQuery;
    DBGrid2: TDBGrid;
    DataSource5: TDataSource;
    Query_bring_customers: TQuery;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    Query_sava_in_daily_store: TQuery;
    DataSource8: TDataSource;
    Query_discount_from_storge: TQuery;
    DataSource9: TDataSource;
    Query_save_in_debts: TQuery;
    Query_save_in_debtsDEBT_NO: TIntegerField;
    Query_save_in_debtsDEBT_CUS_NAME: TStringField;
    Query_save_in_debtsDEBT_DATE: TStringField;
    Query_save_in_debtsDEBT_VALUE: TFloatField;
    DataSource10: TDataSource;
    Query_save_in_temp_for_hole_sale: TQuery;
    Label12: TLabel;
    Edit1: TEdit;
    DataSource11: TDataSource;
    Query_all_value_from_temp: TQuery;
    ComboBox2: TComboBox;
    Label17: TLabel;
    Edit3: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    DateTimePicker2: TDateTimePicker;
    DataSource12: TDataSource;
    Query_save_in_daily_sale_for_hole: TQuery;
    Query_save_in_daily_sale_for_holeALL_VALUE: TFloatField;
    Query_save_in_daily_sale_for_holeDAILY_DATE: TStringField;
    Query_save_in_daily_sale_for_holePAIED_VALUE: TFloatField;
    Query_save_in_daily_sale_for_holeREMAINING_VALUE: TFloatField;
    Query_save_in_daily_sale_for_holeCUS_NAME: TStringField;
    Query_save_in_daily_sale_for_holeSERIAL: TIntegerField;
    RadioButton7: TRadioButton;
    Label9: TLabel;
    Edit6: TEdit;
    Query_bring_pay_num: TQuery;
    Query_bring_pay_numMAX: TIntegerField;
    Query_all_value_from_tempSUM: TFloatField;
    Query_save_in_temp_for_hole_saleBILLS_NO: TIntegerField;
    Query_save_in_temp_for_hole_saleBILLS_QUANTITY: TIntegerField;
    Query_save_in_temp_for_hole_saleBILLS_PRICE: TFloatField;
    Query_save_in_temp_for_hole_saleBILLS_DATE: TStringField;
    Query_save_in_temp_for_hole_saleBILLS_TYPE: TStringField;
    Query_save_in_temp_for_hole_saleBILLS_KIND: TStringField;
    Query_save_in_temp_for_hole_saleBILLS_TOTAL_PRICE: TFloatField;
    DataSource13: TDataSource;
    Query_save_in_paied_value_for_every_sale: TQuery;
    Query_serial_for_paied_for_every_sale: TQuery;
    DataSource14: TDataSource;
    Query_serial_for_paied_for_every_saleMAX: TIntegerField;
    DataSource15: TDataSource;
    Query_max_in_debt: TQuery;
    Query_max_in_debtMAX: TIntegerField;
    Panel4: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit7: TEdit;
    DataSource16: TDataSource;
    Query_max_for_ds_no: TQuery;
    Query_max_for_ds_noMAX: TIntegerField;
    Query_max_bill_no: TQuery;
    DataSource17: TDataSource;
    Query_max_bill_noMAX: TIntegerField;
    Query_save_in_paied_value_for_every_saleCUS_NAME: TStringField;
    Query_save_in_paied_value_for_every_salePAY_TYPE: TStringField;
    Query_save_in_paied_value_for_every_salePAIED_VALUE: TFloatField;
    Query_save_in_paied_value_for_every_saleREMAINING_VALUE: TFloatField;
    Query_save_in_paied_value_for_every_saleCHECK_NO: TIntegerField;
    Query_save_in_paied_value_for_every_salePAY_NO: TIntegerField;
    Query_save_in_paied_value_for_every_salePAIED_DATE: TStringField;
    Query_save_in_paied_value_for_every_saleSERIAL_NO: TIntegerField;
    Query_save_in_debtsNUM_IN_DAILY_SALE: TIntegerField;
    Label10: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Query_save_in_temp_for_hole_saleRECIVER_NAME: TStringField;
    Query_save_in_temp_for_hole_salePAY_NO: TIntegerField;
    Edit12: TEdit;
    Label11: TLabel;
    DataSource18: TDataSource;
    Query_discount_from_gain_table: TQuery;
    Query_discount_from_gain_tableNUM: TIntegerField;
    Query_discount_from_gain_tableKIND: TStringField;
    Query_discount_from_gain_tableTYPE_NAME: TStringField;
    Query_discount_from_gain_tableQUANTITY: TIntegerField;
    Query_discount_from_gain_tableAVAILBLE: TIntegerField;
    Query_discount_from_gain_tableTOTAL_BUDGET: TFloatField;
    Query_discount_from_gain_tableINPUT_DATE: TStringField;
    Query_discount_from_gain_tableSALE_PRICE: TFloatField;
    Query_discount_from_gain_tableBUY_PRICE: TFloatField;
    Query_discount_from_gain_tableTOTAL_BUY_PRICE: TFloatField;
    Query_discount_from_gain_tableNO_IN_STORGE: TIntegerField;
    Query_discount_from_gain_tableWINING: TFloatField;
    Query_bring_types_to_saleTYPE_NO: TIntegerField;
    Query_bring_types_to_saleTYPE_NAME: TStringField;
    Query_bring_types_to_saleTYPE_NOTES: TStringField;
    Query_bring_types_to_saleTYPE_KIND: TStringField;
    DataSource19: TDataSource;
    Query_quick_search: TQuery;
    DBGrid4: TDBGrid;
    Query_quick_searchTYPE_NO: TIntegerField;
    Query_quick_searchTYPE_NAME: TStringField;
    Query_quick_searchTYPE_NOTES: TStringField;
    Query_quick_searchTYPE_KIND: TStringField;
    Panel6: TPanel;
    Label16: TLabel;
    Edit13: TEdit;
    Query_sava_in_daily_storeDS_NO: TIntegerField;
    Query_sava_in_daily_storeDS_NAME_TYPE: TStringField;
    Query_sava_in_daily_storeDS_NAME_KIND: TStringField;
    Query_sava_in_daily_storeDS_QUANTITY: TIntegerField;
    Query_sava_in_daily_storeDS_PRICE: TFloatField;
    Query_sava_in_daily_storeDS_DATE: TStringField;
    Query_sava_in_daily_storeTOTAL_PRICE: TFloatField;
    Query_sava_in_daily_storeRECIVER_NAME: TStringField;
    Query_sava_in_daily_storePAY_NUM: TIntegerField;
    Query_bring_customersCUS_NO: TIntegerField;
    Query_bring_customersCUS_NAME: TStringField;
    Query_bring_customersCUS_NOTES: TStringField;
    Query_bring_fromstorgST_NO: TIntegerField;
    Query_bring_fromstorgST_KIND: TStringField;
    Query_bring_fromstorgST_TYPE: TStringField;
    Query_bring_fromstorgST_QUANTITY: TIntegerField;
    Query_bring_fromstorgST_TYPE_SALE: TFloatField;
    Query_bring_fromstorgST_AVAILBLE: TIntegerField;
    Query_bring_fromstorgST_STORED_DATE: TStringField;
    Query_bring_fromstorgSHELF_NO: TIntegerField;
    Query_bring_fromstorgNO_IN_GAIN_TABLE: TIntegerField;
    Query_discount_from_storgeST_NO: TIntegerField;
    Query_discount_from_storgeST_KIND: TStringField;
    Query_discount_from_storgeST_TYPE: TStringField;
    Query_discount_from_storgeST_QUANTITY: TIntegerField;
    Query_discount_from_storgeST_TYPE_PAY: TFloatField;
    Query_discount_from_storgeST_TYPE_SALE: TFloatField;
    Query_discount_from_storgeST_AVAILBLE: TIntegerField;
    Query_discount_from_storgeST_STORED_DATE: TStringField;
    Query_discount_from_storgeSHELF_NO: TIntegerField;
    Query_discount_from_storgeNO_IN_GAIN_TABLE: TIntegerField;
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure RadioButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
  private
    { Private declarations }
  public
  j,i:string;
  test:integer;
    { Public declarations }
  end;

var

  Form3: TForm3;

implementation

uses Unit1, Unit9, Unit5;

{$R *.dfm}

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
edit2.Text:='';
edit11.Text:='';
edit8.Text:='';
edit4.Text:='';
edit5.Text:='';
edit1.Text:='';
edit6.Text:='';
edit12.Text:='';
Query_bring_types_to_sale.Close;
Query_pring_kinds_tosale.Close;
form3.Hide;
form1.show;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
edit2.Text:='';
edit11.Text:='';
edit8.Text:='';
edit4.Text:='';
edit5.Text:='';
edit1.Text:='';
edit6.Text:='';
edit12.Text:='';
i:=DBGrid1.Fields[1].Asstring;
Query_bring_types_to_sale.Close;
Query_bring_types_to_sale.Prepare;
Query_bring_types_to_sale.Params[0].Value:=i;
Query_bring_types_to_sale.Open;
dbgrid2.Visible:=true;
dbgrid4.Visible:=false;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
Query_pring_kinds_tosale.Close;
Query_pring_kinds_tosale.Open;
DateTimePicker2.Date:=now;
DateTimePicker1.Date:=now;
dbgrid2.Visible:=true;
dbgrid4.Visible:=false;
end;



procedure TForm3.DBGrid2CellClick(Column: TColumn);
begin
j:=dbgrid2.Fields[0].AsString;
Query_bring_fromstorg.Close;
Query_bring_fromstorg.Prepare;
Query_bring_fromstorg.Params[0].Value:=j;
Query_bring_fromstorg.Params[1].Value:=i;
Query_bring_fromstorg.Open;
if (Query_bring_fromstorg.RecordCount<>0) then
begin
edit2.Text:=Query_bring_fromstorg['st_kind'];
edit11.text:=Query_bring_fromstorg['st_type'];
edit5.Text:=Query_bring_fromstorg['st_type_sale'];
Edit12.Text:=Query_bring_fromstorg['shelf_no'];
Query_total_availble.Close;
Query_total_availble.Prepare;
Query_total_availble.Params[0].Value:=j;
Query_total_availble.Params[1].Value:=i;
Query_total_availble.Open;
edit8.Text:=Query_total_availble['sum']
end
else
begin
application.MessageBox('·« ÌÊÃœ „‰ Â–« «·‰Ê⁄ ›Ï «·„Œ“‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.Text:='';
edit11.Text:='';
edit8.Text:='';
edit4.Text:='';
edit5.Text:='';
edit1.Text:='';
edit6.Text:='';
edit12.Text:='';
end;
end;

procedure TForm3.RadioButton4Click(Sender: TObject);
begin
edit2.Text:='';
edit11.Text:='';
edit8.Text:='';
edit4.Text:='';
edit5.Text:='';
edit1.Text:='';
edit6.Text:='';
BitBtn1.Enabled:=true;
bitbtn4.Enabled:=false;
label9.Enabled:=true;
edit6.Enabled:=true;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
var
count,want,first_time,pay_num1,win:integer;
temp:variant;
begin
count:=1;
 ///Õ›Ÿ «·„»Ì⁄«  «·ÌÊ„Ì…
if (edit2.Text='') then
begin //*
application.MessageBox('«·—Ã«¡ «Œ Ì«— «”„ «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if (edit11.Text='') then
begin //*
application.MessageBox('«·—Ã«¡ «Œ Ì«— «”„ «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if (edit8.Text='') then
begin //*
application.MessageBox('«·—Ã«¡ «Œ Ì«— «”„ «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if (edit4.Text='') then
begin //*
application.MessageBox('«·—Ã«¡  ÕœÌœ «·ﬂ„Ì… «·„ÿ·Ê»…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit4.SetFocus;
exit;
end;
if (edit5.Text='') then
begin //*
application.MessageBox('«·—Ã«¡  ÕœÌœ ”⁄— «·»Ì⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit5.SetFocus;
exit;
end;
if (edit1.Text='') then
begin //*
application.MessageBox('«·—Ã«¡  ÕœÌœ À„‰ «·ﬂ„Ì… «·„ÿ·Ê»…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit;
end;
if (strtoint(edit4.Text)>strtoint(edit8.Text)) then
begin //*
application.MessageBox('·«Ì„ﬂ‰ ÕÃ“ Â–Â «·ÿ·»Ì… ·⁄œ„  Ê›—Â«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end; //*
temp:=strtofloat(edit5.Text);
want:=strtoint(edit4.Text);
Query_max_for_ds_no.Close;
Query_max_for_ds_no.Prepare;
Query_max_for_ds_no.Open;
Query_max_bill_no.Close;
Query_max_bill_no.Prepare;
Query_max_bill_no.Open;
Query_bring_pay_num.Close;
Query_bring_pay_num.Prepare;
Query_bring_pay_num.Open;
Query_sava_in_daily_store.Close;
Query_sava_in_daily_store.Prepare;
Query_sava_in_daily_store.Open;
Query_sava_in_daily_store.Append;
if(Query_max_for_ds_no['max']=null)then
begin
Query_sava_in_daily_store['ds_no']:=1;
end
else
begin
Query_sava_in_daily_store['ds_no']:=Query_max_for_ds_no['max']+1;
end;
Query_sava_in_daily_store['ds_name_kind']:=edit2.Text;
Query_sava_in_daily_store['ds_name_type']:=edit11.Text;
Query_sava_in_daily_store['ds_quantity']:=edit4.Text;
Query_sava_in_daily_store['ds_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_sava_in_daily_store['ds_price']:=edit5.Text;
Query_sava_in_daily_store['total_price']:=edit1.Text;
Query_sava_in_daily_store['reciver_name']:=edit6.Text;
if (Query_bring_pay_num['max']= null)then
begin //1
first_time:=1;
test:=1;
Query_sava_in_daily_store['pay_num']:=1;
pay_num1:=1;
Query_sava_in_daily_store.Post;
Query_save_in_temp_for_hole_sale.Close;
Query_save_in_temp_for_hole_sale.Prepare;
Query_save_in_temp_for_hole_sale.Open;
Query_save_in_temp_for_hole_sale.Append;
if(Query_max_bill_no['max']=null)then
begin
Query_save_in_temp_for_hole_sale['bills_no']:=1;
end
else
begin
Query_save_in_temp_for_hole_sale['bills_no']:=Query_max_bill_no['max']+1;
end;
Query_save_in_temp_for_hole_sale['pay_no']:=pay_num1;
Query_save_in_temp_for_hole_sale['bills_kind']:=edit2.Text;
Query_save_in_temp_for_hole_sale['bills_type']:=edit11.Text;
Query_save_in_temp_for_hole_sale['bills_price']:=edit5.Text;
Query_save_in_temp_for_hole_sale['bills_quantity']:=edit4.Text;
Query_save_in_temp_for_hole_sale['bills_total_price']:=edit1.Text;
Query_save_in_temp_for_hole_sale['reciver_name']:=edit6.Text;
Query_save_in_temp_for_hole_sale['bills_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_save_in_temp_for_hole_sale.Post;
Query_save_in_temp_for_hole_sale.Close;
Query_save_in_temp_for_hole_sale.Open;
Query_discount_from_storge.Close;
Query_discount_from_storge.Prepare;
Query_discount_from_storge.Params[0].Value:=edit11.Text;
Query_discount_from_storge.Params[1].Value:=edit2.Text;
Query_discount_from_storge.Open;


while((not(Query_discount_from_storge.Eof)) and (want>0))do
begin    //2
     //3
Query_discount_from_gain_table.Close;
Query_discount_from_gain_table.Prepare;
Query_discount_from_gain_table.Params[0].Value:=edit2.Text;
Query_discount_from_gain_table.Params[1].Value:=edit11.Text;
Query_discount_from_gain_table.Params[2].Value:=Query_discount_from_storge['no_in_gain_table'];
Query_discount_from_gain_table.Open;
if(strtoint(Query_discount_from_storge['st_availble'])>want)then
begin          //4
Query_discount_from_storge.Edit;
Query_discount_from_storge['st_availble']:=strtoint(Query_discount_from_storge['st_availble'])-want;

Query_discount_from_gain_table.Edit;
Query_discount_from_gain_table['total_budget']:=Query_discount_from_gain_table['total_budget']+(temp*want);
Query_discount_from_gain_table['availble']:=Query_discount_from_gain_table['availble']-want;
win:=Query_discount_from_gain_table['quantity']- Query_discount_from_gain_table['availble'];
Query_discount_from_gain_table['wining']:=Query_discount_from_gain_table['total_budget']-(win* Query_discount_from_gain_table['buy_price']);
Query_discount_from_storge.post;
Query_discount_from_gain_table.Post;
Query_discount_from_storge.Next;
want:=0;
end      //4
else
begin       //5
if(strtoint(Query_discount_from_storge['st_availble'])<=want)then
begin
         //6
Query_discount_from_gain_table.Edit;
Query_discount_from_gain_table['total_budget']:=(Query_discount_from_gain_table['total_budget']+(temp*Query_discount_from_gain_table['availble']));
Query_discount_from_gain_table['availble']:=Query_discount_from_gain_table['availble']-Query_discount_from_gain_table['availble'];
win:=Query_discount_from_gain_table['quantity']- Query_discount_from_gain_table['availble'];
Query_discount_from_gain_table['wining']:=Query_discount_from_gain_table['total_budget']-(win* Query_discount_from_gain_table['buy_price']);
Query_discount_from_gain_table.post;
want:=want-strtoint(Query_discount_from_storge['st_availble']);
Query_discount_from_storge.Delete;

end;              //6
end;                 //5
                    //3

end;
form5.query_input_to_storge.Close;
form5.query_input_to_storge.Prepare;
form5.query_input_to_storge.Open;
while(not(form5.query_input_to_storge.Eof))do
begin
form5.query_input_to_storge.Edit;
form5.query_input_to_storge['st_no']:=count;
count:=count+1;
form5.query_input_to_storge.Next;
end;                      //2
end;                          //1

if ((test<>0) and (first_time<>1))then
begin//1
Query_sava_in_daily_store['pay_num']:=Query_bring_pay_num['max'];
pay_num1:=Query_bring_pay_num['max'];
Query_sava_in_daily_store.Post;
Query_save_in_temp_for_hole_sale.Close;
Query_save_in_temp_for_hole_sale.Prepare;
Query_save_in_temp_for_hole_sale.Open;
Query_save_in_temp_for_hole_sale.Append;
if(Query_max_bill_no['max']=null)then
begin
Query_save_in_temp_for_hole_sale['bills_no']:=1;
end
else
begin
Query_save_in_temp_for_hole_sale['bills_no']:=Query_max_bill_no['max']+1;
end;
Query_save_in_temp_for_hole_sale['pay_no']:=pay_num1;
Query_save_in_temp_for_hole_sale['bills_kind']:=edit2.Text;
Query_save_in_temp_for_hole_sale['bills_type']:=edit11.Text;
Query_save_in_temp_for_hole_sale['bills_price']:=edit5.Text;
Query_save_in_temp_for_hole_sale['bills_quantity']:=edit4.Text;
Query_save_in_temp_for_hole_sale['bills_total_price']:=edit1.Text;
Query_save_in_temp_for_hole_sale['reciver_name']:=edit6.Text;
Query_save_in_temp_for_hole_sale['bills_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_save_in_temp_for_hole_sale.Post;
Query_save_in_temp_for_hole_sale.Close;
Query_save_in_temp_for_hole_sale.Open;
Query_discount_from_storge.Close;
Query_discount_from_storge.Prepare;
Query_discount_from_storge.Params[0].Value:=edit11.Text;
Query_discount_from_storge.Params[1].Value:=edit2.Text;
Query_discount_from_storge.Open;
while((not(Query_discount_from_storge.Eof)) and (want>0))do
begin    //2
     //3
Query_discount_from_gain_table.Close;
Query_discount_from_gain_table.Prepare;
Query_discount_from_gain_table.Params[0].Value:=edit2.Text;
Query_discount_from_gain_table.Params[1].Value:=edit11.Text;
Query_discount_from_gain_table.Params[2].Value:=Query_discount_from_storge['no_in_gain_table'];
Query_discount_from_gain_table.Open;
if(strtoint(Query_discount_from_storge['st_availble'])>want)then
begin          //4
Query_discount_from_storge.Edit;
Query_discount_from_storge['st_availble']:=strtoint(Query_discount_from_storge['st_availble'])-want;

Query_discount_from_gain_table.Edit;
Query_discount_from_gain_table['total_budget']:=Query_discount_from_gain_table['total_budget']+(temp*want);
Query_discount_from_gain_table['availble']:=Query_discount_from_gain_table['availble']-want;
win:=Query_discount_from_gain_table['quantity']- Query_discount_from_gain_table['availble'];
Query_discount_from_gain_table['wining']:=Query_discount_from_gain_table['total_budget']-(win* Query_discount_from_gain_table['buy_price']);
Query_discount_from_storge.post;
Query_discount_from_gain_table.Post;
Query_discount_from_storge.Next;
want:=0;
end      //4
else
begin       //5
if(strtoint(Query_discount_from_storge['st_availble'])<=want)then
begin
         //6
Query_discount_from_gain_table.Edit;
Query_discount_from_gain_table['total_budget']:=(Query_discount_from_gain_table['total_budget']+(temp*Query_discount_from_gain_table['availble']));
Query_discount_from_gain_table['availble']:=Query_discount_from_gain_table['availble']-Query_discount_from_gain_table['availble'];
win:=Query_discount_from_gain_table['quantity']- Query_discount_from_gain_table['availble'];
Query_discount_from_gain_table['wining']:=Query_discount_from_gain_table['total_budget']-(win* Query_discount_from_gain_table['buy_price']);
Query_discount_from_gain_table.post;
want:=want-strtoint(Query_discount_from_storge['st_availble']);
Query_discount_from_storge.Delete;

end;              //6
end;                 //5
                    //3

end;
form5.query_input_to_storge.Close;
form5.query_input_to_storge.Prepare;
form5.query_input_to_storge.Open;
while(not(form5.query_input_to_storge.Eof))do
begin
form5.query_input_to_storge.Edit;
form5.query_input_to_storge['st_no']:=count;
count:=count+1;
form5.query_input_to_storge.Next;
end;                      //2
end
else
if(first_time<>1)then
begin
begin //1
Query_sava_in_daily_store.Close;
Query_sava_in_daily_store.Prepare;
Query_sava_in_daily_store.Open;
Query_sava_in_daily_store.Append;
Query_sava_in_daily_store['ds_name_kind']:=edit2.Text;
Query_sava_in_daily_store['ds_name_type']:=edit11.Text;
Query_sava_in_daily_store['ds_quantity']:=edit4.Text;
Query_sava_in_daily_store['ds_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_sava_in_daily_store['ds_price']:=edit5.Text;
Query_sava_in_daily_store['pay_num']:=Query_bring_pay_num['max']+1;
pay_num1:=Query_bring_pay_num['max']+1;
Query_sava_in_daily_store['total_price']:=edit1.Text;
Query_sava_in_daily_store['reciver_name']:=edit6.Text;
if(Query_max_for_ds_no['max']=null)then
begin
Query_sava_in_daily_store['ds_no']:=1;
end
else
begin
Query_sava_in_daily_store['ds_no']:=Query_max_for_ds_no['max']+1;
end;
test:=1;
Query_sava_in_daily_store.Post;
Query_save_in_temp_for_hole_sale.Close;
Query_save_in_temp_for_hole_sale.Prepare;
Query_save_in_temp_for_hole_sale.Open;
Query_save_in_temp_for_hole_sale.Append;
if(Query_max_bill_no['max']=null)then
begin
Query_save_in_temp_for_hole_sale['bills_no']:=1;
end
else
begin
Query_save_in_temp_for_hole_sale['bills_no']:=Query_max_bill_no['max']+1;
end;
Query_save_in_temp_for_hole_sale['pay_no']:=pay_num1;
Query_save_in_temp_for_hole_sale['bills_kind']:=edit2.Text;
Query_save_in_temp_for_hole_sale['bills_type']:=edit11.Text;
Query_save_in_temp_for_hole_sale['bills_price']:=edit5.Text;
Query_save_in_temp_for_hole_sale['bills_quantity']:=edit4.Text;
Query_save_in_temp_for_hole_sale['bills_total_price']:=edit1.Text;
Query_save_in_temp_for_hole_sale['reciver_name']:=edit6.Text;
Query_save_in_temp_for_hole_sale['bills_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_save_in_temp_for_hole_sale.Post;
Query_save_in_temp_for_hole_sale.Close;
Query_save_in_temp_for_hole_sale.Open;
Query_discount_from_storge.Close;
Query_discount_from_storge.Prepare;
Query_discount_from_storge.Params[0].Value:=edit11.Text;
Query_discount_from_storge.Params[1].Value:=edit2.Text;
Query_discount_from_storge.Open;
while((not(Query_discount_from_storge.Eof)) and (want>0))do
begin    //2
     //3
Query_discount_from_gain_table.Close;
Query_discount_from_gain_table.Prepare;
Query_discount_from_gain_table.Params[0].Value:=edit2.Text;
Query_discount_from_gain_table.Params[1].Value:=edit11.Text;
Query_discount_from_gain_table.Params[2].Value:=Query_discount_from_storge['no_in_gain_table'];
Query_discount_from_gain_table.Open;
if(strtoint(Query_discount_from_storge['st_availble'])>want)then
begin          //4
Query_discount_from_storge.Edit;
Query_discount_from_storge['st_availble']:=strtoint(Query_discount_from_storge['st_availble'])-want;

Query_discount_from_gain_table.Edit;
Query_discount_from_gain_table['total_budget']:=Query_discount_from_gain_table['total_budget']+(temp*want);
Query_discount_from_gain_table['availble']:=Query_discount_from_gain_table['availble']-want;
win:=Query_discount_from_gain_table['quantity']- Query_discount_from_gain_table['availble'];
Query_discount_from_gain_table['wining']:=Query_discount_from_gain_table['total_budget']-(win* Query_discount_from_gain_table['buy_price']);
Query_discount_from_storge.post;
Query_discount_from_gain_table.Post;
Query_discount_from_storge.Next;
want:=0;
end      //4
else
begin       //5
if(strtoint(Query_discount_from_storge['st_availble'])<=want)then
begin
         //6
Query_discount_from_gain_table.Edit;
Query_discount_from_gain_table['total_budget']:=(Query_discount_from_gain_table['total_budget']+(temp*Query_discount_from_gain_table['availble']));
Query_discount_from_gain_table['availble']:=Query_discount_from_gain_table['availble']-Query_discount_from_gain_table['availble'];
win:=Query_discount_from_gain_table['quantity']- Query_discount_from_gain_table['availble'];
Query_discount_from_gain_table['wining']:=Query_discount_from_gain_table['total_budget']-(win* Query_discount_from_gain_table['buy_price']);
Query_discount_from_gain_table.post;
want:=want-strtoint(Query_discount_from_storge['st_availble']);
Query_discount_from_storge.Delete;
end;              //6
end;                 //5
                   //3
end;
form5.query_input_to_storge.Close;
form5.query_input_to_storge.Prepare;
form5.query_input_to_storge.Open;
while(not(form5.query_input_to_storge.Eof))do
begin
form5.query_input_to_storge.Edit;
form5.query_input_to_storge['st_no']:=count;
count:=count+1;
form5.query_input_to_storge.Next;
end;                     //2
end;                          //1
end;
bitbtn4.Enabled:=true;
bitbtn3.Enabled:=false;
edit2.Text:='';
edit11.Text:='';
edit8.Text:='';
edit4.Text:='';
edit5.Text:='';
edit1.Text:='';
edit6.Text:='';
edit12.Text:='';
{
if (radiobutton4.Checked=true) then
begin
if ( (radiobutton1.Checked=true) and (radiobutton4.Checked=true)) then
begin
if(edit6.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·ﬁÌ„… «·„œ›Ê⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit6.SetFocus;
exit;
end;
end;
end;
want:=strtoint(edit4.Text);
if (strtoint(edit4.Text)>strtoint(edit8.Text)) then
begin //*
application.MessageBox('·«Ì„ﬂ‰ ÕÃ“ Â–Â «·ÿ·»Ì… ·⁄œ„  Ê›—Â«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end //*
else
if(radiobutton4.Checked=true)then
begin//ﬁÿ«⁄Ì
begin//**
Query_sava_in_daily_store.Close;
Query_sava_in_daily_store.Prepare;
Query_sava_in_daily_store.Open;
Query_sava_in_daily_store.Append;
Query_sava_in_daily_store['ds_cus_name']:=combobox1.Text;
Query_sava_in_daily_store['ds_name_kind']:=edit2.Text;
Query_sava_in_daily_store['ds_name_type']:=edit11.Text;
Query_sava_in_daily_store['ds_quantity']:=edit4.Text;
Query_sava_in_daily_store['ds_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_sava_in_daily_store['ds_price']:=edit5.Text;
if (radiobutton1.Checked=true) then
begin//***
Query_sava_in_daily_store['ds_paied']:=edit6.text;
Query_sava_in_daily_store['ds_sale_status']:='‰ﬁœÌ';
Query_sava_in_daily_store['DS_REMAING_DEBT']:=0;
end //***
else
begin//****
if (radiobutton2.Checked=true) then
begin//*****
Query_sava_in_daily_store['ds_paied']:=edit6.text;
Query_sava_in_daily_store['ds_sale_status']:='¬Ã·';
Query_sava_in_daily_store['DS_REMAING_DEBT']:=edit7.Text;
if(combobox1.Text='')then
begin//«·œÌ‰
application.MessageBox('«·—Ã«¡ ≈œŒ«· «”„ «·“»Ê‰ ·Ì „ Õ›Ÿ «·œÌ‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;// «·œÌ‰
Query_save_in_debts.Close;
Query_save_in_debts.Prepare;
Query_save_in_debts.Open;
Query_save_in_debts.Append;
Query_save_in_debts['debt_cus_name']:=combobox1.Text;
Query_save_in_debts['debt_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_save_in_debts['debt_value']:=edit7.Text;
Query_save_in_debts.Post;
Query_save_in_debts.Close;
Query_save_in_debts.Prepare;
Query_save_in_debts.Open;
while(not(Query_save_in_debts.Eof))do
begin// ⁄œ«œ ÃœÊ· «·œÌÊ‰
Query_save_in_debts.Edit;
Query_save_in_debts['debt_no']:=count;
count:=count+1;
Query_save_in_debts.Next;
end;// ⁄œ«œ ÃœÊ· «·œÌÊ‰
count:=1;
end //*****
else
begin //******
if ((radiobutton2.Checked=false)and (radiobutton1.Checked=false))then
begin //*******
application.MessageBox('«·—Ã«¡ «Œ Ì«— ÿ—Ìﬁ… «·œ›⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;//*******
end;//******
end;//****
Query_sava_in_daily_store.Post;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
Query_sava_in_daily_store.Close;
Query_sava_in_daily_store.Prepare;
Query_sava_in_daily_store.Open;
while(not(Query_sava_in_daily_store.Eof))do
begin
Query_sava_in_daily_store.Edit;
Query_sava_in_daily_store['ds_no']:=count;
count:=count+1;
Query_sava_in_daily_store.Next;
end;
Query_discount_from_storge.Close;
Query_discount_from_storge.Prepare;
Query_discount_from_storge.Params[0].Value:=edit11.Text;
Query_discount_from_storge.Params[1].Value:=edit2.Text;
Query_discount_from_storge.Open;
while(not(Query_discount_from_storge.Eof))do
begin//1
if (want>0)then
begin//2
if(strtoint(Query_discount_from_storge['st_availble'])>=want)then
begin //3
Query_discount_from_storge.Edit;
Query_discount_from_storge['st_availble']:=strtoint(Query_discount_from_storge['st_availble'])-want;
want:=0;
end//3
else
begin//4
if(strtoint(Query_discount_from_storge['st_availble'])<want)then
begin//5
want:=want-strtoint(Query_discount_from_storge['st_availble']);
Query_discount_from_storge.Delete;
end;//5
end;//4
end;//2
Query_discount_from_storge.Next;
end;//1
end;//**
edit2.Text:='';
edit11.Text:='';
edit8.Text:='';
edit4.Text:='';
edit5.Text:='';
edit1.Text:='';
edit6.Text:='';
edit7.Text:='';
combobox1.Text:='';
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
end//ﬁÿ«⁄Ì
else
begin//else ﬁÿ«⁄Ì
if(radiobutton3.Checked=true)then
begin//Ã„·…
radiobutton4.Enabled:=false;
Query_sava_in_daily_store.Close;
Query_sava_in_daily_store.Prepare;
Query_sava_in_daily_store.Open;
Query_sava_in_daily_store.Append;
Query_sava_in_daily_store['ds_cus_name']:=combobox1.Text;
Query_sava_in_daily_store['ds_name_kind']:=edit2.Text;
Query_sava_in_daily_store['ds_name_type']:=edit11.Text;
Query_sava_in_daily_store['ds_quantity']:=edit4.Text;
Query_sava_in_daily_store['ds_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_sava_in_daily_store['ds_price']:=edit5.Text;
Query_sava_in_daily_store['ds_sale_status']:='Ã„·…';
Query_sava_in_daily_store['ds_paied']:=-1;
Query_sava_in_daily_store.Post;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
Query_sava_in_daily_store.Close;
Query_sava_in_daily_store.Prepare;
Query_sava_in_daily_store.Open;
while(not(Query_sava_in_daily_store.Eof))do
begin
Query_sava_in_daily_store.Edit;
Query_sava_in_daily_store['ds_no']:=count;
count:=count+1;
Query_sava_in_daily_store.Next;
end;
count:=1;
Query_discount_from_storge.Close;
Query_discount_from_storge.Prepare;
Query_discount_from_storge.Params[0].Value:=edit11.Text;
Query_discount_from_storge.Params[1].Value:=edit2.Text;
Query_discount_from_storge.Open;
while(not(Query_discount_from_storge.Eof))do
begin//1
if (want>0)then
begin//2
if(strtoint(Query_discount_from_storge['st_availble'])>=want)then
begin //3
Query_discount_from_storge.Edit;
Query_discount_from_storge['st_availble']:=strtoint(Query_discount_from_storge['st_availble'])-want;
want:=0;
end//3
else
begin//4
if(strtoint(Query_discount_from_storge['st_availble'])<want)then
begin//5
want:=want-strtoint(Query_discount_from_storge['st_availble']);
Query_discount_from_storge.Delete;
end;//5
end;//4
end;//2
Query_discount_from_storge.Next;
end;//1
Query_save_in_temp_for_hole_sale.Close;
Query_save_in_temp_for_hole_sale.Prepare;
Query_save_in_temp_for_hole_sale.Open;
Query_save_in_temp_for_hole_sale.Append;
Query_save_in_temp_for_hole_sale['bills_cus_name']:=combobox1.Text;
Query_save_in_temp_for_hole_sale['bills_kind']:=edit2.Text;
Query_save_in_temp_for_hole_sale['bills_type']:=edit11.Text;
Query_save_in_temp_for_hole_sale['bills_price']:=edit5.Text;
Query_save_in_temp_for_hole_sale['bills_quantity']:=edit4.Text;
Query_save_in_temp_for_hole_sale['bills_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_save_in_temp_for_hole_sale.Post;
Query_save_in_temp_for_hole_sale.Close;
Query_save_in_temp_for_hole_sale.Prepare;
Query_save_in_temp_for_hole_sale.Open;
while(not(Query_save_in_temp_for_hole_sale.Eof))do
begin///////
Query_save_in_temp_for_hole_sale.Edit;
Query_save_in_temp_for_hole_sale['bills_no']:=count;
count:=count+1;
Query_save_in_temp_for_hole_sale.Next;
end;///////
Query_save_in_temp_for_hole_sale.Close;
Query_save_in_temp_for_hole_sale.Prepare;
Query_save_in_temp_for_hole_sale.Open;

end;//Ã„·…
edit2.Text:='';
edit11.Text:='';
edit8.Text:='';
edit4.Text:='';
edit5.Text:='';
edit1.Text:='';
combobox1.Text:='';
bitbtn3.Enabled:=false;
end;//else ﬁÿ«⁄Ì }
first_time:=0;
end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
combobox2.Enabled:=true;
datetimepicker2.Enabled:=true;
radiobutton5.Enabled:=true;
radiobutton6.Enabled:=true;
radiobutton7.Enabled:=true;
edit9.Enabled:=true;
edit10.Enabled:=true;
edit3.Enabled:=true;
bitbtn1.Enabled:=false;
bitbtn3.Enabled:=false;
Query_all_value_from_temp.Close;
Query_all_value_from_temp.Prepare;
Query_all_value_from_temp.Open;
panel5.Visible:=true;
edit9.Text:=floattostr(Query_all_value_from_temp['sum']);
combobox2.Clear;
Query_bring_customers.Close;
Query_bring_customers.Prepare;
Query_bring_customers.Open;
while(not(Query_bring_customers.Eof))do
begin
combobox2.Items.Add(Query_bring_customers['cus_name']);
Query_bring_customers.Next;
end;
test:=0;
end;

procedure TForm3.BitBtn5Click(Sender: TObject);
var
count:integer;
begin
if(edit10.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… «·„œ›Ê⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit10.SetFocus;
exit;
end;
if(edit3.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… «·„ »ﬁÌ…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit3.SetFocus;
exit;
end;
Query_bring_pay_num.Close;
Query_bring_pay_num.Prepare;
Query_bring_pay_num.Open;
Query_serial_for_paied_for_every_sale.Close;
Query_serial_for_paied_for_every_sale.Prepare;
Query_serial_for_paied_for_every_sale.Open;
if(radiobutton6.Checked=true)then
begin
if(combobox2.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «”„ «·“»Ê‰ · Œ“Ì‰ «·œÌ‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
Query_save_in_paied_value_for_every_sale.Close;
Query_save_in_paied_value_for_every_sale.Prepare;
Query_save_in_paied_value_for_every_sale.Open;
Query_save_in_paied_value_for_every_sale.Append;
if (Query_serial_for_paied_for_every_sale['max']=null) then
begin
Query_save_in_paied_value_for_every_sale['serial_no']:=1;
end
else
begin
Query_save_in_paied_value_for_every_sale['serial_no']:=Query_serial_for_paied_for_every_sale['max']+1;
end;
Query_save_in_paied_value_for_every_sale['pay_no']:=Query_bring_pay_num['max'];
Query_save_in_paied_value_for_every_sale['pay_type']:='«Ã·';
Query_save_in_paied_value_for_every_sale['paied_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_save_in_paied_value_for_every_sale['paied_value']:=edit10.Text;
Query_save_in_paied_value_for_every_sale['remaining_value']:=edit3.Text;
Query_save_in_paied_value_for_every_sale['cus_name']:=combobox2.Text;
Query_save_in_paied_value_for_every_sale.Post;
Query_max_in_debt.Close;
Query_max_in_debt.Prepare;
Query_max_in_debt.Open;
Query_save_in_debts.Close;
Query_save_in_debts.Prepare;
Query_save_in_debts.Open;
Query_save_in_debts.Append;
if (Query_max_in_debt['max']=null)then
begin
Query_save_in_debts['debt_no']:=1;
end
else
begin
Query_save_in_debts['debt_no']:=Query_max_in_debt['max']+1;
end;
Query_save_in_debts['debt_cus_name']:=combobox2.Text;
Query_save_in_debts['debt_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_save_in_debts['debt_value']:=edit3.Text;
Query_save_in_debts['num_in_daily_sale']:=Query_bring_pay_num['max'];
Query_save_in_debts.Post;
end
else
begin //1
if(radiobutton5.Checked=true)then
begin//*
Query_save_in_paied_value_for_every_sale.Close;
Query_save_in_paied_value_for_every_sale.Prepare;
Query_save_in_paied_value_for_every_sale.Open;
Query_save_in_paied_value_for_every_sale.Append;
if (Query_serial_for_paied_for_every_sale['max']=null) then
begin //2
Query_save_in_paied_value_for_every_sale['serial_no']:=1;
end  //2
else
begin //3
Query_save_in_paied_value_for_every_sale['serial_no']:=Query_serial_for_paied_for_every_sale['max']+1;
end; //3
Query_save_in_paied_value_for_every_sale['pay_no']:=Query_bring_pay_num['max'];
Query_save_in_paied_value_for_every_sale['pay_type']:='‰ﬁœÌ';
Query_save_in_paied_value_for_every_sale['paied_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_save_in_paied_value_for_every_sale['paied_value']:=edit10.Text;
Query_save_in_paied_value_for_every_sale['remaining_value']:=0;
Query_save_in_paied_value_for_every_sale['cus_name']:=combobox2.Text;
Query_save_in_paied_value_for_every_sale.Post;
end //*
else
begin  //**
if(radiobutton7.Checked=true)then
begin
if(radiobutton1.Checked=true)then
begin
if(edit7.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· —ﬁ„ «·’ﬂ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit7.SetFocus;
exit;
end;
begin//*
Query_save_in_paied_value_for_every_sale.Close;
Query_save_in_paied_value_for_every_sale.Prepare;
Query_save_in_paied_value_for_every_sale.Open;
Query_save_in_paied_value_for_every_sale.Append;
if (Query_serial_for_paied_for_every_sale['max']=null) then
begin //2
Query_save_in_paied_value_for_every_sale['serial_no']:=1;
end  //2
else
begin //3
Query_save_in_paied_value_for_every_sale['serial_no']:=Query_serial_for_paied_for_every_sale['max']+1;
end; //3
Query_save_in_paied_value_for_every_sale['pay_no']:=Query_bring_pay_num['max'];
Query_save_in_paied_value_for_every_sale['pay_type']:=' „ «· Õ’Ì·';
Query_save_in_paied_value_for_every_sale['paied_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_save_in_paied_value_for_every_sale['paied_value']:=edit10.Text;
Query_save_in_paied_value_for_every_sale['remaining_value']:=0;
Query_save_in_paied_value_for_every_sale['cus_name']:=combobox2.Text;
Query_save_in_paied_value_for_every_sale['check_no']:=Edit7.Text;
Query_save_in_paied_value_for_every_sale.Post;
end //*
end
else
begin
if(radiobutton2.Checked=true)then
begin
if(combobox2.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «”„ «·“»Ê‰ · Œ“Ì‰ «·œÌ‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
Query_save_in_paied_value_for_every_sale.Close;
Query_save_in_paied_value_for_every_sale.Prepare;
Query_save_in_paied_value_for_every_sale.Open;
Query_save_in_paied_value_for_every_sale.Append;
if (Query_serial_for_paied_for_every_sale['max']=null) then
begin
Query_save_in_paied_value_for_every_sale['serial_no']:=1;
end
else
begin
Query_save_in_paied_value_for_every_sale['serial_no']:=Query_serial_for_paied_for_every_sale['max']+1;
end;
Query_save_in_paied_value_for_every_sale['pay_no']:=Query_bring_pay_num['max'];
Query_save_in_paied_value_for_every_sale['pay_type']:='·„ Ì „ «· Õ’Ì·';
Query_save_in_paied_value_for_every_sale['paied_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_save_in_paied_value_for_every_sale['paied_value']:=0;
Query_save_in_paied_value_for_every_sale['remaining_value']:=edit9.Text;
Query_save_in_paied_value_for_every_sale['cus_name']:=combobox2.Text;
Query_save_in_paied_value_for_every_sale.Post;
Query_max_in_debt.Close;
Query_max_in_debt.Prepare;
Query_max_in_debt.Open;
Query_save_in_debts.Close;
Query_save_in_debts.Prepare;
Query_save_in_debts.Open;
Query_save_in_debts.Append;
if (Query_max_in_debt['max']=null)then
begin
Query_save_in_debts['debt_no']:=1;
end
else
begin
Query_save_in_debts['debt_no']:=Query_max_in_debt['max']+1;
end;
Query_save_in_debts['debt_cus_name']:=combobox2.Text;
Query_save_in_debts['debt_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_save_in_debts['debt_value']:=edit3.Text;
Query_save_in_debts['num_in_daily_sale']:=Query_bring_pay_num['max'];
Query_save_in_debts.Post;
end
else
begin
if(radiobutton3.Checked=true)then
begin
if(combobox2.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «”„ «·“»Ê‰ · Œ“Ì‰ «·œÌ‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if(edit7.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· —ﬁ„ «·’ﬂ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit7.SetFocus;
exit;
end;
Query_save_in_paied_value_for_every_sale.Close;
Query_save_in_paied_value_for_every_sale.Prepare;
Query_save_in_paied_value_for_every_sale.Open;
Query_save_in_paied_value_for_every_sale.Append;
if (Query_serial_for_paied_for_every_sale['max']=null) then
begin
Query_save_in_paied_value_for_every_sale['serial_no']:=1;
end
else
begin
Query_save_in_paied_value_for_every_sale['serial_no']:=Query_serial_for_paied_for_every_sale['max']+1;
end;
Query_save_in_paied_value_for_every_sale['pay_no']:=Query_bring_pay_num['max'];
Query_save_in_paied_value_for_every_sale['pay_type']:=' „  Õ’Ì· Ã“¡';
Query_save_in_paied_value_for_every_sale['paied_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_save_in_paied_value_for_every_sale['paied_value']:=edit10.Text;
Query_save_in_paied_value_for_every_sale['remaining_value']:=edit3.Text;
Query_save_in_paied_value_for_every_sale['cus_name']:=combobox2.Text;
Query_save_in_paied_value_for_every_sale['check_no']:=edit7.Text;
Query_save_in_paied_value_for_every_sale.Post;
Query_max_in_debt.Close;
Query_max_in_debt.Prepare;
Query_max_in_debt.Open;
Query_save_in_debts.Close;
Query_save_in_debts.Prepare;
Query_save_in_debts.Open;
Query_save_in_debts.Append;
if (Query_max_in_debt['max']=null)then
begin
Query_save_in_debts['debt_no']:=1;
end
else
begin
Query_save_in_debts['debt_no']:=Query_max_in_debt['max']+1;
end;
Query_save_in_debts['debt_cus_name']:=combobox2.Text;
Query_save_in_debts['debt_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_save_in_debts['debt_value']:=edit3.Text;
Query_save_in_debts['num_in_daily_sale']:=Query_bring_pay_num['max'];
Query_save_in_debts.Post;
end;
end;
end;
end;
end;   //**
end;//1
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
bitbtn6.Enabled:=true;
bitbtn7.Enabled:=true;
bitbtn5.Enabled:=false;
label9.Enabled:=true;
edit6.Enabled:=true;
  bitbtn4.Enabled:=false;
  edit9.Text:='';
edit10.Text:='';
edit3.Text:='';
combobox2.Text:='';
edit7.Text:='';
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
combobox2.Enabled:=false;
datetimepicker2.Enabled:=false;
radiobutton5.Enabled:=false;
radiobutton6.Enabled:=false;
radiobutton7.Enabled:=false;
edit9.Enabled:=false;
edit10.Enabled:=false;
edit3.Enabled:=false;
panel4.Enabled:=false;
 end;
procedure TForm3.RadioButton5Click(Sender: TObject);
begin
edit10.Text:=edit9.Text;
edit10.ReadOnly:=true;
edit3.Text:=inttostr(0);
edit3.ReadOnly:=true;
BitBtn5.Enabled:=true;
radiobutton2.Checked:=false;
radiobutton1.Checked:=false;
radiobutton3.Checked:=false;
edit7.Text:='';
edit7.ReadOnly:=true;
panel4.Enabled:=false;
end;

procedure TForm3.RadioButton6Click(Sender: TObject);
begin
BitBtn5.Enabled:=true;
edit10.Text:='';
edit3.Text:='';
edit10.ReadOnly:=false;
edit3.ReadOnly:=false;
radiobutton2.Checked:=false;
radiobutton1.Checked:=false;
radiobutton3.Checked:=false;
edit7.Text:='';
edit7.ReadOnly:=true;
panel4.Enabled:=false;
end;

procedure TForm3.Edit4Change(Sender: TObject);
var
a:integer;
b:variant;
begin
if (edit4.Text='')then
begin
edit1.Text:='';
end
else
begin
edit1.Text:='';
a:=strtoint(edit4.Text);
b:=strtofloat(edit5.Text);
edit1.Text:=a*b;
end;
end;

procedure TForm3.Edit10Change(Sender: TObject);
var
a:variant;
b:variant;
begin
if (((radiobutton5.Checked=false)and (radiobutton6.Checked=false)) and (radiobutton7.Checked=false)) then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— ÿ—Ìﬁ… «·œ›⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit10.Text:='';
exit;
end;
if (((edit10.Text='')and (radiobutton6.Checked=true)) or ((edit10.Text='')and (radiobutton7.Checked=true)))then
begin
edit3.Text:=''
end
else
begin
if (((edit10.Text<>'')and (radiobutton6.Checked=true)) or ((edit10.Text<>'')and (radiobutton7.Checked=true))) then
begin
edit3.Text:='';
a:=strtofloat(edit9.Text);
b:=strtofloat(edit10.Text);
edit3.Text:=a-b;
end;
if (radiobutton5.Checked=true)then
begin
edit3.Text:='';
end;
end;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
edit2.Text:='';
edit11.Text:='';
edit8.Text:='';
edit4.Text:='';
edit5.Text:='';
edit1.Text:='';
edit6.Text:='';
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
edit10.Text:=inttostr(0);
edit10.ReadOnly:=true;
edit3.Text:=edit9.Text;
edit7.ReadOnly:=true;

end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
edit10.Text:=edit9.Text;
edit10.ReadOnly:=true;
edit3.Text:=inttostr(0);
edit3.ReadOnly:=true;
edit7.ReadOnly:=false;
end;

procedure TForm3.RadioButton3Click(Sender: TObject);
var
a:variant;
b:variant;
begin
edit10.Text:='';
edit3.Text:='';
edit10.ReadOnly:=false;
edit3.ReadOnly:=false;
if(edit10.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… «·„Õ’·…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit10.SetFocus;
exit;
end
else
begin
a:=strtofloat(edit9.Text);
b:=strtofloat(edit10.Text);
edit10.ReadOnly:=false;
edit3.ReadOnly:=true;
edit7.ReadOnly:=false;
end;
end;
procedure TForm3.RadioButton7Click(Sender: TObject);
begin
BitBtn5.Enabled:=true;
edit10.Text:='';
edit3.Text:='';
edit7.Text:='';
edit7.ReadOnly:=false;
panel4.Enabled:=true;
end;

procedure TForm3.BitBtn7Click(Sender: TObject);
begin
panel5.Visible:=false;
Query_save_in_temp_for_hole_sale.Close;
Query_save_in_temp_for_hole_sale.Prepare;
Query_save_in_temp_for_hole_sale.Open;
while(not(Query_save_in_temp_for_hole_sale.Eof))do
begin
Query_save_in_temp_for_hole_sale.Delete;
end;
bitbtn6.Enabled:=false;
bitbtn7.Enabled:=false;
bitbtn5.Enabled:=false;
bitbtn3.Enabled:=true;
bitbtn1.Enabled:=true;
end;

procedure TForm3.BitBtn6Click(Sender: TObject);
begin
form9.Query_rep_fatora.Close;
form9.Query_rep_fatora.Open;
form9.Query_bring_data_from_paied_for_every_sale.Close;
form9.Query_bring_data_from_paied_for_every_sale.Prepare;
form9.Query_bring_data_from_paied_for_every_sale.Params[0].Value:=form9.Query_rep_fatora['pay_no'];
form9.Query_bring_data_from_paied_for_every_sale.Open;
if (form9.Query_bring_data_from_paied_for_every_sale['pay_type']='‰ﬁœÌ') then
begin
form9.QRLabel14.Caption:='‰ﬁœÌ';
form9.QRLabel15.Caption:=form9.Query_bring_data_from_paied_for_every_sale['paied_value'];
form9.QRLabel16.Caption:=inttostr(0);
end
else
begin
if (form9.Query_bring_data_from_paied_for_every_sale['pay_type']='«Ã·') then
begin
form9.QRLabel14.Caption:='√Ã·';
form9.QRLabel15.Caption:=form9.Query_bring_data_from_paied_for_every_sale['paied_value'];
form9.QRLabel16.Caption:= form9.Query_bring_data_from_paied_for_every_sale['remaining_value'];;
end
else
begin
if (form9.Query_bring_data_from_paied_for_every_sale['pay_type']=' „ «· Õ’Ì·') then
begin
form9.QRLabel14.Caption:='’ﬂ';
form9.QRLabel15.Caption:=form9.Query_bring_data_from_paied_for_every_sale['paied_value'];
form9.QRLabel16.Caption:= inttostr(0);
end
else
begin
if (form9.Query_bring_data_from_paied_for_every_sale['pay_type']='·„ Ì „ «· Õ’Ì·') then
begin
form9.QRLabel14.Caption:='’ﬂ';
form9.QRLabel15.Caption:=inttostr(0);
form9.QRLabel16.Caption:= form9.Query_bring_data_from_paied_for_every_sale['remaining_value'];;
end
else
begin
if (form9.Query_bring_data_from_paied_for_every_sale['pay_type']=' „  Õ’Ì· Ã“¡') then
begin
form9.QRLabel14.Caption:='’ﬂ';
form9.QRLabel15.Caption:=form9.Query_bring_data_from_paied_for_every_sale['paied_value'];
form9.QRLabel16.Caption:=form9.Query_bring_data_from_paied_for_every_sale['remaining_value'];
end;
  
end;
end;
end;
end;
{form9.Query_bring_data_from_paied_for_every_sale
form9.Query_bring_data_from_paied_for_every_sale
form9.Query_bring_data_from_paied_for_every_sale }

form9.QuickRep1.Preview;
end;

procedure TForm3.Edit5Exit(Sender: TObject);
var
a:integer;
b:variant;
begin
if(edit5.Text<>'')then
begin
edit1.Text:='';
a:=strtoint(edit4.Text);
b:=strtofloat(edit5.Text);
edit1.Text:=a*b;
end;
end;

procedure TForm3.Edit13Change(Sender: TObject);
begin
edit2.Text:='';
edit11.Text:='';
edit8.Text:='';
edit4.Text:='';
edit5.Text:='';
edit1.Text:='';
edit6.Text:='';
edit12.Text:='';
Query_quick_search.SQL.Clear;
Query_quick_search.Close;
Query_quick_search.SQL.Add(' select * from types where type_name like "' + edit13.Text + '%" and type_kind ="' + i +' " ' );
Query_quick_search.Open;
dbgrid2.Visible:=false;
dbgrid4.Visible:=true;
end;

procedure TForm3.DBGrid4CellClick(Column: TColumn);
begin
j:=dbgrid4.Fields[0].AsString;
Query_bring_fromstorg.Close;
Query_bring_fromstorg.Prepare;
Query_bring_fromstorg.Params[0].Value:=j;
Query_bring_fromstorg.Params[1].Value:=i;
Query_bring_fromstorg.Open;
if (Query_bring_fromstorg.RecordCount<>0) then
begin
edit2.Text:=Query_bring_fromstorg['st_kind'];
edit11.text:=Query_bring_fromstorg['st_type'];
edit5.Text:=Query_bring_fromstorg['st_type_sale'];
Edit12.Text:=Query_bring_fromstorg['shelf_no'];
Query_total_availble.Close;
Query_total_availble.Prepare;
Query_total_availble.Params[0].Value:=j;
Query_total_availble.Params[1].Value:=i;
Query_total_availble.Open;
edit8.Text:=Query_total_availble['sum']
end
else
begin
application.MessageBox('·« ÌÊÃœ „‰ Â–« «·‰Ê⁄ ›Ï «·„Œ“‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.Text:='';
edit11.Text:='';
edit8.Text:='';
edit4.Text:='';
edit5.Text:='';
edit1.Text:='';
edit6.Text:='';
edit12.Text:='';
end;

end;

end.
