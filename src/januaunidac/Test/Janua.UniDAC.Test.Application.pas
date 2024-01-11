unit Janua.UniDAC.Test.Application;

interface

uses Janua.Uni.Application, System.Classes, System.SysUtils, Janua.Core.Types, Janua.Core.CustomApplication;

type
  TJanuaUniTestApplication = class(TJanuaUniApplication)
  public
    /// <summary> Interface registration for VCL Forms </summary>
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure Terminate; override;
    class procedure AfterLogin; override;
  end;

implementation

uses System.Types, Janua.Core.Functions,
  // Janua VCL
  Janua.Core.AsyncTask,
  // Documents and  Attachments
  Janua.Documents.ViewModel.Intf,
  // Janua Janua.VCL.Anagraph
  Janua.Anagraph.ViewModel.Intf,
  // Janua Core Framework
  Janua.Application.Framework, Janua.Controls.Dialogs.Intf, Janua.ViewModels.Framework,
  // Register Units
  Janua.Mock.Dialogs, Janua.Mock.Reports,
  // Janua.VCL.dlgInputNumber, Janua.VCL.Dialogs,
  // Controls Forms and Style Manager  Janua.VCL.Controls.Forms.Impl,
  Janua.Controls.Forms.Intf, Janua.Controls.Forms.Impl,
  // Janua Core & DB
  Janua.Uni.Framework, Janua.ViewModels.Application, Janua.Orm.Register;

{ TJanuaUniTestApplication }

class procedure TJanuaUniTestApplication.AfterLogin;
begin
  inherited;

end;

class procedure TJanuaUniTestApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;
  TJanuaApplication.UnitTesting := True;
  TJanuaApplication.IsTestVersion := True;
end;

class procedure TJanuaUniTestApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaUniTestApplication.ConnectionSetup;
begin
  TJanuaApplication.ServerAddress := 'pg.local';
  TJanuaApplication.ServerDatabaseName := 'ergomercator';
  TJanuaApplication.ServerPort := 5432;
  inherited;
  { TJanuaApplication.DBSchemaID := 20; }
end;

class procedure TJanuaUniTestApplication.RegisterForms;
begin
  inherited;
  try
    TJanuaApplicationFactory.RegisterClass(IJanuaDialog, TJanuaMockDialog);
    TJanuaApplicationFactory.RegisterClass(IJanuaStyleManager, TJanuaMockStyleManager);
    { TJanuaCoreViewModelFramework.RegisterInterfaces;
      TJanuaCoreViewModelFramework.Initialize; }
    TJanuaMockReports.RegisterMockReports;
  finally
    { FInitialized := True; }
  end;

end;

class procedure TJanuaUniTestApplication.Terminate;
begin
  inherited;
end;

end.
