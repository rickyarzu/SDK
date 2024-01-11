unit uframeFMXMobileHealthBooking;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Sensors,
  System.Sensors.Components, System.Json,
  // PLATFORM SPECIFIC LIBRARIES
{$IFDEF MACOS}
  MacApi.CoreFoundation, MacApi.ObjectiveC,
{$ENDIF MACOS}
  // Janua
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Health, Janua.Core.Cloud, Janua.FMX.HealthThreads,
  Janua.Core.Anagraph, Janua.Core.RESTClient.Health, Janua.FMX.Components, Janua.FMX.Forms,
  // Repository disattivato ed assegnato a proprietà esterna al Frame ..................................
  // uClientModuleHealthREST,
  // Frames
  uframeFMXMobilePrescription, uframeFMXMobileFinalization,
  // FGX    // libreria componenti Firemonkey di FGX
  // FGX.ProgressDialog,
  // Tms  Fmx Components ...............................................................................................
  FMX.TMSWebGMapsCommon, FMX.TMSWebGMapsWebBrowser, FMX.TMSWebGMaps, FMX.TMSWebOSMapsWebBrowser, FMX.TMSWebOSMaps,
  FMX.TMSButton,
  // FMX
  FMX.Menus, FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.Edit,
  FMX.Controls.Presentation, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Layouts, FMX.ListBox, FMX.TabControl, FMX.DateTimeCtrls, FMX.ScrollBox, FMX.Memo,
  uframeFMXRegisterMobile, uframeFMXLoginMobile, Data.DB, MemDS, VirtualTable;

type
  TJanuaPopupMenu = class(FMX.Menus.TPopupMenu)
  private
    FEnabled: boolean;
  public
    procedure Popup(X, Y: Single); override;
    property Enabled: boolean read FEnabled Write FEnabled;
  end;

type
  TLoginCallType = (lctFrame, lctBookingAction);

type
  TSearchInstitutesThread = class(TThread)
  private
    FJanuaHealthRestClient: TJanuaRESTHealthClient;
    FSearchHeader: TJanuaHealthSearchHeader;
    FSessionKey: string;
    FSearch: TJanuaHealthSearch;
    procedure SetJanuaHealthRestClient(const Value: TJanuaRESTHealthClient);
    procedure SetSessionHeader(const Value: TJanuaHealthSearchHeader);
    procedure SetSessionKey(const Value: string);
    procedure SetSearch(const Value: TJanuaHealthSearch);
  protected
    procedure SearchInstitutes;
  public
    procedure Execute; override;
  public
    property JanuaHealthRestClient: TJanuaRESTHealthClient read FJanuaHealthRestClient write SetJanuaHealthRestClient;
    property SessionKey: string read FSessionKey write SetSessionKey;
    property SearchHeader: TJanuaHealthSearchHeader read FSearchHeader write SetSessionHeader;
    property Search: TJanuaHealthSearch read FSearch write SetSearch;
  end;

type
  TframeFMXMobileHealthBooking = class(TFrame)
    // Frames ..........................................................................................................
    frameFMXMobileFinalization1: TframeFMXMobileFinalization;
    frameFMXLoginMobile1: TframeFMXLoginMobile;
    // Tabs ............................................................................................................
    tab02SearchInstitutes: TTabItem;
    tab04Finalisation: TTabItem;
    // Framework .......................................................................................................
    JanuaFMXHealthServicesSearch1: TJanuaFMXHealthServicesSearch;
    // Components ......................................................................................................
    LocationSensor1: TLocationSensor;
    tabControlBooking: TTabControl;
    tab01SearchServices: TTabItem;
    ListViewPrestazioni: TListView;
    edSearch: TEdit;
    ClearEditButton2: TClearEditButton;
    edLocation: TEdit;
    ClearEditButton1: TClearEditButton;
    Text1: TText;
    ListBox1: TListBox;
    pnlMap: TPanel;
    txtMap: TText;
    btnBooking: TButton;
    ListViewInstitutes: TListView;
    btnFinalization: TButton;
    btnUndo: TButton;
    TextConfirmation: TText;
    tab06Login: TTabItem;
    Popup1: TPopup;
    btnSearchInstitutes: TButton;
    VertScrollBox1: TVertScrollBox;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Image2: TImage;
    Label3: TLabel;
    Image3: TImage;
    vtIndexSearch: TVirtualTable;
    vtIndexSearchid: TLargeintField;
    vtIndexSearchdiscipline_name: TWideStringField;
    vtIndexSearchprestazione: TWideStringField;
    vtIndexSearchpos: TIntegerField;
    procedure edLocationTyping(Sender: TObject);
    procedure edSearchTyping(Sender: TObject);
    procedure btnBookingClick(Sender: TObject);
    procedure ListViewPrestazioniItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure ListViewInstitutesItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure ListBox1ItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
    procedure LocationSensor1LocationChanged(Sender: TObject; const OldLocation, NewLocation: TLocationCoord2D);
    procedure ListViewSelectedItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure btnFinalizationClick(Sender: TObject);
    procedure frameFMXMobileFinalization1btnFinalizeClick(Sender: TObject);
    procedure frameFMXMobileFinalization1btnUndoClick(Sender: TObject);
    procedure frameFMXAnagraphPersonalMobile1btnSave1Click(Sender: TObject);
    procedure frameFMXMobilePrescription1btnSavePrescriptionClick(Sender: TObject);
    procedure frameFMXLoginMobile1btnLoginClick(Sender: TObject);
    procedure ListViewInstitutesPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure frameFMXLoginMobile1Button3Click(Sender: TObject);
    procedure edSearchEnter(Sender: TObject);
    procedure edSearchExit(Sender: TObject);
    procedure edSearchKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure edLocationKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure btnUndoClick(Sender: TObject);
    procedure btnSearchInstitutesClick(Sender: TObject);
    procedure frameFMXRegisterMobile1btnProfileClick(Sender: TObject);
    procedure tabControlBookingChange(Sender: TObject);
    procedure frameFMXMobilePrescription1btnNextClick(Sender: TObject);
    procedure frameFMXMobileSummary1btnUndoClick(Sender: TObject);
    procedure frameFMXMobileSummary1btnFinalizeClick(Sender: TObject);
  private
    // Janua Components ...............................................................................................
    FCoordinates: TJanuaRecordCoordinates;
    FJanuaGoogleGeoCoding: TJanuaGoogleGeoCoding;
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    FJanuaFMXMapList: TJanuaFMXMapList;
    // MapSet indica Se la Mappa1 è impostata ed attivata ... probabilmente deprecato
    // Map1Set: Boolean;
    FPopupMenu: TJanuaPopupMenu;
    // FWaitBooking: boolean;
    // TMSFMXWebGMaps01: TTMSFMXWebGMaps;
    // mappa 2
    // MapSet indica Se la Mappa1 è impostata ed attivata ... probabilmente deprecato
    FItemID: Int64;
    FLogs: TStrings;
    FOldLocationSearch: string;
    FMapSet1: boolean;
    FFinalized: boolean;
    //
    FTLoginCallType: TLoginCallType;
    FLoginCallTab: TTabItem;
    procedure SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetOldLocationSearch(const Value: string);
    // procedure SetSelectedLocation(const Value: string);
    // come mai SetSelectedLocation non va?
    procedure SetMapSet1(const Value: boolean);
    procedure SetLogs(const Value: TStrings);
    procedure SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
    procedure ButtonFinalizer;
    procedure SetFinalized(const Value: boolean);
    procedure CheckLoggedIn;
    procedure UndoBooking;
    procedure GoInstitutes;
    procedure SearchInstitutes(aDataset: TJanuaJsonDacDataset; aUseThread: boolean = False);
    procedure GeoCoding;
    procedure CreateMap(Latidude, Longitude: Double);
  private // Search Elements to be passed between Button and Search Components
    aDataset: TJanuaJsonDacDataset;
    aHeader: TJanuaHealthSearchHeader;
    aSearch: TJanuaHealthSearch;
    aOldAddress: string;
    FJanuaFMXFormManager: TJanuaFMXFormManager;
    procedure SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);

    { Private declarations }
  protected
    procedure SetInstitutesMap;
    procedure SetInstitutesList;
    function GetLocationText: String;
    procedure PrepareConfirmation;
    procedure SetConfirmationMap;
    procedure LocationUpdate;
    procedure MobileLogin;
    procedure TabLogin;
  public
    TMSFMXWebGMaps1: TTMSFMXWebGMaps;
    function GetChecked: boolean;
    procedure Next;
    procedure First;
    procedure Previous;
    procedure Default;
    procedure HideMap;
    procedure ShowMap;
    procedure CleanSearch;
    procedure DestroyGmaps1; // distrugge la mappa numero 1
    function IsFirst: boolean; // funzione che dice al sistema se siamo o no al primo Tab selezionato.
    procedure SetupFormManager; // This procedures stands in All Janua Project Frames and is called by Parent..........
  public
    { Public declarations }
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read FJanuaRESTHealthClient write SetJanuaRESTHealthClient;
    property Logs: TStrings read FLogs write SetLogs;
    property MapSet1: boolean read FMapSet1 write SetMapSet1;
    property OldLocationSearch: string read FOldLocationSearch write SetOldLocationSearch;
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
    property JanuaGoogleGeoCoding: TJanuaGoogleGeoCoding read FJanuaGoogleGeoCoding write SetJanuaGoogleGeoCoding;
    property Checked: boolean read GetChecked;
    property Finalized: boolean read FFinalized write SetFinalized;
    property JanuaFMXFormManager: TJanuaFMXFormManager read FJanuaFMXFormManager write SetJanuaFMXFormManager;
  end;

implementation

{$R *.fmx}

uses
  ufrmFMXLoginMobile;

procedure TframeFMXMobileHealthBooking.btnBookingClick(Sender: TObject);
var
  // c: TAlphaColorRec;
  o: TListItemDrawable;
  // i: integer;
begin
  {
    TMSFMXWebGMaps01.MapPanTo(FJanuaRESTHealthClient.Coordinates.Latitude,
    FJanuaRESTHealthClient.Coordinates.Longitude);

    if not FJanuaFMXMapList.Active then
    begin
    FJanuaFMXMapList.SetMapAnagraph(pnlMap, JanuaRESTHealthClient.Booking.Search.Institutes, FCoordinates);
    FJanuaFMXMapList.MapPanTo(self.FCoordinates);
    end;
    Sleep(1000);
    if FJanuaRESTHealthClient.Coordinates.Latitude > 0 then
    self.FJanuaFMXMapList.MapPanTo(FJanuaRESTHealthClient.Coordinates)
    else
    self.FJanuaFMXMapList.MapPanTo(FCoordinates);
  }

  case btnBooking.Tag of
    1: // stato iniziale gli istituti selezionati sono '0' avvio prenotazione 'random' primi 3 Istituti.
      begin
        FJanuaRESTHealthClient.RandomInstitues(3);
        ButtonFinalizer;
        // parte da Gestire per vedere gli istituti confermati.
        // self.FJanuaFMXMapList.Active := False;
        // self.TextConfirmation.Visible := True;
      end;
    2:
      begin
        with self.FJanuaRESTHealthClient.Booking do
        begin
          if Institutes.count < 3 then
          begin
            if not Institutes.FindItemByID(Search.Institutes.SelectedItem.anagraph_id) then
            begin
              Institutes.Add(Search.Institutes.SelectedItem);
              if Institutes.count = 3 then
              begin
                ButtonFinalizer;
              end
              else
              begin
                self.btnBooking.Tag := 3;
                self.btnBooking.FontColor := TAlphaColorRec.Red;
                self.btnBooking.Text := 'Annulla ' + Institutes.SelectedItem.LastName;
                with ListViewInstitutes do
                begin
                  o := Items[ItemIndex].Objects.FindDrawable('Accessory3');
                  if o <> nil then
                    o.Visible := True;
                end;
              end;
            end;
          end;
        end;
      end;
    3:
      begin
        with self.FJanuaRESTHealthClient.Booking do
        begin
          if Institutes.count > 0 then
          begin
            if Institutes.FindItemByID(Search.Institutes.SelectedItem.anagraph_id) then
            begin
              Institutes.Remove(Search.Institutes.SelectedItem);
              self.btnBooking.Tag := 2;
              self.btnBooking.FontColor := TAlphaColorRec.Blue;
              self.btnBooking.Text := 'Prenota ' + Institutes.SelectedItem.LastName;
              with ListViewInstitutes do
              begin
                o := Items[ItemIndex].Objects.FindDrawable('Accessory3');
                // tolgo la spunta all'istituto annullato ...................................
                if o <> nil then
                  o.Visible := False;
              end;
            end;
          end;
        end;
      end;
    4:
      begin
        FJanuaRESTHealthClient.Booking.Institutes.Clear;
        self.btnBooking.Tag := 3;
        self.btnBooking.Text := 'Seleziona automaticamente 3 istituti';
        self.FJanuaFMXMapList.SetViewListAnagraph(FJanuaRESTHealthClient.Booking.Search.Institutes);
        self.FJanuaFMXMapList.SetMapAnagraph(FJanuaRESTHealthClient.Booking.Search.Institutes);
        self.btnFinalization.Visible := False;
        self.btnUndo.Visible := False;
      end;
    5:
      begin

      end;
  end;
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
var
  i: Int64;
  TempSession: TJanuaServerSession;
begin
  self.HideMap;

  if self.FJanuaRESTHealthClient.SessionID > 0 then
  begin
    i := FJanuaRESTHealthClient.DoBooking;
    // Do Booking ed Open Booking nel caso di JanuaRESTHealthClient sono la medesima cosa ....................
    if i <= 0 then
    begin
      ShowMessage('Attenzione errore nella procedura di registrazione prenotazione: ' +
        FJanuaRESTHealthClient.LastErrorMessage);
    end
    else
    begin
      if FJanuaRESTHealthClient.IsPublic then
      begin
        TempSession := FJanuaRESTHealthClient.Session;
        FTLoginCallType := TLoginCallType.lctBookingAction;
        FLoginCallTab := self.tabControlBooking.ActiveTab;
        self.TabLogin;
        // {$IFNDEF ANDROID }
        { self.MobileLogin;
          CheckLoggedIn; }
        // {$ENDIF}
      end
      else
      begin
        self.tabControlBooking.Next(TTAbTransition.Slide);
        // se non necessita la login mi muovo semplicemente alla prossima pagina e proseguo la prenotazione

      end;
    end
  end;
end;

procedure TframeFMXMobileHealthBooking.btnSearchInstitutesClick(Sender: TObject);
begin
  SearchInstitutes(JanuaFMXHealthServicesSearch1.SearchDataset);
  if (self.FJanuaRESTHealthClient.Search.count > 0) then
    self.GoInstitutes
  else
    ShowMessage('Non sono stati trovati istituti');
end;

procedure TframeFMXMobileHealthBooking.btnUndoClick(Sender: TObject);
begin
  self.UndoBooking;
  self.First;
end;

procedure TframeFMXMobileHealthBooking.Default;
begin
  self.btnFinalization.Visible := False;
  self.btnUndo.Visible := False;
  self.HideMap;
  self.btnSearchInstitutes.Visible := False;
  self.btnBooking.Tag := 0;
  self.tabControlBooking.ActiveTab := self.tab01SearchServices;
  self.ListBox1.Visible := False;
  frameFMXMobileFinalization1.Default;
  { This defines the default active tab at runtime }
  FOldLocationSearch := '';
  self.FItemID := 0;
  FLogs := TStringList.Create;
  FJanuaFMXMapList := TJanuaFMXMapList.Create(self);
  FPopupMenu := TJanuaPopupMenu.Create(self);

  { self.edSearch.PopupMenu := FPopupMenu;
    self.edLocation.PopupMenu := FPopupMenu; }
  // JanuaHealthBooking := dmDico33Mobile.JanuaServerHealthBooking1;
end;

procedure TframeFMXMobileHealthBooking.edLocationKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkReturn then
  begin
    self.edSearch.Visible := True;
    if self.ListBox1.Items.count > 0 then
    begin
      ListBox1ItemClick(ListBox1, self.ListBox1.ItemByIndex(0));
    end;
  end;
end;

procedure TframeFMXMobileHealthBooking.edLocationTyping(Sender: TObject);
begin
  if not Assigned(self.FJanuaRESTHealthClient) then
    raise Exception.Create('frameFMXMobileHealthSearch JanuaRESTHealthClient not set');

  if self.edSearch.Visible then
    self.edSearch.Visible := False;

  ListBox1.Width := self.edLocation.Width - 4;
  ListBox1.Position.X := self.edLocation.Position.X + 4;
  ListBox1.Position.Y := self.edLocation.Position.Y + edLocation.Height + 2;
  ListBox1.Height := 300;
  ListBox1.Items.Assign(FJanuaGoogleGeoCoding.AddressText);

  if (Length(edLocation.Text) > 0) and (edLocation.Text <> self.GetLocationText) then
  begin
    if (FJanuaGoogleGeoCoding.Address <> edLocation.Text) and (self.edLocation.Text <> FOldLocationSearch) then
    begin
      FJanuaGoogleGeoCoding.Address := edLocation.Text;
      if FJanuaGoogleGeoCoding.GetSuggestions then
      begin
        ListBox1.Visible := True;
      end
      else
      begin
        self.ListBox1.Visible := False;
      end;
    end;
  end
  else
  begin
    self.ListBox1.Visible := (edLocation.Text <> self.GetLocationText);
  end;

  if self.ListBox1.Visible then
    ListBox1.BringToFront;

  FOldLocationSearch := self.edLocation.Text;
end;

procedure TframeFMXMobileHealthBooking.edSearchEnter(Sender: TObject);
begin
  self.Text1.Visible := False;
  self.edLocation.Visible := False;
  self.btnSearchInstitutes.Visible := False;
  self.VertScrollBox1.Visible := False;
end;

procedure TframeFMXMobileHealthBooking.edSearchExit(Sender: TObject);
begin
  // self.edLocation.Visible := True;
end;

procedure TframeFMXMobileHealthBooking.edSearchKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  {
    if Assigned(self.VertScrollBox1) then
    begin
    self.VertScrollBox1.DisposeOf;
    self.VertScrollBox1 := nil;
    end;
  }
  if Key = vkReturn then
  begin
    self.edLocation.Visible := True;
    self.edLocation.SetFocus;
  end;
end;

procedure TframeFMXMobileHealthBooking.edSearchTyping(Sender: TObject);
begin
  Assert(Assigned(self.FJanuaRESTHealthClient), 'frameFMXMobileHealthSearch ClientModuleHealthREST not set');

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
  UndoBooking;
  self.HideMap;
  self.tabControlBooking.First(TTAbTransition.Slide);
end;

procedure TframeFMXMobileHealthBooking.frameFMXAnagraphPersonalMobile1btnSave1Click(Sender: TObject);
begin
  frameFMXMobileFinalization1.frameFMXAnagraphPersonalMobile1btnSave1Click(Sender);

end;

procedure TframeFMXMobileHealthBooking.frameFMXLoginMobile1btnLoginClick(Sender: TObject);
begin
  if not Assigned(FJanuaRESTHealthClient) then
    raise Exception.Create('frmDico33MobileLogin: FJanuaRESTHealthClient not set');

  if frameFMXLoginMobile1.edLogin.Text = '' then
    ShowMessage('Attenzione non avete inserito la mail')
  else if not Janua.Core.Functions.IsValidEmail(frameFMXLoginMobile1.edLogin.Text) then
    ShowMessage('Attenzione immessa email errata')
  else
  begin
    FJanuaRESTHealthClient.Login(frameFMXLoginMobile1.edLogin.Text, frameFMXLoginMobile1.edPassword.Text);
    if FJanuaRESTHealthClient.IsLoggedIN then
    begin
      self.FLogs.Add('Riassegno la Sessione: ' + self.FJanuaRESTHealthClient.SessionKey);
      self.FLogs.Add('Assegnazione ad Utente: ' + FJanuaRESTHealthClient.ClientRecord.UserProfile.User.ID.ToString);
      if self.FJanuaRESTHealthClient.IsPublic then
        raise Exception.Create('Errore di Sessione su Login');
      // in base a BookingID e al SessionKey del Nuovo utente riassegna la sessione
      self.CheckLoggedIn;
    end
    else
    begin
      ShowMessage('Login Errata reinserite i dati o registratevi');
    end;
  end;

end;

procedure TframeFMXMobileHealthBooking.frameFMXLoginMobile1Button3Click(Sender: TObject);
begin
  frameFMXLoginMobile1.Button3Click(Sender);

end;

procedure TframeFMXMobileHealthBooking.frameFMXMobileFinalization1btnFinalizeClick(Sender: TObject);
begin
  frameFMXMobileFinalization1.btnFinalizeClick(Sender);
  if frameFMXMobileFinalization1.Checked then
  begin
    self.tabControlBooking.First(TTAbTransition.Slide);
    self.FFinalized := frameFMXMobileFinalization1.Checked;
  end;
end;

procedure TframeFMXMobileHealthBooking.frameFMXMobileFinalization1btnUndoClick(Sender: TObject);
begin
  frameFMXMobileFinalization1.btnUndoClick(Sender);

end;

procedure TframeFMXMobileHealthBooking.frameFMXMobilePrescription1btnNextClick(Sender: TObject);
begin
  frameFMXMobileFinalization1.frameFMXMobilePrescription1btnNextClick(Sender);

end;

procedure TframeFMXMobileHealthBooking.frameFMXMobilePrescription1btnSavePrescriptionClick(Sender: TObject);
begin
  frameFMXMobileFinalization1.frameFMXMobilePrescription1btnSavePrescriptionClick(Sender);

end;

procedure TframeFMXMobileHealthBooking.frameFMXMobileSummary1btnFinalizeClick(Sender: TObject);
begin
  frameFMXMobileFinalization1.frameFMXMobileSummary1btnFinalizeClick(Sender);
  CleanSearch;
  self.First;
end;

procedure TframeFMXMobileHealthBooking.frameFMXMobileSummary1btnUndoClick(Sender: TObject);
begin
  frameFMXMobileFinalization1.frameFMXMobileSummary1btnUndoClick(Sender);
  CleanSearch;
  self.First;
end;

procedure TframeFMXMobileHealthBooking.frameFMXRegisterMobile1btnProfileClick(Sender: TObject);
begin
  self.frameFMXLoginMobile1.frameFMXRegisterMobile1.btnProfileClick(Sender);
  FJanuaRESTHealthClient.Login(frameFMXLoginMobile1.frameFMXRegisterMobile1.edFirstMail.Text,
    frameFMXLoginMobile1.frameFMXRegisterMobile1.edPassword.Text);
  if FJanuaRESTHealthClient.IsLoggedIN then
  begin
    self.FLogs.Add('Riassegno la Sessione: ' + self.FJanuaRESTHealthClient.SessionKey);
    self.FLogs.Add('Assegnazione ad Utente: ' + FJanuaRESTHealthClient.ClientRecord.UserProfile.User.ID.ToString);
    if self.FJanuaRESTHealthClient.IsPublic then
      raise Exception.Create('Errore di Sessione su Login');
    // in base a BookingID e al SessionKey del Nuovo utente riassegna la sessione
    self.CheckLoggedIn;
  end;

end;

function TframeFMXMobileHealthBooking.GetChecked: boolean;
begin
  Result := self.frameFMXMobileFinalization1.Checked;
end;

function TframeFMXMobileHealthBooking.GetLocationText: String;
begin
  if (ListBox1.ItemIndex <> -1) and (ListBox1.Items.count > 0) then
    Result := (ListBox1.Items[ListBox1.ItemIndex])
  else
    Result := ''
end;

function TframeFMXMobileHealthBooking.IsFirst: boolean;
begin
  Result := self.tabControlBooking.TabIndex = 0;
end;

procedure TframeFMXMobileHealthBooking.SearchInstitutes(aDataset: TJanuaJsonDacDataset; aUseThread: boolean = False);
var
  sThread: TSearchInstitutesThread;
begin
  if (aOldAddress <> self.edLocation.Text) then
    GeoCoding;

  if FJanuaRESTHealthClient.SessionID = 0 then
    FJanuaRESTHealthClient.StartPublicSession('dico33.com');
  if (aSearch.count <= 0) or (aSearch.Search <> self.edSearch.Text) or (aOldAddress <> self.edLocation.Text) then
  begin
    aOldAddress := self.edLocation.Text;
    aSearch.Search := aDataset.FieldByName('prestazione').AsString;
    self.edSearch.Text := aSearch.Search;
    if aUseThread then
      try
        sThread := TSearchInstitutesThread.Create;
        sThread.JanuaHealthRestClient := FJanuaRESTHealthClient;
        sThread.SessionKey := FJanuaRESTHealthClient.SessionKey;
        sThread.SearchHeader := aSearch.Header;
        sThread.Search := aSearch;
        sThread.Execute;
      finally
        sThread.Free;
      end
    else
    begin
      aSearch := FJanuaRESTHealthClient.SearchInstitutes(FJanuaRESTHealthClient.SessionKey, aSearch.Header);
      aSearch.Search := aDataset.FieldByName('prestazione').AsString;
      FJanuaRESTHealthClient.Search := aSearch;
    end;
  end;
end;

procedure TframeFMXMobileHealthBooking.GoInstitutes;
begin
  if tabControlBooking.TabIndex = 0 then
    tabControlBooking.Next(TTAbTransition.Slide);
  // self.FJanuaFMXMapList.SetViewListAnagraph(self.ListViewInstitutes, aSearch.Institutes);
  SetInstitutesList;
  btnBooking.Tag := 1;
  ShowMap;
  FJanuaFMXMapList.TMSFMXWebGMaps := self.TMSFMXWebGMaps1;
  FJanuaFMXMapList.SetMapAnagraph(JanuaRESTHealthClient.Booking.Search.Institutes);
end;

procedure TframeFMXMobileHealthBooking.HideMap;
begin
  if self.TMSFMXWebGMaps1 <> nil then
  begin
    self.TMSFMXWebGMaps1.Visible := False;
    self.TMSFMXWebGMaps1.Enabled := False;
  end;
end;

procedure TframeFMXMobileHealthBooking.UndoBooking;
begin
  self.FJanuaRESTHealthClient.BookingUndoLocalCache;
  self.btnFinalization.Visible := False;
  self.btnUndo.Visible := False;
  self.btnBooking.Tag := 3;
  self.btnBooking.Text := 'Seleziona automaticamente 3 istituti';
end;

procedure TframeFMXMobileHealthBooking.CheckLoggedIn;
begin
  if FJanuaRESTHealthClient.ClientRecord.IsLoggedIN then
  begin
    if not FJanuaRESTHealthClient.AssignSessionBooking then
      ShowMessage('Attenzione errore di comunicazione con il server: JanuaRESTHealthClient.AssignSessionBooking');
    if self.FTLoginCallType = TLoginCallType.lctBookingAction then
    begin
      // ----- se l'utente è già 'loggato' allora no-problem ----------------------------------------------------------
      if not self.FJanuaRESTHealthClient.IsPublic then
      begin
        // TMSFMXWebGMaps01.Visible := False;
        // FreeAndNil(TMSFMXWebGMaps2);
        self.TextConfirmation.Visible := True;
        self.HideMap;
        frameFMXMobileFinalization1.Default;
        // {$IFNDEF Android}
        // se ho eseguito la Login Modale allora mi sposto di una Slide.
        { self.tabControlBooking.Next(TTAbTransition.Slide); }
        // {$ELSE}
        // se ho eseguito la TabLogin allora vado direttamente alla pagina tabulata
        self.tabControlBooking.ActiveTab := self.tab04Finalisation;
        // {$ENDIF Android}
        // self.FJanuaFMXMapList.SetMap(self.pnlMapConfirmation);
      end
      else
      begin
        ShowMessage('Attenzione errore di comunicazione con il server o utente non registrato');
      end;
    end;
  end;
end;

procedure TframeFMXMobileHealthBooking.CleanSearch;
begin
  self.edSearch.Text := '';
  self.edLocation.Text := '';
  ListViewPrestazioni.Items.Clear;
  if TMSFMXWebGMaps1 <> nil then
    FreeAndNil(TMSFMXWebGMaps1);
  VertScrollBox1.Visible := True;
  VertScrollBox1.SetFocus;
  btnSearchInstitutes.Visible := False;
  self.edSearch.Visible := True;
  self.edLocation.Visible := True;
  aSearch.Header.Clear;
  aSearch.Clear;
  aHeader.Clear;
end;

procedure TframeFMXMobileHealthBooking.CreateMap(Latidude, Longitude: Double);
begin
  if TMSFMXWebGMaps1 <> nil then
    FreeAndNil(TMSFMXWebGMaps1);

  TMSFMXWebGMaps1 := TTMSFMXWebGMaps.Create(self);
  with TMSFMXWebGMaps1 do
  begin
    Align := TAlignLayout.Client;
    Size.PlatformDefault := False;
    APIKey := 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c';
    MapOptions.ZoomMap := 13;
    MapOptions.MapType := TMapType.mtTerrain;
    MapOptions.DefaultLatitude := Latidude;
    MapOptions.DefaultLongitude := Longitude;
    MapOptions.DisablePOI := True;
    StreetViewOptions.DefaultLatitude := Latidude;
    StreetViewOptions.DefaultLongitude := Longitude;
    ControlsOptions.PanControl.Visible := False;
    ControlsOptions.MapTypeControl.Visible := False;
    ControlsOptions.StreetViewControl.Visible := False;
    ControlsOptions.OverviewMapControl.Visible := False;
    PolygonLabel.Font.Family := 'Arial';
    TabOrder := 0;
    Parent := pnlMap;
  end;
end;

procedure TframeFMXMobileHealthBooking.ButtonFinalizer;
var
  // c: TAlphaColorRec;
  i: integer;
  o: TListItemDrawable;
begin
  self.btnBooking.Tag := 4;
  self.btnBooking.FontColor := TAlphaColorRec.Red;
  self.btnBooking.Text := 'Annulla selezione Istituti';
  if FJanuaRESTHealthClient.Booking.count > 0 then
  begin
    self.FJanuaFMXMapList.SetViewListAnagraph(FJanuaRESTHealthClient.Booking.Institutes);
    self.FJanuaFMXMapList.SetMapAnagraph(FJanuaRESTHealthClient.Booking.Institutes);
    // imposto tutte le flag come impostate (checked) per ogni voce selezionata
    with ListViewInstitutes do
    begin
      for i := 0 to ItemCount - 1 do
      begin
        // TListItemText(Litem.Objects.FindDrawable('ytde')).TextColor := TAlphaColorRec.Red;
        o := Items[i].Objects.FindDrawable('Accessory3');
        if o <> nil then
          o.Visible := True;

      end;
    end;
    self.btnFinalization.Visible := True;
    self.btnUndo.Visible := True;
  end;
end;

procedure TframeFMXMobileHealthBooking.ListBox1ItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
begin
  self.edLocation.Text := Item.Text;
  FJanuaGoogleGeoCoding.Coordinates.Latitude := 0;
  FJanuaGoogleGeoCoding.Coordinates.Longitude := 0;
  FJanuaGoogleGeoCoding.Address := Item.Text;
  // GeoCoding;
  // 23/10/17 nascosto GeoCoding ....................
  self.ListBox1.Visible := False;
  self.edSearch.Visible := True;
end;

procedure TframeFMXMobileHealthBooking.ListViewInstitutesItemClick(const Sender: TObject; const AItem: TListViewItem);
// var
// c: TAlphaColorRec;
begin
  // Verifica della funzione di ricerca che potrebbe non servire più
  if not self.FJanuaFMXMapList.Active then
    FJanuaFMXMapList.SetMapAnagraph(pnlMap, JanuaRESTHealthClient.Booking.Search.Institutes, FCoordinates);

  // per prima cosa verifico che la mappa sia Visibile ed aggiornata con le coordinate
  // dell'istituto selezionato .......................................................
  with FJanuaRESTHealthClient.Booking do
  begin
    // se il numero di istituti selezionati è maggiore di '0' e l'istituto è in lista allora .....
    if (Institutes.count > 0) and Institutes.FindItemByLastName(AItem.Data['Text1'].ToString) then
    begin
      self.FJanuaFMXMapList.MapPanTo(Institutes.SelectedItem);
      self.btnBooking.Tag := 3;
      self.btnBooking.Text := 'Annulla: ' + Institutes.SelectedItem.LastName;
      self.btnBooking.TextSettings.FontColor := TAlphaColorRec.Red;
    end
    else if Institutes.count < 3 then
    begin
      btnBooking.FontColor := TAlphaColorRec.Blue;
      btnBooking.Tag := 2; // indica che possiamo prenotare l'istituto ................................
      btnBooking.Text := ('Prenota: ' + AItem.Data['Text1'].ToString);
    end;

    if Search.Institutes.FindItemByLastName(AItem.Data['Text1'].ToString) then
      self.FJanuaFMXMapList.MapPanTo(Search.Institutes.SelectedItem)
      // L'istituto Selezionato è quindi sempre l'istituto individuato dalla ricerca
    else
      FJanuaFMXMapList.MapPanTo(Search.Header.Coordinates);;
  end;
  {
    if self.qrySearchInstitutes.Locate('an_last_name', AItem.Data['Text1'].ToString, []) then
    begin
    TMSFMXWebGMaps.MapPanTo(qrySearchInstituteslatitude.AsFloat, qrySearchInstituteslongitude.AsFloat);
    self.FSelectedInstitute := self.qrySearchInstitutesanagraph_id.AsInteger;
    end
    else
    begin
    TMSFMXWebGMaps.MapPanTo(FCoordinates.Latitude, FCoordinates.Longitude);
    TMSFMXWebGMaps.MapPanTo(FCoordinates.Latitude, FCoordinates.Longitude);
    end;
  }
end;

procedure TframeFMXMobileHealthBooking.ListViewInstitutesPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
begin
  if (ListViewInstitutes.Items.count > 0) and (ListViewInstitutes.GetItemRect(ListViewInstitutes.Items.count - 1).Bottom
    <= ListViewInstitutes.Height) then
  begin
    // se ho raggiunto il fondo provo a caricare dei nuovi istituti .... riporto la procedura originale di Sarina Dupont.
    { procedure TForm1.AddMoreItemsBatch;
      var
      I: Integer;
      begin
      for I := 0 to 9 do
      begin
      if not HasMoreItems then
      Break;
      AddItem;
      end;
      end; }
  end;
end;

procedure TframeFMXMobileHealthBooking.ListViewPrestazioniItemClick(const Sender: TObject; const AItem: TListViewItem);
/// var
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

begin
  aDataset := self.JanuaFMXHealthServicesSearch1.SearchDataset;
  aHeader.Clear;
  aHeader := self.FJanuaRESTHealthClient.Booking.Search.Header;
  aSearch.Header.Clear;
  aSearch.Clear;
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
        // la procedura di ricerca qui Cambia Radicalmente Paradigma. Il programma si deve ora confrontare
        // Con l'oggetto SEARCH che fa parte del booking o del Client Record.

        // id, item_id, discipline_name, prestazione, searchkey
        // Le coordinate dell'ultima ricerca effettuata se sono cambiate cambio la ricerca ....
        // Cosa uso come Parametro il valore di Search ........................................

        aSearch.Header.ItemID := aDataset.FieldByName('id').Value;
        aSearch.Header.Coordinates := FCoordinates;
        aSearch.Header.Address := self.edLocation.Text;
        aSearch.Header.Limit := 30;
        aSearch.Header.page := 1;

        // Temporaneamente sospesa la ricerca istituti automatica e la procedura GoInstitutes
        {
          if (aSearch.Header.ItemID <> aHeader.ItemID) or (aHeader.Coordinates.Longitude <> FCoordinates.Latitude) or
          (aHeader.Coordinates.Latitude <> FCoordinates.Longitude) or (FJanuaRESTHealthClient.Booking.Search.count = 0)
          then
          // External Search Procedure to be called also by the Search Button
          SearchInstitutes(aDataset, True);
        }
        if (aSearch.Institutes.count > 0) and (self.edLocation.Visible) then
        begin
          self.btnSearchInstitutesClick(self.btnSearchInstitutes);
        end
        else
        begin
          self.edSearch.Text := ListViewPrestazioni.Items[ListViewPrestazioni.ItemIndex].Text;
          self.edLocation.Visible := True;
          self.btnSearchInstitutes.Visible := True;
        end;

        // FJanuaHealthBooking.SearchInstitutes(aItemID, 30,
        // FJanuaHealthBooking.SearchPostalCode(edLocation.Text), FCoordinates);
        // dmDico33Mobile.SearchInstitutes(qryPrestazioniservice_id.AsLargeInt, edLocation.Text, FCoordinates);
      end;
    end;
  end;

end;

procedure TframeFMXMobileHealthBooking.ListViewSelectedItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  self.TextConfirmation.Visible := False;
  {
    self.TMSFMXWebGMaps01.Visible := true;
    TMSFMXWebGMaps01.MapPanTo(FCoordinates.Latitude, FCoordinates.Longitude);
    TMSFMXWebGMaps01.Markers.Clear;
  }
  self.FJanuaFMXMapList.MapPanTo(FCoordinates);

  with FJanuaRESTHealthClient.Booking.Institutes do
  begin

    // if FindItemByLastName(ListViewSelected.Items[ListViewSelected.ItemIndex].Text) then
    begin
      FJanuaFMXMapList.MapPanTo(FJanuaRESTHealthClient.Booking.Institutes.SelectedItem);
      {
        TMSFMXWebGMaps01.Markers.Clear;
        TMSFMXWebGMaps01.Markers.Add(SelectedItem.Latitude, SelectedItem.Longitude);
        TMSFMXWebGMaps01.MapPanTo(SelectedItem.Latitude, SelectedItem.Longitude);
      }
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
        ListBox1.Position.Y := self.edLocation.Position.Y + edLocation.Height + 2;
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
// var
// a: TJanuaAnagraphRecord;
begin
  self.DestroyGmaps1;
  // Elimina la mappa numero 01 ..........................................................
  self.SetConfirmationMap;
  if self.FJanuaRESTHealthClient.Booking.Institutes.count = 0 then
  begin
    // SE NON SONO STATI SCELTI istituti prenota i primi 3 a 'random'
    JanuaRESTHealthClient.RandomInstitues(3);
  end;
  self.FJanuaFMXMapList.MapPanTo(self.FCoordinates);
  self.FJanuaFMXMapList.SetMapAnagraph(JanuaRESTHealthClient.Booking.Institutes);
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
    self.HideMap;
    self.UndoBooking;
    tabControlBooking.Previous(TTAbTransition.Slide);
  end
  else if self.tabControlBooking.ActiveTab = self.tab04Finalisation then
  begin
    if frameFMXMobileFinalization1.TabControlFinalization.TabIndex = 0 then
      tabControlBooking.Previous(TTAbTransition.Slide)
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

procedure TframeFMXMobileHealthBooking.SetFinalized(const Value: boolean);
begin
  FFinalized := Value;
end;

procedure TframeFMXMobileHealthBooking.SetInstitutesList;
begin
  // self.DestroyGmaps1;
  // Elimina la mappa numero 01 ..........................................................
  // self.SetConfirmationMap;
  FJanuaFMXMapList.SetViewListAnagraph(ListViewInstitutes, JanuaRESTHealthClient.Booking.Search.Institutes);
end;

procedure TframeFMXMobileHealthBooking.SetInstitutesMap;
// var
// aInstitute: TJanuaAnagraphRecord;
begin
  // FdsInstitutes := self.qrySearchInstitutes;

  self.FJanuaFMXMapList.SetMapAnagraph(pnlMap, FJanuaRESTHealthClient.Booking.Search.Institutes);

  {
    if not Assigned(TMSFMXWebGMaps01) then
    TMSFMXWebGMaps01 := TTMSFMXWebGMaps.Create(self);
    TMSFMXWebGMaps01.Enabled := False;
    TMSFMXWebGMaps01.Visible := False;
    TMSFMXWebGMaps01.Parent := self.pnlMap;
    TMSFMXWebGMaps01.Align := TAlignLayout.Client;
    TMSFMXWebGMaps01.ApiKey := 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c';
    TMSFMXWebGMaps01.MapOptions.ZoomMap := 12;
    TMSFMXWebGMaps01.MapOptions.DefaultLatitude := FCoordinates.Latitude;
    // self.DM.JanuaServerHealthBooking1.Coordinates.Latitude;
    TMSFMXWebGMaps01.MapOptions.DefaultLongitude := FCoordinates.Longitude;
    // DM.JanuaServerHealthBooking1.Coordinates.Longitude;
    TMSFMXWebGMaps01.Enabled := true;
    TMSFMXWebGMaps01.Initialize;
    TMSFMXWebGMaps01.Visible := true;
    TMSFMXWebGMaps01.MapPanTo(FCoordinates.Latitude, FCoordinates.Longitude);
    TMSFMXWebGMaps01.Markers.Clear;
    TMSFMXWebGMaps01.Markers.Add(FCoordinates.Latitude, FCoordinates.Longitude, FSelectedLocation, '', False,
    true, False, False, true, 0);
    for aInstitute in self.FJanuaRESTHealthClient.Booking.Search.Institutes.Items do
    TMSFMXWebGMaps01.Markers.Add(aInstitute.Latitude, aInstitute.Longitude, aInstitute.LastName, '', False,
    true, False, False, true, 0);
  }
  FCoordinates := FJanuaRESTHealthClient.Booking.Search.Header.Coordinates;
  {
    if Assigned(FdsInstitutes) and (FdsInstitutes.RecordCount > 0) then
    begin
    FdsInstitutes.First;
    while not FdsInstitutes.Eof do
    begin
    TMSFMXWebGMaps01.Markers.Add(FdsInstitutes.FieldByName('latitude').AsFloat,
    FdsInstitutes.FieldByName('longitude').AsFloat, FdsInstitutes.FieldByName('an_last_name')
    .AsWideString, '', False, true, False, False, true, 0);
    FdsInstitutes.Next;
    end;
    FdsInstitutes.First;
    end;
  }
  self.FJanuaFMXMapList.MapPanTo(FCoordinates);
end;

procedure TframeFMXMobileHealthBooking.SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
begin
  // Imposto i valori degli elementi collegati .........................................................................
  FJanuaFMXFormManager := Value;
  self.frameFMXMobileFinalization1.JanuaFMXFormManager := Value;
  self.frameFMXLoginMobile1.JanuaFMXFormManager := Value;
end;

procedure TframeFMXMobileHealthBooking.SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
begin
  FJanuaGoogleGeoCoding := Value;
end;

procedure TframeFMXMobileHealthBooking.SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
begin
  FJanuaRESTHealthClient := Value;
  frameFMXMobileFinalization1.JanuaRESTHealthClient := self.FJanuaRESTHealthClient;
  self.frameFMXLoginMobile1.JanuaSystemClient := self.FJanuaRESTHealthClient;
end;

procedure TframeFMXMobileHealthBooking.SetLogs(const Value: TStrings);
begin
  FLogs := Value;
end;

procedure TframeFMXMobileHealthBooking.SetMapSet1(const Value: boolean);
begin
  FMapSet1 := Value;
end;

procedure TframeFMXMobileHealthBooking.SetOldLocationSearch(const Value: string);
begin
  FOldLocationSearch := Value;
end;

procedure TframeFMXMobileHealthBooking.SetupFormManager;
begin
  if Assigned(self.FJanuaFMXFormManager) then
  begin
    if self.tabControlBooking.ActiveTab = self.tab04Finalisation then
      self.frameFMXMobileFinalization1.SetupFormManager
    else if self.tabControlBooking.ActiveTab = self.tab01SearchServices then
      self.FJanuaFMXFormManager.Active := False
    else if self.tabControlBooking.ActiveTab = self.tab02SearchInstitutes then
      self.FJanuaFMXFormManager.Active := False
    else if self.tabControlBooking.ActiveTab = self.tab06Login then
      self.frameFMXLoginMobile1.SetupFormManager
  end;
end;

procedure TframeFMXMobileHealthBooking.ShowMap;
begin
  // imposto la selezione automatica di 3 istituti
  self.CreateMap(self.JanuaRESTHealthClient.Booking.Search.Institutes.Items[0].Latitude,
    self.JanuaRESTHealthClient.Booking.Search.Institutes.Items[0].Longitude);
  TMSFMXWebGMaps1.Visible := True;
  TMSFMXWebGMaps1.Enabled := True;
end;

procedure TframeFMXMobileHealthBooking.GeoCoding;
begin
  if not Assigned(FJanuaGoogleGeoCoding) then
    raise Exception.Create('ListViewPrestazioniItemClick FJanuaGoogleGeoCoding not set');

  if (self.edLocation.Text.ToLower = 'posizione attuale') or (self.edLocation.Text = '') then
  begin
    try
      self.LocationSensor1.Active := True;
      Sleep(1000);
      if self.LocationSensor1.Sensor.Latitude <> 0.0 then
      begin
        self.FCoordinates.Latitude := self.LocationSensor1.Sensor.Latitude;
        self.FCoordinates.Longitude := self.LocationSensor1.Sensor.Longitude;
      end;
    except
      on e: Exception do
      begin
        self.FCoordinates.Latitude := 0;
        self.FCoordinates.Longitude := 0;
      end;
    end;
  end;

  if (self.edLocation.Text <> '') then
  begin
    self.FJanuaGoogleGeoCoding.Address := self.edLocation.Text;
    if FJanuaGoogleGeoCoding.GetCoordinates then
      FCoordinates := FJanuaGoogleGeoCoding.Coordinates.Coordinates;
  end;
  // riportato dalla procedura precedente ...................................
  aSearch.Header.Coordinates := FCoordinates;
  aSearch.Header.Address := self.edLocation.Text;
  aHeader.Coordinates := FCoordinates;

end;

procedure TframeFMXMobileHealthBooking.tabControlBookingChange(Sender: TObject);
begin
  self.SetupFormManager;
end;

procedure TframeFMXMobileHealthBooking.TabLogin;
begin
  self.frameFMXLoginMobile1.JanuaSystemClient := self.FJanuaRESTHealthClient;
  self.frameFMXLoginMobile1.Default;
  frameFMXLoginMobile1.GoLogin;
  self.tabControlBooking.ActiveTab := self.tab06Login;
end;

procedure TframeFMXMobileHealthBooking.DestroyGmaps1;
begin
  // procedura Deprecata cambiata da uno spostamento mappa ......................
  // self.TMSFMXWebGMaps01.Visible := False;
  // non la distruggo fisicamente semplicemente la Disabilito ...............................................
  // occorre verificare la procedura di Creazione della mappa ...............................................
  // FreeAndNil(self.TMSFMXWebGMaps01);
  self.txtMap.Visible := True;
  self.HideMap;
end;

{ TJanuaPopupMenu }

procedure TJanuaPopupMenu.Popup(X, Y: Single);
begin
  if FEnabled then
    inherited;
end;

{ TSearchInstitutesThread }

procedure TSearchInstitutesThread.Execute;
begin
  Synchronize(self.SearchInstitutes);
  {
    Result.LoadFromJsonObject(aJsonObject);
    Result.Header := aSearchHeader;
    self.FBooking.Search := Result;
    self.FBooking.Service.id := Result.Header.ItemID;
    self.FBooking.Service.title := Result.Search;
  }
end;

procedure TSearchInstitutesThread.SearchInstitutes;
var
  aSearch: TJanuaHealthSearch;
begin
  aSearch := FJanuaHealthRestClient.SearchInstitutes(FSessionKey, Search.Header);
  // aSearch := self.FJanuaHealthRestClient.SearchInstitutes(FSessionKey, SearchHeader.AsJsonObject, '');
  FJanuaHealthRestClient.Search := aSearch;
end;

procedure TSearchInstitutesThread.SetJanuaHealthRestClient(const Value: TJanuaRESTHealthClient);
begin
  FJanuaHealthRestClient := Value;
end;

procedure TSearchInstitutesThread.SetSearch(const Value: TJanuaHealthSearch);
begin
  FSearch := Value;
end;

procedure TSearchInstitutesThread.SetSessionHeader(const Value: TJanuaHealthSearchHeader);
begin
  FSearchHeader := Value;
end;

procedure TSearchInstitutesThread.SetSessionKey(const Value: string);
begin
  FSessionKey := Value;
end;

end.
