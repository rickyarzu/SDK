program PlannerPrinting;

uses
  Forms,
  uTmsPrint in 'uTmsPrint.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TForm1, Form1);
  pplication.Run;
end.
