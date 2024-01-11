program TestFMXDesktopLibraries;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufmxMainTest in 'src\ufmxMainTest.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
