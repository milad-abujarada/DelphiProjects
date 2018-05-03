unit Unit37;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, DB,
  IBCustomDataSet, IBQuery, IBTable, IBUpdateSQL;

type
  TForm37 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox3: TComboBox;
    Button3: TButton;
    IBQuery2: TIBQuery;
    IBQuery2KIND: TIBStringField;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    total_quantity: TIBQuery;
    DataSource3: TDataSource;
    total_quantitySUM: TLargeintField;
    IBTable1: TIBTable;
    DataSource4: TDataSource;
    IBTable1NAME: TIBStringField;
    IBTable1KIND: TIBStringField;
    IBTable1QUANTITY: TIntegerField;
    IBTable1NUM: TIntegerField;
    Edit2: TEdit;
    IBQuery3: TIBQuery;
    DataSource5: TDataSource;
    IBQuery3MAX: TIntegerField;
    total_moved_quantity: TIBQuery;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    IBTable2: TIBTable;
    IBTable2NAME: TIBStringField;
    IBTable2KIND: TIBStringField;
    IBTable2NUM: TIntegerField;
    IBTable2INPUT_DATE: TDateField;
    IBTable2MOVED_DATE: TDateField;
    IBTable2BUY_PRICE: TIBBCDField;
    IBTable2QUANTITY: TIntegerField;
    IBTable2NUM_IN_STORGE_HISTORY: TIntegerField;
    IBTable2PLACE: TIBStringField;
    DataSource8: TDataSource;
    view_in_dbgrid: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    view_in_dbgridNAME: TIBStringField;
    view_in_dbgridKIND: TIBStringField;
    view_in_dbgridQUANTITY: TIntegerField;
    view_in_dbgridNUM: TIntegerField;
    discount_from_storge: TIBQuery;
    IBUpdateSQL2: TIBUpdateSQL;
    DataSource9: TDataSource;
    discount_from_storgeNAME: TIBStringField;
    discount_from_storgeKIND: TIBStringField;
    discount_from_storgeNUM: TIntegerField;
    discount_from_storgeINPUT_DATE: TDateField;
    discount_from_storgeBUY_PRICE: TIBBCDField;
    discount_from_storgeQUANTITY: TIntegerField;
    discount_from_storgeNUM_IN_HISTORY_STORGE: TIntegerField;
    discount_from_storgeSOLD: TIntegerField;
    save_in_moved: TIBTable;
    DataSource10: TDataSource;
    save_in_movedNAME: TIBStringField;
    save_in_movedKIND: TIBStringField;
    save_in_movedNUM: TIntegerField;
    save_in_movedINPUT_DATE: TDateField;
    save_in_movedMOVED_DATE: TDateField;
    save_in_movedBUY_PRICE: TIBBCDField;
    save_in_movedQUANTITY: TIntegerField;
    save_in_movedNUM_IN_STORGE_HISTORY: TIntegerField;
    save_in_movedPLACE: TIBStringField;
    DataSource11: TDataSource;
    num_moved: TIBQuery;
    num_movedMAX: TIntegerField;
    DataSource12: TDataSource;
    places: TIBQuery;
    placesPLACE: TIBStringField;
    save_in_movedMOVED_NUM: TIntegerField;
    moved_num: TIBQuery;
    DataSource13: TDataSource;
    moved_numMAX: TIntegerField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form37: TForm37;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm37.Button2Click(Sender: TObject);
begin
ibtable1.Active:=false;
form1.IBTransaction1.Active:=false;
form37.Close;
form1.show;
end;

procedure TForm37.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=now;
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Open;
combobox1.Clear;
while(not(IBQuery2.Eof)) do
begin
combobox1.Items.Add(IBQuery2['kind']);
IBQuery2.Next;
end;
places.Close;
places.Prepare;
places.Open;
combobox3.Clear;
while(not(places.Eof)) do
begin
combobox3.Items.Add(places['place']);
places.Next;
end;
IBTable1.Active:=true;
form1.IBTransaction1.Active:=true;
ibtable1.Insert;
DateTimePicker1.date:=now;
end;

procedure TForm37.ComboBox1Change(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Params[0].Value:=combobox1.Text;
IBQuery1.Open;
combobox2.Clear;
while(not(IBQuery1.Eof)) do
begin
combobox2.Items.Add(IBQuery1['name']);
IBQuery1.Next;
end;
end;

procedure TForm37.ComboBox2Change(Sender: TObject);
var
a,b:integer;
begin
total_quantity.Close;
total_quantity.Prepare;
total_quantity.Params[0].Value:=combobox1.Text;
total_quantity.Params[1].Value:=combobox2.Text;
total_quantity.Open;
if total_quantity['sum']=null then
begin
a:=0;

end
else
begin
a:=total_quantity['sum'];

end;
total_moved_quantity.Close;
total_moved_quantity.Prepare;
total_moved_quantity.Params[0].Value:=combobox1.Text;
total_moved_quantity.Params[1].Value:=combobox2.Text;
total_moved_quantity.Open;
if total_moved_quantity['sum']=null then
begin
b:=0;

end
else
begin
b:=total_moved_quantity['sum'];

end;
edit1.Text:=inttostr(a-b);
if strtoint(edit1.Text)=0 then
button1.Enabled:=false
else
button1.Enabled:=true;
end;

procedure TForm37.Button1Click(Sender: TObject);
begin
if (combobox1.Text='') or (combobox2.Text='') then
begin
application.MessageBox('«·—Ã«¡  ÕœÌœ «·»÷«⁄… «·„ÕÊ·Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if edit2.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬂ„Ì… «·„ÕÊ·Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
exit;
end;
if strtoint(edit2.Text)> strtoint(edit1.Text) then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ «·ﬂ„Ì… «·„ÕÊ·Â ·√‰Â √ﬂ»— „‰ «·„ Ê›—Â',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
exit;
end;
ibtable2.Active:=false;
ibtable1['kind']:=combobox1.Text;
ibtable1['name']:=combobox2.Text;
ibtable1['quantity']:=edit2.Text;
ibquery3.Close;
ibquery3.Prepare;
ibquery3.Open;
if ibquery3['max']=null then
ibtable1['num']:=1
else
ibtable1['num']:=ibquery3['max']+1;
ibtable1.Post;
ibtable1.Active:=true;
ibtable1.Insert;
ibtable2.Active:=true;
ibtable2.Insert;
view_in_dbgrid.Close;
view_in_dbgrid.Prepare;
view_in_dbgrid.Open;
combobox1.Text:='';
combobox2.Text:='';
edit1.Text:='';
edit2.Text:='';
button3.Enabled:=true;

end;

procedure TForm37.Button3Click(Sender: TObject);
var
quan:integer;
begin
if combobox3.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· „ﬂ«‰ «· ÕÊÌ·',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox3.SetFocus;
exit;
end;
moved_num.Close;
moved_num.Prepare;
moved_num.Open;

view_in_dbgrid.First;
while not(view_in_dbgrid.Eof) do
begin
quan:=view_in_dbgrid['quantity'];
while(quan<>0)do
begin
discount_from_storge.Close;
discount_from_storge.Prepare;
discount_from_storge.Params[0].Value:=view_in_dbgrid['kind'];
discount_from_storge.Params[1].Value:=view_in_dbgrid['name'];
discount_from_storge.Open;
if quan=discount_from_storge['quantity']then
begin
save_in_moved.Active:=true;
save_in_moved.Insert;
save_in_moved['name']:=discount_from_storge['name'];
save_in_moved['kind']:=discount_from_storge['kind'];
save_in_moved['input_date']:=discount_from_storge['input_date'];
save_in_moved['moved_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
save_in_moved['buy_price']:=discount_from_storge['buy_price'];
save_in_moved['quantity']:=discount_from_storge['quantity'];
save_in_moved['num_in_storge_history']:=discount_from_storge['num_in_history_storge'];
save_in_moved['place']:=combobox3.Text;
num_moved.Close;
num_moved.Prepare;
num_moved.Open;
if num_moved['max']=null then
save_in_moved['num']:=1
else
save_in_moved['num']:=num_moved['max']+1;
if moved_num['max']=null then
save_in_moved['moved_num']:=1
else
save_in_moved['moved_num']:=moved_num['max']+1;
save_in_moved.Post;
discount_from_storge.Delete;
quan:=0;
end
else
begin
if quan<discount_from_storge['quantity']then
begin
save_in_moved.Active:=true;
save_in_moved.Insert;
save_in_moved['name']:=discount_from_storge['name'];
save_in_moved['kind']:=discount_from_storge['kind'];
save_in_moved['input_date']:=discount_from_storge['input_date'];
save_in_moved['moved_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
save_in_moved['buy_price']:=discount_from_storge['buy_price'];
save_in_moved['quantity']:=quan;
save_in_moved['num_in_storge_history']:=discount_from_storge['num_in_history_storge'];
save_in_moved['place']:=combobox3.Text;
num_moved.Close;
num_moved.Prepare;
num_moved.Open;
if num_moved['max']=null then
save_in_moved['num']:=1
else
save_in_moved['num']:=num_moved['max']+1;
if moved_num['max']=null then
save_in_moved['moved_num']:=1
else
save_in_moved['moved_num']:=moved_num['max']+1;
save_in_moved.Post;
discount_from_storge.Edit;
discount_from_storge['quantity']:=discount_from_storge['quantity']-quan;
discount_from_storge.Post;
quan:=0;
end
else
begin
if quan>discount_from_storge['quantity']then
begin
save_in_moved.Active:=true;
save_in_moved.Insert;
save_in_moved['name']:=discount_from_storge['name'];
save_in_moved['kind']:=discount_from_storge['kind'];
save_in_moved['input_date']:=discount_from_storge['input_date'];
save_in_moved['moved_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));;
save_in_moved['buy_price']:=discount_from_storge['buy_price'];
save_in_moved['quantity']:=discount_from_storge['quantity'];
save_in_moved['num_in_storge_history']:=discount_from_storge['num_in_history_storge'];
save_in_moved['place']:=combobox3.Text;
num_moved.Close;
num_moved.Prepare;
num_moved.Open;
if num_moved['max']=null then
save_in_moved['num']:=1
else
save_in_moved['num']:=num_moved['max']+1;
if moved_num['max']=null then
save_in_moved['moved_num']:=1
else
save_in_moved['moved_num']:=moved_num['max']+1;
save_in_moved.Post;
quan:=quan-discount_from_storge['quantity'];
discount_from_storge.Delete;
end;
end;
end;
end;
view_in_dbgrid.next;
end;
view_in_dbgrid.First;
/////////////////////////// print reporte
form61.QRLabel164.Caption:=combobox3.Text;
form61.QRLabel166.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.nu:=1;
form61.QuickRep23.Preview;

////////////////


end;

procedure TForm37.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if view_in_dbgrid.RecordCount=0 then
begin
view_in_dbgrid.Close;
button3.Enabled:=false;
end;
end;

end.
