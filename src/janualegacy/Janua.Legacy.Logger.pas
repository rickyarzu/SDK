unit Janua.Legacy.Logger;

interface

uses
  System.SysUtils, System.Classes;

type
  TJanuaLogType = (jltLog, jltError);

type
  TJanuaLogger = class(TComponent)
  private
    FComponent: TComponent;
    FFileName: TFileName;
    FLogType: TJanuaLogType;
    FE: Exception;
    FText: string;
    FProcedureName: string;
    FFileDir: string;
    FAutoFileName: boolean;
    FLogMessage: string;
    FShowMessage: boolean;
    procedure SetComponent(const Value: TComponent);
    procedure SetE(const Value: Exception);
    procedure SetFileName(const Value: TFileName);
    procedure SetLogType(const Value: TJanuaLogType);
    procedure SetProcedureName(const Value: string);
    procedure WriteFile;
    procedure SetFileDir(const Value: string);
    procedure SetAutoFileName(const Value: boolean);
    procedure SetLogMessage(const Value: string);
    procedure SetShowMessage(const Value: boolean);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Execute;
    constructor Create(AOwner: TComponent); override;
    property LogMessage: string read FLogMessage write SetLogMessage;
  published
    { Published declarations }
    property Component: TComponent read FComponent write SetComponent;
    property LogType: TJanuaLogType read FLogType write SetLogType;
    property E: Exception read FE write SetE;
    property FileName: TFileName read FFileName write SetFileName;
    property ProcedureName: string read FProcedureName write SetProcedureName;
    property FileDir: string read FFileDir write SetFileDir;
    property AutoFileName: boolean read FAutoFileName write SetAutoFileName;
    property ShowMessage: boolean read FShowMessage write SetShowMessage;

  end;

implementation

uses Janua.Core.Functions;

{ TJanuaLogger }

constructor TJanuaLogger.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FAutoFileName := True;
  FComponent := AOwner;
  FLogType := jltError;
  FFileName := 'JanuaError.log';
  self.FShowMessage := True;
end;

procedure TJanuaLogger.Execute;
begin
  if FLogType = jltError then
  begin
    FText := '**************' + datetimetostr(Now()) + slinebreak + FComponent.Name + slinebreak +
      FProcedureName + slinebreak + FE.Message + slinebreak + FLogMessage + slinebreak;
    if FShowMessage then
      JShowMessage('Errore di Programma ' + FComponent.Name + ' ' + FProcedureName, FE.Message, '');

  end
  else
  begin
    FText := '**************' + datetimetostr(Now()) + slinebreak + FComponent.Name + slinebreak +
      FProcedureName + slinebreak + FLogMessage + slinebreak;
  end;
  WriteFile;
end;

procedure TJanuaLogger.SetAutoFileName(const Value: boolean);
begin
  FAutoFileName := Value;
end;

procedure TJanuaLogger.SetComponent(const Value: TComponent);
begin
  FComponent := Value;
end;

procedure TJanuaLogger.SetE(const Value: Exception);
begin
  FE := Value;
end;

procedure TJanuaLogger.SetFileDir(const Value: string);
begin
  FFileDir := Value;
end;

procedure TJanuaLogger.SetFileName(const Value: TFileName);
begin
  FFileName := Value;
end;

procedure TJanuaLogger.SetLogMessage(const Value: string);
begin
  FLogMessage := Value;
end;

procedure TJanuaLogger.SetLogType(const Value: TJanuaLogType);
begin
  FLogType := Value;
  if AutoFileName then
  begin
    case FLogType of
      jltError:
        FFileName := 'JanuaError.log';
      jltLog:
        FFileName := 'JanuaLog.log';
    end;
  end;

end;

procedure TJanuaLogger.SetProcedureName(const Value: string);
begin
  FProcedureName := Value;
end;

procedure TJanuaLogger.SetShowMessage(const Value: boolean);
begin
  FShowMessage := Value;
end;

procedure TJanuaLogger.WriteFile;
var
  ErrFile: TextFile;
begin
  // ***************************************************************************
  // ******* Procedura di scrittura dello unit.testing *************************
  // ***************************************************************************
  if DirectoryExists(FFileDir) then
  begin
    Assignfile(ErrFile, FFileDir + '\' + FFileName);
    try
      If FileExists(FFileDir + '\' + FFileName) then
        Append(ErrFile)
      else
        Rewrite(ErrFile);
      WriteLn(ErrFile, FText);
      CloseFile(ErrFile);
    Except
      on E: Exception do
      begin
        JShowMessage('Errore Scrittura file log', 'Non è possibile scrivere nella cartella  ' + FFileDir, '');
      end;
    end;
  end;
end;

end.
