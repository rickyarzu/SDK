// 
// Created by the DataSnap proxy generator.
// 27/10/2013 20:11:01
// 

unit uCloudClientClasses;

interface

uses Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON,
     Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr,
     Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethodsCoreClient = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FLoginCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Login(p_username: string; p_password: string): Int64;
  end;

implementation

function TServerMethodsCoreClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethodsCore.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsCoreClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethodsCore.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsCoreClient.Login(p_username: string; p_password: string): Int64;
begin
  if FLoginCommand = nil then
  begin
    FLoginCommand := FDBXConnection.CreateCommand;
    FLoginCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLoginCommand.Text := 'TServerMethodsCore.Login';
    FLoginCommand.Prepare;
  end;
  FLoginCommand.Parameters[0].Value.SetWideString(p_username);
  FLoginCommand.Parameters[1].Value.SetWideString(p_password);
  FLoginCommand.ExecuteUpdate;
  Result := FLoginCommand.Parameters[2].Value.GetInt64;
end;


constructor TServerMethodsCoreClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethodsCoreClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethodsCoreClient.Destroy;
begin
  FreeAndNil(FEchoStringCommand);
  FreeAndNil(FReverseStringCommand);
  FreeAndNil(FLoginCommand);
  inherited;
end;

end.
