unit uClientModuleDico33DBX;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.DBX.Health, Data.DbxDatasnap, Data.DBXCommon, Data.DbxHTTPLayer,
  Data.DB, Data.SqlExpr, Datasnap.DBClient, Data.FMTBcd;

type
  TClientModuleDico33DBX = class(TDataModule)
    SQLConnection1: TSQLConnection;
  private
    FInstanceOwner: Boolean;
    FServerMethods1Client: TDico33MethodsClient;
    function GetServerMethods1Client: TDico33MethodsClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property ServerMethods1Client: TDico33MethodsClient read GetServerMethods1Client
      write FServerMethods1Client;

  end;

var
  ClientModuleDico33DBX: TClientModuleDico33DBX;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

constructor TClientModuleDico33DBX.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TClientModuleDico33DBX.Destroy;
begin
  FServerMethods1Client.Free;
  inherited;
end;

function TClientModuleDico33DBX.GetServerMethods1Client: TDico33MethodsClient;
begin
  if FServerMethods1Client = nil then
  begin
    SQLConnection1.Open;
    FServerMethods1Client := TDico33MethodsClient.Create(SQLConnection1.DBXConnection, FInstanceOwner);
  end;
  Result := FServerMethods1Client;
end;

end.
