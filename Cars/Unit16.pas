unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, Buttons, ExtCtrls;

type
  TForm16 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    Query_search_by_shelfe: TQuery;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query_search_by_shelfeST_NO: TIntegerField;
    Query_search_by_shelfeST_KIND: TStringField;
    Query_search_by_shelfeST_TYPE: TStringField;
    Query_search_by_shelfeST_QUANTITY: TIntegerField;
    Query_search_by_shelfeST_TYPE_PAY: TFloatField;
    Query_search_by_shelfeST_TYPE_SALE: TFloatField;
    Query_search_by_shelfeST_AVAILBLE: TIntegerField;
    Query_search_by_shelfeST_STORED_DATE: TStringField;
    Query_search_by_shelfeSHELF_NO: TIntegerField;
    Query_search_by_shelfeNO_IN_GAIN_TABLE: TIntegerField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

uses Unit5, Unit1;

{$R *.dfm}

procedure TForm16.BitBtn3Click(Sender: TObject);
begin
form16.Hide;
form5.Show;
end;

procedure TForm16.BitBtn2Click(Sender: TObject);
begin
form16.Hide;
form1.Show;
end;

procedure TForm16.BitBtn1Click(Sender: TObject);
begin
if (edit1.Text='') then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· —ﬁ„ «·—›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit1.SetFocus;
exit;
end;
Query_search_by_shelfe.Close;
Query_search_by_shelfe.Prepare;
Query_search_by_shelfe.Params[0].Value:=strtoint(edit1.Text);
Query_search_by_shelfe.Open;
if(Query_search_by_shelfe.RecordCount=0)then
begin
application.MessageBox('·« ÌÊÃœ »÷«⁄… ·Â–« «·—›',' ‰»ÌÂ',mb_iconwarning+mb_ok);
exit;
end;
end;

procedure TForm16.FormShow(Sender: TObject);
begin
Query_search_by_shelfe.Close;
edit1.Text:='';
end;

end.
