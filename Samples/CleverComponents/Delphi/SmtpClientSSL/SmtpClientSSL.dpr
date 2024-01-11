program SmtpClientSSL;

uses
  Forms,
  ufrmCleverSMTPForm in 'ufrmCleverSMTPForm.pas' {Form1},
  DemoBaseFormUnit in '..\Common\DemoBaseFormUnit.pas' {clDemoBaseForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
