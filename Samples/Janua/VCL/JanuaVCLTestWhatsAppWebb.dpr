program JanuaVCLTestWhatsAppWebb;

uses
  Vcl.Forms,
  ufrmTestWhatsAppWeb in 'ufrmTestWhatsAppWeb.pas' {frmTestWhatsAppWeb};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTestWhatsAppWeb, frmTestWhatsAppWeb);
  Application.Run;
end.
