unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  Tf_enter_num1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_enter_num1: Tf_enter_num1;

implementation

uses Unit2, Unit18, Unit14;

{$R *.DFM}

end.
