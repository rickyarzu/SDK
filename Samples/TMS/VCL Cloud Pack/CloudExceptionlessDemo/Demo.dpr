program Demo;

uses
  Vcl.Forms,
  UDemo in 'UDemo.pas' {Form132};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm132, Form132);
  Application.Run;
end.
