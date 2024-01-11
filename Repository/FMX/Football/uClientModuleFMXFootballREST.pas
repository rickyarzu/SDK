unit uClientModuleFMXFootballREST;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.REST.Football, Datasnap.DSClientRest;

type
  TClientModuleFMXFootballREST = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
  private
    FInstanceOwner: Boolean;
    FServerMethodsSportmediaClient: TServerMethodsSportmediaClient;
    function GetServerMethodsSportmediaClient: TServerMethodsSportmediaClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property ServerMethodsSportmediaClient: TServerMethodsSportmediaClient read GetServerMethodsSportmediaClient
      write FServerMethodsSportmediaClient;

  end;

var
  ClientModuleFMXFootballREST: TClientModuleFMXFootballREST;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

constructor TClientModuleFMXFootballREST.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TClientModuleFMXFootballREST.Destroy;
begin
  FServerMethodsSportmediaClient.Free;
  inherited;
end;

function TClientModuleFMXFootballREST.GetServerMethodsSportmediaClient: TServerMethodsSportmediaClient;
begin
  if FServerMethodsSportmediaClient = nil then
    FServerMethodsSportmediaClient := TServerMethodsSportmediaClient.Create(DSRestConnection1, FInstanceOwner);
  Result := FServerMethodsSportmediaClient;
end;

end.
