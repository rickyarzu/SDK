unit uClientModuleHealthDBX;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.DBX.Health, Data.DbxDatasnap, Data.DBXCommon, Data.DbxHTTPLayer,
  Data.DB, Data.SqlExpr, Datasnap.DBClient, Data.FMTBcd, Janua.Core.Health,
  System.JSON;

type
  TJanuaDBXHealthClient = class(TJanuaCustomHealthClient)
    FHealthMethodsClient: THealthMethodsClient;
  public
    function EchoString(Value: string): string; override;
    function ReverseString(Value: string): string; override;
    function SearchServices(const aSessionKey: string; const aSearch: string): TJsonObject; override;
    function StartPublicSession(const aAppName: string): TJsonObject; override;
    constructor Create(aHealthMethodsClient: THealthMethodsClient); overload;
  end;

type
  TClientModuleHealthDBX = class(TDataModule)
    SQLConnection1: TSQLConnection;
  private
    FInstanceOwner: Boolean;
    FServerMethods1Client: THealthMethodsClient;
    FJanuaDBXHealthClient: TJanuaDBXHealthClient;
    function GetServerMethods1Client: THealthMethodsClient;
    function GetTJanuaDBXHealthClient: TJanuaDBXHealthClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property ServerMethods1Client: THealthMethodsClient read GetServerMethods1Client
      write FServerMethods1Client;
    property JanuaDBXHealthClient: TJanuaDBXHealthClient read GetTJanuaDBXHealthClient
      write FJanuaDBXHealthClient;
  end;

var
  ClientModuleHealthDBX: TClientModuleHealthDBX;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

constructor TClientModuleHealthDBX.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TClientModuleHealthDBX.Destroy;
begin
  FServerMethods1Client.Free;
  inherited;
end;

function TClientModuleHealthDBX.GetServerMethods1Client: THealthMethodsClient;
begin
  if FServerMethods1Client = nil then
  begin
    SQLConnection1.Open;
    FServerMethods1Client := THealthMethodsClient.Create(SQLConnection1.DBXConnection, FInstanceOwner);
  end;
  Result := FServerMethods1Client;
end;

function TClientModuleHealthDBX.GetTJanuaDBXHealthClient: TJanuaDBXHealthClient;
begin
  if not Assigned(FJanuaDBXHealthClient) then
    FJanuaDBXHealthClient := TJanuaDBXHealthClient.Create(self.ServerMethods1Client);
  Result := FJanuaDBXHealthClient;
end;

{ TJanuaDBXHealthClient }

constructor TJanuaDBXHealthClient.Create(aHealthMethodsClient: THealthMethodsClient);
begin
  self.FHealthMethodsClient := aHealthMethodsClient;
end;


function TJanuaDBXHealthClient.EchoString(Value: string): string;
begin

end;

function TJanuaDBXHealthClient.ReverseString(Value: string): string;
begin

end;

function TJanuaDBXHealthClient.SearchServices(const aSessionKey, aSearch: string): TJsonObject;
begin

end;

function TJanuaDBXHealthClient.StartPublicSession(const aAppName: string): TJsonObject;
begin

end;

end.
