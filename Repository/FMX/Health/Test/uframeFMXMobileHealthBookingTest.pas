unit uframeFMXMobileHealthBookingTest;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // PLATFORM SPECIFIC LIBRARIES
{$IFDEF MACOS}
  MacApi.CoreFoundation, MacApi.ObjectiveC,
{$ENDIF MACOS}
  // Janua
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Health, Janua.Core.Cloud, Janua.FMX.HealthThreads,
  Janua.Core.Anagraph, Janua.Core.RESTClient.Health, Janua.FMX.Components,
  // Repository disattivato ed assegnato a proprietà esterna al Frame ..................................
  // uClientModuleHealthREST,
  // Frames
  uframeFMXMobilePrescription, uframeFMXMobileFinalization, uframeFMXMobileInstitutesSearch,
  // FGX    // libreria componenti Firemonkey di
  // FGX.ProgressDialog,
  // Tms
  FMX.TMSWebGMapsWebBrowser, FMX.TMSWebGMaps, FMX.TMSWebOSMapsWebBrowser, FMX.TMSWebOSMaps, FMX.TMSButton,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.Edit,
  FMX.Controls.Presentation, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Layouts, FMX.ListBox, FMX.TabControl,
  System.Sensors, System.Sensors.Components, FMX.DateTimeCtrls, FMX.ScrollBox, FMX.Memo;

type
  TframeFMXMobileHealthBooking = class(TFrame)
    JanuaFMXHealthServicesSearch1: TJanuaFMXHealthServicesSearch;
    LocationSensor1: TLocationSensor;
    tabControlBooking: TTabControl;
    tab01SearchServices: TTabItem;
    ListViewPrestazioni: TListView;
    pnlSearch: TPanel;
    edSearch: TEdit;
    ClearEditButton2: TClearEditButton;
    edLocation: TEdit;
    ClearEditButton1: TClearEditButton;
    Text1: TText;
    ListBox1: TListBox;
    tab02SearchInstitutes: TTabItem;
    tab04Finalisation: TTabItem;
    frameFMXMobileFinalization1: TframeFMXMobileFinalization;
    procedure edLocationTyping(Sender: TObject);
    procedure edSearchTyping(Sender: TObject);
    procedure btnBookingClick(Sender: TObject);
    procedure ListViewPrestazioniItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure ListBox1ItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
    procedure LocationSensor1LocationChanged(Sender: TObject; const OldLocation, NewLocation: TLocationCoord2D);
    procedure btnFinalizationClick(Sender: TObject);
    procedure frameFMXMobileFinalization1btnFinalizeClick(Sender: TObject);
    procedure frameFMXMobileFinalization1btnUndoClick(Sender: TObject);
    procedure frameFMXAnagraphPersonalMobile1btnSave1Click(Sender: TObject);
    procedure frameFMXMobilePrescription1btnSavePrescriptionClick(Sender: TObject);
  private
    // MapSet indica Se la Mappa1 è impostata ed attivata ... probabilmente deprecato
    // Map1Set: Boolean;
    frameFMXMobileInstitutesSearch: TframeFMXMobileInstitutesSearch;
    FWaitBooking: Boolean;
    // TMSFMXWebGMaps01: TTMSFMXWebGMaps;
    // mappa 2
    // MapSet indica Se la Mappa1 è impostata ed attivata ... probabilmente deprecato
    FItemID: Int64;
    FLogs: TStrings;
    FSelectedLocation: string;
    FCoordinates: TJanuaRecordCoordinates;
    FOldLocationSearch: string;
    FJanuaGoogleGeoCoding: TJanuaGoogleGeoCoding;
    FMapSet1: Boolean;
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    FFinalized: Boolean;
    procedure SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetOldLocationSearch(const Value: string);
    procedure SetSelectedLocation(const Value: string);
    procedure SetMapSet1(const Value: Boolean);
    procedure SetLogs(const Value: TStrings);
    procedure SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
    procedure SetFinalized(const Value: Boolean);

    { Private declarations }
  protected
    procedure SetInstitutesList;
    function GetLocationText: String;
    procedure PrepareConfirmation;
    procedure SetConfirmationMap;
    procedure LocationUpdate;
    procedure MobileLogin;
  public
    function GetChecked: Boolean;
    procedure Next;
    procedure First;
    procedure Previous;
    procedure Default;
    procedure DestroyGmaps1; // distrugge la mappa numero 1
    procedure Destroy;
    function IsFirst: Boolean; // funzione che dice al sistema se siamo o no al primo Tab selezionato.
  public
    { Public declarations }
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read FJanuaRESTHealthClient write SetJanuaRESTHealthClient;
    property Logs: TStrings read FLogs write SetLogs;
    property MapSet1: Boolean read FMapSet1 write SetMapSet1;
    property OldLocationSearch: string read FOldLocationSearch write SetOldLocationSearch;
    property SelectedLocation: string read FSelectedLocation write SetSelectedLocation;
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
    property JanuaGoogleGeoCoding: TJanuaGoogleGeoCoding read FJanuaGoogleGeoCoding write SetJanuaGoogleGeoCoding;
    property Checked: Boolean read GetChecked;
    property Finalized: Boolean read FFinalized write SetFinalized;
  end;

implementation

{$R *.fmx}

uses
  ufrmFMXLoginMobile;

procedure TframeFMXMobileHealthBooking.btnBookingClick(Sender: TObject);
begin
  {
    if (FJanuaRESTHealthClient.Booking.SelectedInstitute.anagraph_id <> 0) and
    (FJanuaRESTHealthClient.Booking.count < 3) and
    // se non è già stato prenotato l'istituto of course ..............................
    not FJanuaRESTHealthClient.Booking.Institutes.FindItemByID
    (FJanuaRESTHealthClient.Booking.SelectedInstitute.anagraph_id) then
    begin
    FJanuaRESTHealthClient.Booking.AddSearchSelectedInstitute;
    self.btnBooking.FontColor := c.Red;
    if self.FJanuaRESTHealthClient.Booking.count = 3 then
    begin
    self.btnBooking.Text := 'Conferma prenotazione 3 Istituti';
    ShowMessage('Avete selezionato 3 istituti ora potete completare la prenotazione');
    end
    else if self.FJanuaRESTHealthClient.Booking.count = 1 then
    self.btnBooking.Text := 'Conferma prenotazione 1 Istituto'
    else if self.FJanuaRESTHealthClient.Booking.count = 2 then
    self.btnBooking.Text := 'Conferma prenotazione 2 Istituti';
    end
    else if (FJanuaRESTHealthClient.Booking.count = 3) or FJanuaRESTHealthClient.Booking.Institutes.FindItemByID
    (FJanuaRESTHealthClient.Booking.SelectedInstitute.anagraph_id) or self.FWaitBooking then
    begin
    if self.tabControlBooking.ActiveTab = self.tab02SearchInstitutes then
    tabControlBooking.Next(TTAbTransition.Slide);
    self.PrepareConfirmation;
    end
    else
    begin
    self.btnBooking.Text := 'Prenota Automaticamente 3 Istituti';
    self.btnBooking.FontColor := TAlphaColorRec.Red;
    FWaitBooking := True;
    end;
  }

  /// VEcchia procedura ....................................................................
  { if (FJanuaRESTHealthClient.Booking.SelectedInstitute.anagraph_id <> 0) and
    (FJanuaRESTHealthClient.Booking.Institutes.count < 3) and
    not(FBookedInstitute = self.qrySearchInstitutesanagraph_id.AsInteger) then
    begin
    a := TJanuaAnagraphRecord.Create(qrySearchInstitutes);
    a.LoadFromDataset(self.qrySearchInstitutes);
    self.SelectedInstitutes.Add(a);
    FBookedInstitute := a.anagraph_id;
    self.btnBooking.FontColor := c.Red;
    if self.SelectedInstitutes.count = 3 then
    begin
    self.btnBooking.Text := 'Conferma prenotazione 3 Istituti';
    ShowMessage('Avete selezionato 3 istituti ora potete completare la prenotazione');
    end
    else if self.SelectedInstitutes.count = 1 then
    self.btnBooking.Text := 'Conferma prenotazione 1 Istituto'
    else if self.SelectedInstitutes.count = 2 then
    self.btnBooking.Text := 'Conferma prenotazione 2 Istituti';
    end
    else if (self.SelectedInstitutes.count = 3) or
    (FBookedInstitute = self.qrySearchInstitutesanagraph_id.AsInteger) or self.FWaitBooking then
    begin
    if self.TabControlSearch.ActiveTab = self.Tab02Institutes then
    TabControlSearch.Next(TTAbTransition.Slide);
    self.PrepareConfirmation;
    end
    else
    begin
    self.btnBooking.Text := 'Prenota Automaticamente 3 Istituti';
    self.btnBooking.FontColor := c.Red;
    FWaitBooking := true;
    end;
  }
  /// Termine Vecchia procedura ...............................................................

end;

procedure TframeFMXMobileHealthBooking.btnFinalizationClick(Sender: TObject);
begin
  // qui dovrebbe andare la procedura di Gestione della procedura di Finalizzazione del Sotto-Frame.
end;

procedure TframeFMXMobileHealthBooking.Default;
begin

  self.tabControlBooking.ActiveTab := self.tab01SearchServices;
  self.ListBox1.Visible := False;
  frameFMXMobileFinalization1.Default;
  { This defines the default active tab at runtime }
  FSelectedLocation := '';
  FOldLocationSearch := '';
  self.FItemID := 0;
  FLogs := TStringList.Create;

  // JanuaHealthBooking := dmDico33Mobile.JanuaServerHealthBooking1;
end;

procedure TframeFMXMobileHealthBooking.edLocationTyping(Sender: TObject);
begin
  if not Assigned(self.FJanuaRESTHealthClient) then
    raise Exception.Create('frameFMXMobileHealthSearch JanuaRESTHealthClient not set');

  if (Length(edLocation.Text) > 4) and (edLocation.Text <> self.GetLocationText) then
  begin
    if (FJanuaGoogleGeoCoding.Address <> edLocation.Text) and (self.edLocation.Text <> FOldLocationSearch) then
    begin
      FJanuaGoogleGeoCoding.Address := edLocation.Text;
      if FJanuaGoogleGeoCoding.GetSuggestions then
      begin
        ListBox1.Width := self.edLocation.Width - 4;
        ListBox1.Position.Y := self.pnlSearch.Position.Y + self.edLocation.Position.Y + edLocation.Height + 2;
        ListBox1.Height := 300;
        ListBox1.Items.Assign(FJanuaGoogleGeoCoding.AddressText);
        ListBox1.Visible := True;
        ListBox1.BringToFront;
      end
      else
      begin
        self.ListBox1.Visible := False;
      end;
    end;
  end
  else
  begin
    self.ListBox1.Visible := False;
  end;
  FOldLocationSearch := self.edLocation.Text;
end;

procedure TframeFMXMobileHealthBooking.edSearchTyping(Sender: TObject);
begin
  if not Assigned(self.FJanuaRESTHealthClient) then
    raise Exception.Create('frameFMXMobileHealthSearch ClientModuleHealthREST not set');

  if Janua.Core.Functions.StringLength(self.edSearch.Text) > 2 then
  begin
    if self.FJanuaRESTHealthClient.SessionKey = '' then
      self.FJanuaRESTHealthClient.StartPublicSession('dico33.com');

    JanuaFMXHealthServicesSearch1.HealthMethodsClient := FJanuaRESTHealthClient;
    JanuaFMXHealthServicesSearch1.SearchString := edSearch.Text;
    JanuaFMXHealthServicesSearch1.JanuaServerSession := FJanuaRESTHealthClient.Session;
    JanuaFMXHealthServicesSearch1.Execute;
  end;
end;

procedure TframeFMXMobileHealthBooking.First;
begin
  self.tabControlBooking.First(TTabTransition.Slide)
end;

procedure TframeFMXMobileHealthBooking.frameFMXAnagraphPersonalMobile1btnSave1Click(Sender: TObject);
begin
  frameFMXMobileFinalization1.frameFMXAnagraphPersonalMobile1btnSave1Click(Sender);

end;

procedure TframeFMXMobileHealthBooking.frameFMXMobileFinalization1btnFinalizeClick(Sender: TObject);
begin
  frameFMXMobileFinalization1.btnFinalizeClick(Sender);
  if frameFMXMobileFinalization1.Checked then
  begin
    self.tabControlBooking.First(TTabTransition.Slide);
    self.FFinalized := frameFMXMobileFinalization1.Checked;
  end;
end;

procedure TframeFMXMobileHealthBooking.frameFMXMobileFinalization1btnUndoClick(Sender: TObject);
begin
  frameFMXMobileFinalization1.btnUndoClick(Sender);

end;

procedure TframeFMXMobileHealthBooking.frameFMXMobilePrescription1btnSavePrescriptionClick(Sender: TObject);
begin
  frameFMXMobileFinalization1.frameFMXMobilePrescription1btnSavePrescriptionClick(Sender);

end;

function TframeFMXMobileHealthBooking.GetChecked: Boolean;
begin
  Result := self.frameFMXMobileFinalization1.Checked;
end;

function TframeFMXMobileHealthBooking.GetLocationText: String;
begin
  if (ListBox1.ItemIndex <> -1) and (ListBox1.Items.count > 0) then
    Result := (ListBox1.Items[ListBox1.ItemIndex])
  else
    Result := self.FSelectedLocation
end;

function TframeFMXMobileHealthBooking.IsFirst: Boolean;
begin
  Result := self.tabControlBooking.TabIndex = 0;
end;

procedure TframeFMXMobileHealthBooking.ListBox1ItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
begin
  self.edLocation.Text := Item.Text;
  FJanuaGoogleGeoCoding.Address := Item.Text;
  self.ListBox1.Visible := False;
end;

procedure TframeFMXMobileHealthBooking.ListViewPrestazioniItemClick(const Sender: TObject; const AItem: TListViewItem);
var
  /// Procedura portata sul nuovo sistema come ricerca ....................................................
  // aItemID: Int64;
  {
    :item_id::integer,
    0::smallint,
    :latitude::double precision,
    :longitude::double precision,
    10::smallint,
    :user_id::integer,
    :session_id::bigint
  }
  aDataset: TJanuaJsonDACDataset;
  aHeader: TJanuaHealthSearchHeader;
  aSearch: TJanuaHealthSearch;
begin
  if not Assigned(FJanuaGoogleGeoCoding) then
    raise Exception.Create('ListViewPrestazioniItemClick FJanuaGoogleGeoCoding not set');
  aDataset := self.JanuaFMXHealthServicesSearch1.SearchDataset;
  aHeader.Clear;
  aHeader := self.FJanuaRESTHealthClient.Booking.Search.Header;
  aSearch.Header.Clear;
  aSearch.Clear;

  if (self.edLocation.Text.ToLower = 'posizione attuale') or (self.edLocation.Text = '') then
  begin
    self.LocationSensor1.Active := True;
    Sleep(1000);
    if self.LocationSensor1.Sensor.Latitude <> 0.0 then
    begin
      self.FCoordinates.Latitude := self.LocationSensor1.Sensor.Latitude;
      self.FCoordinates.Longitude := self.LocationSensor1.Sensor.Longitude;
    end;
  end;

  // eliminato il controllo self.FItemID perchè il 'tap' può modificarlo in qualsiasi momento
  if (self.tabControlBooking.TabIndex = 0) then
  // and (self.qryPrestazioniservice_id.Value <> self.FItemID) then
  begin
    // per prima cosa verifico che ci siano delle prestazioni in Lista ....................................
    if (self.ListViewPrestazioni.Items.count > 0) and (ListViewPrestazioni.ItemIndex > -1) then
    begin
      // ShowMessage('ItemIndex: ' + ListViewPrestazioni.Items[ListViewPrestazioni.ItemIndex].Text);
      // la funzione LocateService si occupa lei di individuare la 'chiave di ricerca' .......................
      if self.JanuaFMXHealthServicesSearch1.LocateService(ListViewPrestazioni.Items[ListViewPrestazioni.ItemIndex].Text)
      then
      begin
        if self.edLocation.Text <> '' then
        begin
          self.FJanuaGoogleGeoCoding.Address := self.edLocation.Text;
          if FJanuaGoogleGeoCoding.GetCoordinates then
            FCoordinates := FJanuaGoogleGeoCoding.Coordinates.Coordinates
        end;

        // la procedura di ricerca qui Cambia Radicalmente Paradigma. Il programma si deve ora confrontare
        // Con l'oggetto SEARCH che fa parte del booking o del Client Record.

        // id, item_id, discipline_name, prestazione, searchkey
        // Le coordinate dell'ultima ricerca effettuata se sono cambiate cambio la ricerca ....
        // Cosa uso come Parametro il valore di Search ........................................

        aSearch.Header.ItemID := aDataset.FieldByName('id').Value;
        aSearch.Header.Coordinates := FCoordinates;
        aSearch.Header.Address := self.edLocation.Text;
        aSearch.Header.Limit := 30;

        if (aSearch.Header.ItemID <> aHeader.ItemID) or (aHeader.Coordinates.Longitude <> FCoordinates.Latitude) or
          (aHeader.Coordinates.Latitude <> FCoordinates.Longitude) or (FJanuaRESTHealthClient.Booking.Search.count = 0)
        then
        begin
          if FJanuaRESTHealthClient.SessionID = 0 then
            FJanuaRESTHealthClient.StartPublicSession('dico33.com');

          aSearch := FJanuaRESTHealthClient.SearchInstitutes(FJanuaRESTHealthClient.SessionKey, aSearch.Header);

          aSearch.Search := aDataset.FieldByName('prestazione').AsString;

          FJanuaRESTHealthClient.Search := aSearch;

          {
            qrySearchInstitutes.Close;
            self.qrySearchInstitutes.ParamByName('item_id').AsLargeInt := self.qryPrestazioniservice_id.Value;
            self.qrySearchInstitutes.ParamByName('latitude').AsFloat := FCoordinates.Latitude;
            self.qrySearchInstitutes.ParamByName('longitude').AsFloat := FCoordinates.Longitude;
            self.FItemID := self.qryPrestazioniservice_id.Value;
            if FJanuaHealthBooking.SessionID = 0 then
            begin
            FJanuaHealthBooking.StartPublicWebSession;
            end;
            qrySearchInstitutes.ParamByName('session_id').AsLargeInt := FJanuaHealthBooking.SessionID;
            qrySearchInstitutes.ParamByName('user_id').AsLargeInt := FJanuaHealthBooking.UserProfile.User.ID;
            qrySearchInstitutes.Open;
          }
        end;
        {
          SetInstitutesList;
          SetInstitutesMap;
        }

        if aSearch.Institutes.count > 0 then
        begin
          if tabControlBooking.TabIndex = 0 then
          begin
            tabControlBooking.Next(TTabTransition.Slide);
            // prima mi sposto ......
            if not Assigned(frameFMXMobileInstitutesSearch) then
            begin
              self.frameFMXMobileInstitutesSearch := TframeFMXMobileInstitutesSearch.Create(self);
              frameFMXMobileInstitutesSearch.Parent := tabControlBooking;
            end;
            // self.FJanuaFMXMapList.SetViewListAnagraph(self.ListViewInstitutes, aSearch.Institutes);
            SetInstitutesList;
            // imposto il default del FrameFXMMobileInstitutesSearch .................................
          end;
        end;

        // FJanuaHealthBooking.SearchInstitutes(aItemID, 30,
        // FJanuaHealthBooking.SearchPostalCode(edLocation.Text), FCoordinates);
        // dmDico33Mobile.SearchInstitutes(qryPrestazioniservice_id.AsLargeInt, edLocation.Text, FCoordinates);
      end;
    end;
  end;

end;

procedure TframeFMXMobileHealthBooking.LocationSensor1LocationChanged(Sender: TObject;
  const OldLocation, NewLocation: TLocationCoord2D);
begin
  if NewLocation.Latitude <> OldLocation.Latitude then
  begin
    self.Logs.Add('Posizione Attuale: ' + NewLocation.Latitude.ToString + ' : ' + NewLocation.Longitude.ToString);
    self.FCoordinates.Latitude := NewLocation.Latitude;
    self.FCoordinates.Longitude := NewLocation.Longitude;
  end;
end;

procedure TframeFMXMobileHealthBooking.LocationUpdate;
begin
  if not Assigned(FJanuaGoogleGeoCoding) then
    raise Exception.Create('TframeFMXMobileHealthBooking.LocationUpdate FJanuaGoogleGeoCoding not set ');

  if (Length(edLocation.Text) > 4) and (edLocation.Text <> self.GetLocationText) then
  begin
    if (FJanuaGoogleGeoCoding.Address <> edLocation.Text) and (self.edLocation.Text <> FOldLocationSearch) then
    begin
      FJanuaGoogleGeoCoding.Address := edLocation.Text;
      if FJanuaGoogleGeoCoding.GetSuggestions then
      begin
        ListBox1.Width := self.edLocation.Width - 4;
        ListBox1.Position.Y := self.pnlSearch.Position.Y + self.edLocation.Position.Y + edLocation.Height + 2;
        ListBox1.Height := 300;
        ListBox1.Items.Assign(FJanuaGoogleGeoCoding.AddressText);
        ListBox1.Visible := True;
        ListBox1.BringToFront;
      end
      else
      begin
        self.ListBox1.Visible := False;
      end;
    end;
  end
  else
  begin
    self.ListBox1.Visible := False;
  end;
  FOldLocationSearch := self.edLocation.Text;
end;

procedure TframeFMXMobileHealthBooking.MobileLogin;
var
  afrmLogin: TfrmDico33MobileLogin;
begin
  try
    afrmLogin := TfrmDico33MobileLogin.Create(nil);
    try
      afrmLogin.JanuaRESTHealthClient := self.FJanuaRESTHealthClient;
      afrmLogin.ShowModal(
        procedure(ModalResult: TModalResult)
        begin
          // Do something.
          if afrmLogin.LoggedIN then
          begin
            self.FLogs.Add('Riassegno la Sessione: ' + self.FJanuaRESTHealthClient.SessionKey);
            self.FLogs.Add('Assegnazione ad Utente: ' + FJanuaRESTHealthClient.ClientRecord.UserProfile.User.
              ID.ToString);
            if self.FJanuaRESTHealthClient.IsPublic then
              raise Exception.Create('Errore di Sessione su Login');
            // in base a BookingID e al SessionKey del Nuovo utente riassegna la sessione
          end;
        end);
    finally
      FreeAndNil(afrmLogin);
    end;
  except
    on e: Exception do
    begin
      self.FLogs.Add(DateTimeToStr(Now) + sLineBreak + ' TfrmDico33FMXMobile.ModalLogin Error: ' + sLineBreak +
        e.Message);
      raise
    end;

  end;
end;

procedure TframeFMXMobileHealthBooking.Next;
begin

end;

procedure TframeFMXMobileHealthBooking.PrepareConfirmation;
var
  a: TJanuaAnagraphRecord;
begin
  self.DestroyGmaps1;
  // Elimina la mappa numero 01 ..........................................................
  self.SetConfirmationMap;
  if self.FJanuaRESTHealthClient.Booking.Institutes.count = 0 then
  begin
    // SE NON SONO STATI SCELTI istituti prenota i primi 3 a 'random'
    JanuaRESTHealthClient.RandomInstitues(3);
  end;
  frameFMXMobileInstitutesSearch.JanuaFMXMapList.MapPanTo(self.FCoordinates);
  frameFMXMobileInstitutesSearch.JanuaFMXMapList.SetMapAnagraph(JanuaRESTHealthClient.Booking.Institutes);
  {
    for a in self.JanuaRESTHealthClient.Booking.Institutes.Items do
    begin
    TMSFMXWebGMaps01.Markers.Add(a.Latitude, a.Longitude, a.LastName, '', False, true, False, False, true, 0);
    with ListViewSelected.Items.Add do
    begin
    Data['Text1'] := a.LastName;
    Data['Text2'] := a.Address.AddressFull;
    end;
    end;
  }
end;

procedure TframeFMXMobileHealthBooking.Previous;
// la procedura si occupa di tornare indietro distruggendo e correggendo gli elementi presenti sullo
// schermo in un determinato momento
begin
  if self.tabControlBooking.ActiveTab = self.tab02SearchInstitutes then
  begin
    DestroyGmaps1;
    tabControlBooking.Previous(TTabTransition.Slide);
  end
  else if self.tabControlBooking.ActiveTab = self.tab04Finalisation then
  begin
    if frameFMXMobileFinalization1.TabControlFinalization.TabIndex = 0 then
      tabControlBooking.Previous(TTabTransition.Slide)
    else
      frameFMXMobileFinalization1.Previous;
  end;

end;

procedure TframeFMXMobileHealthBooking.SetConfirmationMap;
begin
  // procedura non piu in uso ............................................................

end;

procedure TframeFMXMobileHealthBooking.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FCoordinates := Value;
end;

procedure TframeFMXMobileHealthBooking.SetFinalized(const Value: Boolean);
begin
  FFinalized := Value;
end;

procedure TframeFMXMobileHealthBooking.SetInstitutesList;
begin
  // self.DestroyGmaps1;
  // Elimina la mappa numero 01 ..........................................................
  // self.SetConfirmationMap;

  {
    for a in self.JanuaRESTHealthClient.Booking.Search.Institutes.Items do
    begin
    // TMSFMXWebGMaps01.Markers.Add(a.Latitude, a.Longitude, a.LastName, '', False, true, False, False,
    // False, 999);
    with ListViewItems.Items.Add do
    begin
    Data['Text1'] := a.LastName;
    Data['Text2'] := a.Address.AddressFull;
    end;
    end;
  }
  {
    var
    aInstitute: TJanuaAnagraphRecord;
    begin
    for aInstitute in self.FJanuaRESTHealthClient.Booking.Search.Institutes.Items do
    begin
    with self.ListViewInstitutes.Items.Add do
    begin
    Text := aInstitute.FirstName;
    Purpose := TListItemPurpose.Header;
    end;
    with ListViewInstitutes.Items.Add do
    begin
    Text := aInstitute.distance.ToString + 'Km ' + aInstitute.Address.AddressFull;
    end;
    end;
  }
end;

procedure TframeFMXMobileHealthBooking.SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
begin
  FJanuaGoogleGeoCoding := Value;
end;

procedure TframeFMXMobileHealthBooking.SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
begin
  FJanuaRESTHealthClient := Value;
  frameFMXMobileFinalization1.JanuaRESTHealthClient := self.FJanuaRESTHealthClient;

end;

procedure TframeFMXMobileHealthBooking.SetLogs(const Value: TStrings);
begin
  FLogs := Value;
end;

procedure TframeFMXMobileHealthBooking.SetMapSet1(const Value: Boolean);
begin
  FMapSet1 := Value;
end;

procedure TframeFMXMobileHealthBooking.SetOldLocationSearch(const Value: string);
begin
  FOldLocationSearch := Value;
end;

procedure TframeFMXMobileHealthBooking.SetSelectedLocation(const Value: string);
begin
  FSelectedLocation := Value;
end;

procedure TframeFMXMobileHealthBooking.Destroy;
begin

end;

procedure TframeFMXMobileHealthBooking.DestroyGmaps1;
begin
  // procedura Deprecata cambiata da uno spostamento mappa ......................
  // self.TMSFMXWebGMaps01.Visible := False;
  // non la distruggo fisicamente semplicemente la Disabilito ...............................................
  // occorre verificare la procedura di Creazione della mappa ...............................................
  // FreeAndNil(self.TMSFMXWebGMaps01);
  // self.txtMap.Visible := True;
  // self.TMSFMXWebGMaps1.Visible := False;
end;

end.
