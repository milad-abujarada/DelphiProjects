unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask, ExtCtrls, ComCtrls,
  ExtDlgs, ImgList, IBDatabase, DB, IBCustomDataSet, IBTable, IBQuery;

type
  TF_view_change = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit16: TDBEdit;
    DBComboBox8: TDBComboBox;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DBComboBox2: TDBComboBox;
    Label31: TLabel;
    GroupBox4: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label32: TLabel;
    DateTimePicker5: TDateTimePicker;
    DBComboBox4: TDBComboBox;
    Label25: TLabel;
    Edit3: TEdit;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    DateTimePicker3: TDateTimePicker;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DateTimePicker6: TDateTimePicker;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid1: TDBGrid;
    GroupBox7: TGroupBox;
    Edit4: TEdit;
    BitBtn3: TBitBtn;
    GroupBox6: TGroupBox;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    GroupBox5: TGroupBox;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    DBMemo2: TDBMemo;
    DBMemo1: TDBMemo;
    DBImage1: TDBImage;
    BitBtn4: TBitBtn;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    DataSource1: TDataSource;
    IBTable1: TIBTable;
    IBTable1STUDENT_ID: TIBStringField;
    IBTable1AR_NAME: TIBStringField;
    IBTable1EN_NAME: TIBStringField;
    IBTable1BIRTH_DATE: TDateField;
    IBTable1BIRTH_PLACE: TIBStringField;
    IBTable1MOTHER_NAME: TIBStringField;
    IBTable1SEX: TIBStringField;
    IBTable1RELIGION: TIBStringField;
    IBTable1NATIONALITY: TIBStringField;
    IBTable1ADDRESS: TIBStringField;
    IBTable1PHONE_NUMBER: TIBStringField;
    IBTable1ID_NUMBER: TIBStringField;
    IBTable1ID_ISSUE_DATE: TDateField;
    IBTable1PASS_NUMBER: TIBStringField;
    IBTable1PASS_ISSUEPLACE: TIBStringField;
    IBTable1PASS_VALIDITY: TDateField;
    IBTable1MARITAL_STATUS: TIBStringField;
    IBTable1FAMILY_NUMBER: TIBStringField;
    IBTable1HOUSING_STATUS: TIBStringField;
    IBTable1SUPERIOR_NAME: TIBStringField;
    IBTable1RELATIVE_NAME: TIBStringField;
    IBTable1DEGREE_OWNED: TIBStringField;
    IBTable1DEGREE_DATE: TDateField;
    IBTable1GRADUATION_DATE: TDateField;
    IBTable1REGISTRATION_DATE: TDateField;
    IBTable1PIN: TIBStringField;
    IBTable1CLASS: TSmallintField;
    IBTable1PICTURE: TBlobField;
    IBTable1STUDENT_STATUS: TIBStringField;
    IBTable1NOTES: TBlobField;
    IBTable1REGISTRATION_TYPE: TIBStringField;
    IBTransaction1: TIBTransaction;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit38: TDBEdit;
    DBImage2: TDBImage;
    BitBtn5: TBitBtn;
    DBEdit2: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure GroupBox5Click(Sender: TObject);
    procedure GroupBox6Click(Sender: TObject);
    procedure Edit4DblClick(Sender: TObject);
    procedure Edit2DblClick(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure DateTimePicker6Change(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBComboBox6Change(Sender: TObject);
    procedure DBEdit20Change(Sender: TObject);
    procedure DBComboBox3Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit14Change(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure DBEdit18Change(Sender: TObject);
    procedure DBComboBox5Change(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure DBEdit16Change(Sender: TObject);
    procedure DBComboBox8Change(Sender: TObject);
    procedure DBComboBox4Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);
    procedure DBEdit61Change(Sender: TObject);
    procedure DBEdit61Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit43KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit44KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit48KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit50KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit51KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit54KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit56KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit58KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit61KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker5Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   i,k,j:integer;
   s:string;
  end;

var
  F_view_change: TF_view_change;

implementation

uses Unit2, Unit8;


{$R *.DFM}

procedure TF_view_change.BitBtn1Click(Sender: TObject);
begin
with datam.Query_n do
begin
close;
Prepare;
params[0].value:=edit1.text;
open;
if recordcount<>0 then
begin
DBGrid3.Visible:=true;
DBEdit3.Clear;
DBEdit4.Clear;
DBEdit1.Clear;
DBEdit5.Clear;
DBEdit6.Clear;
DBEdit7.Clear;
DBEdit8.Clear;
//DBEdit9.Clear;
DBEdit10.Clear;
DBEdit11.Clear;
//DBEdit12.Clear;
DBEdit13.Clear;
DBEdit14.Clear;
DBEdit16.Clear;
//DBEdit17.Clear;
DBEdit18.Clear;
//DBEdit19.Clear;
DBEdit20.Clear;
DBComboBox2.Text:='';
DBComboBox3.Text:='';
DBComboBox4.Text:='';
DBComboBox5.Text:='';
DBComboBox6.Text:='';
DBComboBox8.Text:='';
 end
 else
 begin
 application.MessageBox('·« ÌÊÃœ ÿ«·» »Â–« «·≈”„ ',' ‰»ÌÂ',mb_iconwarning);
 exit;
  end ;
end;
end;
procedure TF_view_change.DBGrid1CellClick(Column: TColumn);
var
i,dep:string;
begin
////////////////////////////////////////////////
DBEdit3.Visible:=true;
DBEdit4.Visible:=true;
DBEdit5.Visible:=true;
DBEdit6.Visible:=true;
DBEdit7.Visible:=true;
DBEdit20.Visible:=true;
DBEdit1.Visible:=true;
DBEdit14.Visible:=true;
DBEdit13.Visible:=true;
DBEdit18.Visible:=true;
DBEdit8.Visible:=true;
DBEdit10.Visible:=true;
DBEdit11.Visible:=true;
DBEdit16.Visible:=true;
DBMemo1.Visible:=true;
DBCombobox1.Enabled:=false;
DBCombobox4.Enabled:=false;
DBCombobox8.Enabled:=false;
DateTimePicker5.Enabled:=false;
DateTimePicker5.Visible:=false;
Label32.Visible:=false;
DateTimePicker1.Enabled:=false;
DateTimePicker4.Enabled:=false;
DateTimePicker2.Enabled:=false;
DateTimePicker6.Enabled:=false;
DateTimePicker3.Enabled:=false;
DBCombobox6.Enabled:=false;
DBCombobox3.Enabled:=false;
DBCombobox2.Enabled:=false;
DBCombobox5.Enabled:=false;
DBImage1.Visible:=true;
DBImage2.Visible:=false;
IBTable1.Active:=false;
DBEdit38.Visible:=false;
DBEdit42.Visible:=false;
DBEdit43.Visible:=false;
DBEdit44.Visible:=false;
DBEdit45.Visible:=false;
DBEdit48.Visible:=false;
DBEdit50.Visible:=false;
DBEdit51.Visible:=false;
DBEdit52.Visible:=false;
DBEdit54.Visible:=false;
DBEdit56.Visible:=false;
DBEdit58.Visible:=false;
DBEdit59.Visible:=false;
DBEdit60.Visible:=false;
DBMemo2.Visible:=false;
BitBtn5.Enabled:=false;
  bitbtn9.Visible:=false;
   bitbtn4.Visible:=true;
    bitbtn4.Enabled:=false;
////////////////////////////////////////////////
k:=0;
i:=DBGrid1.Fields[0].Asstring;
with datam.Query_num do
begin
close;
Prepare;
params[0].value:=i;
open;
if recordcount<>0 then
begin
//8888888888888888888888
edit3.text:=datam.Query_numSTUDENT_ID.Value;
DateTimePicker4.date:=datam.Query_numREGISTRATION_DATE.value;
DateTimePicker2.date:=datam.Query_numbirth_date.value;
DateTimePicker1.date:=datam.Query_numdegree_date.value;
DateTimePicker3.date:=datam.Query_numid_issue_date.value;
DateTimePicker5.date:=datam.Query_numGRADUATION_DATE.value;
DateTimePicker6.date:=datam.Query_numpass_validity.value;
 if DBCombobox1.Text='Œ—ÌÃ' then
 begin
 DBCombobox1.Enabled:=false;
 DateTimePicker5.Enabled:=false;
 DateTimePicker5.Visible:=true;
 Label32.Visible:=true;
 end;
if DBEdit61.Text<>'' then
begin
bitbtn4.Enabled:=true;
end;
end;
end;
end;
procedure TF_view_change.BitBtn8Click(Sender: TObject);
begin
Form_help.Memo1.Lines.LoadFromFile('E:\«·‰”Œ… «·«ŒÌ—… „‰ «·„‰ŸÊ„…\HELP\OUT_UP.txt');
Form_help.ShowModal;
end;
procedure TF_view_change.BitBtn2Click(Sender: TObject);
begin
with datam.Query_num do
begin
close;
Prepare;
params[0].value:=edit2.text;
open;
if recordcount<>0 then
begin
DBGrid2.Visible:=true;
DBEdit3.Clear;
DBEdit1.Clear;
DBEdit4.Clear;
DBEdit5.Clear;
DBEdit6.Clear;
DBEdit7.Clear;
DBEdit8.Clear;
//DBEdit9.Clear;
DBEdit10.Clear;
DBEdit11.Clear;
//DBEdit12.Clear;
DBEdit13.Clear;
DBEdit14.Clear;
DBEdit16.Clear;
//DBEdit17.Clear;
DBEdit18.Clear;
//DBEdit19.Clear;
DBEdit20.Clear;
DBComboBox2.Text:='';
DBComboBox3.Text:='';
DBComboBox4.Text:='';
DBComboBox5.Text:='';
DBComboBox6.Text:='';
DBComboBox8.Text:='';
end
 else
 begin
 application.MessageBox('·« ÌÊÃœ ÿ«·» ÌÕ„· Â–« «·—ﬁ„',' ‰»ÌÂ',mb_iconwarning);
 exit;
  end ;
end;
end;
procedure TF_view_change.BitBtn3Click(Sender: TObject);
begin
with datam.Query_serch_nat do
begin
close;
Prepare;
params[0].value:=edit4.text;
open;
if recordcount<>0 then
begin
DBGrid1.Visible:=true;
DBEdit3.Clear;
DBEdit4.Clear;
DBEdit5.Clear;
DBEdit6.Clear;
DBEdit1.Clear;
DBEdit7.Clear;
DBEdit8.Clear;
//DBEdit9.Clear;
DBEdit10.Clear;
DBEdit11.Clear;
//DBEdit12.Clear;
DBEdit13.Clear;
DBEdit14.Clear;
DBEdit16.Clear;
//DBEdit17.Clear;
DBEdit18.Clear;
//DBEdit19.Clear;
DBEdit20.Clear;
DBComboBox2.Text:='';
DBComboBox3.Text:='';
DBComboBox4.Text:='';
DBComboBox5.Text:='';
DBComboBox6.Text:='';
DBComboBox8.Text:='';
end
 else
 begin
 application.MessageBox('·« ÌÊÃœ ÿ·»… »Â–Â «·Ã‰”Ì…',' ‰»ÌÂ',mb_iconwarning);
 exit;
  end ;
end;
end;
procedure TF_view_change.DBGrid2CellClick(Column: TColumn);
var
i,dep:string;
begin
////////////////////////////////////////////////
DBEdit3.Visible:=true;
DBEdit4.Visible:=true;
DBEdit5.Visible:=true;
DBEdit6.Visible:=true;
DBEdit7.Visible:=true;
DBEdit20.Visible:=true;
DBEdit1.Visible:=true;
DBEdit14.Visible:=true;
DBEdit13.Visible:=true;
DBEdit18.Visible:=true;
DBEdit8.Visible:=true;
DBEdit10.Visible:=true;
DBEdit11.Visible:=true;
DBEdit16.Visible:=true;
DBMemo1.Visible:=true;
DBCombobox1.Enabled:=false;
DBCombobox4.Enabled:=false;
DBCombobox8.Enabled:=false;
DateTimePicker5.Enabled:=false;
DateTimePicker5.Visible:=false;
Label32.Visible:=false;
DateTimePicker1.Enabled:=false;
DateTimePicker4.Enabled:=false;
DateTimePicker2.Enabled:=false;
DateTimePicker6.Enabled:=false;
DateTimePicker3.Enabled:=false;
DBCombobox6.Enabled:=false;
DBCombobox3.Enabled:=false;
DBCombobox2.Enabled:=false;
DBCombobox5.Enabled:=false;
DBImage1.Visible:=true;
DBImage2.Visible:=false;
IBTable1.Active:=false;
DBEdit38.Visible:=false;
DBEdit42.Visible:=false;
DBEdit43.Visible:=false;
DBEdit44.Visible:=false;
DBEdit45.Visible:=false;
DBEdit48.Visible:=false;
DBEdit50.Visible:=false;
DBEdit51.Visible:=false;
DBEdit52.Visible:=false;
DBEdit54.Visible:=false;
DBEdit56.Visible:=false;
DBEdit58.Visible:=false;
DBEdit59.Visible:=false;
DBEdit60.Visible:=false;
DBMemo2.Visible:=false;
BitBtn5.Enabled:=false;
  bitbtn9.Visible:=false;
   bitbtn4.Visible:=true;
    bitbtn4.Enabled:=false;
////////////////////////////////////////////////
k:=0;
i:=DBGrid2.Fields[0].Asstring;
with datam.Query_num do
begin
close;
Prepare;
params[0].value:=i;
open;
if recordcount<>0 then
begin
//  dep:=datam.Query_numDEPARTMENT.value;
//8888888888888888888888
edit3.text:=datam.Query_numSTUDENT_ID.Value;
//DateTimePicker4.date:=datam.Query_numREG_date.value;
DateTimePicker2.date:=datam.Query_numbirth_date.value;
DateTimePicker1.date:=datam.Query_numdegree_date.value;
DateTimePicker3.date:=datam.Query_numid_issue_date.value;
DateTimePicker5.date:=datam.Query_numGRADUATION_DATE.value;
DateTimePicker6.date:=datam.Query_numpass_validity.value;
 if DBCombobox1.Text='Œ—ÌÃ' then
 begin
 DBCombobox1.Enabled:=false;
 DateTimePicker5.Enabled:=false;
 DateTimePicker5.Visible:=true;
 Label32.Visible:=true;
 end;
if DBEdit61.Text<>'' then
begin
bitbtn4.Enabled:=true;
end;
end;
end;
end;
procedure TF_view_change.DBGrid3CellClick(Column: TColumn);
var
i,dep:string;
begin
////////////////////////////////////////////////
DBEdit3.Visible:=true;
DBEdit4.Visible:=true;
DBEdit5.Visible:=true;
DBEdit6.Visible:=true;
DBEdit7.Visible:=true;
DBEdit20.Visible:=true;
DBEdit1.Visible:=true;
DBEdit14.Visible:=true;
DBEdit13.Visible:=true;
DBEdit18.Visible:=true;
DBEdit8.Visible:=true;
DBEdit10.Visible:=true;
DBEdit11.Visible:=true;
DBEdit16.Visible:=true;
DBMemo1.Visible:=true;
DBCombobox1.Enabled:=false;
DBCombobox4.Enabled:=false;
DBCombobox8.Enabled:=false;
DateTimePicker5.Enabled:=false;
DateTimePicker5.Visible:=false;
Label32.Visible:=false;
DateTimePicker1.Enabled:=false;
DateTimePicker4.Enabled:=false;
DateTimePicker2.Enabled:=false;
DateTimePicker6.Enabled:=false;
DateTimePicker3.Enabled:=false;
DBCombobox6.Enabled:=false;
DBCombobox3.Enabled:=false;
DBCombobox2.Enabled:=false;
DBCombobox5.Enabled:=false;
DBImage1.Visible:=true;
DBImage2.Visible:=false;
IBTable1.Active:=false;
DBEdit38.Visible:=false;
DBEdit42.Visible:=false;
DBEdit43.Visible:=false;
DBEdit44.Visible:=false;
DBEdit45.Visible:=false;
DBEdit48.Visible:=false;
DBEdit50.Visible:=false;
DBEdit51.Visible:=false;
DBEdit52.Visible:=false;
DBEdit54.Visible:=false;
DBEdit56.Visible:=false;
DBEdit58.Visible:=false;
DBEdit59.Visible:=false;
DBEdit60.Visible:=false;
DBMemo2.Visible:=false;
BitBtn5.Enabled:=false;
  bitbtn9.Visible:=false;
   bitbtn4.Visible:=true;
    bitbtn4.Enabled:=false;
////////////////////////////////////////////////
k:=0;
i:=DBGrid3.Fields[0].Asstring;
with datam.Query_num do
begin
close;
Prepare;
params[0].value:=i;
open;
if recordcount<>0 then
begin
//dep:=datam.Query_numDEPARTMENT.value;
//8888888888888888888888
//  ***************************
edit3.text:=datam.Query_numSTUDENT_ID.Value;
//DateTimePicker4.date:=datam.Query_numREG_date.value;
DateTimePicker2.date:=datam.Query_numbirth_date.value;
DateTimePicker1.date:=datam.Query_numdegree_date.value;
DateTimePicker3.date:=datam.Query_numid_issue_date.value;
DateTimePicker5.date:=datam.Query_numGRADUATION_DATE.value;
DateTimePicker6.date:=datam.Query_numpass_validity.value;
 if DBCombobox1.Text='Œ—ÌÃ' then
 begin
 DBCombobox1.Enabled:=false;
 DateTimePicker5.Enabled:=false;
 DateTimePicker5.Visible:=true;
 Label32.Visible:=true;
 end;
if DBEdit61.Text<>'' then
begin
bitbtn4.Enabled:=true;
end;
end;
end;
end;
procedure TF_view_change.FormShow(Sender: TObject);
begin

IBTable1.Active:=true;
IBTransaction1.Active:=true;
i:=0;
k:=0;
datam.Query_num.Close;
edit3.Visible:=false;
Edit1.Clear;
Edit2.Clear;
edit4.Clear;
DBGrid3.Visible:=false;
DBGrid2.Visible:=false;
DBGrid1.Visible:=false;
end;
procedure TF_view_change.BitBtn9Click(Sender: TObject);
begin
 if (DBEdit38.text='') then
begin
 application.MessageBox(' √ﬂœ „‰ ≈œŒ«· «”„ «·ÿ«·» »«·⁄—»Ì… ·≈ „«„ ⁄„·Ì… Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end;
if  (DBEdit46.text='')then
begin
 application.MessageBox('  √ﬂœ „‰ «œŒ«· «·Ã‰” ·≈ „«„ ⁄„·Ì… Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end;
  if (DBEdit50.text='') then
begin
 application.MessageBox(' √ﬂœ „‰ ≈œŒ«· «·Ã‰”Ì… ·≈ „«„ ⁄„·Ì… Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning);
 exit;
  end;
  if (DBEdit61.text='') then
begin
 application.MessageBox(' √ﬂœ „‰ ≈œŒ«· —ﬁ„ «·ÿ«·» ·≈ „«„ ⁄„·Ì… Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end;
  if  (DBEdit65.text='')then
begin
 application.MessageBox('  √ﬂœ „‰ «œŒ«· ’›… «·ﬁÌœ ·≈ „«„ ⁄„·Ì… Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end ;
    if (DBEdit62.text='') then
begin
 application.MessageBox(' √ﬂœ „‰ ≈œŒ«·  «—ÌŒ «·«· Õ«ﬁ ·≈ „«„ ⁄„·Ì… Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end;
   if  (DBEdit66.text='')then
begin
 application.MessageBox('  √ﬂœ „‰ «œŒ«· Õ«·… «·ÿ«·» ·≈ „«„ ⁄„·Ì… Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end ;
   if  (DBCombobox1.text='Œ—ÌÃ') and (DBEdit2.text='') then
begin
 application.MessageBox('  √ﬂœ „‰ «œŒ«·  «—ÌŒ ≈⁄ „«œ «· Œ—Ã ·≈ „«„ ⁄„·Ì… Õ›Ÿ «· ⁄œÌ·« ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end ;
IBTable1.Post;
IBTransaction1.Commit;
DBComboBox6.ClearSelection;
  DBComboBox3.ClearSelection;
  DBComboBox2.ClearSelection;
  DBComboBox5.ClearSelection;
  DBComboBox1.ClearSelection;
  DBComboBox4.ClearSelection;
  DBComboBox8.ClearSelection;
application.MessageBox(' „ Õ›Ÿ «· ⁄œÌ·« ',' √ﬂÌœ',mb_ok);
IBTable1.Active:=false;
IBTransaction1.Active:=false;
DBEdit3.Visible:=true;
DBEdit4.Visible:=true;
DBEdit5.Visible:=true;
DBEdit6.Visible:=true;
DBEdit7.Visible:=true;
DBEdit20.Visible:=true;
DBEdit1.Visible:=true;
DBEdit14.Visible:=true;
DBEdit13.Visible:=true;
DBEdit18.Visible:=true;
DBEdit8.Visible:=true;
DBEdit10.Visible:=true;
DBEdit11.Visible:=true;
DBEdit16.Visible:=true;
DBMemo1.Visible:=true;
DBCombobox1.Enabled:=false;
DBCombobox4.Enabled:=false;
DBCombobox8.Enabled:=false;
DateTimePicker5.Enabled:=false;
DateTimePicker5.Visible:=false;
Label32.Visible:=false;
DateTimePicker1.Enabled:=false;
DateTimePicker4.Enabled:=false;
DateTimePicker2.Enabled:=false;
DateTimePicker6.Enabled:=false;
DateTimePicker3.Enabled:=false;
DBCombobox6.Enabled:=false;
DBCombobox3.Enabled:=false;
DBCombobox2.Enabled:=false;
DBCombobox5.Enabled:=false;
DBImage1.Visible:=true;
DBImage2.Visible:=false;
IBTable1.Active:=false;
DBEdit38.Visible:=false;
DBEdit42.Visible:=false;
DBEdit43.Visible:=false;
DBEdit44.Visible:=false;
DBEdit45.Visible:=false;
DBEdit48.Visible:=false;
DBEdit50.Visible:=false;
DBEdit51.Visible:=false;
DBEdit52.Visible:=false;
DBEdit54.Visible:=false;
DBEdit56.Visible:=false;
DBEdit58.Visible:=false;
DBEdit59.Visible:=false;
DBEdit60.Visible:=false;
DBMemo2.Visible:=false;
DBEdit3.Clear;
DBEdit4.Clear;
DBEdit5.Clear;
DBEdit6.Clear;
DBEdit7.Clear;
DBEdit20.Clear;
DBEdit1.Clear;
DBEdit14.Clear;
DBEdit13.Clear;
DBEdit18.Clear;
DBEdit8.Clear;
DBEdit10.Clear;
DBEdit11.Clear;
DBEdit16.Clear;
DBMemo1.Clear;
bitbtn9.Visible:=false;
bitbtn4.Visible:=true;
bitbtn4.Enabled:=false;
BitBtn5.Enabled:=false;
end;
procedure TF_view_change.BitBtn7Click(Sender: TObject);
begin

DBEdit3.Visible:=true;
DBEdit4.Visible:=true;
DBEdit5.Visible:=true;
DBEdit6.Visible:=true;
DBEdit7.Visible:=true;
DBEdit20.Visible:=true;
DBEdit1.Visible:=true;
DBEdit14.Visible:=true;
DBEdit13.Visible:=true;
DBEdit18.Visible:=true;
DBEdit8.Visible:=true;
DBEdit10.Visible:=true;
DBEdit11.Visible:=true;
DBEdit16.Visible:=true;
DBMemo1.Visible:=true;
DateTimePicker5.Visible:=false;
Label32.Visible:=false;
DBCombobox1.Enabled:=false;
DBCombobox4.Enabled:=false;
DBCombobox8.Enabled:=false;
DateTimePicker5.Enabled:=false;
DateTimePicker1.Enabled:=false;
DateTimePicker4.Enabled:=false;
DateTimePicker2.Enabled:=false;
DateTimePicker6.Enabled:=false;
DateTimePicker3.Enabled:=false;
DBCombobox6.Enabled:=false;
DBCombobox3.Enabled:=false;
DBCombobox2.Enabled:=false;
DBCombobox5.Enabled:=false;
DBImage1.Visible:=true;
DBImage2.Visible:=false;
IBTable1.Active:=false;
DBEdit38.Visible:=false;
DBEdit42.Visible:=false;
DBEdit43.Visible:=false;
DBEdit44.Visible:=false;
DBEdit45.Visible:=false;
DBEdit48.Visible:=false;
DBEdit50.Visible:=false;
DBEdit51.Visible:=false;
DBEdit52.Visible:=false;
DBEdit54.Visible:=false;
DBEdit56.Visible:=false;
DBEdit58.Visible:=false;
DBEdit59.Visible:=false;
DBEdit60.Visible:=false;
DBMemo2.Visible:=false;
DBEdit3.Clear;
DBEdit4.Clear;
DBEdit5.Clear;
DBEdit6.Clear;
DBEdit7.Clear;
DBEdit20.Clear;
DBEdit1.Clear;
DBEdit14.Clear;
DBEdit13.Clear;
DBEdit18.Clear;
DBEdit8.Clear;
DBEdit10.Clear;
DBEdit11.Clear;
DBEdit16.Clear;
DBMemo1.Clear;
DBComboBox6.ClearSelection;
  DBComboBox3.ClearSelection;
  DBComboBox2.ClearSelection;
  DBComboBox5.ClearSelection;
  DBComboBox1.ClearSelection;
  DBComboBox4.ClearSelection;
  DBComboBox8.ClearSelection;
BitBtn5.Enabled:=false;
  bitbtn9.Visible:=false;
   bitbtn4.Visible:=true;
    bitbtn4.Enabled:=false;
    close;
end;
procedure TF_view_change.Edit4Click(Sender: TObject);
begin
bitbtn9.Visible:=false;
bitbtn4.Visible:=true;
bitbtn4.Enabled:=false;
edit1.Enabled:=false;
BitBtn1.Enabled:=false;
edit2.Enabled:=false;
edit4.Enabled:=true;
BitBtn2.Enabled:=false;
BitBtn3.Enabled:=true;
DBGrid1.Visible:=false;
DBGrid2.Visible:=false;
DBGrid3.Visible:=false;
DBEdit3.Clear;
edit1.Clear;
edit2.Clear;
DBEdit1.Clear;
DBEdit4.Clear;
DBEdit5.Clear;
DBEdit6.Clear;
DBEdit7.Clear;
DBEdit8.Clear;
DBEdit10.Clear;
DBEdit11.Clear;
DBEdit13.Clear;
DBEdit14.Clear;
DBEdit16.Clear;
DBEdit18.Clear;
DBEdit20.Clear;
DBComboBox6.ClearSelection;
  DBComboBox3.ClearSelection;
  DBComboBox2.ClearSelection;
  DBComboBox5.ClearSelection;
  DBComboBox1.ClearSelection;
  DBComboBox4.ClearSelection;
  DBComboBox8.ClearSelection;
  BitBtn5.Enabled:=false;
  DateTimePicker5.Visible:=false;
  Label32.Visible:=false;
end;

procedure TF_view_change.GroupBox5Click(Sender: TObject);
begin
  bitbtn9.Visible:=false;
   bitbtn4.Visible:=true;
    bitbtn4.Enabled:=false;
edit1.Enabled:=true;
BitBtn1.Enabled:=true;
edit2.Enabled:=false;
edit4.Enabled:=false;
BitBtn2.Enabled:=false;
BitBtn3.Enabled:=false;
DBGrid2.Visible:=FALSE;
DBGrid3.Visible:=false;
DBGrid1.Visible:=false;
DBEdit3.Clear;
edit2.Clear;
edit4.Clear;
DBEdit1.Clear;
DBEdit4.Clear;
DBEdit5.Clear;
DBEdit6.Clear;
DBEdit7.Clear;
DBEdit8.Clear;
DBEdit10.Clear;
DBEdit11.Clear;
DBEdit13.Clear;
DBEdit14.Clear;
DBEdit16.Clear;
DBEdit18.Clear;
DBEdit20.Clear;
DBComboBox6.ClearSelection;
  DBComboBox3.ClearSelection;
  DBComboBox2.ClearSelection;
  DBComboBox5.ClearSelection;
  DBComboBox1.ClearSelection;
  DBComboBox4.ClearSelection;
  DBComboBox8.ClearSelection;
  BitBtn5.Enabled:=false;
end;

procedure TF_view_change.GroupBox6Click(Sender: TObject);
begin
  bitbtn9.Visible:=false;
   bitbtn4.Visible:=true;
BitBtn4.Enabled:=false;
edit1.Enabled:=false;
BitBtn1.Enabled:=false;
edit2.Enabled:=true;
edit4.Enabled:=false;
BitBtn2.Enabled:=true;
BitBtn3.Enabled:=false;
DBGrid2.Visible:=FALSE;
DBGrid3.Visible:=false;
DBGrid1.Visible:=false;
DBEdit3.Clear;
edit1.Clear;
edit4.Clear;
DBEdit4.Clear;
DBEdit1.Clear;
DBEdit5.Clear;
DBEdit6.Clear;
DBEdit7.Clear;
DBEdit8.Clear;
DBEdit10.Clear;
DBEdit11.Clear;
DBEdit13.Clear;
DBEdit14.Clear;
DBEdit16.Clear;
DBEdit18.Clear;
DBEdit20.Clear;
DBComboBox6.ClearSelection;
  DBComboBox3.ClearSelection;
  DBComboBox2.ClearSelection;
  DBComboBox5.ClearSelection;
  DBComboBox1.ClearSelection;
  DBComboBox4.ClearSelection;
  DBComboBox8.ClearSelection;
 BitBtn5.Enabled:=false;
end;

procedure TF_view_change.Edit4DblClick(Sender: TObject);
begin
  DBGrid1.Visible:=false;
DBGrid2.Visible:=false;
DBGrid3.Visible:=false;
end;

procedure TF_view_change.Edit2DblClick(Sender: TObject);
begin
  DBGrid1.Visible:=false;
DBGrid2.Visible:=false;
DBGrid3.Visible:=false;
end;

procedure TF_view_change.Edit1DblClick(Sender: TObject);
begin
 DBGrid1.Visible:=false;
DBGrid2.Visible:=false;
DBGrid3.Visible:=false;
end;

procedure TF_view_change.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit3.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit3.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
 if  ((KEY IN(['0'..'9']))or (KEY IN(['«'..'Ì']))) then
begin
   DBEdit4.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit4.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit5.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit5.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit6.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit6.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit7.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit7.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit20.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit20.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit1.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit1.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit14.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit14.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit13.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit13.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit18.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit18.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit8.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit8.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit10.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit10.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit11.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit11.ReadOnly:=FALSE;
end;

procedure TF_view_change.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit16.ReadOnly:=TRUE;
   BEEP;
end
ELSE  DBEdit16.ReadOnly:=FALSE;
end;

procedure TF_view_change.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
DateTimePicker5.Visible:=false;
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   Edit1.ReadOnly:=TRUE;
   BEEP;
end
ELSE  Edit1.ReadOnly:=FALSE;
end;

procedure TF_view_change.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
DateTimePicker5.Visible:=false;
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   Edit2.ReadOnly:=TRUE;
   BEEP;
end
ELSE  Edit2.ReadOnly:=FALSE;
end;

procedure TF_view_change.Edit4KeyPress(Sender: TObject; var Key: Char);
begin

if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   Edit4.ReadOnly:=TRUE;
   BEEP;
end
ELSE  Edit4.ReadOnly:=FALSE;
end;

procedure TF_view_change.DateTimePicker2Change(Sender: TObject);
begin
DBEdit47.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
end;

procedure TF_view_change.DateTimePicker3Change(Sender: TObject);
begin
DBEdit57.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker3.date));
end;

procedure TF_view_change.DateTimePicker6Change(Sender: TObject);
begin
DBEdit60.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker6.date));
end;

procedure TF_view_change.DateTimePicker4Change(Sender: TObject);
begin
DBEdit62.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker4.date));
end;

procedure TF_view_change.DateTimePicker1Change(Sender: TObject);
begin
DBEdit64.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

procedure TF_view_change.DBEdit3Change(Sender: TObject);
begin
 DBEdit38.Text:=DBEdit3.Text;
 DBImage2.Picture:=DBImage1.Picture;

if k=0 then
begin
  DBEdit38.Text:=DBEdit3.Text;
  DBEdit42.Text:=DBEdit4.Text;
  DBEdit43.Text:=DBEdit5.Text;
  DBEdit44.Text:=DBEdit6.Text;
  DBEdit45.Text:=DBEdit7.Text;
  DBEdit46.Text:=DBCombobox6.Text;
  DBEdit48.Text:=DBEdit20.Text;
  DBEdit49.Text:=DBCombobox3.Text;
  DBEdit50.Text:=DBEdit1.Text;
  DBEdit51.Text:=DBEdit14.Text;
  DBEdit52.Text:=DBEdit13.Text;
  DBEdit53.Text:=DBCombobox2.Text;
  DBEdit54.Text:=DBEdit18.Text;
  DBEdit55.Text:=DBCombobox5.Text;
  DBEdit56.Text:=DBEdit8.Text;
  DBEdit58.Text:=DBEdit10.Text;
  DBEdit59.Text:=DBEdit11.Text;
  DBEdit61.Text:=DBEdit16.Text;
  DBEdit63.Text:=DBCombobox8.Text;
  DBEdit65.Text:=DBCombobox4.Text;
  DBEdit66.Text:=DBCombobox1.Text;
  DBImage2.Picture:=DBImage1.Picture;
  DBMemo2.Text:=DBMemo1.Text;
  k:=1;
  end;
end;

procedure TF_view_change.DBEdit4Change(Sender: TObject);
begin

DBEdit42.Text:=DBEdit4.Text;
end;

procedure TF_view_change.DBEdit5Change(Sender: TObject);
begin

DBEdit43.Text:=DBEdit5.Text;
end;

procedure TF_view_change.DBEdit6Change(Sender: TObject);
begin

DBEdit44.Text:=DBEdit6.Text;
end;

procedure TF_view_change.DBEdit7Change(Sender: TObject);
begin

DBEdit45.Text:=DBEdit7.Text;
end;

procedure TF_view_change.DBComboBox6Change(Sender: TObject);
begin

DBEdit46.Text:=DBCombobox6.Text;
end;

procedure TF_view_change.DBEdit20Change(Sender: TObject);
begin
DBEdit48.Text:=DBEdit20.Text;

end;

procedure TF_view_change.DBComboBox3Change(Sender: TObject);
begin
DBEdit49.Text:=DBCombobox3.Text;

end;

procedure TF_view_change.DBEdit1Change(Sender: TObject);
begin
DBEdit50.Text:=DBEdit1.Text;

end;

procedure TF_view_change.DBEdit14Change(Sender: TObject);
begin
DBEdit51.Text:=DBEdit14.Text;

end;

procedure TF_view_change.DBEdit13Change(Sender: TObject);
begin
DBEdit52.Text:=DBEdit13.Text;

end;

procedure TF_view_change.DBComboBox2Change(Sender: TObject);
begin
DBEdit53.Text:=DBCombobox2.Text;

end;

procedure TF_view_change.DBEdit18Change(Sender: TObject);
begin
DBEdit54.Text:=DBEdit18.Text;

end;

procedure TF_view_change.DBComboBox5Change(Sender: TObject);
begin
DBEdit55.Text:=DBCombobox5.Text;

end;

procedure TF_view_change.DBEdit8Change(Sender: TObject);
begin
DBEdit56.Text:=DBEdit8.Text;

end;

procedure TF_view_change.DBEdit10Change(Sender: TObject);
begin
DBEdit58.Text:=DBEdit10.Text;

end;

procedure TF_view_change.DBEdit11Change(Sender: TObject);
begin
DBEdit59.Text:=DBEdit11.Text;

end;

procedure TF_view_change.DBEdit16Change(Sender: TObject);
begin
DBEdit61.Text:=DBEdit16.Text;
end;

procedure TF_view_change.DBComboBox8Change(Sender: TObject);
begin
DBEdit63.Text:=DBCombobox8.Text;

end;

procedure TF_view_change.DBComboBox4Change(Sender: TObject);
begin
DBEdit65.Text:=DBCombobox4.Text;

end;

procedure TF_view_change.BitBtn4Click(Sender: TObject);
begin
IBTable1.Active:=true;
IBTransaction1.Active:=true;
DBEdit3.Visible:=false;
DBEdit4.Visible:=false;
DBEdit5.Visible:=false;
DBEdit6.Visible:=false;
DBEdit7.Visible:=false;
DBEdit20.Visible:=false;
DBEdit1.Visible:=false;
DBEdit14.Visible:=false;
DBEdit13.Visible:=false;
DBEdit18.Visible:=false;
DBEdit8.Visible:=false;
DBEdit10.Visible:=false;
DBEdit11.Visible:=false;
DBEdit16.Visible:=false;
DBMemo1.Visible:=false;
DBCombobox1.Enabled:=true;
DBCombobox4.Enabled:=true;
DBCombobox8.Enabled:=true;
DateTimePicker5.Enabled:=true;
DateTimePicker1.Enabled:=true;
DateTimePicker4.Enabled:=true;
DateTimePicker2.Enabled:=true;
DateTimePicker6.Enabled:=true;
DateTimePicker3.Enabled:=true;
DBCombobox6.Enabled:=true;
DBCombobox3.Enabled:=true;
DBCombobox2.Enabled:=true;
DBCombobox5.Enabled:=true;
DBImage1.Visible:=false;
DBImage2.Visible:=true;
DBEdit38.Visible:=true;
DBEdit42.Visible:=true;
DBEdit43.Visible:=true;
DBEdit44.Visible:=true;
DBEdit45.Visible:=true;
DBEdit48.Visible:=true;
DBEdit50.Visible:=true;
DBEdit51.Visible:=true;
DBEdit52.Visible:=true;
DBEdit54.Visible:=true;
DBEdit56.Visible:=true;
DBEdit58.Visible:=true;
DBEdit59.Visible:=true;
DBEdit61.Visible:=true;
DBMemo2.Visible:=true;
 BitBtn5.Enabled:=true;
 if DBCombobox1.Text='Œ—ÌÃ' then
 begin
 DBCombobox1.Enabled:=false;
 DateTimePicker5.Enabled:=true;
 DateTimePicker5.Visible:=true;
 Label32.Visible:=true;
 end;
with IBTable1 do
begin
if RecordCount <> 0 then
begin
while not(eof) do
begin
if (IBTable1STUDENT_ID.Value<>DataM.Query_numSTUDENT_ID.Value) then
begin
 IBTable1.Next;
 end
 else
 begin
IBTable1.Edit;
BitBtn9.Enabled:=true;
BitBtn4.Visible:=false;
BitBtn9.Visible:=true;
exit;
end;
end;
end;
end;
 end;

procedure TF_view_change.DBComboBox1Change(Sender: TObject);
begin
DBEdit66.Text:=DBCombobox1.Text;
end;

procedure TF_view_change.DBMemo1Change(Sender: TObject);
begin
DBMemo2.Text:=DBMemo1.Text;
end;

procedure TF_view_change.DBEdit61Change(Sender: TObject);
begin
s:=DBEdit16.Text;
j:=1;
end;

procedure TF_view_change.DBEdit61Exit(Sender: TObject);
begin
if (j=1) and (DBEdit61.Text<>s) then
begin
if DBEdit61.Text<>'' then
begin
with datam.Q_comper do
begin
close;
Prepare;
open;
first;
while not(eof)do
begin
if datam.Q_comperstudent_id.Value<>DBEdit61.Text then
begin
next;
end
else
begin
application.MessageBox('Â–« «·—ﬁ„ „œŒ· „”»ﬁ«',' ‰»ÌÂ',mb_iconwarning);
bitbtn9.Enabled:=false;
exit;
end;
end;
end;
end;
j:=0;
end;
bitbtn9.Enabled:=true;
end;

procedure TF_view_change.BitBtn5Click(Sender: TObject);
begin
DBImage2.PasteFromClipboard;
end;

procedure TF_view_change.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit38.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit38.ReadOnly:=FALSE;
end;
end;


procedure TF_view_change.DBEdit42KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit42.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit42.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit43KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit43.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit43.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit44KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit44.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit44.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit45KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit45.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit45.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit48KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit48.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit48.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit50KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit50.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit50.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit51KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit51.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit51.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit52KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit52.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit52.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit54KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit54.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit54.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit56KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit56.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit56.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit58KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit58.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit58.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit59.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit59.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DBEdit61KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit61.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit61.ReadOnly:=FALSE;
end;
end;

procedure TF_view_change.DateTimePicker5Change(Sender: TObject);
begin
DBEdit2.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker5.date));
end;

end.




