unit ufrmTestPhoenixDLL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTestDelphiDLL = class(TForm)
    btnTestSetup: TButton;
    lbInitialize: TLabel;
    btnLocalTest: TButton;
    edGUID: TEdit;
    lbGUID: TLabel;
    btnDLLTest: TButton;
    procedure btnTestSetupClick(Sender: TObject);
    procedure btnLocalTestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestDelphiDLL: TfrmTestDelphiDLL;

implementation

uses Janua.Vcl.Cloud.dlgGoogleConnect;

function Initialize: string; stdcall; external 'PhoenixLib32.dll' index 1;
function CreateGoogleEvent(aEvent: string): string; stdcall; external 'PhoenixLib32.dll' index 2;
function UpdateGoogleEvent(aJson: string): string; stdcall; external 'PhoenixLib32.dll' index 3;

{$R *.dfm}

procedure TfrmTestDelphiDLL.btnLocalTestClick(Sender: TObject);
begin
  var
  aDlg := TdlgVclCloudGoogleConnect.Create(nil);
  // Event Test ----------------------------------------------------------------------------------------------
  try
    lbGUID.Caption := aDlg.AddGoogleItem(edGUID.Text);
  finally
    aDlg.Free;
  end;
end;

procedure TfrmTestDelphiDLL.btnTestSetupClick(Sender: TObject);
begin
  lbInitialize.Caption := Initialize;
end;

end.
