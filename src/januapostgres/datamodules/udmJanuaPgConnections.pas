unit udmJanuaPgConnections;

interface

uses
  System.SysUtils, System.Classes, udmJanuaCoreDBConnection, DASQLMonitor, PgSQLMonitor, Data.DB, DBAccess, PgAccess;

type
  TdmJanuaPgConnections = class(TdmJanuaCoreDBConnections)
    PgErgoConnection: TPgConnection;
    PgSQLMonitor1: TPgSQLMonitor;
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function TestConnection: boolean; override;
  end;

var
  dmJanuaPgConnections: TdmJanuaPgConnections;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmJanuaPgConnections }

procedure TdmJanuaPgConnections.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  inherited;
end;

function TdmJanuaPgConnections.TestConnection: boolean;
begin
  try
    PgErgoConnection.Connect;
    Result := True;
  Except
    on e: exception do
    begin
      self.FLastErrorMessage := e.Message;
      Result := False;
    end;
  end;
end;

end.
