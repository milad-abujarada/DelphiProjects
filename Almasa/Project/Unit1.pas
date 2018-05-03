unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DB, DBTables, DBCtrls, Grids, DBGrids,
  Buttons, ComCtrls, Menus, jpeg, IBDatabase, IBCustomDataSet, IBQuery,
  QRCtrls, QuickRpt;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    DataSource1: TDataSource;
    Query1: TQuery;
    Database1: TDatabase;
    Query2: TQuery;
    Query3: TQuery;
    Query4: TQuery;
    Query1CUS_NAME: TStringField;
    Query1EMP_NAME: TStringField;
    Query1WANT: TStringField;
    Query1RES_NUM: TIntegerField;
    Query1PRICE: TFloatField;
    Query1PAID: TFloatField;
    Query1REMAING: TFloatField;
    Query1DAILY_DATE: TStringField;
    Query2N1: TIntegerField;
    Query2D1: TIntegerField;
    Query2N2: TIntegerField;
    Query2D2: TIntegerField;
    Query2N3: TIntegerField;
    Query2D3: TIntegerField;
    Query2N4: TIntegerField;
    Query2D4: TIntegerField;
    Query2N5: TIntegerField;
    Query2D5: TIntegerField;
    Query2N6: TIntegerField;
    Query2D6: TIntegerField;
    Query2RES_NUM: TIntegerField;
    DataSource2: TDataSource;
    Panel4: TPanel;
    Query5: TQuery;
    Panel5: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox7: TCheckBox;
    Panel6: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    Panel7: TPanel;
    Panel8: TPanel;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Panel9: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    Panel11: TPanel;
    Label27: TLabel;
    Panel12: TPanel;
    Query4EMP_NAME: TStringField;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Query6: TQuery;
    DataSource5: TDataSource;
    Panel13: TPanel;
    Panel2: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DateTimePicker2: TDateTimePicker;
    Edit2: TEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    BitBtn4: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn5: TBitBtn;
    Label10: TLabel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Label15: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel19: TPanel;
    Label17: TLabel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Label19: TLabel;
    MaskEdit6: TMaskEdit;
    Label29: TLabel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Label21: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    Label32: TLabel;
    Label25: TLabel;
    Label23: TLabel;
    Label30: TLabel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Label20: TLabel;
    Label26: TLabel;
    DateTimePicker5: TDateTimePicker;
    BitBtn19: TBitBtn;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Label14: TLabel;
    Label16: TLabel;
    DateTimePicker3: TDateTimePicker;
    BitBtn6: TBitBtn;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Button1: TButton;
    Panel36: TPanel;
    Panel37: TPanel;
    Label31: TLabel;
    Panel38: TPanel;
    Label34: TLabel;
    DateTimePicker6: TDateTimePicker;
    Panel39: TPanel;
    Label35: TLabel;
    Panel40: TPanel;
    Label36: TLabel;
    MaskEdit7: TMaskEdit;
    Query7: TQuery;
    DataSource6: TDataSource;
    BitBtn18: TBitBtn;
    BitBtn20: TBitBtn;
    Query1SERIAL_NUM: TIntegerField;
    DateTimePicker4: TDateTimePicker;
    Panel41: TPanel;
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    DataSource7: TDataSource;
    Query8: TQuery;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    DataSource8: TDataSource;
    Query9: TQuery;
    Query9SERIAL_NUM: TIntegerField;
    Query9CUS_NAME: TStringField;
    Query9EMP_NAME: TStringField;
    Query9WANT: TStringField;
    Query9RES_NUM: TIntegerField;
    Query9PRICE: TFloatField;
    Query9PAID: TFloatField;
    Query9REMAING: TFloatField;
    Query9DAILY_DATE: TStringField;
    Query5CUS_NAME: TStringField;
    Query5EMP_NAME: TStringField;
    Query5WANT: TStringField;
    Query5RES_NUM: TIntegerField;
    Query5PRICE: TFloatField;
    Query5PAID: TFloatField;
    Query5REMAING: TFloatField;
    Query5DAILY_DATE: TStringField;
    Query5SERIAL_NUM: TIntegerField;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    DataSource9: TDataSource;
    Query10: TQuery;
    Query10NAME: TStringField;
    Query10MONEY: TFloatField;
    Query10SPEND_DATE: TStringField;
    Query10SERIAL_NUM: TIntegerField;
    Query8CUS_NAME: TStringField;
    Query8EMP_NAME: TStringField;
    Query8WANT: TStringField;
    Query8RES_NUM: TIntegerField;
    Query8PRICE: TFloatField;
    Query8PAID: TFloatField;
    Query8REMAING: TFloatField;
    Query8DAILY_DATE: TStringField;
    Query8SERIAL_NUM: TIntegerField;
    Query8N1: TIntegerField;
    Query8D1: TIntegerField;
    Query8N2: TIntegerField;
    Query8D2: TIntegerField;
    Query8N3: TIntegerField;
    Query8D3: TIntegerField;
    Query8N4: TIntegerField;
    Query8D4: TIntegerField;
    Query8N5: TIntegerField;
    Query8D5: TIntegerField;
    Query8N6: TIntegerField;
    Query8D6: TIntegerField;
    Query8RES_NUM_1: TIntegerField;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRImage2: TQRImage;
    QRImage3: TQRImage;
    QRImage4: TQRImage;
    QRImage5: TQRImage;
    QRImage6: TQRImage;
    QRImage7: TQRImage;
    QRImage8: TQRImage;
    QRImage9: TQRImage;
    QRImage10: TQRImage;
    QRImage11: TQRImage;
    QRImage12: TQRImage;
    QRImage13: TQRImage;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel38: TQRLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Panel46: TPanel;
    BitBtn8: TBitBtn;
    BitBtn39: TBitBtn;
    BitBtn40: TBitBtn;
    BitBtn41: TBitBtn;
    QRLabel39: TQRLabel;
    QRDBText6: TQRDBText;
    Query9STATUS: TStringField;
    Query8STATUS: TStringField;
    Query7CUS_NAME: TStringField;
    Query7EMP_NAME: TStringField;
    Query7WANT: TStringField;
    Query7RES_NUM: TIntegerField;
    Query7PRICE: TFloatField;
    Query7PAID: TFloatField;
    Query7REMAING: TFloatField;
    Query7DAILY_DATE: TStringField;
    Query7SERIAL_NUM: TIntegerField;
    Query7STATUS: TStringField;
    Query6NAME: TStringField;
    Query6MONEY: TFloatField;
    Query6SPEND_DATE: TStringField;
    Query6SERIAL_NUM: TIntegerField;
    Query5STATUS: TStringField;
    Query1STATUS: TStringField;
    ComboBox3: TComboBox;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    QRLabel40: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel41: TQRLabel;
    Label57: TLabel;
    Panel47: TPanel;
    Panel49: TPanel;
    Edit8: TEdit;
    Panel50: TPanel;
    Panel51: TPanel;
    DBGrid4: TDBGrid;
    Panel52: TPanel;
    BitBtn21: TBitBtn;
    Label58: TLabel;
    DataSource10: TDataSource;
    Query11: TQuery;
    Query11CUS_NAME: TStringField;
    Query11EMP_NAME: TStringField;
    Query11WANT: TStringField;
    Query11RES_NUM: TIntegerField;
    Query11PRICE: TFloatField;
    Query11PAID: TFloatField;
    Query11REMAING: TFloatField;
    Query11DAILY_DATE: TStringField;
    Query11SERIAL_NUM: TIntegerField;
    Query11STATUS: TStringField;
    BitBtn22: TBitBtn;
    Panel48: TPanel;
    Label59: TLabel;
    BitBtn24: TBitBtn;
    Panel53: TPanel;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    Image1: TImage;
    Panel54: TPanel;
    Panel55: TPanel;
    Label60: TLabel;
    StaticText3: TStaticText;
    Label62: TLabel;
    StaticText1: TStaticText;
    Label63: TLabel;
    StaticText2: TStaticText;
    Label64: TLabel;
    Edit9: TEdit;
    Query12: TQuery;
    DataSource11: TDataSource;
    DBGrid5: TDBGrid;
    BitBtn23: TBitBtn;
    BitBtn27: TBitBtn;
    Panel56: TPanel;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    DateTimePicker7: TDateTimePicker;
    DataSource12: TDataSource;
    Query_max_serial: TQuery;
    Query_max_serialMAX: TIntegerField;
    QRLabel42: TQRLabel;
    BitBtn9: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    Query13: TQuery;
    DataSource13: TDataSource;
    Edit10: TEdit;
    Label72: TLabel;
    Label73: TLabel;
    Edit11: TEdit;
    Panel57: TPanel;
    Timer1: TTimer;
    Label22: TLabel;
    Query6TYP: TStringField;
    Query10TYP: TStringField;
    Query12CUS_NAME: TStringField;
    Query12EMP_NAME: TStringField;
    Query12WANT: TStringField;
    Query12RES_NUM: TIntegerField;
    Query12PRICE: TFloatField;
    Query12PAID: TFloatField;
    Query12REMAING: TFloatField;
    Query12DAILY_DATE: TStringField;
    Query12SERIAL_NUM: TIntegerField;
    Query12STATUS: TStringField;
    Label24: TLabel;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Label61: TLabel;
    Query13ID: TIntegerField;
    Query13INPUT_DAILY: TIntegerField;
    Query13UPDATE_DAILY: TIntegerField;
    Query13INPUT_SPEND: TIntegerField;
    Query13UPDATE_SPEND: TIntegerField;
    Query13USERS: TIntegerField;
    Query13PREDECESSER: TIntegerField;
    Query13U_NAME: TStringField;
    Query13U_PASSWORD: TIntegerField;
    Query13INPUT_GOODS: TIntegerField;
    Query13UPDATE_GOODS: TIntegerField;
    Query13CALCULATE_SPEND: TIntegerField;
    Query13INCOME_DAILY: TIntegerField;
    Query13EMPLOYEE: TIntegerField;
    Query3NAME: TStringField;
    Query3MONEY: TFloatField;
    Query3SPEND_DATE: TStringField;
    Query3SERIAL_NUM: TIntegerField;
    Query3TYP: TStringField;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    Query14: TQuery;
    DataSource14: TDataSource;
    Query14SERAIL_NUM: TIntegerField;
    Query14VARIETY_NAME: TStringField;
    Query14TYPE_NAME: TStringField;
    Query14QUANTITY: TIntegerField;
    Query14QUANTITY_AVAILABLE: TIntegerField;
    Query14BUY_PRICE: TFloatField;
    Query14SALE_PRICE: TFloatField;
    Query14DATE_INPUT: TStringField;
    Query14DATE_EX: TStringField;
    Query14DATE_OUTPUT: TStringField;
    Query15: TQuery;
    DataSource15: TDataSource;
    Query15NAME: TStringField;
    Query15MONEY: TFloatField;
    Query15SPEND_DATE: TStringField;
    Query15SERIAL_NUM: TIntegerField;
    Query15TYP: TStringField;
    DateTimePicker8: TDateTimePicker;
    Label65: TLabel;
    Label66: TLabel;
    DateTimePicker9: TDateTimePicker;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure DateTimePicker6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn21Click(Sender: TObject);
    procedure MaskEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel23Click(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure DateTimePicker3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateTimePicker4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn20KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn39Click(Sender: TObject);
    procedure BitBtn40Click(Sender: TObject);
    procedure BitBtn41Click(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure BitBtn26Click(Sender: TObject);
    procedure DateTimePicker5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure Edit3Change(Sender: TObject);
    procedure Edit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn29Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn28Click(Sender: TObject);
    procedure ComboBox5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn31KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    res_num_for_print:integer;
    user_name:string;
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit8;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
a:boolean;
 count:integer;
 temp:string;
begin
count:=0;
if (edit1.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ≈”„ «·“»Ê‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit;
end;
if (combobox1.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— ≈”„ «·„ÊŸ›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox1.SetFocus;
exit;
end;
if (combobox2.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— ‰Ê⁄ «·⁄„· «·„‰Ã“',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox2.SetFocus;
exit;
end;
if (Edit3.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… «·„œ›Ê⁄…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit3.SetFocus;
exit;
end;
if (Edit6.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·À„‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
Edit6.SetFocus;
exit;
end;

if (combobox3.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈Œ Ì«— Õ«·… «·≈” ·«„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox3.SetFocus;
exit;
end;

 if (((combobox2.Text='„»Ì⁄«  √Œ—Ï'))or ((combobox2.Text=' ’ÊÌ— „” ‰œ« ')or (combobox2.Text=' €·Ì› »ÿ«ﬁ« ')or (combobox2.Text='ÿ»«⁄… «·’Ê—'))) then
 begin
Edit4.Visible:=false;
Edit5.Visible:=false;
label5.Visible:=false;
label8.Visible:=false;
panel5.Enabled:=false;
query1.open;
query1.append;
query1['cus_name']:=edit1.Text;
query1['emp_name']:=ComboBox1.Text;
query1['want']:=ComboBox2.Text;
query1['price']:=Edit6.Text;
query1['daily_date']:=datetostr(DateTimePicker1.Date);
query1['paid']:=Edit3.Text;
Query_max_serial.Close;
Query_max_serial.Prepare;
Query_max_serial.Open;
if(Query_max_serial['max']=null)then
begin
query1['serial_num']:=1;
end
else
begin
query1['serial_num']:=Query_max_serial['max']+1;
end;
query1['status']:=ComboBox3.Text;
query1.post;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
BitBtn2.Enabled:=false;
query1.close;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
CheckBox3.Checked:=false;
CheckBox4.Checked:=false;
CheckBox5.Checked:=false;
CheckBox6.Checked:=false;
CheckBox7.Checked:=false;
CheckBox8.Checked:=false;
CheckBox9.Checked:=false;
CheckBox10.Checked:=false;
CheckBox11.Checked:=false;
CheckBox12.Checked:=false;
edit1.Text:='';
ComboBox1.ClearSelection;
combobox2.ClearSelection;
combobox3.ClearSelection;
Edit3.Text:='';
DateTimePicker1.Date:=now;
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
 end
 else
  begin
  /////////////////////////////////////
 { query1.Close;
  query1.open;
a:=false;
while((not(query1.eof))and(a=false))do
begin
if(query1['res_num']=edit4.text)then
a:=true;
query1.next;
end;
query1.close;
if(a=true)then
begin
application.MessageBox('”»ﬁ ≈œŒ«· Â–« «·—ﬁ„','Œÿ√',mb_iconerror+mb_ok);
edit4.SetFocus;
exit;
 end; }
     /////////////////////////////
     if(edit5.Text='')then
     begin
     application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„… «·„ »ÌﬁÌ…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit5.SetFocus;
exit;
     end;
query1.Close;
query1.Open;
a:=false;
while(not(query1.Eof)and (a=false))do
begin
query2.Open;
query2.Append;
query2['res_num']:=Edit4.Text;
if(CheckBox1.Checked=true)then
query2['n1']:=1;


if(CheckBox2.Checked=true)then
query2['d1']:=1;

if(CheckBox3.Checked=true)then
query2['n2']:=1;

if(CheckBox4.Checked=true)then
query2['d2']:=1;

if(CheckBox5.Checked=true)then
query2['n3']:=1;

if(CheckBox6.Checked=true)then
query2['d3']:=1;

if(CheckBox7.Checked=true)then
query2['n4']:=1;

if(CheckBox8.Checked=true)then
query2['d4']:=1;

if(CheckBox9.Checked=true)then
query2['n5']:=1;

if(CheckBox10.Checked=true)then
query2['d5']:=1;

if(CheckBox11.Checked=true)then
query2['n6']:=1;

if(CheckBox12.Checked=true)then
query2['d6']:=1;
query2.Post;
query2.close;


query1.open;
query1.append;
query1['cus_name']:=edit1.Text;
query1['emp_name']:=ComboBox1.Text;
query1['want']:=ComboBox2.Text;
query1['price']:=Edit6.Text;
query1['res_num']:=Edit4.text;
query1['daily_date']:=datetostr(DateTimePicker1.Date);
query1['paid']:=Edit3.Text;
query1['remaing']:=Edit5.Text;
Query_max_serial.Close;
Query_max_serial.Prepare;
Query_max_serial.Open;
if(Query_max_serial['max']=null)then
begin
query1['serial_num']:=1;
end
else
begin
query1['serial_num']:=Query_max_serial['max']+1;
end;
query1['status']:=combobox3.Text;
/////////// „ €Ì— «·„” Œœ„ ›Ì ÿ»«⁄… «·Ê«’· Ì«Œœ ﬁÌ„… «·Ê«’·//////////
res_num_for_print:=strtoint(Edit4.text);
temp:=ComboBox2.Text;
query1.post;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
 edit1.SetFocus;
  query1.close;
 



 if (((temp='„»Ì⁄«  √Œ—Ï'))or ((temp=' ’ÊÌ— „” ‰œ« ')or (temp=' €·Ì› »ÿ«ﬁ« '))) then
 BitBtn2.Enabled:=false
else
BitBtn2.Enabled:=true;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
CheckBox3.Checked:=false;
CheckBox4.Checked:=false;
CheckBox5.Checked:=false;
CheckBox6.Checked:=false;
CheckBox7.Checked:=false;
CheckBox8.Checked:=false;
CheckBox9.Checked:=false;
CheckBox10.Checked:=false;
CheckBox11.Checked:=false;
CheckBox12.Checked:=false;
edit1.Text:='';
ComboBox1.ClearSelection;
combobox2.ClearSelection;
combobox3.ClearSelection;
Edit3.Text:='';
DateTimePicker1.Date:=now;
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
end;
///////// Õ”«» ⁄œœ «·ÕﬁÊ· ///////
{count:=count+1;
query9.Open;
while (not(query9.Eof)) do
begin
query9.Edit;
query9['serial_num']:=count;
query9.Post;
query9.Next;
count:=count+1;
end;
query9.Close;}
////////////////////////////////
 end;
  end;
    

procedure TForm1.BitBtn4Click(Sender: TObject);
var
a:boolean;
count1:integer;
begin
count1:=1;
if (edit2.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·≈”„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
exit;
end;

if (Edit7.Text='') then
  begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· «·ﬁÌ„…',' ‰»ÌÂ',mb_iconwarning+mb_ok);
Edit7.SetFocus;
exit;
end;

if (combobox4.Text='') then
  begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ‰Ê⁄ «·„’—Ê›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
combobox4.SetFocus;
exit;
end;

query3.Open;
query3.Append;
query3['name']:= edit2.Text;
query3['money']:= Edit7.Text;
query3['typ']:= combobox4.Text;
query3['spend_date']:=datetostr(DateTimePicker2.Date);
query3['serial_num']:= count1;
query3.Post;
query3.Close;
application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
///////// Õ”«» ⁄œœ «·ÕﬁÊ· ///////
count1:=count1+1;
query10.Open;
while (not(query10.Eof)) do
begin
query10.Edit;
query10['serial_num']:=count1;
query10.Post;
query10.Next;
count1:=count1+1;
end;
query10.Close;
////////////////////////////////


end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
form1.Hide;
form3.Show;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
var
a1:integer;
a:boolean;
begin
  a1:=0;
  a:=false;
  query1.Close;
  query1.open;
  while(not(query1.Eof))and(a=false)do
  begin
  if(query1['res_num']<>'0')then
  begin
  a1:=query1['res_num'];
  query1.Next;
  end
  else
  query1.Next;
  end;
  if(not(a))then
  begin
  a1:=a1+1;
  end;
  edit4.Text:=inttostr(a1);
  query1.Close;
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
if(key=13)then
combobox1.SetFocus;
end;

procedure TForm1.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
combobox2.SetFocus;
end;

procedure TForm1.ComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13)then
 begin
 edit6.SetFocus;


end;
 end;






procedure TForm1.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if(key=13)then
datetimepicker1.SetFocus;
end;

procedure TForm1.DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13)then
begin
edit1.SetFocus;
end;

end;

procedure TForm1.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
Edit5.SetFocus;
end;

procedure TForm1.MaskEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
Edit6.SetFocus;
end;
procedure TForm1.BitBtn11Click(Sender: TObject);
var
a1:integer;
a:boolean;
begin
  a1:=0;
  a:=false;
  query1.Close;
  query1.open;
  while(not(query1.Eof))and(a=false)do
  begin
  if(query1['res_num']<>'0')then
  begin
  a1:=query1['res_num'];
  query1.Next;
  end
  else
  query1.Next;
  end;
  if(not(a))then
  begin
  a1:=a1+1;
  end;
  edit4.Text:=inttostr(a1);
  query1.Close;



database1.Connected:=false;
database1.Connected:=true;
panel1.Visible:=true;
panel10.Visible:=false;
panel11.Visible:=false;
panel12.Visible:=false;
panel13.Visible:=false;
panel3.Visible:=false;
panel4.Visible:=false;
panel36.Visible:=false;
DateTimePicker1.Date:=now;
edit1.SetFocus;
query4.open;
while(not(query4.Eof))do
begin
combobox1.Items.Add(query4['emp_name']);
query4.Next;
end;
query4.Close;
end;
procedure TForm1.BitBtn16Click(Sender: TObject);
var
n:integer;
begin
n:=application.messagebox('Â·  —Ìœ »«· √ﬂÌœ «·Œ—ÊÃ „‰ «·„‰ŸÊ„…','„‰ŸÊ„… «·Õ”«»« ',mb_iconquestion+mb_yesno);
if(n=id_yes)then
begin
form1.Close;
end;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
query5.close;
query5.Prepare;
query5.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker3.date)); query5.Open;
DateTimePicker3.SetFocus;
end;

procedure TForm1.BitBtn19Click(Sender: TObject);
begin
query6.Close;
query6.Prepare;
query6.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker5.date));
query6.Open;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
 if (((combobox2.Text=' Õ’Ì· œÌ‰' )or (combobox2.Text='„»Ì⁄«  √Œ—Ï'))or ((combobox2.Text=' ’ÊÌ— „” ‰œ« ')or (combobox2.Text=' €·Ì› »ÿ«ﬁ« ')or((combobox2.Text='ÿ»«⁄… «·’Ê—')))) then
 begin
 edit5.Visible:=false;
 label8.Visible:=false;
 Edit4.Visible:=false;
  label5.Visible:=false;
  CheckBox1.Checked:=false;
  CheckBox2.Checked:=false;
  CheckBox3.Checked:=false;
  CheckBox4.Checked:=false;
  CheckBox5.Checked:=false;
  CheckBox6.Checked:=false;
  CheckBox7.Checked:=false;
  CheckBox8.Checked:=false;
  CheckBox9.Checked:=false;
  CheckBox10.Checked:=false;
  CheckBox11.Checked:=false;
  CheckBox12.Checked:=false;
  panel5.Enabled:=false;
  end
  else
  begin
  edit5.Visible:=true;
  label8.Visible:=true;
    Edit4.Visible:=true;
  label5.Visible:=true;
  panel5.Enabled:=true;
  end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
CheckBox3.Checked:=false;
CheckBox4.Checked:=false;
CheckBox5.Checked:=false;
CheckBox6.Checked:=false;
CheckBox7.Checked:=false;
CheckBox8.Checked:=false;
CheckBox9.Checked:=false;
CheckBox10.Checked:=false;
CheckBox11.Checked:=false;
CheckBox12.Checked:=false;
edit1.Text:='';
ComboBox1.Clear;
combobox2.ClearSelection;
combobox3.ClearSelection;
Edit3.Text:='';
DateTimePicker1.Date:=now;
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
panel1.Visible:=false;
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
begin
panel13.Visible:=true;
panel1.Visible:=false;
panel10.Visible:=false;
panel11.Visible:=false;
panel12.Visible:=false;
panel3.Visible:=false;
panel4.Visible:=false;
panel36.Visible:=false;
edit2.SetFocus;
DateTimePicker2.Date:=now;

edit2.Text:='';
edit7.Text:='';
end;

procedure TForm1.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
Edit7.SetFocus;
end;

procedure TForm1.MaskEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
DateTimePicker2.SetFocus;
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
edit2.text:='';
Edit7.Text:='';
DateTimePicker2.Date:=now;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
panel4.Visible:=true;
panel1.Visible:=false;
panel10.Visible:=false;
panel11.Visible:=false;
panel12.Visible:=false;
panel13.Visible:=false;
panel3.Visible:=false;
panel36.Visible:=false;
DateTimePicker3.Date:=now;
DateTimePicker3.SetFocus;

end;
procedure TForm1.FormShow(Sender: TObject);
begin
panel4.Visible:=false;
panel47.Visible:=false;
panel1.Visible:=false;
panel10.Visible:=false;
panel11.Visible:=false;
panel12.Visible:=false;
panel13.Visible:=false;
panel3.Visible:=false;
panel41.Visible:=false;
panel36.Visible:=false;
LOADKEYBOARdlayout('00000401',klf_activate);

/////////////////
statictext1.Caption:=datetostr(now);
statictext2.Caption:=timetostr(now);
if(dayofweek(now)=1)then
statictext3.caption:='«·√Õœ';
if(dayofweek(now)=2)then
statictext3.caption:='«·≈À‰Ì‰';
if(dayofweek(now)=3)then
statictext3.caption:='«·À·«À«¡';
if(dayofweek(now)=4)then
statictext3.caption:='«·≈—»⁄«¡';
if(dayofweek(now)=5)then
statictext3.caption:='«·Œ„Ì”';
if(dayofweek(now)=6)then
statictext3.caption:='«·Ã„⁄…';
if(dayofweek(now)=7)then
statictext3.caption:='«·”» ';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
panel13.Visible:=false;
panel1.Visible:=false;
panel10.Visible:=false;
panel11.Visible:=false;
panel12.Visible:=true;
panel3.Visible:=false;
panel4.Visible:=false;
panel36.Visible:=false;
DateTimePicker5.SetFocus;
DateTimePicker5.Date:=now;

end;

procedure TForm1.BitBtn14Click(Sender: TObject);
begin
query4.Active:=true;
panel13.Visible:=false;
panel1.Visible:=false;
panel10.Visible:=false;
panel11.Visible:=false;
panel12.Visible:=false;
panel3.Visible:=true;
panel4.Visible:=false;
panel36.Visible:=false;

end;

procedure TForm1.BitBtn15Click(Sender: TObject);
begin
panel13.Visible:=false;
panel1.Visible:=false;
panel10.Visible:=false;
panel11.Visible:=true;
panel12.Visible:=false;
panel3.Visible:=false;
panel4.Visible:=false;
panel36.Visible:=false;

end;

procedure TForm1.BitBtn13Click(Sender: TObject);
begin
panel13.Visible:=false;
panel1.Visible:=false;
panel10.Visible:=true;
panel11.Visible:=false;
panel12.Visible:=false;
panel3.Visible:=false;
panel4.Visible:=false;
panel36.Visible:=false;
DateTimePicker4.Date:=now;
DateTimePicker4.SetFocus;
MaskEdit6.Text:='';
end;

procedure TForm1.DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
begin
if(key=13)then
combobox4.SetFocus;
end;
end;

procedure TForm1.BitBtn18Click(Sender: TObject);
begin
panel36.Visible:=true;
panel13.Visible:=false;
panel1.Visible:=false;
panel10.Visible:=false;
panel11.Visible:=false;
panel12.Visible:=false;
panel3.Visible:=false;
panel4.Visible:=false;
DateTimePicker6.Date:=now;
DateTimePicker6.SetFocus;
MaskEdit7.Text:='';

end;

procedure TForm1.BitBtn20Click(Sender: TObject);
var
sum,n:real;
a:boolean;
begin
query3.Close;
query3.Prepare;
query3.Params[0].Value:=combobox5.Text;
query3.Open;
a:=false;
sum:=0;
while(not(query3.Eof))and (a=false)do
begin
datetimepicker9.Date:=strtodate(Query3['spend_date']);
if ((datetimepicker9.Date>=DateTimePicker4.Date)and (datetimepicker9.Date<=DateTimePicker8.Date))then
begin
n:=query3['money'];
sum:=sum+n ;
end;
query3.Next;
end;
query3.Close;
maskedit6.Text:=floattostr(sum);
end;




procedure TForm1.BitBtn2Click(Sender: TObject);
begin
QRImage2.Enabled:=false;
QRImage3.Enabled:=false;
QRImage4.Enabled:=false;
QRImage5.Enabled:=false;
QRImage6.Enabled:=false;
QRImage7.Enabled:=false;
QRImage8.Enabled:=false;
QRImage9.Enabled:=false;
QRImage10.Enabled:=false;
QRImage11.Enabled:=false;
QRImage12.Enabled:=false;
QRImage13.Enabled:=false;
query8.Close;
query8.Prepare;
query8.Params[0].Value:=res_num_for_print;
query8.Open;
if (query8['n1']=1 )then
QRImage2.Enabled:=true;
if (query8['d1']=1 )then
QRImage3.Enabled:=true;
if (query8['n2']=1 )then
QRImage4.Enabled:=true;
if (query8['d2']=1 )then
QRImage5.Enabled:=true;
if (query8['n3']=1 )then
QRImage6.Enabled:=true;
if (query8['d3']=1 )then
QRImage7.Enabled:=true;
if (query8['n4']=1 )then
QRImage8.Enabled:=true;
if (query8['d4']=1 )then
QRImage9.Enabled:=true;
if (query8['n5']=1 )then
QRImage10.Enabled:=true;
if (query8['d5']=1 )then
QRImage11.Enabled:=true;
if (query8['n6']=1 )then
QRImage12.Enabled:=true;
if (query8['d6']=1 )then
QRImage13.Enabled:=true;
QRLabel45.Caption:=user_name;
QuickRep1.Preview;
BitBtn2.Enabled:=false;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm1.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13)then
 begin
if (((combobox2.Text='ÿ»«⁄… «·’Ê—' )or (combobox2.Text='„»Ì⁄«  √Œ—Ï'))or ((combobox2.Text=' ’ÊÌ— „” ‰œ« ')or (combobox2.Text=' €·Ì› »ÿ«ﬁ« '))) then
 begin
combobox3.SetFocus;
 end
 else
 edit5.SetFocus;
   end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['?'..'?']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'-']))OR (KEY IN(['/'..'/']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))OR (KEY IN(['?'..'?']))or (key in(['?'..'?'])) or (key in(['?'..'?'])) or (key in(['?'..'˜'])) or (key in(['?'..'?'])) or (key in(['í'..'?'])) or (key in(['?'..'ë'])) or (key in(['?'..'?'])) or (key in(['?'..'?'])))then
begin
   edit4.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 edit4.ReadOnly:=FALSE;
end;
end;

procedure TForm1.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
combobox3.SetFocus;
end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm1.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
DateTimePicker2.SetFocus;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
panel13.Visible:=false;
end;

procedure TForm1.DateTimePicker6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
BitBtn31.SetFocus;
end;
end;

procedure TForm1.BitBtn21Click(Sender: TObject);
begin
panel47.Visible:=false;
edit8.Clear;
query11.Close;
RadioButton1.Checked:=false;
RadioButton2.Checked:=false;

end;

procedure TForm1.MaskEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
DateTimePicker6.SetFocus;
end;
end;

procedure TForm1.Panel23Click(Sender: TObject);
begin
panel11.Visible:=false;
end;

procedure TForm1.Label30Click(Sender: TObject);
begin
panel11.Visible:=false;
end;

procedure TForm1.DateTimePicker3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
BitBtn6.SetFocus;
end;
end;

procedure TForm1.DateTimePicker4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
combobox5.SetFocus;
end;
end;

procedure TForm1.BitBtn20KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
maskedit6.SetFocus;
end;
end;

procedure TForm1.MaskEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
datetimepicker4.SetFocus;
end;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
Panel36.Visible:=false;
end;

procedure TForm1.BitBtn39Click(Sender: TObject);
begin
panel3.Visible:=false;
end;

procedure TForm1.BitBtn40Click(Sender: TObject);
begin
panel10.Visible:=false;
end;

procedure TForm1.BitBtn41Click(Sender: TObject);
begin
panel4.Visible:=false;
end;

procedure TForm1.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
edit3.SetFocus;
end;

procedure TForm1.BitBtn22Click(Sender: TObject);
begin
if((edit8.Text='')or(edit8.Text=inttostr(0)))then
begin
application.MessageBox('«œŒ· —ﬁ„ «·«Ì’«·',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit8.SetFocus;
exit;
end;
query11.Close;
query11.Prepare;
query11.Params[0].Value:= edit8.Text;
query11.Open;
//////////////
end;

procedure TForm1.BitBtn24Click(Sender: TObject);
begin
panel47.Visible:=true;
panel1.Visible:=false;
panel10.Visible:=false;
panel11.Visible:=false;
panel12.Visible:=false;
panel3.Visible:=false;
panel4.Visible:=false;
panel36.Visible:=false;
bitbtn25.Enabled:=false;
bitbtn23.Enabled:=false;
bitbtn22.Enabled:=false;
bitbtn27.Enabled:=false;
DateTimePicker7.Date:=now;
DateTimePicker7.Visible:=false;
edit8.Enabled:=false;
edit9.Enabled:=false;
end;

procedure TForm1.BitBtn25Click(Sender: TObject);
var
a,b,c,count:integer;
dt1,dt2:string;
 begin
 if(edit8.Text='')then
begin
application.MessageBox('«œŒ· —ﬁ„ «·«Ì’«·',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
//////////////////////
query11.Close;
query11.Prepare;
query11.Params[0].Value:= edit8.Text;
query11.Open;
/////////////////////

 {count:=0;
  ////////////////////////////////
count:=count+1;
query9.Open;
while (not(query9.Eof)) do
begin
query9.Edit;
query9['serial_num']:=count;
query9.Post;
query9.Next;
count:=count+1;
end;
query9.Close;}
///////////////////////////////////
query11.Close;
query11.Open;
query11.Edit;
if(query11['res_num']=edit8.Text)then
begin
query1.Open;
query1.Append;
query1['cus_name']:=query11['cus_name'];
query1['emp_name']:=query11['emp_name'];
query1['want']:=query11['want'];
query1['price']:=query11['price'];
query1['res_num']:=query11['res_num'];
query1['status']:=query11['status'];
//////////////////////////////////////////
Query_max_serial.Close;
Query_max_serial.Prepare;
Query_max_serial.Open;
if(Query_max_serial['max']=null)then
begin
query1['serial_num']:=1;
end
else
begin
query1['serial_num']:=Query_max_serial['max']+1;
end;
/////////////////////////////////////////////
dt1:=datetostr(DateTimePicker7.Date);
if(query11['daily_date']=dt1)then
begin
a:=query11['remaing'];
b:=query11['paid'];
c:=a+b;
query1['paid']:=c ;
query1['remaing']:=0;
query1['daily_date']:=datetostr(DateTimePicker7.Date);

end
else
if(query11['daily_date']<>dt1)then
begin
a:=query11['remaing'];
query1['paid']:=a;
query1['remaing']:=0;
query1['daily_date']:=datetostr(DateTimePicker7.Date);
end;
end;
query1.Post;
query1.Close;
query11.Delete;
query11.Close;


end;

procedure TForm1.DBGrid4CellClick(Column: TColumn);
begin
bitbtn25.Enabled:=true;
end;

procedure TForm1.BitBtn26Click(Sender: TObject);
begin
panel12.Visible:=false;
end;

procedure TForm1.DateTimePicker5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
bitbtn19.SetFocus;
end;
end;

procedure TForm1.BitBtn27Click(Sender: TObject);
begin
if(edit9.Text='')then
begin
application.MessageBox('«œŒ· «”„ «·“»Ê‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit9.SetFocus;
exit;
end;
query12.Close;
query12.Prepare;
query12.Params[0].Value:= edit9.Text;
query12.Open;
end;

procedure TForm1.BitBtn23Click(Sender: TObject);
var
a,b,c,count:integer;
dt1,dt2:string;
 begin
 if(edit9.Text='')then
begin
application.MessageBox('«œŒ· «”„ «·“»Ê‰',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
//////////////////////
query12.Close;
query12.Prepare;
query12.Params[0].Value:= edit9.Text;
query12.Open;
/////////////////////

{ count:=0;
  ////////////////////////////////
count:=count+1;
query9.Open;
while (not(query9.Eof)) do
begin
query9.Edit;
query9['serial_num']:=count;
query9.Post;
query9.Next;
count:=count+1;
end;
query9.Close; }
///////////////////////////////////
query12.Close;
query12.Open;
query12.Edit;
if(query12['cus_name']=edit9.Text)then
begin
query1.Open;
query1.Append;
query1['cus_name']:=query12['cus_name'];
query1['emp_name']:=query12['emp_name'];
query1['want']:=query12['want'];
query1['price']:=query12['price'];
query1['res_num']:=query12['res_num'];
query1['status']:=query12['status'];
///////////////////////////////////////////
Query_max_serial.Close;
Query_max_serial.Prepare;
Query_max_serial.Open;
if(Query_max_serial['max']=null)then
begin
query1['serial_num']:=1;
end
else
begin
query1['serial_num']:=Query_max_serial['max']+1;
end;
/////////////////////////////////////////////
dt1:=datetostr(DateTimePicker7.Date);
if(query12['daily_date']=dt1)then
begin
a:=query12['remaing'];
b:=query12['paid'];
c:=a+b;
query1['paid']:=c ;
query1['remaing']:=0;
query1['daily_date']:=datetostr(DateTimePicker7.Date);

end
else
if(query12['daily_date']<>dt1)then
begin
a:=query12['remaing'];
query1['paid']:=a;
query1['remaing']:=0;
query1['daily_date']:=datetostr(DateTimePicker7.Date);
end;
end;
query1.Post;
query1.Close;
query12.Delete;
query12.Close;


end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
if(RadioButton1.Checked=true)then
begin
edit8.Enabled:=true;
edit9.Enabled:=false;
edit9.Clear;
bitbtn22.Visible:=true;
bitbtn22.Enabled:=true;
bitbtn27.Visible:=false;
DBGrid4.Visible:=true;
DBGrid5.Visible:=false;
bitbtn25.Visible:=true;
bitbtn23.Visible:=false;
end;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
edit8.Enabled:=false;
edit9.Enabled:=true;
edit8.Clear;
bitbtn22.Visible:=false;
bitbtn27.Visible:=true;
bitbtn27.Enabled:=true;
DBGrid4.Visible:=false;
DBGrid5.Visible:=true;
bitbtn25.Visible:=false;
bitbtn23.Visible:=true;
end;

procedure TForm1.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
bitbtn22.SetFocus;
end;
end;

procedure TForm1.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
bitbtn27.SetFocus;
end;
end;

procedure TForm1.DBGrid5CellClick(Column: TColumn);
begin
bitbtn23.Enabled:=true;
end;

procedure TForm1.Edit3Change(Sender: TObject);
var
q,w,e:variant;
begin
{q:=edit6.Text;
w:=edit3.Text;
e:=q-w;
edit5.Text:=e; }
end;

procedure TForm1.Edit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
a:boolean;
begin
if key=13 then
begin
if (edit10.Text='')then
begin
application.MessageBox('«œŒ· «”„ «·„” Œœ„',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit10.setfocus;
exit;
end;
if (edit11.Text='')then
begin
application.MessageBox('«œŒ· ﬂ·„… «·„—Ê—',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit11.setfocus;
exit;
end;

query13.open;
a:=false;
while((not(query13.eof))and(a=false))do
begin
if(query13['u_name']=edit10.text)and (query13['u_password']=edit11.text)then
a:=true;
query13.next;
end;
query13.close;

if(a=false)then
begin
application.MessageBox('·«ÌÊÃœ „” Œœ„ »Â–« «·«”„','Œÿ√',mb_iconerror+mb_ok);
edit10.SetFocus;
exit;
end;



query13.open;
a:=false;
while((not(query13.eof))and(a=false))do
begin
if(query13['u_name']=edit10.text)and (query13['u_password']=edit11.text)then
begin

if(query13['input_goods']=1)then
form1.BitBtn9.Enabled:=true
else
if(query13['input_goods']=0)then
form1.BitBtn9.Enabled:=false;

if(query13['update_goods']=1)then
form1.BitBtn28.Enabled:=true
else
if(query13['update_goods']=0)then
form1.BitBtn28.Enabled:=false;

if(query13['input_daily']=1)then
form1.BitBtn11.Enabled:=true
else
if(query13['input_daily']=0)then
form1.BitBtn11.Enabled:=false;

if(query13['update_daily']=1)then
form1.Button2.Enabled:=true
else
if(query13['update_daily']=0)then
form1.Button2.Enabled:=false;

if(query13['input_spend']=1)then
form1.BitBtn12.Enabled:=true
else
if(query13['input_spend']=0)then
form1.BitBtn12.Enabled:=false;

if(query13['update_spend']=1)then
form1.Button1.Enabled:=true
else
if(query13['update_spend']=0)then
form1.Button1.Enabled:=false;

if(query13['calculate_spend']=1)then
form1.BitBtn13.Enabled:=true
else
if(query13['calculate_spend']=0)then
form1.BitBtn13.Enabled:=false;

if(query13['income_daily']=1)then
form1.BitBtn18.Enabled:=true
else
if(query13['income_daily']=0)then
form1.BitBtn18.Enabled:=false;

if(query13['predecesser']=1)then
form1.BitBtn24.Enabled:=true
else
if(query13['predecesser']=0)then
form1.BitBtn24.Enabled:=false;

if(query13['users']=1)then
form1.BitBtn29.Enabled:=true
else
if(query13['users']=0)then
form1.BitBtn29.Enabled:=false;

if(query13['employee']=1)then
form1.BitBtn14.Enabled:=true
else
if(query13['employee']=0)then
form1.BitBtn14.Enabled:=false;

a:=true;
end;
query13.Next;
end;
query13.Close;
edit10.Visible:=false;
edit11.Visible:=false;
label72.Visible:=false;
label73.Visible:=false;
end;
user_name:=edit10.Text;
end;

procedure TForm1.Edit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
edit11.SetFocus;
end;

procedure TForm1.BitBtn29Click(Sender: TObject);
begin
form1.Hide;
form2.Show;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if label22.Left<970 then
label22.Left:=label22.Left+20
else
label22.Left:=-961;
end;

procedure TForm1.Edit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
bitbtn4.SetFocus;
end;

procedure TForm1.BitBtn28Click(Sender: TObject);
begin
form1.Hide;
form8.show;
form8.panel4.Visible:=true;
form8.ComboBox1.SetFocus;
end;

procedure TForm1.ComboBox5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
bitbtn20.SetFocus;
end;

procedure TForm1.ComboBox4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
bitbtn4.SetFocus;
end;

procedure TForm1.BitBtn31Click(Sender: TObject);
var
 sum1,n1,sum,n,n2,sum2,total:real;
 b,a,c:boolean;
begin
query15.Close;
query15.Prepare;
query15.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker6.date));
query15.Open;
a:=false;
sum:=0;
while(not(query15.Eof))and (a=false)do
begin
if(query15['spend_date']=datetostr(DateTimePicker6.date))then
begin
n:=query15['money'];
sum:=sum+n ;
query15.Next;
end;
end;
query15.Close;
////////////////////colculate daily input from storage
query14.Close;
query14.Prepare;
query14.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker6.date));
query14.Open;
c:=false;
sum2:=0;
while(not(query14.Eof))and (c=false)do
begin
if(query14['date_output']=datetostr(DateTimePicker6.date))then
begin
n2:=query14['sale_price'];
sum2:=sum2+n2 ;
query14.Next;
end;
end;
query14.Close;
////////////////////
 query7.Close;
query7.Prepare;
query7.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker6.date));
query7.Open;
b:=false;
sum1:=0;
while(not(query7.Eof))and (b=false)do
begin
if(query7['daily_date']=datetostr(DateTimePicker6.date))then
begin
n1:=query7['paid'];
sum1:=sum1+n1 ;
query7.Next;
end;
end;
query7.Close;
total:=(sum1+sum2);
maskedit7.Text:=floattostr(total-sum);
end;

procedure TForm1.BitBtn31KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key =13 then
maskedit7.SetFocus;
end;

end.
