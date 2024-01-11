program ActionManagerVCL;

uses
  Vcl.Forms,
  ufrmVCLActionManager in 'ufrmVCLActionManager.pas' {Form3},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 OxfordBlue');
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
