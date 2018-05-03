unit Unit29;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids, ExtCtrls,
  ComCtrls;

type
  TForm29 = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery1AMOUNT: TIBBCDField;
    IBQuery1INPUT_DATE: TDateField;
    IBQuery1NUM: TIntegerField;
    IBQuery1CAUSE: TIBStringField;
    IBQuery4: TIBQuery;
    IBQuery4SUM: TIBBCDField;
    IBQuery3: TIBQuery;
    IBQuery3SUM: TIBBCDField;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label5: TLabel;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Button3: TButton;
    DataSource3: TDataSource;
    DataSource6: TDataSource;
    take_from_save: TIBQuery;
    saved_in_save: TIBQuery;
    saved_in_saveAMOUNT: TIBBCDField;
    saved_in_saveINPUT_DATE: TDateField;
    saved_in_saveNUM: TIntegerField;
    saved_in_saveCAUSE: TIBStringField;
    take_from_saveAMOUNT: TIBBCDField;
    take_from_saveNUM: TIntegerField;
    take_from_saveINPUT_DATE: TDateField;
    take_from_saveCAUSE: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form29: TForm29;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm29.Button2Click(Sender: TObject);
begin
panel2.Visible:=false;
form29.Close;
form1.show;
end;

procedure TForm29.FormShow(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Open;
ibquery2.Close;
ibquery2.Prepare;
ibquery2.Open;
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Open;
if ibquery3['sum']=null then
edit1.Text:='0'
else
edit1.Text:=ibquery3['sum'];
ibquery4.Close;
ibquery4.Prepare;
ibquery4.Open;
if ibquery4['sum']=null then
edit2.Text:='0'
else
edit2.Text:=ibquery4['sum'];
end;

procedure TForm29.Button1Click(Sender: TObject);
begin
panel2.Visible:=true;
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
end;

procedure TForm29.Button3Click(Sender: TObject);
begin
if radiobutton1.Checked=true then
begin
saved_in_save.Close;
saved_in_save.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
saved_in_save.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
saved_in_save.Open;
form61.QRLabel137.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel139.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep19.Preview;
end
else
begin
if radiobutton2.Checked=true then
begin
take_from_save.Close;
take_from_save.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
take_from_save.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
take_from_save.Open;
form61.QRLabel142.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel144.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep20.Preview;
end;
end;
panel2.Visible:=false;
end;

end.
