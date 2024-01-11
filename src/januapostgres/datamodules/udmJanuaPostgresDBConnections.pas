unit udmJanuaPostgresDBConnections;

interface

uses
  System.SysUtils, System.Classes, udmJanuaCoreDBConnection;

type
  TdmJanuaPostgresDBConnections = class(TdmJanuaCoreDBConnections)
  private
    { Private declarations }
  public
    { Public declarations }
    function TestConnection: boolean; override;
  end;

var
  dmJanuaPostgresDBConnections: TdmJanuaPostgresDBConnections;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TdmJanuaPostgresDBConnections }

function TdmJanuaPostgresDBConnections.TestConnection: boolean;
begin

end;

end.
