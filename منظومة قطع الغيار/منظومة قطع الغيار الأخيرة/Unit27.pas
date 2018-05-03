unit Unit27;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons;

type
  TForm27 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Query_kinds: TQuery;
    Query_types: TQuery;
    Query_quantity_from_storge: TQuery;
    Query_save_and_view: TQuery;
    Query_kindsKIND_NO: TIntegerField;
    Query_kindsKINDS_NAME: TStringField;
    Query_kindsKINDS_NOSTS: TStringField;
    Query_typesTYPE_NO: TIntegerField;
    Query_typesTYPE_NAME: TStringField;
    Query_typesTYPE_NOTES: TStringField;
    Query_typesTYPE_KIND: TStringField;
    Query_quantity_from_storgeSUM: TIntegerField;
    Query_save_and_viewKIND: TStringField;
    Query_save_and_viewTYPE_NAME: TStringField;
    Query_save_and_viewQUANTITY: TIntegerField;
    Query_save_and_viewSERIAL: TIntegerField;
    Query_serial: TQuery;
    DataSource5: TDataSource;
    Query_serialMAX: TIntegerField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form27: TForm27;

implementation

uses Unit1, Unit28;

{$R *.dfm}

procedure TForm27.FormShow(Sender: TObject);
begin
Query_kinds.Close;
Query_kinds.Open;
end;

procedure TForm27.DBGrid1CellClick(Column: TColumn);
begin
Query_save_and_view.RequestLive:=true;
Query_save_and_view.Close;
Query_save_and_view.Open;
while(not(Query_save_and_view.Eof))do
begin
Query_save_and_view.Delete;
end;
Query_types.Close;
Query_types.Prepare;
Query_types.Params[0].Value:=DBGrid1.Fields[0].Asstring;
Query_types.Open;
while(not(Query_types.Eof))do
begin
Query_quantity_from_storge.Close;
Query_quantity_from_storge.Params[0].Value:=Query_types['type_kind'];
Query_quantity_from_storge.Params[1].Value:=Query_types['type_name'];
Query_quantity_from_storge.Open;
if(Query_quantity_from_storge['sum']=null) or (Query_quantity_from_storge['sum']=1)or(Query_quantity_from_storge['sum']=2)then
begin
Query_save_and_view.Close;
Query_save_and_view.Open;
Query_save_and_view.Append;
Query_save_and_view['kind']:=Query_types['type_kind'];
Query_save_and_view['type_name']:=Query_types['type_name'];
if(Query_quantity_from_storge['sum']=null)then
begin
Query_save_and_view['quantity']:=0;
end
else
begin
Query_save_and_view['quantity']:=Query_quantity_from_storge['sum'];
end;
Query_serial.Close;
Query_serial.Open;
if(Query_serial['max']=null)then
begin
Query_save_and_view['serial']:=1;
end
else
begin
Query_save_and_view['serial']:=Query_serial['max']+1;
end;
Query_save_and_view.Post;
end;
Query_types.Next;
end;
Query_save_and_view.RequestLive:=false;
Query_save_and_view.Close;
Query_save_and_view.Open;
end;

procedure TForm27.BitBtn2Click(Sender: TObject);
begin
form27.hide;
form1.Show;
end;

procedure TForm27.BitBtn1Click(Sender: TObject);
begin
form28.QuickRep1.Preview;
end;

end.
