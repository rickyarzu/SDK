unit JanuaSessionSource;

interface

uses
  SysUtils, Classes, MemDS, Ora, OraSmart;

type
  TJanuaSessionSource = class(TComponent)
  private
    FOrasession: TOraSession;
    FActive: boolean;
    FDate: TDAteTime;
    FDateTime: TDateTime; 
    procedure SetOrasession(const Value: TOraSession);
    function GetDateTime(Time: boolean): TDateTime;
    procedure SetActive (const Value: boolean) ; 
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function GetDate: TDateTime;
    function GetTime: TDateTime;
    constructor Create(AOwner: TComponent);  override;
  published
    { Published declarations }
     property Orasession: TOraSession  read FOrasession write SetOrasession;
     property Date: TDateTime read FDate;
     property Now: TDateTime read FDateTime;
     property Active: boolean read FActive write SetActive;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('JanuaOracle', [TJanuaSessionSource]);
end;

{ TJanuaSessionSource }

function TJanuaSessionSource.GetDateTime(Time: boolean): TDateTime;
var
     FTimeQuery: TOraQuery;
begin
   FTimeQuery := TOraQuery.Create(self);
   try
     FTimeQuery.Session := FOraSession; 
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
  for I := 0 to  Owner.ComponentCount - 1 do
  begin
     if Owner.Components[i] is TOraSession then
                     SetOrasession (Owner.Components[i] as TOraSession);
  end;
end;

function TJanuaSessionSource.GetDate: TDateTime;
begin
  Result := SysUtils.Date; 
  if assigned(FOraSession) then
    if FOraSession.Connected then Result := GetDateTime(False);
  FDate := Result;
end;

function TJanuaSessionSource.GetTime: TDateTime;
begin
  Result := SysUtils.Now;
  if assigned(FOraSession) then
     if FOraSession.Connected then Result := GetDateTime(True);
  FDateTime := Result;
end;

procedure TJanuaSessionSource.SetActive (const Value: boolean) ;
begin
  FACtive := Value;
  if FACtive then
  begin
    GetDate;
    GetTime;
  end;
end;

procedure TJanuaSessionSource.SetOrasession(const Value: TOraSession);
var
  i: integer;
begin
  FOrasession := Value;
  if Assigned (FOrasession) and (Owner is TDataModule) then
  for I := 0 to  Owner.ComponentCount - 1 do
  begin
     if Owner.Components[i] is TOraStoredProc then
                     TOraStoredProc(Owner.Components[i]).Session := FOraSession;
     if Owner.Components[i] is TOraQuery then
                     TOraQuery(Owner.Components[i]).Session := FOraSession;
     if Owner.Components[i] is TOraTable then
                     TOraStoredProc(Owner.Components[i]).Session := FOraSession;
  end;
  if FACtive then
  begin
    GetDate;
    GetTime;
  end;
end;

end.
