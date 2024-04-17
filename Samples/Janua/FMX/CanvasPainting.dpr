program CanvasPainting;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmTestImage in 'ufrmTestImage.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
