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
  JanuaDMVCTestWebModule: TJanuaDMVCTestWebModule;

implementation

uses
  Janua.DMVC.Test.PublicController,
  Janua.DMVC.Test.PrivateController,
  Janua.Test.Firedac.DMVC,
  Janua.System.DMVC.AuthCriteria,
  // CarService
  // Driver
  Janua.CarService.Driver.DMVCController,
  // System
  Janua.System.DMVC.Session.Controller,

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
  { // [MVCPath('/driver')]  TCSDriverController
    FMVC.AddController(TCSDriverController); }
  // [MVCPath('/driver')]  TCSDriverController
  FMVC.AddController(TSystemSessionMVCController); // basic user/session information and authentication
end;

end.
