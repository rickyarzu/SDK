program RESTDebuggerClient;

uses
  Vcl.Forms,
  Janua.VCL.Cloud.RESTDebuggerClient in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.RESTDebuggerClient.pas' {FrmMain};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
