program SportmediaApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.FMX.SportMediaMainTabForm in '..\..\..\src\FMX\Football\Janua.FMX.SportMediaMainTabForm.pas' {frmSpormediaAppMainFMX};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSpormediaAppMainFMX, frmSpormediaAppMainFMX);
  Application.Run;
end.
