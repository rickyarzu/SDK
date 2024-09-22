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
    btnLocalDel: TButton;
    btnDLLDel: TButton;
    btnLocalUp: TButton;
    btnDLLUpd: TButton;
    procedure btnTestSetupClick(Sender: TObject);
    procedure btnLocalTestClick(Sender: TObject);
    procedure btnDLLTestClick(Sender: TObject);
    procedure btnLocalDelClick(Sender: TObject);
    procedure btnDLLDelClick(Sender: TObject);
    procedure btnLocalUpClick(Sender: TObject);
    procedure btnDLLUpdClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestDelphiDLL: TfrmTestDelphiDLL;

implementation

uses Janua.Vcl.Cloud.dlgGoogleConnect;

function Initialize: string; stdcall; external 'PhoenixLib32_r2.dll' index 1;
function CreateGoogleEvent(aEvent: string): string; stdcall; external 'PhoenixLib32_r2.dll' index 2;
function UpdateGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r2.dll' index 3;
function DeleteGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r2.dll' index 4;

{$R *.dfm}

procedure TfrmTestDelphiDLL.btnDLLDelClick(Sender: TObject);
begin
  lbGUID.Caption := DeleteGoogleEventDLL(edGUID.Text);
end;

procedure TfrmTestDelphiDLL.btnDLLTestClick(Sender: TObject);
begin
  lbGUID.Caption := CreateGoogleEvent(edGUID.Text);
end;

procedure TfrmTestDelphiDLL.btnDLLUpdClick(Sender: TObject);
begin
  lbGUID.Caption := UpdateGoogleEventDLL(edGUID.Text);
end;

procedure TfrmTestDelphiDLL.btnLocalDelClick(Sender: TObject);
begin
  var
  aDlg := TdlgVclCloudGoogleConnect.Create(nil);
  // Event Test ----------------------------------------------------------------------------------------------
  try
    lbGUID.Caption := aDlg.DeleteGoogleItem(edGUID.Text);
  finally
    aDlg.Free;
  end;
end;

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

procedure TfrmTestDelphiDLL.btnLocalUpClick(Sender: TObject);
begin
  var
  aDlg := TdlgVclCloudGoogleConnect.Create(nil);
  // Event Test ----------------------------------------------------------------------------------------------
  try
    lbGUID.Caption := aDlg.UpdateGoogleItem(edGUID.Text);
  finally
    aDlg.Free;
  end;
end;

procedure TfrmTestDelphiDLL.btnTestSetupClick(Sender: TObject);
begin
  lbInitialize.Caption := Initialize;
end;

end.
