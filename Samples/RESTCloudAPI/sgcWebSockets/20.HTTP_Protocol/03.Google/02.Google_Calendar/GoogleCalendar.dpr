program GoogleCalendar;

uses
  Forms,
  FGoogleCalendar in 'FGoogleCalendar.pas' {FRMGoogleCalendar},
  FCalendar in 'FCalendar.pas' {FRMCalendar},
  FEvent in 'FEvent.pas' {FRMEvent};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMGoogleCalendar, FRMGoogleCalendar);
  Application.CreateForm(TFRMCalendar, FRMCalendar);
  Application.CreateForm(TFRMEvent, FRMEvent);
  Application.Run;
end.
