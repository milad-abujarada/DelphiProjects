unit Unit39;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, DBCtrls, IBTable, DB, IBCustomDataSet,
  IBQuery, ExtCtrls;

type
  TForm39 = class(TForm)
    Panel1: TPanel;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBTable1: TIBTable;
    IBQuery2: TIBQuery;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    IBQuery1NAME: TIBStringField;
    IBQuery2MAX: TIntegerField;
    IBTable1NAME: TIBStringField;
    IBTable1DINAR: TIBBCDField;
    IBTable1DOLLAR: TIBBCDField;
    IBTable1NUM: TIntegerField;
    IBTable1DINAR_VS_DOLLAR: TIBBCDField;
    IBTable1INPUT_DATE: TDateField;
    Label5: TLabel;
    IBTable1SENDED_TO: TIBStringField;
    DBComboBox2: TDBComboBox;
    DataSource4: TDataSource;
    IBQuery3: TIBQuery;
    IBQuery3NAME: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form39: TForm39;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm39.Button2Click(Sender: TObject);
begin
ibtable1.Active:=false;
form1.IBTransaction1.Active:=false;
form39.Close;
form1.show;
end;

procedure TForm39.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
dbcombobox1.Clear;
while(not(IBQuery1.Eof)) do
begin
dbcombobox1.Items.Add(IBQuery1['name']);
IBQuery1.Next;
end;
IBQuery3.Close;
IBQuery3.Prepare;
IBQuery3.Open;
dbcombobox2.Clear;
while(not(IBQuery3.Eof)) do
begin
dbcombobox2.Items.Add(IBQuery3['name']);
IBQuery3.Next;
end;
end;

procedure TForm39.Button1Click(Sender: TObject);
begin
if dbcombobox1.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·≈”„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbcombobox1.SetFocus;
exit;
end;
if dbedit1.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ”⁄— «· ’—Ì›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit1.SetFocus;
exit;
end;
if dbedit2.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… »«·œÌ‰«—',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit2.SetFocus;
exit;
end;
if dbedit3.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… »«·œÊ·«—',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit3.SetFocus;
exit;
end;
if dbcombobox2.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ≈”„ «·„ÕÊ· ≈·ÌÂ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbcombobox2.SetFocus;
exit;
end;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Open;
if ibquery2['max']=null then
ibtable1['num']:=1
else
ibtable1['num']:=ibquery2['max']+1;
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable1.Post;
form1.IBTransaction1.Commit;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
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
