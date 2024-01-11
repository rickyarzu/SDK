unit JanuaOracleSystem;

interface

uses
  SysUtils, Classes, JanuaSystem;

type
  TJanuaOracleSystem = class(TComponent)
  private
    FServerList: TStringList;
    FNet: boolean;
    FPooling: boolean;
    procedure SetServerList(const Value: TStringList);
    procedure SetNet(const Value: boolean);
    procedure SetPooling(const Value: boolean);
    { Private declarations }

  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent) ; override;
    procedure Refresh; 
  published
    { Published declarations }
    property ServerList: TStringList read FServerList write SetServerList;
    property Net: boolean read FNet write SetNet;
    property Pooling: boolean read FPooling write SetPooling;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('JanuaOracle', [TJanuaOracleSystem]);
end;

{ TJanuaOracleSystem }

constructor TJanuaOracleSystem.Create(AOwner: TComponent);
begin
  FServerList := TStringList.Create; 
  Refresh;
  inherited Create(AOwner);
end;

procedure TJanuaOracleSystem.Refresh;
var
  js: TJanuaSystem;
begin
  js := TJanuaSystem.Create(nil);
  try
    FServerList.Text := js.ReadStringRegistry( 'ORACLE', 'SERVERLIST', false,  '127.0.0.1:XE' );
    FNet := js.ReadStringRegistry('ORACLE', 'NET', false,  'Y' ) = 'Y';
    FPooling := js.ReadStringRegistry('ORACLE', 'Pooling', false, 'Y' ) = 'Y';
  finally
    FreeAndNil(js);
  end;
end;

procedure TJanuaOracleSystem.SetNet(const Value: boolean);
var
  js: TJanuaSystem;
begin
  js := TJanuaSystem.Create(nil);
  try
    if Value then js.WriteRegistryString('ORACLE', 'NET', false,  'Y' )
        else  js.WriteRegistryString('ORACLE', 'NET', false,  'N' )
  finally
    FreeAndNil(js);
  end;

  FNet := Value;

end;

procedure TJanuaOracleSystem.SetPooling(const Value: boolean);
var
  js: TJanuaSystem;
begin
  js := TJanuaSystem.Create(nil);
  try
    if Value then js.WriteRegistryString('ORACLE', 'Pooling', false,  'Y' )
        else  js.WriteRegistryString('ORACLE', 'Pooling', false,  'N' )
  finally
    FreeAndNil(js);
  end;
  FPooling := Value;
end;

procedure TJanuaOracleSystem.SetServerList(const Value: TStringList);
var
  js: TJanuaSystem;
begin
  js := TJanuaSystem.Create(nil);
  try
    js.WriteRegistryString( 'ORACLE', 'SERVERLIST', false,  Value.Text );
  finally
    FreeAndNil(js);
  end;
  FServerList.Text := Value.Text;
end;

end.
