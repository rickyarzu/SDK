unit Phoenix.Json.Prodotti.DTO;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TListaProdotti = class
  private
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('CODICE_A_BARRE')]
    FCODICE_A_BARRE: string;
    [JSONName('CODICE_PRODOTTO')]
    FCODICE_PRODOTTO: string;
    [JSONName('DESCRIZIONE')]
    FDESCRIZIONE: string;
    [JSONName('IMPORTO')]
    FIMPORTO: Integer;
    [JSONName('IMPORTO_IVATO')]
    FIMPORTO_IVATO: Boolean;
    [JSONName('IVA')]
    FIVA: Integer;
    [JSONName('UNITA_DI_MISURA')]
    FUNITA_DI_MISURA: string;
    [JSONName('VISIBILE')]
    FVISIBILE: Boolean;
  published
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property CODICE_A_BARRE: string read FCODICE_A_BARRE write FCODICE_A_BARRE;
    property CODICE_PRODOTTO: string read FCODICE_PRODOTTO write FCODICE_PRODOTTO;
    property DESCRIZIONE: string read FDESCRIZIONE write FDESCRIZIONE;
    property IMPORTO: Integer read FIMPORTO write FIMPORTO;
    property IMPORTO_IVATO: Boolean read FIMPORTO_IVATO write FIMPORTO_IVATO;
    property IVA: Integer read FIVA write FIVA;
    property UNITA_DI_MISURA: string read FUNITA_DI_MISURA write FUNITA_DI_MISURA;
    property VISIBILE: Boolean read FVISIBILE write FVISIBILE;
  end;

  TProdottiRoot = class(TJsonDTO)
  private
    [JSONName('ListaProdotti'), JSONMarshalled(False)]
    FListaProdottiArray: TArray<TListaProdotti>;
    [GenericListReflect]
    FListaProdotti: TObjectList<TListaProdotti>;
    function GetListaProdotti: TObjectList<TListaProdotti>;
  protected
    function GetAsJson: string; override;
  published
    property ListaProdotti: TObjectList<TListaProdotti> read GetListaProdotti;
  public
    destructor Destroy; override;
  end;

implementation

{ TProdottiRoot }

destructor TProdottiRoot.Destroy;
begin
  GetListaProdotti.Free;
  inherited;
end;

function TProdottiRoot.GetListaProdotti: TObjectList<TListaProdotti>;
begin
  Result := ObjectList<TListaProdotti>(FListaProdotti, FListaProdottiArray);
end;

function TProdottiRoot.GetAsJson: string;
begin
  RefreshArray<TListaProdotti>(FListaProdotti, FListaProdottiArray);
  Result := inherited;
end;

end.
