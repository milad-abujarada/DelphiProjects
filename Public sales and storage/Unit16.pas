unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TForm16 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery1NUM: TIntegerField;
    IBQuery1PAID_TYPE: TIBStringField;
    IBQuery1BILL_NUM: TIntegerField;
    IBQuery1PAID_VALUE: TIBBCDField;
    IBQuery1TOTAL_BILL_PRICE: TIBBCDField;
    IBQuery1SALE_NUM: TIntegerField;
    IBQuery1INPUT_DATE: TDateField;
    IBQuery1CUSTOMER_NAME: TIBStringField;
    IBQuery1REMAINING_VALUE: TIBBCDField;
    IBQuery2SUM: TIBBCDField;
    IBQuery2SUM1: TIBBCDField;
    IBQuery2SUM2: TIBBCDField;
    DBGrid2: TDBGrid;
    IBQuery4: TIBQuery;
    DataSource4: TDataSource;
    IBQuery4KIND: TIBStringField;
    IBQuery4NAME: TIBStringField;
    IBQuery4quantity: TIntegerField;
    IBQuery4avg: TFloatField;
    IBQuery5: TIBQuery;
    DataSource5: TDataSource;
    IBQuery5SUM: TLargeintField;
    IBQuery5SUM1: TIBBCDField;
    Button3: TButton;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    DataSource6: TDataSource;
    IBQuery6: TIBQuery;
    IBQuery6SUM: TIBBCDField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure IBQuery4CalcFields(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm16.Button2Click(Sender: TObject);
begin
ibquery1.Close;
ibquery2.Close;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
form16.Close;
form1.show;
end;

procedure TForm16.Button1Click(Sender: TObject);
begin
ibquery4.Close;
ibquery4.Prepare;
ibquery4.Open;
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery1.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
IBQuery1.Open;
if ibquery1.RecordCount<>0 then
begin
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery2.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
IBQuery2.Open;
if ibquery2['sum']=null then
edit1.Text:='0'
else
edit1.Text:=ibquery2['sum'];
if ibquery2['sum1']=null then
edit2.Text:='0'
else
edit2.Text:=ibquery2['sum1'];
if ibquery2['sum2']=null then
edit3.Text:='0'
else
edit3.Text:=ibquery2['sum2'];

IBQuery6.Close;
IBQuery6.Prepare;
IBQuery6.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery6.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
IBQuery6.Open;
if ibquery6['sum']=null then
edit4.Text:='0'
else
edit4.Text:=ibquery6['sum'];
end
else
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
end;
end;

procedure TForm16.IBQuery4CalcFields(DataSet: TDataSet);
begin
ibquery5.Close;
ibquery5.Prepare;
ibquery5.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibquery5.Params[1].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
ibquery5.Params[2].Value:=ibquery4['kind'];
ibquery5.Params[3].Value:=ibquery4['name'];
ibquery5.Open;
if ibquery5['sum']=null then
begin
ibquery4['quantity']:=0;
ibquery4['avg']:=0;
end
else
begin
ibquery4['quantity']:=ibquery5['sum'];
ibquery4['avg']:=ibquery5['sum1']/ibquery5['sum'];
end;

end;

procedure TForm16.Button3Click(Sender: TObject);
begin
form61.QRLabel12.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel13.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep2.Preview;
end;

procedure TForm16.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
end;

end.
