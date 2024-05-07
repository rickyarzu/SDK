program CanvasPainting;

uses
  System.StartUpCopy,
  FMX.Forms,
  uframeJanuaFMXTestImage in 'uframeJanuaFMXTestImage.pas' {framFMXImageDraw};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TframFMXImageDraw, framFMXImageDraw);
  Application.Run;
end.
