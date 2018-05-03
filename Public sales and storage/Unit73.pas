unit Unit73;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TForm73 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    dbgrid_data_to_provider: TIBQuery;
    dbgrid_data_to_providerNAME: TIBStringField;
    dbgrid_data_to_providerKIND: TIBStringField;
    dbgrid_data_to_providerNUM: TIntegerField;
    dbgrid_data_to_providerINPUT_DATE: TDateField;
    dbgrid_data_to_providerBUY_PRICE: TIBBCDField;
    dbgrid_data_to_providerQUANTITY: TIntegerField;
    dbgrid_data_to_providerCHANGE_PRICE: TIBBCDField;
    dbgrid_data_to_providerTOTAL_DOLLAR_PRICE: TIBBCDField;
    dbgrid_data_to_providerDOLLAR_PRICE: TIBBCDField;
    providers_names: TIBQuery;
    DataSource2: TDataSource;
    providers_namesNAME: TIBStringField;
    providers_namesNUM: TIntegerField;
    providers_namesPAY_TYPE: TIBStringField;
    Button3: TButton;
    CheckBox1: TCheckBox;
    DataSource3: TDataSource;
    dbgrid_data_without_provider: TIBQuery;
    Button8: TButton;
    dbgrid_data_without_providerNAME: TIBStringField;
    dbgrid_data_without_providerKIND: TIBStringField;
    dbgrid_data_without_providerNUM: TIntegerField;
    dbgrid_data_without_providerINPUT_DATE: TDateField;
    dbgrid_data_without_providerBUY_PRICE: TIBBCDField;
    dbgrid_data_without_providerQUANTITY: TIntegerField;
    dbgrid_data_without_providerCHANGE_PRICE: TIBBCDField;
    dbgrid_data_without_providerTOTAL_DOLLAR_PRICE: TIBBCDField;
    dbgrid_data_without_providerDOLLAR_PRICE: TIBBCDField;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form73: TForm73;

implementation

uses Unit1, Unit75, Unit76, Unit61, Unit78, Unit79, Unit80;

{$R *.dfm}

procedure TForm73.Button2Click(Sender: TObject);
begin
form73.Close;
form1.show;
end;

procedure TForm73.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
checkbox1.Checked:=false;
combobox1.Enabled:=false;
providers_names.Close;
providers_names.Open;
combobox1.Clear;
while not(providers_names.Eof)do
begin
combobox1.Items.Add(providers_names['name']);
providers_names.Next;
end;
end;

procedure TForm73.Button1Click(Sender: TObject);
begin
button3.Enabled:=false;
button4.Enabled:=false;
button5.Enabled:=false;
if checkbox1.Checked=true then
begin
if combobox1.Text=''then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— ≈”„ «·„Ê—œ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
dbgrid_data_to_provider.Close;
dbgrid_data_to_provider.Prepare;
dbgrid_data_to_provider.Params[0].Value:=combobox1.Text;
dbgrid_data_to_provider.Params[1].Value:=datetimepicker1.Date;
dbgrid_data_to_provider.Params[2].Value:=datetimepicker2.Date;
dbgrid_data_to_provider.Open;
dbgrid1.DataSource:=datasource1;
end
else
begin
dbgrid_data_without_provider.Close;
dbgrid_data_without_provider.Prepare;
dbgrid_data_without_provider.Params[0].Value:=datetimepicker1.Date;
dbgrid_data_without_provider.Params[1].Value:=datetimepicker2.Date;
dbgrid_data_without_provider.Open;
dbgrid1.DataSource:=datasource3;
end;
end;

procedure TForm73.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked=true then
combobox1.Enabled:=true
else
begin
combobox1.Enabled:=false;
combobox1.ClearSelection;
end;
end;

procedure TForm73.Button3Click(Sender: TObject);
begin
form73.Hide;
form75.Show;
form75.kin:=dbgrid1.Fields[0].AsString;
form75.typ:=dbgrid1.Fields[1].AsString;
form75.num:=dbgrid1.Fields[8].AsInteger;
form75.combobox1.Text:=dbgrid1.Fields[0].AsString;
form75.combobox2.Text:=dbgrid1.Fields[1].AsString;
end;

procedure TForm73.Button4Click(Sender: TObject);
begin
form73.Hide;
form76.Show;
form76.num:=dbgrid1.Fields[8].AsInteger;
form76.edit1.Text:=dbgrid1.Fields[0].AsString;
form76.edit2.Text:=dbgrid1.Fields[1].AsString;
form76.edit3.Text:=dbgrid1.Fields[2].AsString;
end;

procedure TForm73.Button8Click(Sender: TObject);
begin
if checkbox1.Checked=true then
begin
form61.QRLabel177.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel178.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QRLabel170.Caption:=combobox1.Text;
form61.QuickRep25.Preview;
end
else
begin
form61.QRLabel187.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel188.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep26.Preview;
end;
end;

procedure TForm73.DBGrid1CellClick(Column: TColumn);
begin
if checkbox1.Checked=true then
begin
if dbgrid_data_to_provider.RecordCount<>0 then
begin
button3.Enabled:=true;
button4.Enabled:=true;
button5.Enabled:=true;
button6.Enabled:=true;
button7.Enabled:=true;
end;
end
else
begin
if dbgrid_data_without_provider.RecordCount<>0 then
begin
button3.Enabled:=true;
button4.Enabled:=true;
button5.Enabled:=true;
button6.Enabled:=true;
button7.Enabled:=true;
end;
end;
end;

procedure TForm73.Button5Click(Sender: TObject);
begin
form78.DateTimePicker1.Date:=dbgrid1.Fields[3].AsDateTime;
form78.num:=dbgrid1.Fields[8].asinteger;
form73.Hide;
form78.show;
end;

procedure TForm73.Button6Click(Sender: TObject);
begin
form79.Edit1.Text:=dbgrid1.Fields[0].AsString;
form79.Edit2.Text:=dbgrid1.Fields[1].AsString;
form79.Edit3.Text:=dbgrid1.Fields[5].AsString;
form79.Edit4.Text:=dbgrid1.Fields[6].AsString;
form79.num:=dbgrid1.Fields[8].asinteger;
form73.Hide;
form79.show;
end;

procedure TForm73.Button7Click(Sender: TObject);
begin
form80.Edit1.Text:=dbgrid1.Fields[0].AsString;
form80.Edit2.Text:=dbgrid1.Fields[1].AsString;
form80.Edit4.Text:=dbgrid1.Fields[7].AsString;
form80.num:=dbgrid1.Fields[8].asinteger;
form80.quan:=dbgrid1.Fields[2].asinteger;
form73.Hide;
form80.show;
end;

end.
