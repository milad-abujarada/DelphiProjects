unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls, Buttons, DB,
  DBTables;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    Query_get_debts_information: TQuery;
    Query_get_debts_informationDEBT_NO: TIntegerField;
    Query_get_debts_informationDEBT_CUS_NAME: TStringField;
    Query_get_debts_informationDEBT_DATE: TStringField;
    Query_get_debts_informationDEBT_VALUE: TFloatField;
    edit1: TEdit;
    Edit4: TEdit;
    query_edit_in_debt_table: TQuery;
    DataSource2: TDataSource;
    query_edit_in_debt_tableDEBT_NO: TIntegerField;
    query_edit_in_debt_tableDEBT_CUS_NAME: TStringField;
    query_edit_in_debt_tableDEBT_DATE: TStringField;
    query_edit_in_debt_tableDEBT_VALUE: TFloatField;
    Query_save_in_collecting_debts: TQuery;
    DataSource3: TDataSource;
    Panel4: TPanel;
    DataSource4: TDataSource;
    Query_select_whitout_repeat: TQuery;
    DBGrid2: TDBGrid;
    Query_select_whitout_repeatDEBT_CUS_NAME: TStringField;
    Edit3: TEdit;
    BitBtn3: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Query_data_for_fatora: TQuery;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    Query_total_debt: TQuery;
    Query_total_debtSUM: TFloatField;
    DataSource7: TDataSource;
    Query_debt_for_someone: TQuery;
    Query_debt_for_someoneSUM: TFloatField;
    Label8: TLabel;
    BitBtn2: TBitBtn;
    query_edit_in_debt_tableNUM_IN_DAILY_SALE: TIntegerField;
    Query_get_debts_informationNUM_IN_DAILY_SALE: TIntegerField;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Query_save_in_collecting_debtsCD_NO: TIntegerField;
    Query_save_in_collecting_debtsCD_CUS_NAME: TStringField;
    Query_save_in_collecting_debtsCD_DEBT_PAY_VALUE: TFloatField;
    Query_save_in_collecting_debtsCD_DATE: TStringField;
    Query_save_in_collecting_debtsNUM_IN_DAILY_SALE: TIntegerField;
    Query_save_in_collecting_debtsCD_REMAINING: TFloatField;
    Query_data_for_fatoraCD_NO: TIntegerField;
    Query_data_for_fatoraCD_CUS_NAME: TStringField;
    Query_data_for_fatoraCD_DEBT_PAY_VALUE: TFloatField;
    Query_data_for_fatoraCD_DATE: TStringField;
    Query_data_for_fatoraNUM_IN_DAILY_SALE: TIntegerField;
    Query_data_for_fatoraCD_REMAINING: TFloatField;
    Query_data_for_fatoraDS_NO: TIntegerField;
    Query_data_for_fatoraDS_NAME_TYPE: TStringField;
    Query_data_for_fatoraDS_NAME_KIND: TStringField;
    Query_data_for_fatoraDS_QUANTITY: TIntegerField;
    Query_data_for_fatoraDS_PRICE: TFloatField;
    Query_data_for_fatoraDS_DATE: TStringField;
    Query_data_for_fatoraTOTAL_PRICE: TFloatField;
    Query_data_for_fatoraRECIVER_NAME: TStringField;
    Query_data_for_fatoraPAY_NUM: TIntegerField;
    DataSource8: TDataSource;
    Query_max_cd_no: TQuery;
    Query_max_cd_noMAX: TIntegerField;
    DataSource9: TDataSource;
    Query_total_for_fatora: TQuery;
    Query_total_for_fatoraSUM: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    debt_name,daily_date:string;
    no_for_debt,no_in_daily_sale:integer;
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit10, Unit11;

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
BitBtn4.Enabled:=false;
label6.Caption:='--------------------------------------';
edit3.Text:='';
bitbtn2.Enabled:=false;
bitbtn3.Enabled:=false;
panel1.Visible:=false;
panel2.Visible:=false;
panel4.Visible:=false;
form4.Hide;
form1.show;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);

begin
if(Query_get_debts_information.RecordCount<>0)then
begin
edit1.Text:=dbgrid1.Fields[0].Asstring;
Edit2.Text:=dbgrid1.Fields[1].AsString;
daily_date:=dbgrid1.Fields[2].AsString;
bitbtn2.Enabled:=true;
end;
end;
procedure TForm4.BitBtn2Click(Sender: TObject);
var
s,k:Variant;count:integer;
begin
count:=1;
if(Edit4.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… «·„œ›Ê⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit4.SetFocus;
exit;
end;
s:=strtofloat(edit4.Text);
k:=strtofloat(edit2.Text);
if (s>k)then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ ﬁÌ„… «·œÌ‰ «·„œ›Ê⁄… ·√‰Â« √ﬂ»— „‰ ﬁÌ„… «·œÌ‰ ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit4.SetFocus;
exit;
end;
Query_max_cd_no.Close;
Query_max_cd_no.Prepare;
Query_max_cd_no.Open;
query_edit_in_debt_table.Close;
query_edit_in_debt_table.Prepare;
query_edit_in_debt_table.Params[0].Value:=edit1.Text;
query_edit_in_debt_table.Params[1].Value:=k;
query_edit_in_debt_table.Params[2].Value:=daily_date;
query_edit_in_debt_table.Open;
no_in_daily_sale:=query_edit_in_debt_table['num_in_daily_sale'] ;
if(query_edit_in_debt_table['debt_value']=s)then
begin
query_edit_in_debt_table.Delete;
Query_save_in_collecting_debts.Close;
Query_save_in_collecting_debts.Prepare;
Query_save_in_collecting_debts.Open;
Query_save_in_collecting_debts.Append;
if (Query_max_cd_no['max']= null)then
begin
Query_save_in_collecting_debts['cd_no']:=1;
no_for_debt:=1;
end
else
begin
Query_save_in_collecting_debts['cd_no']:=Query_max_cd_no['max']+1;
no_for_debt:=Query_max_cd_no['max']+1;
end;
Query_save_in_collecting_debts['num_in_daily_sale']:=no_in_daily_sale;
Query_save_in_collecting_debts['cd_cus_name']:=edit1.Text;
Query_save_in_collecting_debts['cd_debt_pay_value']:=strtofloat(edit2.Text);
Query_save_in_collecting_debts['cd_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_save_in_collecting_debts['cd_remaining']:= 0;
Query_save_in_collecting_debts.Post;
Query_save_in_collecting_debts.close;
Query_save_in_collecting_debts.Prepare;
Query_save_in_collecting_debts.Open;
Query_get_debts_information.Close;
Query_get_debts_information.Prepare;
Query_get_debts_information.Open;
while(not(Query_get_debts_information.Eof))do
begin
Query_get_debts_information.Edit;
Query_get_debts_information['debt_no']:=count;
count:=count+1;
Query_get_debts_information.Post;
Query_get_debts_information.Next;
end;
edit1.Text:='';
edit2.Text:='';
edit4.Text:='';
bitbtn2.Enabled:=false;
end
else
begin
query_edit_in_debt_table.Edit;
query_edit_in_debt_table['debt_value']:=query_edit_in_debt_table['debt_value']- s;
query_edit_in_debt_table.Post;
Query_save_in_collecting_debts.Close;
Query_save_in_collecting_debts.Prepare;
Query_save_in_collecting_debts.Open;
Query_save_in_collecting_debts.Append;
if (Query_max_cd_no['max']= null)then
begin
Query_save_in_collecting_debts['cd_no']:=1;
no_for_debt:=1;
end
else
begin
Query_save_in_collecting_debts['cd_no']:=Query_max_cd_no['max']+1;
no_for_debt:=Query_max_cd_no['max']+1;
end;
Query_save_in_collecting_debts['num_in_daily_sale']:=no_in_daily_sale;
Query_save_in_collecting_debts['cd_cus_name']:=edit1.Text;
Query_save_in_collecting_debts['cd_debt_pay_value']:=strtofloat(edit4.Text);
Query_save_in_collecting_debts['cd_remaining']:=k -s;
Query_save_in_collecting_debts['cd_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_save_in_collecting_debts.Post;
Query_save_in_collecting_debts.close;
Query_save_in_collecting_debts.Prepare;
Query_save_in_collecting_debts.Open;
Query_get_debts_information.Close;
Query_get_debts_information.Prepare;
Query_get_debts_information.Open;
edit1.Text:='';
edit2.Text:='';
edit4.Text:='';
bitbtn2.Enabled:=false;
end;
BitBtn4.Enabled:=true;
end;

procedure TForm4.DBGrid2CellClick(Column: TColumn);
begin
if (Query_total_debt['sum']<>null) then
begin
edit3.Text:='';
label6.Caption:='--------------------------------------';
debt_name:=dbgrid2.Fields[0].AsString;
BitBtn3.Enabled:=true;
end;
end;
procedure TForm4.BitBtn3Click(Sender: TObject);
begin
Query_debt_for_someone.Close;
Query_debt_for_someone.Prepare;
Query_debt_for_someone.Params[0].Value:=debt_name;
Query_debt_for_someone.Open;
label6.Caption:=debt_name;
edit3.Text:=Query_debt_for_someone['sum'];
end;

procedure TForm4.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=now;
bitbtn3.Enabled:=false;
end;

procedure TForm4.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['?'..'?']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'-']))OR (KEY IN(['/'..'/']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))or (key in(['?'..'?'])) or (key in(['?'..'?'])) or (key in(['?'..'˜'])) or (key in(['?'..'?'])) or (key in(['í'..'?'])) or (key in(['?'..'ë'])) or (key in(['?'..'?'])) or (key in(['?'..'?'])))then
begin
   edit4.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 edit4.ReadOnly:=FALSE;
end;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
Query_max_cd_no.Close;
Query_max_cd_no.Prepare;
Query_max_cd_no.Open;
Query_data_for_fatora.Close;
Query_data_for_fatora.Prepare;
Query_data_for_fatora.Params[0].Value:=Query_max_cd_no['max'];
Query_data_for_fatora.Params[1].Value:=no_in_daily_sale;
Query_data_for_fatora.Params[2].Value:=no_in_daily_sale;
Query_data_for_fatora.Open;
Query_total_for_fatora.Close;
Query_total_for_fatora.Prepare;
Query_total_for_fatora.Params[0].Value:=Query_max_cd_no['max'];
Query_total_for_fatora.Params[1].Value:=no_in_daily_sale;
Query_total_for_fatora.Params[2].Value:=no_in_daily_sale;
Query_total_for_fatora.Open;
form10.QuickRep1.preview;
end;

procedure TForm4.BitBtn5Click(Sender: TObject);
begin
form4.Query_select_whitout_repeat.Close;
form4.Query_select_whitout_repeat.open;
form4.Hide;
form11.Show;
end;

end.
