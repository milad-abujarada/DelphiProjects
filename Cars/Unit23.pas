unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ComCtrls, StdCtrls, Buttons, DBCtrls, Grids,
  DBGrids, ExtCtrls;

type
  TForm23 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    DataSource1: TDataSource;
    Query_save_in_taken_table: TQuery;
    Query_save_in_taken_tableSERIAL: TIntegerField;
    Query_save_in_taken_tableAMOUNT: TFloatField;
    Query_save_in_taken_tableSTORED_DATE: TStringField;
    Query_save_in_taken_tableTAKER_NAME: TStringField;
    Query_max_serial: TQuery;
    DataSource2: TDataSource;
    Query_max_serialMAX: TIntegerField;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm23.BitBtn1Click(Sender: TObject);
begin
if (edit2.Text='') then
begin //*
application.MessageBox('«·—Ã«¡ «œŒ«· «·ﬁÌ„…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
Query_max_serial.Close;
Query_max_serial.Prepare;
Query_max_serial.Open;
Query_save_in_taken_table.Close;
Query_save_in_taken_table.Prepare;
Query_save_in_taken_table.Open;
Query_save_in_taken_table.Append;
if(Query_max_serial['max']=null)then
Query_save_in_taken_table['serial']:=1
else
Query_save_in_taken_table['serial']:=Query_max_serial['max']+1;
Query_save_in_taken_table['amount']:=strtofloat(edit2.Text);
Query_save_in_taken_table['taker_name']:=edit1.Text;
Query_save_in_taken_table['stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
Query_save_in_taken_table.Post;
edit1.Text:='';
edit2.Text:='';
Query_save_in_taken_table.Close;
Query_save_in_taken_table.Open;
if (Query_save_in_taken_table.RecordCount<>0)then
begin
DBNavigator1.Enabled:=true;
end
else
begin
DBNavigator1.Enabled:=false;
end;
end;

procedure TForm23.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=now;
edit1.Text:='';
edit2.Text:='';
Query_save_in_taken_table.Close;
Query_save_in_taken_table.Open;

end;

procedure TForm23.BitBtn2Click(Sender: TObject);
begin
form1.Show;
form23.Hide;
end;

end.
