unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, Menus, IBCustomDataSet, IBQuery, IBUpdateSQL,
  StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    N11: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N21: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N45: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    N68: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    Panel1: TPanel;
    N76: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DataSource1: TDataSource;
    password: TIBQuery;
    passwordNAME: TIBStringField;
    passwordCODE: TIntegerField;
    N77: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    N81: TMenuItem;
    Button1: TButton;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N53Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N64Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure N66Click(Sender: TObject);
    procedure N67Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N73Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure N75Click(Sender: TObject);
    procedure N76Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N77Click(Sender: TObject);

    procedure N79Click(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
   
    procedure Button1Click(Sender: TObject);
    
  private
    { Private declarations }
    first:integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit5, Unit2, Unit6, Unit8, Unit9, Unit10, Unit11, Unit12,
  Unit14, Unit16, Unit17, Unit18, Unit19, Unit20, Unit21, Unit22, Unit23,
  Unit24, Unit25, Unit26, Unit27, Unit28, Unit29, Unit30, Unit31, Unit32,
  Unit33, Unit34, Unit35, Unit36, Unit37, Unit39, Unit40, Unit41, Unit42,
  Unit43, Unit44, Unit45, Unit46, Unit47, Unit48, Unit51, Unit52, Unit53,
  Unit55, Unit56, Unit57, Unit58, Unit59, Unit60, Unit62, Unit63, Unit64,
  Unit65, Unit66, Unit68, Unit69, Unit70, Unit71, Unit72, Unit73, Unit74,
  Unit77, Unit81, Unit82, Unit83, Unit84;

{$R *.dfm}

procedure TForm1.N1Click(Sender: TObject);
begin
form1.Hide;
form3.show;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
form1.Hide;
form5.show;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
form1.Hide;
form6.show;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
form1.Hide;
form8.show;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
form1.Hide;
form9.show;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
form1.Hide;
form10.show;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
form1.Hide;
form11.show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
LOADKEYBOARdlayout('00000401',klf_activate);
if (first<>1)then
begin
form1.N11.Enabled:=false;
form1.N10.Enabled:=false;
form1.N18.Enabled:=false;
form1.N21.Enabled:=false;
form1.N25.Enabled:=false;
form1.N29.Enabled:=false;
form1.N12.Enabled:=false;
form1.N51.Enabled:=false;
form1.N55.Enabled:=false;
form1.N76.Enabled:=false;
edit1.Show;
edit2.Show;
label1.Show;
label2.Show;
edit1.SetFocus;
end;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
form1.Hide;
form12.show;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
form1.Hide;
form14.show;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
form1.Hide;
form16.show;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
form1.Hide;
form17.show;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
form1.Hide;
form18.show;
end;

procedure TForm1.N19Click(Sender: TObject);
begin
form1.Hide;
form19.show;
end;

procedure TForm1.N20Click(Sender: TObject);
begin
form1.Hide;
form20.show;
end;

procedure TForm1.N22Click(Sender: TObject);
begin
form1.Hide;
form21.show;
end;

procedure TForm1.N23Click(Sender: TObject);
begin
form1.Hide;
form22.show;
end;

procedure TForm1.N24Click(Sender: TObject);
begin
form23.show;
form1.Hide;
end;

procedure TForm1.N26Click(Sender: TObject);
begin
form24.show;
form1.Hide;
end;

procedure TForm1.N27Click(Sender: TObject);
begin
form25.show;
form1.Hide;
end;

procedure TForm1.N28Click(Sender: TObject);
begin
form26.show;
form1.Hide;
end;

procedure TForm1.N30Click(Sender: TObject);
begin
form1.Hide;
form27.show;
end;

procedure TForm1.N32Click(Sender: TObject);
begin
form28.show;
form1.hide;
end;

procedure TForm1.N31Click(Sender: TObject);
begin
form1.Hide;
form29.show;
end;

procedure TForm1.N33Click(Sender: TObject);
begin
form1.Hide;
form30.show;
end;

procedure TForm1.N34Click(Sender: TObject);
begin
form1.Hide;
form31.show;
end;

procedure TForm1.N35Click(Sender: TObject);
begin
form1.Hide;
form32.show;
end;

procedure TForm1.N36Click(Sender: TObject);
begin
form1.Hide;
form33.show;
end;

procedure TForm1.N37Click(Sender: TObject);
begin
form1.Hide;
form34.show;
end;

procedure TForm1.N39Click(Sender: TObject);
begin
form1.Hide;
form35.show;
end;

procedure TForm1.N40Click(Sender: TObject);
begin
form1.Hide;
form36.show;
end;

procedure TForm1.N41Click(Sender: TObject);
begin
form1.Hide;
form37.show;
end;

procedure TForm1.N42Click(Sender: TObject);
begin
form1.Hide;
form39.show;
end;

procedure TForm1.N43Click(Sender: TObject);
begin
form1.Hide;
form40.show;
end;

procedure TForm1.N44Click(Sender: TObject);
begin
form1.Hide;
form41.show;
end;

procedure TForm1.N46Click(Sender: TObject);
begin
form1.Hide;
form43.show;
end;

procedure TForm1.N47Click(Sender: TObject);
begin
form1.Hide;
form44.show;
end;

procedure TForm1.N48Click(Sender: TObject);
begin
form1.Hide;
form45.show;
end;

procedure TForm1.N49Click(Sender: TObject);
begin
form1.Hide;
form46.show;
end;

procedure TForm1.N50Click(Sender: TObject);
begin
form1.Hide;
form47.show;
end;

procedure TForm1.N52Click(Sender: TObject);
begin
form1.Hide;
form48.show;
end;

procedure TForm1.N54Click(Sender: TObject);
begin
form1.Hide;
form51.show;
end;

procedure TForm1.N56Click(Sender: TObject);
begin
form1.Hide;
form52.show;
end;

procedure TForm1.N57Click(Sender: TObject);
begin
form1.Hide;
form53.show;
end;

procedure TForm1.N58Click(Sender: TObject);
begin
form1.Hide;
form55.show;
end;

procedure TForm1.N45Click(Sender: TObject);
begin
form1.Hide;
form42.Show;
end;

procedure TForm1.N59Click(Sender: TObject);
begin
form1.Hide;
form56.show;
end;

procedure TForm1.N60Click(Sender: TObject);
begin
form1.Hide;
form57.show;
end;

procedure TForm1.N61Click(Sender: TObject);
begin
form1.Hide;
form58.show;
end;

procedure TForm1.N62Click(Sender: TObject);
begin
form1.Hide;
form59.show;
end;

procedure TForm1.N53Click(Sender: TObject);
begin
form60.show;
form1.hide;
end;

procedure TForm1.N63Click(Sender: TObject);
begin
form1.Hide;
form62.show;
end;

procedure TForm1.N64Click(Sender: TObject);
begin
form63.show;
form1.Hide;
end;

procedure TForm1.N65Click(Sender: TObject);
begin
form1.Hide;
form64.show;
end;

procedure TForm1.N66Click(Sender: TObject);
begin
form1.Hide;
form65.show;
end;

procedure TForm1.N67Click(Sender: TObject);
begin
form1.Hide;
form66.show;
end;

procedure TForm1.N69Click(Sender: TObject);
begin
form1.Hide;
form68.show;
end;

procedure TForm1.N70Click(Sender: TObject);
begin
form1.Hide;
form69.show;
end;

procedure TForm1.N68Click(Sender: TObject);
begin
form1.Hide;
form2.show;
end;

procedure TForm1.N71Click(Sender: TObject);
begin
form1.Hide;
form70.show;
end;

procedure TForm1.N72Click(Sender: TObject);
begin
form1.Hide;
form71.show;
end;

procedure TForm1.N38Click(Sender: TObject);
begin
form1.Hide;
form72.show;
end;

procedure TForm1.N73Click(Sender: TObject);
begin
form1.Hide;
form73.show;
end;

procedure TForm1.N74Click(Sender: TObject);
begin
form1.Hide;
form74.show;
end;

procedure TForm1.N75Click(Sender: TObject);
begin
form1.Hide;
form77.show;
end;

procedure TForm1.N76Click(Sender: TObject);
begin
form1.N11.Enabled:=false;
form1.N10.Enabled:=false;
form1.N18.Enabled:=false;
form1.N21.Enabled:=false;
form1.N25.Enabled:=false;
form1.N29.Enabled:=false;
form1.N12.Enabled:=false;
form1.N51.Enabled:=false;
form1.N55.Enabled:=false;
form1.N76.Enabled:=false;
edit1.Show;
edit2.Show;
label1.Show;
label2.Show;
edit1.SetFocus;
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
password.Close;
password.Open;
if password['code']=edit1.Text then
begin
form1.N11.Enabled:=true;
form1.N10.Enabled:=true;
form1.N18.Enabled:=true;
form1.N21.Enabled:=true;
form1.N25.Enabled:=true;
form1.N29.Enabled:=true;
form1.N12.Enabled:=true;
form1.N51.Enabled:=true;
form1.N55.Enabled:=true;
form1.N76.Enabled:=true;
edit1.hide;
edit2.hide;
label1.hide;
label2.hide;
edit1.Text:='';
first:=1;
end
else
begin
application.MessageBox('«·—Ã«¡ «· «ﬂœ „‰ ﬂ·„… «·„—Ê—',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.Text:='';
edit1.SetFocus;
end;
end;
end;

procedure TForm1.N77Click(Sender: TObject);
begin
form1.Hide;
form81.show;
end;



procedure TForm1.N79Click(Sender: TObject);
begin
form1.Hide;
form82.Show;
end;

procedure TForm1.N80Click(Sender: TObject);
begin
form1.Hide;
form83.Show;
end;

procedure TForm1.N81Click(Sender: TObject);
begin
form1.Hide;
form84.Show;
end;





procedure TForm1.Button1Click(Sender: TObject);
begin
form1.Close;
end;



end.
