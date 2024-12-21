unit Janua.Phoenix.VCL.LabBackgroundThread;

interface

uses
  System.SysUtils, System.Classes;

type
  TPhoenixLabBackgroundThread = class(TThread)
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
  System.IOUtils, System.Math, Janua.Core.Functions, Janua.Phoenix.dmIBLabSync;

procedure TPhoenixLabBackgroundThread.Continue;
begin
  FPaused := False;
end;

// process something here
procedure TPhoenixLabBackgroundThread.Execute;
var
  LogFile: TextFile;
  procedure OpenFile;
  begin
    AssignFile(LogFile, 'C:\Phoenix\PhoenixLabThread.log');
    if TFile.Exists('C:\Phoenix\PhoenixLabThread.log') then
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
    i := 0;
    var
    j := 0;

    while not Terminated do
    begin
      if not FPaused and (i = 0) then
      begin
        try
          if j > 0 then
            OpenFile;
          Inc(j);
          WriteLn(LogFile, Lpad(j.ToString, 4, ' ') + ' - Logs From Background Thread: ' +
            DateTimeToStr(Now));
          // Syncro Phoenix Lab
          var
          ldmFDACPhoenixLab := TdmPhoenixIBLab.Create(nil);
          try
            WriteLn(LogFile, Lpad(j.ToString, 4, ' ') + ' - Stato Lavorazioni: ' + DateTimeToStr(Now));
            ldmFDACPhoenixLab.StatoLavorazioni;
            WriteLn(LogFile, Lpad(j.ToString, 4, ' ') + ' - Elabora Laboratori Json: ' + DateTimeToStr(Now));
            ldmFDACPhoenixLab.ElaborateJson;
            WriteLn(LogFile, Lpad(j.ToString, 4, ' ') + ' - Aggiorna Phoenix Lab: ' + DateTimeToStr(Now));
            ldmFDACPhoenixLab.UpdateData;
            WriteLn(LogFile, Lpad(j.ToString, 4, ' ') + ' - Fine Aggiornamenti: ' + DateTimeToStr(Now));
          finally
            ldmFDACPhoenixLab.Free;
            ldmFDACPhoenixLab := nil;
          end;
          CloseFile(LogFile);
        except
          on e: exception do
          begin
            WriteLn(LogFile, Lpad(j.ToString, 4, ' ') + ' - Errore Aggiornamenti: ' + e.Message +
              DateTimeToStr(Now));
            CloseFile(LogFile);
          end;
        end;
      end;
      TThread.Sleep(60000);
      Inc(i);
      i := IfThen(i = 15, 0, i);
    end;
  finally
    OpenFile;
    WriteLn(LogFile, 'Thread Terminated: ' + DateTimeToStr(Now));
    CloseFile(LogFile);
  end;
end;

procedure TPhoenixLabBackgroundThread.Pause;
begin
  FPaused := True;
end;

end.
