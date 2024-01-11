unit Janua.Test.VCLFormsApplication;

interface

uses
  // RTL
  System.Classes, System.SysUtils,
  // Janua
  Janua.VCL.Application, Janua.Core.Types, Janua.VCL.MVVM.Framework;

type
  TJanuaTestVCLApplication = class(TJanuaVCLCustomApplication)
  protected
    class var FPgConf: TJanuaServerRecordConf;
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup; override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
  end;

implementation

uses // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application, Janua.Mock.Firedac.Framework;

{ TJanuaVCLApplication }

class procedure TJanuaTestVCLApplication.ApplicationSetup;
begin
  inherited;
  Janua.Mock.Firedac.Framework.TJanuaMockFiredacApplication.RegisterClasses;
end;

class procedure TJanuaTestVCLApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaTestVCLApplication.ConnectionSetup;
begin
  inherited;
  TJanuaApplication.DBSchemaID := 33;
  TJanuaApplication.ServerAddress := 'localhost'; // 'testdb.januaservers.com';
  TJanuaApplication.ServerDatabaseName := {'test'}  'test' ;
  TJanuaApplication.ServerPort := 5444;
end;

class procedure TJanuaTestVCLApplication.LoadMenu;
begin
  inherited;

end;

class procedure TJanuaTestVCLApplication.RegisterForms;
begin
  inherited;

end;

end.
