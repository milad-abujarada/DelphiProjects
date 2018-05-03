unit Unit57;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ExtCtrls;

type
  TForm57 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    IBQuery1PLACE: TIBStringField;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    IBQuery2INPUT_DATE: TDateField;
    DataSource3: TDataSource;
    IBQuery3: TIBQuery;
    IBQuery3KIND: TIBStringField;
    IBQuery3NAME: TIBStringField;
    IBQuery3QUANTITY: TIntegerField;
    IBQuery3BUY_PRICE: TIBBCDField;
    IBQuery3SALE_PRICE: TIBBCDField;
    IBQuery3INPUT_DATE: TDateField;
    IBQuery3PLACE: TIBStringField;
    IBQuery3NUM_IN_STORGE_HISTORY: TIntegerField;
    Label4: TLabel;
    Edit1: TEdit;
    DataSource4: TDataSource;
    IBQuery4: TIBQuery;
    IBQuery4SUM: TIBBCDField;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form57: TForm57;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm57.Button1Click(Sender: TObject);
begin
button2.Enabled:=false;
ibquery2.Close;
ibquery3.Close;
edit1.Text:='';
form57.Close;
form1.show;
end;

procedure TForm57.FormShow(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Open;
combobox1.Clear;
while not(ibquery1.Eof)do
begin
combobox1.Items.Add(ibquery1['place']);
ibquery1.Next;
end;
end;

procedure TForm57.ComboBox1Change(Sender: TObject);
begin
button2.Enabled:=false;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=combobox1.Text;
ibquery2.Open;
if ibquery2.RecordCount=0 then
ibquery2.Close;
ibquery3.Close;
edit1.Text:='';
end;

procedure TForm57.DBGrid1CellClick(Column: TColumn);
begin
if ibquery2.RecordCount<>0   then
begin
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=combobox1.Text;
ibquery3.Params[1].Value:=dbgrid1.Fields[0].AsDateTime;
ibquery3.Open;
button2.Enabled:=true;
ibquery4.Close;
ibquery4.Prepare;
ibquery4.Params[0].Value:=combobox1.Text;
ibquery4.Params[1].Value:=dbgrid1.Fields[0].AsDateTime;
ibquery4.Open;
edit1.Text:=ibquery4['sum'];
end
else
edit1.Text:='0';
end;

procedure TForm57.Button2Click(Sender: TObject);
begin
form61.QRLabel47.Caption:=combobox1.Text;
form61.QRLabel49.Caption:=dbgrid1.Fields[0].AsString;
form61.QuickRep7.Preview
end;

end.
