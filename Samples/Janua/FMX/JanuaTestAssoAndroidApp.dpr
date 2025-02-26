program JanuaTestAssoAndroidApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmfmxTestAssoAndroid in 'ufrmfmxTestAssoAndroid.pas' {frmFMXAssoTestAndroid};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFMXAssoTestAndroid, frmFMXAssoTestAndroid);
  Application.Run;
end.
