unit Unit65;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, ComCtrls, ExtCtrls,
  IBTable;

type
  TForm65 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    IBQuery1: TIBQuery;
    IBQuery1NAME: TIBStringField;
    DataSource1: TDataSource;
    IBTable1: TIBTable;
    DataSource2: TDataSource;
    IBTable1NAME: TIBStringField;
    IBTable1END_DATE: TDateField;
    Label3: TLabel;
    Edit1: TEdit;
    IBTable1LAST_SALARY: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form65: TForm65;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm65.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
combobox1.Clear;
while(not(IBQuery1.Eof)) do
begin
combobox1.Items.Add(IBQuery1['name']);
IBQuery1.Next;
end;
end;

procedure TForm65.Button1Click(Sender: TObject);
begin
if combobox1.Text='' then
begin
combobox1.SetFocus;
exit;
end;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['name']:=combobox1.Text;
ibtable1['last_salary']:=edit1.Text;
ibtable1['end_date']:=datetimepicker1.Date;
ibtable1.Post;
form1.IBTransaction1.Commit;
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
combobox1.Clear;
while(not(IBQuery1.Eof)) do
begin
combobox1.Items.Add(IBQuery1['name']);
IBQuery1.Next;
end;
edit1.Text:='';
end;

procedure TForm65.Button2Click(Sender: TObject);
begin
form65.Close;
form1.show;
end;

end.
