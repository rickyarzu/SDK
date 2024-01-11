program CleverRichViewMailClient;

uses
  Forms,
  main in '..\..\..\..\..\Libraries\TRichView\ThirdParty\CleverComponents\Demos\MailClient\main.pas' {MainForm},
  MessagePersister in '..\..\..\..\..\Libraries\TRichView\ThirdParty\CleverComponents\Demos\MailClient\MessagePersister.pas',
  AccountsForm in '..\..\..\..\..\Libraries\TRichView\ThirdParty\CleverComponents\Demos\MailClient\AccountsForm.pas' {frmAccounts},
  MessageSourceForm in '..\..\..\..\..\Libraries\TRichView\ThirdParty\CleverComponents\Demos\MailClient\MessageSourceForm.pas' {frmMessageSource},
  Progress in '..\..\..\..\..\Libraries\TRichView\ThirdParty\CleverComponents\Demos\MailClient\Progress.pas' {frmProgress},
  RVQuoteText in '..\..\..\..\..\Libraries\TRichView\ThirdParty\CleverComponents\Demos\RVQuoteText.pas',
  clRVSendDialog in '..\..\..\..\..\Libraries\TRichView\ThirdParty\CleverComponents\Demos\clRVSendDialog.pas' {frmComposeHTMLEMail},
  clRVSendDialogEx in '..\..\..\..\..\Libraries\TRichView\ThirdParty\CleverComponents\Demos\clRVSendDialogEx.pas',
  clRVSendMail in '..\..\..\..\..\Libraries\TRichView\ThirdParty\CleverComponents\Demos\clRVSendMail.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
