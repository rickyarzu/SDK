unit Janua.FMX.Application;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Core.CustomApplication, FMX.Forms;

type
  TFormFunc = TFunc<TForm>;

  TJanuaFMXApplication = class(TJanuaCustomApplication)
  private
    class var FMainFormFunc: TFormFunc;
  protected
    class procedure SetMainFormFunc(const Value: TFormFunc); static;
  public
    /// <summary> Interface registration for VCL Forms </summary>
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure Terminate;
    class procedure AfterLogin; override;
    class property MainFormFunc: TFormFunc read FMainFormFunc write SetMainFormFunc;
  end;

implementation

uses System.Types, Janua.Core.Functions,
  // Cloud VCL Framework (INCLUDING FNC, TMS ...).
  {Janua.TMS.Cloud.Mail.VCL,}
  // Janua VCL
  {Janua.VCL.MVVM.Framework,} Janua.Core.AsyncTask,
  // Documents and  Attachments
  {Janua.Documents.ViewModel.Intf,}
  // Janua Janua.VCL.Anagraph
  Janua.Anagraph.ViewModel.Intf,
  // Test.VCL
  {Janua.Test.VCL.dlgViewModelDetail, Janua.Test.ViewModel.Intf,}
  // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework, Janua.Mock.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application, {Janua.FMX.Framework,} Janua.Orm.Register;

{ TJanuaFMXCustomApplication }
class procedure TJanuaFMXApplication.AfterLogin;
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
      RaiseException('TJanuaFMXCustomApplication.AfterLogin LoadMenu', e, nil);
  end;
end;

class procedure TJanuaFMXApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;

  TJanuaTestApplication.Initialize;

  // These are the basic interfaces for View and Models (all DB and Platform independant)
  TJanuaCoreViewModelFramework.RegisterInterfaces;

  { TJanuaMockFiredacApplication.RegisterClasses; }
  // inizializzo UniDAC (temporaneamente per l'avvio di Testing)
  Janua.Uni.Framework.TJanuaUniPgApplication.RegisterDataModules;
  // Uso il Framework VCL il Framework TMS per la comunicazioni non lo uso ancora
  { Janua.VCL.Framework.TJanuaVCLApplication.Initialize; }
  // Per ultimo viene inizializzato il Model View View Model Framework che si 'appoggia' agli altri.
  { TJanuaVCLMVVMFramework.Initialize; }
  // Connects to TApplication.Terminate
  { TJanuaApplication.StyleManager.Activate; }
end;

class procedure TJanuaFMXApplication.ApplicationTearDown;
begin
  inherited;;

end;

class procedure TJanuaFMXApplication.ConnectionSetup;
begin
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

class procedure TJanuaFMXApplication.RegisterForms;
begin
  { TODO : Create a VCL Test Application to register Test forms }
end;

class procedure TJanuaFMXApplication.SetMainFormFunc(const Value: TFormFunc);
begin
  FMainFormFunc := Value;
end;

class procedure TJanuaFMXApplication.Terminate;
begin
  TJanuaFMXApplication.ApplicationTearDown;
end;

end.
