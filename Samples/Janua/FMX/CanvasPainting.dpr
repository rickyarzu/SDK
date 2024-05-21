program CanvasPainting;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.FMX.Test.frmImageCanvas in 'Janua.FMX.Test.frmImageCanvas.pas' {frmFMXTestImageDraw},
  Janua.FMX.frameCanvasPaintImage in '..\..\..\src\FMX\Janua.FMX.frameCanvasPaintImage.pas' {frameFMXImageDraw: TFrame},
  Janua.FMX.dlgNotes in '..\..\..\src\FMX\Janua.FMX.dlgNotes.pas' {dlgFMXNotes},
  Janua.FMX.dlgCanvasImage in '..\..\..\src\FMX\Janua.FMX.dlgCanvasImage.pas' {dlgFMXCanvasImage};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFMXTestImageDraw, frmFMXTestImageDraw);
  Application.Run;
end.
