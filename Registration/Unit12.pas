unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, FileCtrl;

type
  TForm_CHDIR = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    Label2: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_CHDIR: TForm_CHDIR;

implementation

uses Unit8;

{$R *.DFM}

end.
