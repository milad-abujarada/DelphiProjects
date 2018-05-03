unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids, DBGrids, Buttons, DB,
  DBTables;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Panel27: TPanel;
    Panel28: TPanel;
    Label21: TLabel;
    Panel29: TPanel;
    Label22: TLabel;
    ComboBox3: TComboBox;
    Panel30: TPanel;
    Panel31: TPanel;
    DBGrid5: TDBGrid;
    Panel33: TPanel;
    BitBtn19: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel35: TPanel;
    DBGrid1: TDBGrid;
    Panel37: TPanel;
    BitBtn22: TBitBtn;
    Panel12: TPanel;
    Panel13: TPanel;
    Label16: TLabel;
    Panel14: TPanel;
    Label15: TLabel;
    DateTimePicker3: TDateTimePicker;
    Panel15: TPanel;
    BitBtn14: TBitBtn;
    Panel16: TPanel;
    DBGrid2: TDBGrid;
    Panel34: TPanel;
    BitBtn20: TBitBtn;
    BitBtn1: TBitBtn;
    Query_type: TQuery;
    DataSource6: TDataSource;
    Query_date: TQuery;
    Query_dateSERAIL_NUM: TIntegerField;
    Query_dateVARIETY_NAME: TStringField;
    Query_dateTYPE_NAME: TStringField;
    Query_dateQUANTITY: TIntegerField;
    Query_dateQUANTITY_AVAILABLE: TIntegerField;
    Query_dateBUY_PRICE: TFloatField;
    Query_dateSALE_PRICE: TFloatField;
    Query_dateDATE_INPUT: TStringField;
    Query_dateDATE_EX: TStringField;
    DataSource3: TDataSource;
    Query_typeSERAIL_NUM: TIntegerField;
    Query_typeVARIETY_NAME: TStringField;
    Query_typeTYPE_NAME: TStringField;
    Query_typeQUANTITY: TIntegerField;
    Query_typeQUANTITY_AVAILABLE: TIntegerField;
    Query_typeBUY_PRICE: TFloatField;
    Query_typeSALE_PRICE: TFloatField;
    Query_typeDATE_INPUT: TStringField;
    Query_typeDATE_EX: TStringField;
    Query1: TQuery;
    Query1SERAIL_NUM: TIntegerField;
    Query1VARIETY_NAME: TStringField;
    Query1TYPE_NAME: TStringField;
    Query1QUANTITY: TIntegerField;
    Query1QUANTITY_AVAILABLE: TIntegerField;
    Query1BUY_PRICE: TFloatField;
    Query1SALE_PRICE: TFloatField;
    Query1DATE_INPUT: TStringField;
    Query1DATE_EX: TStringField;
    DataSource1: TDataSource;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2TYP_NO: TIntegerField;
    Query2TYP_NAME: TStringField;
    Query2KIND_NAME: TStringField;
    Query1DATE_OUTPUT: TStringField;
    Query_dateDATE_OUTPUT: TStringField;
    Query_typeDATE_OUTPUT: TStringField;
    procedure ComboBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   // procedure BitBtn17Click(Sender: TObject);
   // procedure BitBtn17Click(Sender: TObject);
   // procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DateTimePicker3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm6.ComboBox3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
bitbtn1.SetFocus;
end;
 end;


procedure TForm6.BitBtn14Click(Sender: TObject);
begin
Query_date.Close;
Query_date.Prepare;
Query_date.Params[0].Value:=(formatdatetime('dd/mm/yyyy',DateTimePicker3.date));
Query_date.Open;
end;



procedure TForm6.BitBtn1Click(Sender: TObject);
begin
Query_type.Close;
Query_type.Prepare;
Query_type.Params[0].Value:=combobox3.Text;
Query_type.Open;
end;

procedure TForm6.DateTimePicker3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(key=13)then
begin
bitbtn14.SetFocus;
end;
end;
procedure TForm6.BitBtn22Click(Sender: TObject);
begin
panel1.Visible:=false;
form6.Hide;
form3.show;
end;

procedure TForm6.BitBtn19Click(Sender: TObject);
begin
panel27.Visible:=false;
form6.Hide;
combobox3.Clear;
form3.show;
end;

procedure TForm6.BitBtn20Click(Sender: TObject);
begin
panel12.Visible:=false;
form6.Hide;
form3.show;
end;

end.
