//
// Created by the DataSnap proxy generator.
// 01/05/2017 17:30:17
//

unit Janua.Core.DBX.Health;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  THealthMethodsClient = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FSearchServicesCommand: TDBXCommand;
    FStartPublicSessionCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function SearchServices(aSessionKey: string; aSearch: string): TJSONObject;
    function StartPublicSession(aAppName: string): TJSONObject;
  end;

implementation

function THealthMethodsClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'THealthMethods.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function THealthMethodsClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'THealthMethods.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function THealthMethodsClient.SearchServices(aSessionKey: string; aSearch: string): TJSONObject;
begin
  if FSearchServicesCommand = nil then
  begin
    FSearchServicesCommand := FDBXConnection.CreateCommand;
    FSearchServicesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSearchServicesCommand.Text := 'THealthMethods.SearchServices';
    FSearchServicesCommand.Prepare;
  end;
  FSearchServicesCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FSearchServicesCommand.Parameters[1].Value.SetWideString(aSearch);
  FSearchServicesCommand.ExecuteUpdate;
  Result := TJSONObject(FSearchServicesCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function THealthMethodsClient.StartPublicSession(aAppName: string): TJSONObject;
begin
  if FStartPublicSessionCommand = nil then
  begin
    FStartPublicSessionCommand := FDBXConnection.CreateCommand;
    FStartPublicSessionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStartPublicSessionCommand.Text := 'THealthMethods.StartPublicSession';
    FStartPublicSessionCommand.Prepare;
  end;
  FStartPublicSessionCommand.Parameters[0].Value.SetWideString(aAppName);
  FStartPublicSessionCommand.ExecuteUpdate;
  Result := TJSONObject(FStartPublicSessionCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;


constructor THealthMethodsClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor THealthMethodsClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor THealthMethodsClient.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FSearchServicesCommand.DisposeOf;
  FStartPublicSessionCommand.DisposeOf;
  inherited;
end;

end.

