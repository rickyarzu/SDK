unit Janua.VCL.Application;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Core.CustomApplication;

type
  TJanuaVCLCustomApplication = class(TJanuaCustomApplication)
  public
    /// <summary> Interface registration for VCL Forms </summary>
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure Terminate;
    class procedure AfterLogin; override;
  end;

implementation

uses System.Types, VCL.Forms, Janua.Core.Functions,
  // Cloud VCL Framework (INCLUDING FNC, TMS ...).
  Janua.TMS.Cloud.Mail.VCL,
  // Janua VCL
  Janua.VCL.MVVM.Framework, Janua.Core.AsyncTask, Janua.VCL.StackTrace,
  // Default Custom Login
  Janua.VCL.dlgCommonLogin, Janua.System.ViewModel.Intf,
  // Documents and  Attachments
  Janua.Documents.ViewModel.Intf, Janua.Documents.dlgVCLAttachments, Janua.Documents.dlgVCLDocCharges,
  Janua.Documents.dlgVCLDocRows,
  // Janua Janua.VCL.Anagraph
  Janua.Anagraph.ViewModel.Intf, Janua.Anagraph.VCL.dlgEditAnagraph,
  // Test.VCL
  {Janua.Test.VCL.dlgViewModelDetail, Janua.Test.ViewModel.Intf,}
  // Janua Core & DB
  Janua.Legacy.Application,
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework, Janua.Mock.Firedac.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application, Janua.VCL.Framework, Janua.Orm.Register;

{ TJanuaVCLCustomApplication }
class procedure TJanuaVCLCustomApplication.AfterLogin;
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
{$IFDEF  DEBUG}
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
      RaiseException('TJanuaVCLCustomApplication.AfterLogin LoadMenu', e, nil);
  end;
end;

class procedure TJanuaVCLCustomApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;
  // {$IFNDEF WIN32}
  InitializeStack;
  // {$ENDIF}
  // These are the basic interfaces for View and Models (all DB and Platform independant)
  TJanuaCoreViewModelFramework.RegisterInterfaces;

  TJanuaMockFiredacApplication.RegisterClasses;
  // inizializzo UniDAC (temporaneamente per l'avvio di Testing)
  Janua.Uni.Framework.TJanuaUniPgApplication.RegisterDataModules;
  // Uso il Framework VCL il Framework TMS per la comunicazioni non lo uso ancora
  Janua.VCL.Framework.TJanuaVCLApplication.Initialize;
  // Per ultimo viene inizializzato il Model View View Model Framework che si 'appoggia' agli altri.
  TJanuaVCLMVVMFramework.Initialize;
  // Connects to TApplication.Terminate
  TJanuaApplication.StyleManager.Activate;
end;

class procedure TJanuaVCLCustomApplication.ApplicationTearDown;
begin
  inherited;;
  FinalizeStack;
end;

class procedure TJanuaVCLCustomApplication.ConnectionSetup;
begin
  if TJanuaApplication.ServerAddress = '' then
    TJanuaApplication.ServerAddress := 'pg.januaservers.com';

  TJanuaApplication.ServerAddress := TJanuaCoreOS.ReadRegistry(False, 'address', 'postgres',
    TJanuaApplication.ServerAddress);
  TJanuaApplication.ServerSchema := 'public';
  TJanuaApplication.ServerUsername := 'ergo';
  TJanuaApplication.ServerPassword := '3rg0m3rc4t0r';
  TJanuaApplication.ServerPort := TJanuaCoreOS.ReadIntRegistry(False, 'port', 'postgres',
    TJanuaApplication.ServerPort);
  TJanuaApplication.ServerDatabaseName := TJanuaCoreOS.ReadRegistry(False, 'database', 'postgres',
    'ergomercator');
  TJanuaApplication.DBSchemaID := TJanuaCoreOS.ReadIntRegistry(False, 'schema_id', 'postgres',
    TJanuaApplication.DBSchemaID);
end;

class procedure TJanuaVCLCustomApplication.RegisterForms;
begin
  // if an Application Login Form is not defined the a Custom Login Form will be used
  TJanuaApplicationFactory.RegisterComponent(IJanuaLoginForm, TdlgVCLCommonLogin);
  TJanuaApplicationFactory.RegisterComponent(IJanuaAnagraphForm, TdlgVCLEditAnagraph);
  { TODO : Create a VCL Test Application to register Test forms }
  { TJanuaApplicationFactory.RegisterComponent(IJanuaTestDetailDialog, TdlgTestViewModelDetail); }
  // Detail Document Attachments : TdlgVCLDocAttachments = class( IJanuaDocAttachmentsDialog)
  TJanuaApplicationFactory.RegisterComponent(IJanuaDocAttachmentsDialog, TdlgVCLDocAttachments);
  // Detail Document Charges : TdlgVCLDocChargesRow = class(IJanuaDocChargesDialog)
  TJanuaApplicationFactory.RegisterComponent(IJanuaDocChargesDialog, TdlgVCLDocChargesRow);
  // Detail Document Rows : TdlgVCLDocumentRow = class(IJanuaDocRowsDialog)
  TJanuaApplicationFactory.RegisterComponent(IJanuaDocRowsDialog, TdlgVCLDocumentRow);
end;

class procedure TJanuaVCLCustomApplication.Terminate;
begin
  TJanuaVCLCustomApplication.ApplicationTearDown;
end;

end.
