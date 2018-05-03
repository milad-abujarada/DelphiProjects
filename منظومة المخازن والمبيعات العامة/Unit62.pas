unit Unit62;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids, ExtCtrls,
  ComCtrls;

type
  TForm62 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource5: TDataSource;
    IBQuery5: TIBQuery;
    IBQuery5PLACE: TIBStringField;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBQuery1KIND: TIBStringField;
    IBQuery1NAME: TIBStringField;
    IBQuery1NUM: TIntegerField;
    IBQuery1INPUT_DATE: TDateField;
    IBQuery1MOVED_DATE: TDateField;
    IBQuery1BUY_PRICE: TIBBCDField;
    IBQuery1QUANTITY: TIntegerField;
    IBQuery1NUM_IN_STORGE_HISTORY: TIntegerField;
    IBQuery1PLACE: TIBStringField;
    IBQuery1MOVED_NUM: TIntegerField;
    Button2: TButton;
    DataSource2: TDataSource;
    rep: TIBQuery;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form62: TForm62;

implementation

uses Unit1, Unit61;

{$R *.dfm}

procedure TForm62.FormShow(Sender: TObject);
begin
panel2.Hide;
ibquery5.Close;
ibquery5.Open;
combobox1.Clear;
while not(ibquery5.Eof)do
begin
combobox1.Items.Add(ibquery5['place']);
ibquery5.Next;
end;
end;

procedure TForm62.ComboBox1Change(Sender: TObject);
begin
panel2.Hide;
IBQuery1.Close;
IBQuery1.Prepare;
ibquery1.Params[0].Value:=combobox1.Text;
IBQuery1.Open;
end;

procedure TForm62.Button1Click(Sender: TObject);
begin
panel2.Hide;
form62.Close;
form1.show;
end;

procedure TForm62.Button2Click(Sender: TObject);
begin
datetimepicker1.Date:=now;
datetimepicker2.Date:=now;
panel2.show;
end;

procedure TForm62.Button3Click(Sender: TObject);
begin
rep.Close;
rep.Params[0].Value:=combobox1.Text;
rep.Params[1].Value:=datetimepicker1.Date;
rep.Params[2].Value:=datetimepicker2.Date;
rep.Open;
panel2.Hide;
form61.QRLabel199.Caption:=combobox1.Text;
form61.QRLabel201.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker1.date));
form61.QRLabel205.Caption:=(formatdatetime('dd/mm/yyyy',DateTimePicker2.date));
form61.QuickRep27.Preview;
end;

end.
