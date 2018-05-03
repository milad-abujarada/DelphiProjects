unit Unit31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBCustomDataSet, IBUpdateSQL, DB, Grids, DBGrids, IBTable,
  IBQuery, ExtCtrls, StdCtrls, ComCtrls;

type
  TForm31 = class(TForm)
    Panel1: TPanel;
    bring_names: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBTable1: TIBTable;
    DBGrid1: TDBGrid;
    bring_namesdebt_value: TFloatField;
    all_totals: TIBQuery;
    DataSource3: TDataSource;
    edit_in_debts_names: TIBQuery;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    max_num: TIBQuery;
    max_numMAX: TIntegerField;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Button1: TButton;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    bring_namesdebt_value_dollar: TFloatField;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    IBQuery1: TIBQuery;
    DataSource6: TDataSource;
    IBQuery1PAY_TYPE: TIBStringField;
    bring_namestype: TStringField;
    Label7: TLabel;
    Edit6: TEdit;
    all_totalsSUM: TIBBCDField;
    all_totalsSUM1: TIBBCDField;
    all_totalsSUM2: TIBBCDField;
    all_totalsSUM3: TIBBCDField;
    bring_namesNAME: TIBStringField;
    IBTable1PROVIDER_NAME: TIBStringField;
    IBTable1TOTAL_BILL: TIBBCDField;
    IBTable1PAID: TIBBCDField;
    IBTable1REMAINING: TIBBCDField;
    IBTable1NUM_IN_HISTORY_STORGE: TIntegerField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1DOLLAR: TIBBCDField;
    IBTable1CHANGE: TIBBCDField;
    IBTable1REMAINING_DOLLAR: TIBBCDField;
    IBTable1TOTAL_DOLLAR: TIBBCDField;
    IBUpdateSQL1: TIBUpdateSQL;
    edit_in_debts_namesNAME: TIBStringField;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bring_namesCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form31: TForm31;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm31.DBGrid1CellClick(Column: TColumn);
begin
if bring_names.RecordCount<> 0 then
begin
if dbgrid1.Fields[3].AsString='»«·œÌ‰«—' then
begin
edit1.Text:=DBGrid1.Fields[0].Asstring;
edit2.Text:=DBGrid1.Fields[1].Asstring;
button1.Enabled:=true;
edit3.ReadOnly:=false;
edit5.ReadOnly:=true;
edit4.Text:='';
edit5.Text:='';
edit6.Text:='0';
edit6.ReadOnly:=true;
end
else
begin
edit1.Text:=DBGrid1.Fields[0].Asstring;
edit4.Text:=DBGrid1.Fields[2].Asstring;
button1.Enabled:=true;
edit3.ReadOnly:=true;
edit5.ReadOnly:=false;
edit2.Text:='';
edit3.Text:='';
edit6.Text:='';
edit6.ReadOnly:=false;
end;
end
else
button1.Enabled:=false;
end;

procedure TForm31.bring_namesCalcFields(DataSet: TDataSet);
begin
ibquery1.Close;
ibquery1.Prepare;
ibquery1.Params[0].Value:=bring_names['name'];
ibquery1.Open;
all_totals.Close;
all_totals.Prepare;
all_totals.Params[0].Value:=bring_names['name'];
all_totals.Open;
if ibquery1['pay_type']='»«·œÌ‰«—'then
begin
bring_names['debt_value']:=all_totals['sum']-all_totals['sum1'];
bring_names['debt_value_dollar']:=0;
bring_names['type']:=ibquery1['pay_type'];
end
else
begin
bring_names['debt_value']:=0;
bring_names['debt_value_dollar']:=all_totals['sum2']-all_totals['sum3'];
bring_names['type']:=ibquery1['pay_type'];
end;

//debt_value_for_everyone.Close;
//debt_value_for_everyone.Prepare;
//debt_value_for_everyone.Params[0].Value:=;
//debt_value_for_everyone.Open;


//bring_names['debt_value']:=debt_value_for_everyone['sum'];
//bring_names['debt_value_dollar']:=debt_value_for_everyone['sum1'];
end;

procedure TForm31.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
bring_names.Close;
bring_names.Prepare;
bring_names.Open;
if bring_names.RecordCount<> 0 then
button1.Enabled:=false;
end;

procedure TForm31.Button2Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
form31.Close;
form1.show;
end;

procedure TForm31.Button1Click(Sender: TObject);
var
paid:real;
tempo:integer;
begin

if ((edit1.Text<>'') and (edit2.Text<>'') and (edit3.Text<>''))or( (edit4.Text<>'') and (edit5.Text<>'')and (edit1.Text<>'')and (edit6.Text<>'')) then
begin
if dbgrid1.Fields[3].AsString='»«·œÌ‰«—'then
begin
if (strtofloat(edit3.Text)>strtofloat(edit2.Text))then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ «·ﬁÌ„… «·„œ›Ê⁄Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
IBTable1['paid']:=edit3.Text;
IBTable1['provider_name']:=edit1.Text;
IBTable1['total_bill']:=0;
IBTable1['remaining']:=0;
IBTable1['num_in_history_storge']:=0;
IBTable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBTable1['dollar']:=0;
IBTable1['change']:=0;
IBTable1['remaining_dollar']:=0;
IBTable1['total_dollar']:=0;
if strtofloat(edit3.Text)=strtofloat(edit2.Text)then
begin
edit_in_debts_names.Close;
edit_in_debts_names.Prepare;
edit_in_debts_names.Params[0].Value:=edit1.Text;
edit_in_debts_names.Open;
edit_in_debts_names.Delete;
end;
end
else
begin
if (strtofloat(edit5.Text)>strtofloat(edit4.Text))then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ «·ﬁÌ„… «·„œ›Ê⁄Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
IBTable1.Insert;
IBTable1['paid']:=0;
IBTable1['provider_name']:=edit1.Text;
IBTable1['total_bill']:=0;
IBTable1['remaining']:=0;
IBTable1['num_in_history_storge']:=0;
IBTable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
IBTable1['dollar']:=edit5.Text;
IBTable1['change']:=edit6.Text;
IBTable1['remaining_dollar']:=0;
IBTable1['total_dollar']:=0;
if strtofloat(edit5.Text)=strtofloat(edit4.Text)then
begin
edit_in_debts_names.Close;
edit_in_debts_names.Prepare;
edit_in_debts_names.Params[0].Value:=edit1.Text;
edit_in_debts_names.Open;
edit_in_debts_names.Delete;
end;
end;
IBTable1.Post;
form1.IBTransaction1.Commit;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
bring_names.Close;
bring_names.Prepare;
bring_names.Open;
if bring_names.RecordCount<> 0 then
button1.Enabled:=false;
end
else
application.MessageBox('«·—Ã«¡ ≈œŒ«· ﬂ· «·»Ì«‰«  «·„ÿ·Ê»Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
{tempo:=1;

end
else
begin
tempo:=2;
paid:=strtofloat(edit5.Text);
if (edit5.Text='') or (strtofloat(edit5.Text)>strtofloat(edit4.Text))then
begin

edit5.SetFocus;
exit;
end;
end;
edit_in_debts.Close;
edit_in_debts.Prepare;
edit_in_debts.Params[0].Value:=edit1.Text;
edit_in_debts.Open;
while (paid<>0)and (tempo=1)  do
begin //3
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['change']:=edit6.Text;
ibtable1['paid_dollar']:=0;
ibtable1['input_date']:=;
if edit_in_debts['debt_value']= paid then
begin //1
ibtable1['paid']:=paid;

ibtable1['num_in_provider_data']:=edit_in_debts['num_in_history_storge'];
paid:=0;
edit_in_debts.Delete;
end //1
else
begin//2
if edit_in_debts['debt_value']>paid then
begin//5
ibtable1['paid']:=paid;

ibtable1['num_in_provider_data']:=edit_in_debts['num_in_history_storge'];
edit_in_debts.Edit;
edit_in_debts['debt_value']:=edit_in_debts['debt_value']- paid;
edit_in_debts.Post;
paid:=0;
end//5
else
begin //6
if edit_in_debts['debt_value']< paid then
begin//7
ibtable1['paid']:=edit_in_debts['debt_value'];

ibtable1['num_in_provider_data']:=edit_in_debts['num_in_history_storge'];
paid:=paid-edit_in_debts['debt_value'];
edit_in_debts.Delete;
end;//7
end; //6
end;//2
max_num.Close;
max_num.Prepare;
max_num.Open;
if max_num['max']=null then
ibtable1['num']:=1
else
ibtable1['num']:=max_num['max']+1;
ibtable1.Post;
end;//3

/////////////////////////////
while (paid<>0)and (tempo=2)  do
begin //3
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['paid']:=0;
ibtable1['change']:=edit6.Text;
ibtable1['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
if edit_in_debts['debt_dollar']= paid then
begin //1
ibtable1['paid_dollar']:=paid;
ibtable1['num_in_provider_data']:=edit_in_debts['num_in_history_storge'];
paid:=0;
edit_in_debts.Delete;
end //1
else
begin//2
if edit_in_debts['debt_dollar']>paid then
begin//5
ibtable1['paid_dollar']:=paid;
ibtable1['num_in_provider_data']:=edit_in_debts['num_in_history_storge'];
edit_in_debts.Edit;
edit_in_debts['debt_dollar']:=edit_in_debts['debt_dollar']- paid;
edit_in_debts.Post;
paid:=0;
end//5
else
begin //6
if edit_in_debts['debt_dollar']< paid then
begin//7
ibtable1['paid_dollar']:=edit_in_debts['debt_dollar'];
ibtable1['num_in_provider_data']:=edit_in_debts['num_in_history_storge'];
paid:=paid-edit_in_debts['debt_dollar'];
edit_in_debts.Delete;
end;//7
end; //6
end;//2
max_num.Close;
max_num.Prepare;
max_num.Open;
if max_num['max']=null then
ibtable1['num']:=1
else
ibtable1['num']:=max_num['max']+1;
ibtable1.Post;
end;//3

/////////////////////////////

end; }

end;

end.
