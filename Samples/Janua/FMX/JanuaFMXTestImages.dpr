program JanuaFMXTestImages;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmJanuaFXMTestFNCBlox in 'ufrmJanuaFXMTestFNCBlox.pas' {Form3},
  Janua.FXM.FNCBloxControls in '..\..\..\src\FMX\Janua.FXM.FNCBloxControls.pas',
  Janua.FMX.frameFNCBlox in '..\..\..\src\FMX\Janua.FMX.frameFNCBlox.pas' {frameFNCBloxDrawing: TFrame},
  Janua.FMX.frameCanvasPaintImage in '..\..\..\src\FMX\Janua.FMX.frameCanvasPaintImage.pas' {frameFMXImageDraw: TFrame},
  Janua.FMX.dlgNotes in '..\..\..\src\FMX\Janua.FMX.dlgNotes.pas' {dlgFMXNotes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TframeFMXImageDraw, frameFMXImageDraw);
  Application.CreateForm(TdlgFMXNotes, dlgFMXNotes);
  Application.Run;
end.
