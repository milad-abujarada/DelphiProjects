unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm17 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    IBQuery1: TIBQuery;
    IBQuery1KIND: TIBStringField;
    DataSource1: TDataSource;
    total_profit_limted: TIBQuery;
    total_profit_limtedSUM: TIBBCDField;
    DataSource6: TDataSource;
    total_profit: TIBQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    total_buy: TIBQuery;
    total_buySUM: TIBBCDField;
    total_buy_limted: TIBQuery;
    total_buy_limtedSUM: TIBBCDField;
    DataSource5: TDataSource;
    total_profitSUM: TIBBCDField;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm17.FormShow(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
combobox1.Clear;
while(not(IBQuery1.Eof)) do
begin
combobox1.Items.Add(IBQuery1['kind']);
IBQuery1.Next;
end;
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
end;

procedure TForm17.Button1Click(Sender: TObject);
begin
total_profit.Close;
total_profit.Prepare;
total_profit.Params[0].Value:=combobox1.Text;
total_profit.Open;
if total_profit['sum']=null then
edit1.Text:='0'
else
edit1.Text:=total_profit['sum'];

total_buy.Close;
total_buy.Prepare;
total_buy.Params[0].Value:=combobox1.Text;
total_buy.Open;
if total_buy['sum']=null then
edit4.Text:='0'
else
edit4.Text:=total_buy['sum'];

total_buy_limted.Close;
total_buy_limted.Prepare;
total_buy_limted.Params[0].Value:=combobox1.Text;
total_buy_limted.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
total_buy_limted.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
total_buy_limted.Open;
if total_buy_limted['sum']=null then
edit3.Text:='0'
else
edit3.Text:=total_buy_limted['sum'];

total_profit_limted.Close;
total_profit_limted.Prepare;
total_profit_limted.Params[0].Value:=combobox1.Text;
total_profit_limted.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
total_profit_limted.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
total_profit_limted.Open;
if total_profit_limted['sum']=null then
edit2.Text:='0'
else
edit2.Text:=total_profit_limted['sum'];
end;


procedure TForm17.Button2Click(Sender: TObject);
begin
form17.Close;
form1.show;
end;

end.
