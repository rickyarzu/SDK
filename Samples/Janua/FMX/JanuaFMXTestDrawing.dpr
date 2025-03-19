program JanuaFMXTestDrawing;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmFMXTestCanvasDrawing in 'ufrmFMXTestCanvasDrawing.pas' {frmFMXTestCanvasDrawing},
  Janua.FMX.frameCanvasPaintImage in '..\..\..\src\FMX\Janua.FMX.frameCanvasPaintImage.pas' {frameFMXImageDraw: TFrame},
  Janua.FMX.dlgNotes in '..\..\..\src\FMX\Janua.FMX.dlgNotes.pas' {dlgFMXNotes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFMXTestCanvasDrawing, frmFMXTestCanvasDrawing);
  Application.CreateForm(TframeFMXImageDraw, frameFMXImageDraw);
  Application.CreateForm(TdlgFMXNotes, dlgFMXNotes);
  Application.Run;
end.
