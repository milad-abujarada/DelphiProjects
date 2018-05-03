unit Unit49;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, DB,
  IBCustomDataSet, IBUpdateSQL, IBQuery, DBCtrls;

type
  TForm49 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Panel3: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    IBUpdateSQL2: TIBUpdateSQL;
    IBQuery1NAME: TIBStringField;
    IBQuery1CAUSE: TIBStringField;
    IBQuery1NUM: TIntegerField;
    IBQuery1AMOUNT: TIBBCDField;
    IBQuery1INPUT_DATE: TDateField;
    DBNavigator1: TDBNavigator;
    IBQuery2NAME: TIBStringField;
    IBQuery2CAUSE: TIBStringField;
    IBQuery2NUM: TIntegerField;
    IBQuery2AMOUNT: TIBBCDField;
    IBQuery2INPUT_DATE: TDateField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure IBQuery1AfterDelete(DataSet: TDataSet);
    procedure IBQuery1AfterPost(DataSet: TDataSet);
    procedure IBQuery2AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form49: TForm49;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm49.Button2Click(Sender: TObject);
begin
form49.Close;
form1.show;
end;

procedure TForm49.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
panel2.Visible:=false;
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
end;

procedure TForm49.RadioButton1Click(Sender: TObject);
begin
if radiobutton1.Checked=true then
begin
panel3.Visible:=false;
panel2.Visible:=true;
end;
end;

procedure TForm49.RadioButton2Click(Sender: TObject);
begin
if radiobutton2.Checked=true then
begin
panel3.Visible:=true;
panel2.Visible:=false;
end;
end;

procedure TForm49.Button1Click(Sender: TObject);
begin
if (radiobutton1.Checked=false) and (radiobutton2.Checked=false) then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— ÿ—Ìﬁ… «·⁄—÷',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if radiobutton1.Checked=true then
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery1.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
ibquery1.Open;
dbgrid1.DataSource:=datasource1;
DBNavigator1.DataSource:=datasource1;
if ibquery1.RecordCount=0 then
ibquery1.Close;
end
else
begin
if edit1.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· —ﬁ„ «·≈Ì’«·',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit;
end;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Params[0].Value:=edit1.Text;
ibquery2.Open;
dbgrid1.DataSource:=datasource2;
DBNavigator1.DataSource:=datasource2;
if ibquery2.RecordCount=0 then
ibquery2.Close;
end;
end;



procedure TForm49.IBQuery1AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;
procedure TForm49.IBQuery1AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm49.IBQuery2AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

end.
