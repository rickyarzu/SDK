program sgcBinanceTradeFutures;

uses
  Forms,
  FsgcBinanceTradeFutures in 'FsgcBinanceTradeFutures.pas' {Form53};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMSGCBinanceTradeFutures, FRMSGCBinanceTradeFutures);
  Application.Run;
end.
