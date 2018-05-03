unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls,
  DB, DBTables;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label11: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label12: TLabel;
    Panel4: TPanel;
    BitBtn5: TBitBtn;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query_serial: TQuery;
    DataSource2: TDataSource;
    Query_edit_quantity: TQuery;
    DataSource3: TDataSource;
    Panel6: TPanel;
    BitBtn8: TBitBtn;
    Label15: TLabel;
    Label16: TLabel;
    Edit6: TEdit;
    BitBtn9: TBitBtn;
    Query_edit_buy_price: TQuery;
    DataSource4: TDataSource;
    Panel7: TPanel;
    BitBtn10: TBitBtn;
    Label17: TLabel;
    Label18: TLabel;
    RadioButton1: TRadioButton;
    Edit7: TEdit;
    RadioButton2: TRadioButton;
    BitBtn11: TBitBtn;
    DataSource5: TDataSource;
    Query_edit_sale_price: TQuery;
    Query_edit_sale_not_all_quantity: TQuery;
    DataSource6: TDataSource;
    Query_edit_hole_sale_not_all_quantity: TQuery;
    Query_edit_hole_sale_price: TQuery;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    Panel9: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    DateTimePicker2: TDateTimePicker;
    Label28: TLabel;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    DataSource9: TDataSource;
    Query_input_to_storge: TQuery;
    Query_bring_kinds: TQuery;
    Query_bring_types: TQuery;
    DataSource10: TDataSource;
    DataSource11: TDataSource;
    Query_bring_kindsKIND_NO: TIntegerField;
    Query_bring_kindsKINDS_NAME: TStringField;
    Query_bring_kindsKINDS_NOSTS: TStringField;
    BitBtn17: TBitBtn;
    DataSource12: TDataSource;
    Query_enter_spend: TQuery;
    Query_enter_spendSP_NO: TIntegerField;
    Query_enter_spendSP_NAME: TStringField;
    Query_enter_spendSP_CAUSE: TStringField;
    Query_enter_spendSP_AMOUNT: TFloatField;
    Query_enter_spendSP_DATE: TStringField;
    DateTimePicker3: TDateTimePicker;
    DataSource13: TDataSource;
    Query_bring_kinds_for_gobad: TQuery;
    Query_bring_kinds_for_gobadKIND_NO: TIntegerField;
    Query_bring_kinds_for_gobadKINDS_NAME: TStringField;
    Query_bring_kinds_for_gobadKINDS_NOSTS: TStringField;
    Query_types_for_gobad: TQuery;
    DataSource14: TDataSource;
    Label1: TLabel;
    Edit13: TEdit;
    Query_availble_for_gobad: TQuery;
    DataSource15: TDataSource;
    Query_availble_for_gobadSUM: TIntegerField;
    Query_discount_because_dameged: TQuery;
    DataSource16: TDataSource;
    Query1ST_NO: TIntegerField;
    Query1ST_KIND: TStringField;
    Query1ST_TYPE: TStringField;
    Query1ST_QUANTITY: TIntegerField;
    Query1ST_TYPE_PAY: TFloatField;
    Query1ST_TYPE_SALE: TFloatField;
    Query1ST_AVAILBLE: TIntegerField;
    Query1ST_STORED_DATE: TStringField;
    Query_edit_buy_priceST_NO: TIntegerField;
    Query_edit_buy_priceST_KIND: TStringField;
    Query_edit_buy_priceST_TYPE: TStringField;
    Query_edit_buy_priceST_QUANTITY: TIntegerField;
    Query_edit_buy_priceST_TYPE_PAY: TFloatField;
    Query_edit_buy_priceST_TYPE_SALE: TFloatField;
    Query_edit_buy_priceST_AVAILBLE: TIntegerField;
    Query_edit_buy_priceST_STORED_DATE: TStringField;
    Query_discount_because_damegedST_NO: TIntegerField;
    Query_discount_because_damegedST_KIND: TStringField;
    Query_discount_because_damegedST_TYPE: TStringField;
    Query_discount_because_damegedST_QUANTITY: TIntegerField;
    Query_discount_because_damegedST_TYPE_PAY: TFloatField;
    Query_discount_because_damegedST_TYPE_SALE: TFloatField;
    Query_discount_because_damegedST_AVAILBLE: TIntegerField;
    Query_discount_because_damegedST_STORED_DATE: TStringField;
    Query_edit_sale_priceST_NO: TIntegerField;
    Query_edit_sale_priceST_KIND: TStringField;
    Query_edit_sale_priceST_TYPE: TStringField;
    Query_edit_sale_priceST_QUANTITY: TIntegerField;
    Query_edit_sale_priceST_TYPE_PAY: TFloatField;
    Query_edit_sale_priceST_TYPE_SALE: TFloatField;
    Query_edit_sale_priceST_AVAILBLE: TIntegerField;
    Query_edit_sale_priceST_STORED_DATE: TStringField;
    Query_edit_hole_sale_not_all_quantityST_NO: TIntegerField;
    Query_edit_hole_sale_not_all_quantityST_KIND: TStringField;
    Query_edit_hole_sale_not_all_quantityST_TYPE: TStringField;
    Query_edit_hole_sale_not_all_quantityST_QUANTITY: TIntegerField;
    Query_edit_hole_sale_not_all_quantityST_TYPE_PAY: TFloatField;
    Query_edit_hole_sale_not_all_quantityST_TYPE_SALE: TFloatField;
    Query_edit_hole_sale_not_all_quantityST_AVAILBLE: TIntegerField;
    Query_edit_hole_sale_not_all_quantityST_STORED_DATE: TStringField;
    Query_edit_hole_sale_priceST_NO: TIntegerField;
    Query_edit_hole_sale_priceST_KIND: TStringField;
    Query_edit_hole_sale_priceST_TYPE: TStringField;
    Query_edit_hole_sale_priceST_QUANTITY: TIntegerField;
    Query_edit_hole_sale_priceST_TYPE_PAY: TFloatField;
    Query_edit_hole_sale_priceST_TYPE_SALE: TFloatField;
    Query_edit_hole_sale_priceST_AVAILBLE: TIntegerField;
    Query_edit_hole_sale_priceST_STORED_DATE: TStringField;
    Query_edit_sale_not_all_quantityST_NO: TIntegerField;
    Query_edit_sale_not_all_quantityST_KIND: TStringField;
    Query_edit_sale_not_all_quantityST_TYPE: TStringField;
    Query_edit_sale_not_all_quantityST_QUANTITY: TIntegerField;
    Query_edit_sale_not_all_quantityST_TYPE_PAY: TFloatField;
    Query_edit_sale_not_all_quantityST_TYPE_SALE: TFloatField;
    Query_edit_sale_not_all_quantityST_AVAILBLE: TIntegerField;
    Query_edit_sale_not_all_quantityST_STORED_DATE: TStringField;
    Query_serialST_NO: TIntegerField;
    Query_serialST_KIND: TStringField;
    Query_serialST_TYPE: TStringField;
    Query_serialST_QUANTITY: TIntegerField;
    Query_serialST_TYPE_PAY: TFloatField;
    Query_serialST_TYPE_SALE: TFloatField;
    Query_serialST_AVAILBLE: TIntegerField;
    Query_serialST_STORED_DATE: TStringField;
    Query_edit_quantityST_NO: TIntegerField;
    Query_edit_quantityST_KIND: TStringField;
    Query_edit_quantityST_TYPE: TStringField;
    Query_edit_quantityST_QUANTITY: TIntegerField;
    Query_edit_quantityST_TYPE_PAY: TFloatField;
    Query_edit_quantityST_TYPE_SALE: TFloatField;
    Query_edit_quantityST_AVAILBLE: TIntegerField;
    Query_edit_quantityST_STORED_DATE: TStringField;
    Query_input_to_storgeST_NO: TIntegerField;
    Query_input_to_storgeST_KIND: TStringField;
    Query_input_to_storgeST_TYPE: TStringField;
    Query_input_to_storgeST_QUANTITY: TIntegerField;
    Query_input_to_storgeST_TYPE_PAY: TFloatField;
    Query_input_to_storgeST_TYPE_SALE: TFloatField;
    Query_input_to_storgeST_AVAILBLE: TIntegerField;
    Query_input_to_storgeST_STORED_DATE: TStringField;
    DataSource17: TDataSource;
    Query_save_in_gain_budget: TQuery;
    Query_save_in_gain_budgetNUM: TIntegerField;
    Query_save_in_gain_budgetKIND: TStringField;
    Query_save_in_gain_budgetTYPE_NAME: TStringField;
    Query_save_in_gain_budgetQUANTITY: TIntegerField;
    Query_save_in_gain_budgetAVAILBLE: TIntegerField;
    Query_save_in_gain_budgetTOTAL_BUDGET: TFloatField;
    Query_save_in_gain_budgetINPUT_DATE: TStringField;
    Query_save_in_gain_budgetSALE_PRICE: TFloatField;
    Query1SHELF_NO: TIntegerField;
    Query_edit_buy_priceSHELF_NO: TIntegerField;
    Query_discount_because_damegedSHELF_NO: TIntegerField;
    Query_edit_sale_priceSHELF_NO: TIntegerField;
    Query_edit_hole_sale_not_all_quantitySHELF_NO: TIntegerField;
    Query_edit_hole_sale_priceSHELF_NO: TIntegerField;
    Query_edit_sale_not_all_quantitySHELF_NO: TIntegerField;
    Query_serialSHELF_NO: TIntegerField;
    Query_edit_quantitySHELF_NO: TIntegerField;
    Query_input_to_storgeSHELF_NO: TIntegerField;
    Label5: TLabel;
    Edit8: TEdit;
    DataSource18: TDataSource;
    Query_max_from_gain_table: TQuery;
    Query_max_from_gain_tableMAX: TIntegerField;
    Query_save_in_gain_budgetBUY_PRICE: TFloatField;
    Query_save_in_gain_budgetTOTAL_BUY_PRICE: TFloatField;
    Query_save_in_gain_budgetNO_IN_STORGE: TIntegerField;
    Query1NO_IN_GAIN_TABLE: TIntegerField;
    DataSource19: TDataSource;
    Query_max_no_in_gain_and_storge: TQuery;
    Query_max_st_no: TQuery;
    DataSource20: TDataSource;
    Query_max_st_noMAX: TIntegerField;
    Query_input_to_storgeNO_IN_GAIN_TABLE: TIntegerField;
    Query_max_no_in_gain_and_storgeMAX: TIntegerField;
    Query_save_in_gain_budgetWINING: TFloatField;
    DataSource21: TDataSource;
    Query_edit_in_sale_price_in_gain: TQuery;
    Query_edit_in_sale_price_in_gainNUM: TIntegerField;
    Query_edit_in_sale_price_in_gainKIND: TStringField;
    Query_edit_in_sale_price_in_gainTYPE_NAME: TStringField;
    Query_edit_in_sale_price_in_gainQUANTITY: TIntegerField;
    Query_edit_in_sale_price_in_gainAVAILBLE: TIntegerField;
    Query_edit_in_sale_price_in_gainTOTAL_BUDGET: TFloatField;
    Query_edit_in_sale_price_in_gainINPUT_DATE: TStringField;
    Query_edit_in_sale_price_in_gainSALE_PRICE: TFloatField;
    Query_edit_in_sale_price_in_gainBUY_PRICE: TFloatField;
    Query_edit_in_sale_price_in_gainTOTAL_BUY_PRICE: TFloatField;
    Query_edit_in_sale_price_in_gainNO_IN_STORGE: TIntegerField;
    Query_edit_in_sale_price_in_gainWINING: TFloatField;
    DataSource22: TDataSource;
    Query_edit_in_buy_price_in_gain: TQuery;
    Query_edit_in_buy_price_in_gainNUM: TIntegerField;
    Query_edit_in_buy_price_in_gainKIND: TStringField;
    Query_edit_in_buy_price_in_gainTYPE_NAME: TStringField;
    Query_edit_in_buy_price_in_gainQUANTITY: TIntegerField;
    Query_edit_in_buy_price_in_gainAVAILBLE: TIntegerField;
    Query_edit_in_buy_price_in_gainTOTAL_BUDGET: TFloatField;
    Query_edit_in_buy_price_in_gainINPUT_DATE: TStringField;
    Query_edit_in_buy_price_in_gainSALE_PRICE: TFloatField;
    Query_edit_in_buy_price_in_gainBUY_PRICE: TFloatField;
    Query_edit_in_buy_price_in_gainTOTAL_BUY_PRICE: TFloatField;
    Query_edit_in_buy_price_in_gainNO_IN_STORGE: TIntegerField;
    Query_edit_in_buy_price_in_gainWINING: TFloatField;
    Query_edit_buy_priceNO_IN_GAIN_TABLE: TIntegerField;
    Query_bring_typesTYPE_NO: TIntegerField;
    Query_bring_typesTYPE_NAME: TStringField;
    Query_bring_typesTYPE_NOTES: TStringField;
    Query_bring_typesTYPE_KIND: TStringField;
    Query_types_for_gobadTYPE_NO: TIntegerField;
    Query_types_for_gobadTYPE_NAME: TStringField;
    Query_types_for_gobadTYPE_NOTES: TStringField;
    Query_types_for_gobadTYPE_KIND: TStringField;
    Query_edit_sale_not_all_quantityNO_IN_GAIN_TABLE: TIntegerField;
    Query_edit_hole_sale_priceNO_IN_GAIN_TABLE: TIntegerField;
    Query_edit_hole_sale_not_all_quantityNO_IN_GAIN_TABLE: TIntegerField;
    Query_edit_sale_priceNO_IN_GAIN_TABLE: TIntegerField;
    Query_discount_because_damegedNO_IN_GAIN_TABLE: TIntegerField;
    BitBtn2: TBitBtn;
    Panel5: TPanel;
    Label20: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    ComboBox4: TComboBox;
    Edit5: TEdit;
    DataSource23: TDataSource;
    DataSource24: TDataSource;
    Query_delete: TQuery;
    Query_delete_from_gain: TQuery;
    Query_deleteST_NO: TIntegerField;
    Query_deleteST_KIND: TStringField;
    Query_deleteST_TYPE: TStringField;
    Query_deleteST_QUANTITY: TIntegerField;
    Query_deleteST_TYPE_PAY: TFloatField;
    Query_deleteST_TYPE_SALE: TFloatField;
    Query_deleteST_AVAILBLE: TIntegerField;
    Query_deleteST_STORED_DATE: TStringField;
    Query_deleteSHELF_NO: TIntegerField;
    Query_deleteNO_IN_GAIN_TABLE: TIntegerField;
    BitBtn6: TBitBtn;
    Panel8: TPanel;
    Label13: TLabel;
    Label26: TLabel;
    Edit12: TEdit;
    BitBtn7: TBitBtn;
    DataSource25: TDataSource;
    Query_edit_shelf_no: TQuery;
    Query_edit_shelf_noST_NO: TIntegerField;
    Query_edit_shelf_noST_KIND: TStringField;
    Query_edit_shelf_noST_TYPE: TStringField;
    Query_edit_shelf_noST_QUANTITY: TIntegerField;
    Query_edit_shelf_noST_TYPE_PAY: TFloatField;
    Query_edit_shelf_noST_TYPE_SALE: TFloatField;
    Query_edit_shelf_noST_AVAILBLE: TIntegerField;
    Query_edit_shelf_noST_STORED_DATE: TStringField;
    Query_edit_shelf_noSHELF_NO: TIntegerField;
    Query_edit_shelf_noNO_IN_GAIN_TABLE: TIntegerField;
    BitBtn12: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure ComboBox5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Edit5Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kin,tye,quan,ava,buy_price,sale_piece_price,sale_hole_price,bring_date:string;
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit16, Unit24;

{$R *.dfm}

procedure TForm5.BitBtn5Click(Sender: TObject);
begin
bitbtn1.Enabled:=false;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit6.Text:='';
panel6.Visible:=false;
bitbtn9.Enabled:=false;
bitbtn10.Enabled:=false;
bitbtn2.Enabled:=false;
bitbtn6.Enabled:=false;
form5.Hide;
panel1.Visible:=false;
panel2.Visible:=false;
panel3.Visible:=false;
panel9.Visible:=false;
panel8.Visible:=false;
form1.show;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);

begin
if (Query1.RecordCount<>0) then
begin
kin:=DBGrid1.Fields[0].Asstring;
tye:=DBGrid1.Fields[1].Asstring;
quan:=DBGrid1.Fields[2].AsVariant;
ava:=DBGrid1.Fields[3].AsVariant;
buy_price:=DBGrid1.Fields[4].AsVariant;
sale_piece_price:=DBGrid1.Fields[5].AsVariant;
bring_date:=DBGrid1.Fields[6].Asstring;
bitbtn9.Enabled:=true;
bitbtn10.Enabled:=true;
bitbtn2.Enabled:=true;
bitbtn6.Enabled:=true;
end;
end;


procedure TForm5.BitBtn9Click(Sender: TObject);
begin
Query_edit_buy_price.Close;
Query_edit_buy_price.Prepare;
Query_edit_buy_price.Params[0].Value:=kin;
Query_edit_buy_price.Params[1].Value:=tye;
Query_edit_buy_price.Params[2].Value:=quan;
Query_edit_buy_price.Params[3].Value:=ava;
Query_edit_buy_price.Params[4].Value:=buy_price;
Query_edit_buy_price.Params[5].Value:=sale_piece_price;
Query_edit_buy_price.Params[6].Value:=bring_date;
Query_edit_buy_price.Open;
panel6.Visible:=true;
panel7.Visible:=false;
panel8.Visible:=false;
edit6.SetFocus;
Query_edit_buy_price.Edit;
end;

procedure TForm5.BitBtn8Click(Sender: TObject);
var
n:integer;
begin
n:=application.messagebox('Â·  —Ìœ »«· √ﬂÌœ  €Ì— ”⁄— «·‘—«¡ –·ﬂ ”Ê› ÌƒœÏ «·Ï  €Ì— ›Ï «·«—»«Õ','„‰ŸÊ„… «·Õ”«»« ',mb_iconquestion+mb_yesno);
if(n=id_yes)then
begin
if (edit6.Text='') then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· ”⁄— «·‘—«¡ «·ÃœÌœ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit6.SetFocus;
exit;
end
else
begin
Query_edit_in_buy_price_in_gain.Close;
Query_edit_in_buy_price_in_gain.Prepare;
Query_edit_in_buy_price_in_gain.Params[0].Value:=Query_edit_buy_price['no_in_gain_table'];
Query_edit_in_buy_price_in_gain.Open;
Query_edit_in_buy_price_in_gain.Edit;
Query_edit_in_buy_price_in_gain['buy_price']:=strtofloat(edit6.Text);
Query_edit_in_buy_price_in_gain['total_buy_price']:=Query_edit_in_buy_price_in_gain['buy_price']*Query_edit_in_buy_price_in_gain['quantity'];
Query_edit_in_buy_price_in_gain.Post;
Query_edit_buy_price['st_type_pay']:=strtofloat(edit6.Text);
Query_edit_buy_price.Post;
edit6.Text:='';
panel6.Visible:=false;
bitbtn9.Enabled:=false;
bitbtn10.Enabled:=false;
bitbtn2.Enabled:=false;
bitbtn6.Enabled:=false;
application.MessageBox(' „ Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
query1.Close;
query1.Open;
end;
end
else
begin
bitbtn10.Enabled:=false;
bitbtn9.Enabled:=false;
bitbtn2.Enabled:=false;
bitbtn6.Enabled:=false;
panel6.Visible:=false;
end;
end;
procedure TForm5.BitBtn11Click(Sender: TObject);
begin
if (edit7.Text='')then
begin
 application.MessageBox('«·—Ã«¡ «œŒ«· «·”⁄— «·ÃœÌœ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
 exit;
 end;
if ((radiobutton1.Checked=true) and(edit7.Text<> '') ) then
begin
Query_edit_sale_price.Close;
Query_edit_sale_price.Prepare;
Query_edit_sale_price.Params[0].Value:=tye;
Query_edit_sale_price.Params[1].Value:=kin;
Query_edit_sale_price.open;
Query_edit_sale_price.First;
while(not(Query_edit_sale_price.Eof)) do
begin
Query_edit_in_sale_price_in_gain.Close;
Query_edit_in_sale_price_in_gain.Prepare;
Query_edit_in_sale_price_in_gain.Params[0].Value:=Query_edit_sale_price['no_in_gain_table'];
Query_edit_in_sale_price_in_gain.open;
Query_edit_in_sale_price_in_gain.Edit;
Query_edit_in_sale_price_in_gain['sale_price']:=edit7.Text;
Query_edit_in_sale_price_in_gain.Post;
Query_edit_sale_price.Edit;
Query_edit_sale_price['st_type_sale']:=strtofloat(edit7.Text);
Query_edit_sale_price.Post;
Query_edit_sale_price.Next;
end;
  edit7.Text:='';
  radiobutton1.Checked:=false;
  radiobutton2.Checked:=false;
panel7.Visible:=false;
bitbtn9.Enabled:=false;
bitbtn10.Enabled:=false;
bitbtn2.Enabled:=false;
bitbtn6.Enabled:=false;
application.MessageBox(' „ Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
query1.Close;
query1.Open;
end
else
begin
 if ((radiobutton2.Checked=true) and (edit7.Text<>'') ) then
 begin
  Query_edit_sale_not_all_quantity.Close;
  Query_edit_sale_not_all_quantity.Prepare;
  Query_edit_sale_not_all_quantity.Params[0].Value:=kin;
  Query_edit_sale_not_all_quantity.Params[1].Value:=tye;
  Query_edit_sale_not_all_quantity.Params[2].Value:=quan;
  Query_edit_sale_not_all_quantity.Params[3].Value:=ava;
  Query_edit_sale_not_all_quantity.Params[4].Value:=buy_price;
  Query_edit_sale_not_all_quantity.Params[5].Value:=sale_piece_price;
  Query_edit_sale_not_all_quantity.Params[6].Value:=bring_date;
  Query_edit_sale_not_all_quantity.open;
  Query_edit_in_sale_price_in_gain.Close;
Query_edit_in_sale_price_in_gain.Prepare;
Query_edit_in_sale_price_in_gain.Params[0].Value:=Query_edit_sale_not_all_quantity['no_in_gain_table'];
Query_edit_in_sale_price_in_gain.open;
Query_edit_in_sale_price_in_gain.Edit;
Query_edit_in_sale_price_in_gain['sale_price']:=edit7.Text;
Query_edit_in_sale_price_in_gain.Post;
  Query_edit_sale_not_all_quantity.Edit;
  Query_edit_sale_not_all_quantity['st_type_sale']:=strtofloat(edit7.Text);
  Query_edit_sale_not_all_quantity.Post;
  edit7.Text:='';
  radiobutton1.Checked:=false;
  radiobutton2.Checked:=false;
panel7.Visible:=false;
bitbtn9.Enabled:=false;
bitbtn10.Enabled:=false;
bitbtn2.Enabled:=false;
bitbtn6.Enabled:=false;
application.MessageBox(' „ Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
query1.Close;
query1.Open;
 end
 ////////////////////////////////
 else
 begin
 application.MessageBox('«·—Ã«¡ «Œ Ì«— «·ﬂ„Ì… «·„—«œ  €Ì— «·”⁄— ·Â«',' ‰»ÌÂ',mb_iconwarning+mb_ok);
 exit;
 end;
end;
end;

procedure TForm5.BitBtn10Click(Sender: TObject);
begin
panel6.Visible:=false;
panel7.Visible:=true;
panel8.Visible:=false;
edit7.SetFocus;
end;

procedure TForm5.BitBtn14Click(Sender: TObject);
var
count,n:integer;
x:variant;
buy_price,sale_price:real;
begin
count:=1;
if (combobox5.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— «”„ «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if (combobox6.Text='') then
begin
application.MessageBox('«·—Ã«¡ «Œ Ì«— «”„ «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if (edit9.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬂ„Ì… «·«Ã„«·Ì…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if (edit10.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ”⁄— «·‘—«¡',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if (edit11.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ”⁄— «·»Ì⁄ ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if(strtofloat(edit10.Text) > strtofloat(edit11.Text))then
begin
n:=application.messagebox('”⁄— «·‘—«¡ √ﬂ»— „‰ ”⁄— «·»Ì⁄ Â·  —Ìœ  Œ“Ì‰ «·»Ì«‰« ','„‰ŸÊ„… «·Õ”«»« ',mb_iconquestion+mb_yesno);
if(n=id_no)then
begin
exit;
end;
end;
Query_max_st_no.Close;
Query_max_st_no.Prepare;
Query_max_st_no.Open;
Query_max_no_in_gain_and_storge.Close;
Query_max_no_in_gain_and_storge.Prepare;
Query_max_no_in_gain_and_storge.Open;
Query_max_from_gain_table.Close;
Query_max_from_gain_table.Prepare;
Query_max_from_gain_table.Open;
query_input_to_storge.Close;
query_input_to_storge.Prepare;
query_input_to_storge.Open;
query_input_to_storge.Append;
if(Query_max_st_no['max']=null)then
begin
query_input_to_storge['st_no']:=1;
end
else
begin
query_input_to_storge['st_no']:=Query_max_st_no['max']+1;
end;
query_input_to_storge['st_kind']:=combobox5.Text;
query_input_to_storge['st_type']:=combobox6.Text;
query_input_to_storge['st_quantity']:=edit9.Text;
query_input_to_storge['st_type_pay']:=strtofloat(edit10.Text);
query_input_to_storge['st_availble']:=edit9.Text;
query_input_to_storge['st_type_sale']:=strtofloat(edit11.Text);
query_input_to_storge['st_stored_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
if(edit8.Text='')then
begin
query_input_to_storge['shelf_no']:=0;
end
else
begin
query_input_to_storge['shelf_no']:=edit8.Text;
end;
if(Query_max_no_in_gain_and_storge['max']=null)then
begin
query_input_to_storge['no_in_gain_table']:=1;
end
else
begin
query_input_to_storge['no_in_gain_table']:=Query_max_no_in_gain_and_storge['max']+1;
end;
query_input_to_storge.Post;
Query_save_in_gain_budget.Close;
Query_save_in_gain_budget.Prepare;
Query_save_in_gain_budget.Open;
Query_save_in_gain_budget.Append;
if(Query_max_from_gain_table['max']=null)then
begin
Query_save_in_gain_budget['num']:=1;
end
else
begin
Query_save_in_gain_budget['num']:=Query_max_from_gain_table['max']+1;
end;
Query_save_in_gain_budget['kind']:=combobox5.Text;
Query_save_in_gain_budget['type_name']:=combobox6.Text;
Query_save_in_gain_budget['quantity']:=edit9.Text;
Query_save_in_gain_budget['availble']:=edit9.Text;
Query_save_in_gain_budget['input_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
Query_save_in_gain_budget['buy_price']:=strtofloat(edit10.Text);
Query_save_in_gain_budget['total_buy_price']:=(strtofloat(edit10.Text)) * (strtoint(edit9.Text));
Query_save_in_gain_budget['sale_price']:=strtofloat(edit11.Text);
if(Query_max_no_in_gain_and_storge['max']=null)then
begin
Query_save_in_gain_budget['no_in_storge']:=1;
end
else
begin
Query_save_in_gain_budget['no_in_storge']:=Query_max_no_in_gain_and_storge['max']+1;
end;
Query_save_in_gain_budget.Post;
application.MessageBox(' „  Œ“Ì‰ «·»÷«⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox5.ClearSelection;
combobox6.Clear;
edit9.Text:='';
edit10.Text:='';
edit11.Text:='';
edit8.Text:='';
query1.Close;
query1.Prepare;
query1.Open;
end;
procedure TForm5.BitBtn17Click(Sender: TObject);
begin
combobox5.Clear;
panel9.Visible:=true;
panel3.Visible:=false;
Query_bring_kinds.Close;
Query_bring_kinds.Prepare;
Query_bring_kinds.Open;
while(not(Query_bring_kinds.Eof)) do
begin
combobox5.Items.Add(Query_bring_kinds['kinds_name']);
Query_bring_kinds.Next;
end;
end;

procedure TForm5.ComboBox5Click(Sender: TObject);
begin
combobox6.Clear;
query_bring_types.Close;
query_bring_types.Prepare;
query_bring_types.Params[0].Value:=combobox5.Text;
query_bring_types.Open;
while(not(query_bring_types.Eof))do
begin
combobox6.Items.Add(query_bring_types['type_name']);
query_bring_types.Next;
end;
end;

procedure TForm5.BitBtn3Click(Sender: TObject);
var
count:integer;
begin
count:=1;
if (edit1.text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «”„ «·„ ’—›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
if (edit3.text='')then
begin
application.MessageBox('«·—Ã«¡ «œŒ«· «·„»·€',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
query_enter_spend.Close;
query_enter_spend.Prepare;
query_enter_spend.Open;
query_enter_spend.Append;
query_enter_spend['sp_name']:=edit1.Text;
query_enter_spend['sp_cause']:=edit2.Text;
query_enter_spend['sp_amount']:=edit3.Text;
query_enter_spend['sp_date']:=(formatdatetime('dd/mm/yyyy',DateTimePicker3.date));
query_enter_spend.Post;
query_enter_spend.Close;
query_enter_spend.Prepare;
query_enter_spend.Open;
while(not(query_enter_spend.Eof))do
begin
query_enter_spend.Edit;
query_enter_spend['sp_no']:=count;
count:=count+1;
query_enter_spend.Next;
end;
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
application.MessageBox(' „ Õ›Ÿ «·„’—Ê›« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);

end;
procedure TForm5.BitBtn4Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
end;

procedure TForm5.ComboBox2Click(Sender: TObject);
begin
combobox3.Clear;
Query_types_for_gobad.Close;
Query_types_for_gobad.Prepare;
Query_types_for_gobad.Params[0].Value:=combobox2.Text;
Query_types_for_gobad.Open;
while(not(Query_types_for_gobad.Eof))do
begin
combobox3.Items.Add(Query_types_for_gobad['type_name']);
Query_types_for_gobad.Next;
end;
end;
procedure TForm5.ComboBox3Click(Sender: TObject);
begin
edit13.Text:='0';
Query_availble_for_gobad.Close;
Query_availble_for_gobad.Prepare;
Query_availble_for_gobad.Params[0].Value:=combobox2.Text;
Query_availble_for_gobad.Params[1].Value:=combobox3.Text;
Query_availble_for_gobad.Open;
if (Query_availble_for_gobad.RecordCount<>0)then
begin
if( Query_availble_for_gobad['sum']>0)then
begin
edit13.Text:=Query_availble_for_gobad['sum'];
bitbtn1.Enabled:=true;
end
else
begin
bitbtn1.Enabled:=false;
end;
end;
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
var
want:integer;
begin
if( combobox2.Text='')then
begin
application.MessageBox('«·—Ã«¡ «Œ Ì«— «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox2.SetFocus;
exit;
end;
if( combobox3.Text='')then
begin
application.MessageBox('«·—Ã«¡ «Œ Ì«— «·‰Ê⁄',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox3.SetFocus;
exit;
end;
if( edit4.Text='')then
begin
application.MessageBox('«·—Ã«¡  ÕœÌœ «·ﬂ„Ì… «· «·›…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit4.SetFocus;
exit;
end;

want:=strtoint(edit4.text);
if( strtoint(edit4.Text)>strtoint(edit13.Text))then
begin
application.MessageBox('«·—Ã«¡ «· √ﬂœ „‰ «·ﬂ„Ì… «· «·›Â ·√‰Â« √ﬂ»— „‰ «·„ Ê›—Â ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit4.SetFocus;
exit;
end
else
begin
Query_discount_because_dameged.Close;
Query_discount_because_dameged.Prepare;
Query_discount_because_dameged.Params[0].Value:=combobox2.Text;
Query_discount_because_dameged.Params[1].Value:=combobox3.Text;
Query_discount_because_dameged.Open;
while(not(Query_discount_because_dameged.Eof))do
begin//1
if (want>0)then
begin//2
if(strtoint(Query_discount_because_dameged['st_availble'])>=want)then
begin //3
if(strtoint(Query_discount_because_dameged['st_availble'])=want)then
begin
Query_discount_because_dameged.Delete;
want:=0;
end
else
begin
Query_discount_because_dameged.Edit;
Query_discount_because_dameged['st_availble']:=strtoint(Query_discount_because_dameged['st_availble'])-want;
want:=0;
end;
end//3
else
begin//4
if(strtoint(Query_discount_because_dameged['st_availble'])<want)then
begin//5
want:=want-strtoint(Query_discount_because_dameged['st_availble']);
Query_discount_because_dameged.Edit;
Query_discount_because_dameged['st_availble']:=0;
end;//5
end;//4
end;//2
Query_discount_because_dameged.Next;
end;//1
application.MessageBox(' „ Œ’„ «·ﬂ„Ì… «· «·›Â „‰ «·„Œ“‰ ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox2.ClearSelection;
combobox3.ClearSelection;
edit13.Text:='';
edit4.Text:='';
end;
end;

procedure TForm5.BitBtn15Click(Sender: TObject);
begin
combobox5.ClearSelection;
combobox6.Clear;
edit9.Text:='';
edit10.Text:='';
edit11.Text:='';
end;

procedure TForm5.BitBtn16Click(Sender: TObject);
begin
panel9.Visible:=false;
panel3.Visible:=true;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
edit5.Text:='';
DateTimePicker3.Date:=now;
DateTimePicker2.Date:=now;
combobox4.Clear;
Query_bring_kinds.Close;
Query_bring_kinds.Prepare;
Query_bring_kinds.Open;
while(not(Query_bring_kinds.Eof)) do
begin
combobox4.Items.Add(Query_bring_kinds['kinds_name']);
Query_bring_kinds.Next;
end;
end;

procedure TForm5.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['?'..'?']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'-']))OR (KEY IN(['/'..'/']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))or (key in(['?'..'?'])) or (key in(['?'..'?'])) or (key in(['?'..'˜'])) or (key in(['?'..'?'])) or (key in(['í'..'?'])) or (key in(['?'..'ë'])) or (key in(['?'..'?'])) or (key in(['?'..'?'])))then
begin
   edit10.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 edit10.ReadOnly:=FALSE;
end;
end;

procedure TForm5.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['?'..'?']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'-']))OR (KEY IN(['/'..'/']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))or (key in(['?'..'?'])) or (key in(['?'..'?'])) or (key in(['?'..'˜'])) or (key in(['?'..'?'])) or (key in(['í'..'?'])) or (key in(['?'..'ë'])) or (key in(['?'..'?'])) or (key in(['?'..'?'])))then
begin
   edit11.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 edit11.ReadOnly:=FALSE;
end;
end;

procedure TForm5.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['?'..'?']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'-']))OR (KEY IN(['/'..'/']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))or (key in(['?'..'?'])) or (key in(['?'..'?'])) or (key in(['?'..'˜'])) or (key in(['?'..'?'])) or (key in(['í'..'?'])) or (key in(['?'..'ë'])) or (key in(['?'..'?'])) or (key in(['?'..'?'])))then
begin
   edit6.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 edit6.ReadOnly:=FALSE;
end;
end;

procedure TForm5.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['?'..'?']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'-']))OR (KEY IN(['/'..'/']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))or (key in(['?'..'?'])) or (key in(['?'..'?'])) or (key in(['?'..'˜'])) or (key in(['?'..'?'])) or (key in(['í'..'?'])) or (key in(['?'..'ë'])) or (key in(['?'..'?'])) or (key in(['?'..'?'])))then
begin
   edit7.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 edit7.ReadOnly:=FALSE;
end;
end;

procedure TForm5.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['?'..'?']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'-']))OR (KEY IN(['/'..'/']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))or (key in(['?'..'?'])) or (key in(['?'..'?'])) or (key in(['?'..'˜'])) or (key in(['?'..'?'])) or (key in(['í'..'?'])) or (key in(['?'..'ë'])) or (key in(['?'..'?'])) or (key in(['?'..'?'])))then
begin
   edit3.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 edit3.ReadOnly:=FALSE;
end;
end;

procedure TForm5.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['?'..'?']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'-']))OR (KEY IN(['/'..'/']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))or (key in(['?'..'?'])) or (key in(['?'..'?'])) or (key in(['?'..'˜'])) or (key in(['?'..'?'])) or (key in(['í'..'?'])) or (key in(['?'..'ë'])) or (key in(['?'..'?'])) or (key in(['?'..'?'])) OR (KEY IN(['.'..'.'])))then
begin
   edit4.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 edit4.ReadOnly:=FALSE;
end;
end;

procedure TForm5.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/'])) OR (KEY IN(['˜'..'˜'])) OR (KEY IN(['?'..'?'])) OR (KEY IN(['í'..'í'])) OR (KEY IN(['◊'..'◊'])) OR (KEY IN(['?'..'?'])) OR (KEY IN(['ë'..'ë'])) OR (KEY IN(['?'..'?']))) then
begin
   Edit1.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 Edit1.ReadOnly:=FALSE;
end;
end;

procedure TForm5.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/'])) OR (KEY IN(['˜'..'˜'])) OR (KEY IN(['?'..'?'])) OR (KEY IN(['í'..'í'])) OR (KEY IN(['◊'..'◊'])) OR (KEY IN(['?'..'?'])) OR (KEY IN(['ë'..'ë'])) OR (KEY IN(['?'..'?']))) then
begin
   Edit2.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 Edit2.ReadOnly:=FALSE;
end;
end;

procedure TForm5.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
var
count:integer;
begin
count:=1;
bitbtn10.Enabled:=false;
bitbtn9.Enabled:=false;
query_input_to_storge.Close;
query_input_to_storge.Prepare;
query_input_to_storge.Open;
while(not(query_input_to_storge.Eof))do
begin
query_input_to_storge.Edit;
query_input_to_storge['st_no']:=count;
count:=count+1;
query_input_to_storge.Next;
end;
end;

procedure TForm5.Edit5Change(Sender: TObject);
begin
if(combobox4.Text='')then
begin
application.MessageBox('«·—Ã«¡ «Œ Ì«— «·’‰›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox4.SetFocus;
exit;
end;
if(edit5.Text<>'')then
begin
query1.SQL.Clear;
query1.Close;
query1.SQL.Add(' select * from storge where st_type like "' + edit5.Text + '%" and st_kind ="' + combobox4.Text +' " ' );
query1.Open;
end
else
begin
query1.SQL.Clear;
query1.Close;
query1.SQL.Add(' select * from storge order by st_stored_date');
query1.Open;
end;

end;

procedure TForm5.ComboBox4Change(Sender: TObject);
begin
edit5.Text:='';
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
form24.Show;
end;


procedure TForm5.BitBtn6Click(Sender: TObject);
begin
Query_edit_shelf_no.Close;
Query_edit_shelf_no.Prepare;
Query_edit_shelf_no.Params[0].Value:=kin;
Query_edit_shelf_no.Params[1].Value:=tye;
Query_edit_shelf_no.Params[2].Value:=quan;
Query_edit_shelf_no.Params[3].Value:=ava;
Query_edit_shelf_no.Params[4].Value:=buy_price;
Query_edit_shelf_no.Params[5].Value:=sale_piece_price;
Query_edit_shelf_no.Params[6].Value:=bring_date;
Query_edit_shelf_no.Open;
panel6.Visible:=false;
panel7.Visible:=false;
panel8.Visible:=true;
edit12.SetFocus;
Query_edit_shelf_no.Edit;
end;

procedure TForm5.BitBtn7Click(Sender: TObject);
begin
if (edit12.Text='')then
begin
 application.MessageBox('«·—Ã«¡ «œŒ«· —ﬁ„ «·—› «·ÃœÌœ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
 edit12.SetFocus;
 exit;
 end;
Query_edit_shelf_no['shelf_no']:=strtoint(edit12.Text);
Query_edit_shelf_no.Post;
application.MessageBox(' „ Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
query1.Close;
query1.Open;
edit12.Text:='';
panel8.Visible:=false;
bitbtn9.Enabled:=false;
bitbtn10.Enabled:=false;
bitbtn2.Enabled:=false;
bitbtn6.Enabled:=false;

end;

procedure TForm5.BitBtn12Click(Sender: TObject);
begin
form5.Hide;
form16.Show;
end;

end.
