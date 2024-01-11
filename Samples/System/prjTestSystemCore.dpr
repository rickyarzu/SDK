program prjTestSystemCore;

{$I januacore.inc}

uses
  Vcl.Forms,
  ufrmTestSystem in 'ufrmTestSystem.pas' {Form2},
  Janua.System.Test in '..\..\src\januacore\Test\Janua.System.Test.pas',
  uWebBrokerTest in '..\..\Testing\src\uWebBrokerTest.pas',
  uWebModuleCoreTest in '..\..\Testing\src\uWebModuleCoreTest.pas' {WebModuleCoreTest: TWebModule};

{$R *.res}

begin

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
