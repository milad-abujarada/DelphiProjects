unit Unit68;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, IBCustomDataSet, IBUpdateSQL, DB,
  IBQuery, Grids, DBGrids, IBTable;

type
  TForm68 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    bring_db_data: TIBQuery;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    DataSource2: TDataSource;
    places: TIBQuery;
    placesPLACE: TIBStringField;
    bring_db_dataNAME: TIBStringField;
    bring_db_dataKIND: TIBStringField;
    bring_db_dataNUM: TIntegerField;
    bring_db_dataINPUT_DATE: TDateField;
    bring_db_dataMOVED_DATE: TDateField;
    bring_db_dataBUY_PRICE: TIBBCDField;
    bring_db_dataQUANTITY: TIntegerField;
    bring_db_dataNUM_IN_STORGE_HISTORY: TIntegerField;
    bring_db_dataPLACE: TIBStringField;
    bring_db_dataMOVED_NUM: TIntegerField;
    Edit1: TEdit;
    Label3: TLabel;
    DataSource3: TDataSource;
    edit_in_moved_storge: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    edit_in_moved_storgeNAME: TIBStringField;
    edit_in_moved_storgeKIND: TIBStringField;
    edit_in_moved_storgeNUM: TIntegerField;
    edit_in_moved_storgeINPUT_DATE: TDateField;
    edit_in_moved_storgeMOVED_DATE: TDateField;
    edit_in_moved_storgeBUY_PRICE: TIBBCDField;
    edit_in_moved_storgeQUANTITY: TIntegerField;
    edit_in_moved_storgeNUM_IN_STORGE_HISTORY: TIntegerField;
    edit_in_moved_storgePLACE: TIBStringField;
    edit_in_moved_storgeMOVED_NUM: TIntegerField;
    edit_in_storge: TIBQuery;
    DataSource4: TDataSource;
    IBUpdateSQL2: TIBUpdateSQL;
    IBTable1: TIBTable;
    DataSource5: TDataSource;
    edit_in_storgeNAME: TIBStringField;
    edit_in_storgeKIND: TIBStringField;
    edit_in_storgeNUM: TIntegerField;
    edit_in_storgeINPUT_DATE: TDateField;
    edit_in_storgeBUY_PRICE: TIBBCDField;
    edit_in_storgeQUANTITY: TIntegerField;
    edit_in_storgeNUM_IN_HISTORY_STORGE: TIntegerField;
    edit_in_storgeSOLD: TIntegerField;
    edit_in_storgeDOLLAR_PRICE: TIBBCDField;
    edit_in_storgeTOTAL_DOLLAR_PRICE: TIBBCDField;
    edit_in_storgeCHANGE_PRICE: TIBBCDField;
    IBTable1NAME: TIBStringField;
    IBTable1KIND: TIBStringField;
    IBTable1NUM: TIntegerField;
    IBTable1INPUT_DATE: TDateField;
    IBTable1BUY_PRICE: TIBBCDField;
    IBTable1QUANTITY: TIntegerField;
    IBTable1NUM_IN_HISTORY_STORGE: TIntegerField;
    IBTable1SOLD: TIntegerField;
    IBTable1DOLLAR_PRICE: TIBBCDField;
    IBTable1TOTAL_DOLLAR_PRICE: TIBBCDField;
    IBTable1CHANGE_PRICE: TIBBCDField;
    DataSource6: TDataSource;
    dollar_data: TIBQuery;
    dollar_dataNAME: TIBStringField;
    dollar_dataKIND: TIBStringField;
    dollar_dataNUM: TIntegerField;
    dollar_dataINPUT_DATE: TDateField;
    dollar_dataBUY_PRICE: TIBBCDField;
    dollar_dataQUANTITY: TIntegerField;
    dollar_dataCHANGE_PRICE: TIBBCDField;
    dollar_dataTOTAL_DOLLAR_PRICE: TIBBCDField;
    dollar_dataDOLLAR_PRICE: TIBBCDField;
    num: TIBQuery;
    DataSource7: TDataSource;
    numMAX: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form68: TForm68;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm68.FormShow(Sender: TObject);
begin
places.Close;
places.Open;
combobox1.Clear;
while not(places.Eof)do
begin
combobox1.Items.Add(places['place']);
places.Next;
end;
datetimepicker1.Date:=now;
end;

procedure TForm68.Button3Click(Sender: TObject);
begin
bring_db_data.Close;
edit1.Text:='';
button2.Enabled:=false;
form68.Close;
form1.show;
end;

procedure TForm68.Button1Click(Sender: TObject);
begin
bring_db_data.Close;
bring_db_data.Prepare;
bring_db_data.Params[0].Value:=datetimepicker1.Date;
bring_db_data.Params[1].Value:=combobox1.Text;
bring_db_data.Open;
button2.Enabled:=false;
end;

procedure TForm68.DBGrid1CellClick(Column: TColumn);
begin
if bring_db_data.RecordCount=0 then
button2.Enabled:=false
else
button2.Enabled:=true;
end;

procedure TForm68.Button2Click(Sender: TObject);
begin
if edit1.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬂ„Ì… «·„—Ã⁄Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit
end;
if (strtoint(edit1.Text)>dbgrid1.Fields[3].AsInteger) then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ «·ﬂ„Ì… «·„—Ã⁄Â ·√‰Â« √ﬂ»— „‰ «·„ÕÊ·Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit
end;
edit_in_moved_storge.Close;
edit_in_moved_storge.Prepare;
edit_in_moved_storge.Params[0].Value:=dbgrid1.Fields[7].AsDateTime;
edit_in_moved_storge.Params[1].Value:=dbgrid1.Fields[2].AsString;
edit_in_moved_storge.Params[2].Value:=dbgrid1.Fields[0].AsString;
edit_in_moved_storge.Params[3].Value:=dbgrid1.Fields[1].AsString;
edit_in_moved_storge.Params[4].Value:=dbgrid1.Fields[3].AsInteger;
edit_in_moved_storge.Params[5].Value:=dbgrid1.Fields[4].AsFloat;
edit_in_moved_storge.Open;
if edit_in_moved_storge['quantity']=strtoint(edit1.Text)then
edit_in_moved_storge.Delete
else
begin
edit_in_moved_storge.Edit;
edit_in_moved_storge['quantity']:=edit_in_moved_storge['quantity']-strtoint(edit1.Text);
edit_in_moved_storge.Post;
end;
edit_in_storge.Close;
edit_in_storge.Prepare;
edit_in_storge.Params[0].Value:=dbgrid1.Fields[0].AsString;
edit_in_storge.Params[1].Value:=dbgrid1.Fields[1].AsString;
edit_in_storge.Params[2].Value:=dbgrid1.Fields[4].AsFloat;
edit_in_storge.Params[3].Value:=dbgrid1.Fields[6].AsInteger;
edit_in_storge.Params[4].Value:=dbgrid1.Fields[5].AsDateTime;
edit_in_storge.Open;
if edit_in_storge.RecordCount<>0 then
begin
edit_in_storge.Edit;
edit_in_storge['quantity']:=edit_in_storge['quantity']+strtoint(edit1.Text);
edit_in_storge.Post;
end
else
begin
dollar_data.Close;
dollar_data.Prepare;
dollar_data.Params[0].Value:=dbgrid1.Fields[0].AsString;
dollar_data.Params[1].Value:=dbgrid1.Fields[1].AsString;
dollar_data.Params[2].Value:=dbgrid1.Fields[6].AsInteger;
dollar_data.Params[3].Value:=dbgrid1.Fields[4].AsFloat;
dollar_data.Params[4].Value:=dbgrid1.Fields[5].AsDateTime;
dollar_data.Open;
ibtable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
ibtable1['kind']:=dbgrid1.Fields[0].AsString;
ibtable1['name']:=dbgrid1.Fields[1].AsString;
ibtable1['input_date']:=dbgrid1.Fields[5].AsDateTime;
ibtable1['buy_price']:=dbgrid1.Fields[4].AsFloat;
ibtable1['quantity']:=edit1.Text;
ibtable1['num_in_history_storge']:=dbgrid1.Fields[6].AsInteger;
ibtable1['sold']:=dollar_data['quantity'];
ibtable1['dollar_price']:=dollar_data['dollar_price'];
ibtable1['total_dollar_price']:=dollar_data['total_dollar_price'];
ibtable1['change_price']:=dollar_data['change_price'];
num.Close;
num.Open;
if num['max']=null then
ibtable1['num']:=1
else
ibtable1['num']:=num['max']+1;
ibtable1.Post;
end;
form1.IBTransaction1.Commit;
bring_db_data.Close;
button2.Enabled:=false;
edit1.Text:='';

end;

end.
