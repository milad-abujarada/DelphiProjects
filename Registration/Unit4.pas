unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, DBCtrls, Mask, ExtCtrls, Menus, ExtDlgs,
  ImgList, jpeg, Grids, DBGrids, TeeProcs, TeEngine, Chart, DB, IBDatabase,
  IBCustomDataSet, IBTable;

type
  Tinputstudent = class(TForm)
    Image1: TImage;
    Label26: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ImageList1: TImageList;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    Label28: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    TPanal: TPanel;
    Label25: TLabel;
    DBImage1: TDBImage;
    DBMemo1: TDBMemo;
    IBTable1: TIBTable;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    DateTimePicker5: TDateTimePicker;
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
    DateTimePicker3: TDateTimePicker;
    DBComboBox7: TDBComboBox;
    BitBtn1: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
    procedure DateTimePicker5Change(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inputstudent: Tinputstudent;

implementation

uses Unit8, Unit2;



{$R *.DFM}

procedure Tinputstudent.BitBtn4Click(Sender: TObject);
begin
Form_help.Memo1.Lines.LoadFromFile('E:\«·‰”Œ… «·«ŒÌ—… „‰ «·„‰ŸÊ„…\HELP\input_stu.txt');
Form_help.ShowModal;
end;
procedure Tinputstudent.BitBtn3Click(Sender: TObject);
begin
 if (DBEdit1.text='') then
begin
 application.MessageBox(' √ﬂœ „‰ ≈œŒ«· «”„ «·ÿ«·» »«·⁄—»Ì… ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end;
if  (DBComboBox1.text='')then
begin
 application.MessageBox('  √ﬂœ „‰ «œŒ«· «·Ã‰”',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end;
 if (DBEdit6.text='') then
begin
 application.MessageBox(' √ﬂœ „‰ ≈œŒ«·  «—ÌŒ «·„Ì·«œ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end;
 if (DBEdit7.text='') then
begin
 application.MessageBox(' √ﬂœ „‰ ≈œŒ«· „ﬂ«‰ «·„Ì·«œ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end;
  if (DBEdit8.text='') then
begin
 application.MessageBox(' √ﬂœ „‰ ≈œŒ«· «·Ã‰”Ì…  ',' ‰»ÌÂ',mb_iconwarning);
 exit;
  end;
  if (DBEdit17.text='') then
begin
 application.MessageBox(' √ﬂœ „‰ ≈œŒ«· —ﬁ„ «·ÿ«·»',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end;
  if  (DBComboBox5.text='')then
begin
 application.MessageBox('  √ﬂœ „‰ «œŒ«· ’›… «·ﬁÌœ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end ;
    if (DBEdit19.text='') then
begin
 application.MessageBox(' √ﬂœ „‰ ≈œŒ«·  «—ÌŒ «·«· Õ«ﬁ',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end;
   if  (DBComboBox7.text='')then
begin
 application.MessageBox('  √ﬂœ „‰ «œŒ«· Õ«·… «·ÿ«·»',' ‰»ÌÂ',mb_iconwarning);
 exit;
 end ;
 //******************************//
begin
  IBTable1.Post;
  IBTransaction1.Commit;
  IBTable1.Active:=false;
  IBTransaction1.Active:=false;
  application.MessageBox(' „ Õ›Ÿ «·»Ì«‰« ',' √ﬂÌœ',mb_ok);
  IBTable1.Active:=true;
  IBTransaction1.Active:=true;
  IBTable1.Open;
  IBTable1.Insert;
  ///////////////////////////
end;
end;
procedure Tinputstudent.BitBtn5Click(Sender: TObject);
begin
IBTable1.Active:=false;
IBTransaction1.Active:=false;
close;
end;



procedure Tinputstudent.FormShow(Sender: TObject);
begin
IBTable1.Active:=true;
IBTransaction1.Active:=true;
IBTable1.Insert;
{
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit10.Clear;
Edit11.Clear;
Edit12.Clear;
Edit13.Clear;
Edit14.Clear;
Edit15.Clear;
Edit16.Clear;
//memo1.Clear; }
 end;
procedure Tinputstudent.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin {
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit10.Clear;
Edit11.Clear;
Edit12.Clear;
Edit13.Clear;
Edit14.Clear;
Edit15.Clear;
Edit16.Clear; }
end;
procedure Tinputstudent.Edit16KeyPress(Sender: TObject; var Key: Char);
begin
 {if  KEY IN(['0'..'9']) then
begin
   Edit16.ReadOnly:=TRUE;
   BEEP;
end
ELSE  Edit16.ReadOnly:=FALSE;}

end;

procedure Tinputstudent.DateTimePicker1Change(Sender: TObject);
begin
DBEdit6.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

procedure Tinputstudent.DateTimePicker2Change(Sender: TObject);
begin
DBEdit13.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
end;

procedure Tinputstudent.DateTimePicker3Change(Sender: TObject);
begin
DBEdit15.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker3.date));
end;

procedure Tinputstudent.DateTimePicker4Change(Sender: TObject);
begin
DBEdit18.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker4.date));
end;

procedure Tinputstudent.DateTimePicker5Change(Sender: TObject);
begin
DBEdit19.EditText:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
end;

procedure Tinputstudent.DBEdit17Exit(Sender: TObject);
begin
if DBEdit17.Text<>'' then
begin
with datam.Q_comper do
begin
close;
Prepare;
open;
first;
while not(eof)do
begin
if datam.Q_comperstudent_id.Value<>DBEdit17.Text then
begin
next;
bitbtn3.Enabled:=true;
end
else
begin
application.MessageBox('Â–« «·—ﬁ„ „œŒ· „”»ﬁ««·—Ã«¡ ≈œŒ«· —ﬁ„ ¬Œ—',' ‰»ÌÂ',mb_iconwarning);
bitbtn3.Enabled:=false;
exit;
end;
end;
end;
end;
end;

procedure Tinputstudent.BitBtn1Click(Sender: TObject);
begin
DBImage1.PasteFromClipboard;
end;

procedure Tinputstudent.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit17.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit17.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
   if  ( (KEY IN(['«'..'Ì']))OR(KEY IN(['A'..'Z'])) OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit14.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit14.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit10.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit10.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit12.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit12.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
   if  ((KEY IN(['A'..'Z'])) OR (KEY IN(['«'..'Ì']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit11.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit11.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit1.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit1.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
 if  ((KEY IN(['0'..'9']))or (KEY IN(['«'..'Ì']))) then
begin
   DBEdit2.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit2.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit3.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit3.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit4.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit4.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit5.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit5.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit7.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit7.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit8.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit8.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit9.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit9.ReadOnly:=FALSE;
end;
end;

procedure Tinputstudent.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
if  ((KEY IN(['0'..'9'])) OR (KEY IN(['A'..'Z']))OR (KEY IN(['a'..'z']))OR (KEY IN(['{'..'~']))OR (KEY IN(['['..'_'])) OR (KEY IN([':'..'@']))OR (KEY IN(['!'..'/']))) then
begin
   DBEdit16.ReadOnly:=TRUE;
   BEEP;
end
ELSE
begin
 DBEdit16.ReadOnly:=FALSE;
end;
end;

end.

