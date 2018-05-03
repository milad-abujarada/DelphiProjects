unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, DB, DBTables,
  ComCtrls;

type
  TForm11 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Query_bring_payno_from_debt: TQuery;
    Query_bring_data_from_daily_store_and_save_it: TQuery;
    Query_data_from_temp_for_all_debts: TQuery;
    Query_bring_data_from_daily_store_and_save_itDS_NO: TIntegerField;
    Query_bring_data_from_daily_store_and_save_itDS_NAME_TYPE: TStringField;
    Query_bring_data_from_daily_store_and_save_itDS_NAME_KIND: TStringField;
    Query_bring_data_from_daily_store_and_save_itDS_QUANTITY: TIntegerField;
    Query_bring_data_from_daily_store_and_save_itDS_PRICE: TFloatField;
    Query_bring_data_from_daily_store_and_save_itDS_DATE: TStringField;
    Query_bring_data_from_daily_store_and_save_itTOTAL_PRICE: TFloatField;
    Query_bring_data_from_daily_store_and_save_itRECIVER_NAME: TStringField;
    Query_bring_data_from_daily_store_and_save_itPAY_NUM: TIntegerField;
    Query_data_from_temp_for_all_debtsKIND_NAME: TStringField;
    Query_data_from_temp_for_all_debtsDAILY_DATE: TStringField;
    Query_data_from_temp_for_all_debtsTOTAL_PRICE_FOR_PEICE: TFloatField;
    Query_data_from_temp_for_all_debtsPIECE_PRICE: TFloatField;
    Query_data_from_temp_for_all_debtsSERIAL: TIntegerField;
    Query_data_from_temp_for_all_debtsTYPE_NAME: TStringField;
    Query_data_from_temp_for_all_debtsQUANTITY: TIntegerField;
    Query_data_from_temp_for_all_debtsRECEIVER_NAME: TStringField;
    DataSource4: TDataSource;
    Query_max_from_temp: TQuery;
    Query_max_from_tempMAX: TIntegerField;
    Query_bring_payno_from_debtDEBT_NO: TIntegerField;
    Query_bring_payno_from_debtDEBT_CUS_NAME: TStringField;
    Query_bring_payno_from_debtDEBT_DATE: TStringField;
    Query_bring_payno_from_debtDEBT_VALUE: TFloatField;
    Query_bring_payno_from_debtNUM_IN_DAILY_SALE: TIntegerField;
    DateTimePicker1: TDateTimePicker;
    DataSource5: TDataSource;
    Query_sum_for_total_fatora: TQuery;
    Query_sum_for_total_fatoraSUM: TFloatField;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
  debt_name:string;
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit4, Unit12;

{$R *.dfm}

procedure TForm11.DBGrid1CellClick(Column: TColumn);
begin
form4.Query_total_debt.close;
form4.Query_total_debt.Prepare;
form4.Query_total_debt.Open;
if (form4.Query_total_debt['sum']<>null) then
begin
edit1.Text:='';
label2.Caption:='--------------------------------------------------------';
debt_name:=dbgrid1.Fields[0].AsString;
BitBtn1.Enabled:=true;
BitBtn2.Enabled:=true;
bitbtn3.Enabled:=true;
end;
end;

procedure TForm11.BitBtn4Click(Sender: TObject);
begin
edit1.Text:='';
label2.Caption:='--------------------------------------------------------';
bitbtn1.Enabled:=false;
bitbtn2.Enabled:=false;
bitbtn3.Enabled:=false;
form4.show;
form4.Query_get_debts_information.Close;
form4.Query_get_debts_information.Prepare;
form4.Query_get_debts_information.Open;
form11.Hide;
end;

procedure TForm11.BitBtn2Click(Sender: TObject);
var
n:integer;
begin
n:=application.messagebox('Â·  —Ìœ »«· √ﬂÌœ”œ«œ «Ã„«·Ï œÌ‰ «·‘Œ’ «·„Œ «—','„‰ŸÊ„… «·Õ”«»« ',mb_iconquestion+mb_yesno);
if(n=id_yes)then
begin
form4.Query_debt_for_someone.Close;
form4.Query_debt_for_someone.Prepare;
form4.Query_debt_for_someone.Params[0].Value:=debt_name;
form4.Query_debt_for_someone.Open;
Query_data_from_temp_for_all_debts.Close;
Query_data_from_temp_for_all_debts.Prepare;
Query_data_from_temp_for_all_debts.Open;
while(not(Query_data_from_temp_for_all_debts.Eof))do
begin
Query_data_from_temp_for_all_debts.Delete;
end;
Query_bring_payno_from_debt.Close;
Query_bring_payno_from_debt.Prepare;
Query_bring_payno_from_debt.Params[0].Value:=debt_name;
Query_bring_payno_from_debt.Open;
while(not(Query_bring_payno_from_debt.Eof))do
begin
Query_bring_data_from_daily_store_and_save_it.Close;
Query_bring_data_from_daily_store_and_save_it.Prepare;
Query_bring_data_from_daily_store_and_save_it.Params[0].Value:=Query_bring_payno_from_debt['num_in_daily_sale'];
Query_bring_data_from_daily_store_and_save_it.Open;
while(not(Query_bring_data_from_daily_store_and_save_it.Eof))do
begin
Query_max_from_temp.Close;
Query_max_from_temp.Prepare;
Query_max_from_temp.Open;
Query_data_from_temp_for_all_debts.Close;
Query_data_from_temp_for_all_debts.Prepare;
Query_data_from_temp_for_all_debts.Open;
Query_data_from_temp_for_all_debts.Append;
Query_data_from_temp_for_all_debts['kind_name']:=Query_bring_data_from_daily_store_and_save_it['ds_name_kind'];
Query_data_from_temp_for_all_debts['type_name']:=Query_bring_data_from_daily_store_and_save_it['ds_name_type'];
Query_data_from_temp_for_all_debts['quantity']:=Query_bring_data_from_daily_store_and_save_it['ds_quantity'];
Query_data_from_temp_for_all_debts['piece_price']:=Query_bring_data_from_daily_store_and_save_it['ds_price'];
Query_data_from_temp_for_all_debts['total_price_for_peice']:=Query_bring_data_from_daily_store_and_save_it['total_price'];
Query_data_from_temp_for_all_debts['daily_date']:=Query_bring_data_from_daily_store_and_save_it['ds_date'];
Query_data_from_temp_for_all_debts['receiver_name']:=Query_bring_data_from_daily_store_and_save_it['reciver_name'];
if(Query_max_from_temp['max']=null)then
begin
Query_data_from_temp_for_all_debts['serial']:=1;
end
else
begin
Query_data_from_temp_for_all_debts['serial']:=Query_max_from_temp['max']+1;
end;
Query_data_from_temp_for_all_debts.Post;
Query_bring_data_from_daily_store_and_save_it.Next;
end;
Query_bring_payno_from_debt.delete;
end;

form4.Query_max_cd_no.Close;
form4.Query_max_cd_no.Prepare;
form4.Query_max_cd_no.Open;
form4.Query_save_in_collecting_debts.Close;
form4.Query_save_in_collecting_debts.Prepare;
form4.Query_save_in_collecting_debts.Open;
form4.Query_save_in_collecting_debts.Append;
if (form4.Query_max_cd_no['max']= null)then
begin
form4.Query_save_in_collecting_debts['cd_no']:=1;
end
else
begin
form4.Query_save_in_collecting_debts['cd_no']:=form4.Query_max_cd_no['max']+1;
end;
form4.Query_save_in_collecting_debts['num_in_daily_sale']:=-1;
form4.Query_save_in_collecting_debts['cd_cus_name']:=debt_name;
form4.Query_save_in_collecting_debts['cd_debt_pay_value']:=form4.Query_debt_for_someone['sum'];
form4.Query_save_in_collecting_debts['cd_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form4.Query_save_in_collecting_debts['cd_remaining']:= 0;
form4.Query_save_in_collecting_debts.Post;
bitbtn1.Enabled:=false;
bitbtn2.Enabled:=false;
bitbtn3.Enabled:=true;
form4.Query_select_whitout_repeat.Close;
form4.Query_select_whitout_repeat.open;
Query_data_from_temp_for_all_debts.Close;
Query_data_from_temp_for_all_debts.Open;
edit1.Text:='';
label2.Caption:='--------------------------------------------------------';
form12.QRLabel16.Caption:=debt_name;
form12.QRLabel25.Caption:=form4.Query_debt_for_someone['sum'];
form12.QRLabel22.Caption:='0';
Query_sum_for_total_fatora.Close;
Query_sum_for_total_fatora.Prepare;
Query_sum_for_total_fatora.Open;
form12.QuickRep1.Preview;
bitbtn3.Enabled:=false;
end;
end;

procedure TForm11.BitBtn1Click(Sender: TObject);
begin
form4.Query_debt_for_someone.Close;
form4.Query_debt_for_someone.Prepare;
form4.Query_debt_for_someone.Params[0].Value:=debt_name;
form4.Query_debt_for_someone.Open;
label2.Caption:=debt_name;
edit1.Text:=form4.Query_debt_for_someone['sum'];
end;

procedure TForm11.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=now;
end;

procedure TForm11.BitBtn3Click(Sender: TObject);
begin

form4.Query_debt_for_someone.Close;
form4.Query_debt_for_someone.Prepare;
form4.Query_debt_for_someone.Params[0].Value:=debt_name;
form4.Query_debt_for_someone.Open;
Query_data_from_temp_for_all_debts.Close;
Query_data_from_temp_for_all_debts.Prepare;
Query_data_from_temp_for_all_debts.Open;
while(not(Query_data_from_temp_for_all_debts.Eof))do
begin //1
Query_data_from_temp_for_all_debts.Delete;
end;
Query_bring_payno_from_debt.Close;
Query_bring_payno_from_debt.Prepare;
Query_bring_payno_from_debt.Params[0].Value:=debt_name;
Query_bring_payno_from_debt.Open;
while(not(Query_bring_payno_from_debt.Eof))do
begin    //2
Query_bring_data_from_daily_store_and_save_it.Close;
Query_bring_data_from_daily_store_and_save_it.Prepare;
Query_bring_data_from_daily_store_and_save_it.Params[0].Value:=Query_bring_payno_from_debt['num_in_daily_sale'];
Query_bring_data_from_daily_store_and_save_it.Open;
while(not(Query_bring_data_from_daily_store_and_save_it.Eof))do
begin       //3
Query_max_from_temp.Close;
Query_max_from_temp.Prepare;
Query_max_from_temp.Open;
Query_data_from_temp_for_all_debts.Close;
Query_data_from_temp_for_all_debts.Prepare;
Query_data_from_temp_for_all_debts.Open;
Query_data_from_temp_for_all_debts.Append;
Query_data_from_temp_for_all_debts['kind_name']:=Query_bring_data_from_daily_store_and_save_it['ds_name_kind'];
Query_data_from_temp_for_all_debts['type_name']:=Query_bring_data_from_daily_store_and_save_it['ds_name_type'];
Query_data_from_temp_for_all_debts['quantity']:=Query_bring_data_from_daily_store_and_save_it['ds_quantity'];
Query_data_from_temp_for_all_debts['piece_price']:=Query_bring_data_from_daily_store_and_save_it['ds_price'];
Query_data_from_temp_for_all_debts['total_price_for_peice']:=Query_bring_data_from_daily_store_and_save_it['total_price'];
Query_data_from_temp_for_all_debts['daily_date']:=Query_bring_data_from_daily_store_and_save_it['ds_date'];
Query_data_from_temp_for_all_debts['receiver_name']:=Query_bring_data_from_daily_store_and_save_it['reciver_name'];
if(Query_max_from_temp['max']=null)then
begin         //4
Query_data_from_temp_for_all_debts['serial']:=1;
end              //4
else
begin               //5
Query_data_from_temp_for_all_debts['serial']:=Query_max_from_temp['max']+1;
end;                //5
Query_data_from_temp_for_all_debts.Post;
Query_bring_data_from_daily_store_and_save_it.Next;
end;
Query_bring_payno_from_debt.Next;                  //3
end;
Query_sum_for_total_fatora.Close;
Query_sum_for_total_fatora.Prepare;
Query_sum_for_total_fatora.Open;
Query_data_from_temp_for_all_debts.close;
Query_data_from_temp_for_all_debts.open;
form12.QRLabel16.Caption:=debt_name;
form12.QRLabel25.Caption:=Query_sum_for_total_fatora['sum']-form4.Query_debt_for_someone['sum'];
form12.QRLabel22.Caption:=form4.Query_debt_for_someone['sum'];
form12.QuickRep1.Preview;                       //2
end; //1                 


end.
