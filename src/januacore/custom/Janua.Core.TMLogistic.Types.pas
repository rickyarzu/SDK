unit Janua.Core.TMLogistic.Types;

interface

uses Janua.Core.Types;

type
  TTMSQLServerDB = (sdbMagazzino, sdbPratiche);

type
  TJanuaPageRecord = record
  private
    FName: string;
    FOriginTable: string;
    FDestTable: string;
    FKeyFields: TKeyFields;
    FdbName: TTMSQLServerDB;
    procedure SetDestTable(const Value: string);
    procedure SetName(const Value: string);
    procedure SetOriginTable(const Value: string);
    procedure SetKeyFields(const Value: TKeyFields);
    procedure SetdbName(const Value: TTMSQLServerDB);
  public
    constructor Create(aName, aOrigin, aDestination: string; aKeyFields: TKeyFields;
      aServerDB: TTMSQLServerDB = sdbMagazzino);
  public
    property Name: string read FName write SetName;
    property OriginTable: string read FOriginTable write SetOriginTable;
    property DestTable: string read FDestTable write SetDestTable;
    property KeyFields: TKeyFields read FKeyFields write SetKeyFields;
    property dbName: TTMSQLServerDB read FdbName write SetdbName;
  end;

implementation

{ TJanuaPageRecord }

constructor TJanuaPageRecord.Create(aName, aOrigin, aDestination: string; aKeyFields: TKeyFields;
  aServerDB: TTMSQLServerDB = sdbMagazzino);
begin
  self.FName := aName;
  self.FOriginTable := aOrigin;
  self.FDestTable := aDestination;
  self.FKeyFields := aKeyFields;
  self.FdbName := aServerDB;
end;

procedure TJanuaPageRecord.SetdbName(const Value: TTMSQLServerDB);
begin
  FdbName := Value;
end;

procedure TJanuaPageRecord.SetDestTable(const Value: string);
begin
  FDestTable := Value;
end;

procedure TJanuaPageRecord.SetKeyFields(const Value: TKeyFields);
begin
  FKeyFields := Value;
end;

procedure TJanuaPageRecord.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TJanuaPageRecord.SetOriginTable(const Value: string);
begin
  FOriginTable := Value;
end;


end.
