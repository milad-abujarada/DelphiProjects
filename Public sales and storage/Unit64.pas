unit Unit64;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBUpdateSQL, StdCtrls, DBCtrls,
  Grids, DBGrids, ExtCtrls;

type
  TForm64 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBQuery1NAME: TIBStringField;
    IBQuery1CAUSE: TIBStringField;
    IBQuery1NUM: TIntegerField;
    IBQuery1AMOUNT: TIBBCDField;
    IBQuery1INPUT_DATE: TDateField;
    IBUpdateSQL1: TIBUpdateSQL;
    Button2: TButton;
    DataSource2: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery2NAME: TIBStringField;
    IBQuery2CAUSE: TIBStringField;
    IBQuery2NUM: TIntegerField;
    IBQuery2AMOUNT: TIBBCDField;
    IBQuery2INPUT_DATE: TDateField;
    procedure FormShow(Sender: TObject);
    procedure IBQuery1AfterDelete(DataSet: TDataSet);
    procedure IBQuery1AfterPost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form64: TForm64;

implementation

uses Unit1, Unit54;

{$R *.dfm}

procedure TForm64.FormShow(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
end;

procedure TForm64.IBQuery1AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
end;

procedure TForm64.IBQuery1AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
end;

procedure TForm64.Button1Click(Sender: TObject);
begin
form64.Close;
form1.show;
end;

procedure TForm64.Button2Click(Sender: TObject);
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=dbgrid1.Fields[0].AsInteger;
ibquery2.Open;
form54.QuickRep3.Preview;
end;

end.
