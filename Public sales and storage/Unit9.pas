unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, IBCustomDataSet, IBQuery;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label7: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    Edit4: TEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    total_profit: TIBQuery;
    Button2: TButton;
    IBQuery1KIND: TIBStringField;
    IBQuery2NAME: TIBStringField;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    total_buy: TIBQuery;
    total_buy_limted: TIBQuery;
    total_profit_limted: TIBQuery;
    total_buySUM: TIBBCDField;
    total_profit_limtedSUM: TIBBCDField;
    total_buy_limtedSUM: TIBBCDField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm9.Button2Click(Sender: TObject);
begin
form9.Close;
form1.show;
end;

procedure TForm9.FormShow(Sender: TObject);
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

procedure TForm9.ComboBox1Change(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Params[0].Value:=combobox1.Text;
IBQuery2.Open;
combobox2.Clear;
while(not(IBQuery2.Eof))do
begin
combobox2.Items.Add(IBQuery2['name']);
IBQuery2.Next;
end;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
total_profit.Close;
total_profit.Prepare;
total_profit.Params[0].Value:=combobox1.Text;
total_profit.Params[1].Value:=combobox2.Text;
total_profit.Open;
if total_profit['sum']=null then
edit1.Text:='0'
else
edit1.Text:=total_profit['sum'];

total_buy.Close;
total_buy.Prepare;
total_buy.Params[0].Value:=combobox1.Text;
total_buy.Params[1].Value:=combobox2.Text;
total_buy.Open;
if total_buy['sum']=null then
edit4.Text:='0'
else
edit4.Text:=total_buy['sum'];

total_buy_limted.Close;
total_buy_limted.Prepare;
total_buy_limted.Params[0].Value:=combobox1.Text;
total_buy_limted.Params[1].Value:=combobox2.Text;
total_buy_limted.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
total_buy_limted.Params[3].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
total_buy_limted.Open;
if total_buy_limted['sum']=null then
edit3.Text:='0'
else
edit3.Text:=total_buy_limted['sum'];

total_profit_limted.Close;
total_profit_limted.Prepare;
total_profit_limted.Params[0].Value:=combobox1.Text;
total_profit_limted.Params[1].Value:=combobox2.Text;
total_profit_limted.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
total_profit_limted.Params[3].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
total_profit_limted.Open;
if total_profit_limted['sum']=null then
edit2.Text:='0'
else
edit2.Text:=total_profit_limted['sum'];
end;
end.
