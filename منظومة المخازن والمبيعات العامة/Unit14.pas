unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, IBCustomDataSet, IBQuery;

type
  TForm14 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery2NAME: TIBStringField;
    IBQuery2KIND: TIBStringField;
    IBQuery2QUANTITY: TIntegerField;
    IBQuery2SALE_NUM: TIntegerField;
    IBQuery2SALE_PRICE: TIBBCDField;
    IBQuery2NUM: TIntegerField;
    IBQuery2TOTAL_PIECE_PRICE: TIBBCDField;
    IBQuery1NUM: TIntegerField;
    IBQuery1PAID_TYPE: TIBStringField;
    IBQuery1BILL_NUM: TIntegerField;
    IBQuery1PAID_VALUE: TIBBCDField;
    IBQuery1TOTAL_BILL_PRICE: TIBBCDField;
    IBQuery1SALE_NUM: TIntegerField;
    IBQuery1INPUT_DATE: TDateField;
    IBQuery1CUSTOMER_NAME: TIBStringField;
    IBQuery1REMAINING_VALUE: TIBBCDField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses Unit1, Unit15, Unit13;

{$R *.dfm}

procedure TForm14.Button2Click(Sender: TObject);
begin
edit1.Text:='';
form14.Close;
form1.show;
end;

procedure TForm14.Button1Click(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Params[0].Value:=edit1.Text;
ibquery1.Open;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=edit1.Text;
ibquery2.Open;
if ibquery1.RecordCount<>0 then
begin
if ibquery1['customer_name']= 'áÇíæÌÏ' then
form15.QRDBText1.DataSet.Cancel
else
begin
form15.QRDBText1.DataSet:=ibquery1;
form15.QuickRep1.Preview;
end;
end;
end;
end.
