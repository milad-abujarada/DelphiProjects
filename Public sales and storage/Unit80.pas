unit Unit80;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, IBCustomDataSet, IBUpdateSQL, DB, IBTable,
  IBQuery;

type
  TForm80 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Button3: TButton;
    IBQuery2: TIBQuery;
    IBQuery2NAME: TIBStringField;
    IBQuery2KIND: TIBStringField;
    IBQuery2NUM: TIntegerField;
    IBQuery2INPUT_DATE: TDateField;
    IBQuery2BUY_PRICE: TIBBCDField;
    IBQuery2QUANTITY: TIntegerField;
    IBQuery3: TIBQuery;
    IBQuery6: TIBQuery;
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
    IBQuery7: TIBQuery;
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
    IBQuery8: TIBQuery;
    IBQuery8PAY_TYPE: TIBStringField;
    IBTable3: TIBTable;
    IBTable3NAME: TIBStringField;
    DataSource9: TDataSource;
    DataSource8: TDataSource;
    DataSource7: TDataSource;
    IBUpdateSQL6: TIBUpdateSQL;
    IBUpdateSQL5: TIBUpdateSQL;
    DataSource6: TDataSource;
    DataSource3: TDataSource;
    IBUpdateSQL2: TIBUpdateSQL;
    IBUpdateSQL1: TIBUpdateSQL;
    DataSource2: TDataSource;
    IBQuery2CHANGE_PRICE: TIBBCDField;
    IBQuery2TOTAL_DOLLAR_PRICE: TIBBCDField;
    IBQuery2DOLLAR_PRICE: TIBBCDField;
    IBQuery3NAME: TIBStringField;
    IBQuery3KIND: TIBStringField;
    IBQuery3NUM: TIntegerField;
    IBQuery3INPUT_DATE: TDateField;
    IBQuery3BUY_PRICE: TIBBCDField;
    IBQuery3QUANTITY: TIntegerField;
    IBQuery3NUM_IN_HISTORY_STORGE: TIntegerField;
    IBQuery3SOLD: TIntegerField;
    IBQuery3DOLLAR_PRICE: TIBBCDField;
    IBQuery3TOTAL_DOLLAR_PRICE: TIBBCDField;
    IBQuery3CHANGE_PRICE: TIBBCDField;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    num,quan:integer;
  end;

var
  Form80: TForm80;

implementation

uses Unit73, Unit1;

{$R *.dfm}

procedure TForm80.Button3Click(Sender: TObject);
begin
edit5.Text:='';
form80.Close;
form73.Show;
end;

procedure TForm80.Button2Click(Sender: TObject);
var
different:real;
begin
if edit5.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ≈Ã„«·Ï «·œÊ·«— «·ÃœÌœ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit5.SetFocus;
exit;
end;
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Params[0].Value:=num;
IBQuery2.Params[1].Value:=edit1.Text;
IBQuery2.Params[2].Value:=edit2.Text;
IBQuery2.Params[3].Value:=quan;
IBQuery2.Params[4].Value:=strtofloat(edit4.Text);
IBQuery2.Open;
IBQuery2.Edit;
IBQuery2['total_dollar_price']:=edit5.Text;
IBQuery2.Post;

IBQuery3.Close;
IBQuery3.Prepare;
IBQuery3.Params[0].Value:=num;
IBQuery3.Params[1].Value:=edit1.Text;
IBQuery3.Params[2].Value:=edit2.Text;
IBQuery3.Params[3].Value:=strtofloat(edit4.Text);
IBQuery3.Open;
while (not(ibquery3.Eof))do
begin
IBQuery3.Edit;
IBQuery3['total_dollar_price']:=edit5.Text;
IBQuery3.Post;
ibquery3.Next;
end;

IBQuery6.Close;
IBQuery6.Prepare;
IBQuery6.Params[0].Value:=num;
IBQuery6.Params[1].Value:=edit1.Text;
IBQuery6.Params[2].Value:=edit2.Text;
IBQuery6.Params[3].Value:=strtofloat(edit4.Text);
IBQuery6.Open;
while (not(ibquery6.Eof))do
begin
IBQuery6.Edit;
IBQuery6['total_dollar_price']:=edit5.Text;
IBQuery6.Post;
ibquery6.Next;
end;

IBQuery7.Close;
IBQuery7.Prepare;
IBQuery7.Params[0].Value:=num;
IBQuery7.Open;
if IBQuery7.RecordCount<>0 then
begin
IBQuery8.Close;
IBQuery8.Prepare;
IBQuery8.Params[0].Value:=ibquery7['provider_name'];
IBQuery8.Open;
if IBQuery8['pay_type']<>'»«·œÌ‰«—'then
begin
if strtofloat(edit4.Text)>strtofloat(edit5.Text)then
begin
different:=strtofloat(edit4.Text)-strtofloat(edit5.Text);
ibquery7.Edit;
ibquery7['total_dollar']:=ibquery7['total_dollar']-different;
ibquery7['remaining_dollar']:=ibquery7['total_dollar']-ibquery7['dollar'];
ibquery7.post;
end
else
begin
different:=strtofloat(edit5.Text)-strtofloat(edit4.Text);
ibquery7.Edit;
ibquery7['total_dollar']:=ibquery7['total_dollar']+different;
ibquery7['remaining_dollar']:=ibquery7['total_dollar']-ibquery7['dollar'];
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
if (ibquery7['total_dollar']>different)and (ibquery7['total_dollar']<>0)then
begin
ibquery7['total_dollar']:=ibquery7['total_dollar']-different;
ibquery7.post;
end;
end
else
begin
different:=strtofloat(edit5.Text)-strtofloat(edit4.Text);
ibquery7.Edit;
ibquery7['total_dollar']:=ibquery7['total_dollar']+different;
ibquery7.post;
end;
end;

end;


edit1.Text:='';
edit2.Text:='';

edit4.Text:='';
edit5.Text:='';
form1.IBTransaction1.Commit;

application.MessageBox(' „ Õ›Ÿ «· €Ì—« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
end;


end.
