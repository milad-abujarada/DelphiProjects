unit Unit35;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBUpdateSQL, IBQuery, DBCtrls, StdCtrls,
  Grids, DBGrids, ExtCtrls;

type
  TForm35 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    IBQuery3: TIBQuery;
    DataSource3: TDataSource;
    DataSource2: TDataSource;
    IBQuery2: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBQuery1CAUSE: TIBStringField;
    IBQuery2AMOUNT: TIBBCDField;
    IBQuery2NUM: TIntegerField;
    IBQuery2INPUT_DATE: TDateField;
    IBQuery2CAUSE: TIBStringField;
    IBQuery3SUM: TIBBCDField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBQuery2AfterDelete(DataSet: TDataSet);
    procedure IBQuery2AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form35: TForm35;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm35.Button1Click(Sender: TObject);
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=combobox1.text;
ibquery2.Open;
if ibquery2.RecordCount<> 0 then
begin
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=combobox1.text;
ibquery3.Open;
edit1.Text:=ibquery3['sum'];
end
else
begin
edit1.Text:='';
end;

end;

procedure TForm35.Button2Click(Sender: TObject);
begin
form1.show;
form35.Close;
end;

procedure TForm35.FormShow(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
combobox1.Clear;
while(not(IBQuery1.Eof)) do
begin
combobox1.Items.Add(IBQuery1['cause']);
IBQuery1.Next;
end;
end;

procedure TForm35.IBQuery2AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm35.IBQuery2AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

end.
