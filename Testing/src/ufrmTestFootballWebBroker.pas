unit ufrmTestFootballWebBroker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.OleCtrls,
  SHDocVw, Vcl.StdCtrls;

type
  TfrmTestFootballWebBroker = class(TForm)
    PageControl1: TPageControl;
    tabRanking: TTabSheet;
    TabSheet2: TTabSheet;
    tabGoalRankings: TTabSheet;
    tabNextMatches: TTabSheet;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    WebBrowser1: TWebBrowser;
    Label1: TLabel;
    edSeason: TEdit;
    Label2: TLabel;
    edLeague: TEdit;
    Label3: TLabel;
    edMatchDay: TEdit;
    edRankingUrl: TEdit;
    edMatches: TEdit;
    WebBrowser2: TWebBrowser;
    edGoalRanking: TEdit;
    WebBrowser3: TWebBrowser;
    ednextmatches: TEdit;
    WebBrowser4: TWebBrowser;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestFootballWebBroker: TfrmTestFootballWebBroker;

implementation

{$R *.dfm}

procedure TfrmTestFootballWebBroker.SpeedButton1Click(Sender: TObject);
var
  Params: string;
begin
  Params := 'season=' + self.edSeason.Text + '&league=' + self.edLeague.Text + '&day=' +
    self.edMatchDay.Text;

  self.WebBrowser1.Navigate('http://localhost:8080/football/ranking?' + Params);
  self.edRankingUrl.Text := ('http://localhost:8080/football/ranking?' + Params);

  self.WebBrowser2.Navigate('http://localhost:8080/football/matches?' + Params);
  self.edMatches.Text := ('http://localhost:8080/football/matches?' + Params);

  self.WebBrowser3.Navigate('http://localhost:8080/football/goalranking?' + Params);
  self.edGoalRanking.Text := ('http://localhost:8080/football/goalranking?' + Params);

  self.WebBrowser4.Navigate('http://localhost:8080/football/nextmatches?' + Params);
  self.ednextmatches.Text := ('http://localhost:8080/football/nextmatches?' + Params);
end;

end.
