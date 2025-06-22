program PhoenixVCLArubaClient;

uses
  Vcl.Forms,
  Janua.Phoenix.VCL.ArubaClient in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.ArubaClient.pas' {frmPhoenixArubaclient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPhoenixArubaclient, frmPhoenixArubaclient);
  Application.Run;
end.
