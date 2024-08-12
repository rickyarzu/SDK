unit Janua.Carservice.DMVC.CoreWebModule;

interface

uses
  System.SysUtils,
  System.Classes,
  Web.HTTPApp,
  MVCFramework,
  Janua.DMVC.WebBroker.WebModule;

type
  TCarServiceWebModule = class(TJanuaDMVCCustomWebModule)
    procedure WebModuleDestroy(Sender: TObject);
    procedure WebModuleCreate(Sender: TObject);
  private

  protected
    procedure AddControllers; override;
  public
    { Public declarations }
  end;

var
  CarServiceWebModuleClass: TComponentClass = TCarServiceWebModule;

implementation

{$R *.dfm}

uses
  Janua.System.DMVC.AuthCriteria,
  Janua.System.DMVC.Session.Controller,
  Janua.Carservice.DMVC.JsonRPC,
  Janua.CarService.Driver.DMVCController,

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

procedure TCarServiceWebModule.AddControllers;
begin
  inherited;
  // [MVCPath('/driver')]  TCSDriverController
  FMVC.AddController(TCSDriverController);
end;

procedure TCarServiceWebModule.WebModuleCreate(Sender: TObject);
begin
  inherited;
  FMVC.PublishObject(
    function: TObject
    begin
      Result := TCarServiceRPC.Create;
    end, '/jsonrpc');
end;

procedure TCarServiceWebModule.WebModuleDestroy(Sender: TObject);
begin
  FMVC.Free;
end;

end.
