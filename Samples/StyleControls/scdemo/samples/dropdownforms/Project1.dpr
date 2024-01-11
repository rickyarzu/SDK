program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {PopupForm},
  Unit3 in 'Unit3.pas' {PopupForm2},
  Vcl.Themes,
  Vcl.Styles,
  Unit4 in 'Unit4.pas' {MenuPopupForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TPopupForm, PopupForm);
  Application.CreateForm(TPopupForm2, PopupForm2);
  Application.CreateForm(TMenuPopupForm, MenuPopupForm);
  Application.Run;
end.
