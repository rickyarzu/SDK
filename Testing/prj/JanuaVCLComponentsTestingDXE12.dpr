program JanuaVCLComponentsTestingDXE12;

uses
  Vcl.Forms,
  Janua.Core.Types,
  Janua.VCL.Framework,
  ufrmTestCreationComponents in '..\src\ufrmTestCreationComponents.pas' {frmTestCreationComponents},
  udmTestingComponents in '..\src\udmTestingComponents.pas' {dmTestingComponents: TDataModule},
  udmAppConfTesting in '..\src\udmAppConfTesting.pas' {dmAppConfTesting: TDataModule},
  udmAppConf in '..\..\src\DataModules\udmAppConf.pas';

{$R *.res}

begin
  TJanuaVCLApplication.Initialize;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmAppConfTesting, dmAppConfTesting);
  dmAppConfTesting.Activate(TJanuaApplicationType.jatClientWin);
  Application.CreateForm(TfrmTestCreationComponents, frmTestCreationComponents);
  application.Run;
end.
