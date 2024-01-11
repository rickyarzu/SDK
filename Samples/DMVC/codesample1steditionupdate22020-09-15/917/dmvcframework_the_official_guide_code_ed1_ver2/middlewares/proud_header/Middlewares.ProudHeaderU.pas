unit Middlewares.ProudHeaderU;

interface

uses
  MVCFramework, MVCFramework.Logger;

type
  TProudHeaderMiddleware = class(TInterfacedObject, IMVCMiddleware)
  protected
    procedure OnAfterControllerAction(Context: TWebContext; const AActionNAme: string;
      const Handled: Boolean);
    procedure OnBeforeRouting(Context: TWebContext; var Handled: Boolean);
    procedure OnBeforeControllerAction(Context: TWebContext;
      const AControllerQualifiedClassName: string; const AActionNAme: string; var Handled: Boolean);
    procedure OnAfterRouting(Context: TWebContext; const AHandled: Boolean);
  end;

implementation

uses
  System.SysUtils;

{ TMVCSalutationMiddleware }

procedure TProudHeaderMiddleware.OnAfterControllerAction(Context: TWebContext;
  const AActionNAme: string; const Handled: Boolean);
begin
  // do nothing
end;

procedure TProudHeaderMiddleware.OnAfterRouting(Context: TWebContext; const AHandled: Boolean);
begin
  Context.Response.SetCustomHeader('X-PROUD-HEADER',
    'Proudly served by DelphiMVCFramework');
end;

procedure TProudHeaderMiddleware.OnBeforeControllerAction(Context: TWebContext;
  const AControllerQualifiedClassName, AActionNAme: string; var Handled: Boolean);
begin
  // do nothing
end;

procedure TProudHeaderMiddleware.OnBeforeRouting(Context: TWebContext; var Handled: Boolean);
begin
  // do nothing
end;

end.
