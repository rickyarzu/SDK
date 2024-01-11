program JanuaVCLComponentsTesting;

uses
  Vcl.Forms,
  Janua.Core.Types,
  ufrmTestCreationComponents in '..\src\ufrmTestCreationComponents.pas' {frmTestCreationComponents},
  udmTestingComponents in '..\src\udmTestingComponents.pas' {dmTestingComponents: TDataModule},
  udmAppConfTesting in '..\src\udmAppConfTesting.pas' {dmAppConfTesting: TDataModule},
  udmAppConf in '..\..\src\DataModules\udmAppConf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TdmAppConfTesting, dmAppConfTesting);
  mAppConfTesting.Activate(TJanuaApplicationType.jatClientWin);
  AApplication.CreateForm(TfrmTestCreationComponents, frmTestCreationComponents);
  pplication.Run;
end.
