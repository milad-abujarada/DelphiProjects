unit Unit74;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL;

type
  TForm74 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ComboBox1: TComboBox;
    Label1: TLabel;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    Button1: TButton;
    IBQuery1NAME: TIBStringField;
    DataSource2: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery2PROVIDER_NAME: TIBStringField;
    IBQuery2TOTAL_BILL: TIBBCDField;
    IBQuery2PAID: TIBBCDField;
    IBQuery2REMAINING: TIBBCDField;
    IBQuery2NUM_IN_HISTORY_STORGE: TIntegerField;
    IBQuery2INPUT_DATE: TDateField;
    IBQuery2DOLLAR: TIBBCDField;
    IBQuery2CHANGE: TIBBCDField;
    IBQuery2REMAINING_DOLLAR: TIBBCDField;
    IBQuery2TOTAL_DOLLAR: TIBBCDField;
    IBQuery2t: TStringField;
    IBUpdateSQL1: TIBUpdateSQL;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBQuery2CalcFields(DataSet: TDataSet);
    procedure ComboBox1Change(Sender: TObject);
    procedure IBQuery2AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form74: TForm74;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm74.Button1Click(Sender: TObject);
begin
form74.Close;
form1.Show;
combobox1.Clear;
end;

procedure TForm74.FormShow(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
combobox1.Clear;
while not(IBQuery1.Eof)do
begin
combobox1.Items.Add(IBQuery1['name']);
IBQuery1.Next;
end;
end;

procedure TForm74.IBQuery2CalcFields(DataSet: TDataSet);
begin
if ibquery2['total_bill']=0 then
ibquery2['t']:=' Õ’Ì· œÌ‰'
else
ibquery2['t']:='›« Ê—Â';
end;

procedure TForm74.ComboBox1Change(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Params[0].Value:=combobox1.Text;
IBQuery2.Open;
if IBQuery2.RecordCount=0 then
IBQuery2.Close;
end;

procedure TForm74.IBQuery2AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

end.
