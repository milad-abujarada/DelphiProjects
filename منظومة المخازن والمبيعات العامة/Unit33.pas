unit Unit33;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TForm33 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    IBQuery1KIND: TIBStringField;
    IBQuery2NAME: TIBStringField;
    IBQuery2KIND: TIBStringField;
    IBQuery2NUM: TIntegerField;
    IBQuery2SALE_PRICE: TIBBCDField;
    IBQuery3NAME: TIBStringField;
    IBQuery3KIND: TIBStringField;
    IBQuery3NUM: TIntegerField;
    IBQuery3SALE_PRICE: TIBBCDField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form33: TForm33;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm33.Button2Click(Sender: TObject);
begin
combobox1.Text:='';
combobox2.Text:='';
edit1.Text:='';
edit2.Text:='';
form33.Close;
form1.show;
end;

procedure TForm33.FormShow(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Prepare;
IBQuery1.Open;
combobox1.Clear;
while(not(IBQuery1.Eof))do
begin
combobox1.Items.Add(IBQuery1['kind']);
IBQuery1.Next;
end;
end;

procedure TForm33.ComboBox1Change(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.Prepare;
IBQuery2.Params[0].Value:=combobox1.Text;
IBQuery2.Open;
combobox2.Clear;
while(not(IBQuery2.Eof))do
begin
combobox2.Items.Add(IBQuery2['name']);
IBQuery2.Next;
end;
end;

procedure TForm33.ComboBox2Change(Sender: TObject);
begin
IBQuery3.Close;
IBQuery3.Prepare;
IBQuery3.Params[0].Value:=combobox1.Text;
IBQuery3.Params[1].Value:=combobox2.Text;
IBQuery3.Open;
edit1.Text:=IBQuery3['sale_price'];
end;

procedure TForm33.Button1Click(Sender: TObject);
begin
if edit2.Text='' then
begin
application.MessageBox('«·—Ã«¡ ≈œŒ«· ”⁄— «·»Ì⁄ «·ÃœÌœ',' ‰»ÌÂ',mb_iconwarning+mb_ok);
edit2.SetFocus;
exit;
end;
IBQuery3.Edit;
IBQuery3['sale_price']:=edit2.Text;
IBQuery3.Post;
form1.IBTransaction1.Commit;
combobox1.Text:='';
combobox2.Clear;
combobox2.Text:='';
edit1.Text:='';
edit2.Text:='';
end;

end.
