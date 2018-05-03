unit Unit79;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IBCustomDataSet, IBUpdateSQL, DB, IBQuery, ExtCtrls;

type
  TForm79 = class(TForm)
    Panel1: TPanel;
    IBUpdateSQL3: TIBUpdateSQL;
    storge: TIBQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    storge_history: TIBQuery;
    storge_historyNAME: TIBStringField;
    storge_historyKIND: TIBStringField;
    storge_historyNUM: TIntegerField;
    storge_historyINPUT_DATE: TDateField;
    storge_historyBUY_PRICE: TIBBCDField;
    storge_historyQUANTITY: TIntegerField;
    storge_historyCHANGE_PRICE: TIBBCDField;
    storge_historyTOTAL_DOLLAR_PRICE: TIBBCDField;
    storge_historyDOLLAR_PRICE: TIBBCDField;
    IBUpdateSQL4: TIBUpdateSQL;
    DataSource5: TDataSource;
    temp_storge: TIBQuery;
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
    IBUpdateSQL5: TIBUpdateSQL;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    storgeNAME: TIBStringField;
    storgeKIND: TIBStringField;
    storgeNUM: TIntegerField;
    storgeINPUT_DATE: TDateField;
    storgeBUY_PRICE: TIBBCDField;
    storgeQUANTITY: TIntegerField;
    storgeNUM_IN_HISTORY_STORGE: TIntegerField;
    storgeSOLD: TIntegerField;
    storgeDOLLAR_PRICE: TIBBCDField;
    storgeTOTAL_DOLLAR_PRICE: TIBBCDField;
    storgeCHANGE_PRICE: TIBBCDField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      num:integer;
  end;

var
  Form79: TForm79;

implementation

uses Unit73,unit1, Unit78;

{$R *.dfm}

procedure TForm79.Button2Click(Sender: TObject);
begin
form79.Close;
form73.show;
end;

procedure TForm79.Button1Click(Sender: TObject);
begin



storge.Close;
storge.Prepare;
storge.Params[0].Value:=num;
storge.Params[1].Value:=edit1.Text;
storge.Params[2].Value:=edit2.Text;
storge.Open;
while not(storge.Eof)do
begin
storge.Edit;
storge['dollar_price']:=edit3.Text;
storge['change_price']:=edit4.Text;
storge.Post;
storge.Next;
end;

storge_history.Close;
storge_history.Prepare;
storge_history.Params[0].Value:=num;
storge_history.Params[1].Value:=edit1.Text;
storge_history.Params[2].Value:=edit2.Text;
storge_history.Open;
while not(storge_history.Eof)do
begin
storge_history.Edit;
storge_history['dollar_price']:=edit3.Text;
storge_history['change_price']:=edit4.Text;
storge_history.Post;
storge_history.Next;
end;

temp_storge.Close;
temp_storge.Prepare;
temp_storge.Params[0].Value:=num;
temp_storge.Params[1].Value:=edit1.Text;
temp_storge.Params[2].Value:=edit2.Text;
temp_storge.Open;
while not(temp_storge.Eof)do
begin
temp_storge.Edit;
temp_storge['dollar_price']:=edit3.Text;
temp_storge['change_price']:=edit4.Text;
temp_storge.Post;
temp_storge.Next;
end;

form1.IBTransaction1.Commit;
form78.Close;
form73.Show;

end;

end.
