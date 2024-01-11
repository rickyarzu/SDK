program TestGeoCoding;

uses
  Vcl.Forms,
  ufrmTestGeoCoding in '..\src\ufrmTestGeoCoding.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
