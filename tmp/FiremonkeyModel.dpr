program FiremonkeyModel;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmFiremonkey in 'ufrmFiremonkey.pas' {frmFiremonkeyModel};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFiremonkeyModel, frmFiremonkeyModel);
  Application.Run;
end.
