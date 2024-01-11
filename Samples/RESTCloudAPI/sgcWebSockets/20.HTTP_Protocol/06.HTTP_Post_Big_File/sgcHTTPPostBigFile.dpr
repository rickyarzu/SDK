program sgcHTTPPostBigFile;

uses
  Forms,
  FHTTPPostBigFile in 'FHTTPPostBigFile.pas' {FRMHTTPPostBigFile};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMHTTPPostBigFile, FRMHTTPPostBigFile);
  Application.Run;
end.
