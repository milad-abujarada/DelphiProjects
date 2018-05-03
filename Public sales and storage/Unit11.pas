unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBTable, IBCustomDataSet, IBQuery, Mask, DBCtrls,
  ExtCtrls;

type
  TForm11 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBTable1: TIBTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Button1: TButton;
    Button2: TButton;
    IBQuery1CUS_NAME: TIBStringField;
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
  Form11: TForm11;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm11.Button2Click(Sender: TObject);
begin
ibtable1.Active:=false;
form1.IBTransaction1.Active:=false;
form11.Close;
form1.Show;
end;

procedure TForm11.Button1Click(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Params[0].Value:=dbedit1.Text;
ibquery1.Open;
if ibquery1.RecordCount=0 then
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Open;
if ibquery2['max']=null then
ibtable1['num']:=1
else
ibtable1['num']:= ibquery2['max']+1;
ibtable1.Post;
form1.IBTransaction1.Commit;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
end
else
begin
application.MessageBox('Â–« «·≈”„ „ÊÃÊœ „”»ﬁ«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
end;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
end;

end.
