unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables, DBCtrls, Grids,
  DBGrids;

type
  TForm14 = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Query_bring_kinds: TQuery;
    Query_bring_type: TQuery;
    Query_availble_for_wanted: TQuery;
    Query_bring_and_save_in_table: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Query_bring_kindsKIND_NO: TIntegerField;
    Query_bring_kindsKINDS_NAME: TStringField;
    Query_bring_kindsKINDS_NOSTS: TStringField;
    Query_availble_for_wantedSUM: TIntegerField;
    Panel2: TPanel;
    Label5: TLabel;
    BitBtn5: TBitBtn;
    ComboBox3: TComboBox;
    DataSource5: TDataSource;
    Query_companys: TQuery;
    Query_companysCOMPANY_NAME: TStringField;
    Query_companysSERIAL: TIntegerField;
    Label9: TLabel;
    Edit3: TEdit;
    Query_bring_and_save_in_tableTYPE_NAME: TStringField;
    Query_bring_and_save_in_tableKIND_NAME: TStringField;
    Query_bring_and_save_in_tableWANTED_QUANTITY: TIntegerField;
    Query_bring_and_save_in_tableSERIAL_NO: TIntegerField;
    Query_bring_and_save_in_tablePIECE_NUM: TStringField;
    Label10: TLabel;
    Edit4: TEdit;
    Query_bring_and_save_in_tableREF_NO: TStringField;
    Query_bring_typeTYPE_NO: TIntegerField;
    Query_bring_typeTYPE_NAME: TStringField;
    Query_bring_typeTYPE_NOTES: TStringField;
    Query_bring_typeTYPE_KIND: TStringField;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses Unit1, Unit15;

{$R *.dfm}

procedure TForm14.FormShow(Sender: TObject);
begin
panel2.Visible:=false;
panel1.Enabled:=true;
Query_bring_kinds.Close;
Query_bring_kinds.Prepare;
Query_bring_kinds.Open;
while(not(Query_bring_kinds.Eof)) do
begin
combobox1.Items.Add(Query_bring_kinds['kinds_name']);
Query_bring_kinds.Next;
end;
Query_bring_and_save_in_table.Close;
Query_bring_and_save_in_table.Prepare;
Query_bring_and_save_in_table.Open;
end;

procedure TForm14.ComboBox1Click(Sender: TObject);
begin
combobox2.Clear;
query_bring_type.Close;
query_bring_type.Prepare;
query_bring_type.Params[0].Value:=combobox1.Text;
query_bring_type.Open;
while(not(query_bring_type.Eof))do
begin
combobox2.Items.Add(query_bring_type['type_name']);
query_bring_type.Next;
end;
end;

procedure TForm14.ComboBox2Click(Sender: TObject);
begin
edit1.Text:='0';
Query_availble_for_wanted.Close;
Query_availble_for_wanted.Prepare;
Query_availble_for_wanted.Params[0].Value:=combobox1.Text;
Query_availble_for_wanted.Params[1].Value:=combobox2.Text;
Query_availble_for_wanted.Open;
if( (Query_availble_for_wanted['sum']>0)and (Query_availble_for_wanted['sum']<>null))then
begin
edit1.Text:=Query_availble_for_wanted['sum'];
end;
end;

procedure TForm14.BitBtn4Click(Sender: TObject);
var
count:integer;
begin
count:=1;
if( combobox1.Text='')then
begin
application.MessageBox('«·—Ã«¡ «Œ Ì«— «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox1.SetFocus;
exit;
end;
if( combobox2.Text='')then
begin
application.MessageBox('«·—Ã«¡ «Œ Ì«— «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox2.SetFocus;
exit;
end;
if( edit2.Text='')then
begin
application.MessageBox('«·—Ã«¡  ÕœÌœ «·ﬂ„Ì… «·„ÿ·Ê»…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
exit;
end;
Query_bring_and_save_in_table.Close;
Query_bring_and_save_in_table.Prepare;
Query_bring_and_save_in_table.Open;
Query_bring_and_save_in_table.Append;
Query_bring_and_save_in_table['kind_name']:=combobox1.Text;
Query_bring_and_save_in_table['type_name']:=combobox2.Text;
Query_bring_and_save_in_table['wanted_quantity']:=edit2.Text;
Query_bring_and_save_in_table['piece_num']:=edit3.Text;
Query_bring_and_save_in_table['ref_no']:=edit4.Text;
Query_bring_and_save_in_table.Post;
Query_bring_and_save_in_table.Close;
Query_bring_and_save_in_table.Prepare;
Query_bring_and_save_in_table.Open;
while(not(Query_bring_and_save_in_table.Eof))do
begin
Query_bring_and_save_in_table.Edit;
Query_bring_and_save_in_table['serial_no']:=count;
Query_bring_and_save_in_table.Post;
count:=count+1;
Query_bring_and_save_in_table.Next;
end;
Query_bring_and_save_in_table.Close;
Query_bring_and_save_in_table.Prepare;
Query_bring_and_save_in_table.Open;
combobox1.ClearSelection;
combobox2.Clear;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
end;

procedure TForm14.BitBtn3Click(Sender: TObject);
begin
combobox1.Clear;
combobox2.Clear;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
form14.Hide;
form1.Show;
end;

procedure TForm14.BitBtn2Click(Sender: TObject);
begin
combobox1.ClearSelection;
combobox2.Clear;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
Query_bring_and_save_in_table.Close;
Query_bring_and_save_in_table.Prepare;
Query_bring_and_save_in_table.Open;
while(not(Query_bring_and_save_in_table.Eof))do
begin
Query_bring_and_save_in_table.Delete;
end;
Query_bring_and_save_in_table.Close;
Query_bring_and_save_in_table.Prepare;
Query_bring_and_save_in_table.Open;
end;

procedure TForm14.BitBtn1Click(Sender: TObject);
begin
combobox1.ClearSelection;
combobox2.Clear;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
panel1.Enabled:=false;
panel2.Visible:=true;
combobox3.Clear;
query_companys.Close;
query_companys.Prepare;
query_companys.Open;
while(not(query_companys.Eof))do
begin
combobox3.Items.Add(query_companys['company_name']);
query_companys.Next;
end;
end;

procedure TForm14.BitBtn5Click(Sender: TObject);
begin
if (combobox3.Text='')then
begin
form15.QRLabel16.Caption:='';
end
else
begin
form15.QRLabel16.Caption:=combobox3.Text;
end;
panel2.Visible:=false;
panel1.Enabled:=true;
combobox1.ClearSelection;
combobox2.Clear;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
Query_bring_and_save_in_table.Close;
Query_bring_and_save_in_table.Prepare;
Query_bring_and_save_in_table.Open;
form15.QuickRep1.Preview;
end;

end.
