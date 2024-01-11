program EInvoiceDemo;

uses
  Vcl.Forms,
  MainFM in '..\..\..\..\Lib\FeInvoice4D\samples\Demo01\MainFM.pas' {MainForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;

end.

