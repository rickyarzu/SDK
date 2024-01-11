unit JOrm.Football.MatchDetails.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Html.Intf,
  JOrm.Football.Matches.Impl, JOrm.Football.Matches.Intf,
  JOrm.Football.MatchPlayer.Intf,
  JOrm.Football.MatchEventDetail.Intf, JOrm.Football.MatchDetails.Intf;

type

  TMatchDetail = class(TMatch, IJanuaRecord, IMatch, IMatchDetail)
  private
    FEvents: IMatchEventsDetails;
    FHomePlayers: IMatchPlayers;
    FVisitorsPlayers: IMatchPlayers;
  protected
    function GetEvents: IMatchEventsDetails;
    procedure SetEvents(const Value: IMatchEventsDetails);
    function GetHomePlayers: IMatchPlayers;
    procedure SetHomePlayers(const Value: IMatchPlayers);
    function GetVisitorsPlayers: IMatchPlayers;
    procedure SetVisitorsPlayers(const Value: IMatchPlayers);
  public
    constructor Create; override;
  public
    property VisitorsPlayers: IMatchPlayers read GetVisitorsPlayers write SetVisitorsPlayers;
    property HomePlayers: IMatchPlayers read GetHomePlayers write SetHomePlayers;
    property Events: IMatchEventsDetails read GetEvents write SetEvents;
  public
    function GoalHtmlObject: IJanuaHtmlObject;
    function StringPlayers(aHome: boolean; bLongTeam: boolean = False): string;
    function GoalsVisitors(aNewLine: boolean = False): string;
    function GoalsHome(aNewLine: boolean = False): string;
    function GetLogoHtmlObject(aHome: boolean; aSize: Word = 32): IJanuaHtmlImage;
    function GetLogoString(aHome: boolean; aSize: Word = 32): string;
  end;

  TMatchDetails = class(TJanuaRecordSet, IJanuaRecordSet, IMatchDetails)
  protected
    procedure SetMatchDetail(const Value: IMatchDetail);
    function GetMatchDetail: IMatchDetail;
    function GetVisitorsPlayers: IMatchPlayers;
    procedure SetVisitorsPlayers(const Value: IMatchPlayers);
    function GetHomePlayers: IMatchPlayers;
    procedure SetHomePlayers(const Value: IMatchPlayers);
    function GetEvents: IMatchEventsDetails;
    procedure SetEvents(const Value: IMatchEventsDetails);
  public
    constructor Create; override;
  public
    property VisitorsPlayers: IMatchPlayers read GetVisitorsPlayers write SetVisitorsPlayers;
    property HomePlayers: IMatchPlayers read GetHomePlayers write SetHomePlayers;
    property Events: IMatchEventsDetails read GetEvents write SetEvents;
    property MatchDetail: IMatchDetail read GetMatchDetail write SetMatchDetail;
  end;

  TMatchDetailsFactory = class
    class function CreateRecord(const aKey: string): IMatchDetail; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IMatchDetails; overload;
  end;

implementation

uses System.SysUtils, System.StrUtils, System.Math, Janua.Html.Impl, JOrm.Football.MatchPlayer.Impl,
  JOrm.Football.MatchEventDetail.Impl, Janua.Core.Types, Janua.Html.Types, Janua.Orm.Types;

{ TMatchDetail }

constructor TMatchDetail.Create;
begin
  inherited;
  FEvents := TMatchEventDetailFactory.CreateRecordset('matchevents', nil, nil);
  AddRecordSet(FEvents);
  FHomePlayers := TMatchPlayerFactory.CreateRecordset('homeplayers', nil, nil);
  AddRecordSet(FHomePlayers);
  FVisitorsPlayers := TMatchPlayerFactory.CreateRecordset('visitorsplayers', nil, nil);
  AddRecordSet(FVisitorsPlayers);
end;

function TMatchDetail.GetEvents: IMatchEventsDetails;
begin
  Result := self.FEvents
end;

function TMatchDetail.GetHomePlayers: IMatchPlayers;
begin
  Result := self.FHomePlayers
end;

function TMatchDetail.GetLogoHtmlObject(aHome: boolean; aSize: Word): IJanuaHtmlImage;
begin
  Result := TJanuaHtmlImage.Create(JanuaHtmlHelper);
  Result.Alt := HomeTeamName.AsString;
  Result.Src := '/?page=image&file=' + IfThen(aHome, HomeTeamId.AsString, VisitorsTeamId.AsString) + '.jpg';
  Result.AddStyle(THtmlStyle.Width, aSize.ToString + 'px');
  Result.AddStyle(THtmlStyle.Height, aSize.ToString + 'px');
  {
    FHomeTeamLogo.AsString := '<img src="/?page=image&file=' + FHomeTeamId.AsString + '.jpg"  alt="' +
    FHomeTeamName.AsString + '" style="width:32px; height:32px"> ' + FHomeTeamName.AsString;
  }

end;

function TMatchDetail.GetLogoString(aHome: boolean; aSize: Word): string;
begin
  Result := GetLogoHtmlObject(aHome, aSize).AsHtml
end;

function TMatchDetail.GetVisitorsPlayers: IMatchPlayers;
begin
  Result := self.FVisitorsPlayers
end;

function TMatchDetail.GoalHtmlObject: IJanuaHtmlObject;
begin

end;

function TMatchDetail.GoalsHome(aNewLine: boolean): string;
begin
  // function GoalList(aTeamID: Integer; aNewLine: boolean = False): string;
  Result := self.FEvents.GoalList(self.HomeTeamId.AsInteger, aNewLine)
end;

function TMatchDetail.GoalsVisitors(aNewLine: boolean): string;
begin
  // function GoalList(aTeamID: Integer; aNewLine: boolean = False): string;
  Result := self.FEvents.GoalList(self.VisitorsTeamId.AsInteger, aNewLine)
end;

procedure TMatchDetail.SetEvents(const Value: IMatchEventsDetails);
begin
  self.FEvents := Value
end;

procedure TMatchDetail.SetHomePlayers(const Value: IMatchPlayers);
begin
  self.FHomePlayers := Value
end;

procedure TMatchDetail.SetVisitorsPlayers(const Value: IMatchPlayers);
begin
  self.FVisitorsPlayers := Value
end;

function TMatchDetail.StringPlayers(aHome, bLongTeam: boolean): string;
var
  LTeam: IMatchPlayers;
  I, Limit: integer;
  aString: IStringBuilder;
  aTeamName: IJanuaField;
  LSubstitute: IMatchPlayer;
  LTemp: String;
  // funzione che Ricerca un giocatore nell'insieme
  function FindByID(aID: integer): boolean;
  var
    LBookmark: integer;
  begin
    LSubstitute := nil;
    Result := False;
    LBookmark := LTeam.ItemIndex;
    LTeam.First;
    while not LTeam.Eof do
    begin
      if LTeam.MatchPlayer.PlayerId.AsInteger = aID then
      begin
        Result := True;
        LSubstitute := LTeam.MatchPlayer;
        LTeam.GoToBookmark(LBookmark);
        Exit
      end;
      LTeam.Next;
    end;
  end;

  function GoalIcons(const vGol: integer; const aIcon: string): string;
  var
    I: integer;
  begin
    Result := '';
    for I := 1 to vGol do
      Result := Result + '<i class="fas fa-futbol m--font-' + aIcon + '"></i>';
  end;

begin
  if aHome then
  begin
    LTeam := self.HomePlayers;
    aTeamName := HomeTeamName;
  end
  else
  begin
    LTeam := self.VisitorsPlayers;
    aTeamName := VisitorsTeamName;
  end;

  // Inserisco il ome dela squadra selezionata (Home o Visitors):

  aString := TJanuaStringBuilder.Create;
  (*
    aString.Append('<span class="m--font-primary"><strong>');
    aString.Append(self.Name + ': ');
    aString.Append('</strong></span>');
  *)
  // se è calcello la formazione è un array di 10 altrimenti è un array di n dove n è il totale giocatori
  if bLongTeam then
    Limit := Pred(LTeam.RecordCount)
  else
    Limit := min(10, Pred(LTeam.RecordCount));

  LTeam.First;
  for I := 0 to Limit do
  begin
    // il cognome del giocatore .....................................................................................
    aString.Append(IfThen(I = 0, '', ', ') + LTeam.MatchPlayer.LastName.AsString);
    if LTeam.MatchPlayer.Owngoal.AsInteger > 0 then
      aString.Append(GoalIcons(LTeam.MatchPlayer.Owngoal.AsInteger, 'danger'));
    if LTeam.MatchPlayer.SentOff.AsInteger = 1 then
      aString.Append(' ' + '<i class="fas fa-clipboard m--font-danger"></i>');
    if LTeam.MatchPlayer.Goal.AsInteger > 0 then
      aString.Append(GoalIcons(LTeam.MatchPlayer.Goal.AsInteger, 'info'));
    // se ha un sostituto ...........................................................................................
    if LTeam.MatchPlayer.SubstId.AsInteger <> 0 then
    begin
      if FindByID(LTeam.MatchPlayer.SubstId.AsInteger) then
      begin
        aString.Append(' (' + LTeam.MatchPlayer.PlaydUntil.AsString + '° ' + LSubstitute.LastName.AsString);
        if LSubstitute.SubstId.AsInteger > 0 then
        begin
          LTemp := LSubstitute.PlaydUntil.AsString;
          if FindByID(LSubstitute.SubstId.AsInteger) then
          begin
            aString.Append(' (' + LTemp + '° ' + LSubstitute.LastName.AsString);
            aString.Append(') ');
          end
        end;
        aString.Append(') ');
      end;
    end;
    LTeam.Next;
  end;

  if (LTeam.RecordCount > 11) and (not bLongTeam) then
  begin
    aString.Append('<strong> A DISP: </strong>');
    I := 0;
    while not LTeam.Eof do
    begin
      aString.Append(IfThen(I = 0, '', ', ') + LTeam.MatchPlayer.LastName.AsString);
      if LTeam.MatchPlayer.SentOff.AsInteger = 1 then
        aString.Append(' ' + '<i class="fas fa-clipboard m--font-danger"></i>');
      if LTeam.MatchPlayer.Goal.AsInteger > 0 then
        aString.Append(GoalIcons(LTeam.MatchPlayer.Goal.AsInteger, 'info'));
      if LTeam.MatchPlayer.Owngoal.AsInteger > 0 then
        aString.Append(GoalIcons(LTeam.MatchPlayer.Owngoal.AsInteger, 'danger'));
      Inc(I);
      LTeam.Next;
    end;
  end;
  Result := aString.ToString;

end;

{ TMatchDetails }

constructor TMatchDetails.Create;
begin
  inherited;
  self.FRecord := TMatchDetailsFactory.CreateRecord('matchdetail');
  // self.FRecord := FMatchDetail;
end;

function TMatchDetails.GetEvents: IMatchEventsDetails;
begin
  Result := (FRecord as IMatchDetail).Events
end;

function TMatchDetails.GetHomePlayers: IMatchPlayers;
begin
  Result := (FRecord as IMatchDetail).HomePlayers
end;

function TMatchDetails.GetMatchDetail: IMatchDetail;
begin
  Result := (FRecord as IMatchDetail)
end;

function TMatchDetails.GetVisitorsPlayers: IMatchPlayers;
begin
  Result := (FRecord as IMatchDetail).VisitorsPlayers
end;

procedure TMatchDetails.SetEvents(const Value: IMatchEventsDetails);
begin
  (FRecord as IMatchDetail).Events := Value
end;

procedure TMatchDetails.SetHomePlayers(const Value: IMatchPlayers);
begin
  (FRecord as IMatchDetail).HomePlayers := Value
end;

procedure TMatchDetails.SetMatchDetail(const Value: IMatchDetail);
begin
  FRecord := Value;
end;

procedure TMatchDetails.SetVisitorsPlayers(const Value: IMatchPlayers);
begin
  (FRecord as IMatchDetail).VisitorsPlayers := Value
end;

{ TMatchDetailsFactory }

class function TMatchDetailsFactory.CreateRecord(const aKey: string): IMatchDetail;
begin
  Result := TMatchDetail.Create;
end;

class function TMatchDetailsFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IMatchDetails;
begin
  Result := TMatchDetails.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
