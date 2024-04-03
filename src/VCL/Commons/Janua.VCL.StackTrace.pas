unit Janua.VCL.StackTrace;

interface

uses
  System.SysUtils, Classes, JclDebug;

procedure InitializeStack;
procedure FinalizeStack;

implementation

function GetExceptionStackInfoProc(P: PExceptionRecord): Pointer;
var
  LLines: TStringList;
  LText: String;
  LResult: PChar;
begin
  LLines := TStringList.Create;
  try
    try
      JclLastExceptStackListToStrings(LLines, True, True, True, True);
      LText := LLines.Text;
    except
      on e: exception do
        LText := '';
    end;
    LResult := StrAlloc(Length(LText));
    StrCopy(LResult, PChar(LText));
    Result := LResult;
  finally
    LLines.Free;
  end;
end;

function GetStackInfoStringProc(Info: Pointer): string;
begin
  Result := string(PChar(Info));
end;

procedure CleanUpStackInfoProc(Info: Pointer);
begin
  StrDispose(PChar(Info));
end;

procedure InitializeStack;
begin
  // Start the Jcl exception tracking and register our Exception
  // stack trace provider.
  if JclStartExceptionTracking then
  begin
    System.SysUtils.exception.GetExceptionStackInfoProc := GetExceptionStackInfoProc;
    System.SysUtils.exception.GetStackInfoStringProc := GetStackInfoStringProc;
    System.SysUtils.exception.CleanUpStackInfoProc := CleanUpStackInfoProc;
    JclDebug.JclStackTrackingOptions := [stStack, stRawMode]; // I added this hoping it would help.
  end;

end;

procedure FinalizeStack;
begin
  // Stop Jcl exception tracking and unregister our provider.
  if JclExceptionTrackingActive then
  begin
    System.SysUtils.exception.GetExceptionStackInfoProc := nil;
    System.SysUtils.exception.GetStackInfoStringProc := nil;
    System.SysUtils.exception.CleanUpStackInfoProc := nil;
    JclStopExceptionTracking;
  end;
end;

end.
