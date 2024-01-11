program CarServiceSamples;

uses
  Vcl.Forms,
  ufrmVCLCarServiceDemoMain in '..\..\..\src\VCL\Custom\ufrmVCLCarServiceDemoMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
