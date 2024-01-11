unit udmAnagraph;

interface

uses
  System.SysUtils, System.Classes, Uni, Data.DB, MemDS, DBAccess,
  Janua.Postgres.Functions, Janua.Core.Classes, Janua.Core.System;

type
  TdmPgAnagraph = class(TDataModule)
    qrySearchAddress: TUniQuery;
    qrySearchAddressdb_user_id: TIntegerField;
    qrySearchAddresscountry_id: TSmallintField;
    qrySearchAddressregion_id: TSmallintField;
    qrySearchAddressdistrict_id: TSmallintField;
    qrySearchAddresstown_id: TIntegerField;
    qrySearchAddressfirst_name: TWideStringField;
    qrySearchAddresslast_name: TWideStringField;
    qrySearchAddressaddress_street: TWideStringField;
    qrySearchAddressaddress_number: TWideStringField;
    qrySearchAddressaddress_postal_code: TWideStringField;
    qrySearchAddressphone: TWideStringField;
    qrySearchAddresscellular_phone: TWideStringField;
    qrySearchAddresswork_phone: TWideStringField;
    qrySearchAddressfax_number: TWideStringField;
    qrySearchAddressgender_code: TWideStringField;
    qrySearchAddressbirth_date: TUniDateField;
    qrySearchAddressbirth_country_id: TSmallintField;
    qrySearchAddressbirth_region_id: TSmallintField;
    qrySearchAddressbirth_district_id: TSmallintField;
    qrySearchAddressbirth_town_id: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FServerFunctions: Janua.Postgres.Functions.TJanuaPostgresServerFunctions;
    FJanuaCoreLogger: TJanuaCoreLogger;
    procedure SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
  public
    { Public declarations }
    function FindAddresbyID(aID: integer): boolean;
    function FindAddress(sSearch: string): integer;
  published
    property JanuaCoreLogger: TJanuaCoreLogger read FJanuaCoreLogger write SetJanuaCoreLogger;
  end;

  var
     dmPgAnagraph: TdmPgAnagraph;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TdmPgAnagraph.DataModuleCreate(Sender: TObject);
begin
  FServerFunctions := Janua.Postgres.Functions.TJanuaPostgresServerFunctions.Create(self);
end;

function TdmPgAnagraph.FindAddresbyID(aID: integer): boolean;
begin
   qrySearchAddress.Close;
   qrySearchAddress.ParamByName('p_search').Value := '%';
   qrySearchAddress.ParamByName('p_anagrafica_id').Value := aID;
   FServerFunctions.OpenDataset(qrySearchAddress);
   Result := qrySearchAddress.RecordCount = 1;
end;

function TdmPgAnagraph.FindAddress(sSearch: string): integer;
begin
   qrySearchAddress.Close;
   qrySearchAddress.ParamByName('p_search').Value := sSearch;
   qrySearchAddress.ParamByName('p_anagrafica_id').Value := 0;
   FServerFunctions.OpenDataset(qrySearchAddress);
   Result := qrySearchAddress.RecordCount;
end;


procedure TdmPgAnagraph.SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
begin
  FJanuaCoreLogger := Value;
  if assigned(FJanuaCoreLogger) then
    FServerFunctions.JanuaLogger := FJanuaCoreLogger;
end;

end.
