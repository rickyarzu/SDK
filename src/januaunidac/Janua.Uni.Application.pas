unit Janua.Uni.Application;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Core.CustomApplication;

type
  TJanuaUniApplication = class(TJanuaCustomApplication)
  public
    /// <summary> Interface registration for VCL Forms </summary>
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure Terminate; virtual;
    class procedure AfterLogin; override;
  end;

implementation

uses System.Types, Janua.Core.Functions, System.StrUtils,
  // Documents and  Attachments
  Janua.Documents.ViewModel.Intf,
  // Janua Janua.VCL.Anagraph
  Janua.Anagraph.ViewModel.Intf,
  // Janua Core & DB
  Janua.Core.AsyncTask, Janua.Orm.UniDac, Janua.Core.StackTrace,
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework, Janua.Uni.Impl, Janua.Orm.Intf,
  {Janua.Mock.Firedac.Framework,}
  Janua.ViewModels.Framework, Janua.ViewModels.Application, Janua.Orm.Register;

{ TJanuaUniApplication }
class procedure TJanuaUniApplication.AfterLogin;
begin
  inherited;
  // Inizializzo il Core View Model
  TJanuaCoreViewModelFramework.Initialize;
  try
    LoadMenu;
    if TJanuaApplication.UnitTesting then
    begin
      if TJanuaViewModelApplication.Settings.Activate then
        TJanuaViewModelApplication.Settings.AnagraphModelsContainer.PrepareAllModels(nil);
    end
    else
      Async.Run<Boolean>(
        function: Boolean
        begin
          // This is the "background" anonymous method. Runs in the
          // background thread, and its result is passed
          // to the "success" callback.
          // In this case the result is a String.
          Result := TJanuaViewModelApplication.Settings.Activate;
          if Result then
            TJanuaViewModelApplication.Settings.AnagraphModelsContainer.PrepareAllModels(nil);
        end,
        procedure(const aValue: Boolean)
        begin
          // This is the "success" callback. Runs in the UI thread and
          // gets the result of the "background" anonymous method.
{$IFDEF  DEBUF}
          if aValue then
            TJanuaCoreOS.PublicWriteLog(nil, 'PrepareAllModels',
              'TJanuaViewModelApplication.Settings.AnagraphModelsContainer.PrepareAllModels Finished ');
{$ENDIF}
        end,
        procedure(const Ex: Exception)
        begin
          // This is the "error" callback.
          // Runs in the UI thread and is called only if the
          // "background" anonymous method raises an exception.
          JShowError(Ex.Message);
        end);

  except
    on e: Exception do
      RaiseException('TJanuaUniApplication.AfterLogin LoadMenu', e, nil);
  end;
end;

class procedure TJanuaUniApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;
  Janua.Core.StackTrace.InstallExceptionCallStack;
  TJanuaApplication.ResolveToFile := True;
  // TJanuaMockFiredacApplication.RegisterClasses;
  // inizializzo UniDAC (temporaneamente per l'avvio di Testing)
  // TJanuaUniVirtualDatasetFactory = class(TJanuaInterfacedObject, IJanuaDBDatasetFactory)
  { TJanuaApplicationFactory.RegisterClass(IJanuaDBDatasetFactory, TJanuaUniVirtualDatasetFactory); }
  Janua.Uni.Framework.TJanuaUniPgApplication.RegisterDataModules;
  TJanuaUniPgApplication.RegisterInterfaces;
end;

class procedure TJanuaUniApplication.ApplicationTearDown;
begin
  inherited;
end;

class procedure TJanuaUniApplication.ConnectionSetup;
begin
  inherited;
  TJanuaApplication.ServerAddress := TJanuaCoreOS.ReadRegistry(False, 'address', 'postgres',
    TJanuaApplication.ServerAddress);
  TJanuaApplication.ServerSchema := 'public';
  TJanuaApplication.ServerDatabaseName := TJanuaCoreOS.ReadRegistry(False, 'username', 'postgres', 'ergo');
  TJanuaApplication.ServerPassword := TJanuaCoreOS.ReadRegistryCrypt(False, 'password', 'postgres',
    '3rg0m3rc4t0r');
  TJanuaApplication.ServerPort := TJanuaCoreOS.ReadRegistry(False, 'port', 'postgres',
    TJanuaApplication.ServerPort);
  TJanuaApplication.ServerDatabaseName := TJanuaCoreOS.ReadRegistry(False, 'database', 'postgres',
    'ergomercator');
  TJanuaApplication.DBSchemaID := TJanuaCoreOS.ReadRegistry(False, 'schema_id', 'postgres',
    TJanuaApplication.DBSchemaID);
end;

class procedure TJanuaUniApplication.RegisterForms;
begin
  (*
    TJanuaApplicationFactory.RegisterComponent(IJanuaAnagraphForm, TdlgVCLEditAnagraph);
    TJanuaApplicationFactory.RegisterComponent(IJanuaTestDetailDialog, TdlgTestViewModelDetail);
    TJanuaApplicationFactory.RegisterComponent(IJanuaDocAttachmentsDialog, TdlgVCLDocAttachments);
  *)
end;

class procedure TJanuaUniApplication.Terminate;
begin
  TJanuaUniApplication.ApplicationTearDown;
end;

end.
