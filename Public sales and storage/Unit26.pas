unit Unit26;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, IBCustomDataSet, IBQuery, ExtCtrls,
  IBTable, DBCtrls;

type
  TForm26 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    IBQuery3: TIBQuery;
    DataSource4: TDataSource;
    IBQuery3WORK_TYPE: TIBStringField;
    IBQuery1: TIBQuery;
    IBQuery1NAME: TIBStringField;
    DataSource1: TDataSource;
    Button1: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    Edit3: TEdit;
    Label4: TLabel;
    Button2: TButton;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    IBQuery2NAME: TIBStringField;
    IBQuery2NUM: TIntegerField;
    IBQuery2PAID: TIBBCDField;
    IBQuery2WORK_TYPE: TIBStringField;
    IBQuery2INPUT_DATE: TDateField;
    DataSource3: TDataSource;
    DataSource5: TDataSource;
    IBQuery4: TIBQuery;
    IBQuery5: TIBQuery;
    IBQuery4SUM: TIBBCDField;
    IBQuery5SUM: TIBBCDField;
    Button3: TButton;
    IBQuery2DELIVERD_NAME: TIBStringField;
    DataSource6: TDataSource;
    IBTable1: TIBTable;
    IBTable1NAME: TIBStringField;
    IBTable1NUM: TIntegerField;
    IBTable1PAID: TIBBCDField;
    IBTable1WORK_TYPE: TIBStringField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1DELIVERD_NAME: TIBStringField;
    DBNavigator1: TDBNavigator;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure IBTable1AfterPost(DataSet: TDataSet);
    procedure IBTable1AfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm26.ComboBox1Change(Sender: TObject);
begin
ibquery2.Close;
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Params[0].Value:=combobox1.Text;
ibquery3.Open;
if ibquery3.RecordCount<>0 then
edit1.Text:=ibquery3['work_type']
else
edit1.Text:='';
edit3.Text:='';
end;

procedure TForm26.FormShow(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
combobox1.Clear;
while(not(IBQuery1.Eof)) do
begin
combobox1.Items.Add(IBQuery1['name']);
IBQuery1.Next;
end;
IBQuery5.Close;
IBQuery5.Prepare;
IBQuery5.Open;
if ibquery5['sum']=null then
edit2.Text:='0'
else
edit2.Text:=ibquery5['sum'];
end;

procedure TForm26.Button1Click(Sender: TObject);
begin
{IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Params[0].Value:=combobox1.Text;
IBQuery2.Open;}
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Filter:='name='+quotedstr(combobox1.Text);
datasource6.DataSet.Filtered:=true;
ibtable1.Open;
IBQuery4.Close;
IBQuery4.Prepare;
IBQuery4.Params[0].Value:=combobox1.Text;
IBQuery4.Open;
if ibquery4['sum']=null then
edit3.Text:='0'
else
edit3.Text:=ibquery4['sum'];


end;

procedure TForm26.Button2Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
form26.Close;
form1.show;
end;

procedure TForm26.Button3Click(Sender: TObject);
begin
form61.QRLabel119.Caption:=combobox1.Text;
form61.QuickRep16.Preview;
end;

procedure TForm26.IBTable1AfterPost(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

procedure TForm26.IBTable1AfterDelete(DataSet: TDataSet);
begin
form1.IBTransaction1.Commit;
end;

end.
