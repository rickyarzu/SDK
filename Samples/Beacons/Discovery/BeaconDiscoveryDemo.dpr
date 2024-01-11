program BeaconDiscoveryDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  BeaconForm in 'BeaconForm.pas' {BeaconDiscoverForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TBeaconDiscoverForm, BeaconDiscoverForm);
  Application.Run;
end.
