unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, DBTables, Grids, DBGrids,
  ExtCtrls;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query_select_from_spend: TQuery;
    BitBtn1: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    DateTimePicker2: TDateTimePicker;
    Query_total_of_budget_to_the_day_selected: TQuery;
    Query_total_from_paied_for_every_sale: TQuery;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Query_select_daily_sale_from_storge: TQuery;
    DataSource5: TDataSource;
    Query_total_from_collecting_debts: TQuery;
    Label6: TLabel;
    Edit5: TEdit;
    DataSource6: TDataSource;
    Query_select_total_from_retreive: TQuery;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn4: TBitBtn;
    Query_total_of_budget_to_the_day_selectedSUM: TFloatField;
    Label9: TLabel;
    Edit6: TEdit;
    Query_total_from_paied_for_every_saleSUM: TFloatField;
    Query_select_from_spendSUM: TFloatField;
    Query_total_from_collecting_debtsSUM: TFloatField;
    Query_select_total_from_retreiveSUM: TIntegerField;
    Query_select_daily_sale_from_storgeDS_NO: TIntegerField;
    Query_select_daily_sale_from_storgeDS_NAME_TYPE: TStringField;
    Query_select_daily_sale_from_storgeDS_NAME_KIND: TStringField;
    Query_select_daily_sale_from_storgeDS_QUANTITY: TIntegerField;
    Query_select_daily_sale_from_storgeDS_PRICE: TFloatField;
    Query_select_daily_sale_from_storgeDS_DATE: TStringField;
    Query_select_daily_sale_from_storgeTOTAL_PRICE: TFloatField;
    Query_select_daily_sale_from_storgeRECIVER_NAME: TStringField;
    Query_select_daily_sale_from_storgePAY_NUM: TIntegerField;
    DataSource7: TDataSource;
    Query1: TQuery;
    Query1SP_NO: TIntegerField;
    Query1SP_NAME: TStringField;
    Query1SP_CAUSE: TStringField;
    Query1SP_AMOUNT: TFloatField;
    Query1SP_DATE: TStringField;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit8;

{$R *.dfm}

procedure TForm6.BitBtn1Click(Sender: TObject);
var
sum:real;
begin
Query1.Close;
Query1.Prepare;
Query1.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query1.Open;
Query_select_from_spend.Close;
Query_select_from_spend.Prepare;
Query_select_from_spend.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_select_from_spend.open;
if(Query_select_from_spend.RecordCount=0)then
begin
application.MessageBox('·« ÌÊÃœ „’—Ê›«  ·Â–« «·ÌÊ„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.Text;
DateTimePicker1.SetFocus;
exit;
end
else
begin
if(Query_select_from_spend['sum']=null)then
begin
edit1.text:='0';
end
else
begin
edit1.Text:=Query_select_from_spend['sum'];
end;
end;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
edit1.Text:='';
Query_select_from_spend.Close;
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit2.Text:='';
Query_select_daily_sale_from_storge.Close;
form6.Hide;
form1.show;
end;

procedure TForm6.BitBtn3Click(Sender: TObject);
var
a,b,c,d,e:real;
begin
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
Query_total_from_paied_for_every_sale.Close;
Query_total_from_paied_for_every_sale.Prepare;
Query_total_from_paied_for_every_sale.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_total_from_paied_for_every_sale.Open;
Query_select_daily_sale_from_storge.Close;
Query_select_daily_sale_from_storge.Prepare;
Query_select_daily_sale_from_storge.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_select_daily_sale_from_storge.open;
Query_select_from_spend.Close;
Query_select_from_spend.Prepare;
Query_select_from_spend.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_select_from_spend.open;
Query_total_from_collecting_debts.Close;
Query_total_from_collecting_debts.Prepare;
Query_total_from_collecting_debts.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_total_from_collecting_debts.open;
Query_select_total_from_retreive.Close;
Query_select_total_from_retreive.Prepare;
Query_select_total_from_retreive.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_select_total_from_retreive.open;
if (Query_select_total_from_retreive['sum']= null)then
begin
edit6.Text:='0';
d:=0;
end
else
begin
edit6.Text:=Query_select_total_from_retreive['sum'];
d:=Query_select_total_from_retreive['sum'];
end;
if (Query_total_from_collecting_debts['sum']= null)then
begin
edit4.Text:='0';
b:=0;
end
else
begin
edit4.Text:=Query_total_from_collecting_debts['sum'];
b:=Query_total_from_collecting_debts['sum'];
end;
if (Query_select_from_spend['sum']= null)then
begin
edit5.Text:='0';
c:=0;
end
else
begin
edit5.Text:=Query_select_from_spend['sum'];
c:=Query_select_from_spend['sum'];
end;
if (Query_total_from_paied_for_every_sale['sum']= null)then
begin
edit3.Text:='0';
a:=0;
end
else
begin
edit3.Text:=Query_total_from_paied_for_every_sale['sum'];
a:=Query_total_from_paied_for_every_sale['sum'];
end;
e:=a+b-c-d;
edit2.Text:=floattostr(e);

{Query_select_daily_sale_from_storge.Close;
Query_select_daily_sale_from_storge.Prepare;
Query_select_daily_sale_from_storge.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_select_daily_sale_from_storge.Open;
Query_total_of_budget_to_the_day_selected.Close;
Query_total_of_budget_to_the_day_selected.Prepare;
Query_total_of_budget_to_the_day_selected.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_total_of_budget_to_the_day_selected.Open;
Query_total_from_hole_sale.Close;
Query_total_from_hole_sale.Prepare;
Query_total_from_hole_sale.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_total_from_hole_sale.Open;
if((Query_total_of_budget_to_the_day_selected['sum']=null)and (Query_total_from_hole_sale['sum']=null))then
begin
a:=0;
b:=0;
end;
if(Query_total_of_budget_to_the_day_selected['sum']=null)then
begin
a:=0;
end;
if(Query_total_from_hole_sale['sum']=null)then
begin
b:=0;
end;
if((Query_total_of_budget_to_the_day_selected['sum']<>null)and (Query_total_from_hole_sale['sum']<>null))then
begin
a:=Query_total_of_budget_to_the_day_selected['sum'];
b:=Query_total_from_hole_sale['sum'];
end;
if(Query_total_of_budget_to_the_day_selected['sum']<>null) then
begin
a:=Query_total_of_budget_to_the_day_selected['sum'];
end;
if(Query_total_from_hole_sale['sum']<>null)then
begin
b:=Query_total_from_hole_sale['sum'];
end;
edit3.Text:=floattostr(a+b);
Query_total_from_collecting_debts.Close;
Query_total_from_collecting_debts.Prepare;
Query_total_from_collecting_debts.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_total_from_collecting_debts.Open;
if(Query_total_from_collecting_debts['sum']=null)then
begin
c:=0;
edit4.Text:=floattostr(c);
end
else
begin
c:=Query_total_from_collecting_debts['sum'];
edit4.Text:=floattostr(c);
end;
Query_select_total_from_spend.Close;
Query_select_total_from_spend.Prepare;
Query_select_total_from_spend.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_select_total_from_spend.Open;
if(Query_select_total_from_spend['sum']=null)then
begin
d:=0;
edit5.Text:=floattostr(d);
end
else
begin
d:=Query_select_total_from_spend['sum'];
edit5.Text:=floattostr(d);
end;
edit2.Text:=floattostr((a+b+c)-d);}
end;

procedure TForm6.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;
end;

procedure TForm6.DateTimePicker1Change(Sender: TObject);
begin
edit1.Text:='';
Query_select_from_spend.Close;
end;

procedure TForm6.DateTimePicker2Change(Sender: TObject);
begin
Query_select_daily_sale_from_storge.Close;
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end;

procedure TForm6.BitBtn4Click(Sender: TObject);
begin
form6.Hide;
form8.show;
end;

end.
