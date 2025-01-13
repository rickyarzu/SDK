unit Janua.Phoenix.VCL.TWilioBackgroundThread;

interface

uses
  System.SysUtils, System.Classes;

type
  TTwilioBackgroundThread = class(TThread)
  private
    FPaused: Boolean;
    // FTerminated: Boolean;
    // FOnTerminate: TNotifyEvent;
  protected
    procedure Execute; override;
  public
    procedure Pause;
    procedure Continue;
    // procedure Terminate;
    // property OnTerminate: TNotifyEvent read FOnTerminate write FOnTerminate;
  end;

implementation

uses
  System.IOUtils, System.Math, Janua.Core.Functions, Janua.Phoenix.PgTwilioSync;

procedure TTwilioBackgroundThread.Continue;
begin
  FPaused := False;
end;

// process something here
procedure TTwilioBackgroundThread.Execute;
var
  LogFile: TextFile;
  procedure OpenFile;
  begin
    AssignFile(LogFile, 'C:\Phoenix\PhoenixThread.log');
    if TFile.Exists('C:\Phoenix\PhoenixThread.log') then
      Append(LogFile)
    else
      Rewrite(LogFile);
  end;

begin
  try
    FPaused := False;
    OpenFile;
    WriteLn(LogFile, '   0 - Background Thread Started: ' + DateTimeToStr(Now));
    var
    j := 0;

    while not Terminated do
    begin

      if not FPaused then
        try
          if j > 0 then
            OpenFile;
          Inc(j);
          var
          lDmWhatsApp := TdmPgTWilioSync.Create(nil);
          try
            WriteLn(LogFile, Lpad(j.ToString, 4, ' ') + ' - Twilio SyncDBTwilio: ' + DateTimeToStr(Now));
            lDmWhatsApp.SyncDBTwilio;
            WriteLn(LogFile, Lpad(j.ToString, 4, ' ') + ' - Twilio SyncMessages: ' + DateTimeToStr(Now));
            lDmWhatsApp.SyncMessages;
            WriteLn(LogFile, Lpad(j.ToString, 4, ' ') + ' - Twilio SyncStatus: ' + DateTimeToStr(Now));
            lDmWhatsApp.SyncStatus;
            WriteLn(LogFile, Lpad(j.ToString, 4, ' ') + ' - Twilio Status Images: ' + DateTimeToStr(Now));
            dmPgTWilioSync.StatiniStatus;
          finally
            lDmWhatsApp.Free;
            lDmWhatsApp := nil;
          end;
          CloseFile(LogFile);
        except
          on e: exception do
          begin
            WriteLn(LogFile, Lpad(j.ToString, 4, ' ') + ' - Errore Twilio: ' + e.Message +
              DateTimeToStr(Now));
            CloseFile(LogFile);
          end;
        end;

      TThread.Sleep(20000);
    end;
  finally
    OpenFile;
    WriteLn(LogFile, 'Thread Terminated: ' + DateTimeToStr(Now));
    CloseFile(LogFile);
  end;
end;

procedure TTwilioBackgroundThread.Pause;
begin
  FPaused := True;
end;

end.
