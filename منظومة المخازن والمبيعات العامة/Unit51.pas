unit Unit51;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ExtCtrls,
  ComCtrls, IBTable, IBUpdateSQL, DBCtrls;

type
  TForm51 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    DataSource2: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery2NAME: TIBStringField;
    Button2: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    IBUpdateSQL1: TIBUpdateSQL;
    IBTable1: TIBTable;
    DataSource3: TDataSource;
    IBTable1NAME: TIBStringField;
    IBTable1WORK_TYPE: TIBStringField;
    IBTable1NUM: TIntegerField;
    IBTable1WORK_DATE: TDateField;
    IBTable1SALARY: TIBBCDField;
    DataSource4: TDataSource;
    IBQuery3: TIBQuery;
    IBQuery3MAX: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure IBQuery1AfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form51: TForm51;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm51.Button1Click(Sender: TObject);
begin
ibquery1.Close;
edit1.Text:='';
form51.Close;
form1.show;
end;

procedure TForm51.ComboBox1Change(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Params[0].Value:=combobox1.Text;
ibquery1.Open;
if ibquery1.RecordCount=0 then
button2.Enabled:=false
else
button2.Enabled:=true;

end;

procedure TForm51.FormShow(Sender: TObject);
begin
ibquery2.Close;
ibquery2.Open;
combobox1.Clear;
while(not(ibquery2.Eof)) do
begin
combobox1.Items.Add(ibquery2['name']);
ibquery2.Next;
end;
button2.Enabled:=false;
datetimepicker1.Date:=now;
end;

procedure TForm51.Button2Click(Sender: TObject);
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['name']:=combobox1.Text;
ibtable1['work_type']:=dbgrid1.Fields[0].AsString;
ibtable1['work_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable1['salary']:=edit1.Text;
ibquery3.Close;
ibquery3.Open;
if ibquery3['max']=null then
ibtable1['num']:=1
else
ibtable1['num']:=ibquery3['max']+1;
ibtable1.Post;
form1.IBTransaction1.Commit;
edit1.Text:='';
button2.Enabled:=false;
end;

procedure TForm51.IBQuery1AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

end.
