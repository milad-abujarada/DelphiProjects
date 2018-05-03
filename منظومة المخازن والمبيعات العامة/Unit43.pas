unit Unit43;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBTable, IBCustomDataSet, IBQuery, ComCtrls, StdCtrls, Mask,
  DBCtrls, ExtCtrls;

type
  TForm43 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    IBQuery1: TIBQuery;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBQuery1NAME: TIBStringField;
    IBTable1NAME: TIBStringField;
    IBTable1QUANTITY: TIntegerField;
    IBTable1PAID: TIBBCDField;
    IBTable1DESERVED: TIBBCDField;
    IBTable1INPUT_DATE: TDateField;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    IBTable1DISTINATION: TIBStringField;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    IBTable1NOTES: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form43: TForm43;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm43.Button2Click(Sender: TObject);
begin
form43.Close;
form1.show;
end;

procedure TForm43.FormShow(Sender: TObject);
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
dbcombobox1.Clear;
while(not(ibquery1.Eof))do
begin
dbcombobox1.Items.Add(ibquery1['name']);
ibquery1.Next;
end;
datetimepicker1.Date:=now;
end;

procedure TForm43.Button1Click(Sender: TObject);
begin
if dbcombobox1.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ≈”„ ’«Õ» «·‘«Õ‰Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbcombobox1.SetFocus;
exit;
end;
if dbedit1.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬂ„Ì… «·„ÕÊ·…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit1.SetFocus;
exit;
end;
if dbedit2.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… «·„” ÕﬁÂ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit2.SetFocus;
exit;
end;
if dbedit3.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… «·œ›Ê⁄Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit3.SetFocus;
exit;
end;
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable1.Post;
form1.IBTransaction1.Commit;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
dbcombobox1.Clear;
while(not(ibquery1.Eof))do
begin
dbcombobox1.Items.Add(ibquery1['name']);
ibquery1.Next;
end;

end;

end.
