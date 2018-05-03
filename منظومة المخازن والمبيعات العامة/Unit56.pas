unit Unit56;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, ComCtrls, StdCtrls, ExtCtrls,
  IBQuery;

type
  TForm56 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DataSource1: TDataSource;
    IBTable1: TIBTable;
    IBTable1PAID: TIBBCDField;
    IBTable1REMAINING: TIBBCDField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1NUM: TIntegerField;
    Label3: TLabel;
    ComboBox1: TComboBox;
    IBQuery1: TIBQuery;
    DataSource2: TDataSource;
    IBTable1PLACE: TIBStringField;
    Label4: TLabel;
    Memo1: TMemo;
    IBTable1BAYAN: TIBStringField;
    IBQuery1PLACE: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form56: TForm56;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm56.Button2Click(Sender: TObject);
begin
form56.Close;
form1.show;
end;

procedure TForm56.Button1Click(Sender: TObject);
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['paid']:=edit1.Text;
ibtable1['bayan']:=memo1.Text;
ibtable1['remaining']:=0;
ibtable1['num']:=2;
ibtable1['place']:=combobox1.Text;
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable1.Post;
form1.IBTransaction1.Commit;
edit1.Text:='';
memo1.Text:='';
combobox1.ClearSelection;
end;

procedure TForm56.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
ibquery1.Close;
ibquery1.Open;
combobox1.Clear;
while not(ibquery1.Eof)do
begin
combobox1.Items.Add(ibquery1['place']);
ibquery1.Next;
end;
end;

end.
