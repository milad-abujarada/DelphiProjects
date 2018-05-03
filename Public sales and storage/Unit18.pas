unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm18 = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    total_profit: TIBQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    total_buy: TIBQuery;
    total_buy_limted: TIBQuery;
    total_buy_limtedSUM: TIBBCDField;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    total_profit_limted: TIBQuery;
    total_profitSUM: TIBBCDField;
    total_buySUM: TIBBCDField;
    total_profit_limtedSUM: TIBBCDField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

procedure TForm18.Button2Click(Sender: TObject);
begin
form18.Close;
form1.show;
end;

procedure TForm18.Button1Click(Sender: TObject);
begin
total_profit.Close;
total_profit.Prepare;
total_profit.Open;
if total_profit['sum']=null then
edit1.Text:='0'
else
edit1.Text:=total_profit['sum'];

total_buy.Close;
total_buy.Prepare;
total_buy.Open;
if total_buy['sum']=null then
edit4.Text:='0'
else
edit4.Text:=total_buy['sum'];

total_buy_limted.Close;
total_buy_limted.Prepare;
total_buy_limted.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
total_buy_limted.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
total_buy_limted.Open;
if total_buy_limted['sum']=null then
edit3.Text:='0'
else
edit3.Text:=total_buy_limted['sum'];

total_profit_limted.Close;
total_profit_limted.Prepare;
total_profit_limted.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
total_profit_limted.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
total_profit_limted.Open;
if total_profit_limted['sum']=null then
edit2.Text:='0'
else
edit2.Text:=total_profit_limted['sum'];
end;

procedure TForm18.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
end;

end.
