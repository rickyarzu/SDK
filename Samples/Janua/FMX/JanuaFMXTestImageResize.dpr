program JanuaFMXTestImageResize;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmTestImageResize in 'ufrmTestImageResize.pas' {frmFXMTestImageResize},
  Janua.FMX.frameFNCBlox in '..\..\..\src\FMX\Janua.FMX.frameFNCBlox.pas' {frameFNCBloxDrawing: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFXMTestImageResize, frmFXMTestImageResize);
  Application.Run;
end.
