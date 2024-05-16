program CanvasPainting;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmJanuaFMXTestImage in 'ufrmJanuaFMXTestImage.pas' {frmFMXTestImageDraw},
  Jaua.FMX.CanvasPaintImage in '..\..\..\src\FMX\Jaua.FMX.CanvasPaintImage.pas' {framFMXImageDraw: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFMXTestImageDraw, frmFMXTestImageDraw);
  Application.Run;
end.
