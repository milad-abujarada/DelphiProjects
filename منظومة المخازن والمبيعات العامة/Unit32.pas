unit Unit32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, IBCustomDataSet, IBUpdateSQL, DB,
  IBQuery, ComCtrls, ExtCtrls, IBTable;

type
  TForm32 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBUpdateSQL1: TIBUpdateSQL;
    IBUpdateSQL2: TIBUpdateSQL;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    Button3: TButton;
    IBQuery1NAME: TIBStringField;
    IBQuery1KIND: TIBStringField;
    IBQuery1NUM: TIntegerField;
    IBQuery1INPUT_DATE: TDateField;
    IBQuery1BUY_PRICE: TIBBCDField;
    IBQuery1QUANTITY: TIntegerField;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    IBUpdateSQL3: TIBUpdateSQL;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    IBQuery2NAME: TIBStringField;
    IBQuery2KIND: TIBStringField;
    IBQuery2NUM: TIntegerField;
    IBQuery2INPUT_DATE: TDateField;
    IBQuery2BUY_PRICE: TIBBCDField;
    IBQuery2QUANTITY: TIntegerField;
    IBQuery4SALE_NUM: TIntegerField;
    IBQuery4BUY_PRICE: TIBBCDField;
    IBQuery4SALE_PRICE: TIBBCDField;
    IBQuery4GAIN: TIBBCDField;
    IBQuery4NUM: TIntegerField;
    IBQuery4KIND: TIBStringField;
    IBQuery4NAME: TIBStringField;
    IBQuery4QUANTITY: TIntegerField;
    IBQuery4NUM_IN_STORGE_HISTORY: TIntegerField;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    IBQuery5: TIBQuery;
    IBQuery6: TIBQuery;
    IBUpdateSQL4: TIBUpdateSQL;
    IBUpdateSQL5: TIBUpdateSQL;
    IBQuery5NAME: TIBStringField;
    IBQuery5KIND: TIBStringField;
    IBQuery5NUM: TIntegerField;
    IBQuery5INPUT_DATE: TDateField;
    IBQuery5MOVED_DATE: TDateField;
    IBQuery5BUY_PRICE: TIBBCDField;
    IBQuery5QUANTITY: TIntegerField;
    IBQuery5NUM_IN_STORGE_HISTORY: TIntegerField;
    IBQuery5PLACE: TIBStringField;
    IBQuery5MOVED_NUM: TIntegerField;
    IBQuery6NAME: TIBStringField;
    IBQuery6KIND: TIBStringField;
    IBQuery6NUM: TIntegerField;
    IBQuery6INPUT_DATE: TDateField;
    IBQuery6BUY_PRICE: TIBBCDField;
    IBQuery6QUANTITY: TIntegerField;
    IBQuery6NUM_IN_HISTORY_STORGE: TIntegerField;
    IBQuery6SOLD: TIntegerField;
    IBQuery6DOLLAR_PRICE: TIBBCDField;
    IBQuery6TOTAL_DOLLAR_PRICE: TIBBCDField;
    IBQuery6CHANGE_PRICE: TIBBCDField;
    DataSource7: TDataSource;
    IBQuery7: TIBQuery;
    IBUpdateSQL6: TIBUpdateSQL;
    DataSource8: TDataSource;
    IBQuery8: TIBQuery;
    IBQuery7PROVIDER_NAME: TIBStringField;
    IBQuery7TOTAL_BILL: TIBBCDField;
    IBQuery7PAID: TIBBCDField;
    IBQuery7REMAINING: TIBBCDField;
    IBQuery7NUM_IN_HISTORY_STORGE: TIntegerField;
    IBQuery7INPUT_DATE: TDateField;
    IBQuery7DOLLAR: TIBBCDField;
    IBQuery7CHANGE: TIBBCDField;
    IBQuery7REMAINING_DOLLAR: TIBBCDField;
    IBQuery7TOTAL_DOLLAR: TIBBCDField;
    IBQuery8PAY_TYPE: TIBStringField;
    IBTable3: TIBTable;
    IBTable3NAME: TIBStringField;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    IBQuery9: TIBQuery;
    IBUpdateSQL7: TIBUpdateSQL;
    IBQuery9KIND: TIBStringField;
    IBQuery9NAME: TIBStringField;
    IBQuery9QUANTITY: TIntegerField;
    IBQuery9BUY_PRICE: TIBBCDField;
    IBQuery9SALE_PRICE: TIBBCDField;
    IBQuery9INPUT_DATE: TDateField;
    IBQuery9PLACE: TIBStringField;
    IBQuery9NUM_IN_STORGE_HISTORY: TIntegerField;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form32: TForm32;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm32.Button3Click(Sender: TObject);
begin
form32.Close;
form1.show;
end;

procedure TForm32.Button1Click(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBQuery1.Open;
if IBQuery1.RecordCount<>0 then
button2.Enabled:=true
else
button2.Enabled:=false;
end;

procedure TForm32.DBGrid1CellClick(Column: TColumn);
begin
if ibquery1.RecordCount<>0 then
begin
edit1.Text:=DBGrid1.Fields[0].Asstring;
edit2.Text:=DBGrid1.Fields[1].Asstring;
edit3.Text:=DBGrid1.Fields[2].Asstring;
edit4.Text:=DBGrid1.Fields[3].Asstring;
edit5.Text:='';
end
else
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end;
end;

procedure TForm32.Button2Click(Sender: TObject);
var
different:real;
begin
if edit5.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ”⁄— «·‘—«¡ «·ÃœÌœ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit5.SetFocus;
exit;
end;
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Params[0].Value:=DBGrid1.Fields[4].AsInteger;
IBQuery2.Params[1].Value:=edit1.Text;
IBQuery2.Params[2].Value:=edit2.Text;
IBQuery2.Params[3].Value:=strtoint(edit3.Text);
IBQuery2.Params[4].Value:=strtofloat(edit4.Text);
IBQuery2.Params[5].Value:=dbgrid1.Fields[5].AsDateTime;
IBQuery2.Open;
IBQuery2.Edit;
IBQuery2['buy_price']:=edit5.Text;
IBQuery2.Post;

IBQuery3.Close;
IBQuery3.Prepare;
IBQuery3.Params[0].Value:=DBGrid1.Fields[4].AsInteger;
IBQuery3.Params[1].Value:=edit1.Text;
IBQuery3.Params[2].Value:=edit2.Text;
IBQuery3.Params[3].Value:=strtofloat(edit4.Text);
IBQuery3.Open;
while (not(ibquery3.Eof))do
begin
IBQuery3.Edit;
IBQuery3['buy_price']:=edit5.Text;
IBQuery3.Post;
ibquery3.Next;
end;

IBQuery4.Close;
IBQuery4.Prepare;
IBQuery4.Params[0].Value:=DBGrid1.Fields[4].AsInteger;
IBQuery4.Params[1].Value:=edit1.Text;
IBQuery4.Params[2].Value:=edit2.Text;
IBQuery4.Params[3].Value:=strtofloat(edit4.Text);
IBQuery4.Open;
while (not(ibquery4.Eof))do
begin
IBQuery4.Edit;
IBQuery4['buy_price']:=edit5.Text;
ibquery4['gain']:=ibquery4['sale_price']- ibquery4['buy_price'];
IBQuery4.Post;
ibquery4.Next;
end;

IBQuery5.Close;
IBQuery5.Prepare;
IBQuery5.Params[0].Value:=DBGrid1.Fields[4].AsInteger;
IBQuery5.Params[1].Value:=edit1.Text;
IBQuery5.Params[2].Value:=edit2.Text;
IBQuery5.Params[3].Value:=strtofloat(edit4.Text);
IBQuery5.Open;
while (not(ibquery5.Eof))do
begin
IBQuery5.Edit;
IBQuery5['buy_price']:=edit5.Text;
IBQuery5.Post;
ibquery5.Next;
end;

IBQuery6.Close;
IBQuery6.Prepare;
IBQuery6.Params[0].Value:=DBGrid1.Fields[4].AsInteger;
IBQuery6.Params[1].Value:=edit1.Text;
IBQuery6.Params[2].Value:=edit2.Text;
IBQuery6.Params[3].Value:=strtofloat(edit4.Text);
IBQuery6.Open;
while (not(ibquery6.Eof))do
begin
IBQuery6.Edit;
IBQuery6['buy_price']:=edit5.Text;
IBQuery6.Post;
ibquery6.Next;
end;

IBQuery9.Close;
IBQuery9.Prepare;
IBQuery9.Params[0].Value:=DBGrid1.Fields[4].AsInteger;
IBQuery9.Params[1].Value:=edit1.Text;
IBQuery9.Params[2].Value:=edit2.Text;
IBQuery9.Params[3].Value:=strtofloat(edit4.Text);
IBQuery9.Open;
while (not(ibquery9.Eof))do
begin
IBQuery9.Edit;
IBQuery9['buy_price']:=edit5.Text;
IBQuery9.Post;
ibquery9.Next;
end;

IBQuery7.Close;
IBQuery7.Prepare;
IBQuery7.Params[0].Value:=DBGrid1.Fields[4].AsInteger;
IBQuery7.Open;
if IBQuery7.RecordCount<>0 then
begin
IBQuery8.Close;
IBQuery8.Prepare;
IBQuery8.Params[0].Value:=ibquery7['provider_name'];
IBQuery8.Open;
if IBQuery8['pay_type']='»«·œÌ‰«—'then
begin
if strtofloat(edit4.Text)>strtofloat(edit5.Text)then
begin
different:=strtofloat(edit4.Text)-strtofloat(edit5.Text);
ibquery7.Edit;
ibquery7['total_bill']:=ibquery7['total_bill']-(different*strtoint(edit3.Text));
ibquery7['remaining']:=ibquery7['total_bill']-ibquery7['paid'];
ibquery7.post;
end
else
begin
different:=strtofloat(edit5.Text)-strtofloat(edit4.Text);
ibquery7.Edit;
ibquery7['total_bill']:=ibquery7['total_bill']+(different*strtoint(edit3.Text));
ibquery7['remaining']:=ibquery7['total_bill']-ibquery7['paid'];
ibquery7.post;
ibtable3.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable3.Filter:='name='+quotedstr(ibquery7['provider_name']);
datasource9.DataSet.Filtered:=true;
ibtable3.Open;
if ibtable3.RecordCount=0 then
begin
ibtable3.Insert;
ibtable3['name']:=ibquery7['provider_name'];
ibtable3.Post;
end;
end;
end
else
begin
if strtofloat(edit4.Text)>strtofloat(edit5.Text)then
begin
different:=strtofloat(edit4.Text)-strtofloat(edit5.Text);
ibquery7.Edit;
ibquery7['total_bill']:=ibquery7['total_bill']-(different*strtoint(edit3.Text));
ibquery7.post;
end
else
begin
different:=strtofloat(edit5.Text)-strtofloat(edit4.Text);
ibquery7.Edit;
ibquery7['total_bill']:=ibquery7['total_bill']+(different*strtoint(edit3.Text));
ibquery7.post;
end;
end;

end;


edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
form1.IBTransaction1.Commit;
ibquery1.Close;
button2.Enabled:=false;
application.MessageBox(' „ Õ›Ÿ «· €Ì—« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
end;

end.
