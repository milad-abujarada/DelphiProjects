unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Db, DBTables, Grids, DBGrids, StdCtrls, Buttons;

type
  TF_add_nat = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_add_nat: TF_add_nat;

implementation

uses Unit2, Unit8;

{$R *.DFM}

end.
