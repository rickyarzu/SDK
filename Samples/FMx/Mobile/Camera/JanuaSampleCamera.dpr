program JanuaSampleCamera;

uses
  System.StartUpCopy,
  FMX.Forms,
  uSampleCamera in 'uSampleCamera.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
