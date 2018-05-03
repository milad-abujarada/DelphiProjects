unit Unit84;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, IBTable, DB, IBCustomDataSet,
  IBQuery;

type
  TForm84 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    ComboBox2: TComboBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    IBQuery1: TIBQuery;
    IBTable1: TIBTable;
    IBTable2: TIBTable;
    IBTable3: TIBTable;
    IBQuery1NAME: TIBStringField;
    IBTable1NAME: TIBStringField;
    IBTable1WORK_TYPE: TIBStringField;
    IBTable1NUM: TIntegerField;
    IBTable1WORK_DATE: TDateField;
    IBTable1SALARY: TIBBCDField;
    DataSource5: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery2NAME: TIBStringField;
    IBQuery2WORK_TYPE: TIBStringField;
    IBQuery2NUM: TIntegerField;
    IBQuery2WORK_DATE: TDateField;
    IBQuery2SALARY: TIBBCDField;
    IBTable2NAME: TIBStringField;
    IBTable2END_DATE: TDateField;
    IBTable2LAST_SALARY: TIntegerField;
    IBTable3NAME: TIBStringField;
    IBTable3NUM: TIntegerField;
    IBTable3PAID: TIBBCDField;
    IBTable3WORK_TYPE: TIBStringField;
    IBTable3INPUT_DATE: TDateField;
    IBTable3DELIVERD_NAME: TIBStringField;
    IBQuery3: TIBQuery;
    DataSource6: TDataSource;
    IBQuery3WORK_TYPE: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    name,other:integer;
    w_type:string;
    sal:real;
  end;

var
  Form84: TForm84;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm84.Button2Click(Sender: TObject);
begin
form84.Close;
form1.Show;
edit1.Text:='';
edit2.Text:='';
combobox1.Text:='';
end;

procedure TForm84.FormShow(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
combobox1.Text:='';
button1.Enabled:=false;
datetimepicker1.Date:=now;
combobox2.Clear;
ibquery1.Close;
ibquery1.Open;
while not(ibquery1.Eof)do
begin
combobox2.Items.Add(ibquery1['name']);
ibquery1.Next;
end;
combobox1.Clear;
ibquery3.Close;
ibquery3.Open;
while not(ibquery3.Eof)do
begin
combobox1.Items.Add(ibquery3['work_type']);
ibquery3.Next;
end;
end;

procedure TForm84.ComboBox2Change(Sender: TObject);
begin
ibtable1.Active:=false;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Filter:='name='+quotedstr(combobox2.Text);
datasource2.DataSet.Filtered:=true;
ibtable1.Open;
if ibtable1.RecordCount<>0 then
begin
button1.Enabled:=true;
edit1.Text:=ibtable1['name'];
combobox1.Text:=ibtable1['work_type'];
w_type:=ibtable1['work_type'];
edit2.Text:=ibtable1['salary'];
sal:=ibtable1['salary'];
DateTimePicker1.date:=ibtable1work_date.value;
end
else
begin
button1.Enabled:=false;
edit1.Text:='';
combobox1.Text:='';
edit2.Text:='';
DateTimePicker1.date:=now;
end;
end;

procedure TForm84.Button1Click(Sender: TObject);
begin
if name=1 then
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=edit1.Text;
ibquery2.Open;
if ibquery2.RecordCount<>0then
begin
application.MessageBox('«·≈”„ «·ÃœÌœ „ÊÃÊœ „”»ﬁ« «·—Ã«¡  €Ì—Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
edit1.SetFocus;
button1.Enabled:=false;
end
else
begin
ibtable1.Edit;
ibtable1['name']:=edit1.text;
ibtable1['work_type']:=combobox1.Text;
ibtable1['salary']:=edit2.Text;
ibtable1['work_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable1.Post;
ibtable2.Active:=false;
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Filter:='name='+quotedstr(combobox2.Text);
datasource3.DataSet.Filtered:=true;
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
ibtable3.Filter:='name='+quotedstr(combobox2.Text);
datasource4.DataSet.Filtered:=true;
ibtable3.Open;
while not(ibtable3.Eof)do
begin
ibtable3.Edit;
ibtable3['name']:=edit1.Text;
ibtable3['work_type']:=combobox1.Text;
ibtable3.Post;
ibtable3.Next;
end;

end;
end
else
begin
if other=1 then
begin
ibtable1.Edit;
ibtable1['name']:=edit1.text;
ibtable1['work_type']:=combobox1.Text;
ibtable1['salary']:=edit2.Text;
ibtable1['work_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable1.Post;
ibtable2.Active:=false;
ibtable2.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable2.Filter:='name='+quotedstr(combobox2.Text);
datasource3.DataSet.Filtered:=true;
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
ibtable3.Filter:='name='+quotedstr(combobox2.Text);
datasource4.DataSet.Filtered:=true;
ibtable3.Open;
while not(ibtable3.Eof)do
begin
ibtable3.Edit;
ibtable3['name']:=edit1.Text;
ibtable3['work_type']:=combobox1.Text;
ibtable3.Post;
ibtable3.Next;
end;

end;
end;
form1.IBTransaction1.Commit;
edit1.Text:='';
edit2.Text:='';
combobox1.Text:='';
button1.Enabled:=false;
datetimepicker1.Date:=now;
combobox2.Clear;
ibquery1.Close;
ibquery1.Open;
while not(ibquery1.Eof)do
begin
combobox2.Items.Add(ibquery1['name']);
ibquery1.Next;
end;
combobox1.Clear;
ibquery3.Close;
ibquery3.Open;
while not(ibquery3.Eof)do
begin
combobox1.Items.Add(ibquery3['work_type']);
ibquery3.Next;
end;
name:=0;
other:=0;
end;

procedure TForm84.Edit1Change(Sender: TObject);
begin
if (combobox1.Text='')or(edit1.Text='')or(edit2.Text='') then
button1.Enabled:=false
else
begin
if combobox2.Text=edit1.Text then
name:=0
else
name:=1;
button1.Enabled:=true;
end;

end;
procedure TForm84.ComboBox1Change(Sender: TObject);
begin
if edit2.Text='' then
button1.Enabled:=false
else
begin
if (combobox1.Text<>w_type)or(strtofloat(edit2.Text)<>sal)then
other:=1
else
other:=0;

end;
if (combobox1.Text='')or(edit1.Text='')or(edit2.Text='') then
button1.Enabled:=false
else
button1.Enabled:=true;
end;

procedure TForm84.Edit2Change(Sender: TObject);
begin
if edit2.Text='' then
button1.Enabled:=false
else
begin
if (combobox1.Text<>w_type)or(strtofloat(edit2.Text)<>sal)then
other:=1
else
other:=0;

end;
if (combobox1.Text='')or(edit1.Text='')or(edit2.Text='') then
button1.Enabled:=false
else
button1.Enabled:=true;
end;

end.
