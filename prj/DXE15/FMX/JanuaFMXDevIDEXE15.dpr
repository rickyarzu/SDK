program JanuaFMXDevIDEXE15;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.FMX.frmMDIMain in '..\..\..\src\FMX\Janua.FMX.frmMDIMain.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
