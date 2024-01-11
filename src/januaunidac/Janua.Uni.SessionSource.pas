unit Janua.Uni.SessionSource;

interface

uses
  System.SysUtils, System.Classes, System.Variants, MemDS, Uni, Janua.Core.DB, Janua.Core.Classes,
  Janua.Uni.Intf,  Janua.Unidac.Connection;

type

  TJanuaUniSessionSource = class(TJanuaCustomSessionSource, IJanuaUniSessionSource)
  private
    FUniSession: TJanuaUniConnection;
    FGetDateTime: TGetTimeFunc;
  strict protected
    FDateQuery: TUniQuery;
    FDateTimeQuery: TUniQuery;
    procedure SetGetDateTime(const Value: TGetTimeFunc);
    function InternalActivate: Boolean; // override;
    property GetDateTime: TGetTimeFunc read FGetDateTime write SetGetDateTime;
  public
    { Public declarations }
    function GetDate: TDateTime; override;
    function GetTime: TDateTime; override;
    function GeTJanuaUniConnection: TJanuaUniConnection;
    procedure SeTJanuaUniConnection(const Value: TJanuaUniConnection);
  public
    { Published declarations }
    property Orasession: TJanuaUniConnection read FUniSession write SeTJanuaUniConnection;
    property Date: TDateTime read GetDate;
    property Now: TDateTime read GetTime;
  end;

  TJanuaOraSessionSource = class(TJanuaUniSessionSource, IJanuaOraSessionSource)
  public
    constructor Create; overload;
  end;

  TJanuaPgSessionSource = class(TJanuaUniSessionSource, IJanuaPgSessionSource)
  public
    constructor Create; overload;
  end;

  /// <summary> This is the Component to be Placed on a DataModule and that can use the Session Source
  TJanuaSessionSource = class(TJanuaCoreComponent)
  private
    FUniSession: IJanuaUniSessionSource;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses Janua.Application.Framework;

{ TJanuaUniSessionSource }

function TJanuaUniSessionSource.GetDate: TDateTime;
begin
  Result := inherited;
  if assigned(FUniSession) and assigned(GetDateTime) and FUniSession.Connected then
    Result := GetDateTime(False);
end;

function TJanuaUniSessionSource.GetTime: TDateTime;
begin
  Result := inherited;
  if assigned(FUniSession) and assigned(GetDateTime) and FUniSession.Connected then
    Result := GetDateTime(True);
end;

function TJanuaUniSessionSource.GeTJanuaUniConnection: TJanuaUniConnection;
begin
  Result := FUniSession;
end;

function TJanuaUniSessionSource.InternalActivate: Boolean;
begin
  Result := True;
end;

procedure TJanuaUniSessionSource.SetGetDateTime(const Value: TGetTimeFunc);
begin
  FGetDateTime := Value;
end;

procedure TJanuaUniSessionSource.SeTJanuaUniConnection(const Value: TJanuaUniConnection);
begin
  if assigned(Value) then
  begin
    FUniSession := Value;
    GetDate;
    GetTime;
  end;
end;

{ TJanuaOraSessionSource }

constructor TJanuaOraSessionSource.Create;
begin
  // TGetTimeFunc = reference to function (const aBoolean: boolean): TDateTime;
  SetGetDateTime(
    function(const aTime: Boolean): TDateTime
    begin
      if assigned(FUniSession) then
      begin
        if aTime then
        begin
          if not assigned(FDateTimeQuery) then
          begin
            FDateTimeQuery := TUniQuery.Create(nil);
            FDateTimeQuery.Connection := FUniSession;
            FDateTimeQuery.SQL.Text := 'select sysdate as Today from dual'
          end;
          FDateTimeQuery.Open;
          Result := FDateTimeQuery.FieldByName('Today').AsDateTime;
        end
        else
        begin
          if not assigned(FDateQuery) then
          begin
            FDateQuery := TUniQuery.Create(nil);
            FDateQuery.Connection := FUniSession;
            FDateQuery.SQL.Text := 'select trunc(sysdate) as Today from dual';
          end;
          FDateQuery.Open;
          Result := FDateQuery.FieldByName('Today').AsDateTime;
        end;
      end
      else
      begin
        if aTime then
          Result := Now
        else
          Result := Date;
      end;
    end);
end;

{ TJanuaSessionSource }

constructor TJanuaSessionSource.Create(AOwner: TComponent);
var
  j: integer;
  bTest: Boolean;
  procedure SeTJanuaUniConnection(const Value: TJanuaUniConnection);
  var
    i: integer;
    LPg: IJanuaPgSessionSource;
    LOra: IJanuaOraSessionSource;
  begin
    if assigned(Value) then
    begin
      if (Owner is TDataModule) then
        for i := 0 to Owner.ComponentCount - 1 do
        begin
          if Owner.Components[i] is TUniStoredProc then
            TUniStoredProc(Owner.Components[i]).Connection := Value;
          if Owner.Components[i] is TUniQuery then
            TUniQuery(Owner.Components[i]).Connection := Value;
          if Owner.Components[i] is TUniTable then
            TUniStoredProc(Owner.Components[i]).Connection := Value;
        end;
      if (Value.ProviderName = 'PostgreSQL') and TJanuaApplicationFactory.TryGEtInterface
        (IJanuaPgSessionSource, LPg) then
        if not Supports(LPg, IJanuaUniSessionSource, FUniSession) then
          raise Exception.Create
            (' TJanuaSessionSource.Create not  Supports(Lpg, IJanuaUniSessionSource,  FUniSession)');
    end;
  end;

begin
  bTest := False;
  inherited;
  j := 0;
  While (j < Owner.ComponentCount) and not bTest do
  begin
    bTest := Owner.Components[j] is TJanuaUniConnection;
    if bTest then
      SeTJanuaUniConnection(Owner.Components[j] as TJanuaUniConnection);
    Inc(j);
  end;
end;

{ TJanuaPgSessionSource }

constructor TJanuaPgSessionSource.Create;
begin
  self.SetGetDateTime(
    function(const aTime: Boolean): TDateTime
    begin
      if assigned(FUniSession) then
      begin
        if aTime then
        begin
          if not assigned(FDateTimeQuery) then
          begin
            FDateTimeQuery := TUniQuery.Create(nil);
            FDateTimeQuery.Connection := FUniSession;
            FDateTimeQuery.SQL.Text := 'select sysdate as Today from dual'
          end;
          FDateTimeQuery.Open;
          Result := FDateTimeQuery.FieldByName('Today').AsDateTime;
        end
        else
        begin
          if not assigned(FDateQuery) then
          begin
            FDateQuery := TUniQuery.Create(nil);
            FDateQuery.Connection := FUniSession;
            FDateQuery.SQL.Text := 'select trunc(sysdate) as Today from dual';
          end;
          FDateQuery.Open;
          Result := FDateQuery.FieldByName('Today').AsDateTime;
        end;
      end
      else
      begin
        if aTime then
          Result := Now
        else
          Result := Date;
      end;
    end);
end;

end.
