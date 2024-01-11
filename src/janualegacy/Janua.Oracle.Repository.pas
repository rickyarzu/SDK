unit Janua.Oracle.Repository;

interface

uses
  System.SysUtils, System.Classes, Janua.Uni.Intf;

type
  TJanuaOracleRepository = class(TComponent)
  private
    FSqlText: widestring;
    FSessionSource: IJanuaUniSessionSource;
    procedure SetSqlText(const Value: widestring);
    procedure SetSessionSource(const Value: IJanuaUniSessionSource);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure UpdateDB;
    procedure InsertSQL(sqltext: widestring);
  published
    { Published declarations }
    property sqltext: widestring read FSqlText write SetSqlText;
    property SessionSource: IJanuaUniSessionSource read FSessionSource write SetSessionSource;
  end;

implementation

uses udmrepository;

{ TJanuaOracleRepository }

procedure TJanuaOracleRepository.InsertSQL(sqltext: widestring);
var
  rep: TdmRepository;
begin
  try
    rep := TdmRepository.Create(nil);
    rep.OraSession := FSessionSource.OraSession;
    rep.RegisterSQLRepository(sqltext);
  finally
    FreeAndNil(rep);
  end;
end;

procedure TJanuaOracleRepository.SetSessionSource(const Value: IJanuaUniSessionSource);
begin
  FSessionSource := Value;
end;

procedure TJanuaOracleRepository.SetSqlText(const Value: widestring);
var
  rep: TdmRepository;
begin
  if (FSqlText <> Value) and (Value > '') then
  begin
    FSqlText := Value; //
    rep := TdmRepository.Create(nil);
    try
      rep.OraSession := FSessionSource.OraSession;
      rep.RegisterSQLRepository(FSqlText);
    finally
      FreeAndNil(rep);
    end;
  end;
end;

procedure TJanuaOracleRepository.UpdateDB;
var
  rep: TdmRepository;
begin
  rep := TdmRepository.Create(nil);
  try
    rep.OraSession := FSessionSource.OraSession;
    rep.UpdateDB;
  finally
    FreeAndNil(rep);
  end;
end;

end.
