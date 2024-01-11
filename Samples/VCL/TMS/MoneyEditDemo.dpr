program MoneyEditDemo;

uses
  Forms,
  UMoneyEditDemo in 'UMoneyEditDemo.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.RES}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Windows10 OxfordBlue');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
