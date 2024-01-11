program TestComponents;

uses
  Vcl.Forms,
  ufrmTestComponents in '..\src\ufrmTestComponents.pas' {Form16},
  udmTestComponents in '..\src\udmTestComponents.pas' {dmTestComponents: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TdmTestComponents, dmTestComponents);
  Application.Run;
end.
