unit uClientModuleHealthREST;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.REST.Health, Datasnap.DSClientRest;

type
  TClientModuleHealthREST = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
  private
    FInstanceOwner: Boolean;
    FHealthMethodsClient: THealthMethodsClient;
    function GetServerMethods1Client: THealthMethodsClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property HealthMethodsClient: THealthMethodsClient read GetServerMethods1Client
      write FHealthMethodsClient;

  end;

var
  ClientModuleHealthREST: TClientModuleHealthREST;

implementation

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

end.
