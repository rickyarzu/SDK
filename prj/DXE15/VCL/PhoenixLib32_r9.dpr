library PhoenixLib32_r9;

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
  aTest: Boolean;

function Initialize: string; stdcall;
begin
  if not aSetted then
  begin
    TPhoenixVCLBackgroundApplication.ApplicationSetup('desktop.phoenix_asso.com');
    aDlg := TdlgVclCloudGoogleConnect.Create(nil);
    aSetted := True;
    aTest := False;
    if aSetted then
      Result := 'Setted'
    else
      Result := 'Not Setted';
  end;
end;

procedure TestError;
begin
  aTest := not aTest;
end;

function CreateGoogleEvent(aEvent: string): string; stdcall;
begin
  Result := '';
  try
    if aTest then
      raise exception.Create('Errore di Test con Google');

    if Assigned(aDlg) then
      Result := aDlg.AddGoogleItem(aEvent)
  except
    on e: exception do
    begin
      aTest := False;
      aDlg.Free;
      aDlg := TdlgVclCloudGoogleConnect.Create(nil);
      raise exception.Create('Errore di Comunicazione con Google (CreateGoogleEvent)' + sLineBreak +
        e.Message);
    end;
  end;
end;

function UpdateGoogleEvent(aJson: string): string; stdcall;
begin
  Result := '';
  try
    if aTest then
      raise exception.Create('Errore di Test con Google');

    if Assigned(aDlg) then
      Result := aDlg.UpdateGoogleItem(aJson)
  except
    on e: exception do
    begin
      aTest := False;
      aDlg.Free;
      aDlg := TdlgVclCloudGoogleConnect.Create(nil);
      raise exception.Create('Errore di Comunicazione con Google (UpdateGoogleEvent)' + sLineBreak +
        e.Message);
    end;
  end;
end;

function DeleteGoogleEvent(aJson: string): string; stdcall;
begin
  Result := '';
  try
    aTest := False;
    if aTest then
      raise exception.Create('Errore di Test con Google');

    if Assigned(aDlg) then
      Result := aDlg.DeleteGoogleItem(aJson)
  except
    on e: exception do
    begin
      aDlg.Free;
      aDlg := TdlgVclCloudGoogleConnect.Create(nil);
      raise exception.Create('Errore di Comunicazione con Google (DeleteGoogleEvent)' + sLineBreak +
        e.Message);
    end;
  end;
end;

// ConfirmMessage
function ConfirmMessage(aJson: string): string; stdcall;
begin
  Result := '';
  try
    if aTest then
      raise exception.Create('Errore di Test con Google');

    if Assigned(aDlg) then
      Result := aDlg.ConfirmMessage(aJson)
  except
    on e: exception do
    begin
      aTest := False;
      aDlg.Free;
      aDlg := TdlgVclCloudGoogleConnect.Create(nil);
      raise exception.Create('Errore di Comunicazione con Google (DeleteGoogleEvent)' + sLineBreak +
        e.Message);
    end;
  end;
end;

function WhatsAppSentMessage(aID: string): string; stdcall;
begin
  Result := '';
  try
    if aTest then
      raise exception.Create('Errore di Test con Google');

    if Assigned(aDlg) then
      Result := aDlg.WhatsAppSentMessage(aID)
  except
    on e: exception do
    begin
      aTest := False;
      aDlg.Free;
      aDlg := TdlgVclCloudGoogleConnect.Create(nil);
      raise exception.Create('Errore di Comunicazione con Google (DeleteGoogleEvent)' + sLineBreak +
        e.Message);
    end;
  end;
end;

function GoogleSync: string; stdcall;
begin
  try
    if aTest then
      raise exception.Create('Errore di Test con Google');

    if Assigned(aDlg) then
      aDlg.UpdateGoogle;
  except
    on e: exception do
    begin
      aTest := False;
      aDlg.Free;
      aDlg := TdlgVclCloudGoogleConnect.Create(nil);
      raise exception.Create('Errore di Comunicazione con Google (DeleteGoogleEvent)' + sLineBreak +
        e.Message);
    end;
  end;

  Result := 'test';
end;

procedure GoogleRestore; stdcall;
begin
  if aTest then
    raise exception.Create('Errore di Test con Google');

  if Assigned(aDlg) then
    aDlg.RestoreGoogle;;
end;

procedure Dummy; stdcall;
begin
  // Silence is golden
end;

exports
  Initialize index 1,
  CreateGoogleEvent index 2,
  UpdateGoogleEvent index 3,
  DeleteGoogleEvent index 4,
  ConfirmMessage index 5,
  GoogleSync index 6,
  WhatsAppSentMessage index 7,
  GoogleRestore index 8,
  TestError index 9,
  Dummy index 10;

begin
  aSetted := False;

end.
