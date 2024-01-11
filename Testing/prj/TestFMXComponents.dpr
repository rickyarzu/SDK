program TestFMXComponents;

uses
  System.StartUpCopy,
  FMX.Forms,
  TabbedFormwithNavigation in 'TabbedFormwithNavigation.pas' {frmTestFMXComponents};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTestFMXComponents, frmTestFMXComponents);
  Application.Run;
end.
