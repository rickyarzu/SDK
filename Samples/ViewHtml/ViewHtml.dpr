program ViewHtml;

uses
  Vcl.Forms,
  ufrmViewHtml in 'ufrmViewHtml.pas' {Form14};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm14, Form14);
  Application.Run;
end.
