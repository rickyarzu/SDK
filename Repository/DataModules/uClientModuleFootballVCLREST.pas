unit uClientModuleFootballVCLREST;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.REST.Football, Datasnap.DSClientRest, Janua.Core.RESTClient.Football,
  Janua.Core.Classes, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  Janua.Core.System;

type
  TClientModuleFootballVCLREST = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
    JanuaCoreOS1: TJanuaCoreOS;
    JanuaCoreLogger1: TJanuaCoreLogger;
  private
    FInstanceOwner: Boolean;
    FServerMethodsSportmediaClient: TServerMethodsSportmediaClient;
    FJanuaRESTFootballClient: TJanuaRESTFootballClient;
    FConnected: Boolean;
    FActive: Boolean;
    function GetServerMethodsSportmediaClient: TServerMethodsSportmediaClient;
    function GetJanuaRESTFootballClient: TJanuaRESTFootballClient;
    {
    }
    procedure SetJanuaRESTFootballClient(const Value: TJanuaRESTFootballClient);
    procedure SetActive(const Value: Boolean);
    procedure SetConnected(const Value: Boolean);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property ServerMethodsSportmediaClient: TServerMethodsSportmediaClient read GetServerMethodsSportmediaClient
      write FServerMethodsSportmediaClient;
    // questa è la classe Definita nelle funzioni 'core'.
    property JanuaRESTFootballClient: TJanuaRESTFootballClient read GetJanuaRESTFootballClient
      write FJanuaRESTFootballClient;
  public
    function Activate: Boolean;
    property Active: Boolean read FActive write SetActive;
    property Connected: Boolean read FConnected write SetConnected;
  end;

var
  ClientModuleFootballVCLREST: TClientModuleFootballVCLREST;

implementation

{$R *.dfm}

function TClientModuleFootballVCLREST.Activate: Boolean;
begin
  if not Assigned(FJanuaRESTFootballClient) then
    FJanuaRESTFootballClient := TJanuaRESTFootballClient.Create(self.ServerMethodsSportmediaClient);
  // self.FJanuaRESTFootballClient.JanuaCoreOS := self.JanuaCoreOS1;

  try
    self.Connected := True;
    Result := self.FJanuaRESTFootballClient.Activate;
  except
    on e: exception do
    begin
      TJanuaCoreOS.PublicWriteError(self, 'TClientModuleFootballVCLREST.Activate',
        'FJanuaRESTFootballClient.Activate', e);
      Result := False;
    end;

  end;

  self.FActive := Result;
end;

constructor TClientModuleFootballVCLREST.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TClientModuleFootballVCLREST.Destroy;
begin
  FServerMethodsSportmediaClient.Free;;
  inherited;
end;

function TClientModuleFootballVCLREST.GetJanuaRESTFootballClient: TJanuaRESTFootballClient;
begin
  if not Assigned(FJanuaRESTFootballClient) then
  begin
    FJanuaRESTFootballClient := TJanuaRESTFootballClient.Create(self.FServerMethodsSportmediaClient);
  end;
  Result := FJanuaRESTFootballClient;
end;

function TClientModuleFootballVCLREST.GetServerMethodsSportmediaClient: TServerMethodsSportmediaClient;
begin
  if FServerMethodsSportmediaClient = nil then
    FServerMethodsSportmediaClient := TServerMethodsSportmediaClient.Create(DSRestConnection1, FInstanceOwner);
  Result := FServerMethodsSportmediaClient;
end;

procedure TClientModuleFootballVCLREST.SetActive(const Value: Boolean);
begin
  FActive := Value;
end;

procedure TClientModuleFootballVCLREST.SetConnected(const Value: Boolean);
begin
  FConnected := Value;
end;

procedure TClientModuleFootballVCLREST.SetJanuaRESTFootballClient(const Value: TJanuaRESTFootballClient);
begin
  FJanuaRESTFootballClient := Value;
end;

end.
