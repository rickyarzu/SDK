unit Janua.FMX.WordpressLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit, FMX.Controls.Presentation,
  FMX.StdCtrls;

type
  TfrmLogin = class(TForm)
    Label1: TLabel;
    edUserName: TEdit;
    Label2: TLabel;
    edPassword: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FLFile: string;
    FMyEvent: TProc;
    procedure SetLFile(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property LFile: string read FLFile write SetLFile;
    property MyEvent: TProc read FMyEvent write FMyEvent;
  end;

var
  frmLogin: TfrmLogin;

implementation

uses Janua.Core.Types, Janua.Wordpress.Impl, Spring, Janua.Application.Framework;

{$R *.fmx}

procedure TfrmLogin.Button1Click(Sender: TObject);
var
  LMessage: string;
begin
  try
    Guard.CheckTrue(Assigned(FMyEvent), 'FMyEvent Not Set');
    if TWordpressClass.JWTLogin(edUserName.Text, edPassword.Text, LMessage) then
    begin
      TJanuaApplication.ServerUserName := edUserName.Text;
      TJanuaApplication.ServerPassword := edPassword.Text;
      TJanuaApplication.JanuaServerConf.SaveToFile(LFile);
      FMyEvent;
    end;
  else
    raise Exception.Create('Errore di connessione CheckLogin ' + sLineBreak + LMessage);
finally
  self.Close;
end;
end;

procedure TfrmLogin.Button2Click(Sender: TObject);
begin
  self.Close
end;

procedure TfrmLogin.SetLFile(const Value: string);
begin
  FLFile := Value;
end;

end.
