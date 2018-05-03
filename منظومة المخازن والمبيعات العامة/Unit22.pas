unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, IBQuery, StdCtrls, ComCtrls, Mask,
  DBCtrls, ExtCtrls;

type
  TForm22 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBTable1: TIBTable;
    IBQuery2: TIBQuery;
    IBQuery2MAX: TIntegerField;
    DataSource3: TDataSource;
    IBTable1NAME: TIBStringField;
    IBTable1SPENT: TIBBCDField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1NUM: TIntegerField;
    IBTable1CAUSE: TIBStringField;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm22.Button1Click(Sender: TObject);
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Open;
if ibquery2['max']= null then
ibtable1['num']:=1
else
ibtable1['num']:=ibquery2['max']+1;
if dbedit3.Text='' then
ibtable1['cause']:='·« ÌÊÃœ';
ibtable1.Post;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
form1.IBTransaction1.Commit;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
DBEdit2.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

procedure TForm22.Button2Click(Sender: TObject);
begin
IBTable1.Active:=false;
form1.IBTransaction1.Active:=false;
form22.Close;
form1.show;
end;

procedure TForm22.FormShow(Sender: TObject);
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

end.
