unit uframeFMXMobileInstitutesSearch;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Janua
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Health, Janua.Core.Cloud, Janua.FMX.HealthThreads,
  Janua.Core.Anagraph, Janua.Core.RESTClient.Health, Janua.FMX.Components,
  // FMX
  FMX.TabControl, FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.TMSWebGMapsWebBrowser, FMX.TMSWebGMaps, FMX.Objects, FMX.Controls.Presentation, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, ufrmFMXLoginMobile;

type
  TframeFMXMobileInstitutesSearch = class(TFrame)
    pnlMap: TPanel;
    txtMap: TText;
    TextConfirmation: TText;
    btnBooking: TButton;
    btnUndo: TButton;
    btnFinalization: TButton;
    TMSFMXWebGMaps1: TTMSFMXWebGMaps;
    procedure btnBookingClick(Sender: TObject);
    procedure btnFinalizationClick(Sender: TObject);
    procedure ListViewInstitutesItemClick(const Sender: TObject; const AItem: TListViewItem);
  private
    FCoordinates: TJanuaRecordCoordinates;
    FJanuaFMXMapList: TJanuaFMXMapList;
    FMapSet1: Boolean;
    FOldLocationSearch: string;
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    FFinalized: Boolean;
    FLogs: TStrings;
    FJanuaGoogleGeoCoding: TJanuaGoogleGeoCoding;
    FSelectedLocation: string;
    ListViewInstitutes: TListView;
    FtabControlBooking: TTabControl;
    procedure ButtonFinalizer;
    function GetChecked: Boolean;
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetFinalized(const Value: Boolean);
    procedure SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
    procedure SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
    procedure SetLogs(const Value: TStrings);
    procedure SetMapSet1(const Value: Boolean);
    procedure SetOldLocationSearch(const Value: string);
    procedure SetSelectedLocation(const Value: string);
    procedure SettabControlBooking(const Value: TTabControl);
    procedure SetJanuaFMXMapList(const Value: TJanuaFMXMapList);
    { Private declarations }
  public
    procedure SetInstitutesList;
    procedure MobileLogin;
    procedure Default;
    procedure SetInstitutesMap;
    procedure Activate;
  public
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read FJanuaRESTHealthClient write SetJanuaRESTHealthClient;
    property Logs: TStrings read FLogs write SetLogs;
    property MapSet1: Boolean read FMapSet1 write SetMapSet1;
    property OldLocationSearch: string read FOldLocationSearch write SetOldLocationSearch;
    property SelectedLocation: string read FSelectedLocation write SetSelectedLocation;
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
    property JanuaGoogleGeoCoding: TJanuaGoogleGeoCoding read FJanuaGoogleGeoCoding write SetJanuaGoogleGeoCoding;
    property Checked: Boolean read GetChecked;
    property Finalized: Boolean read FFinalized write SetFinalized;
    property JanuaFMXMapList: TJanuaFMXMapList read FJanuaFMXMapList write SetJanuaFMXMapList;
  public // refernce a form esterni
    property tabControlBooking: TTabControl read FtabControlBooking write SettabControlBooking;
  end;

implementation

{$R *.fmx}
{ TFrame2 }

procedure TframeFMXMobileInstitutesSearch.Activate;
begin
  btnBooking.Tag := 1; // imposto la selezione automatica di 3 istituti
  if not Assigned(self.FJanuaFMXMapList) then
    raise Exception.Create('TframeFMXMobileInstitutesSearch Default not set');
  FJanuaFMXMapList.TMSFMXWebGMaps := self.TMSFMXWebGMaps1;
  FJanuaFMXMapList.SetMapAnagraph(JanuaRESTHealthClient.Booking.Search.Institutes);
  SetInstitutesList;
end;

procedure TframeFMXMobileInstitutesSearch.btnBookingClick(Sender: TObject);
var
  c: TAlphaColorRec;
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
                self.btnBooking.FontColor := c.Red;
                self.btnBooking.Text := 'Annulla ' + Institutes.SelectedItem.LastName;
                with ListViewInstitutes do
                begin
                  o := Items[ItemIndex].Objects.FindObject('Accessory3');
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
              self.btnBooking.FontColor := c.Blue;
              self.btnBooking.Text := 'Prenota ' + Institutes.SelectedItem.LastName;
              with ListViewInstitutes do
              begin
                o := Items[ItemIndex].Objects.FindObject('Accessory3');
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
end;

procedure TframeFMXMobileInstitutesSearch.btnFinalizationClick(Sender: TObject);
var
  i: Int64;
  TempSession: TJanuaServerSession;
begin
  self.TMSFMXWebGMaps1.Visible := False;
  self.TMSFMXWebGMaps1.Enabled := False;
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
        self.TMSFMXWebGMaps1.Visible := False;
        // importante nascondere il browswer prima di fare comparire la Login
        self.MobileLogin;
        if FJanuaRESTHealthClient.ClientRecord.IsLoggedIn then
        begin
          if not FJanuaRESTHealthClient.AssignSessionBooking then
            ShowMessage('Attenzione errore di comunicazione con il server: JanuaRESTHealthClient.AssignSessionBooking');
        end;
      end;
      if not self.FJanuaRESTHealthClient.IsPublic then
      begin
        // TMSFMXWebGMaps01.Visible := False;
        // FreeAndNil(TMSFMXWebGMaps2);
        self.TextConfirmation.Visible := True;
        self.TMSFMXWebGMaps1.Visible := False;
        { TODO : creare connessione ocn FrameFMXMobileFinalisation }
        // frameFMXMobileFinalization1.Default;
        self.FtabControlBooking.Next(TTAbTransition.Slide);
        // self.FJanuaFMXMapList.SetMap(self.pnlMapConfirmation);
      end
      else
      begin
        ShowMessage('Attenzione errore di comunicazione con il server o utente non registrato');
      end;
    end
  end;

end;

procedure TframeFMXMobileInstitutesSearch.ButtonFinalizer;
var
  c: TAlphaColorRec;
  i: integer;
  o: TListItemDrawable;
begin
  self.btnBooking.Tag := 4;
  self.btnBooking.FontColor := c.Red;
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
        o := Items[i].Objects.FindObject('Accessory3');
        if o <> nil then
          o.Visible := True;

      end;
    end;
    self.btnFinalization.Visible := True;
    self.btnUndo.Visible := True;
  end;

end;

procedure TframeFMXMobileInstitutesSearch.Default;
begin
  self.btnFinalization.Visible := False;
  self.btnUndo.Visible := False;
  self.TMSFMXWebGMaps1.Visible := False;
  self.TMSFMXWebGMaps1.Enabled := False;
  self.btnBooking.Tag := 0;
  FJanuaFMXMapList := TJanuaFMXMapList.Create(self);

end;

function TframeFMXMobileInstitutesSearch.GetChecked: Boolean;
begin

end;

procedure TframeFMXMobileInstitutesSearch.ListViewInstitutesItemClick(const Sender: TObject;
  const AItem: TListViewItem);
var
  c: TAlphaColorRec;
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
      self.btnBooking.TextSettings.FontColor := c.Red;
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

procedure TframeFMXMobileInstitutesSearch.MobileLogin;
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

procedure TframeFMXMobileInstitutesSearch.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FCoordinates := Value;
end;

procedure TframeFMXMobileInstitutesSearch.SetFinalized(const Value: Boolean);
begin
  FFinalized := Value;
end;

procedure TframeFMXMobileInstitutesSearch.SetInstitutesList;
begin
  FJanuaFMXMapList.SetViewListAnagraph(ListViewInstitutes, JanuaRESTHealthClient.Booking.Search.Institutes);
end;

procedure TframeFMXMobileInstitutesSearch.SetInstitutesMap;
var
  aInstitute: TJanuaAnagraphRecord;
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

procedure TframeFMXMobileInstitutesSearch.SetJanuaFMXMapList(const Value: TJanuaFMXMapList);
begin
  FJanuaFMXMapList := Value;
end;

procedure TframeFMXMobileInstitutesSearch.SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
begin
  FJanuaGoogleGeoCoding := Value;
end;

procedure TframeFMXMobileInstitutesSearch.SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
begin
  FJanuaRESTHealthClient := Value;
end;

procedure TframeFMXMobileInstitutesSearch.SetLogs(const Value: TStrings);
begin
  FLogs := Value;
end;

procedure TframeFMXMobileInstitutesSearch.SetMapSet1(const Value: Boolean);
begin
  FMapSet1 := Value;
end;

procedure TframeFMXMobileInstitutesSearch.SetOldLocationSearch(const Value: string);
begin
  FOldLocationSearch := Value;
end;

procedure TframeFMXMobileInstitutesSearch.SetSelectedLocation(const Value: string);
begin
  FSelectedLocation := Value;
end;

procedure TframeFMXMobileInstitutesSearch.SettabControlBooking(const Value: TTabControl);
begin
  FtabControlBooking := Value;
end;

end.
