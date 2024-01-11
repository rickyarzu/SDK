unit JanuaSearchVatCode;

interface

uses
  SysUtils, Classes, Uni, JanuaSessionSource,  JanuaStoredProcedure,
  JanuaOraDataSet;

type
  TJanuaSearchOfficeType = (jsoHead, jsoNone);
  TJanuaSearchCodeType = (jscVat, jscFiscal);

  TJanuaSearchVatCode = class(TJanuaStoredProcedure)
  private
    FSearchOfficeType: TJanuaSearchOfficeType;
    FSearchCodeType: TJanuaSearchCodeType;
    FMinSearchState: integer;
    FJanuaSessionSource: TJanuaSessionSource;
    FQuantity: integer;
    FFound: Boolean;
    FSearchCode: widestring;
    FSearchAnagraph_id: int64;
    FFoundAnagraphID: int64;
    procedure SetSearchOfficeType(const Value: TJanuaSearchOfficeType);
    procedure SetSearchCodeType(const Value: TJanuaSearchCodeType);
    procedure SetMinSearchState(const Value: integer);
    procedure SetJanuaSessionSource(const Value: TJanuaSessionSource);
    procedure SetupStoredProc;
    procedure SetFound(const Value: Boolean);
    procedure SetQuantity(const Value: integer);
    procedure SetSearchCode(const Value: widestring);
    procedure SetSearchAnagraph_id(const Value: int64);
    procedure SetFoundAnagraphID(const Value: int64);
    { Private declarations }
  protected
    { Protected declarations }
    procedure SetActive(const Value: boolean);  override;
    procedure Prepare; override; 
  public
    { Public declarations }
    constructor Create(AOwner: TComponent);  override;
    function Execute: boolean; override;
  published
    { Published declarations }
    property SearchOfficeType: TJanuaSearchOfficeType read FSearchOfficeType
                                write SetSearchOfficeType default jsoHead;
    property  SearchCodeType:  TJanuaSearchCodeType read FSearchCodeType
                                write SetSearchCodeType default jscVat;
    property MinSearchState: integer read FMinSearchState write SetMinSearchState default 0;
    property JanuaSessionSource: TJanuaSessionSource read FJanuaSessionSource write SetJanuaSessionSource;
    property Found: Boolean read FFound;
    property Quantity: integer read FQuantity;
    property SearchCode: widestring read FSearchCode write SetSearchCode;
    property SearchAnagraph_id: int64 read FSearchAnagraph_id write SetSearchAnagraph_id;
    property FoundAnagraphID: int64 read FFoundAnagraphID write SetFoundAnagraphID;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('JanuaOracle', [TJanuaSearchVatCode]);
end;

{ TJanuaSearchVatCode }

constructor TJanuaSearchVatCode.Create(AOwner: TComponent);
var
  i: integer;
begin
  inherited;
  self.DatasetType := jdtProcedure;
  FSearchOfficeType := jsoHead;
  MinSearchState := 0;
end;

function TJanuaSearchVatCode.Execute: boolean;
var
  duplicates: int64;
begin
  // Esecuzione della procedura di collegamento dei dati finale ...............
  self.StoredProcedure.ExecProc;
  Result := True;
  try
     FFoundAnagraphID := StoredProcedure.ParamByName('Result').AsInteger;
     Result := duplicates > 0;
     FFound := Result;
     FQuantity := Duplicates; 
  except
    Active := False;
    FFound := False;
    Result := False;
    duplicates := 0;
    raise; 
  end;
end;

procedure TJanuaSearchVatCode.Prepare;
begin
  inherited;
  self.ProcedureName := 'janua_anagrafica_pkg.search_vat_code_office';
  SetSQL('(:p_anagraph_id, :p_vat_code, :p_min_status, :p_office_type)');
  SetParams('p_anagraph_id', -1);
  SetParams('p_office_type', ord(FSearchOfficeType));
end;

procedure TJanuaSearchVatCode.SetActive(const Value: boolean);
begin
  inherited;
  if Value then Execute;
end;

procedure TJanuaSearchVatCode.SetFound(const Value: Boolean);
begin
  FFound := Value;
end;

procedure TJanuaSearchVatCode.SetFoundAnagraphID(const Value: int64);
begin
  FFoundAnagraphID := Value;
end;

procedure TJanuaSearchVatCode.SetJanuaSessionSource(
  const Value: TJanuaSessionSource);
begin
  FJanuaSessionSource := Value;
end;

procedure TJanuaSearchVatCode.SetMinSearchState(const Value: integer);
begin
  FMinSearchState := Value;
end;

procedure TJanuaSearchVatCode.SetQuantity(const Value: integer);
begin
  FQuantity := Value;
end;

procedure TJanuaSearchVatCode.SetSearchAnagraph_id(const Value: int64);
begin
  FSearchAnagraph_id := Value;
  SetParams('p_anagraph_id', Value);
end;

procedure TJanuaSearchVatCode.SetSearchCode(const Value: widestring);
begin
  FSearchCode := Value;
  SetParams('p_vat_code', Value);
end;

procedure TJanuaSearchVatCode.SetSearchCodeType(
  const Value: TJanuaSearchCodeType);
begin
  FSearchCodeType := Value;
end;

procedure TJanuaSearchVatCode.SetSearchOfficeType(
  const Value: TJanuaSearchOfficeType);
begin
  FSearchOfficeType := Value;
  SetParams('p_office_type', ord(FSearchOfficeType));
end;

procedure TJanuaSearchVatCode.SetupStoredProc;
begin

end;

end.
