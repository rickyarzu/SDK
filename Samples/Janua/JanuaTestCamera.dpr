program JanuaTestCamera;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.FMX.frmAccessCamera in '..\..\src\FMX\Janua.FMX.frmAccessCamera.pas' {AccessCameraAppForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAccessCameraAppForm, AccessCameraAppForm);
  Application.Run;
end.
