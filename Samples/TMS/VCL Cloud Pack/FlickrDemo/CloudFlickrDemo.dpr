program CloudFlickrDemo;

uses
  Forms,
  UCloudFlickrDemo in 'UCloudFlickrDemo.pas' {Form816};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm816, Form816);
  Application.Run;
end.
