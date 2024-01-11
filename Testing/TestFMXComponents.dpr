program TestFMXComponents;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmTestFMXComponents in 'src\ufrmTestFMXComponents.pas' {TabbedForm},
  udmTestFMXComponents in 'src\udmTestFMXComponents.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedForm, TabbedForm);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
