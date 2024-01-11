unit udmJanuaCoreDBConnection;

interface

uses
  System.SysUtils, System.Classes,
  // Janua Core
  Janua.Core.Classes, Janua.Core.DB.Intf, Janua.Core.DataModule;

type
  TdmJanuaCoreDBConnections = class(TJanuaCoreDataModule, IDmJanuaCoreDBConnections)
  private
    FLastErrorMessage: string;
  protected
    procedure SetLastErrorMessage(const Value: string);
    function GetLastErrorMessage: string;
    { Private declarations }
  public
    { Public declarations }
    function TestConnection: boolean; virtual;
  end;

var
  dmJanuaCoreDBConnections: TdmJanuaCoreDBConnections;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmJanuaCoreDBConnections }

function TdmJanuaCoreDBConnections.GetLastErrorMessage: string;
begin

end;

procedure TdmJanuaCoreDBConnections.SetLastErrorMessage(const Value: string);
begin
  FLastErrorMessage := Value;
end;

function TdmJanuaCoreDBConnections.TestConnection: boolean;
begin
  Result := False;
end;

end.
