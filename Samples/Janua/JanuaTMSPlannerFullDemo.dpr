program JanuaTMSPlannerFullDemo;

uses
  Forms,
  ufrmTMSPlannerFullDemo in 'ufrmTMSPlannerFullDemo.pas' {Form1},
  Janua.TMS.HtmlHelpDialog in '..\..\src\TMS\Janua.TMS.HtmlHelpDialog.pas' {dlgJanuaTmsHelpDialog},
  Vcl.Themes,
  Vcl.Styles;

{$R *.RES}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Win10IDE_Light');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdlgJanuaTmsHelpDialog, dlgJanuaTmsHelpDialog);
  Application.Run;
end.
