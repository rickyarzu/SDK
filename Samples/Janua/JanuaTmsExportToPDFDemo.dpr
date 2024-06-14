program JanuaTmsExportToPDFDemo;

uses
  Vcl.Forms,
  UDemo in '..\Planner\TMS\Demo33\UDemo.pas' {Form47};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm47, Form47);
  Application.Run;
end.
