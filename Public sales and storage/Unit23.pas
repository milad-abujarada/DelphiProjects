unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, IBCustomDataSet, IBTable, IBQuery,
  ComCtrls;

type
  TForm23 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBQuery2: TIBQuery;
    DataSource3: TDataSource;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    IBQuery5: TIBQuery;
    DataSource2: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    IBQuery5SUM: TIBBCDField;
    IBQuery2SUM: TIBBCDField;
    IBQuery3SUM: TIBBCDField;
    IBQuery4SUM: TIBBCDField;
    Label10: TLabel;
    Label11: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    IBQuery6: TIBQuery;
    IBQuery7: TIBQuery;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    IBQuery6SUM: TIBBCDField;
    IBQuery7SUM: TIBBCDField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm23.Button2Click(Sender: TObject);
begin
form23.Close;
form1.show;
end;

procedure TForm23.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
combobox1.Clear;
while(not(IBQuery1.Eof)) do
begin
combobox1.Items.Add(IBQuery1['name']);
IBQuery1.Next;
end;
end;

procedure TForm23.Button1Click(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery2.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
IBQuery2.Params[2].Value:=combobox1.Text;
IBQuery2.Open;
if ibquery2['sum']=null then
edit1.Text:='0'
else
edit1.Text:=IBQuery2['sum'];

IBQuery3.Close;
IBQuery3.Prepare;
IBQuery3.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery3.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
IBQuery3.Params[2].Value:=combobox1.Text;
IBQuery3.Open;
if ibquery3['sum']=null then
edit2.Text:='0'
else
edit2.Text:=IBQuery3['sum'];

IBQuery4.Close;
IBQuery4.Prepare;
IBQuery4.Params[0].Value:=combobox1.Text;
IBQuery4.Open;
if ibquery4['sum']=null then
edit4.Text:='0'
else
edit4.Text:=IBQuery4['sum'];

IBQuery5.Close;
IBQuery5.Prepare;
IBQuery5.Params[0].Value:=combobox1.Text;
IBQuery5.Open;
if ibquery5['sum']=null then
edit5.Text:='0'
else
edit5.Text:=IBQuery5['sum'];

edit3.Text:=floattostr(strtofloat(edit1.Text)-strtofloat(edit2.Text));
edit6.Text:=floattostr(strtofloat(edit4.Text)-strtofloat(edit5.Text));

IBQuery6.Close;
IBQuery6.Prepare;
IBQuery6.Open;
if ibquery6['sum']=null then
edit7.Text:='0'
else
edit7.Text:=IBQuery6['sum'];

IBQuery7.Close;
IBQuery7.Prepare;
IBQuery7.Open;
if ibquery7['sum']=null then
edit8.Text:='0'
else
edit8.Text:=IBQuery7['sum'];
end;
end.
