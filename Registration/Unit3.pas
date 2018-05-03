unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Tabnotbk, Menus, StdCtrls, Buttons, ExtCtrls, Db, DBTables,
  ImgList, ToolWin, jpeg, Gauges, HTTPApp;

type
  Tinterface1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N10: TMenuItem;
    N12: TMenuItem;
    N21: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    N29: TMenuItem;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ImageList1: TImageList;
    ToolButton6: TToolButton;
    ToolBar2: TToolBar;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    procedure N7Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  interface1: Tinterface1;

implementation

uses Unit4, Unit7, Unit5, Unit10, Unit11, Unit12, Unit13, Unit21, Unit19,
  U_information;


{$R *.DFM}

procedure Tinterface1.N7Click(Sender: TObject);
begin
application.Terminate;
end;

procedure Tinterface1.N3Click(Sender: TObject);
begin
inputstudent.Show;
end;

procedure Tinterface1.N4Click(Sender: TObject);
begin
F_view_change.Show;
end;

procedure Tinterface1.N10Click(Sender: TObject);
begin
F_enter_num.ShowModal;
end;

procedure Tinterface1.N5Click(Sender: TObject);
begin
F_count.ShowModal;
end;

procedure Tinterface1.N12Click(Sender: TObject);
begin
       F_go_name.ShowModal;
end;

procedure Tinterface1.ToolButton5Click(Sender: TObject);
begin
F_count.ShowModal;
end;

procedure Tinterface1.ToolButton4Click(Sender: TObject);
begin
F_enter_num.ShowModal;
end;

procedure Tinterface1.SpeedButton1Click(Sender: TObject);
begin
form1.ShowModal;
end;

end.
