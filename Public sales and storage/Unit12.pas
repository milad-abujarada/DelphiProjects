unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, IBCustomDataSet, IBQuery,
  Grids, DBGrids;

type
  TForm12 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Button2: TButton;
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBQuery1NUM: TIntegerField;
    IBQuery1PAID_TYPE: TIBStringField;
    IBQuery1BILL_NUM: TIntegerField;
    IBQuery1PAID_VALUE: TIBBCDField;
    IBQuery1TOTAL_BILL_PRICE: TIBBCDField;
    IBQuery1SALE_NUM: TIntegerField;
    IBQuery1INPUT_DATE: TDateField;
    IBQuery1CUSTOMER_NAME: TIBStringField;
    IBQuery1REMAINING_VALUE: TIBBCDField;
    DataSource2: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    DataSource3: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit1, Unit13;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
form12.Close;
form1.Show;
end;

procedure TForm12.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
end;

procedure TForm12.DBGrid1CellClick(Column: TColumn);
begin
if ibquery1.RecordCount<>0 then
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=dbgrid1.Fields[0].AsInteger;
ibquery2.Open;
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=dbgrid1.Fields[0].AsInteger;
ibquery3.Open;
if ibquery3['customer_name']='áÇ íæÌÏ' then
form13.QRDBText1.Hide
else
form13.QRDBText1.Show;
form13.QuickRep1.Preview;
end;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery1.Open;
end;

end.
