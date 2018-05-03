unit Unit78;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, IBCustomDataSet, IBUpdateSQL,
  IBQuery;

type
  TForm78 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    moved_storge: TIBQuery;
    provider: TIBQuery;
    storge: TIBQuery;
    storge_history: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    IBUpdateSQL2: TIBUpdateSQL;
    IBUpdateSQL3: TIBUpdateSQL;
    IBUpdateSQL4: TIBUpdateSQL;
    moved_storgeNAME: TIBStringField;
    moved_storgeKIND: TIBStringField;
    moved_storgeNUM: TIntegerField;
    moved_storgeINPUT_DATE: TDateField;
    moved_storgeMOVED_DATE: TDateField;
    moved_storgeBUY_PRICE: TIBBCDField;
    moved_storgeQUANTITY: TIntegerField;
    moved_storgeNUM_IN_STORGE_HISTORY: TIntegerField;
    moved_storgePLACE: TIBStringField;
    moved_storgeMOVED_NUM: TIntegerField;
    providerPROVIDER_NAME: TIBStringField;
    providerTOTAL_BILL: TIBBCDField;
    providerPAID: TIBBCDField;
    providerREMAINING: TIBBCDField;
    providerNUM_IN_HISTORY_STORGE: TIntegerField;
    providerINPUT_DATE: TDateField;
    providerDOLLAR: TIBBCDField;
    providerCHANGE: TIBBCDField;
    providerREMAINING_DOLLAR: TIBBCDField;
    providerTOTAL_DOLLAR: TIBBCDField;
    storge_historyNAME: TIBStringField;
    storge_historyKIND: TIBStringField;
    storge_historyNUM: TIntegerField;
    storge_historyINPUT_DATE: TDateField;
    storge_historyBUY_PRICE: TIBBCDField;
    storge_historyQUANTITY: TIntegerField;
    storge_historyCHANGE_PRICE: TIBBCDField;
    storge_historyTOTAL_DOLLAR_PRICE: TIBBCDField;
    storge_historyDOLLAR_PRICE: TIBBCDField;
    temp_storge: TIBQuery;
    IBUpdateSQL5: TIBUpdateSQL;
    temp_storgeNAME: TIBStringField;
    temp_storgeKIND: TIBStringField;
    temp_storgeNUM: TIntegerField;
    temp_storgeINPUT_DATE: TDateField;
    temp_storgeBUY_PRICE: TIBBCDField;
    temp_storgeQUANTITY: TIntegerField;
    temp_storgeNUM_IN_HISTORY_STORGE: TIntegerField;
    temp_storgeSOLD: TIntegerField;
    temp_storgeDOLLAR_PRICE: TIBBCDField;
    temp_storgeTOTAL_DOLLAR_PRICE: TIBBCDField;
    temp_storgeCHANGE_PRICE: TIBBCDField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    num:integer;
  end;

var
  Form78: TForm78;

implementation

uses Unit73,unit1;

{$R *.dfm}

procedure TForm78.Button2Click(Sender: TObject);
begin
form78.Close;
form73.show;
end;

procedure TForm78.Button1Click(Sender: TObject);
begin
moved_storge.Close;
moved_storge.Prepare;
moved_storge.Params[0].Value:=num;
moved_storge.Open;
while not(moved_storge.Eof)do
begin
moved_storge.Edit;
moved_storge['input_date']:=datetimepicker1.Date;
moved_storge.Post;
moved_storge.Next;
end;

provider.Close;
provider.Prepare;
provider.Params[0].Value:=num;
provider.Open;
while not(provider.Eof)do
begin
provider.Edit;
provider['input_date']:=datetimepicker1.Date;
provider.Post;
provider.Next;
end;

storge.Close;
storge.Prepare;
storge.Params[0].Value:=num;
storge.Open;
while not(storge.Eof)do
begin
storge.Edit;
storge['input_date']:=datetimepicker1.Date;
storge.Post;
storge.Next;
end;

storge_history.Close;
storge_history.Prepare;
storge_history.Params[0].Value:=num;
storge_history.Open;
while not(storge_history.Eof)do
begin
storge_history.Edit;
storge_history['input_date']:=datetimepicker1.Date;
storge_history.Post;
storge_history.Next;
end;

temp_storge.Close;
temp_storge.Prepare;
temp_storge.Params[0].Value:=num;
temp_storge.Open;
while not(temp_storge.Eof)do
begin
temp_storge.Edit;
temp_storge['input_date']:=datetimepicker1.Date;
temp_storge.Post;
temp_storge.Next;
end;

form1.IBTransaction1.Commit;
form78.Close;
form73.Show;
end;

end.
