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
    JclLastExceptStackListToStrings(LLines, True, True, True, True);
    LText := LLines.Text;
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
    System.SysUtils.Exception.GetExceptionStackInfoProc := GetExceptionStackInfoProc;
    System.SysUtils.Exception.GetStackInfoStringProc := GetStackInfoStringProc;
    System.SysUtils.Exception.CleanUpStackInfoProc := CleanUpStackInfoProc;
    JclDebug.JclStackTrackingOptions := [stStack, stRawMode]; // I added this hoping it would help.
  end;

end;

procedure FinalizeStack;
begin
  // Stop Jcl exception tracking and unregister our provider.
  if JclExceptionTrackingActive then
  begin
    System.SysUtils.Exception.GetExceptionStackInfoProc := nil;
    System.SysUtils.Exception.GetStackInfoStringProc := nil;
    System.SysUtils.Exception.CleanUpStackInfoProc := nil;
    JclStopExceptionTracking;
  end;
end;

end.
