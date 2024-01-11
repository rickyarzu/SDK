program MasterDetailApplicationDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMasterDetail in 'uMasterDetail.pas' {MasterDetailForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMasterDetailForm, MasterDetailForm);
  Application.Run;
end.
