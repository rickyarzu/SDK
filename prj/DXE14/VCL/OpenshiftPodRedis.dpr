program OpenshiftPodRedis;

uses
  Vcl.Forms,
  Janua.VCL.INPS.Redis.frmMainXE15 in '..\..\DXE15\VCL\Janua.VCL.INPS.Redis.frmMainXE15.pas' {frmVCLINPMainRedis},
  Janua.INPS.RedisRequest in '..\..\..\src\januacore\Janua.INPS.RedisRequest.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLINPMainRedis, frmVCLINPMainRedis);
  Application.Run;
end.
