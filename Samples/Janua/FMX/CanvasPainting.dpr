program CanvasPainting;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.FMX.Test.frmImageCanvas in 'Janua.FMX.Test.frmImageCanvas.pas' {frmFMXTestImageDraw},
  Jaua.FMX.frameCanvasPaintImage in '..\..\..\src\FMX\Jaua.FMX.frameCanvasPaintImage.pas' {frameFMXImageDraw: TFrame},
  Janua.FMX.dlgNotes in '..\..\..\src\FMX\Janua.FMX.dlgNotes.pas' {dlgFMXNotes},
  Janua.FMX.dlgCanvasImage in '..\..\..\src\FMX\Janua.FMX.dlgCanvasImage.pas' {dlgFMXCanvasImage};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFMXTestImageDraw, frmFMXTestImageDraw);
  Application.CreateForm(TdlgFMXNotes, dlgFMXNotes);
  Application.CreateForm(TdlgFMXCanvasImage, dlgFMXCanvasImage);
  Application.Run;
end.
