unit Unit44;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBTable, DB, IBCustomDataSet, IBQuery, StdCtrls, ComCtrls,
  Grids, DBGrids, ExtCtrls;

type
  TForm44 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBTable1: TIBTable;
    IBQuery1NAME: TIBStringField;
    IBQuery1amount: TFloatField;
    IBQuery3: TIBQuery;
    DataSource4: TDataSource;
    IBQuery2SUM: TIBBCDField;
    IBQuery2SUM1: TIBBCDField;
    IBQuery3SUM: TIBBCDField;
    IBTable1NAME: TIBStringField;
    IBTable1PAID: TIBBCDField;
    IBTable1INPUT_DATE: TDateField;
    Edit4: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    IBTable1NOTES: TIBStringField;
    IBTable1CHNAGE_PRICE: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBQuery1CalcFields(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);




    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form44: TForm44;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm44.Button2Click(Sender: TObject);
begin
ibtable1.Active:=false;
form1.IBTransaction1.Active:=false;
form44.Close;
form1.show;
end;
procedure TForm44.DBGrid1CellClick(Column: TColumn);
begin
if ibquery1.RecordCount=0 then
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
button1.Enabled:=false;
end
else
begin
if dbgrid1.Fields[1].AsInteger>0 then
begin
edit1.Text:=dbgrid1.Fields[0].AsString;
edit2.Text:=dbgrid1.Fields[1].AsString;
button1.Enabled:=true;
end
else
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
button1.Enabled:=false;
end;
end;
end;
procedure TForm44.FormShow(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
datetimepicker1.Date:=now;
end;

procedure TForm44.IBQuery1CalcFields(DataSet: TDataSet);
var
a,b,c:real;
begin
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=ibquery1['name'];
ibquery2.Open;
if ibquery2['sum']=null then
begin
a:=0;
b:=0;
end
else
begin
a:=ibquery2['sum'];
b:=ibquery2['sum1'];
end;
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=ibquery1['name'];
ibquery3.Open;
if ibquery3['sum']=null then
c:=0
else
c:=ibquery3['sum'];
ibquery1['amount']:=b-(a+c);
end;
procedure TForm44.Button1Click(Sender: TObject);
begin
if (edit1.Text='') or (edit2.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— «·≈”„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if edit3.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… «·„œ›Ê⁄Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit3.SetFocus;
exit;
end;
if strtofloat(edit3.Text)> strtofloat(edit2.Text) then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ «·ﬁÌ„… «·„œ›Ê⁄Â ·√‰Â« √ﬂ»— „‰ «·„” ÕﬁÂ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit3.SetFocus;
exit;
end;
ibtable1['name']:=edit1.Text;
ibtable1['paid']:=edit3.Text;
ibtable1['chnage_price']:=edit4.Text;
ibtable1['notes']:=memo1.Text;
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
ibtable1.Post;
form1.IBTransaction1.Commit;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
memo1.Text:='';
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
button1.Enabled:=false;
end;

end.
