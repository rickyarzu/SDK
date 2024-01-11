program AmazonSQS;

uses
  Forms,
  FAmazonSQS in 'FAmazonSQS.pas' {FRMAmazonSQS};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMAmazonSQS, FRMAmazonSQS);
  Application.Run;
end.
