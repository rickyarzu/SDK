unit uClientModuleHealthVCLREST;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.REST.Health, Datasnap.DSClientRest, Janua.Core.Health,
  System.JSON, Janua.Core.RESTClient.Health;

type
  TClientModuleHealthREST = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
  private
    FJanuaDBXHealthClient: TJanuaRESTHealthClient;
    FInstanceOwner: Boolean;
    FHealthMethodsClient: THealthMethodsClient;
    function GetServerMethods1Client: THealthMethodsClient;
    function GetTJanuaRESTHealthClient: TJanuaRESTHealthClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property HealthMethodsClient: THealthMethodsClient read GetServerMethods1Client
      write FHealthMethodsClient;
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read GetTJanuaRESTHealthClient
      write FJanuaDBXHealthClient;
  end;

var
  ClientModuleHealthREST: TClientModuleHealthREST;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

constructor TClientModuleHealthREST.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TClientModuleHealthREST.Destroy;
begin
  FHealthMethodsClient.Free;
  inherited;
end;

function TClientModuleHealthREST.GetServerMethods1Client: THealthMethodsClient;
begin
  if FHealthMethodsClient = nil then
    FHealthMethodsClient := THealthMethodsClient.Create(DSRestConnection1, FInstanceOwner);
  Result := FHealthMethodsClient;
end;

function TClientModuleHealthREST.GetTJanuaRESTHealthClient: TJanuaRESTHealthClient;
begin
  if not Assigned(FJanuaDBXHealthClient) then
    FJanuaDBXHealthClient := TJanuaRESTHealthClient.Create(self.HealthMethodsClient);
  Result := FJanuaDBXHealthClient;
end;


end.
