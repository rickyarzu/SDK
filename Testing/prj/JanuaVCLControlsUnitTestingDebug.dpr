program JanuaVCLControlsUnitTestingDebug;

uses
  Vcl.Forms,
  Janua.Core.Classes,
  Janua.Core.Types,
  ufrmUnitTestJanuaVCLComponents in '..\src\ufrmUnitTestJanuaVCLComponents.pas' {Form15},
  uTestORM in '..\src\uTestORM.pas',
  Janua.Orm.Test.Impl in '..\src\Janua.Orm.Test.Impl.pas',
  Janua.Orm.Test.Intf in '..\src\Janua.Orm.Test.Intf.pas',
  WebModuleJormModel in '..\..\..\src\Datasnap\WebModuleJormModel.pas' {WebModule1: TWebModule},
  Janua.Anagraph.Server.Intf in '..\..\src\januacore\Janua.Anagraph.Server.Intf.pas',
  Janua.Anagraph.Server.Impl in '..\..\src\januacore\Janua.Anagraph.Server.Impl.pas',
  uTestVCLConf in '..\src\uTestVCLConf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm15, Form15);
  Application.Run;

end.
