unit Janua.Core.Console;

interface

uses System.SysUtils, Janua.Core.Types, Janua.Application.Intf;

type
  TJanuaConsoleLogOutput = class(TInterfacedObject, IJanuaApplicationLogOutput)
  public
    // TMessageLogProc = TProc<string { aProcName } , string { aLogMessage } , TObject { aObject } >;
    procedure OutputLog(aProcName: string; aLogMessage: string; aObject: TObject); overload;
    procedure OutputLog(const aLog: string); overload;
  end;

  TJanuaMockLogOutput = class(TInterfacedObject, IJanuaApplicationLogOutput)
  public
    // TMessageLogProc = TProc<string { aProcName } , string { aLogMessage } , TObject { aObject } >;
    procedure OutputLog(aProcName: string; aLogMessage: string; aObject: TObject); overload;
    procedure OutputLog(const aLog: string); overload;
  end;

implementation

{ TJanuaApplicationLogOutput }

procedure TJanuaConsoleLogOutput.OutputLog(const aLog: string);
begin
  var
  aHeader := DateTimeToStr(Now()) + ': ';
  WriteLn(aHeader, aLog);
end;

procedure TJanuaConsoleLogOutput.OutputLog(aProcName, aLogMessage: string; aObject: TObject);
begin
  try
    if Assigned(aObject) then
      OutputLog(aObject.ClassName + '.' + aProcName + ': ' + aLogMessage);
  except
    on e: exception do
      // do nothing
  end;
end;

{ TJanuaMockLogOutput }

procedure TJanuaMockLogOutput.OutputLog(const aLog: string);
begin

end;

procedure TJanuaMockLogOutput.OutputLog(aProcName, aLogMessage: string; aObject: TObject);
begin

end;

end.
