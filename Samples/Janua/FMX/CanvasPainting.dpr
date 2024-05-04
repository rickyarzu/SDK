program CanvasPainting;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmJanuaFMXTestImage in 'ufrmJanuaFMXTestImage.pas' {frmFMXTestImageDraw};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFMXTestImageDraw, frmFMXTestImageDraw);
  Application.Run;
end.
