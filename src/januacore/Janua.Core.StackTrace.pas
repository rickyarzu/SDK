unit Janua.Core.StackTrace;

// Stack tracing with WinAPI
// (c) Fr0sT-Brutal
// License MIT

interface



uses
  {$IFDEF MSWINDOWS} Windows, {$ENDIF} SysUtils;

const
  DBG_STACK_LENGTH = 32;
type
  TDbgInfoStack = array[0..DBG_STACK_LENGTH - 1] of Pointer;
  PDbgInfoStack = ^TDbgInfoStack;

{$IFDEF MSWINDOWS}
function RtlCaptureStackBackTrace(FramesToSkip: ULONG; FramesToCapture: ULONG; BackTrace: Pointer;
  BackTraceHash: PULONG): USHORT; stdcall; external 'kernel32.dll';
{$ENDIF}

procedure GetCallStackOS(var Stack: TDbgInfoStack; FramesToSkip: Integer);
function CallStackToStr(const Stack: TDbgInfoStack): string;
procedure InstallExceptionCallStack;



implementation



procedure GetCallStackOS(var Stack: TDbgInfoStack; FramesToSkip: Integer);
begin
{$IFDEF MSWINDOWS}
  ZeroMemory(@Stack, SizeOf(Stack));
  RtlCaptureStackBackTrace(FramesToSkip, Length(Stack), @Stack, nil);
{$ENDIF}
end;

function CallStackToStr(const Stack: TDbgInfoStack): string;
var
  Ptr: Pointer;
begin
  Result := '';
  for Ptr in Stack do
    if Ptr <> nil then
      Result := Result + sLineBreak + Format('$%p', [Ptr])
    else
      Break;
end;

function GetExceptionStackInfo(P: PExceptionRecord): Pointer;
begin
  Result := AllocMem(SizeOf(TDbgInfoStack));
  // ! Excluding nested functions:
  //  - GetCallStackOS
  //  - GetExceptionStackInfo
  //  - System.SysUtils.Exception.RaisingException
  GetCallStackOS(PDbgInfoStack(Result)^, 3);
end;

function GetStackInfoStringProc(Info: Pointer): string;
begin
  Result := CallStackToStr(PDbgInfoStack(Info)^);
end;

procedure CleanUpStackInfoProc(Info: Pointer);
begin
  Dispose(PDbgInfoStack(Info));
end;

procedure InstallExceptionCallStack;
begin
  Exception.GetExceptionStackInfoProc := GetExceptionStackInfo;
  Exception.GetStackInfoStringProc := GetStackInfoStringProc;
  Exception.CleanUpStackInfoProc := CleanUpStackInfoProc;
end;

procedure UninstallExceptionCallStack;
begin
  Exception.GetExceptionStackInfoProc := nil;
  Exception.GetStackInfoStringProc := nil;
  Exception.CleanUpStackInfoProc := nil;
end;


end.
