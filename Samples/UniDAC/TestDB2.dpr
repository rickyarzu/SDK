program TestDB2;

uses
  Vcl.Forms,
  uTestDB2 in 'uTestDB2.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
