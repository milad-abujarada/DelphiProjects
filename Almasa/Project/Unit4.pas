unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBTables, Grids, DBGrids, Buttons;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Panel2: TPanel;
    Panel8: TPanel;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    Panel6: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel9: TPanel;
    Label5: TLabel;
    Panel4: TPanel;
    Panel7: TPanel;
    BitBtn10: TBitBtn;
    BitBtn9: TBitBtn;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Panel10: TPanel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel14: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel15: TPanel;
    Label7: TLabel;
    Panel16: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Panel11: TPanel;
    DBGrid2: TDBGrid;
    Panel12: TPanel;
    Label6: TLabel;
    Panel13: TPanel;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    Query1: TQuery;
    DataSource1: TDataSource;
    query_search_storge: TQuery;
    query_search_storgeSERAIL_NUM: TIntegerField;
    query_search_storgeVARIETY_NAME: TStringField;
    query_search_storgeTYPE_NAME: TStringField;
    query_search_storgeQUANTITY: TIntegerField;
    query_search_storgeQUANTITY_AVAILABLE: TIntegerField;
    query_search_storgeBUY_PRICE: TFloatField;
    query_search_storgeSALE_PRICE: TFloatField;
    query_search_storgeDATE_INPUT: TStringField;
    query_search_storgeDATE_EX: TStringField;
    DataSource2: TDataSource;
    Query_found_match_in_kinds: TQuery;
    Query_found_match_in_kindsVARIETY_NO: TIntegerField;
    Query_found_match_in_kindsVARIETY_NAME: TStringField;
    DataSource3: TDataSource;
    query_edit1: TQuery;
    query_edit1SERAIL_NUM: TIntegerField;
    query_edit1VARIETY_NAME: TStringField;
    query_edit1TYPE_NAME: TStringField;
    query_edit1QUANTITY: TIntegerField;
    query_edit1QUANTITY_AVAILABLE: TIntegerField;
    query_edit1BUY_PRICE: TFloatField;
    query_edit1SALE_PRICE: TFloatField;
    query_edit1DATE_INPUT: TStringField;
    query_edit1DATE_EX: TStringField;
    DataSource4: TDataSource;
    Query_edit_kind: TQuery;
    Query_edit_kindVARIETY_NO: TIntegerField;
    Query_edit_kindVARIETY_NAME: TStringField;
    DataSource5: TDataSource;
    Query_edit_typ_variety: TQuery;
    Query_edit_typ_varietyTYP_NO: TIntegerField;
    Query_edit_typ_varietyTYP_NAME: TStringField;
    Query_edit_typ_varietyKIND_NAME: TStringField;
    DataSource6: TDataSource;
    Query_del_kind_from_typ: TQuery;
    Query_del_kind_from_typTYP_NO: TIntegerField;
    Query_del_kind_from_typTYP_NAME: TStringField;
    Query_del_kind_from_typKIND_NAME: TStringField;
    DataSource10: TDataSource;
    Query2: TQuery;
    DataSource7: TDataSource;
    query_load_kinds: TQuery;
    DataSource8: TDataSource;
    query_serch_storeg: TQuery;
    query_serch_storegSERAIL_NUM: TIntegerField;
    query_serch_storegVARIETY_NAME: TStringField;
    query_serch_storegTYPE_NAME: TStringField;
    query_serch_storegQUANTITY: TIntegerField;
    query_serch_storegQUANTITY_AVAILABLE: TIntegerField;
    query_serch_storegBUY_PRICE: TFloatField;
    query_serch_storegSALE_PRICE: TFloatField;
    query_serch_storegDATE_INPUT: TStringField;
    query_serch_storegDATE_EX: TStringField;
    DataSource9: TDataSource;
    Query_found_match_in_types_table: TQuery;
    Query_found_match_in_types_tableTYP_NO: TIntegerField;
    Query_found_match_in_types_tableTYP_NAME: TStringField;
    Query_found_match_in_types_tableKIND_NAME: TStringField;
    DataSource11: TDataSource;
    query_edit: TQuery;
    query_editSERAIL_NUM: TIntegerField;
    query_editVARIETY_NAME: TStringField;
    query_editTYPE_NAME: TStringField;
    query_editQUANTITY: TIntegerField;
    query_editQUANTITY_AVAILABLE: TIntegerField;
    query_editBUY_PRICE: TFloatField;
    query_editSALE_PRICE: TFloatField;
    query_editDATE_INPUT: TStringField;
    query_editDATE_EX: TStringField;
    DataSource12: TDataSource;
    Query_edit_type: TQuery;
    Query_edit_typeTYP_NO: TIntegerField;
    Query_edit_typeTYP_NAME: TStringField;
    Query_edit_typeKIND_NAME: TStringField;
    DataSource13: TDataSource;
    Query2TYP_NO: TIntegerField;
    Query2TYP_NAME: TStringField;
    Query2KIND_NAME: TStringField;
    query_load_kindsVARIETY_NO: TIntegerField;
    query_load_kindsVARIETY_NAME: TStringField;
    Query1VARIETY_NO: TIntegerField;
    Query1VARIETY_NAME: TStringField;
    query_search_storgeDATE_OUTPUT: TStringField;
    query_edit1DATE_OUTPUT: TStringField;
    query_serch_storegDATE_OUTPUT: TStringField;
    query_editDATE_OUTPUT: TStringField;
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
   found:integer;
  i,j:string;
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm4.BitBtn9Click(Sender: TObject);
begin
if (combobox1.Text='')then
begin
application.MessageBox('«·—Ã«¡ «Œ Ì«— «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if(edit2.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
Query_found_match_in_types_table.Close;
Query_found_match_in_types_table.Prepare;
Query_found_match_in_types_table.Params[0].Value:=edit2.Text;
Query_found_match_in_types_table.Params[1].Value:=combobox1.Text;
Query_found_match_in_types_table.Open;
if(Query_found_match_in_types_table.RecordCount<>0)then
begin
application.MessageBox('Â–« «·‰Ê⁄ „ÊÃÊœ „”»ﬁ«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
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
query_edit.Edit;
query_edit['type_name']:= edit1.Text;
query_edit['variety_name']:=combobox1.Text;
Query_edit.Post;
query_edit.Next;
end;
Query_edit_type.Close;
Query_edit_type.Prepare;
Query_edit_type.Params[0].Value:=i;
query_edit_type.Params[1].Value:=j;
Query_edit_type.Open;
Query_edit_type.Edit;
Query_edit_type['typ_name']:=edit2.Text;
query_edit_type['kind_name']:=combobox1.Text;
Query_edit_type.Post;
application.MessageBox(' „ Õ›Ÿ «· ⁄œÌ·« ','„‰ŸÊ„… «·„Œ«“‰',mb_iconwarning+mb_ok);
query2.Close;
query2.Open;
end
else
begin
Query_edit_type.Close;
Query_edit_type.Prepare;
Query_edit_type.Params[0].Value:=i;
Query_edit_type.Params[1].Value:=j;
Query_edit_type.Open;
Query_edit_type.Edit;
Query_edit_type['typ_name']:=edit2.Text;
Query_edit_type['kind_name']:=combobox1.Text;
Query_edit_type.Post;
query2.Close;
query2.Open;
end;
end;
end;

procedure TForm4.BitBtn10Click(Sender: TObject);
begin
panel4.Visible:=false;
panel3.Visible:=true;
bitbtn6.Enabled:=false;
bitbtn7.Enabled:=false;
end;

procedure TForm4.DBGrid2CellClick(Column: TColumn);
begin
j:=DBGrid2.Fields[1].AsString;
i:=DBGrid2.Fields[2].AsString;
bitbtn6.Enabled:=true;
bitbtn7.Enabled:=true;
end;

procedure TForm4.BitBtn6Click(Sender: TObject);
begin
panel3.Visible:=false;
panel4.Visible:=true;
combobox1.Clear;
found:=0;
combobox1.Text:=j;
query_load_kinds.Close;
query_load_kinds.Prepare;
query_load_kinds.Open;
while(not(query_load_kinds.Eof)) do
begin
combobox1.Items.Add(query_load_kinds['variety_name']);
query_load_kinds.Next;
end;
query_load_kinds.Close;
combobox1.Text:=j;
edit2.Text:=i;
query_serch_storeg.Close;
query_serch_storeg.Prepare;
query_serch_storeg.Params[0].Value:=i;
query_serch_storeg.Params[1].Value:=j;
query_serch_storeg.Open;
if(query_serch_storeg.RecordCount<>0)then
begin
found:=1;
end;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
query1.Close;
query1.Open;
query2.Close;
query2.Open;
end;

procedure TForm4.BitBtn8Click(Sender: TObject);
begin
panel3.Visible:=false;
form4.Hide;
form3.show;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
i:=DBGrid1.Fields[1].AsString;
bitbtn1.Enabled:=true;
bitbtn3.Enabled:=true;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
panel1.Visible:=false;
panel2.Visible:=true;
found:=0;
edit1.Text:=i;
query_search_storge.Close;
query_search_storge.Prepare;
query_search_storge.Params[0].Value:=i;
query_search_storge.Open;
if(query_search_storge.RecordCount<>0)then
begin
found:=1;
end;
panel2.Visible:=true;
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
var
count,n:integer;
begin
n:=application.messagebox('Â·  —Ìœ »«· √ﬂÌœ Õ–› Â–« «·‰Ê⁄',' ‰»ÌÂ',mb_iconquestion+mb_yesno);
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
application.MessageBox('·« Ì„ﬂ‰ Õ–› Â–« «·’‰› · Ê›—Â ›Ì «·„Œ“‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end
else
 begin
Query_del_kind_from_typ.Close;
Query_del_kind_from_typ.Prepare;
Query_del_kind_from_typ.Params[0].Value:=i;
Query_del_kind_from_typ.Open;
while(not(Query_del_kind_from_typ.Eof))do
begin
Query_del_kind_from_typ.Delete;
end;
query2.Close;
query2.Open;
 ////////
 query_edit_kind.Close;
query_edit_kind.Prepare;
query_edit_kind.Params[0].Value:=i;
query_edit_kind.Open;
query_edit_kind.Delete;
query1.Close;
query1.Prepare;
query1.Open;
while(not(query1.Eof))do
begin
query1.Edit;
query1['variety_no']:=count;
query1.Post;
query1.Next;
count:=count+1;
end;
query1.Close;
query1.Open;
end;
end;
end;

procedure TForm4.BitBtn7Click(Sender: TObject);
var
n,count:integer;
begin
n:=application.messagebox('Â·  —Ìœ »«· √ﬂÌœ Õ–› Â–« «·‰Ê⁄',' ‰»ÌÂ',mb_iconquestion+mb_yesno);
if(n=id_yes)then
begin
count:=1;
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
application.MessageBox('·«Ì„ﬂ‰ ≈·€«¡ Â–« «·‰Ê⁄ · Ê›—Â ›Ì «·„Œ“‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
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
     query2['typ_no']:=count;
       query2.Post;
     count:=count+1;
      query2.Next;
      end;
query2.Close;
query2.Open;
end;
end;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
if(edit1.Text='')then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit;
end;
Query_found_match_in_kinds.Close;
Query_found_match_in_kinds.Prepare;
Query_found_match_in_kinds.Params[0].Value:=edit1.Text;
Query_found_match_in_kinds.Open;
if(Query_found_match_in_kinds.RecordCount<>0)then
begin
application.MessageBox('Â–« «·’‰› „ÊÃÊœ „”»ﬁ«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
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
query_edit1.Edit;
query_edit1['variety_name']:= edit1.Text;
Query_edit1.Post;
query_edit1.Next;
end;
Query_edit_kind.Close;
Query_edit_kind.Prepare;
Query_edit_kind.Params[0].Value:=i;
Query_edit_kind.Open;
Query_edit_kind.Edit;
Query_edit_kind['variety_name']:=edit1.Text;
Query_edit_kind.Post;
application.MessageBox(' „ Õ›Ÿ «· ⁄œÌ·« ','„‰ŸÊ„… «·„Œ«“‰',mb_iconwarning+mb_ok);
query1.Close;
query1.Open;

Query_edit_typ_variety.Close;
Query_edit_typ_variety.Prepare;
Query_edit_typ_variety.Params[0].Value:=i;
Query_edit_typ_variety.Open;
while(not(Query_edit_typ_variety.Eof))do
begin
Query_edit_typ_variety.Edit;
Query_edit_typ_variety['kind_name']:=edit1.Text;
Query_edit_typ_variety.Post;
Query_edit_typ_variety.Next;
end;
query1.Close;
query1.Open;
end
else
begin
//////////////////////////////
Query_edit_typ_variety.Close;
Query_edit_typ_variety.Prepare;
Query_edit_typ_variety.Params[0].Value:=i;
Query_edit_typ_variety.Open;
while(not(Query_edit_typ_variety.Eof))do
begin
Query_edit_typ_variety.Edit;
Query_edit_typ_variety['kind_name']:=edit1.Text;
Query_edit_typ_variety.Post;
Query_edit_typ_variety.Next;
end;
query1.Close;
query1.Open;

//////////////////////////////
Query_edit_kind.Close;
Query_edit_kind.Prepare;
Query_edit_kind.Params[0].Value:=i;
Query_edit_kind.Open;
Query_edit_kind.Edit;
Query_edit_kind['variety_name']:=edit1.Text;
Query_edit_kind.Post;
query1.Close;
query1.Open;
end;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.Text:='';
bitbtn1.Enabled:=false;
bitbtn3.Enabled:=false;
panel2.Visible:=false;
end;
end;

procedure TForm4.BitBtn5Click(Sender: TObject);
begin
panel2.Visible:=false;
panel1.Visible:=true;
bitbtn1.Enabled:=false;
bitbtn3.Enabled:=false;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
panel1.Visible:=false;
form4.Hide;
form3.show;
end;

end.
