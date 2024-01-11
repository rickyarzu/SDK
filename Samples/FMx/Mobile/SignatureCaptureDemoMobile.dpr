program SignatureCaptureDemoMobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.FMX.frmSignatureCaptureMobile in '..\..\..\src\FMX\Janua.FMX.frmSignatureCaptureMobile.pas' {rmFMXSignatureCaptureMobile};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TrmFMXSignatureCaptureMobile, rmFMXSignatureCaptureMobile);
  Application.Run;
end.
