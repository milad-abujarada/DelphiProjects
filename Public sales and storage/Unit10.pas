unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ExtCtrls,
  IBUpdateSQL, IBTable;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Button1: TButton;
    IBQuery2SUM: TLargeintField;
    Edit1: TEdit;
    Label1: TLabel;
    IBQuery3: TIBQuery;
    DataSource3: TDataSource;
    IBQuery3SUM: TIBBCDField;
    DataSource4: TDataSource;
    IBQuery4: TIBQuery;
    IBQuery4NAME: TIBStringField;
    Button2: TButton;
    IBQuery1KIND: TIBStringField;
    IBQuery1NAME: TIBStringField;
    IBQuery1QUANTITY: TIntegerField;
    IBQuery5: TIBQuery;
    DataSource5: TDataSource;
    IBQuery5KIND: TIBStringField;
    IBUpdateSQL1: TIBUpdateSQL;
    IBTable1: TIBTable;
    DataSource6: TDataSource;
    IBTable1KIND: TIBStringField;
    IBTable1NAME: TIBStringField;
    IBTable1QUANTITY: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure IBQuery1CalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Open;
while not(ibquery1.Eof) do
ibquery1.Delete;
form10.Close;
form1.show;
end;

procedure TForm10.IBQuery1CalcFields(DataSet: TDataSet);
begin
ibquery2.Close;
ibquery2.Params[0].Value:=ibquery1['kind'];
ibquery2.Params[1].Value:=ibquery1['name'];
ibquery2.Open;
ibquery1['total']:=ibquery2['sum'];
end;

procedure TForm10.FormShow(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Open;
while not(ibquery1.Eof) do
ibquery1.Delete;
IBQuery5.Close;
IBQuery5.Open;
while not(IBQuery5.Eof) do
begin
IBQuery4.Close;
IBQuery4.Prepare;
IBQuery4.Params[0].Value:=ibquery5['kind'];
IBQuery4.Open;
while not(IBQuery4.Eof) do
begin
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Params[0].Value:=ibquery5['kind'];
ibquery2.Params[1].Value:=ibquery4['name'];
IBQuery2.Open;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['kind']:=ibquery5['kind'];
ibtable1['name']:=ibquery4['name'];
ibtable1['quantity']:=ibquery2['sum'];
ibtable1.Post;
ibquery4.Next;
end;
ibquery5.Next;
end;
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
IBQuery3.Close;
IBQuery3.Prepare;
IBQuery3.Open;
if ibquery3['sum']=null then
edit1.Text:='0'
else
edit1.Text:=ibquery3['sum'];
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
form61.QuickRep9.Preview;
end;

end.
