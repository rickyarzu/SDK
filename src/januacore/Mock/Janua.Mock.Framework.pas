unit Janua.Mock.Framework;

interface

type
  TJanuaTestApplication = class
  private
    class var FInitialized: boolean;
    class var FIconFontColor: Integer;
    class var FUseIconFontColor: boolean;
  public
    class procedure Initialize;
    class procedure Terminate;
    class constructor Create;
  end;

implementation

uses
  // Janua Core Framework
  Janua.Application.Framework, Janua.Controls.Dialogs.Intf, Janua.ViewModels.Framework,
  // Register Units
  Janua.Mock.Dialogs, Janua.Mock.Reports,
  // Janua.VCL.dlgInputNumber, Janua.VCL.Dialogs,
  // Controls Forms and Style Manager  Janua.VCL.Controls.Forms.Impl,
  Janua.Controls.Forms.Intf;

{ TJanuaTestApplication }

class constructor TJanuaTestApplication.Create;
begin

end;

class procedure TJanuaTestApplication.Initialize;
begin
  // ----------------- Forms and Dialogs --------------------------------------------------------------
  (*
    TJanuaApplicationFactory.RegisterComponent(IJanuaDlgIntegerForm, TdlgVCLInputNumber);
    TJanuaApplicationFactory.RegisterClass(IJanuaDialogText, TJanuaVCLDialogText);
    TJanuaApplicationFactory.RegisterClass(IJanuaWindowsManager, TJanuaWindowsManager);
  *)
  try
    TJanuaApplication.UnitTesting := True;
    TJanuaApplication.IsTestVersion := True;
    TJanuaApplicationFactory.RegisterClass(IJanuaDialog, TJanuaMockDialog);
    TJanuaApplicationFactory.RegisterClass(IJanuaStyleManager, TJanuaMockStyleManager);
    TJanuaCoreViewModelFramework.RegisterInterfaces;
    TJanuaCoreViewModelFramework.Initialize;
    TJanuaMockReports.RegisterMockReports;
  finally
    FInitialized := True;
  end;
end;

class procedure TJanuaTestApplication.Terminate;
begin

end;

end.


