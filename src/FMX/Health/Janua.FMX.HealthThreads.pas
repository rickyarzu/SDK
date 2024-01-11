unit Janua.FMX.HealthThreads;

interface

uses
  // system
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Janua
  Janua.Core.Functions, Janua.Core.Health, Janua.Core.Cloud, Janua.Core.System, Janua.Core.Servers,
  Janua.Core.Classes, Janua.Core.Types,
  // db & devart
  Data.DB, FireDAC.Comp.Client, DBAccess, Uni,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
  FMX.TabControl, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TSearchThread = class(TThread)
  private
    { Private declarations }
    // FList: string;
    FSearchString: string;
    FListView: TListView;
    FSearchDataset: TJanuaJsonDacDataset;
    FHealthMethodsClient: TJanuaCustomHealthClient;
    FSession: TJanuaServerSession;
    // External Data Procedures ........................................
    // FTempDataSet: TFDMemTable;
    FExternalDataset: TFDMemTable;
    FUseExternalDataset: boolean;
    FCount: Integer;
    // ------------------------------------------------------------------
    procedure SetSearchString(const Value: string);
    procedure SetListView(const Value: TListView);
    procedure SetSearchDataset(const Value: TJanuaJsonDacDataset);
    // procedure SetTargetTable(const Value: TFDMemTable);
    procedure SeTJanuaCustomHealthClient(const Value: TJanuaCustomHealthClient);
    procedure SetSession(const Value: TJanuaServerSession);
    procedure SetExternalDataset(const Value: TFDMemTable);
    procedure SetUseExternalDataset(const Value: boolean);
    procedure SetCount(const Value: Integer);
  protected
    procedure Execute; override;
    procedure UpdateProgress;
  public
    // External Data Procedures ........................................
    property Count: Integer read FCount write SetCount;
    property ExternalDataset: TFDMemTable read FExternalDataset write SetExternalDataset;
    property UseExternalDataset: boolean read FUseExternalDataset write SetUseExternalDataset;
    // ---------------------------------------------------------------------------------------
    property Session: TJanuaServerSession read FSession write SetSession;
    property SearchString: string read FSearchString write SetSearchString;
    property ListView: TListView read FListView write SetListView;
    property SearchDataset: TJanuaJsonDacDataset read FSearchDataset write SetSearchDataset;
    property HealthMethodsClient: TJanuaCustomHealthClient read FHealthMethodsClient write SeTJanuaCustomHealthClient;
  end;

type
  TInstitutesThread = class(TThread)
  private
    { Private declarations }
    qrySearchInstitutes: TUniQuery;
    // FList: string;
    FPgConnection: TJanuaUniConnection;
    // FSearchString: string;
    FListView: TListView;
    FCoordinates: TJanuaRecordCoordinates;
    FServiceID: Int64;
    FJanuaHealthBooking: Janua.Core.Health.TJanuaCustomHealthBooking;
    procedure SeTJanuaUniConnection(const Value: TJanuaUniConnection);
    // procedure SetSearchString(const Value: string);
    procedure SetListView(const Value: TListView);
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetServiceID(const Value: Int64);
    procedure SetJanuaHealthBooking(const Value: TJanuaCustomHealthBooking);
  protected
    procedure Execute; override;
    procedure UpdateProgress;
    procedure StartPublicWebSession;
  public
    property PgConnection: TJanuaUniConnection read FPgConnection write SeTJanuaUniConnection;
    property ServiceID: Int64 read FServiceID write SetServiceID;
    // eventualmente passa le coordinate ...................................................................
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
    property ListView: TListView read FListView write SetListView;
    property JanuaHealthBooking: TJanuaCustomHealthBooking read FJanuaHealthBooking write SetJanuaHealthBooking;
  end;

Type
  TJanuaFMXHealthServicesSearch = class(TJanuaCoreComponent)
  private
    FListView: TListView;
    FSearchString: string;
    FSearchDataset: TJanuaJsonDacDataset;
    FHealthMethodsClient: TJanuaCustomHealthClient;
    FJanuaServerSession: TJanuaServerSession;
    FExternalData: TFDMemTable;
    FUseExternalData: boolean;
    procedure SetListView(const Value: TListView);
    procedure SetSearchString(const Value: string);
    procedure SeTJanuaCustomHealthClient(const Value: TJanuaCustomHealthClient);
    procedure SetSearchDataset(const Value: TJanuaJsonDacDataset);
    procedure SetJanuaServerSession(const Value: TJanuaServerSession);
    procedure SetExternalData(const Value: TFDMemTable);
    procedure SetUseExternalData(const Value: boolean);
  public
    procedure Execute;
    constructor Create(AOwner: Tcomponent); override;
    destructor Destroy; override;
    property JanuaServerSession: TJanuaServerSession read FJanuaServerSession write SetJanuaServerSession;
    function LocateService(aService: string): boolean;
  published
    property SearchString: string read FSearchString write SetSearchString;
    property ListView: TListView read FListView write SetListView;
    property SearchDataset: TJanuaJsonDacDataset read FSearchDataset write SetSearchDataset;
    property HealthMethodsClient: TJanuaCustomHealthClient read FHealthMethodsClient write SeTJanuaCustomHealthClient;
    property SessionKey: string read FJanuaServerSession.Key;
    property ExternalData: TFDMemTable read FExternalData write SetExternalData;
    property UseExternalData: boolean read FUseExternalData write SetUseExternalData;
  end;

Type
  TJanuaFMXHealthInstitutesSearch = class(TJanuaCoreComponent)
  private
    FListView: TListView;
    FCoordinates: TJanuaRecordCoordinates;
    FJanuaHealthBooking: TJanuaCustomHealthBooking;
    FPgConnection: TJanuaUniConnection;
    FServiceID: Int64;
    FTargetTable: TFDMemTable;
    FJanuaGoogleGeoCoding: TJanuaGoogleGeoCoding;
    FLocation: string;
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetJanuaHealthBooking(const Value: TJanuaCustomHealthBooking);
    procedure SetListView(const Value: TListView);
    procedure SeTJanuaUniConnection(const Value: TJanuaUniConnection);
    procedure SetServiceID(const Value: Int64);
    procedure SetTargetTable(const Value: TFDMemTable);
    procedure SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
    procedure SetLocation(const Value: string);
  public
    procedure Execute;
    constructor Create(AOwner: Tcomponent); override;
    Destructor Destroy; override;
  published
    property TargetTable: TFDMemTable read FTargetTable write SetTargetTable;
    property PgConnection: TJanuaUniConnection read FPgConnection write SeTJanuaUniConnection;
    property ServiceID: Int64 read FServiceID write SetServiceID;
    property Location: string read FLocation write SetLocation;
    // eventualmente passa le coordinate ...................................................................
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
    property ListView: TListView read FListView write SetListView;
    property JanuaHealthBooking: TJanuaCustomHealthBooking read FJanuaHealthBooking write SetJanuaHealthBooking;
    property JanuaGoogleGeoCoding: TJanuaGoogleGeoCoding read FJanuaGoogleGeoCoding write SetJanuaGoogleGeoCoding;
  end;

implementation

uses
  System.JSON;

{ TSearchThread }

procedure TSearchThread.Execute;
var
  aObject: TJsonObject;
  TempDataset: TFDMemTable;
begin
  { Place thread code here }

  {
  }
  {
    aQuery := TUniQuery.Create(nil);
    try
    sStrings := TStringList.Create;
    try

    aQuery.SQL.Add('SELECT   id as service_id,');
    aQuery.SQL.Add('0:: integer as discipline_id,');
    aQuery.SQL.Add('discipline_name as discipline,');
    aQuery.SQL.Add('prestazione as description');
    aQuery.SQL.Add('from  health.search_services_index(');
    aQuery.SQL.Add(':prestazione,');
    aQuery.SQL.Add(':limit');
    aQuery.SQL.Add(')');
    aQuery.Connection := FPgConnection;
    FSearchString := Janua.Core.Functions.StripString(FSearchString, '%');
    aQuery.Params[0].AsWideString := '%' + UpperCase(FSearchString) + '%';
    aQuery.Params[1].AsInteger := 20;
    aQuery.Open;
    finally
    sStrings.Free;
    end;
    Synchronize(UpdateProgress);
    finally
    aQuery.Free;
    aQuery := nil;
    end;
  }
  if self.FUseExternalDataset and Assigned(self.FExternalDataset) then
  begin
    TempDataset := TFDMemTable.Create(nil);
    try
      FCount := Janua.Core.Health.SearchIndexDataset(FExternalDataset, TempDataset, self.FSearchString.ToLower);
      self.FSearchDataset.AssignDataset(TempDataset);
    finally
      TempDataset.DisposeOf;
      TempDataset := nil;
    end;
  end
  else
  begin
    aObject := self.FHealthMethodsClient.SearchServices(self.FSession.Key, self.FSearchString);
    self.FSearchDataset.LoadFromJsonObject(aObject);
  end;
  Synchronize(self.UpdateProgress);
end;

procedure TSearchThread.SetCount(const Value: Integer);
begin
  FCount := Value;
end;

procedure TSearchThread.SetExternalDataset(const Value: TFDMemTable);
begin
  FExternalDataset := Value;
end;

procedure TSearchThread.SeTJanuaCustomHealthClient(const Value: TJanuaCustomHealthClient);
begin
  FHealthMethodsClient := Value;
end;

procedure TSearchThread.SetListView(const Value: TListView);
begin
  FListView := Value;
end;

procedure TSearchThread.SetSearchDataset(const Value: TJanuaJsonDacDataset);
begin
  FSearchDataset := Value;
end;

procedure TSearchThread.SetSearchString(const Value: string);
begin
  FSearchString := Value;
end;

procedure TSearchThread.SetSession(const Value: TJanuaServerSession);
begin
  FSession := Value;
end;

procedure TSearchThread.SetUseExternalDataset(const Value: boolean);
begin
  FUseExternalDataset := Value;
end;

procedure TSearchThread.UpdateProgress;
var
  sDiscipline: string;
begin
  FListView.Items.Clear;
  if self.FSearchDataset.RecordCount > 0 then
  begin
    self.FSearchDataset.MemDataset.First;
    while not self.FSearchDataset.MemDataset.Eof do
    begin
      if (self.FSearchDataset.MemDataset.FieldByName('discipline_name').AsWideString) <> sDiscipline then
        with FListView.Items.Add do
        begin
          sDiscipline := self.FSearchDataset.MemDataset.FieldByName('discipline_name').AsWideString;
          Text := sDiscipline;
          Purpose := TListItemPurpose.Header;
        end;
      with FListView.Items.Add do
      begin
        Text := (self.FSearchDataset.MemDataset.FieldByName('prestazione').AsWideString);
      end;
      self.FSearchDataset.MemDataset.Next;
    end;
  end;
end;

{ TInstitutesThread }

{
  SELECT * from health.get_institutes(
  :item_id::integer,
  0::smallint,
  :latitude::double precision,
  :longitude::double precision,
  10::smallint,
  :user_id::integer,
  :session_id::bigint
  );
}

procedure TInstitutesThread.Execute;
begin
  inherited;
  qrySearchInstitutes := TUniQuery.Create(nil);
  try
    qrySearchInstitutes.SQL.Add('SELECT * from health.get_institutes(');
    qrySearchInstitutes.SQL.Add('    :item_id::integer,');
    qrySearchInstitutes.SQL.Add('    0::smallint,');
    qrySearchInstitutes.SQL.Add('    :latitude::double precision,');
    qrySearchInstitutes.SQL.Add('    :longitude::double precision,');
    qrySearchInstitutes.SQL.Add('    10::smallint,');
    qrySearchInstitutes.SQL.Add('    :user_id::integer, ');
    qrySearchInstitutes.SQL.Add('    :session_id::bigint');
    qrySearchInstitutes.SQL.Add(');');
    self.qrySearchInstitutes.ParamByName('item_id').AsLargeInt := self.FServiceID;
    self.qrySearchInstitutes.ParamByName('latitude').AsFloat := FCoordinates.Latitude;
    self.qrySearchInstitutes.ParamByName('longitude').AsFloat := FCoordinates.Longitude;
    // self.FItemID := self.qryPrestazioniservice_id.Value;
    if FJanuaHealthBooking.SessionID = 0 then
    begin
      Synchronize(StartPublicWebSession);
    end;
    qrySearchInstitutes.ParamByName('session_id').AsLargeInt := FJanuaHealthBooking.SessionID;
    qrySearchInstitutes.ParamByName('user_id').AsLargeInt := FJanuaHealthBooking.UserProfile.User.ID;
    qrySearchInstitutes.Open;
    // UpdateProgress ---- popola la lista degli Istituti con i dati trovati ........................

  finally
    FreeAndNil(qrySearchInstitutes);
  end;
end;

procedure TInstitutesThread.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FCoordinates := Value;
end;

procedure TInstitutesThread.SetJanuaHealthBooking(const Value: TJanuaCustomHealthBooking);
begin
  FJanuaHealthBooking := Value;
end;

procedure TInstitutesThread.SetListView(const Value: TListView);
begin
  self.FListView := Value;
end;

procedure TInstitutesThread.SeTJanuaUniConnection(const Value: TJanuaUniConnection);
begin
  self.FPgConnection := Value;
end;

{
  procedure TInstitutesThread.SetSearchString(const Value: string);
  begin
  self.FSearchString := Value;
  end;
}

procedure TInstitutesThread.SetServiceID(const Value: Int64);
begin
  FServiceID := Value;
end;

procedure TInstitutesThread.StartPublicWebSession;
begin
  FJanuaHealthBooking.StartPublicWebSession;
end;

procedure TInstitutesThread.UpdateProgress;
begin

end;

{ TJanuaFMXHealthInstitutesSearch }

constructor TJanuaFMXHealthInstitutesSearch.Create(AOwner: Tcomponent);
begin
  inherited;
  FTargetTable := TFDMemTable.Create(nil);
end;

destructor TJanuaFMXHealthInstitutesSearch.Destroy;
begin
  FTargetTable.Free;
  inherited;
end;

procedure TJanuaFMXHealthInstitutesSearch.Execute;
var
  aItemID: Int64;
begin
  if (self.FListView.Items.Count > 0) and (self.FListView.ItemIndex > -1) then
  begin
    ShowMessage('ItemIndex: ' + FListView.Items[FListView.ItemIndex].Text);

    if self.FTargetTable.Locate('description', FListView.Items[FListView.ItemIndex].Text, []) then
    begin
      aItemID := self.FTargetTable.FieldByName('service_id').AsLargeInt;
      ShowMessage('Item: ' + aItemID.ToString);

      if self.FLocation <> '' then
      begin
        self.FJanuaGoogleGeoCoding.Address := FLocation;
        if FJanuaGoogleGeoCoding.GetCoordinates then
          FCoordinates := FJanuaGoogleGeoCoding.Coordinates.Coordinates
      end;

    end;
  end;
end;

procedure TJanuaFMXHealthInstitutesSearch.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FCoordinates := Value;
end;

procedure TJanuaFMXHealthInstitutesSearch.SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
begin
  FJanuaGoogleGeoCoding := Value;
end;

procedure TJanuaFMXHealthInstitutesSearch.SetJanuaHealthBooking(const Value: TJanuaCustomHealthBooking);
begin
  FJanuaHealthBooking := Value;
end;

procedure TJanuaFMXHealthInstitutesSearch.SetListView(const Value: TListView);
begin
  FListView := Value;
end;

procedure TJanuaFMXHealthInstitutesSearch.SetLocation(const Value: string);
begin
  FLocation := Value;
end;

procedure TJanuaFMXHealthInstitutesSearch.SeTJanuaUniConnection(const Value: TJanuaUniConnection);
begin
  FPgConnection := Value;
end;

procedure TJanuaFMXHealthInstitutesSearch.SetServiceID(const Value: Int64);
begin
  FServiceID := Value;
end;

procedure TJanuaFMXHealthInstitutesSearch.SetTargetTable(const Value: TFDMemTable);
begin
  FTargetTable := Value;
end;

{ TJanuaFMXHealthServicesSearch }

constructor TJanuaFMXHealthServicesSearch.Create(AOwner: Tcomponent);
begin
  inherited;
  FSearchDataset := TJanuaJsonDacDataset.Create(self);
  FSearchDataset.Name := 'vtSearchServices';
  FSearchDataset.IsVirtualTable := True;
end;

destructor TJanuaFMXHealthServicesSearch.Destroy;
begin
  FSearchDataset.Free;
  inherited Destroy;
end;

procedure TJanuaFMXHealthServicesSearch.Execute;
var
  sThread: TSearchThread;
begin
  if FSearchString = '' then
  begin
    FListView.Items.Clear;
  end
  else
  begin
    Assert(Assigned(FSearchDataset), 'Error Execute: SearchDataset not set');
    Assert(Assigned(FHealthMethodsClient), 'Error Execute: HealthMethodsClient not set');
    if not Assigned(FListView) then
      raise Exception.Create('Error Execute: ListView not set');

    sThread := TSearchThread.Create(True);
    sThread.SearchDataset := self.FSearchDataset;
    sThread.HealthMethodsClient := self.FHealthMethodsClient;
    sThread.ListView := self.FListView;
    sThread.SearchString := FSearchString;
    sThread.Session := self.FJanuaServerSession;
    sThread.FreeOnTerminate := True;
    sThread.UseExternalDataset := self.FUseExternalData and (FExternalData <> nil);
    sThread.ExternalDataset := self.FExternalData;
    sThread.Start;
  end;
end;

function TJanuaFMXHealthServicesSearch.LocateService(aService: string): boolean;
begin
  Result := self.FSearchDataset.MemDataset.Locate('prestazione', aService, []);
end;

procedure TJanuaFMXHealthServicesSearch.SetExternalData(const Value: TFDMemTable);
begin
  FExternalData := Value;
end;

procedure TJanuaFMXHealthServicesSearch.SeTJanuaCustomHealthClient(const Value: TJanuaCustomHealthClient);
begin
  FHealthMethodsClient := Value;
end;

procedure TJanuaFMXHealthServicesSearch.SetJanuaServerSession(const Value: TJanuaServerSession);
begin
  FJanuaServerSession := Value;
end;

procedure TJanuaFMXHealthServicesSearch.SetListView(const Value: TListView);
begin
  FListView := Value;
end;

procedure TJanuaFMXHealthServicesSearch.SetSearchDataset(const Value: TJanuaJsonDacDataset);
begin
  FSearchDataset := Value;
end;

procedure TJanuaFMXHealthServicesSearch.SetSearchString(const Value: string);
begin
  FSearchString := Value;
end;

procedure TJanuaFMXHealthServicesSearch.SetUseExternalData(const Value: boolean);
begin
  FUseExternalData := Value;
end;

end.
