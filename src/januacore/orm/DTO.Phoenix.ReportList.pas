unit DTO.Phoenix.ReportList;

interface

uses
  System.Generics.Collections, Data.DB,
  // Json
  Pkg.Json.DTO, REST.Json.Types, Pkg.Json.Settings,
  // Janua
  Janua.Core.Commons, Janua.Core.DatabaseMapper, Janua.Core.Iterator, Janua.Core.Json.DTO;

{$M+}

type
  TStatini = class
  private
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('INDIRIZZO')]
    FINDIRIZZO: string;
    [JSONName('RAGIONE_SOCIALE')]
    FRAGIONESOCIALE: string;
    [JSONName('RESPONSABILE')]
    FRESPONSABILE: Integer;

  published
    [KeyField('CHIAVE')]
    [DBField('CHIAVE')]
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    [DBField('RAGIONE_SOCIALE')]
    property RAGIONESOCIALE: string read FRAGIONESOCIALE write FRAGIONESOCIALE;
    [DBField('INDIRIZZO')]
    property INDIRIZZO: string read FINDIRIZZO write FINDIRIZZO;
    [DBField('RESPONSABILE')]
    property RESPONSABILE: Integer read FRESPONSABILE write FRESPONSABILE;

  end;

  TRSRoot = class(TJsonDTO)
  private
    [JSONName('statini'), JSONMarshalled(False)]
    FStatiniArray: TArray<TStatini>;
    [GenericListReflect]
    FStatini: TObjectList<TStatini>;
    function GetStatini: TObjectList<TStatini>;
  protected
    function GetAsJson: string; override;
  published
    property Statini: TObjectList<TStatini> read GetStatini;
  public
    destructor Destroy; override;
  end;

type
  TLSStatino = class(TJanuaBindableClass)
  private
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('AMMINISTRATORE')]
    FAMMINISTRATORE: string;
    [JSONName('RAGIONE_SOCIALE')]
    FRAGIONESOCIALE: string;
    [JSONName('INDIRIZZO')]
    FINDIRIZZO: string;
    [JSONName('RESPONSABILE')]
    FRESPONSABILE: Integer;
    // Interventi
    [JSONName('ESTINTORI_ORDINARIO')]
    FESTINTORIORDINARIO: Integer;
    [JSONName('ESTINTORI_STRAORDINARIO')]
    FESTINTORISTRAORDINARIO: Integer;
    [JSONName('FUMI')]
    FFUMI: Integer;
    [JSONName('GRUPPI_ELETTR')]
    FGRUPPIELETTR: Integer;
    [JSONName('IDRANTI')]
    FIDRANTI: Integer;
    [JSONName('IMPIANTI_EL')]
    FIMPIANTIEL: Integer;
    [JSONName('LUCI')]
    FLUCI: Integer;
    [JSONName('SPRINKLER')]
    FSPRINKLER: Integer;
    [JSONName('PORTE')]
    FPORTE: Integer;
  published
    [KeyField('CHIAVE')]
    [DBField('CHIAVE')]
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    [DBField('AMMINISTRATORE')]
    property AMMINISTRATORE: string read FAMMINISTRATORE write FAMMINISTRATORE;
    [DBField('RAGIONE_SOCIALE')]
    property RAGIONESOCIALE: string read FRAGIONESOCIALE write FRAGIONESOCIALE;
    [DBField('INDIRIZZO')]
    property INDIRIZZO: string read FINDIRIZZO write FINDIRIZZO;
    [DBField('RESPONSABILE')]
    property RESPONSABILE: Integer read FRESPONSABILE write FRESPONSABILE;
    // Interventi
    [DBField('ESTINTORI_ORDINARIO')]
    property ESTINTORIORDINARIO: Integer read FESTINTORIORDINARIO write FESTINTORIORDINARIO;
    [DBField('ESTINTORI_STRAORDINARIO')]
    property ESTINTORISTRAORDINARIO: Integer read FESTINTORISTRAORDINARIO write FESTINTORISTRAORDINARIO;
    [DBField('FUMI')]
    property FUMI: Integer read FFUMI write FFUMI;
    [DBField('GRUPPI_ELETTR')]
    property GRUPPIELETTR: Integer read FGRUPPIELETTR write FGRUPPIELETTR;
    [DBField('IDRANTI')]
    property IDRANTI: Integer read FIDRANTI write FIDRANTI;
    [DBField('IMPIANTI_EL')]
    property IMPIANTIEL: Integer read FIMPIANTIEL write FIMPIANTIEL;
    [DBField('LUCI')]
    property LUCI: Integer read FLUCI write FLUCI;
    [DBField('SPRINKLER')]
    property SPRINKLER: Integer read FSPRINKLER write FSPRINKLER;
    [DBField('PORTE')]
    property PORTE: Integer read FPORTE write FPORTE;
  end;

  TLSStatinoRoot = class(TJanuaJsonDTO)
  private
    [JSONName('statini'), JSONMarshalled(False)]
    FStatiniArray: TArray<TLSStatino>;
    [GenericListReflect]
    FStatini: TObjectList<TLSStatino>;
    [JSONMarshalled(False)]
    FIterator: TJanuaBindableIterator<TLSStatino>;
    [JSONMarshalled(False)]
    FLoaded: Boolean;
    function GetStatini: TObjectList<TLSStatino>;
  protected
    function GetAsJson: string; override;
    procedure SetAsJson(aValue: string); override;
  published
    property Statini: TObjectList<TLSStatino> read GetStatini;
  public
    property Iterator: TJanuaBindableIterator<TLSStatino> read FIterator;
    destructor Destroy; override;
    constructor Create; override;
    procedure RebuildList; Virtual;
    procedure LoadFromDataset(const aDataset: TDataset);
  end;

implementation

{ TRSRoot }

{ TRSRoot }

destructor TRSRoot.Destroy;
begin
  GetStatini.Free;
  inherited;
end;

function TRSRoot.GetStatini: TObjectList<TStatini>;
begin
  Result := ObjectList<TStatini>(FStatini, FStatiniArray);
end;

function TRSRoot.GetAsJson: string;
begin
  RefreshArray<TStatini>(FStatini, FStatiniArray);
  Result := inherited;
end;

{ TLSStatinoRoot }

constructor TLSStatinoRoot.Create;
begin
  inherited;
  FIterator := TJanuaBindableIterator<TLSStatino>.Create(imCopy);
end;

destructor TLSStatinoRoot.Destroy;
begin
  GetStatini.Free;
  inherited;
end;

function TLSStatinoRoot.GetStatini: TObjectList<TLSStatino>;
begin
  Result := ObjectList<TLSStatino>(FStatini, FStatiniArray);
end;

procedure TLSStatinoRoot.LoadFromDataset(const aDataset: TDataset);
begin
  FIterator.Initialize('RAGIONESOCIALE', aDataset, FStatiniArray);
  var
  vTest := Length(FStatiniArray);
  FLoaded := vTest > 0;
end;

procedure TLSStatinoRoot.RebuildList;
begin
  FIterator.Initialize('RAGIONESOCIALE', GetStatini);
end;

procedure TLSStatinoRoot.SetAsJson(aValue: string);
begin
  inherited;
  RebuildList;
end;

function TLSStatinoRoot.GetAsJson: string;
begin
  RefreshArray<TLSStatino>(FStatini, FStatiniArray);
  Result := inherited;
end;

end.

(*

  uses System.Classes, System.Generics.Collections, Data.DB,
  // Json
  Pkg.Json.DTO, REST.Json.Types, Pkg.Json.Settings,
  // Janua
  Janua.Core.Commons, Janua.Core.DatabaseMapper, Janua.Core.Iterator, Janua.Core.Json.DTO;

  type
  // Example class with custom mapping and JGUID support
  TLSStatino = class(TJanuaBindableClass)
  private
  [JSONName('CHIAVE')]
  FChiave: Integer;
  [JSONName('JGUID')]
  FJGuid: TGUID;
  [JSONName('RAGIONE_SOCIALE')]
  FRagioneSociale: string;
  [JSONName('INDIRIZZO')]
  FIndirizzo: string;
  [JSONName('RESPONSABILE')]
  FResponsabile: Integer;
  public
  constructor Create;
  function GetChangeTracker: TChangeTracker;

  [KeyField('CHIAVE')]
  [DBField('CHIAVE')]
  property Chiave: Integer read FChiave write FChiave;

  [DBField('JGUID')]
  property JGuid: TGUID read FJGuid write FJGuid;

  [DBField('RAGIONE_SOCIALE')]
  property RagioneSociale: string read FRagioneSociale write FRagioneSociale;

  [DBField('INDIRIZZO')]
  property Indirizzo: string read FIndirizzo write FIndirizzo;

  [DBField('RESPONSABILE')]
  property Responsabile: Integer read FResponsabile write FResponsabile;
  end;

  TLSStatini = class(TJanuaJsonDTO)
  private
  [JSONName('statini'), JSONMarshalled(False)]
  FStatiniArray: TArray<TLSStatino>;
  [GenericListReflect]
  FStatini: TObjectList<TLSStatino>;
  [JSONMarshalled(False)]
  FIterator: TJanuaBindableIterator<TLSStatino>;
  [JSONMarshalled(False)]
  FLoaded: Boolean;
  function GetStatini: TObjectList<TLSStatino>;
  protected
  procedure RebuildList; Virtual;
  function GetAsJson: string; override;
  procedure SetAsJson(aJson: string); override;
  public
  Constructor Create; override;
  procedure LoadFromDataset(const aDataset: TDataset);
  published
  property Loaded: Boolean read FLoaded;
  property Customers: TObjectList<TLSStatino> read GetStatini;
  property Iterator: TJanuaBindableIterator<TLSStatino> read FIterator;
  end;

  implementation

  uses Janua.Core.Json;

  {
  SELECT  CHIAVE, RAGIONE_SOCIALE, INDIRIZZO, RESPONSABILE, APPUNTAMENTO_DATA, JGUID
  FROM STATINI WHERE APPUNTAMENTO_DATA = CURRENT_DATE
  AND RESPONSABILE = 2035681;
  }

  { TLSStatino }

  constructor TLSStatino.Create;
  begin
  FChiave := 0;
  FJGuid := TGUID.Empty;
  FResponsabile := 0;
  end;

  function TLSStatino.GetChangeTracker: TChangeTracker;
  begin

  end;

  { TLSStatinoManagerIterator }

  constructor TLSStatini.Create;
  begin
  inherited;
  FLoaded := False;
  var
  vTest := TSettings.Instance.UsePascalCase;
  if not vTest then
  TSettings.Instance.UsePascalCase := True;

  FIterator := TJanuaBindableIterator<TLSStatino>.Create(imCopy);
  end;

  function TLSStatini.GetAsJson: string;
  begin
  RefreshArray<TLSStatino>(FStatini, FStatiniArray);
  Result := inherited;
  end;

  function TLSStatini.GetStatini: TObjectList<TLSStatino>;
  begin
  Result := ObjectList<TLSStatino>(FStatini, FStatiniArray);
  end;

  procedure TLSStatini.LoadFromDataset(const aDataset: TDataset);
  begin
  FIterator.Initialize('RagioneSociale', aDataset, FStatiniArray);
  var
  vTest := Length(FStatiniArray);
  FLoaded := vTest > 0;
  end;

  procedure TLSStatini.RebuildList;
  begin
  FIterator.Initialize('RagioneSociale', GetStatini);
  end;

  procedure TLSStatini.SetAsJson(aJson: string);
  begin
  inherited;
  RebuildList;
  end;
*)
