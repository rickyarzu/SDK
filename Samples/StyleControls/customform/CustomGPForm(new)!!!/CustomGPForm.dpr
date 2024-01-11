program CustomGPForm;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  TStyleManager.TrySetStyle('Windows10 OxfordBlue');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
