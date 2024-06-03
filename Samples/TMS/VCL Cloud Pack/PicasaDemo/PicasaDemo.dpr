program PicasaDemo;

uses
  Forms,
  UPicasaDemo in 'UPicasaDemo.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
