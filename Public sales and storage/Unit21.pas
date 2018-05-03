unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, DBCtrls, IBQuery, DB, IBCustomDataSet,
  IBTable, ExtCtrls;

type
  TForm21 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    IBTable1: TIBTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBQuery2: TIBQuery;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    IBTable1NAME: TIBStringField;
    IBTable1INCOME: TIBBCDField;
    IBTable1NUM: TIntegerField;
    IBTable1INPUT_DATE: TDateField;
    IBQuery2MAX: TIntegerField;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    IBTable1REASONE: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm21.Button2Click(Sender: TObject);
begin
IBTable1.Active:=false;
form1.IBTransaction1.Active:=false;
form21.Close;
form1.show;
end;

procedure TForm21.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=now;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
DBEdit2.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
dbcombobox1.Clear;
while(not(IBQuery1.Eof)) do
begin
dbcombobox1.Items.Add(IBQuery1['name']);
IBQuery1.Next;
end;
end;

procedure TForm21.DateTimePicker1Change(Sender: TObject);
begin
DBEdit2.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

procedure TForm21.Button1Click(Sender: TObject);
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Open;
if ibquery2['max']= null then
ibtable1['num']:=1
else
ibtable1['num']:=ibquery2['max']+1;
ibtable1.Post;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
form1.IBTransaction1.Commit;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
DBEdit2.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

end.
