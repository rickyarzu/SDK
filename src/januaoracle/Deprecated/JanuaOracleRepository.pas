unit JanuaOracleRepository;

interface

uses
  SysUtils, Classes, JanuaSessionSource;

type
  TJanuaOracleRepository = class(TComponent)
  private
    FSqlText: widestring;
    FSessionSource: TJanuaSessionSource;
    procedure SetSqlText(const Value: widestring);
    procedure SetSessionSource(const Value: TJanuaSessionSource);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure UpdateDB;
    procedure InsertSQL(sqltext: widestring); 
  published
    { Published declarations }
    property SqlText: widestring read FSqlText write SetSqlText;
    property SessionSource: TJanuaSessionSource read FSessionSource write SetSessionSource;
  end;

procedure Register;

implementation

uses udmrepository;

procedure Register;
begin
  RegisterComponents('JanuaOracle', [TJanuaOracleRepository]);
end;

{ TJanuaOracleRepository }

procedure TJanuaOracleRepository.InsertSQL(sqltext: widestring);
var
  rep: TdmRepository;
begin
  try
     rep := TdmRepository.Create(nil);
     rep.OraSession := FSessionSource.Orasession;
     rep.RegisterSQLRepository(sqltext);
  finally
    FreeAndNil(rep);
  end;
end;

procedure TJanuaOracleRepository.SetSessionSource(
  const Value: TJanuaSessionSource);
begin
  FSessionSource := Value;
end;

procedure TJanuaOracleRepository.SetSqlText(const Value: widestring);
var
  rep: TdmRepository;
begin
  if (FSqlText <> Value) and (Value > '') then begin
    FSqlText := Value;  //
    rep := TdmRepository.Create(nil);
    try
      rep.OraSession := FSessionSource.Orasession;
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
     rep.OraSession := FSessionSource.Orasession;
     rep.UpdateDB; 
  finally
    FreeAndNil(rep);
  end;
end;

end.
