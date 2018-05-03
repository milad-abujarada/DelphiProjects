unit Unit25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, IBTable, DB, IBCustomDataSet,
  IBQuery, ComCtrls;

type
  TForm25 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBTable1: TIBTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBQuery2: TIBQuery;
    IBTable1NAME: TIBStringField;
    IBTable1NUM: TIntegerField;
    IBTable1PAID: TIBBCDField;
    IBTable1WORK_TYPE: TIBStringField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    IBTable1INPUT_DATE: TDateField;
    IBQuery2MAX: TIntegerField;
    IBQuery3: TIBQuery;
    DataSource4: TDataSource;
    IBQuery1NAME: TIBStringField;
    IBTable1DELIVERD_NAME: TIBStringField;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form25: TForm25;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm25.Button2Click(Sender: TObject);
begin
IBTable1.Active:=false;
form1.IBTransaction1.Active:=false;
form25.Close;
form1.show;
end;

procedure TForm25.FormShow(Sender: TObject);
begin
DateTimePicker1.date:=now;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
DBEdit3.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
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

procedure TForm25.DateTimePicker1Change(Sender: TObject);
begin
DBEdit3.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

procedure TForm25.Button1Click(Sender: TObject);
begin
if (dbcombobox1.Text='') or (dbedit1.Text='') or (dbedit2.Text='') then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ ≈œŒ«· Ã„Ì⁄ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
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
DBEdit3.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

procedure TForm25.DBComboBox1Change(Sender: TObject);
begin
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=dbcombobox1.Text;
ibquery3.Open;
dbedit1.Text:=ibquery3['work_type'];
end;

end.
