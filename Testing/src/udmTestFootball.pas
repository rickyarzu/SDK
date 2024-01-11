unit udmTestFootball;

interface

uses
  System.SysUtils, System.Classes, udmServerModel, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, Janua.Core.Cloud, Janua.Core.Classes, System.Generics.Collections, Janua.Core.System,
  Janua.Postgres.System, Janua.Core.Cms, Janua.Postgres.Cms, Janua.Core.Servers, Janua.Core.JPublic,
  Janua.Postgres.JPublic, Janua.Core.Mail, Janua.Core.Football, Janua.Postgres.Football, Janua.Core.Http;

type
  TdmTestFootball = class(TdmServerModel)
    JanuaServerPgFootball1: TJanuaServerPgFootball;
    JanuaPgTemplateFootball1: TJanuaPgTemplateFootball;
  private
    { Private declarations }
    procedure Setup;

  public
    { Public declarations }
    function Ranking: string;
    function Matches: string;
    function GoalRanking: string;
  end;

var
  dmTestFootball: TdmTestFootball;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
{ TdmTestFootball }

function TdmTestFootball.GoalRanking: string;
begin

end;

function TdmTestFootball.Matches: string;
begin

end;

function TdmTestFootball.Ranking: string;
begin

end;

procedure TdmTestFootball.Setup;
begin
  self.JanuaServerPgFootball1.season_id := 32;
  self.JanuaServerPgFootball1.league_id := 124;

end;

end.
