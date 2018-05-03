unit Unit63;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, IBQuery, ComCtrls, StdCtrls,
  DBCtrls, Mask, ExtCtrls;

type
  TForm63 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Button1: TButton;
    Button2: TButton;
    DBEdit3: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    IBQuery1: TIBQuery;
    DataSource2: TDataSource;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery2NAME: TIBStringField;
    IBQuery2CAUSE: TIBStringField;
    IBQuery2NUM: TIntegerField;
    IBQuery2AMOUNT: TIBBCDField;
    IBQuery2INPUT_DATE: TDateField;
    IBTable1NAME: TIBStringField;
    IBTable1CAUSE: TIBStringField;
    IBTable1NUM: TIntegerField;
    IBTable1AMOUNT: TIBBCDField;
    IBTable1INPUT_DATE: TDateField;
    IBQuery1MAX: TIntegerField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form63: TForm63;

implementation

uses Unit1, Unit54;

{$R *.dfm}

procedure TForm63.Button2Click(Sender: TObject);
begin
ibtable1.Active:=false;
form1.IBTransaction1.Active:=false;
form63.Close;
form1.show;
end;

procedure TForm63.FormShow(Sender: TObject);
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

procedure TForm63.Button1Click(Sender: TObject);
begin
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable1.Post;
form1.IBTransaction1.Commit;
ibquery2.Close;
ibquery2.Open;
form54.QRLabel6.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form54.QuickRep2.Preview;
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
