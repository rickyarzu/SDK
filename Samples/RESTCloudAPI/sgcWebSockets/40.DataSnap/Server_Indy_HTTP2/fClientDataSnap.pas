unit fClientDataSnap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.SqlExpr, Data.DBXDataSnap,
  Data.DBXCommon, IPPeerClient, Vcl.StdCtrls;

type
  TForm66 = class(TForm)
    SQLConnection1: TSQLConnection;
    Button1: TButton;
    txtText: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SQLConnection1AfterConnect(Sender: TObject);
    procedure SQLConnection1AfterDisconnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form66: TForm66;

implementation

{$R *.dfm}

uses uClientDataSnap;

procedure TForm66.Button1Click(Sender: TObject);
var
  oMethods: TServerMethods1Client;
begin
  oMethods := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
  Try
    txtText.Text := oMethods.ReverseString(txtText.Text);
  Finally
    FreeAndNil(oMethods);
  End;
end;

procedure TForm66.Button2Click(Sender: TObject);
begin
  SQLConnection1.Connected := True;
end;

procedure TForm66.SQLConnection1AfterConnect(Sender: TObject);
begin
  Button1.Enabled := True;
  Button2.Enabled := False;
end;

procedure TForm66.SQLConnection1AfterDisconnect(Sender: TObject);
begin
  Button1.Enabled := False;
  Button2.Enabled := True;
end;

end.
