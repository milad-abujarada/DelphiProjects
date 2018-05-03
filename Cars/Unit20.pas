unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls, DB,
  DBTables;

type
  TForm20 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    Query_select_companys: TQuery;
    Query_select_companysCOMPANY_NAME: TStringField;
    Query_select_companysSERIAL: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm20.BitBtn1Click(Sender: TObject);
begin
form20.Hide;
form1.Show;
end;

procedure TForm20.FormShow(Sender: TObject);
begin
Query_select_companys.Close;
Query_select_companys.Prepare;
Query_select_companys.Open;
end;

end.
