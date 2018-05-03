unit Unit30;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids, ExtCtrls,
  DBCtrls, IBUpdateSQL;

type
  TForm30 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit1: TEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    DBNavigator1: TDBNavigator;
    IBUpdateSQL1: TIBUpdateSQL;
    IBQuery1CAUSE: TIBStringField;
    IBQuery2AMOUNT: TIBBCDField;
    IBQuery2INPUT_DATE: TDateField;
    IBQuery2NUM: TIntegerField;
    IBQuery2CAUSE: TIBStringField;
    IBQuery3SUM: TIBBCDField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure IBQuery2AfterDelete(DataSet: TDataSet);
    procedure IBQuery2AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form30: TForm30;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm30.Button2Click(Sender: TObject);
begin
form1.show;
form30.Close;
end;

procedure TForm30.FormShow(Sender: TObject);
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

procedure TForm30.Button1Click(Sender: TObject);
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

procedure TForm30.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=combobox1.text;
ibquery3.Open;
if ibquery3['sum']<> null then
edit1.Text:=ibquery3['sum']
else
edit1.Text:='';
end;

procedure TForm30.IBQuery2AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm30.IBQuery2AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

end.
