unit Unit40;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, IBCustomDataSet,
  IBUpdateSQL, DB, IBQuery, DBCtrls, ComCtrls;

type
  TForm40 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBUpdateSQL1: TIBUpdateSQL;
    Button1: TButton;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    IBQuery2NAME: TIBStringField;
    IBQuery1NAME: TIBStringField;
    IBQuery1DINAR: TIBBCDField;
    IBQuery1DOLLAR: TIBBCDField;
    IBQuery1NUM: TIntegerField;
    IBQuery1DINAR_VS_DOLLAR: TIBBCDField;
    IBQuery1INPUT_DATE: TDateField;
    DBNavigator1: TDBNavigator;
    IBQuery3: TIBQuery;
    DataSource3: TDataSource;
    IBQuery3SUM: TIBBCDField;
    IBQuery3SUM1: TIBBCDField;
    IBQuery1SENDED_TO: TIBStringField;
    DBGrid11: TDBGrid;
    DBNavigator11: TDBNavigator;
    IBQuery11: TIBQuery;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    IBQuery12: TIBQuery;
    IBQuery12PAID: TIBBCDField;
    IBQuery12INPUT_DATE: TDateField;
    IBQuery12NAME: TIBStringField;
    IBQuery12DELIVER_NAME: TIBStringField;
    IBUpdateSQL2: TIBUpdateSQL;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
    DataSource6: TDataSource;
    IBQuery4: TIBQuery;
    IBQuery4SUM: TIBBCDField;
    IBQuery11NAME: TIBStringField;
    Button2: TButton;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label8: TLabel;
    Label9: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button3: TButton;
    DataSource7: TDataSource;
    transfer_rep: TIBQuery;
    transfer_repNAME: TIBStringField;
    transfer_repDINAR: TIBBCDField;
    transfer_repDOLLAR: TIBBCDField;
    transfer_repNUM: TIntegerField;
    transfer_repDINAR_VS_DOLLAR: TIBBCDField;
    transfer_repINPUT_DATE: TDateField;
    transfer_repSENDED_TO: TIBStringField;
    paied_rep: TIBQuery;
    DataSource8: TDataSource;
    paied_repPAID: TIBBCDField;
    paied_repINPUT_DATE: TDateField;
    paied_repNAME: TIBStringField;
    paied_repDELIVER_NAME: TIBStringField;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid11DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure IBQuery12AfterDelete(DataSet: TDataSet);
    procedure IBQuery1AfterDelete(DataSet: TDataSet);
    procedure IBQuery12AfterPost(DataSet: TDataSet);
    procedure IBQuery1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form40: TForm40;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm40.Button1Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
button2.Enabled:=false;
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
panel2.Visible:=false;
form40.Close;
form1.show;
end;

procedure TForm40.ComboBox1Change(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Params[0].Value:=combobox1.Text;
ibquery1.Open;
ibquery12.Close;
ibquery12.Prepare;
ibquery12.Params[0].Value:=combobox1.text;
ibquery12.Open;
if ibquery12.RecordCount=0 then
begin
ibquery12.Close;
edit3.Text:='0';
end
else
begin
ibquery4.Close;
ibquery4.Prepare;
ibquery4.Params[0].Value:=combobox1.Text;
ibquery4.Open;
if ibquery4['sum']=null then
edit3.Text:='0'
else
edit3.Text:=ibquery4['sum'];
end;
if ibquery1.RecordCount=0 then
ibquery1.Close;
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=combobox1.Text;
ibquery3.Open;
if ibquery3['sum']<>null then
begin
edit1.Text:=ibquery3['sum'];
edit2.Text:=ibquery3['sum1'];
end
else
begin
edit1.Text:='0';
edit2.Text:='0';
end;
//if strtofloat(edit3.Text)>strtofloat(edit2.Text)then
edit4.Text:=floattostr(strtofloat(edit2.Text)-strtofloat(edit3.Text));
button2.Enabled:=true;
//else
//edit4.Text:=floattostr(strtofloat(edit3.Text)-strtofloat(edit2.Text));
end;

procedure TForm40.FormShow(Sender: TObject);
begin
ibquery1.Close;
ibquery12.Close;
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Open;
combobox1.Clear;
while(not(IBQuery2.Eof)) do
begin
combobox1.Items.Add(IBQuery2['name']);
IBQuery2.Next;
end;
IBQuery11.Close;
IBQuery11.Prepare;
IBQuery11.Open;
while(not(IBQuery11.Eof)) do
begin
combobox1.Items.Add(IBQuery11['name']);
IBQuery11.Next;
end;
end;

procedure TForm40.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=combobox1.Text;
ibquery3.Open;
if ibquery3['sum']<>null then
begin
edit1.Text:=ibquery3['sum'];
edit2.Text:=ibquery3['sum1'];
end
else
begin
edit1.Text:='0';
edit2.Text:='0';
end;
ibquery4.Close;
ibquery4.Prepare;
ibquery4.Params[0].Value:=combobox1.Text;
ibquery4.Open;
if ibquery4['sum']=null then
edit3.Text:='0'
else
edit3.Text:=ibquery4['sum'];
edit4.Text:=floattostr(strtofloat(edit2.Text)-strtofloat(edit3.Text));
end;



procedure TForm40.DBGrid11DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=combobox1.Text;
ibquery3.Open;
if ibquery3['sum']<>null then
begin
edit1.Text:=ibquery3['sum'];
edit2.Text:=ibquery3['sum1'];
end
else
begin
edit1.Text:='0';
edit2.Text:='0';
end;
ibquery4.Close;
ibquery4.Prepare;
ibquery4.Params[0].Value:=combobox1.Text;
ibquery4.Open;
if ibquery4['sum']=null then
edit3.Text:='0'
else
edit3.Text:=ibquery4['sum'];
edit4.Text:=floattostr(strtofloat(edit2.Text)-strtofloat(edit3.Text));

end;

procedure TForm40.Button2Click(Sender: TObject);
begin
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
panel2.Visible:=true;
end;

procedure TForm40.Button3Click(Sender: TObject);
begin
if radiobutton1.Checked=true then
begin
transfer_rep.Close;
transfer_rep.Prepare;
transfer_rep.Params[0].Value:=combobox1.Text;
transfer_rep.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
transfer_rep.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
transfer_rep.Open;
form61.QRLabel15.Caption:=combobox1.Text;
form61.QRLabel22.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel24.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep3.Preview
end
else
begin
if radiobutton2.Checked=true then
begin
paied_rep.Close;
paied_rep.Prepare;
paied_rep.Params[0].Value:=combobox1.Text;
paied_rep.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
paied_rep.Params[2].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
paied_rep.Open;
form61.QRLabel26.Caption:=combobox1.Text;
form61.QRLabel28.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel30.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep4.Preview
end;
end;
panel2.Visible:=false;
end;

procedure TForm40.IBQuery12AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm40.IBQuery1AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm40.IBQuery12AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm40.IBQuery1AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

end.
