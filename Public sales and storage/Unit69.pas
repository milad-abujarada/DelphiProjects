unit Unit69;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, IBCustomDataSet,
  IBUpdateSQL, IBQuery;

type
  TForm69 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Button3: TButton;
    Label7: TLabel;
    ComboBox1: TComboBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    db_data: TIBQuery;
    paid_data: TIBQuery;
    IBQuery3: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    db_dataNAME: TIBStringField;
    db_dataKIND: TIBStringField;
    db_dataQUANTITY: TIntegerField;
    db_dataSALE_NUM: TIntegerField;
    db_dataSALE_PRICE: TIBBCDField;
    db_dataNUM: TIntegerField;
    db_dataTOTAL_PIECE_PRICE: TIBBCDField;
    IBQuery3CUS_NAME: TIBStringField;
    paid_dataNUM: TIntegerField;
    paid_dataPAID_TYPE: TIBStringField;
    paid_dataBILL_NUM: TIntegerField;
    paid_dataPAID_VALUE: TIBBCDField;
    paid_dataTOTAL_BILL_PRICE: TIBBCDField;
    paid_dataSALE_NUM: TIntegerField;
    paid_dataINPUT_DATE: TDateField;
    paid_dataCUSTOMER_NAME: TIBStringField;
    paid_dataREMAINING_VALUE: TIBBCDField;
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form69: TForm69;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm69.Button3Click(Sender: TObject);
begin
db_data.Close;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
combobox1.Text:='';
button2.Enabled:=false;
combobox1.Enabled:=false;
form69.Close;
form1.show;
end;

procedure TForm69.FormShow(Sender: TObject);
begin
db_data.Close;
IBQuery3.Close;
IBQuery3.Open;
combobox1.Clear;
while not(IBQuery3.Eof)do
begin
combobox1.Items.Add(IBQuery3['cus_name']);
IBQuery3.Next;
end;
end;

procedure TForm69.Button1Click(Sender: TObject);
begin
if edit1.Text<>'' then
begin
db_data.Close;
db_data.Prepare;
db_data.Params[0].Value:=edit1.Text;
db_data.Open;
if db_data.RecordCount=0 then
begin
combobox1.Enabled:=false;
button2.Enabled:=false;
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end
else
begin
combobox1.Enabled:=true;
button2.Enabled:=true;
paid_data.Close;
paid_data.Params[0].Value:=edit1.Text;
paid_data.Open;
edit2.Text:=paid_data['total_bill_price'];
edit3.Text:=paid_data['paid_value'];
edit4.Text:=paid_data['remaining_value'];
edit5.Text:=paid_data['customer_name'];
end;
end
else
begin
application.MessageBox('·« ÌÊÃœ ›« Ê—… »Â–« «·—ﬁ„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
end;
end;

procedure TForm69.Button2Click(Sender: TObject);
begin
if (combobox1.Text<>'') then
begin
if combobox1.Text=edit5.Text then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ «·≈”„ «·ÃœÌœ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox1.SetFocus;
exit;
end;
paid_data.Edit;
paid_data['customer_name']:=combobox1.Text;
paid_data.Post;
form1.IBTransaction1.Commit;
db_data.Close;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
combobox1.Text:='';
button2.Enabled:=false;
combobox1.Enabled:=false;
application.MessageBox(' „ Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
end;
end;

end.
