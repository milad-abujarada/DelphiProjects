unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls;

type
  TF_add_motamer = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_add_motamer: TF_add_motamer;

implementation

uses Unit8;

{$R *.DFM}

procedure TF_add_motamer.Button1Click(Sender: TObject);
begin
Form_help.Memo1.Lines.LoadFromFile('c:\rigistration\help\add_motmer.txt');
Form_help.ShowModal;
end;

procedure TF_add_motamer.Button2Click(Sender: TObject);
begin
close;
end;

end.
