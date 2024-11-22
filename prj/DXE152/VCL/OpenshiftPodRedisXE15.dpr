program OpenshiftPodRedisXE15;

uses
  Vcl.Forms,
  Janua.VCL.INPS.Redis.frmMain in 'Janua.VCL.INPS.Redis.frmMain.pas' {frmVCLINPMainRedis},
  Janua.INPS.RedisRequest in '..\..\..\src\januacore\Janua.INPS.RedisRequest.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLINPMainRedis, frmVCLINPMainRedis);
  Application.Run;
end.
