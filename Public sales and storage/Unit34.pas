unit Unit34;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBTable, IBQuery, StdCtrls, Mask, DBCtrls,
  ExtCtrls;

type
  TForm34 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Button2: TButton;
    Button1: TButton;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBTable1: TIBTable;
    IBQuery1NAME: TIBStringField;
    IBQuery2MAX: TIntegerField;
    IBTable1NAME: TIBStringField;
    IBTable1NUM: TIntegerField;
    Label2: TLabel;
    IBTable1PAY_TYPE: TIBStringField;
    DBComboBox1: TDBComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form34: TForm34;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm34.Button1Click(Sender: TObject);
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

procedure TForm34.Button2Click(Sender: TObject);
begin
ibtable1.Active:=false;
form1.IBTransaction1.Active:=false;
form34.Close;
form1.Show;
end;

procedure TForm34.FormShow(Sender: TObject);
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
end;

end.
