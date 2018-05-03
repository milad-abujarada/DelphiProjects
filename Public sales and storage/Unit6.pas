unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, IBTable, IBUpdateSQL, ComCtrls;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button3: TButton;
    DataSource1: TDataSource;
    bring_names: TIBQuery;
    bring_namesdebt_value: TFloatField;
    sum_paied_in_collecting: TIBQuery;
    sum_paied_in_collectingSUM: TIBBCDField;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    all_bills_value_for_everyone: TIBQuery;
    all_bills_value_for_everyoneSUM: TIBBCDField;
    sum_paied_in_bills: TIBQuery;
    sum_paied_in_billsSUM: TIBBCDField;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    max_num: TIBQuery;
    max_numMAX: TIntegerField;
    IBTable2: TIBTable;
    IBTable2NAME: TIBStringField;
    IBTable2AMOUNT: TIBBCDField;
    IBTable2INPUT_DATE: TDateField;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    delete_from_debts_names: TIBQuery;
    delete_from_debts_namesNAME: TIBStringField;
    IBUpdateSQL1: TIBUpdateSQL;
    bring_namesNAME: TIBStringField;
    IBTable1: TIBTable;
    DataSource8: TDataSource;
    IBTable1NAME: TIBStringField;
    Edit4: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bring_namesCalcFields(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm6.Button2Click(Sender: TObject);
begin
form6.Close;
form1.show;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
bring_names.Close;
bring_names.Prepare;
bring_names.Open;
if bring_names.RecordCount= 0 then
button1.Enabled:=false;
datetimepicker1.Date:=now;
end;

procedure TForm6.bring_namesCalcFields(DataSet: TDataSet);
var
collecting:real;
begin
all_bills_value_for_everyone.Close;
all_bills_value_for_everyone.Prepare;
all_bills_value_for_everyone.Params[0].Value:=bring_names['name'];
all_bills_value_for_everyone.Open;

sum_paied_in_collecting.Close;
sum_paied_in_collecting.Prepare;
sum_paied_in_collecting.Params[0].Value:=bring_names['name'];
sum_paied_in_collecting.Open;
if sum_paied_in_collecting['sum']=null then
collecting:=0
else
collecting:=sum_paied_in_collecting['sum'];

sum_paied_in_bills.Close;
sum_paied_in_bills.Prepare;
sum_paied_in_bills.Params[0].Value:=bring_names['name'];
sum_paied_in_bills.Open;
bring_names['debt_value']:=all_bills_value_for_everyone['sum']-(sum_paied_in_bills['sum']+collecting);
if bring_names['debt_value']=0 then
begin
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
edit4.Text:=bring_names['name'];
ibtable1.Filter:='name='+quotedstr(edit4.Text);
datasource8.DataSet.Filtered:=true;
ibtable1.Open;
ibtable1.Delete;
form1.IBTransaction1.Commit;
form1.IBTransaction1.Active:=false;
bring_names.close;
bring_names.Prepare;
bring_names.Open;
end;
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
if bring_names.RecordCount<> 0 then
begin
edit1.Text:=DBGrid1.Fields[0].Asstring;
edit2.Text:=DBGrid1.Fields[1].Asstring;
button1.Enabled:=true;
end
else
button1.Enabled:=false;
end;

procedure TForm6.Button1Click(Sender: TObject);

begin //4
if (edit1.Text<>'') and (edit2.Text<>'') and (edit3.Text<>'') then
begin
{paid:=strtofloat(edit3.Text);
edit_in_debts.Close;
edit_in_debts.Prepare;
edit_in_debts.Params[0].Value:=edit1.Text;
edit_in_debts.Open;
while paid<>0 do
begin //3

ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
if edit_in_debts['debt_value']= paid then
begin //1
ibtable1['paid_value']:=paid;
ibtable1['sale_num']:=edit_in_debts['sale_num'];
paid:=0;
edit_in_debts.Delete;
end //1
else
begin//2
if edit_in_debts['debt_value']>paid then
begin//5
ibtable1['paid_value']:=paid;
ibtable1['sale_num']:=edit_in_debts['sale_num'];
edit_in_debts.Edit;
edit_in_debts['debt_value']:=edit_in_debts['debt_value']- paid;
edit_in_debts.Post;
paid:=0;
end//5
else
begin //6
if edit_in_debts['debt_value']< paid then
begin//7
ibtable1['paid_value']:=edit_in_debts['debt_value'];
ibtable1['sale_num']:=edit_in_debts['sale_num'];
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
end;//3}
ibtable2.Active:=true;
ibtable2.Insert;
ibtable2['amount']:=edit3.Text;
ibtable2['name']:=edit1.Text;
ibtable2['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
ibtable2.Post;
if (strtofloat(edit2.Text) = strtofloat(edit3.Text))then
begin
delete_from_debts_names.Close;
delete_from_debts_names.Prepare;
delete_from_debts_names.Params[0].Value:=edit1.Text;
delete_from_debts_names.Open;
delete_from_debts_names.Delete;

end;
form1.IBTransaction1.Commit;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
bring_names.Close;
bring_names.Prepare;
bring_names.Open;
if bring_names.RecordCount<> 0 then
button1.Enabled:=false;
end;

end;//4

procedure TForm6.Button3Click(Sender: TObject);
begin
form61.QuickRep1.Preview;
end;

end.
