program Office2019DemoApplication;

uses
  Vcl.Forms,
  UOffice2019DemoApplication in '..\src\UOffice2019DemoApplication.pas' {Form6},
  Office2019Frame in '..\src\Office2019Frame.pas' {Office2019Frame1: TFrame},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
