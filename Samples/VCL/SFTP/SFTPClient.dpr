program SFTPClient;

uses
  Forms,
  SecureBridgeAbout in 'SecureBridgeAbout.pas' {SecureBridgeAboutForm},
  DemoForm in 'DemoForm.pas' {DemoForm},
  DemoFrame in 'DemoFrame.pas' {DemoFrame},
  SFTPClientFrame in 'SFTPClientFrame.pas' {SFTPClientFrame},
  SFTPClientDemoForm in 'SFTPClientDemoForm.pas' {SFTPClientForm},
  RandomForm in 'RandomForm.pas' {fmRandom},
  DemoBase in 'DemoBase.pas',
  PromptForm in 'PromptForm.pas' {fmPrompt},
  NewNameForm in 'NewNameForm.pas' {fmNewName},
  FileViewForm in 'FileViewForm.pas' {fmFileView};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '';
  Application.CreateForm(TSFTPClientForm, SFTPClientForm);
  Application.CreateForm(TSecureBridgeAboutForm, SecureBridgeAboutForm);
  Application.CreateForm(TfmPrompt, fmPrompt);
  Application.CreateForm(TfmNewName, fmNewName);
  Application.CreateForm(TfmFileView, fmFileView);
  Application.Run;
end.
