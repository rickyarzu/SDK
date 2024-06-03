program FacebookDemo;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  UProfilePicture in 'UProfilePicture.pas' {ProfilePicture};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TProfilePicture, ProfilePicture);
  Application.Run;
end.
