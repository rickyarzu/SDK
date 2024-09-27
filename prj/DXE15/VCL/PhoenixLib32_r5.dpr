library PhoenixLib32_r5;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters.

  Important note about VCL usage: when this DLL will be implicitly
  loaded and this DLL uses TWicImage / TImageCollection created in
  any unit initialization section, then Vcl.WicImageInit must be
  included into your library's USES clause. }

uses
  ShareMem,
  System.SysUtils,
  System.Classes,
  Janua.Phoenix.VCL.BackgroundApplication
    in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.BackgroundApplication.pas',
  Janua.VCL.Cloud.dlgGoogleConnect
    in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.dlgGoogleConnect.pas' {dlgVclCloudGoogleConnect} ,
  Janua.Phoenix.VCL.dmGCalendarController
    in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.dmGCalendarController.pas' {dmPhoenixVCLGCalendarController: TDataModule} ,
  Janua.VCL.Planner.dmCustomController
    in '..\..\..\src\VCL\Planner\Janua.VCL.Planner.dmCustomController.pas' {dmVCLPlannerCustomController: TDataModule} ,
  Janua.Phoenix.VCL.GoogleAppLib in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.GoogleAppLib.pas';

var
  aSetted: Boolean;
  aTest1: string;
  aDlg: TdlgVclCloudGoogleConnect;

function Initialize: string; stdcall;
begin
  if not aSetted then
  begin
    TPhoenixVCLBackgroundApplication.ApplicationSetup('desktop.phoenix_asso.com');
    aDlg := TdlgVclCloudGoogleConnect.Create(nil);
    aSetted := True;
    if aSetted then
      Result := 'Setted'
    else
      Result := 'Not Setted';
  end;
end;

function CreateGoogleEvent(aEvent: string): string; stdcall;
begin
  Result := '';
  if Assigned(aDlg) then
    Result := aDlg.AddGoogleItem(aEvent)
  else
    Result := Result + ' Error aDlg not set';
end;

function UpdateGoogleEvent(aJson: string): string; stdcall;
begin
  Result := '';
  try
    if Assigned(aDlg) then
      Result := aDlg.UpdateGoogleItem(aJson)
  except
    on e: exception do
      Result := e.Message;
  end;
end;

function DeleteGoogleEvent(aJson: string): string; stdcall;
begin
  Result := '';
  try
    if Assigned(aDlg) then
      Result := aDlg.DeleteGoogleItem(aJson)
  except
    on e: exception do
      Result := e.Message;
  end;
end;

// ConfirmMessage
function ConfirmMessage(aJson: string): string; stdcall;
begin
  Result := '';
  try
    if Assigned(aDlg) then
      Result := aDlg.ConfirmMessage(aJson)
  except
    on e: exception do
      Result := e.Message;
  end;
end;

function GoogleSync: string; stdcall;
begin
    if Assigned(aDlg) then
    aDlg.UpdateGoogle;
  Result := 'test';
end;

exports
  Initialize index 1,
  CreateGoogleEvent index 2,
  UpdateGoogleEvent index 3,
  DeleteGoogleEvent index 4,
  ConfirmMessage index 5,
  GoogleSync index 6;

begin
  aSetted := False;

end.
