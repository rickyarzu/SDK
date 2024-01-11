unit Janua.Eroflora.dmAppLocalData;

interface

uses
  // System
  System.SysUtils, System.Classes, Data.DB, MemDS, VirtualTable, System.Sensors, System.Net.HttpClient,
  System.Sensors.Components, System.Net.URLClient, System.Net.HttpClientComponent, System.Diagnostics,
  // Janua
  Janua.Core.Classes, Janua.Core.Types, Janua.Anagraph.Types;

type
  TUpdateThread = class(TThread)
  strict private
    FNetHTTPRequest: TNetHTTPRequest;
    FvtTemp: TVirtualTable;
    FvtAnagraphsCategories: TVirtualTable;
    FCoordinates: TJanuaRecordCoordinates;
    procedure SetNetHTTPRequest(const Value: TNetHTTPRequest);
    procedure SetvtAnagraphsCategories(const Value: TVirtualTable);
    procedure SetvtTemp(const Value: TVirtualTable);
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
  private
    FLocationSensor: TLocationSensor;
    FLocalCoordinates: TLocalCoordinates;
    procedure SetLocationSensor(const Value: TLocationSensor);
    procedure SetLocalCoordinates(const Value: TLocalCoordinates);
  protected
    procedure Execute; override;
  public
    property LocalCoordinates: TLocalCoordinates read FLocalCoordinates write SetLocalCoordinates;
    property LocationSensor: TLocationSensor read FLocationSensor write SetLocationSensor;
    property NetHTTPRequest: TNetHTTPRequest read FNetHTTPRequest write SetNetHTTPRequest;
    property vtTemp: TVirtualTable read FvtTemp write SetvtTemp;
    property vtAnagraphsCategories: TVirtualTable read FvtAnagraphsCategories write SetvtAnagraphsCategories;
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
  end;

type
  TdmEurofloraAppLocalData = class(TDataModule)
    LocationSensor1: TLocationSensor;
    vtTemp: TVirtualTable;
    vtTempmaster_category_name: TWideStringField;
    vtTempmaster_image_id: TSmallintField;
    vtTempcategory_id: TSmallintField;
    vtTempcategory_name: TWideStringField;
    vtTempimage_id: TSmallintField;
    vtTempculture_code: TWideStringField;
    vtTemptrans_category_name: TWideStringField;
    vtTempdb_schema_id: TIntegerField;
    vtTempanagraph_id: TIntegerField;
    vtTempan_title: TWideStringField;
    vtTempan_name: TWideStringField;
    vtTempan_second_name: TWideStringField;
    vtTempan_last_name: TWideStringField;
    vtTempan_notes: TWideStringField;
    vtTempan_address: TWideStringField;
    vtTempan_town: TWideStringField;
    vtTempan_postal_code: TWideStringField;
    vtTempan_iso_country_code: TWideStringField;
    vtTempan_state_province: TWideStringField;
    vtTempan_phone: TWideStringField;
    vtTempan_phone2: TWideStringField;
    vtTempan_fax: TWideStringField;
    vtTempan_cellular: TWideStringField;
    vtTempan_code: TWideStringField;
    vtTempan_vat_numeric: TWideStringField;
    vtTempan_email: TWideStringField;
    vtTempan_web: TWideStringField;
    vtTempan_contact_id: TIntegerField;
    vtTempan_bank_account: TWideStringField;
    vtTempan_payment_des: TWideStringField;
    vtTempan_discount: TFloatField;
    vtTempan_distance: TIntegerField;
    vtTempan_distance_mesunit: TSmallintField;
    vtTempan_sex: TWideStringField;
    vtTempan_cod_comune: TWideStringField;
    vtTempan_cod_provincia: TWideStringField;
    vtTempan_credit_line: TFloatField;
    vtTempan_currency_id: TSmallintField;
    vtTempan_cat_id: TSmallintField;
    vtTempan_notes2: TWideStringField;
    vtTempan_notes3: TWideMemoField;
    vtTempan_edi: TBooleanField;
    vtTempan_privacy: TBooleanField;
    vtTempan_office_id: TSmallintField;
    vtTempan_cod_prov_rif: TWideStringField;
    vtTempan_data_fido: TDateField;
    vtTempan_user_insert: TWideStringField;
    vtTempan_user_update: TWideStringField;
    vtTempan_area_id: TSmallintField;
    vtTempan_agent_id: TSmallintField;
    vtTempan_area_code: TWideStringField;
    vtTempan_zone_id: TWideStringField;
    vtTempan_ins_id: TLargeintField;
    vtTempan_upd_id: TLargeintField;
    vtTempan_documents: TSmallintField;
    vtTempan_last_date: TDateField;
    vtTempan_birthdate: TDateField;
    vtTempan_office_type_id: TSmallintField;
    vtTempan_searchname: TWideStringField;
    vtTempan_extra_ue_flag: TBooleanField;
    vtTempan_external_code: TWideStringField;
    vtTempan_vat_id: TSmallintField;
    vtTempan_personal_fiscal_code: TWideStringField;
    vtTempan_privacy_print: TSmallintField;
    vtTempan_sms: TBooleanField;
    vtTempan_encrypted_fiscal_code: TWideStringField;
    vtTempan_vat_purcentage: TSmallintField;
    vtTempan_status: TSmallintField;
    vtTempan_ownsite: TBooleanField;
    vtTempan_insurance_id: TLargeintField;
    vtTempan_anagraphs_anagraph_id: TIntegerField;
    vtTempan_main_language_code: TWideStringField;
    vtTempan_main_culture_code: TWideStringField;
    vtTempan_fiscal_code: TWideStringField;
    vtTempan_main_group_id: TIntegerField;
    vtTempan_image_id: TLargeintField;
    vtTemplatitude: TFloatField;
    vtTemplongitude: TFloatField;
    vtTemptest: TFloatField;
    vtTempsearch_index: TWideStringField;
    vtTempan_birthplace: TWideStringField;
    vtTempan_birthplace_code: TWideStringField;
    vtTempanagraph64: TWideStringField;
    vtTempmain_category_id: TSmallintField;
    vtTemposm_id: TLargeintField;
    vtTempan_description: TWideStringField;
    vtTempmaster_category_id: TSmallintField;
    vtTempdistance: TFloatField;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    vtTempan_address_number: TStringField;
    vtAnagraphsCategories: TVirtualTable;
    vtAnagraphsCategoriesmaster_category_name: TWideStringField;
    vtAnagraphsCategoriesmaster_image_id: TSmallintField;
    vtAnagraphsCategoriescategory_id: TSmallintField;
    vtAnagraphsCategoriescategory_name: TWideStringField;
    vtAnagraphsCategoriesimage_id: TSmallintField;
    vtAnagraphsCategoriesculture_code: TWideStringField;
    vtAnagraphsCategoriestrans_category_name: TWideStringField;
    vtAnagraphsCategoriesdb_schema_id: TIntegerField;
    vtAnagraphsCategoriesanagraph_id: TIntegerField;
    vtAnagraphsCategoriesan_title: TWideStringField;
    vtAnagraphsCategoriesan_name: TWideStringField;
    vtAnagraphsCategoriesan_second_name: TWideStringField;
    vtAnagraphsCategoriesan_last_name: TWideStringField;
    vtAnagraphsCategoriesan_notes: TWideStringField;
    vtAnagraphsCategoriesan_address: TWideStringField;
    vtAnagraphsCategoriesan_town: TWideStringField;
    vtAnagraphsCategoriesan_postal_code: TWideStringField;
    vtAnagraphsCategoriesan_iso_country_code: TWideStringField;
    vtAnagraphsCategoriesan_state_province: TWideStringField;
    vtAnagraphsCategoriesan_phone: TWideStringField;
    vtAnagraphsCategoriesan_phone2: TWideStringField;
    vtAnagraphsCategoriesan_fax: TWideStringField;
    vtAnagraphsCategoriesan_cellular: TWideStringField;
    vtAnagraphsCategoriesan_code: TWideStringField;
    vtAnagraphsCategoriesan_vat_numeric: TWideStringField;
    vtAnagraphsCategoriesan_email: TWideStringField;
    vtAnagraphsCategoriesan_web: TWideStringField;
    vtAnagraphsCategoriesan_contact_id: TIntegerField;
    vtAnagraphsCategoriesan_bank_account: TWideStringField;
    vtAnagraphsCategoriesan_payment_des: TWideStringField;
    vtAnagraphsCategoriesan_discount: TFloatField;
    vtAnagraphsCategoriesan_distance: TIntegerField;
    vtAnagraphsCategoriesan_distance_mesunit: TSmallintField;
    vtAnagraphsCategoriesan_sex: TWideStringField;
    vtAnagraphsCategoriesan_cod_comune: TWideStringField;
    vtAnagraphsCategoriesan_cod_provincia: TWideStringField;
    vtAnagraphsCategoriesan_credit_line: TFloatField;
    vtAnagraphsCategoriesan_currency_id: TSmallintField;
    vtAnagraphsCategoriesan_cat_id: TSmallintField;
    vtAnagraphsCategoriesan_notes2: TWideStringField;
    vtAnagraphsCategoriesan_notes3: TWideMemoField;
    vtAnagraphsCategoriesan_edi: TBooleanField;
    vtAnagraphsCategoriesan_privacy: TBooleanField;
    vtAnagraphsCategoriesan_office_id: TSmallintField;
    vtAnagraphsCategoriesan_cod_prov_rif: TWideStringField;
    vtAnagraphsCategoriesan_data_fido: TDateField;
    vtAnagraphsCategoriesan_user_insert: TWideStringField;
    vtAnagraphsCategoriesan_user_update: TWideStringField;
    vtAnagraphsCategoriesan_area_id: TSmallintField;
    vtAnagraphsCategoriesan_agent_id: TSmallintField;
    vtAnagraphsCategoriesan_area_code: TWideStringField;
    vtAnagraphsCategoriesan_zone_id: TWideStringField;
    vtAnagraphsCategoriesan_ins_id: TLargeintField;
    vtAnagraphsCategoriesan_upd_id: TLargeintField;
    vtAnagraphsCategoriesan_documents: TSmallintField;
    vtAnagraphsCategoriesan_last_date: TDateField;
    vtAnagraphsCategoriesan_birthdate: TDateField;
    vtAnagraphsCategoriesan_office_type_id: TSmallintField;
    vtAnagraphsCategoriesan_searchname: TWideStringField;
    vtAnagraphsCategoriesan_extra_ue_flag: TBooleanField;
    vtAnagraphsCategoriesan_external_code: TWideStringField;
    vtAnagraphsCategoriesan_vat_id: TSmallintField;
    vtAnagraphsCategoriesan_personal_fiscal_code: TWideStringField;
    vtAnagraphsCategoriesan_privacy_print: TSmallintField;
    vtAnagraphsCategoriesan_sms: TBooleanField;
    vtAnagraphsCategoriesan_encrypted_fiscal_code: TWideStringField;
    vtAnagraphsCategoriesan_vat_purcentage: TSmallintField;
    vtAnagraphsCategoriesan_status: TSmallintField;
    vtAnagraphsCategoriesan_ownsite: TBooleanField;
    vtAnagraphsCategoriesan_insurance_id: TLargeintField;
    vtAnagraphsCategoriesan_anagraphs_anagraph_id: TIntegerField;
    vtAnagraphsCategoriesan_main_language_code: TWideStringField;
    vtAnagraphsCategoriesan_main_culture_code: TWideStringField;
    vtAnagraphsCategoriesan_fiscal_code: TWideStringField;
    vtAnagraphsCategoriesan_main_group_id: TIntegerField;
    vtAnagraphsCategoriesan_image_id: TLargeintField;
    vtAnagraphsCategorieslatitude: TFloatField;
    vtAnagraphsCategorieslongitude: TFloatField;
    vtAnagraphsCategoriestest: TFloatField;
    vtAnagraphsCategoriessearch_index: TWideStringField;
    vtAnagraphsCategoriesan_birthplace: TWideStringField;
    vtAnagraphsCategoriesan_birthplace_code: TWideStringField;
    vtAnagraphsCategoriesanagraph64: TWideStringField;
    vtAnagraphsCategoriesmain_category_id: TSmallintField;
    vtAnagraphsCategoriesosm_id: TLargeintField;
    vtAnagraphsCategoriesan_description: TWideStringField;
    vtAnagraphsCategoriesmaster_category_id: TSmallintField;
    vtAnagraphsCategoriesdistance: TFloatField;
    vtAnagraphsCategoriesan_address_number: TWideStringField;
    procedure LocationSensor1LocationChanged(Sender: TObject;
      const OldLocation, NewLocation: TLocationCoord2D);
    procedure DataModuleCreate(Sender: TObject);
  private
    FtmpDataset: Janua.Core.Classes.TJanuaJsonDacDataset;
    Fmc: TJanuaCoordinates;
    FCoordinates: TJanuaRecordCoordinates;
    FNewCoordinates: TJanuaRecordCoordinates;
    FIsUpdating: boolean;
    FLastErrorMessage: string;
    FHasErrors: boolean;
    FAroundAnagraph: TJanuaAnagraphs;
    FLogWath: TStopWatch;
    FLocalCoordinates: TLocalCoordinates;
    procedure Setmc(const Value: TJanuaCoordinates);
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetIsUpdating(const Value: boolean);
    procedure SetNewCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetHasErrors(const Value: boolean);
    procedure SetLastErrorMessage(const Value: string);
    procedure SetAroundAnagraph(const Value: TJanuaAnagraphs);
    procedure SetLogWath(const Value: TStopWatch);
    procedure SetLocalCoordinates(const Value: TLocalCoordinates);
    { Private declarations }
  public
    procedure ExtractAnagraphs(aMainCategory: smallint; aRecords: smallint);
    procedure Setup(var Result: boolean);
  public
    { Public declarations }
    property LocalCoordinates: TLocalCoordinates read FLocalCoordinates write SetLocalCoordinates;
    property mc: TJanuaCoordinates read Fmc write Setmc;
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
    property NewCoordinates: TJanuaRecordCoordinates read FNewCoordinates write SetNewCoordinates;
    property IsUpdating: boolean read FIsUpdating write SetIsUpdating;
    property HasErrors: boolean read FHasErrors write SetHasErrors;
    property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
    property AroundAnagraph: TJanuaAnagraphs read FAroundAnagraph write SetAroundAnagraph;
    property LogWath: TStopWatch read FLogWath write SetLogWath;
  end;

procedure UpdateMap(aDataset: TDataset; FCoordinates: TJanuaRecordCoordinates);

var
  dmEurofloraAppLocalData: TdmEurofloraAppLocalData;

implementation

// Z:\januaproject\Delphi\ThirdParty\Books\Async

uses Janua.Core.Functions, Janua.Core.AsyncTask;

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
{ TDataModule1 }

procedure TdmEurofloraAppLocalData.DataModuleCreate(Sender: TObject);
var
  aThread: TUpdateThread;
begin
  FCoordinates := TJanuaRecordCoordinates.Create(44.381909, 9.045305);
  FLocalCoordinates := TLocalCoordinates.Create;
  FLocalCoordinates.Coordinates := FCoordinates;
  aThread := TUpdateThread.Create(True);
  aThread.Coordinates := FCoordinates;
  aThread.LocalCoordinates := LocalCoordinates;
  aThread.NetHTTPRequest := NetHTTPRequest1;
  aThread.LocationSensor := LocationSensor1;
  aThread.vtTemp := vtTemp;
  aThread.vtAnagraphsCategories := vtAnagraphsCategories;
  aThread.Start;
end;

procedure TdmEurofloraAppLocalData.ExtractAnagraphs(aMainCategory, aRecords: smallint);
var
  tmpDataset: TJanuaJsonDacDataset;
begin
  tmpDataset := TJanuaJsonDacDataset.Create(self);
  try
    tmpDataset.IsVirtualTable := True;
    if not tmpDataset.Active then
      tmpDataset.Activate;
    tmpDataset.AssignDataset(vtAnagraphsCategories);
    tmpDataset.MemDataset.Filter := 'master_category_id = ' + aMainCategory.ToString;
    tmpDataset.MemDataset.Filtered := True;
    tmpDataset.MemDataset.Open;
    UpdateMap(tmpDataset.MemDataset, FCoordinates);
    if (tmpDataset.MemDataset is TVirtualTable) then
      (tmpDataset.MemDataset as TVirtualTable).IndexFieldNames := 'distance ASC';
    self.FAroundAnagraph.Clear;
    FAroundAnagraph.LoadFromDataset(tmpDataset.MemDataset, aRecords);
  finally
    tmpDataset.Free
  end;
end;

procedure TdmEurofloraAppLocalData.Setup(var Result: boolean);
begin
  LocationSensor1.Active := True;
  Async.Run<boolean>(
    function: boolean
    begin
      self.IsUpdating := True;
      Result := True;
      UpdateMap(self.vtAnagraphsCategories, self.FCoordinates);
    end,
    procedure(const Value: boolean)
    var
      aThread: TUpdateThread;
    begin
      self.FHasErrors := False;
      self.IsUpdating := False;
      aThread := TUpdateThread.Create(True);
      aThread.NetHTTPRequest := self.NetHTTPRequest1;
      aThread.vtTemp := self.vtTemp;
      aThread.vtAnagraphsCategories := self.vtAnagraphsCategories;
      aThread.Coordinates := self.FCoordinates;
      aThread.Start;
    end,
    procedure(const E: Exception)
    begin
      self.IsUpdating := False;
      // This is the "error" callback.
      // Runs in the UI thread and is called only if the
      // "background" anonymous method raises an exception.
      self.LastErrorMessage := E.Message;
      self.FHasErrors := True;
    end);

end;

procedure TdmEurofloraAppLocalData.LocationSensor1LocationChanged(Sender: TObject;
const OldLocation, NewLocation: TLocationCoord2D);
{
  A complete call to the Async.Run<T> method is made up of three anonymous methods:
  ff A background task: This is a function returning some kind of data. It runs in a
  background thread using a PPL task.
  ff A success callback: This is a procedure that gets the result of the background task.
  It runs in the main UI thread.
  ff An error callback: This is a procedure that gets the exception raised by the
  background task, if any. It runs in the main UI thread.
  This small library can be used in the following way:
}
begin
  if ((Fmc.Latitude <> NewLocation.Latitude) or (Fmc.Longitude <> NewLocation.Longitude)) and
    (DistanceBetweenLonLat(Fmc.Latitude, Fmc.Longitude, NewLocation.Latitude, NewLocation.Longitude) > 0.1)
    and not self.IsUpdating then
  begin
    // Imposto i nuovi valori di Fmc Coordinate che vengono dal location sensor
    Fmc.Latitude := NewLocation.Latitude;
    Fmc.Longitude := NewLocation.Longitude;
    // successivamente invio i dati così ottenuti ad una prcedura asincrona che si occupa di aggiornare i dati
    Async.Run<boolean>(
      function: boolean
      var
        distance: Double;
        tmpCoord: TJanuaRecordCoordinates;
      begin
        Result := True;
        self.IsUpdating := True;
        if DistanceBetweenLonLat(44.381909, 9.045305, Fmc.Latitude, Fmc.Longitude) < 5 then
          tmpCoord := TJanuaRecordCoordinates.Create(Fmc.Latitude, Fmc.Longitude)
        else
          tmpCoord := TJanuaRecordCoordinates.Create(44.381909, 9.045305);

        if ((tmpCoord.Latitude <> FCoordinates.Latitude) or (tmpCoord.Longitude <> FCoordinates.Longitude))
        then
        begin
          if not self.LocalCoordinates.IsUpdating then
          begin
            self.LocalCoordinates.IsUpdating := True;
            FCoordinates := tmpCoord;
            FLocalCoordinates.Coordinates := tmpCoord;
            UpdateMap(self.vtAnagraphsCategories, FCoordinates);
            self.LocalCoordinates.IsUpdating := False;
          end;
        end
      end,
      procedure(const Value: boolean)
      begin
        self.FHasErrors := False;
        self.IsUpdating := False;
      end,
      procedure(const E: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        self.LastErrorMessage := E.Message;
        self.FHasErrors := True;
        self.IsUpdating := False;
      end

      );
  end;
end;

procedure TdmEurofloraAppLocalData.SetAroundAnagraph(const Value: TJanuaAnagraphs);
begin
  FAroundAnagraph := Value;
end;

procedure TdmEurofloraAppLocalData.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FCoordinates := Value;
end;

procedure TdmEurofloraAppLocalData.SetHasErrors(const Value: boolean);
begin
  FHasErrors := Value;
end;

procedure TdmEurofloraAppLocalData.SetIsUpdating(const Value: boolean);
begin
  FIsUpdating := Value;
end;

procedure TdmEurofloraAppLocalData.SetLastErrorMessage(const Value: string);
begin
  FLastErrorMessage := Value;
end;

procedure TdmEurofloraAppLocalData.SetLocalCoordinates(const Value: TLocalCoordinates);
begin
  FLocalCoordinates := Value;
end;

procedure TdmEurofloraAppLocalData.SetLogWath(const Value: TStopWatch);
begin
  FLogWath := Value;
end;

procedure UpdateMap(aDataset: TDataset; FCoordinates: TJanuaRecordCoordinates);
var
  tmp: Double;
begin
  // self.IsUpdating := True;
  with aDataset do
  begin
    First;
    while not Eof do
    begin
      try
        tmp := FRound(DistanceBetweenLonLat(FieldByName('latitude').AsFloat, FieldByName('longitude').AsFloat,
          FCoordinates.Latitude, FCoordinates.Longitude), 6);
        Edit;
        FieldByName('distance').Value := tmp;
        Post;
        Next;
      except
        on E: Exception do
        begin
          Cancel;
          raise
        end;
      end;
    end;
  end;
end;

procedure TdmEurofloraAppLocalData.Setmc(const Value: TJanuaCoordinates);
begin
  Fmc := Value;
end;

procedure TdmEurofloraAppLocalData.SetNewCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FNewCoordinates := Value;
end;

{ TUpdateThread }

procedure TUpdateThread.Execute;
var
  aStream: TMemoryStream;
begin
  aStream := TMemoryStream.Create;
  try
    NetHTTPRequest.Get('http://cdn.ergomercator.com/euroflora/euroflora.vtd', aStream);
    aStream.Position := 0;
    FvtTemp.LoadFromStream(aStream);
  finally
    aStream.Free;
  end;
  Synchronize(
    procedure
    begin
      FvtAnagraphsCategories.Assign(vtTemp);
      FLocalCoordinates.IsUpdating := True;
      UpdateMap(FvtAnagraphsCategories, FLocalCoordinates.Coordinates);
      FLocalCoordinates.IsUpdating := False;
    end);
end;

procedure TUpdateThread.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FCoordinates := Value;
end;

procedure TUpdateThread.SetLocalCoordinates(const Value: TLocalCoordinates);
begin
  FLocalCoordinates := Value;
end;

procedure TUpdateThread.SetLocationSensor(const Value: TLocationSensor);
begin
  FLocationSensor := Value;
end;

procedure TUpdateThread.SetNetHTTPRequest(const Value: TNetHTTPRequest);
begin
  FNetHTTPRequest := Value;
end;

procedure TUpdateThread.SetvtAnagraphsCategories(const Value: TVirtualTable);
begin
  FvtAnagraphsCategories := Value;
end;

procedure TUpdateThread.SetvtTemp(const Value: TVirtualTable);
begin
  FvtTemp := Value;
end;

end.
