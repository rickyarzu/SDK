program StripeDemo;

uses
  Vcl.Forms,
  UStripeDemo in 'UStripeDemo.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
