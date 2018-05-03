unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, DB,
  DBTables, IBCustomDataSet, IBDatabase, IBQuery;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    DBGrid4: TDBGrid;
    Label4: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    Label5: TLabel;
    DBGrid5: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DataSource1: TDataSource;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Query1: TQuery;
    Query1CUS_NO: TIntegerField;
    Query1CUS_NAME: TStringField;
    Query1CUS_NOTES: TStringField;
    Query2: TQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    query_serch_storeg: TQuery;
    Query_edit: TQuery;
    DataSource4: TDataSource;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Query_edit_type: TQuery;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    Query3: TQuery;
    Query3KIND_NO: TIntegerField;
    Query3KINDS_NAME: TStringField;
    Query3KINDS_NOSTS: TStringField;
    Query_edit_kind: TQuery;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    Query_edit1: TQuery;
    Query_search_storge: TQuery;
    DataSource9: TDataSource;
    Edit2: TEdit;
    BitBtn7: TBitBtn;
    Query_edit_kindKIND_NO: TIntegerField;
    Query_edit_kindKINDS_NAME: TStringField;
    Query_edit_kindKINDS_NOSTS: TStringField;
    ComboBox1: TComboBox;
    DataSource10: TDataSource;
    Query_load_kinds: TQuery;
    Query_edit_typeTYPE_NO: TIntegerField;
    Query_edit_typeTYPE_NAME: TStringField;
    Query_edit_typeTYPE_NOTES: TStringField;
    Query_edit_typeTYPE_KIND: TStringField;
    Query_load_kindsKIND_NO: TIntegerField;
    Query_load_kindsKINDS_NAME: TStringField;
    Query_load_kindsKINDS_NOSTS: TStringField;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DataSource11: TDataSource;
    Query_save_in_types: TQuery;
    Query_save_in_typesTYPE_NO: TIntegerField;
    Query_save_in_typesTYPE_NAME: TStringField;
    Query_save_in_typesTYPE_NOTES: TStringField;
    Query_save_in_typesTYPE_KIND: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn10: TBitBtn;
    Query2TYPE_NO: TIntegerField;
    Query2TYPE_NAME: TStringField;
    Query2TYPE_NOTES: TStringField;
    Query2TYPE_KIND: TStringField;
    BitBtn11: TBitBtn;
    Label6: TLabel;
    Query_edit1ST_NO: TIntegerField;
    Query_edit1ST_KIND: TStringField;
    Query_edit1ST_TYPE: TStringField;
    Query_edit1ST_QUANTITY: TIntegerField;
    Query_edit1ST_TYPE_PAY: TFloatField;
    Query_edit1ST_TYPE_SALE: TFloatField;
    Query_edit1ST_AVAILBLE: TIntegerField;
    Query_edit1ST_STORED_DATE: TStringField;
    Query_search_storgeST_NO: TIntegerField;
    Query_search_storgeST_KIND: TStringField;
    Query_search_storgeST_TYPE: TStringField;
    Query_search_storgeST_QUANTITY: TIntegerField;
    Query_search_storgeST_TYPE_PAY: TFloatField;
    Query_search_storgeST_TYPE_SALE: TFloatField;
    Query_search_storgeST_AVAILBLE: TIntegerField;
    Query_search_storgeST_STORED_DATE: TStringField;
    Query_editST_NO: TIntegerField;
    Query_editST_KIND: TStringField;
    Query_editST_TYPE: TStringField;
    Query_editST_QUANTITY: TIntegerField;
    Query_editST_TYPE_PAY: TFloatField;
    Query_editST_TYPE_SALE: TFloatField;
    Query_editST_AVAILBLE: TIntegerField;
    Query_editST_STORED_DATE: TStringField;
    query_serch_storegST_NO: TIntegerField;
    query_serch_storegST_KIND: TStringField;
    query_serch_storegST_TYPE: TStringField;
    query_serch_storegST_QUANTITY: TIntegerField;
    query_serch_storegST_TYPE_PAY: TFloatField;
    query_serch_storegST_TYPE_SALE: TFloatField;
    query_serch_storegST_AVAILBLE: TIntegerField;
    query_serch_storegST_STORED_DATE: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DataSource13: TDataSource;
    Query_found_match_in_types_table: TQuery;
    Query_found_match_in_types_tableTYPE_NO: TIntegerField;
    Query_found_match_in_types_tableTYPE_NAME: TStringField;
    Query_found_match_in_types_tableTYPE_NOTES: TStringField;
    Query_found_match_in_types_tableTYPE_KIND: TStringField;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    Label11: TLabel;
    Memo1: TMemo;
    DataSource14: TDataSource;
    DataSource15: TDataSource;
    Query_found_match_in_kinds: TQuery;
    Query_max_kind_no: TQuery;
    Query_found_match_in_kindsKIND_NO: TIntegerField;
    Query_found_match_in_kindsKINDS_NAME: TStringField;
    Query_found_match_in_kindsKINDS_NOSTS: TStringField;
    Query_max_kind_noMAX: TIntegerField;
    Query_edit_in_gain_type: TQuery;
    DataSource12: TDataSource;
    Query_edit_in_gain_typeNUM: TIntegerField;
    Query_edit_in_gain_typeKIND: TStringField;
    Query_edit_in_gain_typeTYPE_NAME: TStringField;
    Query_edit_in_gain_typeQUANTITY: TIntegerField;
    Query_edit_in_gain_typeAVAILBLE: TIntegerField;
    Query_edit_in_gain_typeTOTAL_BUDGET: TFloatField;
    Query_edit_in_gain_typeINPUT_DATE: TStringField;
    Query_edit_in_gain_typeSALE_PRICE: TFloatField;
    Query_edit_in_gain_typeBUY_PRICE: TFloatField;
    Query_edit_in_gain_typeTOTAL_BUY_PRICE: TFloatField;
    Query_edit_in_gain_typeNO_IN_STORGE: TIntegerField;
    Query_edit_in_gain_typeWINING: TFloatField;
    Query_editSHELF_NO: TIntegerField;
    Query_editNO_IN_GAIN_TABLE: TIntegerField;
    DataSource16: TDataSource;
    Query_edit_in_gain_kind: TQuery;
    Query_edit_in_gain_kindNUM: TIntegerField;
    Query_edit_in_gain_kindKIND: TStringField;
    Query_edit_in_gain_kindTYPE_NAME: TStringField;
    Query_edit_in_gain_kindQUANTITY: TIntegerField;
    Query_edit_in_gain_kindAVAILBLE: TIntegerField;
    Query_edit_in_gain_kindTOTAL_BUDGET: TFloatField;
    Query_edit_in_gain_kindINPUT_DATE: TStringField;
    Query_edit_in_gain_kindSALE_PRICE: TFloatField;
    Query_edit_in_gain_kindBUY_PRICE: TFloatField;
    Query_edit_in_gain_kindTOTAL_BUY_PRICE: TFloatField;
    Query_edit_in_gain_kindNO_IN_STORGE: TIntegerField;
    Query_edit_in_gain_kindWINING: TFloatField;
    Query_edit1SHELF_NO: TIntegerField;
    Query_edit1NO_IN_GAIN_TABLE: TIntegerField;
    Query_edit_in_types_table: TQuery;
    DataSource17: TDataSource;
    Query_edit_in_types_tableTYPE_NO: TIntegerField;
    Query_edit_in_types_tableTYPE_NAME: TStringField;
    Query_edit_in_types_tableTYPE_NOTES: TStringField;
    Query_edit_in_types_tableTYPE_KIND: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     i,j,w:string;
found:integer;
  end;

var

  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
bitbtn12.Enabled:=false;
label11.Visible:=false;
memo1.Visible:=false;
bitbtn9.Enabled:=true;
dbgrid5.Visible:=true;
edit1.Text:='';
memo1.Text:='';
combobox1.Clear;
edit1.Visible:=false;
combobox1.Visible:=false;
bitbtn6.Enabled:=false;
bitbtn5.Enabled:=false;
bitbtn2.Enabled:=false;
bitbtn10.Enabled:=false;
bitbtn3.Enabled:=false;
bitbtn4.Enabled:=false;
bitbtn7.Enabled:=false;
edit2.Text:='';
edit2.Visible:=false;
dbgrid4.Visible:=true;
form2.Hide;
form1.show;
panel1.Visible:=false;
panel4.Visible:=false;
panel5.Visible:=false;
end;

procedure TForm2.DBGrid5CellClick(Column: TColumn);
begin
j:=DBGrid5.Fields[1].Asstring;
i:=DBGrid5.Fields[2].Asstring;
bitbtn5.Enabled:=true;
bitbtn6.Enabled:=true;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
begin
bitbtn6.Enabled:=false;
DBGrid5.Visible:=false;
found:=0;
edit1.Visible:=true;
combobox1.Visible:=true;
//combobox1.Clear;
combobox1.Text:=j;
query_load_kinds.Close;
query_load_kinds.Prepare;
query_load_kinds.Open;
while(not(query_load_kinds.Eof)) do
begin
combobox1.Items.Add(query_load_kinds['kinds_name']);
query_load_kinds.Next;
end;
query_load_kinds.Close;
combobox1.Text:=j;
edit1.Text:=i;
query_serch_storeg.Close;
query_serch_storeg.Prepare;
query_serch_storeg.Params[0].Value:=i;
query_serch_storeg.Params[1].Value:=j;
query_serch_storeg.Open;
if(query_serch_storeg.RecordCount<>0)then
begin
found:=1;
end;
bitbtn2.Enabled:=true;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
if (combobox1.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if(edit1.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
Query_found_match_in_types_table.Close;
Query_found_match_in_types_table.Prepare;
Query_found_match_in_types_table.Params[0].Value:=edit1.Text;
Query_found_match_in_types_table.Params[1].Value:=combobox1.Text;
Query_found_match_in_types_table.Open;
if(Query_found_match_in_types_table.RecordCount<>0)then
begin
application.MessageBox('Â–« «·‰Ê⁄ „ÊÃÊœ „”»ﬁ«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit;
end
else
begin
if (found=1) then
begin
query_edit.Close;
query_edit.Prepare;
query_edit.Params[0].Value:=i;
query_edit.Params[1].Value:=j;
query_edit.Open;
while(not(query_edit.Eof)) do
begin
Query_edit_in_gain_type.Close;
Query_edit_in_gain_type.Prepare;
Query_edit_in_gain_type.Params[0].Value:=Query_edit['no_in_gain_table'];
Query_edit_in_gain_type.Open;
Query_edit_in_gain_type.Edit;
Query_edit_in_gain_type['kind']:=combobox1.Text;
Query_edit_in_gain_type['type_name']:=edit1.Text;
Query_edit_in_gain_type.Post;
query_edit.Edit;
query_edit['st_type']:= edit1.Text;
query_edit['st_kind']:=combobox1.Text;
Query_edit.Post;
query_edit.Next;
end;
Query_edit_type.Close;
Query_edit_type.Prepare;
Query_edit_type.Params[0].Value:=i;
query_edit_type.Params[1].Value:=j;
Query_edit_type.Open;
Query_edit_type.Edit;
Query_edit_type['type_name']:=edit1.Text;
query_edit_type['type_kind']:=combobox1.Text;
Query_edit_type.Post;
query2.Close;
query2.Open;
Edit1.Text:='';
edit1.Visible:=false;
combobox1.Clear;
combobox1.Visible:=false;
bitbtn2.Enabled:=false;
bitbtn5.Enabled:=false;
bitbtn6.Enabled:=false;
end
else
begin
Query_edit_type.Close;
Query_edit_type.Prepare;
Query_edit_type.Params[0].Value:=i;
Query_edit_type.Params[1].Value:=j;
Query_edit_type.Open;
Query_edit_type.Edit;
Query_edit_type['type_name']:=edit1.Text;
Query_edit_type['type_kind']:=combobox1.Text;
Query_edit_type.Post;
query2.Close;
query2.Open;
end;
DBGrid5.Visible:=true;
combobox1.Clear;
edit1.Visible:=false;
combobox1.Visible:=false;
bitbtn2.Enabled:=false;
bitbtn5.Enabled:=false;
bitbtn6.Enabled:=false;
end;
end;

procedure TForm2.BitBtn6Click(Sender: TObject);
var
n,count:integer;
begin
n:=application.messagebox('Â·  —Ìœ Õ–› Â–««·‰Ê⁄','„‰ŸÊ„… «·Õ”«»« ',mb_iconquestion+mb_yesno);
if(n=id_yes)then
begin
count:=1;
bitbtn5.Enabled:=false;
found:=0;
query_serch_storeg.Close;
query_serch_storeg.Prepare;
query_serch_storeg.Params[0].Value:=i;
query_serch_storeg.Params[1].Value:=j;
query_serch_storeg.Open;
if(query_serch_storeg.RecordCount<>0)then
begin
found:=1;
end;
if (found=1) then
begin
application.MessageBox('·« Ì„ﬂ‰ ≈·€«¡ Â–« «·‰Ê⁄ · Ê›—Â ›Ì «·„Œ“‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
bitbtn6.Enabled:=false;
exit;
end
else
 begin
 query_edit_type.Close;
query_edit_type.Prepare;
query_edit_type.Params[0].Value:=i;
query_edit_type.Params[1].Value:=j;
query_edit_type.Open;
query_edit_type.Delete;
 query2.Close;
  query2.Prepare;
   query2.Open;
   while (not( query2.Eof))do
   begin
    query2.Edit;
     query2['type_no']:=count;
       query2.Post;
     count:=count+1;
      query2.Next;
      end;
query2.Close;
query2.Open;
end;
bitbtn6.Enabled:=false;
end;
end;

procedure TForm2.DBGrid4CellClick(Column: TColumn);
begin
i:=DBGrid4.Fields[0].Asstring;
bitbtn3.Enabled:=true;
bitbtn4.Enabled:=true;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
found:=0;
bitbtn7.Enabled:=true;
dbgrid4.Visible:=false;
edit2.Visible:=true;
edit2.Text:=i;
query_search_storge.Close;
query_search_storge.Prepare;
query_search_storge.Params[0].Value:=i;
query_search_storge.Open;
if(query_search_storge.RecordCount<>0)then
begin
found:=1;
end;
end;

procedure TForm2.BitBtn7Click(Sender: TObject);
begin
if(edit2.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «”„ «·’‰› «·ÃœÌœ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
exit;
end;
Query_found_match_in_kinds.Close;
Query_found_match_in_kinds.Prepare;
Query_found_match_in_kinds.Params[0].Value:=edit2.Text;
Query_found_match_in_kinds.Open;
if(Query_found_match_in_kinds.RecordCount<>0)then
begin
application.MessageBox('Â–« «·’‰› „ÊÃÊœ „”»ﬁ«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
exit;
end
else
begin
if (found=1) then
begin
query_edit1.Close;
query_edit1.Prepare;
query_edit1.Params[0].Value:=i;
query_edit1.Open;
while(not(query_edit1.Eof)) do
begin
Query_edit_in_gain_kind.Close;
Query_edit_in_gain_kind.Prepare;
Query_edit_in_gain_kind.Params[0].Value:=query_edit1['no_in_gain_table'];
Query_edit_in_gain_kind.Open;
Query_edit_in_gain_kind.Edit;
Query_edit_in_gain_kind['kind']:=edit2.Text;
Query_edit_in_gain_kind.Post;
query_edit1.Edit;
query_edit1['st_kind']:= edit2.Text;
Query_edit1.Post;
query_edit1.Next;
end;
Query_edit_kind.Close;
Query_edit_kind.Prepare;
Query_edit_kind.Params[0].Value:=i;
Query_edit_kind.Open;
Query_edit_kind.Edit;
Query_edit_kind['kinds_name']:=edit2.Text;
Query_edit_kind.Post;
Query_edit_in_types_table.Close;
Query_edit_in_types_table.Prepare;
Query_edit_in_types_table.Params[0].Value:=i;
Query_edit_in_types_table.Open;
while(not(Query_edit_in_types_table.Eof))do
begin
Query_edit_in_types_table.Edit;
Query_edit_in_types_table['type_kind']:=edit2.Text;
Query_edit_in_types_table.Post;
Query_edit_in_types_table.Next;
end;
query3.Close;
query3.Open;
end
else
begin
Query_edit_kind.Close;
Query_edit_kind.Prepare;
Query_edit_kind.Params[0].Value:=i;
Query_edit_kind.Open;
Query_edit_kind.Edit;
Query_edit_kind['kinds_name']:=edit2.Text;
Query_edit_kind.Post;
Query_edit_in_types_table.Close;
Query_edit_in_types_table.Prepare;
Query_edit_in_types_table.Params[0].Value:=i;
Query_edit_in_types_table.Open;
while(not(Query_edit_in_types_table.Eof))do
begin
Query_edit_in_types_table.Edit;
Query_edit_in_types_table['kind_name']:=edit2.Text;
Query_edit_in_types_table.Post;
end;
query3.Close;
query3.Open;
end;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.Text:='';
bitbtn3.Enabled:=false;
bitbtn4.Enabled:=false;
bitbtn7.Enabled:=false;
dbgrid4.Visible:=true;
edit2.Visible:=false;
end;
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
var
n,count:integer;
begin
n:=application.messagebox('Â·  —Ìœ Õ–› Â–« «·’‰›','„‰ŸÊ„… «·Õ”«»« ',mb_iconquestion+mb_yesno);
if(n=id_yes)then
begin
count:=1;
found:=0;
query_search_storge.Close;
query_search_storge.Prepare;
query_search_storge.Params[0].Value:=i;
query_search_storge.Open;
if(query_search_storge.RecordCount<>0)then
begin
found:=1;
end;
if (found=1) then
begin
application.MessageBox('·« Ì„ﬂ‰ ≈·€«¡ Â–« «·‰Ê⁄ · Ê›—Â ›Ì «·„Œ“‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end
else
 begin
 query_edit_kind.Close;
query_edit_kind.Prepare;
query_edit_kind.Params[0].Value:=i;
query_edit_kind.Open;
query_edit_kind.Delete;
query3.Close;
query3.Prepare;
query3.Open;
while(not(query3.Eof))do
begin
query3.Edit;
query3['kind_no']:=count;
query3.Post;
query3.Next;
count:=count+1;
end;
query3.Close;
query3.Open;
end;
end;
end;

procedure TForm2.BitBtn8Click(Sender: TObject);
begin
bitbtn9.Enabled:=true;
bitbtn10.Enabled:=false;
bitbtn2.Enabled:=false;
bitbtn5.Enabled:=false;
bitbtn6.Enabled:=false;
dbgrid5.Visible:=true;
edit1.Visible:=false;
combobox1.Clear;
combobox1.Visible:=false;
Edit1.Text:='';
end;

procedure TForm2.BitBtn9Click(Sender: TObject);
begin
combobox1.Clear;
bitbtn10.Enabled:=true;
bitbtn2.Enabled:=false;
bitbtn5.Enabled:=false;
bitbtn6.Enabled:=false;
dbgrid5.Visible:=false;
edit1.Visible:=true;
combobox1.Visible:=true;
bitbtn9.Enabled:=false;
combobox1.Clear;
query_load_kinds.Close;
query_load_kinds.Prepare;
query_load_kinds.Open;
while(not(query_load_kinds.Eof)) do
begin
combobox1.Items.Add(query_load_kinds['kinds_name']);
query_load_kinds.Next;
end;
end;

procedure TForm2.BitBtn10Click(Sender: TObject);
var
count:integer;
begin
count:=1;
if (combobox1.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if(edit1.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
Query_found_match_in_types_table.Close;
Query_found_match_in_types_table.Prepare;
Query_found_match_in_types_table.Params[0].Value:=edit1.Text;
Query_found_match_in_types_table.Params[1].Value:=combobox1.Text;
Query_found_match_in_types_table.Open;
if(Query_found_match_in_types_table.RecordCount<>0)then
begin
application.MessageBox('Â–« «·‰Ê⁄ „ÊÃÊœ „”»ﬁ«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit;
end
else
begin
Query_save_in_types.Close;
Query_save_in_types.Prepare;
Query_save_in_types.Open;
Query_save_in_types.Append;
Query_save_in_types['type_name']:=edit1.Text;
Query_save_in_types['type_kind']:=combobox1.Text;
Query_save_in_types.Post;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.Text:='';
combobox1.Text:='';
Query_save_in_types.Close;
Query_save_in_types.Prepare;
Query_save_in_types.Open;
while(not(Query_save_in_types.Eof))do
begin
Query_save_in_types.Edit;
Query_save_in_types['type_no']:=count;
count:=count+1;
Query_save_in_types.Next;
end;
query2.Close;
query2.Open;
end;
end;

procedure TForm2.BitBtn11Click(Sender: TObject);
begin
bitbtn12.Enabled:=false;
bitbtn3.Enabled:=false;
bitbtn4.Enabled:=false;
bitbtn7.Enabled:=false;
dbgrid4.Visible:=true;
edit2.Visible:=false;
Edit2.Text:='';
label11.Visible:=false;
memo1.Visible:=false;

end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if  ((KEY IN(['{'..'~']))OR (KEY IN(['['..','])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   Edit2.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 Edit2.ReadOnly:=FALSE;
end;
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if  ((KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   Edit1.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 Edit1.ReadOnly:=FALSE;
end;
end;

procedure TForm2.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
 if  ((KEY IN(['0'..'9']))  OR (KEY IN(['?'..'?'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/'])) OR (KEY IN(['˜'..'˜'])) OR (KEY IN(['?'..'?'])) OR (KEY IN(['í'..'í'])) OR (KEY IN(['◊'..'◊'])) OR (KEY IN(['?'..'?'])) OR (KEY IN(['ë'..'ë'])) OR (KEY IN(['?'..'?']))) then
begin
   ComboBox1.DroppedDown:=TRUE;
   BEEP;
end
ELSE
begin
 ComboBox1.DroppedDown:=true;
end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
label11.Visible:=false;
memo1.Visible:=false;
end;

procedure TForm2.BitBtn13Click(Sender: TObject);
begin
edit2.Visible:=true;
label11.Visible:=true;
memo1.Visible:=true;
dbgrid4.Visible:=false;
bitbtn12.Enabled:=true;
bitbtn3.Enabled:=false;
bitbtn4.Enabled:=false;
bitbtn7.Enabled:=false;
end;

procedure TForm2.BitBtn12Click(Sender: TObject);
begin
if(edit2.Text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «”„ «·’‰› «·ÃœÌœ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
exit;
end;
Query_max_kind_no.Close;
Query_max_kind_no.Prepare;
Query_max_kind_no.Open;
Query_found_match_in_kinds.Close;
Query_found_match_in_kinds.Prepare;
Query_found_match_in_kinds.Params[0].Value:=edit2.Text;
Query_found_match_in_kinds.Open;
if(Query_found_match_in_kinds.RecordCount<>0)then
begin
application.MessageBox('Â–« «·’‰› „ÊÃÊœ „”»ﬁ«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
exit;
end
else
begin
Query3.Close;
Query3.Prepare;
Query3.Open;
Query3.Append;
Query3['kinds_name']:=edit2.Text;
Query3['kinds_nosts']:=memo1.Text;
if(Query_max_kind_no['max']=null)then
begin
Query3['kind_no']:=1;
end
else
begin
Query3['kind_no']:=Query_max_kind_no['max']+1;
end;
Query3.Post;
end;
edit2.text:='';
memo1.text:='';
end;
end.
