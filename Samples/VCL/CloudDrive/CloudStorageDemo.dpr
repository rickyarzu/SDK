program CloudStorageDemo;

uses
  Forms,
  UCloudStorageDemo in 'UCloudStorageDemo.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
