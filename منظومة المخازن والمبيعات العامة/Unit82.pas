unit Unit82;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IBCustomDataSet, IBUpdateSQL, DB, IBQuery,
  IBTable;

type
  TForm82 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    readd: TIBQuery;
    edit_bill: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    edit_billNUM: TIntegerField;
    edit_billPAID_TYPE: TIBStringField;
    edit_billBILL_NUM: TIntegerField;
    edit_billPAID_VALUE: TIBBCDField;
    edit_billTOTAL_BILL_PRICE: TIBBCDField;
    edit_billSALE_NUM: TIntegerField;
    edit_billINPUT_DATE: TDateField;
    edit_billCUSTOMER_NAME: TIBStringField;
    edit_billREMAINING_VALUE: TIBBCDField;
    readdSUM: TIBBCDField;
    Edit5: TEdit;
    Label5: TLabel;
    DataSource3: TDataSource;
    IBTable1: TIBTable;
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form82: TForm82;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm82.Button3Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
button1.Enabled:=false;
button2.Enabled:=false;
form1.Show;
form82.Close;
end;

procedure TForm82.FormShow(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
button1.Enabled:=false;
button2.Enabled:=false;
end;

procedure TForm82.Edit1Change(Sender: TObject);
begin
if edit1.Text=''then
button1.Enabled:=false
else
button1.Enabled:=true;
end;

procedure TForm82.Edit3Change(Sender: TObject);
begin
if edit3.Text=''then
begin
edit4.Text:='';
button2.Enabled:=false;
end
else
begin
edit4.Text:=floattostr(strtofloat(edit2.Text)-strtofloat(edit3.Text));
button2.Enabled:=true;
end;
end;

procedure TForm82.Button1Click(Sender: TObject);
begin
readd.Close;
readd.Prepare;
readd.Params[0].Value:=edit1.Text;
readd.Open;
if readd['sum']<>null then
begin
edit2.Text:=readd['sum'];
edit_bill.Close;
edit_bill.Prepare;
edit_bill.Params[0].Value:=edit1.Text;
edit_bill.Open;
edit3.Text:=edit_bill['paid_value'];
if edit_bill['customer_name']<>'·« ÌÊÃœ'then
edit5.Text:=edit_bill['customer_name']
else
edit5.Text:='';
end
else
begin
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
button2.Enabled:=false;
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ —ﬁ„ «·›« Ê—Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
end;
end;

procedure TForm82.Button2Click(Sender: TObject);
begin
if (strtofloat(edit4.Text)<>0) and (edit5.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·«”„ ·ÊÃÊœ œÌ‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit5.SetFocus;
exit;
end;
edit_bill.Edit;
edit_bill['total_bill_price']:=edit2.Text;
edit_bill['paid_value']:=edit3.Text;
edit_bill['remaining_value']:=edit4.Text;
edit_bill['customer_name']:=edit5.text;
edit_bill.Post;
if strtofloat(edit4.Text)>0 then
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Filter:='name='+quotedstr(edit5.Text);
datasource3.DataSet.Filtered:=true;
ibtable1.Open;
if ibtable1.RecordCount=0 then
begin
ibtable1.Insert;
ibtable1['name']:=edit5.Text;
ibtable1.Post;
end;
end;
form1.IBTransaction1.Commit;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
button2.Enabled:=false;
end;

end.
