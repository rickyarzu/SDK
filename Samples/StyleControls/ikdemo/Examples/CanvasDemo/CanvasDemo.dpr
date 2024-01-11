program CanvasDemo;

uses
  Forms,
  CanvasFrm in 'CanvasFrm.pas' {CanvasForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCanvasForm, CanvasForm);
  Application.Run;
end.
