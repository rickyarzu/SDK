program AdvMemoAutoCompleteDemo;

uses
  Forms,
  UAdvMemoAutoCompleteDemo in 'UAdvMemoAutoCompleteDemo.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
