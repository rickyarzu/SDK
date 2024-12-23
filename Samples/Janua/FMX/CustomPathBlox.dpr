program CustomPathBlox;

uses
  System.StartUpCopy,
  FMX.Forms,
  UCustomPathBlox in 'UCustomPathBlox.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
