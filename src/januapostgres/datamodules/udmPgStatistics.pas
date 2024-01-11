unit udmPgStatistics;

interface

uses
  System.SysUtils, System.Classes,
  // Januaproject
  udmJanuaPostgresModel, Janua.Core.Statistics,
  // Devart Postgres
  Data.DB, PgAccess, MemDS, DBAccess;

type
  TdmPgStatistics = class(TdmJanuaPostgresModel)
    qryTemp: TPgQuery;
    qryQueriesSchemas: TPgQuery;
    qryQueriesGroups: TPgQuery;
    qryQueries: TPgQuery;
    dsQueriesSchemas: TDataSource;
    dsQueriesGroups: TDataSource;
  private
    { Private declarations }
    FActiveQuery: TStatQuery;
    procedure SetActiveQuery(const Value: TStatQuery);
  public
    { Public declarations }
    function TestQuery(aQuery: TStatQuery): Boolean;
    function OpenQuery(aQuery: TStatQuery): TStatQuery;
  public
    property ActiveQuery: TStatQuery read FActiveQuery write SetActiveQuery;
  end;

var
  dmPgStatistics: TdmPgStatistics;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmJanuaPostgresModel3 }

function TdmPgStatistics.OpenQuery(aQuery: TStatQuery): TStatQuery;
var
  i: integer;
  delParams: array of TStatParam;
  aParam: PgAccess.TPgParam;
begin
  FActiveQuery := aQuery;
  self.qryTemp.SQL.Text := aQuery.SQL;
  self.qryTemp.Prepare;
  SetLength(delParams, 0);

  for i := Low(FActiveQuery.params) to High(FActiveQuery.params) do
  begin
    aParam := qryTemp.params.FindParam(FActiveQuery.params[i].Name);
    if not Assigned(aParam) then
    begin
      SetLength(delParams, Length(delParams) + 1);
      delParams[Length(delParams) - 1] := FActiveQuery.params[i];
    end
    else
    begin
      aParam.Value := FActiveQuery.params[i].Value;
    end;
  end;

  for i := Low(delParams) to High(delParams) do
    FActiveQuery.Del(delParams[i].ID);

  if qryTemp.ParamCount > FActiveQuery.Count then
  begin
    for i := 0 to qryTemp.ParamCount - 1 do
      if not FActiveQuery.Find(qryTemp.params[i].Name) then
        FActiveQuery.Add(qryTemp.params[i].Name);
  end;

end;

procedure TdmPgStatistics.SetActiveQuery(const Value: TStatQuery);
begin
  FActiveQuery := Value;
end;

function TdmPgStatistics.TestQuery(aQuery: TStatQuery): Boolean;
begin
  try
    self.OpenQuery(aQuery);
    Result := True;
  except
    on e: exception do
    begin
      self.LastErrorMessage := e.Message;
      self.Haserrors := True;
      Result := False;
    end;
  end;
end;

end.
