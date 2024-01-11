program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  Unit2 in 'Unit2.pas' {AppPagerForm},
  MessageUnit in 'MessageUnit.pas' {MessageForm},
  Form2Unit in 'Form2Unit.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAppPagerForm, AppPagerForm);
  Application.CreateForm(TMessageForm, MessageForm);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
