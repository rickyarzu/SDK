unit JanuaUnidacPostgresProvider;

interface

uses PgConnectionPoolUni, PgClassesUni, UniProvider, PgPropsUni, CRConnectionString, PostgreSQLUniProvider;

const
  prJanuaUserName = prMultipleConnections + 1;
  prJanuaUserPwd = prMultipleConnections + 2;
  prJanuaSchemaID = prMultipleConnections + 3;

type

{$IFDEF VER16P}
  [ComponentPlatformsAttribute({$IFDEF STD}pidDevartWinPlatforms{$ELSE}pidDevartAllPlatforms{$ENDIF})]
{$ENDIF}

  TJanuaPgSQLUniProvider = class(TPostgreSQLUniProvider)
  protected
    procedure CreateConnectionOptions; override;
  public
    class function GetConnectionStringClass: TCRConnectionStringBuilderClass; override;
  end;

procedure Register;

implementation

uses System.Classes;

procedure Register;
begin
  RegisterComponents('Janua Unidac', [TJanuaPgSQLUniProvider]);
end;

{ TJanuaPgSQLUniProvider }

procedure TJanuaPgSQLUniProvider.CreateConnectionOptions;
begin
  if not Assigned(FConnectionOptions) then
  begin
    inherited;
    FConnectionOptions.Add(TStringOption.Create('UserEmail', prJanuaUserName,
      [TPgSQLConnection, TPgConnectionParameters], ''));
    FConnectionOptions.Add(TStringOption.Create('JanuaUserPwd', prJanuaUserPwd,
      [TPgSQLConnection, TPgConnectionParameters], ''));
    FConnectionOptions.Add(TIntegerOption.Create('JanuaSchemaID', prJanuaSchemaID,
      [TPgSQLConnection, TPgConnectionParameters], 0));
  end;
end;

class function TJanuaPgSQLUniProvider.GetConnectionStringClass: TCRConnectionStringBuilderClass;
begin
  inherited;
end;

initialization

UniProviders.RegisterProvider(TJanuaPgSQLUniProvider);

finalization

end.
