unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, ExtCtrls, DBTables, Buttons;

type
  TForm7 = class(TForm)
    Query_bring_availble_for_every_kind: TQuery;
    Query_bring_kinds_tyes: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    DataSource3: TDataSource;
    Query_bring_and_save_from_total_storge: TQuery;
    BitBtn1: TBitBtn;
    Query_total_budget_in_storge: TQuery;
    DataSource4: TDataSource;
    Label2: TLabel;
    Query_bring_availble_for_every_kindSUM: TIntegerField;
    Query_bring_and_save_from_total_storgeSERIAL_NO: TIntegerField;
    Query_bring_and_save_from_total_storgeTYPE_NAME: TStringField;
    Query_bring_and_save_from_total_storgeKIND_NAME: TStringField;
    Query_bring_and_save_from_total_storgeTOTAL: TFloatField;
    Query_total_budget_in_storgeSUM: TFloatField;
    Query_bring_kinds_tyesTYPE_NO: TIntegerField;
    Query_bring_kinds_tyesTYPE_NAME: TStringField;
    Query_bring_kinds_tyesTYPE_NOTES: TStringField;
    Query_bring_kinds_tyesTYPE_KIND: TStringField;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    DataSource5: TDataSource;
    Query_serial_no_for_total_storge: TQuery;
    Query_serial_no_for_total_storgeMAX: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1, Unit17;

{$R *.dfm}

procedure TForm7.FormShow(Sender: TObject);
begin
Query_bring_and_save_from_total_storge.Close;
Query_bring_and_save_from_total_storge.Prepare;
Query_bring_and_save_from_total_storge.Open;
while(not(Query_bring_and_save_from_total_storge.Eof))do
begin
Query_bring_and_save_from_total_storge.Delete;
end;
Query_bring_kinds_tyes.Close;
Query_bring_kinds_tyes.Prepare;
Query_bring_kinds_tyes.Open;
while(not(Query_bring_kinds_tyes.Eof))do
begin
Query_bring_availble_for_every_kind.Close;
Query_bring_availble_for_every_kind.Prepare;
Query_bring_availble_for_every_kind.Params[0].Value:=Query_bring_kinds_tyes['type_kind'];
Query_bring_availble_for_every_kind.Params[1].Value:=Query_bring_kinds_tyes['type_name'];
Query_bring_availble_for_every_kind.open;
Query_serial_no_for_total_storge.Close;
Query_serial_no_for_total_storge.Prepare;
Query_serial_no_for_total_storge.Open;
Query_bring_and_save_from_total_storge.Close;
Query_bring_and_save_from_total_storge.Prepare;
Query_bring_and_save_from_total_storge.Open;
Query_bring_and_save_from_total_storge.Append;
if(Query_bring_availble_for_every_kind['sum']=null)then
begin
Query_bring_and_save_from_total_storge['total']:=0;
Query_bring_and_save_from_total_storge['type_name']:=Query_bring_kinds_tyes['type_name'];
Query_bring_and_save_from_total_storge['kind_name']:=Query_bring_kinds_tyes['type_kind'];
if(Query_serial_no_for_total_storge['max']=null)then
begin
Query_bring_and_save_from_total_storge['serial_no']:=1;
end
else
begin
Query_bring_and_save_from_total_storge['serial_no']:=Query_serial_no_for_total_storge['max']+1;
end;
Query_bring_and_save_from_total_storge.Post;
Query_bring_kinds_tyes.Next;
end
else
begin
Query_bring_and_save_from_total_storge['total']:=Query_bring_availble_for_every_kind['sum'];
Query_bring_and_save_from_total_storge['type_name']:=Query_bring_kinds_tyes['type_name'];
Query_bring_and_save_from_total_storge['kind_name']:=Query_bring_kinds_tyes['type_kind'];
if(Query_serial_no_for_total_storge['max']=null)then
begin
Query_bring_and_save_from_total_storge['serial_no']:=1;
end
else
begin
Query_bring_and_save_from_total_storge['serial_no']:=Query_serial_no_for_total_storge['max']+1;
end;
Query_bring_and_save_from_total_storge.Post;
Query_bring_kinds_tyes.Next;
end;
end;
Query_total_budget_in_storge.Close;
Query_total_budget_in_storge.Prepare;
Query_total_budget_in_storge.Open;
if(Query_total_budget_in_storge['sum']<>null)then
begin
edit1.Text:=Query_total_budget_in_storge['sum'];
end
else
begin
edit1.Text:=inttostr(0);
end;
Query_bring_and_save_from_total_storge.Close;
Query_bring_and_save_from_total_storge.Open;
end;

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
Query_bring_and_save_from_total_storge.Close;
Query_bring_and_save_from_total_storge.Prepare;
Query_bring_and_save_from_total_storge.Open;
while(not(Query_bring_and_save_from_total_storge.Eof))do
begin
Query_bring_and_save_from_total_storge.Delete;
end;
edit1.Text:='';
form7.Hide;
form1.Show;
end;

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
form7.Hide;
form17.Show;
end;

end.
