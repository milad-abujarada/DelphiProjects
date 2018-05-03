unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery2NUM: TIntegerField;
    IBQuery2PAID_TYPE: TIBStringField;
    IBQuery2BILL_NUM: TIntegerField;
    IBQuery2PAID_VALUE: TIBBCDField;
    IBQuery2TOTAL_BILL_PRICE: TIBBCDField;
    IBQuery2SALE_NUM: TIntegerField;
    IBQuery2INPUT_DATE: TDateField;
    IBQuery2CUSTOMER_NAME: TIBStringField;
    IBQuery2REMAINING_VALUE: TIBBCDField;
    IBQuery3: TIBQuery;
    DataSource3: TDataSource;
    IBQuery1CUS_NAME: TIBStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit1, Unit7;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
form8.Close;
form1.show;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
combobox1.Clear;
while(not(IBQuery1.Eof)) do
begin
combobox1.Items.Add(IBQuery1['cus_name']);
IBQuery1.Next;
end;
end;

procedure TForm8.ComboBox1Change(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Params[0].Value:=combobox1.Text;
IBQuery2.Open;

end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
if ibquery1.RecordCount<>0 then
begin
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=dbgrid1.Fields[0].AsInteger;
ibquery3.Open;
form7.QuickRep1.Preview;
end;
end;

end.
