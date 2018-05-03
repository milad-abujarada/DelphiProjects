unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, IBQuery, StdCtrls, Mask, DBCtrls,
  ExtCtrls, ComCtrls;

type
  TForm24 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    IBQuery2: TIBQuery;
    IBQuery2MAX: TIntegerField;
    DataSource3: TDataSource;
    DataSource2: TDataSource;
    IBTable1: TIBTable;
    IBQuery1: TIBQuery;
    IBQuery1NAME: TIBStringField;
    IBQuery1NUM: TIntegerField;
    DataSource1: TDataSource;
    IBTable1NAME: TIBStringField;
    IBTable1WORK_TYPE: TIBStringField;
    IBTable1NUM: TIntegerField;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    IBTable1WORK_DATE: TDateField;
    Label4: TLabel;
    IBTable1SALARY: TIBBCDField;
    DBEdit2: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm24.Button1Click(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Params[0].Value:=dbedit1.Text;
ibquery1.Open;
if ibquery1.RecordCount<>0 then
begin
application.MessageBox('Â–« «·≈”„ „ÊÃÊœ „”»ﬁ« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
dbedit1.SetFocus;
exit;
end;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Open;
if ibquery2['max']= null then
ibtable1['num']:=1
else
ibtable1['num']:=ibquery2['max']+1;
ibtable1['work_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable1.Post;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
form1.IBTransaction1.Commit;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;

end;

procedure TForm24.Button2Click(Sender: TObject);
begin
IBTable1.Active:=false;
form1.IBTransaction1.Active:=false;
form24.Close;
form1.show;
end;

procedure TForm24.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
end;

end.
