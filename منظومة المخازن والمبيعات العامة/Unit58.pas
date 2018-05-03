unit Unit58;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, ExtCtrls,
  ComCtrls, IBTable, DBCtrls;

type
  TForm58 = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1PLACE: TIBStringField;
    ComboBox1: TComboBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource2: TDataSource;
    Label2: TLabel;
    Edit1: TEdit;
    DataSource3: TDataSource;
    IBQuery3: TIBQuery;
    IBQuery3SUM: TIBBCDField;
    Button2: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button3: TButton;
    DataSource4: TDataSource;
    IBQuery_rep: TIBQuery;
    IBQuery_repPAID: TIBBCDField;
    IBQuery_repNUM: TIntegerField;
    IBQuery_reppay_type: TStringField;
    IBQuery_repINPUT_DATE: TDateField;
    IBQuery3SUM1: TIBBCDField;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit3: TEdit;
    IBQuery_repBAYAN: TIBStringField;
    IBTable1: TIBTable;
    IBTable1PAID: TIBBCDField;
    IBTable1REMAINING: TIBBCDField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1NUM: TIntegerField;
    IBTable1PLACE: TIBStringField;
    IBTable1BAYAN: TIBStringField;
    IBTable1pay_type: TStringField;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure IBQuery_repCalcFields(DataSet: TDataSet);
    procedure IBTable1CalcFields(DataSet: TDataSet);
    procedure IBTable1AfterPost(DataSet: TDataSet);
    procedure IBTable1AfterDelete(DataSet: TDataSet);
    procedure IBTable1BeforePost(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    paid,remain:real;
    complete:integer;
      end;

var
  Form58: TForm58;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm58.FormShow(Sender: TObject);
begin
complete:=0;
ibquery1.Close;
ibquery1.Open;
combobox1.Clear;
while not(ibquery1.Eof)do
begin
combobox1.Items.Add(ibquery1['place']);
ibquery1.Next;
end;
end;

procedure TForm58.Button1Click(Sender: TObject);
begin
button2.Enabled:=false;
panel2.Visible:=false;
ibtable1.Close;
form58.Close;
form1.show;
end;

procedure TForm58.ComboBox1Change(Sender: TObject);
begin

ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Filter:='place='+quotedstr(combobox1.Text);
datasource2.DataSet.Filtered:=true;
ibtable1.Open;
if ibtable1.RecordCount<>0 then
begin
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=combobox1.Text;
ibquery3.Open;
edit2.Text:=ibquery3['sum'];
button2.Enabled:=true;
edit1.Text:=ibquery3['sum']+ibquery3['sum1'];
edit3.Text:=floattostr(strtofloat(edit1.Text)-strtofloat(edit2.Text));
end
else
begin
edit2.Text:='0';
edit1.Text:='';
edit3.Text:='';

ibtable1.Close;
button2.Enabled:=false;;
end;
end;

procedure TForm58.Button2Click(Sender: TObject);
begin
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
panel2.Visible:=true;
end;

procedure TForm58.Button3Click(Sender: TObject);
begin
IBQuery_rep.Close;
IBQuery_rep.Prepare;
IBQuery_rep.Params[0].Value:=combobox1.Text;
IBQuery_rep.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery_rep.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
IBQuery_rep.Open;
form61.QRLabel55.Caption:=combobox1.Text;
form61.QRLabel57.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel59.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep8.Preview;
panel2.Visible:=false;

end;

procedure TForm58.IBQuery_repCalcFields(DataSet: TDataSet);
begin
if IBQuery_rep['num']=1 then
IBQuery_rep['pay_type']:='ÌÊ„ ≈ﬁ›«· «·Õ”«»'
else
IBQuery_rep['pay_type']:=' Õ’Ì· œÌ‰';
end;
procedure TForm58.IBTable1CalcFields(DataSet: TDataSet);
begin
if ibtable1['num']=1 then
ibtable1['pay_type']:='ÌÊ„ ≈ﬁ›«· «·Õ”«»'
else
ibtable1['pay_type']:=' Õ’Ì· œÌ‰';
end;

procedure TForm58.IBTable1AfterPost(DataSet: TDataSet);
begin
if complete=1 then
begin
form1.IBTransaction1.Commit;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
complete:=0;
end
else
begin
form1.IBTransaction1.Rollback;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
end;
end;

procedure TForm58.IBTable1AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
end;

procedure TForm58.IBTable1BeforePost(DataSet: TDataSet);
begin
if (paid+remain)>=ibtable1['paid']then
begin
ibtable1['remaining']:=(paid+remain)-ibtable1['paid'];
complete:=1;
end
else
begin
//ibtable1['paid']:=paid;
//ibtable1['remaining']:=remain;
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ «·ﬁÌ„Â «·„œ›Ê⁄Â ·«‰Â«√ﬂ»— „‰ «·ﬁÌ„… «·≈Ã„«·ÌÂ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
complete:=0;
end;
end;

procedure TForm58.DBGrid1DblClick(Sender: TObject);
begin
complete:=0;
if dbgrid1.Fields[4].AsInteger=1 then
begin
paid:=dbgrid1.Fields[0].AsFloat;
remain:=dbgrid1.Fields[5].AsFloat;
end;
end;

end.
