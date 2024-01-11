unit Janua.UniGUI.dlgSearchGoogleAddress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniMultiItem, UniFSButton,
  uniListBox, uniButton, uniBitBtn, uniImageList, uniPanel, uniLabel, uniPageControl, uniEdit, uniURLFrame,
  // Janua Core
  Janua.Cloud.GoogleAPIs, Janua.Core.Entities, Janua.Core.Classes, JOrm.Anagraph.Intf,
  // Janua UniDialogs
  Janua.UniGUI.dlgGoogleMap;

type
  TdlgUniGUISearchGoogleAddress = class(TUniForm)
    edtSearchAddress: TUniEdit;
    btnSearch: TUniFSButton;
    UniContainerPanel1: TUniContainerPanel;
    edtProfileAddress: TUniEdit;
    lbProvince: TUniLabel;
    edtStateProvince: TUniEdit;
    lbTown: TUniLabel;
    edtTown: TUniEdit;
    lbAddressCode: TUniLabel;
    edtPostalCode: TUniEdit;
    lbAddressNumber: TUniLabel;
    edtNumber: TUniEdit;
    lbProfileAddress: TUniLabel;
    btnCancel: TUniFSButton;
    btnOK: TUniFSButton;
    edtProvinceName: TUniEdit;
    edtRegion: TUniEdit;
    edtCountry: TUniEdit;
    lbLatitude: TUniLabel;
    lbLongitude: TUniLabel;
    ListGoogle: TUniListBox;
    btnMap: TUniFSButton;
    procedure btnSearchClick(Sender: TObject);
    procedure ListGoogleClick(Sender: TObject);
    procedure UniPageControl1Change(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    FJsonOut: string;
    FPredictions: TGooglePredictions;
    FGooglePlace: TJanuaRecordAddress;
    FSearchResult: Boolean;
    procedure SetSearchText(const Value: string);
    procedure SetJsonOut(const Value: string);
    procedure SetGooglePlace(const Value: TJanuaRecordAddress);
    function GetSearchText: string;
    procedure SetSearchResult(const Value: Boolean);
  public
    constructor Create(AOwner: TComponent); override;
    property SearchText: string read GetSearchText write SetSearchText;
    property JsonOut: string read FJsonOut write SetJsonOut;
    property GooglePlace: TJanuaRecordAddress read FGooglePlace write SetGooglePlace;
    property SearchResult: Boolean read FSearchResult write SetSearchResult;
  end;

  TUniGoogleSearchDialog = class(TJanuaCoreComponent)
  private
    FedtPostalCode: TUniEdit;
    FedtSearchAddress: TUniEdit;
    FedtProvinceName: TUniEdit;
    FedtProfileAddress: TUniEdit;
    FedtCountry: TUniEdit;
    FedtNumber: TUniEdit;
    FedtStateProvince: TUniEdit;
    FedtRegion: TUniEdit;
    FedtTown: TUniEdit;
    FGooglePlace: TJanuaRecordAddress;
    FlbLatitude: TUniLabel;
    FlbLongitude: TUniLabel;
    FRecordAddress: IAnAddress;
    FRecordAnagraph: IAnagraph;
    FedtFullAddress: TUniEdit;
    GoogleMapsDialog: TGoogleMapsDialog;
    FRecordFound: TNotifyEvent;
    lDlg: TdlgUniGUISearchGoogleAddress;
    procedure SetedtCountry(const Value: TUniEdit);
    procedure SetedtNumber(const Value: TUniEdit);
    procedure SetedtPostalCode(const Value: TUniEdit);
    procedure SetedtProfileAddress(const Value: TUniEdit);
    procedure SetedtProvinceName(const Value: TUniEdit);
    procedure SetedtRegion(const Value: TUniEdit);
    procedure SetedtSearchAddress(const Value: TUniEdit);
    procedure SetedtStateProvince(const Value: TUniEdit);
    procedure SetedtTown(const Value: TUniEdit);
    procedure SetGooglePlace(const Value: TJanuaRecordAddress);
    procedure SetlbLatitude(const Value: TUniLabel);
    procedure SetlbLongitude(const Value: TUniLabel);
    procedure SetRecordAddress(const Value: IAnAddress);
    procedure SetRecordAnagraph(const Value: IAnagraph);
    procedure SetedtFullAddress(const Value: TUniEdit);
    procedure SetRecordFound(const Value: TNotifyEvent);
  protected
    procedure UpdateGoogleResult;
  public
    property lbLatitude: TUniLabel read FlbLatitude write SetlbLatitude;
    property lbLongitude: TUniLabel read FlbLongitude write SetlbLongitude;
    property edtSearchAddress: TUniEdit read FedtSearchAddress write SetedtSearchAddress;
    property edtProfileAddress: TUniEdit read FedtProfileAddress write SetedtProfileAddress;
    property edtStateProvince: TUniEdit read FedtStateProvince write SetedtStateProvince;
    property edtTown: TUniEdit read FedtTown write SetedtTown;
    property edtPostalCode: TUniEdit read FedtPostalCode write SetedtPostalCode;
    property edtNumber: TUniEdit read FedtNumber write SetedtNumber;
    property edtProvinceName: TUniEdit read FedtProvinceName write SetedtProvinceName;
    property edtRegion: TUniEdit read FedtRegion write SetedtRegion;
    property edtCountry: TUniEdit read FedtCountry write SetedtCountry;
    property edtFullAddress: TUniEdit read FedtFullAddress write SetedtFullAddress;
    property GooglePlace: TJanuaRecordAddress read FGooglePlace write SetGooglePlace;
    property RecordAddress: IAnAddress read FRecordAddress write SetRecordAddress;
    property RecordAnagraph: IAnagraph read FRecordAnagraph write SetRecordAnagraph;
    property OnRecordFound: TNotifyEvent read FRecordFound write SetRecordFound;
  public
    constructor Create(AOwner: TComponent); override;
    function Execute(const aSearchText: string): Boolean;
    procedure ShowMapDialog(Sender: TObject);
    procedure GoogleMapsClose(Sender: TObject; var Action: TCloseAction);
  end;

implementation

uses
  uniGUIApplication, Janua.Core.Functions;

{$R *.dfm}

procedure TdlgUniGUISearchGoogleAddress.btnOKClick(Sender: TObject);
begin
  FSearchResult := True;
  Close;
end;

procedure TdlgUniGUISearchGoogleAddress.btnSearchClick(Sender: TObject);
var
  I: integer;
begin
  FPredictions := TGooglePlaces.PopulateAddressList(edtSearchAddress.Text, 'it', FJsonOut);
  ListGoogle.Clear;
  for I := 0 to Length(FPredictions) - 1 do
    ListGoogle.Items.Add(FPredictions[I].Description);
end;

constructor TdlgUniGUISearchGoogleAddress.Create(AOwner: TComponent);
begin
  inherited;
  FSearchResult := False;
end;

function TdlgUniGUISearchGoogleAddress.GetSearchText: string;
begin
  Result := edtSearchAddress.Text;
end;

procedure TdlgUniGUISearchGoogleAddress.ListGoogleClick(Sender: TObject);
begin
  var
  I := ListGoogle.ItemIndex;
  FGooglePlace := TGooglePlaces.GetPlaceDetails(FPredictions[I].PlaceID, 'it', FJsonOut);
  edtProfileAddress.Text := FGooglePlace.Address;
  edtPostalCode.Text := FGooglePlace.PostalCode;
  edtTown.Text := FGooglePlace.Town;
  edtSearchAddress.Text := FGooglePlace.AddressFull;
  edtStateProvince.Text := FGooglePlace.StateProvince;
  edtCountry.Text := FGooglePlace.CountryCode;
  edtStateProvince.Text := FGooglePlace.StateProvince;
  edtProvinceName.Text := FGooglePlace.StateProvinceName;
  edtNumber.Text := FGooglePlace.Number;
  edtRegion.Text := FGooglePlace.Region;
  lbLatitude.Caption := FGooglePlace.Latitude.ToString;
  lbLongitude.Caption := FGooglePlace.Longitude.ToString;
end;

procedure TdlgUniGUISearchGoogleAddress.SetGooglePlace(const Value: TJanuaRecordAddress);
begin
  FGooglePlace := Value;
end;

procedure TdlgUniGUISearchGoogleAddress.SetJsonOut(const Value: string);
begin
  FJsonOut := Value;
end;

procedure TdlgUniGUISearchGoogleAddress.SetSearchResult(const Value: Boolean);
begin
  FSearchResult := Value;
end;

procedure TdlgUniGUISearchGoogleAddress.SetSearchText(const Value: string);
begin
  edtSearchAddress.Text := Value;
end;

procedure TdlgUniGUISearchGoogleAddress.UniFormShow(Sender: TObject);
begin
  if SearchText <> '' then
    btnSearchClick(Sender);
end;

procedure TdlgUniGUISearchGoogleAddress.UniPageControl1Change(Sender: TObject);
begin
  { if UniPageControl1.ActivePage = tabMappa then
    begin
    // https://www.google.com/maps/dir// + Your latitude(Reference field)+ , +Your longitude(Reference field)
    UniURLMapFrame.URL := 'https://www.google.com/maps/dir//+' + FloatToStrComma(FGooglePlace.Latitude) + ',+'
    + FloatToStrComma(FGooglePlace.Longitude)
    end; }
end;

{ TUniGoogleSearchDialog }

constructor TUniGoogleSearchDialog.Create(AOwner: TComponent);
begin
  inherited;
  GoogleMapsDialog := TGoogleMapsDialog.Create(Self);
end;

function TUniGoogleSearchDialog.Execute(const aSearchText: string): Boolean;
begin
  lDlg := TdlgUniGUISearchGoogleAddress.Create(UniApplication);
  lDlg.SearchText := aSearchText;
  lDlg.btnMap.OnClick := ShowMapDialog;
  lDlg.OnClose := GoogleMapsClose;
  lDlg.ShowModal();
  Result := True;
end;

procedure TUniGoogleSearchDialog.GoogleMapsClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(lDlg) then
    try
      FGooglePlace := lDlg.GooglePlace;
      if lDlg.SearchResult then
      begin
        if Assigned(FRecordAddress) then
          FRecordAddress.SetfromRecordAddress(FGooglePlace { TJanuaRecordAddress } );
        UpdateGoogleResult;
      end;
      lDlg := nil;
    finally
      Action := TCloseAction.caFree;
    end;
end;

procedure TUniGoogleSearchDialog.SetedtCountry(const Value: TUniEdit);
begin
  FedtCountry := Value;
end;

procedure TUniGoogleSearchDialog.SetedtFullAddress(const Value: TUniEdit);
begin
  FedtFullAddress := Value;
end;

procedure TUniGoogleSearchDialog.SetedtNumber(const Value: TUniEdit);
begin
  FedtNumber := Value;
end;

procedure TUniGoogleSearchDialog.SetedtPostalCode(const Value: TUniEdit);
begin
  FedtPostalCode := Value;
end;

procedure TUniGoogleSearchDialog.SetedtProfileAddress(const Value: TUniEdit);
begin
  FedtProfileAddress := Value;
end;

procedure TUniGoogleSearchDialog.SetedtProvinceName(const Value: TUniEdit);
begin
  FedtProvinceName := Value;
end;

procedure TUniGoogleSearchDialog.SetedtRegion(const Value: TUniEdit);
begin
  FedtRegion := Value;
end;

procedure TUniGoogleSearchDialog.SetedtSearchAddress(const Value: TUniEdit);
begin
  FedtSearchAddress := Value;
end;

procedure TUniGoogleSearchDialog.SetedtStateProvince(const Value: TUniEdit);
begin
  FedtStateProvince := Value;
end;

procedure TUniGoogleSearchDialog.SetedtTown(const Value: TUniEdit);
begin
  FedtTown := Value;
end;

procedure TUniGoogleSearchDialog.SetGooglePlace(const Value: TJanuaRecordAddress);
begin
  FGooglePlace := Value;
end;

procedure TUniGoogleSearchDialog.SetlbLatitude(const Value: TUniLabel);
begin
  FlbLatitude := Value;
end;

procedure TUniGoogleSearchDialog.SetlbLongitude(const Value: TUniLabel);
begin
  FlbLongitude := Value;
end;

procedure TUniGoogleSearchDialog.SetRecordAddress(const Value: IAnAddress);
begin
  FRecordAddress := Value;
end;

procedure TUniGoogleSearchDialog.SetRecordAnagraph(const Value: IAnagraph);
begin
  FRecordAnagraph := Value;
end;

procedure TUniGoogleSearchDialog.SetRecordFound(const Value: TNotifyEvent);
begin
  FRecordFound := Value;
end;

procedure TUniGoogleSearchDialog.ShowMapDialog(Sender: TObject);
begin
  FGooglePlace := lDlg.GooglePlace;
  GoogleMapsDialog.Execute(FGooglePlace.Latitude, FGooglePlace.Longitude);
end;

procedure TUniGoogleSearchDialog.UpdateGoogleResult;
begin
  if FGooglePlace.AddressFull <> '' then
  begin
    if Assigned(edtFullAddress) then
      edtFullAddress.Text := FGooglePlace.AddressFull;
    if Assigned(edtSearchAddress) then
      edtSearchAddress.Text := FGooglePlace.AddressFull;
    if Assigned(edtPostalCode) then
      edtPostalCode.Text := FGooglePlace.PostalCode;
    if Assigned(edtTown) then
      edtTown.Text := FGooglePlace.Town;
    if Assigned(edtProfileAddress) then
      edtProfileAddress.Text := FGooglePlace.Address;
    if Assigned(edtStateProvince) then
      edtStateProvince.Text := FGooglePlace.StateProvince;
    if Assigned(edtCountry) then
      edtCountry.Text := FGooglePlace.CountryCode;
    if Assigned(edtStateProvince) then
      edtStateProvince.Text := FGooglePlace.StateProvince;
    if Assigned(edtProvinceName) then
      edtProvinceName.Text := FGooglePlace.StateProvinceName;
    if Assigned(edtNumber) then
      edtNumber.Text := FGooglePlace.Number;
    if Assigned(edtRegion) then
      edtRegion.Text := FGooglePlace.Region;
    if Assigned(lbLatitude) then
      lbLatitude.Caption := FGooglePlace.Latitude.ToString;
    if Assigned(lbLongitude) then
      lbLongitude.Caption := FGooglePlace.Longitude.ToString;
  end;
  if Assigned(FRecordAddress) then
    FRecordAddress.SetfromRecordAddress(FGooglePlace);
  if Assigned(FRecordAnagraph) then
    FRecordAnagraph.SetfromRecordAddress(FGooglePlace);
  if Assigned(FRecordFound) then
    FRecordFound(Self);
end;

end.
