unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, IBTable, DB, IBCustomDataSet,
  IBQuery;

type
  TForm20 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBTable1: TIBTable;
    IBQuery2: TIBQuery;
    DataSource3: TDataSource;
    Button2: TButton;
    Button1: TButton;
    IBQuery1NAME: TIBStringField;
    IBQuery1WORK_TYPE: TIBStringField;
    IBQuery1NUM: TIntegerField;
    IBTable1NAME: TIBStringField;
    IBTable1WORK_TYPE: TIBStringField;
    IBTable1NUM: TIntegerField;
    IBQuery2MAX: TIntegerField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm20.Button2Click(Sender: TObject);
begin
IBTable1.Active:=false;
form1.IBTransaction1.Active:=false;
form20.Close;
form1.show;
end;

procedure TForm20.Button1Click(Sender: TObject);
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
ibtable1['work_type']:='”«∆ﬁ ';
ibtable1.Post;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
form1.IBTransaction1.Commit;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
end;

procedure TForm20.FormShow(Sender: TObject);
begin
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
end;

end.
