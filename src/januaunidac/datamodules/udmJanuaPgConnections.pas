unit udmJanuaPgConnections;

interface

uses
  System.SysUtils, System.Classes,  DASQLMonitor,  Data.DB, DBAccess, Uni,
  UniSQLMonitor, udmJanuaCoreDBConnection;

type
  TdmJanuaPgConnections = class(TdmJanuaCoreDBConnections)
    PgErgoConnection: TJanuaUniConnection;
    PgSQLMonitor1: TUniSQLMonitor;
  private
    { Private declarations }
  public
    { Public declarations }
    function TestConnection: boolean; override;
  end;

var
  dmJanuaPgConnections: TdmJanuaPgConnections;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmJanuaPgConnections }

function TdmJanuaPgConnections.TestConnection: boolean;
begin
  try
    PgErgoConnection.Connect;
    Result := True;
  Except
    on e: exception do
    begin
      RaiseException('TestConnection', e, self);
      Result := False;
    end;
  end;
end;

end.
