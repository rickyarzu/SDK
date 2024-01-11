program KendoUI_Grid;

uses
  Forms,
  uKendoUI_Grid in 'uKendoUI_Grid.pas' {frmServerPROTOCOL};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServerPROTOCOL, frmServerPROTOCOL);
  Application.Run;
end.
