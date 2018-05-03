unit Unit27;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBTable, ExtCtrls, IBQuery,
  ComCtrls, Mask, DBCtrls;

type
  TForm27 = class(TForm)
    Panel1: TPanel;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    IBTable1AMOUNT: TIBBCDField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1NUM: TIntegerField;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1MAX: TIntegerField;
    IBTable1CAUSE: TIBStringField;
    DBComboBox1: TDBComboBox;
    DataSource3: TDataSource;
    IBQuery2: TIBQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form27: TForm27;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm27.Button2Click(Sender: TObject);
begin
IBTable1.Active:=false;
form1.IBTransaction1.Active:=false;
form27.Close;
form1.show;
end;

procedure TForm27.Button1Click(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
if ibquery1['max']= null then
ibtable1['num']:=1
else
ibtable1['num']:=ibquery1['max']+1;
ibtable1.Post;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
form1.IBTransaction1.Commit;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Open;
dbcombobox1.Clear;
while(not(IBQuery2.Eof)) do
begin
dbcombobox1.Items.Add(IBQuery2['cause']);
IBQuery2.Next;
end;
DBEdit3.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

procedure TForm27.FormShow(Sender: TObject);
begin
DateTimePicker1.date:=now;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
DBEdit3.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Open;
dbcombobox1.Clear;
while(not(IBQuery2.Eof)) do
begin
dbcombobox1.Items.Add(IBQuery2['cause']);
IBQuery2.Next;
end;
end;

procedure TForm27.DateTimePicker1Change(Sender: TObject);
begin
DBEdit3.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

end.
