unit Phoenix.Json.Tecnici.DTO;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

{$M+}

type
  TTecnici = class
  private
    [JSONName('Account')]
    FAccount: string;
    [JSONName('Chiave')]
    FChiave: Integer;
    [JSONName('Descrizione')]
    FDescrizione: string;
  published
    property Account: string read FAccount write FAccount;
    property Chiave: Integer read FChiave write FChiave;
    property Descrizione: string read FDescrizione write FDescrizione;
  end;

  TTecniciRoot = class(TJsonDTO)
  private
    [JSONName('Tecnici'), JSONMarshalled(False)]
    FTecniciArray: TArray<TTecnici>;
    [GenericListReflect]
    FTecnici: TObjectList<TTecnici>;
    function GetTecnici: TObjectList<TTecnici>;
  protected
    function GetAsJson: string; override;
  published
    property Tecnici: TObjectList<TTecnici> read GetTecnici;
  public
    destructor Destroy; override;
  end;

implementation

{ TTecniciRoot }

destructor TTecniciRoot.Destroy;
begin
  GetTecnici.Free;
  inherited;
end;

function TTecniciRoot.GetTecnici: TObjectList<TTecnici>;
begin
  Result := ObjectList<TTecnici>(FTecnici, FTecniciArray);
end;

function TTecniciRoot.GetAsJson: string;
begin
  RefreshArray<TTecnici>(FTecnici, FTecniciArray);
  Result := inherited;
end;

end.
