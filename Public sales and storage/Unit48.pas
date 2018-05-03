unit Unit48;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DB, IBCustomDataSet, IBTable,
  ComCtrls, IBQuery;

type
  TForm48 = class(TForm)
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    IBTable1: TIBTable;
    Button2: TButton;
    IBQuery1: TIBQuery;
    DataSource2: TDataSource;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    IBQuery2: TIBQuery;
    DataSource3: TDataSource;
    IBQuery2NAME: TIBStringField;
    IBQuery2CAUSE: TIBStringField;
    IBQuery2NUM: TIntegerField;
    IBQuery2AMOUNT: TIBBCDField;
    IBQuery2INPUT_DATE: TDateField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form48: TForm48;

implementation

uses Unit1, Unit54;

{$R *.dfm}

procedure TForm48.Button2Click(Sender: TObject);
begin
ibtable1.Active:=false;
form1.IBTransaction1.Active:=false;
form48.Close;
form1.show;
end;

procedure TForm48.FormShow(Sender: TObject);
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibquery1.Close;
ibquery1.Open;
if ibquery1['max']=null then
dbedit3.Text:='1'
else
dbedit3.Text:=ibquery1['max']+1;
datetimepicker1.Date:=now;
end;

procedure TForm48.Button1Click(Sender: TObject);
begin
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable1.Post;
form1.IBTransaction1.Commit;
ibquery2.Close;
ibquery2.Open;
form54.QRLabel9.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form54.QuickRep1.Preview;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibquery1.Close;
ibquery1.Open;
if ibquery1['max']=null then
dbedit3.Text:='1'
else
dbedit3.Text:=ibquery1['max']+1;
end;

end.
