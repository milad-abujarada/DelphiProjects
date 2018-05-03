unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons;

type
  TForm19 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query_debt_name_without_repeat: TQuery;
    Query_debt_name_without_repeatDEBT_CUS_NAME: TStringField;
    BitBtn1: TBitBtn;
    DataSource2: TDataSource;
    Query_bring_payno_from_debt: TQuery;
    Query_bring_payno_from_debtDEBT_NO: TIntegerField;
    Query_bring_payno_from_debtDEBT_CUS_NAME: TStringField;
    Query_bring_payno_from_debtDEBT_DATE: TStringField;
    Query_bring_payno_from_debtDEBT_VALUE: TFloatField;
    Query_bring_payno_from_debtNUM_IN_DAILY_SALE: TIntegerField;
    DataSource3: TDataSource;
    Query_data_from_temp_for_all_debts: TQuery;
    Query_data_from_temp_for_all_debtsKIND_NAME: TStringField;
    Query_data_from_temp_for_all_debtsDAILY_DATE: TStringField;
    Query_data_from_temp_for_all_debtsTOTAL_PRICE_FOR_PEICE: TFloatField;
    Query_data_from_temp_for_all_debtsPIECE_PRICE: TFloatField;
    Query_data_from_temp_for_all_debtsSERIAL: TIntegerField;
    Query_data_from_temp_for_all_debtsTYPE_NAME: TStringField;
    Query_data_from_temp_for_all_debtsQUANTITY: TIntegerField;
    Query_data_from_temp_for_all_debtsRECEIVER_NAME: TStringField;
    Query_data_from_temp_for_all_debtsPAY_NO_IN_DAILY_SALE: TIntegerField;
    Query_bring_data_from_daily_store_and_save_it: TQuery;
    Query_bring_data_from_daily_store_and_save_itDS_NO: TIntegerField;
    Query_bring_data_from_daily_store_and_save_itDS_NAME_TYPE: TStringField;
    Query_bring_data_from_daily_store_and_save_itDS_NAME_KIND: TStringField;
    Query_bring_data_from_daily_store_and_save_itDS_QUANTITY: TIntegerField;
    Query_bring_data_from_daily_store_and_save_itDS_PRICE: TFloatField;
    Query_bring_data_from_daily_store_and_save_itDS_DATE: TStringField;
    Query_bring_data_from_daily_store_and_save_itTOTAL_PRICE: TFloatField;
    Query_bring_data_from_daily_store_and_save_itRECIVER_NAME: TStringField;
    Query_bring_data_from_daily_store_and_save_itPAY_NUM: TIntegerField;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    Query_max_from_temp: TQuery;
    Query_max_from_tempMAX: TIntegerField;
    Query_data_from_temp_for_all_debtsSERIAL_DAILY_SALE: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

uses Unit1, Unit21;

{$R *.dfm}

procedure TForm19.FormShow(Sender: TObject);
begin
Query_debt_name_without_repeat.Close;
Query_debt_name_without_repeat.Prepare;
Query_debt_name_without_repeat.Open;
end;

procedure TForm19.BitBtn1Click(Sender: TObject);
begin
form19.Hide;
form1.Show;
end;

procedure TForm19.DBGrid1CellClick(Column: TColumn);
begin
if(Query_debt_name_without_repeat.RecordCount<>0) then
begin
Query_data_from_temp_for_all_debts.Close;
Query_data_from_temp_for_all_debts.Prepare;
Query_data_from_temp_for_all_debts.Open;
while(not(Query_data_from_temp_for_all_debts.Eof))do
begin
Query_data_from_temp_for_all_debts.Delete;
end;
Query_bring_payno_from_debt.Close;
Query_bring_payno_from_debt.Prepare;
Query_bring_payno_from_debt.Params[0].Value:=dbgrid1.Fields[0].AsString;
Query_bring_payno_from_debt.Open;
while(not(Query_bring_payno_from_debt.Eof))do
begin //1
Query_bring_data_from_daily_store_and_save_it.Close;
Query_bring_data_from_daily_store_and_save_it.Prepare;
Query_bring_data_from_daily_store_and_save_it.Params[0].Value:=Query_bring_payno_from_debt['num_in_daily_sale'];
Query_bring_data_from_daily_store_and_save_it.Open;
while(not(Query_bring_data_from_daily_store_and_save_it.Eof))do
begin //2
Query_max_from_temp.Close;
Query_max_from_temp.Prepare;
Query_max_from_temp.Open;
Query_data_from_temp_for_all_debts.Close;
Query_data_from_temp_for_all_debts.Prepare;
Query_data_from_temp_for_all_debts.Open;
Query_data_from_temp_for_all_debts.Append;
if(Query_max_from_temp['max']=null)then
begin//3
Query_data_from_temp_for_all_debts['serial']:=1;
end//3
else
begin//4
Query_data_from_temp_for_all_debts['serial']:=Query_max_from_temp['max']+1;
end;//4
Query_data_from_temp_for_all_debts['serial_daily_sale']:=Query_bring_data_from_daily_store_and_save_it['ds_no'];
Query_data_from_temp_for_all_debts['kind_name']:=Query_bring_data_from_daily_store_and_save_it['ds_name_kind'];
Query_data_from_temp_for_all_debts['type_name']:=Query_bring_data_from_daily_store_and_save_it['ds_name_type'];
Query_data_from_temp_for_all_debts['daily_date']:=Query_bring_data_from_daily_store_and_save_it['ds_date'];
Query_data_from_temp_for_all_debts['quantity']:=Query_bring_data_from_daily_store_and_save_it['ds_quantity'];
Query_data_from_temp_for_all_debts['piece_price']:=Query_bring_data_from_daily_store_and_save_it['ds_price'];
Query_data_from_temp_for_all_debts['total_price_for_peice']:=Query_bring_data_from_daily_store_and_save_it['total_price'];
Query_data_from_temp_for_all_debts['receiver_name']:=Query_bring_data_from_daily_store_and_save_it['reciver_name'];
Query_data_from_temp_for_all_debts['pay_no_in_daily_sale']:=Query_bring_data_from_daily_store_and_save_it['pay_num'];
Query_data_from_temp_for_all_debts.Post;
Query_bring_data_from_daily_store_and_save_it.Next;
end;//2
Query_bring_payno_from_debt.Next;
end;//1
form19.Hide;
form21.Show;
form21.Label2.Caption:=dbgrid1.Fields[0].AsString;
end;
end;
end.
