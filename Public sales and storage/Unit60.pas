unit Unit60;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TForm60 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    IBQuery1NAME: TIBStringField;
    IBQuery1CAUSE: TIBStringField;
    IBQuery1NUM: TIntegerField;
    IBQuery1AMOUNT: TIBBCDField;
    IBQuery1INPUT_DATE: TDateField;
    Button2: TButton;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    IBQuery2NAME: TIBStringField;
    IBQuery2CAUSE: TIBStringField;
    IBQuery2NUM: TIntegerField;
    IBQuery2AMOUNT: TIBBCDField;
    IBQuery2INPUT_DATE: TDateField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBQuery1AfterDelete(DataSet: TDataSet);
    procedure IBQuery1AfterPost(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form60: TForm60;

implementation

uses Unit1, Unit54;

{$R *.dfm}

procedure TForm60.Button1Click(Sender: TObject);
begin
form60.Close;
form1.show;
end;

procedure TForm60.FormShow(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
end;

procedure TForm60.IBQuery1AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
end;

procedure TForm60.IBQuery1AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
end;

procedure TForm60.Button2Click(Sender: TObject);
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=dbgrid1.Fields[0].AsInteger;
ibquery2.Open;
form54.QuickRep4.Preview;
end;

end.
