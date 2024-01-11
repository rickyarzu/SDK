program Dico33RestTest;

uses
  Vcl.Forms,
  ufrmTestRestService in '..\src\ufrmTestRestService.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
