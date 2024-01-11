unit Janua.FMX.Dialogs;

interface

uses
  // System
  System.SysUtils, System.Classes, System.UITypes,
  // FMX
  FMX.DialogService, FMX.Dialogs,
  // JANUA
  Janua.Controls.Dialogs.Intf, Janua.Controls.Dialogs.Impl, Janua.Core.Classes, Janua.Core.CustomControls;

type
  TMyEventREsult = procedure(const aBool: boolean) of object;

type
  TJanuaFMXDialog = class(TJanuaCustomDialog, IJanuaDialog)
  private
    FOnMessageDlgResult: TMyEventREsult;
    procedure SetOnMessageDlgResult(const Value: TMyEventREsult);
    function Execute: boolean; override;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = ''); override;
    procedure JShowWarning(smessage: string; sExtra: string = ''; sHelp: string = ''); override;
    procedure JShowError(smessage: string; sExtra: string = ''; sHelp: string = ''); override;
    function JMessageDlg(smessage: string; const sExtra: string = ''): boolean; override;
    function JMessageDlgExt(smessage, button1, button2: string): boolean; override;
    function JOpenPicture: boolean; overload; override;
    function JOpenPicture(aDirectory: string): boolean; overload; override;
    function JShowSystemError(sTitle, sContent, sExtra: string): boolean; override;
  public
    { Published declarations }
    property OnMessageDlgResult: TMyEventREsult read FOnMessageDlgResult write SetOnMessageDlgResult;
  end;

(*
type
  TJanuaFMXOpenDialog = class(TJanuaCustomOpenDialog)
  public
    function OpenFile: boolean; override;
    function OpenDirectory(const aInitialDir: string = ''): string; override;
  end;
*)

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaFMXDialog }

function TJanuaFMXDialog.Execute: boolean;
begin
  // method not yet implemented on descendant Class.........
  ShowMessage('Method not Implemented');
  Result := False;
end;

function TJanuaFMXDialog.JMessageDlg(smessage: string; const sExtra: string = ''): boolean;
var
  lResultStr: boolean;
begin
  lResultStr := False;
  TDialogService.PreferredMode := TDialogService.TPreferredMode.Platform;
  // FMX.DialogService.TDialogService.PreferredMode
  TDialogService.MessageDialog(smessage, TMsgDlgType.mtConfirmation, FMX.Dialogs.mbYesNo, TMsgDlgBtn.mbNo, 0,
    procedure(const AResult: TModalResult)
    begin
      lResultStr := AResult = mrYes;
      if Assigned(FOnMessageDlgResult) then
        FOnMessageDlgResult(lResultStr);
    end);

  Result := lResultStr;

end;

function TJanuaFMXDialog.JMessageDlgExt(smessage, button1, button2: string): boolean;
begin
  // method not yet implemented on descendant Class.........
  ShowMessage('Method not Implemented');
  Result := False;
end;

function TJanuaFMXDialog.JOpenPicture: boolean;
begin
  // method not yet implemented on descendant Class.........
  ShowMessage('Method not Implemented');
  Result := False;
end;

function TJanuaFMXDialog.JOpenPicture(aDirectory: string): boolean;
begin
  // method not yet implemented on descendant Class.........
  ShowMessage('Method not Implemented');
  Result := False;
end;

procedure TJanuaFMXDialog.JShowError(smessage, sExtra, sHelp: string);
begin
  inherited;
  // method not yet implemented on descendant Class.........
  ShowMessage('Method not Implemented');
end;

procedure TJanuaFMXDialog.JShowMessage(smessage, sExtra, sHelp: string);
begin
  inherited;
  // method not yet implemented on descendant Class.........
  ShowMessage('Method not Implemented');
end;

function TJanuaFMXDialog.JShowSystemError(sTitle, sContent, sExtra: string): boolean;
begin
  // method not yet implemented on descendant Class.........
  ShowMessage('Method not Implemented');
  Result := False;
end;

procedure TJanuaFMXDialog.JShowWarning(smessage, sExtra, sHelp: string);
begin
  inherited;
  // method not yet implemented on descendant Class.........
  ShowMessage('Method not Implemented');
end;

procedure TJanuaFMXDialog.SetOnMessageDlgResult(const Value: TMyEventREsult);
begin
  FOnMessageDlgResult := Value;
end;

{ TJanuaFMXOpenDialog }


end.
