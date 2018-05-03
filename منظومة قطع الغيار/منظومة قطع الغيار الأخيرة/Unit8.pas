unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, DB,
  DBTables;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Edit1: TEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query_select_spend: TQuery;
    Query_total_spend: TQuery;
    Query_select_spendSP_NO: TIntegerField;
    Query_select_spendSP_NAME: TStringField;
    Query_select_spendSP_CAUSE: TStringField;
    Query_select_spendSP_AMOUNT: TFloatField;
    Query_select_spendSP_DATE: TStringField;
    Query_total_spendSUM: TFloatField;
    BitBtn2: TBitBtn;
    dbgrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm8.FormShow(Sender: TObject);
begin
DateTimePicker2.Date:=now;
DateTimePicker1.Date:=now;
end;

procedure TForm8.BitBtn1Click(Sender: TObject);
begin
Query_select_spend.Close;
Query_select_spend.Prepare;
Query_select_spend.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_select_spend.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_select_spend.open;
Query_total_spend.Close;
Query_total_spend.Prepare;
Query_total_spend.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_total_spend.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_total_spend.open;
if (Query_total_spend['sum']=null)then
begin
edit1.Text:=inttostr(0);
end
else
begin
edit1.Text:=Query_total_spend['sum'];
end;

end;

procedure TForm8.BitBtn2Click(Sender: TObject);
begin
Query_select_spend.Close;
edit1.Text:='';
form6.show;
form8.Hide;
end;

end.
