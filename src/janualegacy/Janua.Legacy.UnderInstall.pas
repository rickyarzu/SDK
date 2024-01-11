unit Janua.Legacy.UnderInstall;

interface

uses
  System.Classes;

type
  TUnderInstall = class(TComponent)
  private
    FDefaultPolizza: String;
    FGestionePrenotazioni: Boolean;
    FGestioneTipo: Boolean;
    FGestioneTaglie: Boolean;
    FGestionePagamenti: Boolean;
    FGestioneAgenti: Boolean;
    FGestEntUscite: Boolean;
    FImpostazioniOrologio: Boolean;
    FInserimentoOrologio: Boolean;
    FGestioneCatalogo: Boolean;
    FGestioneServizi: Boolean;
    FGestioneOrdini: Boolean;
    FEtichetteA4: Boolean;
    FValutaDefautl: Integer;
    FStampaMandato: Boolean;
    FVistaUnita: Boolean;
    FVistaInevasi: String;
    FGestioneEvasi: Boolean;
    FTerminaleCassa: Boolean;
    FDocumentoDefault: String;
    FGestionePratiche: Boolean;
    FGestioneMagazzino: Boolean;
    FGestioneStatistiche: Boolean;
    FGestionePrezzipersonali: Boolean;
    FTotOrdini: Boolean;
    FSede: Boolean;
    FCiao: int64;
    procedure SetCiao(const Value: int64);

    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    property GestioneTipo: Boolean read FGestioneTipo write FGestioneTipo;
    property GestioneTaglie: Boolean read FGestioneTaglie write FGestioneTaglie;
    property GestionePagamenti: Boolean read FGestionePagamenti write FGestionePagamenti;
    property GestioneAgenti: Boolean read FGestioneAgenti write FGestioneAgenti;
    property GestioneEntrateUscite: Boolean read FGestEntUscite write FGestEntUscite;
    property ImpostazioniOrologio: Boolean read FImpostazioniOrologio write FImpostazioniOrologio;
    property InserimentoOrologio: Boolean read FInserimentoOrologio write FInserimentoOrologio;
    property GestioneCatalogo: Boolean read FGestioneCatalogo write FGestioneCatalogo;
    property GestioneServizi: Boolean read FGestioneServizi write FGestioneServizi;
    property GestioneOrdini: Boolean read FGestioneOrdini write FGestioneOrdini;
    property EtichetteA4: Boolean read FEtichetteA4 write FEtichetteA4;
    property ValutaDefautl: Integer read FValutaDefautl write FValutaDefautl;
    property StampaMandato: Boolean read FStampaMandato write FStampaMandato;
    property VistaUnita: Boolean read FVistaUnita write FVistaUnita;
    property VistaInevasi: String read FVistaInevasi write FVistaInevasi;
    property GestioneEvasi: Boolean read FGestioneEvasi write FGestioneEvasi;
    property TerminaleCassa: Boolean read FTerminaleCassa write FTerminaleCassa;
    property DocumentoDefault: String read FDocumentoDefault write FDocumentoDefault;
    property GestionePratiche: Boolean read FGestionePratiche write FGestionePratiche;
    property GestioneMagazzino: Boolean read FGestioneMagazzino write FGestioneMagazzino;
    property GestioneStatistiche: Boolean read FGestioneStatistiche write FGestioneStatistiche;
    property DefaultPolizza: String read FDefaultPolizza write FDefaultPolizza;
    property GestionePrenotazioni: Boolean read FGestionePrenotazioni write FGestionePrenotazioni;
    property TotOrdini: Boolean read FTotOrdini write FTotOrdini;
    property Sede: Boolean read FSede write FSede;
    property GestionePrezzipersonali: Boolean read FGestionePrezzipersonali write FGestionePrezzipersonali;
  published
    property Ciao: int64 read FCiao write SetCiao;
    { Published declarations }
  end;

implementation

{ TUnderInstall }

procedure TUnderInstall.SetCiao(const Value: int64);
begin
  FCiao := Value;
end;

end.
