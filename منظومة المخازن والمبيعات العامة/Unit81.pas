unit Unit81;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, IBCustomDataSet, IBUpdateSQL, IBQuery,
  DBCtrls, Grids, DBGrids;

type
  TForm81 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    IBQuery1NAME: TIBStringField;
    IBQuery1CODE: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure IBQuery1AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form81: TForm81;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm81.Button1Click(Sender: TObject);
begin
form1.show;
form81.Close;
end;

procedure TForm81.IBQuery1AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
ibquery1.Close;
ibquery1.Open;
end;

procedure TForm81.FormShow(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Open;
end;

end.
