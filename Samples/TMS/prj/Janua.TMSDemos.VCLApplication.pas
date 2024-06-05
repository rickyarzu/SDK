unit Janua.TMSDemos.VCLApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.VCL.Application;

type
  TJanuaTmsDemosVCLApplication = class(TJanuaVCLCustomApplication)
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
  end;

implementation

uses Janua.Application.Framework;

{ TJanuaTmsDemosVCLApplication }

class procedure TJanuaTmsDemosVCLApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;
  TJanuaApplication.CloudConf.GoogleAppKey :=
    '236693880296-rm39939mbtpabvkfdiqsolvkdogn334a.apps.googleusercontent.com';
  TJanuaApplication.CloudConf.GoogleAppSecret := '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';
end;

class procedure TJanuaTmsDemosVCLApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaTmsDemosVCLApplication.ConnectionSetup;
begin
  inherited;

end;

class procedure TJanuaTmsDemosVCLApplication.LoadMenu;
begin
  inherited;

end;

class procedure TJanuaTmsDemosVCLApplication.RegisterForms;
begin
  inherited;

end;

end.
