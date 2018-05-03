unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TF_add_dep = class(TForm)
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_add_dep: TF_add_dep;

implementation

uses Unit8, Unit2;


{$R *.DFM}

procedure TF_add_dep.BitBtn2Click(Sender: TObject);
begin
   close;
end;

end.
