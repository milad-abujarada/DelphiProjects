unit Unit66;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, IBCustomDataSet, IBUpdateSQL, DB, IBQuery,
  Grids, DBGrids, ExtCtrls;

type
  TForm66 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    IBQuery1NAME: TIBStringField;
    IBQuery1END_DATE: TDateField;
    IBQuery1LAST_SALARY: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure IBQuery1AfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form66: TForm66;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm66.Button1Click(Sender: TObject);
begin
form66.Close;
form1.show;
end;

procedure TForm66.IBQuery1AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
ibquery1.Close;
ibquery1.Open;
end;

procedure TForm66.FormShow(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Open;
end;

end.
