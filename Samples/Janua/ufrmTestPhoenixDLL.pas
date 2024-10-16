unit ufrmTestPhoenixDLL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvMemo, advmjson, Janua.Vcl.Cloud.dlgGoogleConnect;

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
    Button1: TButton;
    Button2: TButton;
    memJson: TAdvMemo;
    memResult: TAdvMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    btnSync: TButton;
    btnSyncDLL: TButton;
    procedure btnTestSetupClick(Sender: TObject);
    procedure btnLocalTestClick(Sender: TObject);
    procedure btnDLLTestClick(Sender: TObject);
    procedure btnLocalDelClick(Sender: TObject);
    procedure btnDLLDelClick(Sender: TObject);
    procedure btnLocalUpClick(Sender: TObject);
    procedure btnDLLUpdClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSyncClick(Sender: TObject);
    procedure btnSyncDLLClick(Sender: TObject);
  private
    { Private declarations }
    aDlg: TdlgVclCloudGoogleConnect;
  public
    { Public declarations }

  end;

var
  frmTestDelphiDLL: TfrmTestDelphiDLL;

implementation

uses System.Diagnostics;

{$IFDEF WIN32}
function Initialize: string; stdcall; external 'PhoenixLib32_r5.dll' index 1;
function CreateGoogleEvent(aEvent: string): string; stdcall; external 'PhoenixLib32_r5.dll' index 2;
function UpdateGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r5.dll' index 3;
function DeleteGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r5.dll' index 4;
function ConfirmGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r5.dll' index 5;
function UpdateGoogleDLL: string; stdcall; external 'PhoenixLib32_r5.dll' index 6;
{$ELSE}
// https://gestionevdi.inps.it/Citrix/gestionevdiWeb/
function Initialize: string; stdcall; external 'PhoenixLib32_r5.64.dll' index 1;
function CreateGoogleEvent(aEvent: string): string; stdcall; external 'PhoenixLib32_r5.64.dll' index 2;
function UpdateGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r5.64.dll' index 3;
function DeleteGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r5.64.dll' index 4;
function ConfirmGoogleEventDLL(aJson: string): string; stdcall; external 'PhoenixLib32_r5.64.dll' index 5;
function UpdateGoogleDLL: string; stdcall; external 'PhoenixLib32_r5.64.dll' index 6;
{$ENDIF}
{$R *.dfm}

procedure TfrmTestDelphiDLL.btnDLLDelClick(Sender: TObject);
begin
  lbGUID.Caption := DeleteGoogleEventDLL(edGUID.Text);
end;

procedure TfrmTestDelphiDLL.btnDLLTestClick(Sender: TObject);
begin
  // lbGUID.Caption := CreateGoogleEvent(edGUID.Text);
  memResult.Lines.Text := CreateGoogleEvent(memJson.Lines.Text);
end;

procedure TfrmTestDelphiDLL.btnDLLUpdClick(Sender: TObject);
begin
  // lbGUID.Caption := UpdateGoogleEventDLL(edGUID.Text);
  memResult.Lines.Text := UpdateGoogleEventDLL(memJson.Lines.Text);
end;

procedure TfrmTestDelphiDLL.btnLocalDelClick(Sender: TObject);
begin
  var
  Stopwatch := TStopWatch.StartNew;
  memResult.Lines.Text := aDlg.DeleteGoogleItem(memJson.Lines.Text);
  var
  Elapsed := Stopwatch.Elapsed;
  var
  Seconds := Elapsed.TotalSeconds;
end;

procedure TfrmTestDelphiDLL.btnLocalTestClick(Sender: TObject);
begin
  var
  Stopwatch := TStopWatch.StartNew;
  memResult.Lines.Text := aDlg.AddGoogleItem(memJson.Lines.Text);
  var
  Elapsed := Stopwatch.Elapsed;
  var
  Seconds := Elapsed.TotalSeconds;
end;

procedure TfrmTestDelphiDLL.btnLocalUpClick(Sender: TObject);
begin
  // lbGUID.Caption := aDlg.UpdateGoogleItem(edGUID.Text);
  memResult.Lines.Text := aDlg.UpdateGoogleItem(memJson.Lines.Text);
end;

procedure TfrmTestDelphiDLL.btnSyncClick(Sender: TObject);
begin
  var
  Stopwatch := TStopWatch.StartNew;
  aDlg.UpdateGoogle;
  var
  Elapsed := Stopwatch.Elapsed;
  var
  Seconds := Elapsed.TotalSeconds;

  memResult.Lines.Text := ('Seconds: ' + Seconds.ToString);
end;

procedure TfrmTestDelphiDLL.btnSyncDLLClick(Sender: TObject);
begin
  var
  Stopwatch := TStopWatch.StartNew;
  UpdateGoogleDLL;
  var
  Elapsed := Stopwatch.Elapsed;
  var
  Seconds := Elapsed.TotalSeconds;

  memResult.Lines.Text := ('Seconds: ' + Seconds.ToString);
end;

procedure TfrmTestDelphiDLL.btnTestSetupClick(Sender: TObject);
begin
  lbInitialize.Caption := Initialize;
end;

procedure TfrmTestDelphiDLL.Button1Click(Sender: TObject);
begin
  lbGUID.Caption := aDlg.ConfirmMessage(edGUID.Text);
end;

procedure TfrmTestDelphiDLL.Button2Click(Sender: TObject);
begin
  lbGUID.Caption := ConfirmGoogleEventDLL(edGUID.Text);
end;

procedure TfrmTestDelphiDLL.FormCreate(Sender: TObject);
begin
  aDlg := TdlgVclCloudGoogleConnect.Create(nil);
end;

end.
