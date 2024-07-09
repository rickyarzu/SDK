unit Janua.Core.JPublic;

interface

{$I JANUACORE.INC}

uses
  System.SysUtils, System.Classes, FireDAC.Comp.Client, Data.DB,
  Janua.Core.Classes, Janua.Core.Servers, Janua.Core.System, Janua.Core.Types,
  Janua.Core.Entities;

{$METHODINFO ON}

type
  TCustomDBParamsReader = class(TObject)
  private
    FInternalDataset: TFDMemTable;
  public
    procedure Create; overload;
  published

  end;

type
  TMailSenderParams = class(TJanuaObject)
  private
    FDBParamsReader: TCustomDBParamsReader;
    procedure SetDBParamsReader(const Value: TCustomDBParamsReader);
  protected
    function InternalActivate: boolean; override;
  published
    property DBParamsReader: TCustomDBParamsReader read FDBParamsReader write SetDBParamsReader;
  end;

type
  TJanuaCustomServerJPublic = class(TJanuaCustomServer)
  private
    procedure SetDefaultCountryID(const Value: smallint);
    procedure SetCountryID(const Value: smallint);
    // procedure SetLocation(const Value: TJanuaLocation);
    procedure SetCountryName(const Value: string);
    procedure SetJanuaSystem(const Value: TJanuaCustomServerSystem);
  protected
    FSelectedCountry: TCountry;
    {
      FTownDataset: TDataset;
      FDistrictDataset: TDataset;
      FCountryDataset: TDataset;
      FRegionDataset: TDataset;
    }
    FDefaultCountryID: smallint;
    // FLocation: TJanuaLocation;
    FCountryID: smallint;
    FCountryName: string;
    FJanuaSystem: TJanuaCustomServerSystem;
    function CheckUp: boolean; override;
  public
    function SetCountryByID(ID: smallint): boolean; virtual;
    function SetCountryByName(cName: string): boolean; virtual;
    function SetCountryByCode(cCode: string): boolean; virtual;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property JanuaSystem: TJanuaCustomServerSystem read FJanuaSystem write SetJanuaSystem;
    property DefaultCountryID: smallint read FDefaultCountryID write SetDefaultCountryID default 1;
    // property Location: TJanuaLocation read FLocation write SetLocation;
    property CountryID: smallint read FCountryID write SetCountryID;
    property CountryName: string read FCountryName write SetCountryName;
    property SelectedCountry: TCountry read FSelectedCountry;
    {
      property CountryDataset: TDataset read FCountryDataset;
      property RegionDataset: TDataset read FRegionDataset;
      property DistrictDataset: TDataset read FDistrictDataset;
      property TownDataset: TDataset read FTownDataset;
    }
  end;

type
  TCountrySearch = class(TJanuaCoreComponent)
  private
    FJanuaServerJPublic: TJanuaCustomServerJPublic;
    // FLocation: TJanuaLocation;
    FRecordCountrySearch: TRecordCountrySearch;
    FDefaultCountryID: smallint;
    FFound: boolean;
    FSelectedCountry: TCountry;
    procedure SetRecordCountrySearch(const Value: TRecordCountrySearch);
    procedure SetCountryID(const Value: integer);
    procedure SetCountryName(const Value: string);
    procedure SetDefaultCountryID(const Value: smallint);
    procedure SetFound(const Value: boolean);
    procedure SetJanuaServerJPublic(const Value: TJanuaCustomServerJPublic);
    procedure SetSelectedCountry(const Value: TCountry);
  strict protected
    function InternalActivate: boolean; override;
    procedure InternalDeactivate; override;
  public
    function CountryByID(ID: integer): boolean; virtual;
    // questa funzione nel discendente 'chiama' InternalCountrybyID se non lo trova chiama il db
    function CountryByName(Name: string): boolean; virtual;
    // questa funzione nel discendente 'chiama' InternalCountrybyName se non lo trova chiama il db
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Clear;
  protected
    FCountryID: integer;
    FCountryName: string;
    function InternalCountryByID(ID: integer): boolean; virtual;
    function InternalCountryByName(Name: string): boolean; virtual;
    // create =   self.FActive := false;
  published
    property DefaultCountryID: smallint read FDefaultCountryID write SetDefaultCountryID default 1;
    property CountryID: integer read FCountryID write SetCountryID;
    property CountryName: string read FCountryName write SetCountryName;
    property RecordCountrySearch: TRecordCountrySearch read FRecordCountrySearch write SetRecordCountrySearch;
    property Found: boolean read FFound write SetFound;
    property JanuaServerJPublic: TJanuaCustomServerJPublic read FJanuaServerJPublic write SetJanuaServerJPublic;
    property SelectedCountry: TCountry read FSelectedCountry write SetSelectedCountry;
  end;

type
  TJanuaLocation = class(TJanuaObject)
  private
    FListaRegioni: TStrings;
    FListaProvince: TStrings;
    FListaComuni: TStrings;
    FCountryID: smallint;
    FCountryIndex: integer;
    FCountryName: string;
    FTownName: string;
    FDistrictName: string;
    FRegionID: smallint;
    FTownID: integer;
    FDistrictID: integer;
    FRegionName: string;
    FCountrySearch: TCountrySearch;
    FIsSet: boolean;
    FLocation: TRecordLocation;
    FModified: boolean;
    FListaNazioni: TStrings;
    FRegionIndex: integer;
    FTownIndex: integer;
    FDistrictIndex: integer;
    { Avoiding Loop while Resetting }
    FCountryResetting: boolean;
    FRegionResetting: boolean;
    FTownResetting: boolean;
    FDistrictResetting: boolean;
    { Avoiding Loop while Updating }
    FCountryUpdating: boolean;
    FRegionUpdating: boolean;
    FTownUpdating: boolean;
    FDistrictUpdating: boolean;
    FReset: boolean;
    procedure UpdateCountry;
    procedure UpdateRegion;
    procedure UpdateDistrict;
    procedure ResetDistrict;
    procedure UpdateTowns;
    procedure ResetTowns;
    procedure ResetCountry;
    procedure SetCountrySearch(const Value: TCountrySearch);
    procedure SetIsSet(const Value: boolean);
    procedure SetModified(const Value: boolean);
    procedure SetListaRegioni(const Value: TStrings);
    procedure SetListaProvince(const Value: TStrings);
    procedure SetListaComuni(const Value: TStrings);
    procedure ResetRegion;
    procedure SetListaNazioni(const Value: TStrings);
    procedure SetRegionIndex(const Value: integer);
    procedure SetDistrictIndex(const Value: integer);
    procedure SetTownIndex(const Value: integer);
    procedure SetReset(const Value: boolean);
  protected
    procedure SetContryName(const Value: string); virtual;
    procedure SetCountryID(const Value: smallint); virtual;
    procedure SetCountryIndex(const Value: integer); virtual;
    procedure SetSelectedCountry(const Value: TCountry); virtual;
    procedure SetDistrictID(const Value: integer); virtual;
    procedure SetDistrictName(const Value: string); virtual;
    procedure SetRegionID(const Value: smallint); virtual;
    procedure SetRegionName(const Value: string); virtual;
    procedure SetTownID(const Value: integer); virtual;
    procedure SetLocation(const Value: TRecordLocation); virtual;
    procedure SetTownName(const Value: string); virtual;
  public
    constructor Create; override;
    Destructor Destroy; override;
  published
    { Queste sono le liste da attivare sui combo box di Ricerca }
    property ListaNazioni: TStrings read FListaNazioni write SetListaNazioni;
    property ListaRegioni: TStrings read FListaRegioni write SetListaRegioni;
    property ListaProvince: TStrings read FListaProvince write SetListaProvince;
    property ListaComuni: TStrings read FListaComuni write SetListaComuni;
    { Questa è la proprietà della Selected Country che va poi riportata in proprietà vere e prprie }
    { Proprietà specifiche della Classe in Esame .................................................. }
    // Country *****************
    property SelectedCountry: TCountry read FLocation.CountryRecord write SetSelectedCountry;
    property CountryID: smallint read FCountryID write SetCountryID default 0;
    property CountryIndex: integer read FCountryIndex write SetCountryIndex default -1;
    property CountryName: string read FCountryName write SetContryName;

    // Region ****************
    property RegionName: string read FRegionName write SetRegionName;
    property RegionID: smallint read FRegionID write SetRegionID default 0;
    property RegionIndex: integer read FRegionIndex write SetRegionIndex default -1;

    // District ***************
    property DistrictName: string read FDistrictName write SetDistrictName;
    property DistrictID: integer read FDistrictID write SetDistrictID default 0;
    property DistrictIndex: integer read FDistrictIndex write SetDistrictIndex default -1;

    // Town ********************
    property TownName: string read FTownName write SetTownName;
    property TownID: integer read FTownID write SetTownID default 0;
    property TownIndex: integer read FTownIndex write SetTownIndex default -1;

    { la proprietà is active indica che è attivo il sistema di ricerca ovver il 'country' è impostato
      la location può essere 'set' se i valori sono inseriti ma non 'active' se la variabile TCountry
      non è impstata e quindi non può essere usata per le ricerche. La procedura SetSelectedCountry
      permette invece di 'attivare' i dati ed in particolare di avviare le procedure di ricerca dei
      dati di comuni province ecc ecc ..... }
    property IsSet: boolean read FIsSet write SetIsSet default false;
    property CountrySearch: TCountrySearch read FCountrySearch write SetCountrySearch;
    property Location: TRecordLocation read FLocation write SetLocation;
    property Modified: boolean read FModified write SetModified default false;

    property Reset: boolean read FReset write SetReset;

  end;

type
  TJanuaLocationAddress = class(TJanuaLocation)
  private
    Fcod_provincia: string;
    Fcod_regione: string;
    Fprovincia: string;
    FRegione: string;
    Findex_provincia: integer;
    Findex_Regione: integer;
    FCitta: string;
    FJanuaAddress: TJanuaRecordAddress;
    FWorkPhone: string;
    FPhone: string;
    FCellularPhone: string;
    FFaxNumber: string;
    FAddressMail: string;
    Fpostalcode: unicodestring;
    FNumber: unicodestring;
    FAddress: unicodestring;
    procedure SeTRecordAddress(const Value: TJanuaRecordAddress);
    procedure SetCellularPhone(const Value: string);
    procedure SetFaxNumber(const Value: string);
    procedure SetPhone(const Value: string);
    procedure SetWorkPhone(const Value: string);
    procedure SetAddressMail(const Value: string);
    procedure SetAddress(const Value: unicodestring);
    procedure SetNumber(const Value: unicodestring);
    procedure Setpostalcode(const Value: unicodestring);
  public

  protected
    procedure SetContryName(const Value: string); override;
    procedure SetCountryID(const Value: smallint); override;
    procedure SetSelectedCountry(const Value: TCountry); override;
    procedure SetDistrictID(const Value: integer); override;
    procedure SetDistrictName(const Value: string); override;
    procedure SetRegionID(const Value: smallint); override;
    procedure SetRegionName(const Value: string); override;
    procedure SetTownID(const Value: integer); override;
    procedure SetLocation(const Value: TRecordLocation); override;
    procedure SetTownName(const Value: string); override;
  published
    property Address: unicodestring read FAddress write SetAddress;
    property Number: unicodestring read FNumber write SetNumber;
    property postalcode: unicodestring read Fpostalcode write Setpostalcode;
    property JanuaAddress: TJanuaRecordAddress read FJanuaAddress write SeTRecordAddress;
    property Phone: string read FPhone write SetPhone;
    property CellularPhone: string read FCellularPhone write SetCellularPhone;
    property WorkPhone: string read FWorkPhone write SetWorkPhone;
    property FaxNumber: string read FFaxNumber write SetFaxNumber;
    property AddressMail: string read FAddressMail write SetAddressMail;
  end;

{$METHODINFO OFF}

implementation

uses Janua.Application.Framework, Janua.Core.Functions;

{ TJanuaLocation }

constructor TJanuaLocation.Create;
begin
  inherited;
  FListaNazioni := TStringList.Create;
  FListaProvince := TStringList.Create;
  FListaRegioni := TStringList.Create;
  FListaComuni := TStringList.Create;
  self.ResetCountry;
  self.FModified := false;
end;

destructor TJanuaLocation.Destroy;
begin
  FListaProvince.Free;
  FListaRegioni.Free;
  FListaComuni.Free;
  FListaNazioni.Free;
  inherited;
end;

procedure TJanuaLocation.ResetCountry;
begin
  if not self.FCountryResetting then
    try
      self.FCountryResetting := True;

      WriteLog('TJanuaLocation.ResetCountry :', '');
      self.FLocation.Country.Reset;

      if CountryID <> 0 then
        self.CountryID := 0;

      if self.CountryName <> '' then
        CountryName := '';

      if self.CountryIndex > -1 then
        CountryIndex := -1;

      if self.ListaRegioni.Count > 0 then
        self.ListaRegioni.Clear;

      self.ResetRegion;
    finally
      self.FCountryResetting := false
    end;
end;

procedure TJanuaLocation.ResetRegion;
begin
  if not self.FRegionResetting then
    try
      self.FRegionResetting := True;
      FRegionName := '';
      self.FLocation.ResetRegion;
      if RegionName > '' then
        self.RegionName := '';
      if RegionID <> 0 then
        self.RegionID := 0;
      if RegionIndex <> -1 then
        self.RegionIndex := -1;
      if self.ListaProvince.Count > 0 then
        self.ListaProvince.Clear;
      self.ResetDistrict;
    finally
      FRegionResetting := false;
    end;
end;

procedure TJanuaLocation.ResetDistrict;
begin
  if not self.FDistrictResetting then
    try
      FDistrictResetting := True;
      WriteLog('TJanuaLocation.ResetDistrict :', '');
      self.FLocation.ResetDistrict;
      if DistrictID <> 0 then
        DistrictID := 0;
      if DistrictName <> '' then
        DistrictName := '';
      if self.DistrictIndex <> -1 then
        self.DistrictIndex := -1;
      if self.ListaComuni.Count > 0 then
        self.ListaComuni.Clear;
      self.ResetTowns;
    finally
      FDistrictResetting := false;
    end;
end;

procedure TJanuaLocation.ResetTowns;
begin
  self.WriteLog('TJanuaLocation.ResetTowns', '');
  if not self.FTownResetting then
    try
      self.FTownResetting := True;
      if TownID > 0 then
        TownID := 0;
      if TownName <> '' then
        TownName := '';
      if self.TownIndex <> -1 then
        self.TownIndex := -1;
      self.FLocation.ResetTown;
    finally
      FTownResetting := false;
    end;
end;

procedure TJanuaLocation.SetContryName(const Value: string);
begin
  if (Value <> FCountryName) or (Value <> FLocation.CountryRecord.Country.Name) then
  begin
    FCountryName := Value;

    if (self.FCountryName <> self.FLocation.CountryRecord.Country.Name) then
    begin
      if Assigned(self.FCountrySearch) { and self.FCountrySearch.Active }
      then
      begin
        if FCountrySearch.CountryName = Value then
        begin
          // imposta la nazione selezionata sul Record in base alla Ricerca effettuata ...............
          SetSelectedCountry(FCountrySearch.RecordCountrySearch.SelectedCountry);
        end
        else
        begin
          if FCountrySearch.CountryByName(Value) then
            SetSelectedCountry(FCountrySearch.RecordCountrySearch.SelectedCountry);
        end;
      end;
    end;
    // Notify('ContryName');
  end;
end;

procedure TJanuaLocation.SetCountryID(const Value: smallint);
begin
  if (Value <> FCountryID) or (self.FCountryName <> self.FLocation.CountryRecord.Country.Name) then
  begin
    self.FCountryID := Value;
    if self.FCountryID = FLocation.CountryRecord.Country.ID then
      SetSelectedCountry(FLocation.CountryRecord);
  end;
  // Notify('CountryID');
end;

procedure TJanuaLocation.SetCountryIndex(const Value: integer);
begin
  self.WriteLog('TJanuaLocation.SetCountryIndex ', Value.ToString());
  if Value = -1 then
  begin
    self.ResetCountry;
    FCountryIndex := -1;
  end
  else if Value <> FCountryIndex then
  begin
    if Value > self.FListaNazioni.Count - 1 then
    begin
      FCountryIndex := -1;
      self.ResetCountry
    end
    else
    begin
      if Assigned(FCountrySearch) and (CountrySearch.FRecordCountrySearch.SelectedCountry.Country.Name = FListaNazioni
        [Value]) then
      begin
        FCountryIndex := Value;
        self.FLocation.CountryRecord := FCountrySearch.FRecordCountrySearch.SelectedCountry;
        self.WriteLog('Assegnata Nazione: ', self.FListaNazioni[Value]);
        self.UpdateCountry;
      end;

    end;
  end;

  // Notify('CountryIndex');
end;

procedure TJanuaLocation.SetCountrySearch(const Value: TCountrySearch);
begin
  FCountrySearch := Value;
end;

procedure TJanuaLocation.SetDistrictID(const Value: integer);
begin
  if (Value > 0) and (FDistrictID <> Value) then
  begin
    FDistrictID := Value;
    if FLocation.District.ID <> FDistrictID then
      if self.FLocation.SetDistrictID(FDistrictID) then
        self.UpdateDistrict
      else
        self.ResetDistrict;
  end
  else if (Value = 0) then
  begin
    self.ResetDistrict;
    self.FDistrictID := 0;
  end;
  // Notify('DistrictID');
end;

procedure TJanuaLocation.SetDistrictIndex(const Value: integer);
begin
  WriteLog('TJanuaLocation.SetDistrictIndex: ', Value.ToString() + ', FDistrictIndex=' + FDistrictIndex.ToString());
  if (Value > -1) and (self.FDistrictIndex <> Value) and (self.FListaProvince.Count >= Value + 1) then
  begin
    self.FDistrictIndex := Value;
    WriteLog('TJanuaLocation.SetDistrictIndex:', ' FDistrictName=' + FDistrictName + ', FListaProvince[Value]=' +
      FListaProvince[Value]);
    if self.FDistrictName <> (self.FListaProvince[Value]) then
    begin
      if self.FLocation.SetDistrictName(self.FListaProvince[Value]) then
        self.UpdateDistrict
      else
        self.ResetDistrict
    end;
  end
  else if (Value = -1) or (FListaRegioni.Count < Value + 1) then
  begin
    self.FDistrictIndex := -1;
    self.ResetDistrict;
  end;
  // Notify('DistrictIndex');
end;

procedure TJanuaLocation.SetDistrictName(const Value: string);
begin
  // self.WriteLog('TJanuaLocation.SetDistrictName Value=' + Value + ', FDistrictName=' + FDistrictName);

  if (Value > '') and (FDistrictName <> Value) then
  begin
    FDistrictName := Value;
    if FLocation.District.Name <> FDistrictName then
      if self.FLocation.SetDistrictName(FDistrictName) then
        self.UpdateDistrict
      else
        self.ResetDistrict;
  end
  else if (Value = '') then
  begin
    self.FDistrictName := '';
    self.ResetDistrict;
  end;

  // Notify('DistrictName');
end;

procedure TJanuaLocation.SetIsSet(const Value: boolean);
begin
  FIsSet := Value;
  // Notify('IsSet');
end;

procedure TJanuaLocation.SetListaComuni(const Value: TStrings);
begin
  if Assigned(Value) then
    self.FListaComuni.Assign(Value)
  else
    self.FListaComuni.Clear;
  // Notify('ListaComuni');
end;

procedure TJanuaLocation.SetListaNazioni(const Value: TStrings);
begin
  if Assigned(Value) then
    self.FListaNazioni.Assign(Value)
  else
    self.FListaNazioni.Clear;
  // Notify('ListaNazioni');
end;

procedure TJanuaLocation.SetListaProvince(const Value: TStrings);
begin
  if Assigned(Value) then
  begin
    if not FListaProvince.Equals(Value) then
    begin
      self.FListaProvince.Assign(Value);
      JSortTStrings(FListaProvince);
      self.DistrictIndex := self.FListaProvince.IndexOf(self.DistrictName);
      // self.WriteLog('TJanuaLocation.SetListaProvince: self.DistrictIndex=' + RegionIndex.ToString +
      // ', DistrictName=' + self.DistrictName);
    end;
  end
  else
  begin
    if not Assigned(Value) and Assigned(self.FListaProvince) then
    begin
      self.FListaProvince.Clear;
      self.FDistrictIndex := -1;
      // Notify('ListaProvince');
    end;
  end;
  // Notify('ListaProvince');
end;

procedure TJanuaLocation.SetListaRegioni(const Value: TStrings);
begin
  if Assigned(Value) then
  begin
    if not FListaRegioni.Equals(Value) then
    begin
      self.FListaRegioni.Assign(Value);
      JSortTStrings(FListaRegioni);
      self.RegionIndex := self.FListaRegioni.IndexOf(FRegionName);
      // self.WriteLog('TJanuaLocation.SetListaRegioni: self.RegionIndex=' + RegionIndex.ToString +
      // ', FRegionName=' + self.RegionName);
      // Notify('ListaRegioni');
    end;
  end
  else
  begin
    if not Assigned(Value) and Assigned(self.FListaProvince) then
    begin
      self.FListaRegioni.Clear;
      self.RegionIndex := -1;
      // Notify('ListaRegioni');
    end;
  end;
end;

procedure TJanuaLocation.SetLocation(const Value: TRecordLocation);
begin
  FLocation := Value;
  // andrebbe impostato anche il 'country ....' :)
  if self.FLocation.CountryRecord.Country.ID > 0 then
  begin
    self.IsSet := True;
    self.SetCountryID(Value.Country.ID);
    self.SetRegionID(Value.Region.ID);
    self.SetDistrictID(Value.District.ID);
    self.SetTownID(Value.Town.ID);
  end;
  // Vediamo se c'è altro da Impostare ....
end;

procedure TJanuaLocation.SetModified(const Value: boolean);
begin
  FModified := Value;
  // Notify('Modified');
end;

procedure TJanuaLocation.SetRegionID(const Value: smallint);
begin
  if (Value > 0) and (FRegionID <> Value) then
  begin
    FRegionID := Value;
    if self.FLocation.SetRegionID(FRegionID) then
      self.UpdateRegion
    else
      self.ResetRegion;
  end
  else if (Value = 0) then
  begin
    self.FRegionID := 0;
    self.ResetRegion;
  end;
  // Notify('RegionID');
end;

procedure TJanuaLocation.SetRegionIndex(const Value: integer);
begin
  if (Value > -1) and (FRegionIndex <> Value) and (FListaRegioni.Count >= Value + 1) then
  begin
    FRegionIndex := Value;
    if self.FRegionName <> (self.ListaRegioni[Value]) then
    begin
      if self.FLocation.SetRegionName(self.ListaRegioni[Value]) then
        self.UpdateRegion
      else
        self.ResetRegion;
    end;
    // Notify('RegionIndex');
  end
  else if (Value = -1) or (FListaRegioni.Count < Value + 1) then
  begin
    self.FRegionIndex := -1;
    self.ResetRegion;
    // Notify('RegionIndex');
  end;
end;

procedure TJanuaLocation.SetRegionName(const Value: string);
begin
  if (Value > '') and (FRegionName <> Value) then
  begin
    FRegionName := Value;
    if self.FRegionID <> self.FLocation.Region.ID then
    begin
      if self.FLocation.SetRegionName(FRegionName) then
        self.UpdateRegion
      else
        self.ResetRegion;
    end;

    // Notify('RegionName');
  end
  else if (Value = '') and (self.FRegionName > '') then
  begin
    self.FRegionName := Value;
    self.ResetRegion;
    // Notify('RegionName');
  end;

end;

procedure TJanuaLocation.SetReset(const Value: boolean);
begin
  FReset := Value;
  if not FReset then
    self.ResetCountry;
end;

procedure TJanuaLocation.SetTownID(const Value: integer);
begin
  if (Value > 0) and (FTownID <> Value) then
  begin
    FTownID := Value;
    if FLocation.Town.ID <> Value then
    begin
      if self.FLocation.SetTownID(FTownID) then
        self.UpdateTowns
      else
        self.ResetTowns;
    end;
  end
  else if (Value = 0) then
  begin
    self.FTownID := 0;
    self.ResetTowns;
  end;
  // Notify('TownID');
end;

procedure TJanuaLocation.SetTownIndex(const Value: integer);
begin
  self.WriteLog('TJanuaLocation.SetTownIndex: ', Value.ToString());

  self.WriteLog('TJanuaLocation.SetTownIndex: ListaComuni=', FListaComuni.Count.ToString());

  if (Value > -1) and (FTownIndex <> Value) and (FListaComuni.Count >= Value + 1) then
  begin
    FTownIndex := Value;
    if self.FLocation.Town.Name <> (self.FListaComuni[Value]) then
    begin
      if self.FLocation.SetTownName(self.FListaComuni[Value]) then
        self.UpdateTowns
      else
        self.ResetTowns;
    end;
    // Notify('TownIndex');
  end
  else if (Value = -1) or (FListaComuni.Count < Value + 1) then
  begin
    self.FTownIndex := -1;
    self.ResetTowns;
    // Notify('TownIndex');
  end;

end;

procedure TJanuaLocation.SetTownName(const Value: string);
begin
  if (Value > '') and (FTownName <> Value) then
  begin
    FTownName := Value;
    if self.FLocation.SetTownName(FTownName) then
      self.UpdateTowns
    else
      self.ResetTowns;
  end
  else if (Value = '') then
  begin
    self.FTownName := '';
    self.ResetTowns;
  end;
  // self.Notify('TownName');

end;

procedure TJanuaLocation.SetSelectedCountry(const Value: TCountry);
begin
  if (self.FLocation.CountryRecord.Country.ID <> Value.Country.ID) or
    (Length(FLocation.CountryRecord.Regions) <> self.ListaRegioni.Count) then
  begin
    FLocation.CountryRecord := Value;
    // Imposta il record di Ricerca di FLocation (Flocation è il Record di Localizzazioine e Ricerca)
    Active := True;
    WriteLog('TJanuaLocation.SetSelectedCountry FCountryName := ', FLocation.CountryRecord.Country.Name);
    self.UpdateCountry;
    WriteLog('TJanuaLocation.SetSelectedCountry', ' Create String ListS');

    { Creazione della lista delle nazioni ********************************************************** }

    { Non Agisco sull'evento di cambi Index della nazione perché mi sto attivand }

    if (Length(FLocation.CountryRecord.Regions) > 0) then
    begin
      self.SetListaRegioni((FLocation.CountryRecord.ListRegions));
      // se la nazione è inserita ma la location non è 'set' allora imposto i valori di Default ...
      if not self.FLocation.Region.ID > 0 then
      begin
        WriteLog('TJanuaLocation.SetSelectedCountry', ' not set ListDistricts: ' + FListaRegioni[0]);
        if self.FLocation.SetRegionName(FListaRegioni[0]) then
          UpdateRegion
        else
          self.ResetRegion
      end
      else
      begin
        if self.FLocation.Region.ID > 0 then
        begin
          if self.FLocation.SetRegionID(self.FLocation.Region.ID) then
            self.UpdateRegion
          else
            self.ResetRegion
        end
        else
          self.ResetRegion;

        if (self.FLocation.District.ID > 0) then
          self.SetDistrictID(self.FLocation.District.ID)
        else
          self.ResetDistrict;

        if (self.FLocation.Town.ID > 0) then
          self.SetTownID(self.FLocation.Town.ID)
        else
          self.ResetTowns;

      end;
    end;
  end;
end;

procedure TJanuaLocation.UpdateTowns;
begin
  if not self.FTownUpdating then
    try
      self.FTownUpdating := True;
      if self.FLocation.CountryRecord.SelectedRegion.SelectedDistrict.SelectedTown.ID > 0 then
      begin
        self.TownID := FLocation.CountryRecord.SelectedRegion.SelectedDistrict.SelectedTown.ID;
        self.TownName := FLocation.CountryRecord.SelectedRegion.SelectedDistrict.SelectedTown.Name;
        if self.FListaComuni.Count > 0 then
          self.TownIndex := self.FListaComuni.IndexOf(self.FTownName);
      end
      else
        self.ResetTowns;
    finally
      FTownUpdating := false
    end;
end;

procedure TJanuaLocation.UpdateCountry;
begin
  if not self.FCountryUpdating then
    try
      self.FCountryUpdating := True;
      if self.FLocation.CountryRecord.Country.ID > 0 then
      begin
        self.FLocation.Country := self.FLocation.CountryRecord.Country;
        self.CountryID := self.FLocation.Country.ID;
        self.CountryName := self.FLocation.Country.Name;
        if self.FListaNazioni.IndexOf(FCountryName) = -1 then
          ListaNazioni.Add(CountryName);
        WriteLog('TJanuaLocation.SetSelectedCountry FSelectedCountry.ListRegions: ',
          Length(FLocation.CountryRecord.Regions).ToString());
        self.FCountryIndex := self.FListaNazioni.IndexOf(FCountryName);
      end
      else
      begin
        self.ResetCountry;
      end;
    finally
      self.FCountryUpdating := false;
    end;
end;

procedure TJanuaLocation.UpdateDistrict;
begin
  WriteLog('TJanuaLocation.UpdateDistrict:  FDistrictName=', self.FDistrictName);
  WriteLog('TJanuaLocation.UpdateDistrict:  FLocation.District=', FLocation.District.ToString());
  WriteLog('TJanuaLocation.UpdateDistrict:  FDistrictUpdating=', FDistrictUpdating.ToString());

  if not self.FDistrictUpdating then
    try
      self.FDistrictUpdating := True;
      self.WriteLog('FLocation.District.ID = ', FLocation.District.ID.ToString);
      if (FLocation.District.ID > 0) then
      begin
        DistrictID := FLocation.District.ID;
        DistrictName := FLocation.District.Name;
        WriteLog('TJanuaLocation.UpdateDistrict: FListaProvince.Count=', FListaProvince.Count.ToString());
        if self.FListaProvince.Count > 0 then
          DistrictIndex := self.FListaProvince.IndexOf(DistrictName)
        else
          DistrictIndex := -1;
        WriteLog('TJanuaLocation.UpdateDistrict: ', FLocation.District.Name + ' Towns: ' +
          Length(FLocation.CountryRecord.SelectedRegion.SelectedDistrict.Towns).ToString());
        if Length(FLocation.CountryRecord.SelectedRegion.SelectedDistrict.Towns) > 0 then
        begin
          FListaComuni.Clear;
          FListaComuni.Assign(FLocation.CountryRecord.SelectedRegion.SelectedDistrict.ListTown);
          WriteLog('TJanuaServerJPublic.UpdateDistrict FSelectedDistrict:',
            FLocation.CountryRecord.SelectedRegion.SelectedDistrict.ToString(false));
          JSortTStrings(FListaComuni);
          if self.FTownID = 0 then
            self.FTownID := self.FLocation.Town.ID;
          if FLocation.SetTownID(FTownID) then
          begin
            UpdateTowns;
            WriteLog('TJanuaServerJPublic.UpdateDistrict ListTown: ',
              SelectedCountry.SelectedRegion.SelectedDistrict.SelectedTown.Name);
          end
          else
          begin
            if self.FListaComuni.Count > 0 then
            begin
              if SelectedCountry.SelectedRegion.SelectedDistrict.GetTownByName(FListaComuni[0]) then
                UpdateTowns;
              WriteLog('TJanuaServerJPublic.UpdateDistrict ListTown(0): ', FListaComuni[0]);
            end
            else
            begin
              self.ResetTowns;
            end;
          end;
        end;
      end
      else
        ResetDistrict;
    finally
      self.FDistrictUpdating := false;
    end;

end;

procedure TJanuaLocation.UpdateRegion;
begin
  // if not self.FRegionUpdating then
  try
    self.FRegionUpdating := True;
    if (FLocation.CountryRecord.SelectedRegion.Region.ID > 0) then
    begin
      {
        if RegionID <> FLocation.Region.ID then
        SetRegionID(FLocation.Region.ID);

        if RegionName <> FLocation.Region.Name then
        SetRegionName(FLocation.Region.Name);

        if RegionIndex <> FListaRegioni.IndexOf(RegionName) then
        SetRegionIndex(FListaRegioni.IndexOf(self.RegionName));
      }

      if FRegionID <> FLocation.Region.ID then
      begin
        FRegionID := FLocation.Region.ID;
        // Notify('RegionID');
      end;

      if FRegionName <> FLocation.Region.Name then
      begin
        FRegionName := FLocation.Region.Name;
        // Notify('RegionName');
      end;

      if RegionIndex <> FListaRegioni.IndexOf(RegionName) then
      begin
        FRegionIndex := FListaRegioni.IndexOf(RegionName);
        // Notify('RegionIndex');
      end;

      WriteLog('TJanuaLocation.UpdateRegion FRegionIndex=', self.FRegionIndex.ToString + ', RegionName=' +
        self.FRegionName + ', RegionID=' + self.FRegionID.ToString);

      WriteLog('UpdateRegion: ', FRegionName + 'Distretti: ' + Length(FLocation.CountryRecord.SelectedRegion.Districts)
        .ToString());

      if Length(FLocation.CountryRecord.SelectedRegion.Districts) > 0 then
      begin
        WriteLog('TJanuaServerJPublic.UpdateRegion FSelectedRegion:',
          FLocation.CountryRecord.SelectedRegion.ToString(false));

        self.SetListaProvince(FLocation.CountryRecord.SelectedRegion.ListDistricts);

        if self.FDistrictID = 0 then
          self.FDistrictID := self.FLocation.District.ID;
        WriteLog('FSelectedCountry.SelectedRegion.GetDistrictbyID: ', FDistrictID.ToString());

        // ricerco il distretto con id di default e vedo come va ... ..........................
        if FLocation.SetDistrictID(FDistrictID) then
        begin
          WriteLog('TJanuaServerJPublic.UpdateRegion ListDistrict: ', FDistrictName);
          self.UpdateDistrict;
        end
        else
        begin
          if self.FListaProvince.Count > 0 then
          begin
            WriteLog('TJanuaServerJPublic.UpdateRegion ListDistrict: ', FListaProvince[0]);
            if FLocation.SetDistrictName(FListaProvince[0]) then
              self.UpdateDistrict;
          end
          else
          begin
            self.ResetDistrict;
          end;
        end;
      end
      else
      begin
        ResetRegion;
      end;
    end;
  except
    // self.FRegionUpdating := false;
    on e: exception do
      self.WriteError('TJanuaLocation.UpdateRegion', '', e);
  end;
end;

{ TJanuaLocationAddress }

procedure TJanuaLocationAddress.SetAddress(const Value: unicodestring);
begin
  FAddress := Value;
  self.FJanuaAddress.Address := Value;
  // self.Notify('Address');
end;

procedure TJanuaLocationAddress.SetAddressMail(const Value: string);
begin
  self.FAddressMail := Value;
  self.FJanuaAddress.AddressMail := Value;
  // self.Notify('AddressMail');
end;

procedure TJanuaLocationAddress.SetCellularPhone(const Value: string);
begin
  self.FCellularPhone := Value;
  self.FJanuaAddress.CellularPhone := Value;
  // Notify('CellularPhone');
end;

procedure TJanuaLocationAddress.SetContryName(const Value: string);
begin
  inherited;
  self.FJanuaAddress.Location := self.FLocation;
end;

procedure TJanuaLocationAddress.SetCountryID(const Value: smallint);
begin
  inherited;
  self.FJanuaAddress.Location := self.FLocation;
end;

procedure TJanuaLocationAddress.SetDistrictID(const Value: integer);
begin
  inherited;
  self.FJanuaAddress.Location := self.FLocation;
end;

procedure TJanuaLocationAddress.SetDistrictName(const Value: string);
begin
  inherited;
  self.FJanuaAddress.Location := self.FLocation;
end;

procedure TJanuaLocationAddress.SetFaxNumber(const Value: string);
begin
  FFaxNumber := Value;
  self.FJanuaAddress.FaxNumber := self.FFaxNumber;
  // self.Notify('FaxNumber');
end;

procedure TJanuaLocationAddress.SetLocation(const Value: TRecordLocation);
begin
  inherited;
  self.FJanuaAddress.Location := self.FLocation;
end;

procedure TJanuaLocationAddress.SetNumber(const Value: unicodestring);
begin
  FNumber := Value;
  self.FJanuaAddress.Number := Value;
  // self.Notify('Number');
end;

procedure TJanuaLocationAddress.SeTRecordAddress(const Value: TJanuaRecordAddress);
begin
  try
    FJanuaAddress := Value;
    SetLocation(Value.Location);
    // passo la reord Location alla mia location .... e vedo di metterla come 'isSet';
    self.IsSet := True;
    self.Fcod_provincia := Value.Location.District.Code;
    self.Fcod_regione := Value.Location.Region.Code;
    self.Fprovincia := Value.Location.District.Name;
    self.FRegione := Value.Location.Region.Name;
    self.Findex_provincia := Value.Location.District.index;
    self.Findex_Regione := Value.Location.Region.index;
    self.FCitta := Value.Location.Town.Name;
    self.FPhone := Value.Phone;
    self.FFaxNumber := Value.FaxNumber;
    self.FCellularPhone := Value.CellularPhone;
    self.FWorkPhone := Value.WorkPhone;
    self.FAddress := Value.Address;
    self.FAddressMail := Value.AddressMail;
    self.Fpostalcode := Value.postalcode;
    self.FNumber := Value.Number;
  except
    on e: exception do
      self.WriteError('TJanuaLocationAddress.SeTRecordAddress', ' Errore: ', e);
  end;
end;

procedure TJanuaLocationAddress.SetPhone(const Value: string);
begin
  FPhone := Value;
  self.FJanuaAddress.Phone := self.FPhone;
  // self.Notify('Phone');
end;

procedure TJanuaLocationAddress.Setpostalcode(const Value: unicodestring);
begin
  Fpostalcode := Value;
  self.FJanuaAddress.postalcode := Value;
  // self.Notify('postalcode');
end;

procedure TJanuaLocationAddress.SetRegionID(const Value: smallint);
begin
  inherited;
  self.FJanuaAddress.Location := self.FLocation;
end;

procedure TJanuaLocationAddress.SetRegionName(const Value: string);
begin
  inherited;
  self.FJanuaAddress.Location := self.FLocation;
end;

procedure TJanuaLocationAddress.SetSelectedCountry(const Value: TCountry);
begin
  inherited;
  self.FJanuaAddress.Location := self.FLocation;
end;

procedure TJanuaLocationAddress.SetTownID(const Value: integer);
begin
  inherited;
  self.FJanuaAddress.Location := self.FLocation;
end;

procedure TJanuaLocationAddress.SetTownName(const Value: string);
begin
  inherited;
  self.FJanuaAddress.Location := self.FLocation;
end;

procedure TJanuaLocationAddress.SetWorkPhone(const Value: string);
begin
  FWorkPhone := Value;
  self.FJanuaAddress.WorkPhone := self.FWorkPhone;
  // self.Notify('WorkPhone');
end;

{ TCountrySearch }

procedure TCountrySearch.Clear;
begin
  self.FCountryID := 0;
  self.FCountryName := '';
  self.FFound := false;
  SetLength(self.FRecordCountrySearch.Countries, 0);
end;

function TCountrySearch.CountryByID(ID: integer): boolean;
begin
  if self.FRecordCountrySearch.SelectedCountry.Country.ID = ID then
  begin
    self.FFound := True;
    self.FCountryName := FRecordCountrySearch.SelectedCountry.Country.Name;
    self.SelectedCountry := self.FRecordCountrySearch.SelectedCountry;
  end
  else if ID = 0 then
  begin
    self.FCountryName := '';
    self.FFound := false;
  end
  else
  begin
    Result := self.InternalCountryByID(ID);
    self.FFound := Result;
    if Result then
      self.WriteLog('TCountrySearch Trovato country id: ' + self.FCountryName);
  end;

  Result := self.Found;
  if Result then
    self.WriteLog('TCountrySearch.CountryByID: Risultato trovato nazione: ' + self.FCountryName)
  else
    self.WriteLog('TCountrySearch.CountryByID: Risultato non trovato attivo la procedura server');

  if not self.Found then
  begin
    if not Assigned(self.FJanuaServerJPublic) then
    begin
      Result := false;
      self.WriteLog('TCountrySearch.CountryByID: Non assegnato: FJanuaServerJPublic');
      Exit;
    end;

    if not FJanuaServerJPublic.Active then
    begin
      self.WriteLog('TCountrySearch CountryByID: Attivo: FJanuaServerJPublic');
      FJanuaServerJPublic.Active := True;
    end;

    Result := FJanuaServerJPublic.CountryID = ID;

    if Result then
    begin
      self.Found := True;
      self.RecordCountrySearch.AddCountry(FJanuaServerJPublic.SelectedCountry);
      self.FCountryID := ID;
      self.FCountryName := RecordCountrySearch.SelectedCountry.Country.Name;
      self.FSelectedCountry := self.FRecordCountrySearch.SelectedCountry;
      self.WriteLog('TCountrySearch CountryByID: Risultato trovato nazione: ' + self.FCountryName);
    end
    else
    begin
      WriteLog('TCountrySearch CountryByID: FJanuaServerJPublic.SetCountryByID: ' + ID.ToString());
      Result := FJanuaServerJPublic.SetCountryByID(ID);
      if Result then
      begin
        self.Found := True;
        self.RecordCountrySearch.AddCountry(FJanuaServerJPublic.SelectedCountry);
        self.FCountryID := ID;
        self.FCountryName := RecordCountrySearch.SelectedCountry.Country.Name;
        self.FSelectedCountry := self.FRecordCountrySearch.SelectedCountry;
        self.WriteLog('CountryByID: Risultato trovato nazione: ' + self.FCountryName);
      end;
    end;

  end;

end;

function TCountrySearch.CountryByName(Name: string): boolean;
begin
  Result := false;
  { TODO -oRiccardo -cSystem : Implementare funzione CountryByName in CountrySearch }
end;

constructor TCountrySearch.Create(AOwner: TComponent);
begin
  inherited;
  self.FDefaultCountryID := 1;
end;

destructor TCountrySearch.Destroy;
begin
  inherited;
end;

function TCountrySearch.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        WriteLog('TCountrySearch.Activate: JPublic = ' + Assigned(FJanuaServerJPublic).ToString);
        if not Assigned(self.FJanuaServerJPublic) then
        begin
          self.WriteLog('TCountrySearch.Activate: Non assegnato FJanuaServerJPublic esco.... ');
          Result := false;
          LocalRaiseException('TCountrySearch.Activate: Non assegnato FJanuaServerJPublic');
        end
        else
        begin
          self.WriteLog('TCountrySearch.Activate: self.CountryByID = ' + DefaultCountryID.ToString());
          Result := self.FJanuaServerJPublic.Active and CountryByID(FJanuaServerJPublic.CountryID);
        end;
      end;
    except
      on e: exception do
        RaiseException('InternalActivate', e, self);
    end;

end;

function TCountrySearch.InternalCountryByID(ID: integer): boolean;
begin
  Result := self.FRecordCountrySearch.CountryByID(ID);
  if Result then
  begin
    self.FCountryName := FRecordCountrySearch.SelectedCountry.Country.Name;
    self.FFound := True;
  end
  else
  begin
    self.FCountryName := '';
    self.FFound := false;
  end;
end;

function TCountrySearch.InternalCountryByName(Name: string): boolean;
begin
  { TODO -oRiccardo -cSystem : Implementare funzione InternalCountryByName in CountrySearch }
  Result := false;
end;

procedure TCountrySearch.InternalDeactivate;
begin
  FCountryID := 1;
  FCountryName := 'Repubblica Italiana';
  inherited;
end;

procedure TCountrySearch.SetCountryID(const Value: integer);
begin
  if FCountryID <> Value then
  begin
    self.FFound := self.CountryByID(Value);
    // se la ricerca va a buon fine imposto il nome country altrimenti no ..........................
    if not self.FFound then
      self.FCountryName := ''
    else
      self.FCountryName := self.FRecordCountrySearch.SelectedCountry.Country.Name;

    FCountryID := Value;
  end;
end;

procedure TCountrySearch.SetCountryName(const Value: string);
begin
  FCountryName := Value;
end;

procedure TCountrySearch.SetDefaultCountryID(const Value: smallint);
begin
  FDefaultCountryID := Value;
end;

procedure TCountrySearch.SetFound(const Value: boolean);
begin
  FFound := Value;
end;

procedure TCountrySearch.SetRecordCountrySearch(const Value: TRecordCountrySearch);
begin
  FRecordCountrySearch := Value;
end;

procedure TCountrySearch.SetSelectedCountry(const Value: TCountry);
begin
  FSelectedCountry := Value;
end;

{ TMailSenderParams }

function TMailSenderParams.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := Assigned(self.FDBParamsReader);
      end;
    except
      on e: exception do
        RaiseException('InternalActivate', e, self);
    end;
end;

procedure TMailSenderParams.SetDBParamsReader(const Value: TCustomDBParamsReader);
begin
  FDBParamsReader := Value;
end;

{ TCustomDBParamsReader }

procedure TCustomDBParamsReader.Create;
begin

  with self.FInternalDataset.Create(nil) do
  begin
    with TStringField.Create(nil) do
    begin
      Name := 'FInternalDatasetParamName';
      FieldKind := fkData;
      FieldName := 'ParamName';
      Size := 512;
      DataSet := self.FInternalDataset;
    end; // FieldName
    with TStringField.Create(nil) do
    begin
      Name := 'FInternalDatasetParamValue';
      FieldKind := fkData;
      FieldName := 'ParamValue';
      Size := 8192;
      DataSet := self.FInternalDataset;
    end; // Last Name
    FInternalDataset.CreateDataSet
  end;
end;

{ TJanuaServerCountry }

procedure TCountrySearch.SetJanuaServerJPublic(const Value: TJanuaCustomServerJPublic);
begin
  FJanuaServerJPublic := Value;
end;

{ TJanuaCustomServerJPublic }

function TJanuaCustomServerJPublic.CheckUp: boolean;
begin
  try
    Result := inherited;
    self.WriteLog('TJanuaCustomServerJPublic.CheckUp System Result=' + Result.ToString());
    if not Assigned(self.FJanuaSystem) then
    begin
      Result := false;
      self.LocalRaiseException('TJanuaCustomServerJPublic.CheckUp: Error not Selected System');
    end
    else
    begin
      Result := True;
    end;

    if Result then
    begin
      Verbose := TJanuaApplication.Verbose;

      if FJanuaSystem.Active then
      begin
        self.SessionKey := self.JanuaSystem.SessionKey;
        self.FJanuaServerSession := self.JanuaSystem.JanuaServerSession;
        self.WriteLog('TJanuaCustomServerJPublic.CheckUp: JanuaSystem.Active = True');
        Result := True;
      end;

    end;

  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerJPublic.CheckUp', e);
    end;

  end;
end;

constructor TJanuaCustomServerJPublic.Create(AOwner: TComponent);
begin
  inherited;
  self.FDefaultCountryID := 1;
  self.WriteLog('self.FDefaultCountryID := 1');
end;

procedure TJanuaCustomServerJPublic.SetJanuaSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaSystem := Value;
end;

procedure TJanuaCustomServerJPublic.SetDefaultCountryID(const Value: smallint);
begin
  if self.Active then
    FDefaultCountryID := Value;
end;

destructor TJanuaCustomServerJPublic.Destroy;
begin;
  inherited;
end;

function TJanuaCustomServerJPublic.SetCountryByCode(cCode: string): boolean;
begin
  // This function has to be implemented by descendant classess
  Result := false;
end;

function TJanuaCustomServerJPublic.SetCountryByID(ID: smallint): boolean;
begin
  // This function has to be implemented by descendant classess
  Result := false;
end;

function TJanuaCustomServerJPublic.SetCountryByName(cName: string): boolean;
begin
  // This function has to be implemented by descendant classess
  Result := false;
end;

procedure TJanuaCustomServerJPublic.SetCountryID(const Value: smallint);
begin
  if self.Active then
  begin
    FCountryID := Value;
    FDefaultCountryID := Value;
    if Active then
      SetCountryByID(Value);
  end;
end;

procedure TJanuaCustomServerJPublic.SetCountryName(const Value: string);
begin
  if FCountryName <> Value then
  begin
    FCountryName := Value;
    if self.Active then
      SetCountryByName(Value);
  end;
end;

end.
