unit Janua.Oracle.SessionSource;

interface

uses
  System.SysUtils, System.Classes, System.Variants, MemDS, Ora, OraSmart, Janua.Core.DB;

type
  TJanuaSessionSource = class(TJanuaCustomSessionSource)
  private
    FOrasession: TOraSession;
    procedure SetOrasession(const Value: TOraSession);
    function GetDateTime(Time: boolean): TDAteTime;
    { Private declarations }
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: boolean; override;
  public
    { Public declarations }
    function GetDate: TDAteTime; override;
    function GetTime: TDAteTime; override;
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Orasession: TOraSession read FOrasession write SetOrasession;
    property Date: TDAteTime read GetDate;
    property Now: TDAteTime read GetTime;
  end;

implementation

{ TJanuaSessionSource }

function TJanuaSessionSource.GetDateTime(Time: boolean): TDAteTime;
var
  FTimeQuery: TOraQuery;
begin
  FTimeQuery := TOraQuery.Create(self);
  try
    FTimeQuery.Session := FOrasession;
    if Time then
      FTimeQuery.SQL.Text := 'select sysdate as Today from dual'
    else
      FTimeQuery.SQL.Text := 'select trunc(sysdate) as Today from dual';

    FTimeQuery.Open;
    Result := FTimeQuery.FieldByName('Today').AsDateTime;
  finally
    FTimeQuery.Free;
  end;
end;

constructor TJanuaSessionSource.Create(AOwner: TComponent);
var
  i: integer;
begin
  inherited;
  for i := 0 to Owner.ComponentCount - 1 do
  begin
    if Owner.Components[i] is TOraSession then
      SetOrasession(Owner.Components[i] as TOraSession);
  end;
end;

function TJanuaSessionSource.GetDate: TDAteTime;
begin
  Result := inherited;
  if assigned(FOrasession) then
    if FOrasession.Connected then
      Result := GetDateTime(False);
end;

function TJanuaSessionSource.GetTime: TDAteTime;
begin
  Result := inherited;
  if assigned(FOrasession) then
    if FOrasession.Connected then
      Result := GetDateTime(True);
end;

function TJanuaSessionSource.InternalActivate: boolean;
begin
  Result := inherited;
end;

procedure TJanuaSessionSource.SetOrasession(const Value: TOraSession);
var
  i: integer;
begin
  FOrasession := Value;
  if assigned(FOrasession) and (Owner is TDataModule) then
    for i := 0 to Owner.ComponentCount - 1 do
    begin
      if Owner.Components[i] is TOraStoredProc then
        TOraStoredProc(Owner.Components[i]).Session := FOrasession;
      if Owner.Components[i] is TOraQuery then
        TOraQuery(Owner.Components[i]).Session := FOrasession;
      if Owner.Components[i] is TOraTable then
        TOraStoredProc(Owner.Components[i]).Session := FOrasession;
    end;
  if FActive then
  begin
    GetDate;
    GetTime;
  end;
end;

end.
