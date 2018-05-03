unit Unit50;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, IBCustomDataSet, IBQuery, ComCtrls,
  Grids, DBGrids, IBTable;

type
  TForm50 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox3: TComboBox;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    Button3: TButton;
    IBQuery1KIND: TIBStringField;
    IBQuery2NAME: TIBStringField;
    IBQuery3NAME: TIBStringField;
    IBQuery4: TIBQuery;
    IBQuery4NAME: TIBStringField;
    IBQuery4KIND: TIBStringField;
    IBQuery4NUM: TIntegerField;
    IBQuery4INPUT_DATE: TDateField;
    IBQuery4BUY_PRICE: TIBBCDField;
    IBQuery4QUANTITY: TIntegerField;
    IBQuery4CHANGE_PRICE: TIBBCDField;
    IBQuery4TOTAL_DOLLAR_PRICE: TIBBCDField;
    IBQuery4DOLLAR_PRICE: TIBBCDField;
    IBQuery4PROVIDER_NAME: TIBStringField;
    IBQuery4TOTAL_BILL: TIBBCDField;
    IBQuery4PAID: TIBBCDField;
    IBQuery4REMAINING: TIBBCDField;
    IBQuery4NUM_IN_HISTORY_STORGE: TIntegerField;
    IBQuery4INPUT_DATE1: TDateField;
    IBQuery4DOLLAR: TIBBCDField;
    IBQuery4CHANGE: TIBBCDField;
    IBQuery4REMAINING_DOLLAR: TIBBCDField;
    IBQuery4TOTAL_DOLLAR: TIBBCDField;
    DBGrid1: TDBGrid;
    DataSource5: TDataSource;
    IBQuery5: TIBQuery;
    IBTable1: TIBTable;
    DataSource6: TDataSource;
    IBTable1NAME: TIBStringField;
    IBTable1KIND: TIBStringField;
    IBTable1NUM: TIntegerField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1BUY_PRICE: TIBBCDField;
    IBTable1QUANTITY: TIntegerField;
    IBTable1NUM_IN_HISTORY_STORGE: TIntegerField;
    IBTable1SOLD: TIntegerField;
    IBTable1DOLLAR_PRICE: TIBBCDField;
    IBTable1TOTAL_DOLLAR_PRICE: TIBBCDField;
    IBTable1CHANGE_PRICE: TIBBCDField;
    IBQuery5NAME: TIBStringField;
    IBQuery5KIND: TIBStringField;
    IBQuery5NUM: TIntegerField;
    IBQuery5INPUT_DATE: TDateField;
    IBQuery5BUY_PRICE: TIBBCDField;
    IBQuery5QUANTITY: TIntegerField;
    IBQuery5NUM_IN_HISTORY_STORGE: TIntegerField;
    IBQuery5SOLD: TIntegerField;
    IBQuery5DOLLAR_PRICE: TIBBCDField;
    IBQuery5TOTAL_DOLLAR_PRICE: TIBBCDField;
    IBQuery5CHANGE_PRICE: TIBBCDField;
    Button2: TButton;
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form50: TForm50;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm50.Button3Click(Sender: TObject);
begin
form50.Close;
form1.show;
end;

procedure TForm50.FormShow(Sender: TObject);
begin
ibquery1.Close;
ibquery1.Open;
combobox1.Clear;
while(not(ibquery1.Eof))do
begin
combobox1.Items.Add(ibquery1['kind']);
ibquery1.Next;
end;

ibquery3.Close;
ibquery3.Open;
combobox3.Clear;
while(not(ibquery3.Eof))do
begin
combobox3.Items.Add(ibquery3['name']);
ibquery3.Next;
end;
datetimepicker1.Date:=now;
end;

procedure TForm50.ComboBox1Change(Sender: TObject);
begin
ibquery2.Close;
ibquery2.Params[0].Value:=combobox1.Text;
ibquery2.Open;
combobox2.Clear;
while(not(ibquery2.Eof))do
begin
combobox2.Items.Add(ibquery2['name']);
ibquery2.Next;
end;
end;

procedure TForm50.Button1Click(Sender: TObject);
begin
ibquery4.Close;
ibquery4.Prepare;
ibquery4.Params[0].Value:=combobox3.Text;
ibquery4.Params[1].Value:=combobox1.Text;
ibquery4.Params[2].Value:=combobox2.Text;
ibquery4.Params[3].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
ibquery4.Open;
if ibquery4.RecordCount=0then
ibquery4.Close;
end;

procedure TForm50.DBGrid1CellClick(Column: TColumn);
begin
//edit3.Text:=dbgrid1.Fields[2].AsString;
end;

procedure TForm50.Button2Click(Sender: TObject);
begin
ibquery5.Close;
ibquery5.Prepare;
ibquery5.Params[0].Value:=dbgrid1.Fields[6].AsInteger;
ibquery5.Params[1].Value:=dbgrid1.Fields[0].AsString;
ibquery5.Params[2].Value:=dbgrid1.Fields[1].AsString;
//ibquery5.Params[3].Value:=edit3.Text;
ibquery5.Open;
if ibquery5.RecordCount=0 then
begin //ÈÏÇíÉ ÅĞÇ ßÇä áÇíæÌÏ İì ÇáãÎÒä
//if strtoint(edit2.Text)>strtoint(edit3.Text) then
//begin //ÈÏÇíÉ ÅĞÇ ßÇä ÇáÌÏíÏ ÃßÈÑ
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['name']:=dbgrid1.Fields[1].AsString;
ibtable1['kind']:=dbgrid1.Fields[0].AsString;
ibtable1['input_date']:=dbgrid1.Fields[7].AsDateTime;
ibtable1['buy_price']:=dbgrid1.Fields[3].AsFloat;
//ibtable1['quantity']:=strtoint(edit2.Text)-strtoint(edit3.Text);
//ibatable1['num_in_history_storge']:=dbgrid1.Fields[6].AsInteger;
//ibtable1['sold']:=edit2.Text;
ibtable1['dollar_price']:=dbgrid1.Fields[4].AsFloat;
ibtable1['total_dollar_price']:=dbgrid1.Fields[9].AsFloat;
ibtable1['chnage_price']:=dbgrid1.Fields[8].AsFloat;
ibtable1.Post;
//end //äåÇíÉ ÅĞÇ ßÇä ÇáÌÏíÏ ÃßÈÑ
//else
//begin//ÈÏÇíÉ ÅĞÇ ßÇä ÇáÌÏíÏ ÃÕÛÑ

//end;//äåÇíÉ ÅĞÇ ßÇä ÇáÌÏíÏ ÃÕÛÑ
end// äåÇíÉ ÅĞÇ ßÇä áÇ íæÌÏ İì ÇáãÎÒä
else
begin//ÈÏÇíÉ ÅĞÇ ßÇä íæÌÏ İì ÇáãÎÒä

end;// äåÇíÉ ÅĞÇ ßÇä íæÌÏ İì ÇáãÎÒä
end;

end.
