program TestFMXMobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmTestingMobile in '..\src\ufrmTestingMobile.pas' {frmTestingMobile},
  uframeKeyboardTest in '..\src\uframeKeyboardTest.pas' {Frame2: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTestingMobile, frmTestingMobile);
  Application.Run;
end.
