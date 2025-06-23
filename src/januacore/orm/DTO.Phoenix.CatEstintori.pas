unit DTO.Phoenix.CatEstintori;

interface

uses
  Janua.Core.Json, System.Generics.Collections, Janua.Core.Commons, Janua.Core.DatabaseMapper,
  Janua.Core.Iterator, REST.Json.Types, Pkg.Json.DTO, Janua.Core.Json.DTO, Data.DB;

{$M+}

type
  Tcatestintori = class(TJanuaBindableClass) // added TJanuaBindableClass
  private
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('CLASSE_FUOCO')]
    FCLASSEFUOCO: string;
    [JSONName('CO2')]
    FCO2: string;
    [JSONName('DESCR_COMPATTA')]
    FDESCRCOMPATTA: string;
    [JSONName('DESCRIZIONE')]
    FDESCRIZIONE: string;
    [JSONName('JGUID')]
    FJGUId: string;
    [JSONName('PERIODICITA_COLLAUDO')]
    FPERIODICITACOLLAUDO: Integer;
    [JSONName('PERIODICITA_REVISIONE')]
    FPERIODICITAREVISIONE: Integer;
    [JSONName('PREZZO_COLLAUDO')]
    FPREZZOCOLLAUDO: Integer;
    [JSONName('PREZZO_REVISIONE')]
    FPREZZOREVISIONE: Integer;
    [JSONName('PREZZO_SMALTIMENTO')]
    FPREZZOSMALTIMENTO: Integer;
    [JSONName('PREZZO_SOSTITUZIONE')]
    FPREZZOSOSTITUZIONE: Integer;
    [JSONName('SENZA_SCADENZA')]
    FSENZASCADENZA: string;
    [JSONName('SOSPESO')]
    FSOSPESO: string;
  published
    [KeyField('CHIAVE')]
    [DBField('CHIAVE')]
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    [DBField('CLASSE_FUOCO')]
    property CLASSEFUOCO: string read FCLASSEFUOCO write FCLASSEFUOCO;
    [DBField('CO2')]
    property CO2: string read FCO2 write FCO2;
    [DBField('DESCR_COMPATTA')]
    property DESCRCOMPATTA: string read FDESCRCOMPATTA write FDESCRCOMPATTA;
    [DBField('DESCRIZIONE')]
    property DESCRIZIONE: string read FDESCRIZIONE write FDESCRIZIONE;
    property JGUId: string read FJGUId write FJGUId;
    [DBField('PERIODICITA_COLLAUDO')]
    property PERIODICITACOLLAUDO: Integer read FPERIODICITACOLLAUDO write FPERIODICITACOLLAUDO;
    [DBField('PERIODICITA_REVISIONE')]
    property PERIODICITAREVISIONE: Integer read FPERIODICITAREVISIONE write FPERIODICITAREVISIONE;
    property PREZZOCOLLAUDO: Integer read FPREZZOCOLLAUDO write FPREZZOCOLLAUDO;
    property PREZZOREVISIONE: Integer read FPREZZOREVISIONE write FPREZZOREVISIONE;
    property PREZZOSMALTIMENTO: Integer read FPREZZOSMALTIMENTO write FPREZZOSMALTIMENTO;
    property PREZZOSOSTITUZIONE: Integer read FPREZZOSOSTITUZIONE write FPREZZOSOSTITUZIONE;
    property SENZASCADENZA: string read FSENZASCADENZA write FSENZASCADENZA;
    property SOSPESO: string read FSOSPESO write FSOSPESO;
  end;

  TCatEstintoriRoot = class(TJanuaJsonDTO)
  private
    [JSONName('estintori'), JSONMarshalled(False)]
    FestintoriArray: TArray<Tcatestintori>;
    [GenericListReflect]
    Festintori: TObjectList<Tcatestintori>;
    [JSONMarshalled(False)]
    FIterator: TJanuaBindableIterator<Tcatestintori>;
    function Getestintori: TObjectList<Tcatestintori>;
    property Iterator: TJanuaBindableIterator<Tcatestintori> read FIterator;
  protected
    function GetAsJson: string; override;
    procedure SetAsJson(aValue: string); override;
  published
    property estintori: TObjectList<Tcatestintori> read Getestintori;
  public
    procedure RebuildList; Virtual;
    procedure LoadFromDataset(const aDataset: TDataset);
    destructor Destroy; override;
    constructor Create; override;
  end;

implementation

{ TCatEstintoriRoot }

constructor TCatEstintoriRoot.Create;
begin
  inherited;
  FIterator := TJanuaBindableIterator<Tcatestintori>.Create(imCopy);
end;

destructor TCatEstintoriRoot.Destroy;
begin
  Getestintori.Free;
  inherited;
end;

function TCatEstintoriRoot.Getestintori: TObjectList<Tcatestintori>;
begin
  Result := ObjectList<Tcatestintori>(Festintori, FestintoriArray);
end;

procedure TCatEstintoriRoot.LoadFromDataset(const aDataset: TDataset);
begin
  if aDataset.RecordCount > 0 then
  begin
    FIterator.Initialize('DESCRCOMPATTA', aDataset, FestintoriArray);
    var
    vTest := Length(FestintoriArray);
  end;
  // FLoaded := vTest > 0;
end;

procedure TCatEstintoriRoot.RebuildList;
begin
  FIterator.Initialize('DESCRCOMPATTA', Getestintori);
end;

procedure TCatEstintoriRoot.SetAsJson(aValue: string);
begin
  inherited;
  RebuildList;
end;

function TCatEstintoriRoot.GetAsJson: string;
begin
  RefreshArray<Tcatestintori>(Festintori, FestintoriArray);
  Result := inherited;
end;

end.
