unit Unit83;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, StdCtrls, ExtCtrls;

type
  TForm83 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBTable1: TIBTable;
    IBTable2: TIBTable;
    IBTable3: TIBTable;
    IBTable1NAME: TIBStringField;
    IBTable1NUM: TIntegerField;
    IBTable2NAME: TIBStringField;
    IBTable2INCOME: TIBBCDField;
    IBTable2NUM: TIntegerField;
    IBTable2INPUT_DATE: TDateField;
    IBTable2REASONE: TIBStringField;
    IBTable3NAME: TIBStringField;
    IBTable3SPENT: TIBBCDField;
    IBTable3INPUT_DATE: TDateField;
    IBTable3NUM: TIntegerField;
    IBTable3CAUSE: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form83: TForm83;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm83.Button2Click(Sender: TObject);
begin
datasource1.DataSet.Filtered:=false;
edit1.Text:='';
button1.Enabled:=false;
form83.Close;
form1.Show;
end;

procedure TForm83.FormShow(Sender: TObject);
begin
datasource1.DataSet.Filtered:=false;
button1.Enabled:=false;
edit1.Text:='';
ibtable1.Close;
ibtable1.Open;
combobox1.Clear;
while not(ibtable1.Eof)do
begin
combobox1.Items.Add(ibtable1['name']);
ibtable1.Next;
end;
end;

procedure TForm83.Edit1Change(Sender: TObject);
begin
if edit1.Text='' then
button1.Enabled:=false
else
button1.Enabled:=true;
end;

procedure TForm83.Button1Click(Sender: TObject);
var
messege_num:integer;
begin
ibtable1.Active:=false;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Filter:='name='+quotedstr(edit1.Text);
datasource1.DataSet.Filtered:=true;
ibtable1.Open;
if ibtable1.RecordCount<>0 then
begin
messege_num:=application.MessageBox('≈”„ «·‘«Õ‰Â «·„—«œ «·«” »œ«· »Â« „ÊÃÊœ „”»ﬁ« Â·  —Ìœ «·«” „—«— ›Ï Õ«· «·«” „—«— ”Ê› Ì „ «÷«›… ﬂ· ⁄„·Ì«  «·‘«Õ‰… «·ﬁœÌ„… ··‘«Õ‰… «·ÃœÌœÂ',' ‰»ÌÂ',mb_iconwarning+mb_yesno);
if messege_num=7 then
exit;

ibtable1.Active:=false;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Filter:='name='+quotedstr(combobox1.Text);
datasource1.DataSet.Filtered:=true;
ibtable1.Open;
ibtable1.Delete;

ibtable2.Active:=false;
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Filter:='name='+quotedstr(combobox1.Text);
datasource2.DataSet.Filtered:=true;
ibtable2.Open;
while not(ibtable2.Eof)do
begin
ibtable2.Edit;
ibtable2['name']:=edit1.Text;
ibtable2.Post;
ibtable2.Next;
end;

ibtable3.Active:=false;
ibtable3.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable3.Filter:='name='+quotedstr(combobox1.Text);
datasource3.DataSet.Filtered:=true;
ibtable3.Open;
while not(ibtable3.Eof)do
begin
ibtable3.Edit;
ibtable3['name']:=edit1.Text;
ibtable3.Post;
ibtable3.Next;
end;
end
else
begin
ibtable1.Active:=false;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Filter:='name='+quotedstr(combobox1.Text);
datasource1.DataSet.Filtered:=true;
ibtable1.Open;
ibtable1.Edit;
ibtable1['name']:=edit1.Text;
ibtable1.Post;

ibtable2.Active:=false;
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Filter:='name='+quotedstr(combobox1.Text);
datasource2.DataSet.Filtered:=true;
ibtable2.Open;
while not(ibtable2.Eof)do
begin
ibtable2.Edit;
ibtable2['name']:=edit1.Text;
ibtable2.Post;
ibtable2.Next;
end;

ibtable3.Active:=false;
ibtable3.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable3.Filter:='name='+quotedstr(combobox1.Text);
datasource3.DataSet.Filtered:=true;
ibtable3.Open;
while not(ibtable3.Eof)do
begin
ibtable3.Edit;
ibtable3['name']:=edit1.Text;
ibtable3.Post;
ibtable3.Next;
end;

end;
form1.IBTransaction1.Commit;
datasource1.DataSet.Filtered:=false;
ibtable1.Close;
ibtable1.Open;
combobox1.Clear;
while not(ibtable1.Eof)do
begin
combobox1.Items.Add(ibtable1['name']);
ibtable1.Next;
end;
edit1.Text:='';
end;

end.
