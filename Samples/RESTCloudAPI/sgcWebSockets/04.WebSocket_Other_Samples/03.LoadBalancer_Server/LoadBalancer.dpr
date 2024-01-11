program LoadBalancer;

uses
  Forms,
  fLoadBalancer in 'fLoadBalancer.pas' {frmLoadBalancer};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmLoadBalancer, frmLoadBalancer);
  Application.Run;
end.
