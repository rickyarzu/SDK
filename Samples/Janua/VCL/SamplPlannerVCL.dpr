program SamplPlannerVCL;

uses
  Vcl.Forms,
  ufrmSampleVCLPlanner in 'ufrmSampleVCLPlanner.pas' {frmSamplePlanner},
  udmCloudCalendarTest in '..\Cloud\udmCloudCalendarTest.pas' {DataModule3: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSamplePlanner, frmSamplePlanner);
  Application.CreateForm(TDataModule3, DataModule3);
  Application.Run;
end.
