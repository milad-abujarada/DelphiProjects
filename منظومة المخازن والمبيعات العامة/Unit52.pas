unit Unit52;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, DBCtrls, ExtCtrls, DB,
  IBCustomDataSet, IBTable, IBQuery;

type
  TForm52 = class(TForm)
    Panel1: TPanel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    IBTable1: TIBTable;
    IBQuery1NAME: TIBStringField;
    IBTable1NAME: TIBStringField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1DEBT_VALUE: TIBBCDField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form52: TForm52;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm52.Button2Click(Sender: TObject);
begin
ibtable1.Active:=false;
form1.IBTransaction1.Active:=false;
form52.Close;
form1.show;
end;

procedure TForm52.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibquery1.Close;
ibquery1.Open;
dbcombobox1.Clear;
while not(ibquery1.Eof)do
begin
dbcombobox1.Items.Add(ibquery1['name']);
ibquery1.Next;
end;
end;

procedure TForm52.Button1Click(Sender: TObject);
begin
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable1.Post;
form1.IBTransaction1.Commit;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibquery1.Close;
ibquery1.Open;
dbcombobox1.Clear;
while not(ibquery1.Eof)do
begin
dbcombobox1.Items.Add(ibquery1['name']);
ibquery1.Next;
end;
end;

end.
