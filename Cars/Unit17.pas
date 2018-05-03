unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TForm17 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query_select_data_from_gain: TQuery;
    Query_total_buy_price: TQuery;
    Query_total_budget: TQuery;
    Query_total_wining: TQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Query_select_data_from_gainNUM: TIntegerField;
    Query_select_data_from_gainKIND: TStringField;
    Query_select_data_from_gainTYPE_NAME: TStringField;
    Query_select_data_from_gainQUANTITY: TIntegerField;
    Query_select_data_from_gainAVAILBLE: TIntegerField;
    Query_select_data_from_gainTOTAL_BUDGET: TFloatField;
    Query_select_data_from_gainINPUT_DATE: TStringField;
    Query_select_data_from_gainSALE_PRICE: TFloatField;
    Query_select_data_from_gainBUY_PRICE: TFloatField;
    Query_select_data_from_gainTOTAL_BUY_PRICE: TFloatField;
    Query_select_data_from_gainNO_IN_STORGE: TIntegerField;
    Query_total_buy_priceSUM: TFloatField;
    Query_total_budgetSUM: TFloatField;
    Query_select_data_from_gainWINING: TFloatField;
    Edit3: TEdit;
    Label3: TLabel;
    Query_total_winingSUM: TFloatField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    DataSource5: TDataSource;
    Query_delete: TQuery;
    Query_deleteNUM: TIntegerField;
    Query_deleteKIND: TStringField;
    Query_deleteTYPE_NAME: TStringField;
    Query_deleteQUANTITY: TIntegerField;
    Query_deleteAVAILBLE: TIntegerField;
    Query_deleteTOTAL_BUDGET: TFloatField;
    Query_deleteINPUT_DATE: TStringField;
    Query_deleteSALE_PRICE: TFloatField;
    Query_deleteBUY_PRICE: TFloatField;
    Query_deleteTOTAL_BUY_PRICE: TFloatField;
    Query_deleteNO_IN_STORGE: TIntegerField;
    Query_deleteWINING: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

uses Unit7;

{$R *.dfm}

procedure TForm17.FormShow(Sender: TObject);
begin
Query_select_data_from_gain.Close;
Query_select_data_from_gain.Prepare;
Query_select_data_from_gain.Open;
Query_total_buy_price.Close;
Query_total_buy_price.Prepare;
Query_total_buy_price.Open;
if(Query_total_buy_price['sum']=null)then
begin
edit1.Text:='0';
end
else
begin
edit1.Text:=Query_total_buy_price['sum'];
end;
Query_total_budget.Close;
Query_total_budget.Prepare;
Query_total_budget.Open;
if(Query_total_budget['sum']=null)then
begin
edit2.Text:='0';
end
else
begin
edit2.Text:=Query_total_budget['sum'];
end;
Query_total_wining.Close;
Query_total_wining.Prepare;
Query_total_wining.Open;
if(Query_total_wining['sum']=null)then
begin
edit3.Text:='0';
end
else
begin
edit3.Text:=Query_total_wining['sum'];
end;
end;

procedure TForm17.BitBtn1Click(Sender: TObject);
begin
form17.Hide;
form7.Show;
end;

procedure TForm17.BitBtn2Click(Sender: TObject);
var
n:integer;
begin
n:=application.messagebox('Â·  —Ìœ »«· √ﬂÌœ „”Õ «·ﬂ„Ì«  «·„‰ ÂÌÂ','„‰ŸÊ„… «·Õ”«»« ',mb_iconquestion+mb_yesno);
if(n=id_yes)then
begin
Query_delete.Close;
Query_delete.Prepare;
Query_delete.Open;
while(not(Query_delete.Eof))do
begin
Query_delete.Delete;
end;
Query_select_data_from_gain.Close;
Query_select_data_from_gain.Prepare;
Query_select_data_from_gain.Open;
Query_total_buy_price.Close;
Query_total_buy_price.Prepare;
Query_total_buy_price.Open;
if(Query_total_buy_price['sum']=null)then
begin
edit1.Text:='0';
end
else
begin
edit1.Text:=Query_total_buy_price['sum'];
end;
Query_total_budget.Close;
Query_total_budget.Prepare;
Query_total_budget.Open;
if(Query_total_budget['sum']=null)then
begin
edit2.Text:='0';
end
else
begin
edit2.Text:=Query_total_budget['sum'];
end;
Query_total_wining.Close;
Query_total_wining.Prepare;
Query_total_wining.Open;
if(Query_total_wining['sum']=null)then
begin
edit3.Text:='0';
end
else
begin
edit3.Text:=Query_total_wining['sum'];
end;
end;
end;

end.
