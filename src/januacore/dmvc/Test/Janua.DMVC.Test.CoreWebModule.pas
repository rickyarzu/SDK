unit Janua.DMVC.Test.CoreWebModule;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Janua.DMVC.WebBroker.WebModule;

type
  TJanuaDMVCTestWebModule = class(TJanuaDMVCCustomWebModule)
  private
    { Private declarations }
  protected
    procedure AddControllers; override;
  public
    { Public declarations }
  end;

var
  JanuaDMVCTestWebModuleClass: TComponentClass = TJanuaDMVCTestWebModule;

implementation

uses
  Janua.System.DMVC.AuthCriteria,
  // Test
  // --Public
  Janua.DMVC.Test.PublicController,
  // -- Private
  Janua.DMVC.Test.PrivateController,
  // -- Firedac
  Janua.Test.Firedac.DMVC,
  // -- www
  Janua.Test.DMVC.www,
  // CarService
  // --- Driver
  Janua.CarService.Driver.DMVCController,
  // System
  // --- Session
  Janua.System.Session.DMVCController,

  System.IOUtils,
  MVCFramework.Commons,
  MVCFramework.Middleware.ActiveRecord,
  MVCFramework.Middleware.StaticFiles,
  MVCFramework.Middleware.Analytics,
  MVCFramework.Middleware.Trace,
  MVCFramework.Middleware.CORS,
  MVCFramework.Middleware.ETag,
  MVCFramework.Middleware.Compression,
  MVCFramework.Middleware.JWT,
  MVCFramework.JWT;

{$R *.dfm}
{ TJanuaDMVCTestWebModule }

procedure TJanuaDMVCTestWebModule.AddControllers;
begin
  inherited;
  // Simple Public controller -- Sample from dmvvm demos
  FMVC.AddController(TPublicController);
  // Simple Private Controller to Test JWT Authentication   -- Sample from dmvvm demos
  FMVC.AddController(TPrivateController);
  // Firedac Testing - Janua.Test.Firedac.DMVC -- To Test Standard MVVM remote Record Controller
  FMVC.AddController(TFDacTestController);
  // TTestWWWController
  FMVC.AddController(TSystemSessionMVCController); // basic user/session information and authentication
  // TTestWWWController
  FMVC.AddController(TTestWWWController);
  { // [MVCPath('/driver')]  TCSDriverController
    FMVC.AddController(TCSDriverController); }
  // [MVCPath('/driver')]  TCSDriverController
end;

end.
