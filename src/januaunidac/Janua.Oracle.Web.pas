unit Janua.Oracle.Web;

interface

uses System.SysUtils, System.Classes, Janua.Core.Http, udmJanuaOraWebLog, Janua.Core.Classes;

type
  TJanuaOraServerLogs = class(TJanuaCustomServerLogs)
  private
    FdmJanuaOraWebLog: TdmJanuaOraWebLog;
  strict protected
    procedure InternalDeactivate; override;
  protected
    procedure CreateDataModule; override;
    procedure DestroyDataModule(Force: boolean = false); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property dmJanuaOraWebLog: TdmJanuaOraWebLog read FdmJanuaOraWebLog;
  end;

implementation

constructor TJanuaOraServerLogs.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TJanuaOraServerLogs.CreateDataModule;
begin
  if not Assigned(FdmJanuaOraWebLog) then
    FdmJanuaOraWebLog := TdmJanuaOraWebLog.Create(Self);
end;

procedure TJanuaOraServerLogs.InternalDeactivate;
begin
  DestroyDataModule(True);
  inherited;
end;

destructor TJanuaOraServerLogs.Destroy;
begin
  DestroyDataModule(True);
  inherited;
end;

procedure TJanuaOraServerLogs.DestroyDataModule(Force: boolean = false);
begin
  { TODO:
    if ((not FKeepAlive) or Force) and Assigned(FdmJanuaOraWebLog) then
    try
    FreeAndNil(FdmJanuaOraWebLog)
    except
    on e: exception do
    self.WriteError('TJanuaOraServerLogs.DestroyDataModule', e);
    end;
  }
end;

{ TODO:
  function TJanuaOraServerLogs.SaveWebProfile(aProfile: TJanuaRecordWebProfile): int64;
  begin
  try
  try
  CreateDataModule;
  Result := FdmJanuaOraWebLog.recordlog(aProfile);
  except
  on e: exception do
  self.WriteError('TJanuaOraServerLogs.SaveWebProfile', e);

  end;
  finally
  DestroyDataModule;
  end;

  end;
}

end.
